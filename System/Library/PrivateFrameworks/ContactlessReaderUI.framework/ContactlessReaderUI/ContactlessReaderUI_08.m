uint64_t sub_244028830@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  return result;
}

uint64_t sub_2440288D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v79 = type metadata accessor for RegSheet();
  v71 = *(v79 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v79);
  v70 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for RegistrationNotStartedDescription();
  MEMORY[0x28223BE20](v88);
  v69 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3EA0);
  MEMORY[0x28223BE20](v73);
  v75 = &v66 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3EA8);
  MEMORY[0x28223BE20](v83);
  v78 = &v66 - v6;
  v74 = type metadata accessor for SubscribingDescription();
  MEMORY[0x28223BE20](v74);
  v68 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for RegisteredDescription();
  MEMORY[0x28223BE20](v77);
  v67 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3EB0);
  MEMORY[0x28223BE20](v85);
  v87 = &v66 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3EB8);
  MEMORY[0x28223BE20](v80);
  v82 = &v66 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3EC0);
  MEMORY[0x28223BE20](v72);
  v12 = &v66 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3EC8);
  MEMORY[0x28223BE20](v81);
  v76 = &v66 - v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3ED0);
  MEMORY[0x28223BE20](v86);
  v84 = &v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v66 - v16;
  v18 = type metadata accessor for RegisteringDescription();
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RegistrationViewModel();
  sub_24403005C(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  v21 = *sub_2440D1490();
  v22 = (*(v21 + 288))();

  v23 = v22;
  if (v22 <= 1u)
  {
    v35 = v71;
    v36 = v70;
    v37 = v69;
    if (v23)
    {
      v58 = a1 + *(v79 + 28);
      v59 = *v58;
      v60 = *(v58 + 8);
      v93 = v59;
      v94 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
      sub_2440D2840();
      v61 = v90;
      v62 = v91;
      v63 = v92;
      sub_243F61FDC();
      sub_243F62020();
      sub_2440CEA70(v61, v62, v63, v17, v20);
      v31 = type metadata accessor for RegisteringDescription;
      sub_2440300A4(v20, v12, type metadata accessor for RegisteringDescription);
      swift_storeEnumTagMultiPayload();
      sub_24403005C(&qword_27EDC3EE8, type metadata accessor for RegisteringDescription);
      sub_24403005C(&qword_27EDC3EF0, type metadata accessor for RegisteredDescription);
      v64 = v76;
      sub_2440D1D20();
      sub_243F5F574(v64, v82, &qword_27EDC3EC8);
      swift_storeEnumTagMultiPayload();
      sub_24402FEB4();
      sub_24402FFA0();
      v65 = v84;
      sub_2440D1D20();
      sub_243F5EED4(v64, &qword_27EDC3EC8);
      sub_243F5F574(v65, v87, &qword_27EDC3ED0);
      swift_storeEnumTagMultiPayload();
      sub_24402FE28();
      sub_24403005C(&qword_27EDC3F08, type metadata accessor for RegistrationNotStartedDescription);
      sub_2440D1D20();
      sub_243F5EED4(v65, &qword_27EDC3ED0);
      v34 = v20;
    }

    else
    {
      sub_2440300A4(a1, v70, type metadata accessor for RegSheet);
      v38 = (*(v35 + 80) + 16) & ~*(v35 + 80);
      v39 = swift_allocObject();
      sub_244027460(v36, v39 + v38);
      v40 = a1 + *(v79 + 28);
      v41 = *v40;
      v42 = *(v40 + 8);
      v93 = v41;
      v94 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
      sub_2440D2840();
      v43 = v90;
      v44 = v91;
      v45 = v92;
      sub_243F61FDC();
      sub_24403712C(sub_24402FD5C, v39, v43, v44, v45, v17, v37);
      v31 = type metadata accessor for RegistrationNotStartedDescription;
      sub_2440300A4(v37, v87, type metadata accessor for RegistrationNotStartedDescription);
      swift_storeEnumTagMultiPayload();
      sub_24402FE28();
      sub_24403005C(&qword_27EDC3F08, type metadata accessor for RegistrationNotStartedDescription);
      sub_2440D1D20();
      v34 = v37;
    }
  }

  else if (v22 == 2)
  {
    v46 = a1 + *(v79 + 28);
    v47 = *v46;
    v48 = *(v46 + 8);
    v93 = v47;
    v94 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
    sub_2440D2840();
    v49 = v90;
    v50 = v91;
    v51 = v92;
    sub_243F61FDC();
    sub_243F62020();
    v52 = v67;
    sub_243F62028(v49, v50, v51, v17, v67);
    v31 = type metadata accessor for RegisteredDescription;
    sub_2440300A4(v52, v12, type metadata accessor for RegisteredDescription);
    swift_storeEnumTagMultiPayload();
    sub_24403005C(&qword_27EDC3EE8, type metadata accessor for RegisteringDescription);
    sub_24403005C(&qword_27EDC3EF0, type metadata accessor for RegisteredDescription);
    v53 = v76;
    sub_2440D1D20();
    sub_243F5F574(v53, v82, &qword_27EDC3EC8);
    swift_storeEnumTagMultiPayload();
    sub_24402FEB4();
    sub_24402FFA0();
    v54 = v84;
    sub_2440D1D20();
    sub_243F5EED4(v53, &qword_27EDC3EC8);
    sub_243F5F574(v54, v87, &qword_27EDC3ED0);
    swift_storeEnumTagMultiPayload();
    sub_24402FE28();
    sub_24403005C(&qword_27EDC3F08, type metadata accessor for RegistrationNotStartedDescription);
    sub_2440D1D20();
    sub_243F5EED4(v54, &qword_27EDC3ED0);
    v34 = v52;
  }

  else
  {
    if (v22 != 3)
    {
      swift_storeEnumTagMultiPayload();
      sub_24403005C(&qword_27EDC3F00, type metadata accessor for SubscribingDescription);
      v55 = v78;
      sub_2440D1D20();
      sub_243F5F574(v55, v82, &qword_27EDC3EA8);
      swift_storeEnumTagMultiPayload();
      sub_24402FEB4();
      sub_24402FFA0();
      v56 = v84;
      sub_2440D1D20();
      sub_243F5EED4(v55, &qword_27EDC3EA8);
      sub_243F5F574(v56, v87, &qword_27EDC3ED0);
      swift_storeEnumTagMultiPayload();
      sub_24402FE28();
      sub_24403005C(&qword_27EDC3F08, type metadata accessor for RegistrationNotStartedDescription);
      sub_2440D1D20();
      return sub_243F5EED4(v56, &qword_27EDC3ED0);
    }

    v24 = a1 + *(v79 + 28);
    v25 = *v24;
    v26 = *(v24 + 8);
    v93 = v25;
    v94 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
    sub_2440D2840();
    v27 = v90;
    v28 = v91;
    v29 = v92;
    sub_243F61FDC();
    v30 = v68;
    sub_243F9121C(v27, v28, v29, v17, v68);
    v31 = type metadata accessor for SubscribingDescription;
    sub_2440300A4(v30, v75, type metadata accessor for SubscribingDescription);
    swift_storeEnumTagMultiPayload();
    sub_24403005C(&qword_27EDC3F00, type metadata accessor for SubscribingDescription);
    v32 = v78;
    sub_2440D1D20();
    sub_243F5F574(v32, v82, &qword_27EDC3EA8);
    swift_storeEnumTagMultiPayload();
    sub_24402FEB4();
    sub_24402FFA0();
    v33 = v84;
    sub_2440D1D20();
    sub_243F5EED4(v32, &qword_27EDC3EA8);
    sub_243F5F574(v33, v87, &qword_27EDC3ED0);
    swift_storeEnumTagMultiPayload();
    sub_24402FE28();
    sub_24403005C(&qword_27EDC3F08, type metadata accessor for RegistrationNotStartedDescription);
    sub_2440D1D20();
    sub_243F5EED4(v33, &qword_27EDC3ED0);
    v34 = v30;
  }

  return sub_24403010C(v34, v31);
}

uint64_t sub_244029804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64[1] = a2;
  v77 = a3;
  v75 = sub_2440D1BE0();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v64 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3D10);
  MEMORY[0x28223BE20](v65);
  v67 = v64 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3D00);
  MEMORY[0x28223BE20](v66);
  v69 = v64 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3CF0);
  MEMORY[0x28223BE20](v68);
  v70 = v64 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3CD8);
  MEMORY[0x28223BE20](v72);
  v12 = v64 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3DF8);
  v78 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v71 = v64 - v13;
  type metadata accessor for RegistrationViewModel();
  sub_24403005C(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  v14 = *sub_2440D1490();
  v15 = (*(v14 + 288))();

  if (sub_243FA1978(v15, 0) || (v16 = *sub_2440D1490(), v17 = (*(v16 + 288))(), , sub_243FA1978(v17, 3)))
  {
    *v7 = *(a1 + *(type metadata accessor for RegSheet() + 48));
    *(v7 + 1) = 0;
    v7[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E00);
    sub_244029FE4(a1, &v7[*(v18 + 44)]);
    sub_2440D2AF0();
    sub_2440D18E0();
    v19 = v67;
    sub_243F681C8(v7, v67, &qword_27EDC3D20);
    v20 = (v19 + *(v65 + 36));
    v21 = v84;
    v20[4] = v83;
    v20[5] = v21;
    v20[6] = v85;
    v22 = v80;
    *v20 = v79;
    v20[1] = v22;
    v23 = v82;
    v20[2] = v81;
    v20[3] = v23;
    v24 = sub_2440D20A0();
    sub_244070F28();
    swift_beginAccess();
    sub_2440D13D0();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = v69;
    sub_243F681C8(v19, v69, &qword_27EDC3D10);
    v34 = v33 + *(v66 + 36);
    *v34 = v24;
    *(v34 + 8) = v26;
    *(v34 + 16) = v28;
    *(v34 + 24) = v30;
    *(v34 + 32) = v32;
    *(v34 + 40) = 0;
    v35 = sub_2440D20C0();
    sub_2440D13D0();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = v70;
    sub_243F681C8(v33, v70, &qword_27EDC3D00);
    v45 = v44 + *(v68 + 36);
    *v45 = v35;
    *(v45 + 8) = v37;
    *(v45 + 16) = v39;
    *(v45 + 24) = v41;
    *(v45 + 32) = v43;
    *(v45 + 40) = 0;
    v46 = sub_2440D20D0();
    if ((sub_243FC0F94() & 1) == 0)
    {
      sub_2440D1640();
    }

    sub_2440D13D0();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    sub_243F681C8(v44, v12, &qword_27EDC3CF0);
    v55 = &v12[*(v72 + 36)];
    *v55 = v46;
    *(v55 + 1) = v48;
    *(v55 + 2) = v50;
    *(v55 + 3) = v52;
    *(v55 + 4) = v54;
    v55[40] = 0;
    v56 = v73;
    sub_2440D1BD0();
    sub_24402EB84();
    v57 = v71;
    sub_2440D2470();
    (*(v74 + 8))(v56, v75);
    sub_243F5EED4(v12, &qword_27EDC3CD8);
    v58 = v77;
    v59 = v76;
    (*(v78 + 32))(v77, v57, v76);
    return (*(v78 + 56))(v58, 0, 1, v59);
  }

  else
  {
    v61 = *(v78 + 56);
    v62 = v77;
    v63 = v76;

    return v61(v62, 1, 1, v63);
  }
}

uint64_t sub_244029FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v159 = a2;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E08);
  MEMORY[0x28223BE20](v157);
  v148 = &v141 - v3;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E10);
  MEMORY[0x28223BE20](v153);
  v156 = &v141 - v4;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E18);
  MEMORY[0x28223BE20](v155);
  v149 = (&v141 - v5);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E20);
  v6 = MEMORY[0x28223BE20](v150);
  v152 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v162 = &v141 - v8;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0010);
  MEMORY[0x28223BE20](v163);
  v10 = &v141 - v9;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E28);
  v154 = *(v160 - 8);
  v11 = MEMORY[0x28223BE20](v160);
  v151 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v166 = &v141 - v13;
  v14 = type metadata accessor for RegSheet();
  v158 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v164 = v15;
  v165 = a1;
  v161 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RegistrationViewModel();
  sub_24403005C(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  v16 = *sub_2440D1490();
  v17 = (*(v16 + 288))();

  if (sub_243FA1978(v17, 0))
  {
    sub_2440D0AD0();
    v18 = sub_243F9A83C();

    v147 = v10;
    if (v18)
    {
      v19 = v165;
      v20 = v161;
      sub_2440300A4(v165, v161, type metadata accessor for RegSheet);
      v21 = v158;
      v22 = (*(v158 + 80) + 16) & ~*(v158 + 80);
      v23 = swift_allocObject();
      sub_244027460(v20, v23 + v22);
      v24 = (v19 + *(v14 + 32));
      v25 = *v24;
      v26 = v24[1];
      *&v189 = v25;
      *(&v189 + 1) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25C0);
      sub_2440D2820();
      sub_2440D2B00();
      sub_2440D1560();
      v27 = v194;
      v28 = v196;
      v30 = v198;
      v29 = v199;
      LOBYTE(v183) = v195;
      LOBYTE(v177) = v197;
      LOBYTE(v22) = sub_2440D2110();
      sub_2440D13D0();
      *&v189 = sub_2440301A4;
      *(&v189 + 1) = v23;
      *&v190 = v27;
      v31 = v20;
      BYTE8(v190) = v183;
      *&v191 = v28;
      BYTE8(v191) = v177;
      *&v192 = v30;
      LOBYTE(v193[0]) = v22;
      *(&v33 + 1) = v32;
      *(&v35 + 1) = v34;
    }

    else
    {
      v29 = 0;
      v33 = 0uLL;
      v189 = 0u;
      v190 = 0u;
      v191 = 0u;
      *&v193[0] = 0;
      *&v192 = 0;
      v35 = 0uLL;
      v31 = v161;
      v21 = v158;
    }

    *(&v192 + 1) = v29;
    *(v193 + 8) = v33;
    *(&v193[1] + 8) = v35;
    BYTE8(v193[2]) = 0;
    v86 = sub_2440D26A0();
    v87 = sub_2440D2660();
    sub_2440300A4(v165, v31, type metadata accessor for RegSheet);
    v88 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v89 = swift_allocObject();
    v158 = v88;
    sub_244027460(v31, v89 + v88);
    sub_243FB9D2C(0xD000000000000012, 0x80000002440ED010, v86, v87, 0xD000000000000016, 0x80000002440ED030, sub_24402F848, v89, &v183);
    v90 = *MEMORY[0x277CDF988];
    v91 = sub_2440D1770();
    v92 = *(v91 - 8);
    v93 = *(v92 + 104);
    v94 = v92 + 104;
    v95 = v147;
    v93(v147, v90, v91);
    v96 = sub_24403005C(&qword_27EDC00D8, MEMORY[0x277CDFA28]);
    result = sub_2440D2F50();
    if (result)
    {
      v97 = sub_24402F678();
      LODWORD(v146) = v90;
      v148 = v96;
      v142 = sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
      v143 = v97;
      sub_2440D2420();
      sub_243F5EED4(v95, &qword_27EDC0010);
      v173[2] = v185;
      v173[3] = v186;
      v174 = v187;
      v173[0] = v183;
      v173[1] = v184;
      sub_24402F6CC(v173);
      v145 = v94;
      v144 = sub_2440D26C0();
      v98 = *sub_243FFB2E4();
      v99 = v93;
      v100 = v161;
      sub_2440300A4(v165, v161, type metadata accessor for RegSheet);
      v101 = v158;
      v102 = swift_allocObject();
      sub_244027460(v100, v102 + v101);

      v103 = sub_243FB9D2C(0xD00000000000001BLL, 0x80000002440ED050, v144, v98, 0xD000000000000022, 0x80000002440ED070, sub_24402F960, v102, &v183);
      (v99)(v95, v146, v91, v103);
      result = sub_2440D2F50();
      if (result)
      {
        v104 = v162;
        sub_2440D2420();
        sub_243F5EED4(v95, &qword_27EDC0010);
        v175[2] = v185;
        v175[3] = v186;
        v176 = v187;
        v175[0] = v183;
        v175[1] = v184;
        sub_24402F6CC(v175);
        v105 = sub_2440D20C0();
        sub_2440D13D0();
        v107 = v106;
        v109 = v108;
        v111 = v110;
        v113 = v112;
        v114 = v104 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E40) + 36);
        *v114 = v105;
        *(v114 + 8) = v107;
        *(v114 + 16) = v109;
        *(v114 + 24) = v111;
        *(v114 + 32) = v113;
        *(v114 + 40) = 0;
        v115 = sub_2440D20D0();
        sub_244070F34();
        sub_2440D13D0();
        v116 = v104 + *(v150 + 36);
        *v116 = v115;
        *(v116 + 8) = v117;
        *(v116 + 16) = v118;
        *(v116 + 24) = v119;
        *(v116 + 32) = v120;
        *(v116 + 40) = 0;
        v171 = v193[0];
        v172[0] = v193[1];
        *(v172 + 9) = *(&v193[1] + 9);
        v167 = v189;
        v168 = v190;
        v169 = v191;
        v170 = v192;
        v121 = v154;
        v122 = *(v154 + 16);
        v123 = v151;
        v124 = v160;
        v122(v151, v166, v160);
        v125 = v152;
        sub_243F5F574(v104, v152, &qword_27EDC3E20);
        v126 = v171;
        v127 = v172[0];
        v181 = v171;
        v182[0] = v172[0];
        v128 = *(v172 + 9);
        *(v182 + 9) = *(v172 + 9);
        v129 = v168;
        v177 = v167;
        v178 = v168;
        v131 = v169;
        v130 = v170;
        v179 = v169;
        v180 = v170;
        v132 = v149;
        *v149 = v167;
        v132[1] = v129;
        *(v132 + 89) = v128;
        v132[2] = v131;
        v132[3] = v130;
        v132[4] = v126;
        v132[5] = v127;
        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E60);
        v122(v132 + *(v133 + 48), v123, v124);
        sub_243F5F574(v125, v132 + *(v133 + 64), &qword_27EDC3E20);
        sub_243F5F574(&v189, &v183, &qword_27EDC3E68);
        sub_243F5F574(&v177, &v183, &qword_27EDC3E68);
        sub_243F5EED4(v125, &qword_27EDC3E20);
        v134 = *(v121 + 8);
        v134(v123, v124);
        v187 = v171;
        v188[0] = v172[0];
        *(v188 + 9) = *(v172 + 9);
        v183 = v167;
        v184 = v168;
        v185 = v169;
        v186 = v170;
        sub_243F5EED4(&v183, &qword_27EDC3E68);
        sub_243F5F574(v132, v156, &qword_27EDC3E18);
        swift_storeEnumTagMultiPayload();
        sub_243F5DD50(&qword_27EDC3E50, &qword_27EDC3E18);
        sub_243F5DD50(&qword_27EDC3E58, &qword_27EDC3E08);
        v135 = v159;
        sub_2440D1D20();
        sub_243F5EED4(&v189, &qword_27EDC3E68);
        sub_243F5EED4(v132, &qword_27EDC3E18);
        sub_243F5EED4(v162, &qword_27EDC3E20);
        v134(v166, v160);
        v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E30);
        return (*(*(v136 - 8) + 56))(v135, 0, 1, v136);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  v36 = *sub_2440D1490();
  v37 = (*(v36 + 288))();

  if (sub_243FA1978(v37, 3))
  {
    v38 = sub_2440D26A0();
    v39 = sub_2440D2660();
    v40 = v161;
    sub_2440300A4(v165, v161, type metadata accessor for RegSheet);
    v41 = (*(v158 + 80) + 16) & ~*(v158 + 80);
    v42 = swift_allocObject();
    v158 = v41;
    v43 = v42 + v41;
    v44 = v40;
    sub_244027460(v40, v43);
    sub_243FB9D2C(0xD00000000000002ALL, 0x80000002440ECF50, v38, v39, 0xD000000000000022, 0x80000002440ECF80, sub_24402F670, v42, &v183);
    v45 = *MEMORY[0x277CDF988];
    v46 = sub_2440D1770();
    v47 = *(v46 - 8);
    v48 = *(v47 + 104);
    v49 = v47 + 104;
    v48(v10, v45, v46);
    v50 = sub_24403005C(&qword_27EDC00D8, MEMORY[0x277CDFA28]);
    result = sub_2440D2F50();
    if (result)
    {
      v52 = sub_24402F678();
      v149 = v50;
      v53 = v52;
      LODWORD(v145) = v45;
      v146 = v48;
      v142 = sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
      v143 = v53;
      sub_2440D2420();
      sub_243F5EED4(v10, &qword_27EDC0010);
      v191 = v185;
      v192 = v186;
      *&v193[0] = v187;
      v189 = v183;
      v190 = v184;
      sub_24402F6CC(&v189);
      v144 = v49;
      v54 = sub_2440D26C0();
      v55 = *sub_243FFB2E4();
      sub_2440300A4(v165, v44, type metadata accessor for RegSheet);
      v56 = v158;
      v57 = swift_allocObject();
      sub_244027460(v44, v57 + v56);

      v58 = sub_243FB9D2C(0xD00000000000002BLL, 0x80000002440ECFB0, v54, v55, 0xD000000000000025, 0x80000002440ECFE0, sub_24402F720, v57, &v177);
      (v146)(v10, v145, v46, v58);
      result = sub_2440D2F50();
      if (result)
      {
        v59 = v162;
        sub_2440D2420();
        sub_243F5EED4(v10, &qword_27EDC0010);
        v185 = v179;
        v186 = v180;
        *&v187 = v181;
        v183 = v177;
        v184 = v178;
        sub_24402F6CC(&v183);
        v60 = sub_2440D20C0();
        sub_2440D13D0();
        v62 = v61;
        v64 = v63;
        v66 = v65;
        v68 = v67;
        v69 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E40) + 36);
        *v69 = v60;
        *(v69 + 8) = v62;
        *(v69 + 16) = v64;
        *(v69 + 24) = v66;
        *(v69 + 32) = v68;
        *(v69 + 40) = 0;
        v70 = sub_2440D20D0();
        sub_244070F34();
        sub_2440D13D0();
        v71 = v151;
        v72 = v59 + *(v150 + 36);
        *v72 = v70;
        *(v72 + 8) = v73;
        *(v72 + 16) = v74;
        *(v72 + 24) = v75;
        *(v72 + 32) = v76;
        *(v72 + 40) = 0;
        v77 = v154;
        v78 = *(v154 + 16);
        v79 = v160;
        v78(v71, v166, v160);
        v80 = v152;
        sub_243F5F574(v59, v152, &qword_27EDC3E20);
        v81 = v148;
        v78(v148, v71, v79);
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E48);
        sub_243F5F574(v80, v81 + *(v82 + 48), &qword_27EDC3E20);
        sub_243F5EED4(v80, &qword_27EDC3E20);
        v83 = *(v77 + 8);
        v83(v71, v79);
        sub_243F5F574(v81, v156, &qword_27EDC3E08);
        swift_storeEnumTagMultiPayload();
        sub_243F5DD50(&qword_27EDC3E50, &qword_27EDC3E18);
        sub_243F5DD50(&qword_27EDC3E58, &qword_27EDC3E08);
        v84 = v159;
        sub_2440D1D20();
        sub_243F5EED4(v81, &qword_27EDC3E08);
        sub_243F5EED4(v162, &qword_27EDC3E20);
        v83(v166, v79);
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E30);
        return (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E30);
  v138 = *(*(v137 - 8) + 56);
  v139 = v137;
  v140 = v159;

  return v138(v140, 1, 1, v139);
}

uint64_t sub_24402B324@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3DC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v27 = &v25 - v5;
  v6 = sub_2440D1DC0();
  MEMORY[0x28223BE20](v6 - 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3D38);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v25 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3D28);
  v8 = MEMORY[0x28223BE20](v29);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  type metadata accessor for RegistrationViewModel();
  sub_24403005C(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  v13 = *sub_2440D1490();
  v14 = (*(v13 + 288))();

  if (sub_243FA1978(v14, 0))
  {
    v15 = sub_2440D1DA0();
    MEMORY[0x28223BE20](v15);
    *(&v25 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3DD0);
    sub_24402F4FC();
    v16 = v25;
    sub_2440D14D0();
    v17 = sub_243F5DD50(&qword_27EDC3D40, &qword_27EDC3D38);
    v19 = v27;
    v18 = v28;
    MEMORY[0x245D55CE0](v16, v28, v17);
    (*(v4 + 16))(v10, v19, v3);
    (*(v4 + 56))(v10, 0, 1, v3);
    v31 = v18;
    v32 = v17;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x245D55CF0](v10, v3, OpaqueTypeConformance2);
    sub_243F5EED4(v10, &qword_27EDC3D28);
    (*(v4 + 8))(v19, v3);
    (*(v26 + 8))(v16, v18);
  }

  else
  {
    (*(v4 + 56))(v10, 1, 1, v3);
    v21 = sub_243F5DD50(&qword_27EDC3D40, &qword_27EDC3D38);
    v31 = v28;
    v32 = v21;
    v22 = swift_getOpaqueTypeConformance2();
    MEMORY[0x245D55CF0](v10, v3, v22);
    sub_243F5EED4(v10, &qword_27EDC3D28);
  }

  v23 = sub_24402EDE0();
  MEMORY[0x245D55CE0](v12, v29, v23);
  return sub_243F5EED4(v12, &qword_27EDC3D28);
}

uint64_t sub_24402B854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = type metadata accessor for RegSheet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3DF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3DE8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3DD0);
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  sub_2440D13B0();
  v16 = sub_2440D13C0();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  sub_2440300A4(a1, v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RegSheet);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_244027460(v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_2440D2860();
  v21[2] = sub_2440579C8(0, 0xD000000000000017);
  v21[3] = v19;
  sub_243F5DD50(&qword_27EDC3DE0, &qword_27EDC3DE8);
  sub_243F4EF64();
  sub_2440D2440();

  (*(v10 + 8))(v12, v9);
  sub_2440D1800();
  return sub_243F5EED4(v15, &qword_27EDC3DD0);
}

uint64_t sub_24402BBF4(uint64_t a1)
{
  v16 = sub_2440D1AF0();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3B88);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_2440D1630();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RegSheet();
  sub_243F5F574(a1 + *(v12 + 20), v7, &qword_27EDC3B88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_2440D3480();
    v13 = sub_2440D2070();
    sub_2440D11B0();

    sub_2440D1AE0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_2440D1620();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24402BE7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2440D2760();
  *a1 = result;
  return result;
}

uint64_t sub_24402BEB4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24402BF5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v26 - v4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3D50);
  MEMORY[0x28223BE20](v29);
  v7 = v26 - v6;
  v8 = *a1;
  v27 = a1[1];
  v28 = v8;
  v26[1] = *(a1 + 16);
  type metadata accessor for RegistrationViewModel();
  sub_24403005C(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  v9 = sub_2440D1490();
  v10 = type metadata accessor for WebContent();
  v11 = (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v12 = sub_244079C4C(v11);
  v14 = v13;
  v15 = sub_243F4E2F4();
  v16 = sub_243F4E2FC();
  v18 = v17;
  v19 = sub_243FA6A84();
  sub_244079CC4(v12, v14, sub_24402F4C8, v9, v15 & 1, *&v16, v18, v5, v7, v19);
  v20 = sub_2440D1490();
  v21 = sub_2440D12E0();
  v22 = &v7[*(v29 + 36)];
  *v22 = v21;
  v22[1] = v20;
  v31 = *sub_243FFAF58();
  sub_24402EFB0();
  v23 = v30;
  sub_2440D24D0();
  sub_243F5EED4(v7, &qword_27EDC3D50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3C58);
  v25 = (v23 + *(result + 36));
  *v25 = sub_24402C214;
  v25[1] = 0;
  v25[2] = 0;
  v25[3] = 0;
  return result;
}

uint64_t sub_24402C214()
{
  v0 = sub_2440D0AC0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440D0A80();
  sub_2440D0A90();
  return (*(v1 + 8))(v3, v0);
}

double sub_24402C2D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 336))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_24402C350(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v3 = *(**a2 + 344);
  sub_243F5F574(v6, v5, &qword_27EDC3DC0);
  return v3(v6);
}

uint64_t sub_24402C3F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3DB8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = *(a1 + 32);

  sub_24401FBC0();
  sub_24401FBD4();
  if (v5)
  {

    sub_24401FBC0();
    sub_24401FBD4();
  }

  v6 = sub_2440D2630();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  return sub_2440D2620();
}

uint64_t sub_24402C594(uint64_t a1)
{
  v25 = a1;
  v27 = sub_2440D2C80();
  v30 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2440D2CA0();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RegSheet();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2440D2CD0();
  v24 = v7;
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_243F9B2E8(0, &qword_27EDC3DB0);
  v14 = [swift_getObjCClassFromMetadata() appearance];
  [v14 setBounces_];

  sub_243F9B2E8(0, &qword_27EDC6160);
  v15 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v16 = *(v8 + 8);
  v16(v11, v7);
  sub_2440300A4(v25, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RegSheet);
  v17 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v18 = swift_allocObject();
  sub_244027460(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  aBlock[4] = sub_24402F410;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_22;
  v19 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24403005C(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v20 = v26;
  v21 = v27;
  sub_2440D3710();
  MEMORY[0x245D57400](v13, v4, v20, v19);
  _Block_release(v19);

  (*(v30 + 8))(v20, v21);
  (*(v28 + 8))(v4, v29);
  return (v16)(v13, v24);
}

uint64_t sub_24402CA60(_BYTE *a1)
{
  v2 = sub_2440D1630();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    sub_244026E80(v6);
    sub_2440D1620();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_24402CB44(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for RegSheet();

  return sub_24402CA60(a2);
}

unint64_t sub_24402CBB4()
{
  result = qword_27EDC3B98;
  if (!qword_27EDC3B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3B90);
    sub_243F5DD50(&qword_27EDC3BA0, &qword_27EDC3BA8);
    sub_243F5DD50(&qword_27EDC0720, &qword_27EDC0728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3B98);
  }

  return result;
}

uint64_t sub_24402CC98()
{
  v0 = sub_2440D0AC0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440D0A60();
  sub_2440D0A90();
  (*(v1 + 8))(v3, v0);
  type metadata accessor for RegistrationViewModel();
  sub_24403005C(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  sub_2440D1490();
  sub_2440882A4();
}

uint64_t sub_24402CDD0()
{
  type metadata accessor for RegSheet();

  return sub_24402CC98();
}

uint64_t sub_24402CE5C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0010);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = (a2 + *(type metadata accessor for RegSheet() + 32));
  v7 = *v6;
  v8 = v6[1];
  *&v20 = v7;
  *(&v20 + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25C0);
  sub_2440D2840();
  v9 = v31;
  v10 = *&v32;
  sub_2440D1650();
  v12 = v11;
  v13 = sub_2440D0AD0();
  v15 = v14;
  v16 = sub_243F4E2F4();
  sub_243F9AFB0(v9, *(&v9 + 1), v13, v15, v16 & 1, v42, v10, v12);
  sub_2440D2AF0();
  sub_2440D18E0();
  v28 = v42[8];
  v29 = v42[9];
  v30 = v43;
  v24 = v42[4];
  v25 = v42[5];
  v26 = v42[6];
  v27 = v42[7];
  v20 = v42[0];
  v21 = v42[1];
  v22 = v42[2];
  v23 = v42[3];
  v17 = *MEMORY[0x277CDF988];
  v18 = sub_2440D1770();
  (*(*(v18 - 8) + 104))(v5, v17, v18);
  sub_24403005C(&qword_27EDC00D8, MEMORY[0x277CDFA28]);
  result = sub_2440D2F50();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3C28);
    sub_24402E4A4();
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    sub_2440D2420();
    sub_243F5EED4(v5, &qword_27EDC0010);
    v39 = v28;
    v40 = v29;
    v41 = v30;
    v35 = v24;
    v36 = v25;
    v37 = v26;
    v38 = v27;
    v31 = v20;
    v32 = v21;
    v33 = v22;
    v34 = v23;
    return sub_243F5EED4(&v31, &qword_27EDC3C28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24402D18C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3B88);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24402D1EC()
{
  sub_243F60648();

  return sub_2440D1E70();
}

uint64_t sub_24402D23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  v8 = type metadata accessor for RegSheet();
  sub_243F681C8(a3, a5 + v8[5], &qword_27EDC27B0);
  sub_243F681C8(a4, a5 + v8[6], &qword_27EDBFFF0);
  v9 = a5 + v8[7];
  sub_2440D2810();
  *v9 = v17;
  *(v9 + 8) = v18;
  v10 = (a5 + v8[8]);
  sub_2440D2810();
  *v10 = v17;
  v10[1] = v18;
  v11 = a5 + v8[9];
  sub_2440D2810();
  *v11 = v17;
  *(v11 + 8) = v18;
  sub_243F6069C();
  sub_2440D1500();
  v12 = (a5 + v8[11]);
  v13 = sub_2440D0DA0();
  v14 = MEMORY[0x277D438F8];
  v12[3] = v13;
  v12[4] = v14;
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_2440D0D90();
  v15 = v8[12];
  result = sub_2440D1C30();
  *(a5 + v15) = result;
  return result;
}

uint64_t sub_24402D3D8()
{
  type metadata accessor for RegistrationViewModel();
  result = sub_244087B60();
  qword_27EDC6538 = result;
  return result;
}

uint64_t sub_24402D410@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3BC0) - 8;
  v1 = MEMORY[0x28223BE20](v44);
  v45 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v40 = &v40 - v3;
  v4 = type metadata accessor for RegSheet();
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3BC8);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  *&v7[v5[7]] = swift_getKeyPath();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3B88);
  swift_storeEnumTagMultiPayload();
  sub_243F60648();
  sub_2440D1E70();
  *v7 = sub_24402D9B8;
  *(v7 + 1) = 0;
  v7[16] = 0;
  v14 = &v7[v5[9]];
  LOBYTE(v47) = 1;
  sub_2440D2810();
  v15 = v49;
  *v14 = v48;
  *(v14 + 1) = v15;
  v16 = &v7[v5[10]];
  v47 = 0x4049000000000000;
  sub_2440D2810();
  v17 = v49;
  *v16 = v48;
  v16[1] = v17;
  v18 = &v7[v5[11]];
  LOBYTE(v47) = 1;
  sub_2440D2810();
  v19 = v49;
  *v18 = v48;
  *(v18 + 1) = v19;
  v48 = 0x3FF0000000000000;
  sub_243F6069C();
  sub_2440D1500();
  v20 = &v7[v5[13]];
  v21 = sub_2440D0DA0();
  v22 = MEMORY[0x277D438F8];
  v20[3] = v21;
  v20[4] = v22;
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_2440D0D90();
  v23 = v5[14];
  *&v7[v23] = sub_2440D1C30();
  v41 = v13;
  sub_2440300A4(v7, v13, type metadata accessor for RegSheet);
  *&v13[*(v9 + 44)] = xmmword_2440E0D60;
  sub_24403010C(v7, type metadata accessor for RegSheet);
  *&v7[v5[7]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_2440D1E70();
  *v7 = sub_24403016C;
  *(v7 + 1) = 0;
  v7[16] = 0;
  v24 = &v7[v5[9]];
  LOBYTE(v47) = 1;
  sub_2440D2810();
  v25 = v49;
  *v24 = v48;
  *(v24 + 1) = v25;
  v26 = &v7[v5[10]];
  v47 = 0x4049000000000000;
  sub_2440D2810();
  v27 = v49;
  *v26 = v48;
  v26[1] = v27;
  v28 = &v7[v5[11]];
  LOBYTE(v47) = 1;
  sub_2440D2810();
  v29 = v49;
  *v28 = v48;
  *(v28 + 1) = v29;
  v48 = 0x3FF0000000000000;
  sub_2440D1500();
  v30 = &v7[v5[13]];
  v30[3] = v21;
  v30[4] = MEMORY[0x277D438F8];
  __swift_allocate_boxed_opaque_existential_1(v30);
  sub_2440D0D90();
  v31 = v5[14];
  *&v7[v31] = sub_2440D1C30();
  v32 = v40;
  sub_2440300A4(v7, v40, type metadata accessor for RegSheet);
  *(v32 + *(v9 + 44)) = xmmword_2440E0D70;
  sub_24403010C(v7, type metadata accessor for RegSheet);
  v33 = v43;
  v34 = (v32 + *(v44 + 44));
  *v34 = sub_24402DB88;
  v34[1] = 0;
  v34[2] = 0;
  v34[3] = 0;
  v35 = v41;
  sub_243F5F574(v41, v33, &qword_27EDC3BC8);
  v36 = v45;
  sub_243F5F574(v32, v45, &qword_27EDC3BC0);
  v37 = v46;
  sub_243F5F574(v33, v46, &qword_27EDC3BC8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3BD0);
  sub_243F5F574(v36, v37 + *(v38 + 48), &qword_27EDC3BC0);
  sub_243F5EED4(v32, &qword_27EDC3BC0);
  sub_243F5EED4(v35, &qword_27EDC3BC8);
  sub_243F5EED4(v36, &qword_27EDC3BC0);
  return sub_243F5EED4(v33, &qword_27EDC3BC8);
}

uint64_t sub_24402D9E8(uint64_t a1)
{
  v2 = sub_24402E450();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_24402DA34(uint64_t a1)
{
  v2 = sub_24402E450();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_24402DA80()
{
  sub_2440D3B20();
  MEMORY[0x245D57A30](0);
  return sub_2440D3B50();
}

uint64_t sub_24402DAEC()
{
  sub_2440D3B20();
  MEMORY[0x245D57A30](0);
  return sub_2440D3B50();
}

uint64_t sub_24402DB2C()
{
  if (qword_27EDCF060 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24402DB88()
{
  if (qword_27EDCF060 != -1)
  {
    swift_once();
  }

  return (*(*qword_27EDC6538 + 296))(3);
}

unint64_t sub_24402DC2C()
{
  result = qword_27EDC3BD8;
  if (!qword_27EDC3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3BD8);
  }

  return result;
}

unint64_t sub_24402DCA0()
{
  result = qword_27EDC3BE0;
  if (!qword_27EDC3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3BE0);
  }

  return result;
}

uint64_t sub_24402DD08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC27B0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[10];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[11] + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24402DE94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC27B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11] + 24) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[10];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_24402E008()
{
  sub_24402E130();
  if (v0 <= 0x3F)
  {
    sub_24402E1C4();
    if (v1 <= 0x3F)
    {
      sub_243F624F0();
      if (v2 <= 0x3F)
      {
        sub_243F8AF54(319, &qword_27EDC0280);
        if (v3 <= 0x3F)
        {
          sub_243F8AF54(319, &qword_27EDC2640);
          if (v4 <= 0x3F)
          {
            sub_243F62560();
            if (v5 <= 0x3F)
            {
              sub_24402E21C();
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

void sub_24402E130()
{
  if (!qword_27EDC3BE8)
  {
    type metadata accessor for RegistrationViewModel();
    sub_24403005C(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
    v0 = sub_2440D14B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC3BE8);
    }
  }
}

void sub_24402E1C4()
{
  if (!qword_27EDC3BF0)
  {
    sub_2440D1630();
    v0 = sub_2440D1470();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC3BF0);
    }
  }
}

unint64_t sub_24402E21C()
{
  result = qword_27EDC3BF8;
  if (!qword_27EDC3BF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27EDC3BF8);
  }

  return result;
}

unint64_t sub_24402E2A4()
{
  result = qword_27EDC3C00;
  if (!qword_27EDC3C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3BB8);
    sub_24402E330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3C00);
  }

  return result;
}

unint64_t sub_24402E330()
{
  result = qword_27EDC3C08;
  if (!qword_27EDC3C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3BB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3B90);
    sub_24402CBB4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3C08);
  }

  return result;
}

unint64_t sub_24402E450()
{
  result = qword_27EDC3C20;
  if (!qword_27EDC3C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3C20);
  }

  return result;
}

unint64_t sub_24402E4A4()
{
  result = qword_27EDC3C30;
  if (!qword_27EDC3C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3C28);
    sub_243F9B17C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3C30);
  }

  return result;
}

unint64_t sub_24402E540()
{
  result = qword_27EDC3C40;
  if (!qword_27EDC3C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3C38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3C48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3C50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3C60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3C68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3C70);
    sub_24402E76C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3D28);
    sub_24402EDE0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24402EED4();
    swift_getOpaqueTypeConformance2();
    sub_24402F098();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3C40);
  }

  return result;
}

unint64_t sub_24402E76C()
{
  result = qword_27EDC3C78;
  if (!qword_27EDC3C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3C80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3C90);
    sub_24402E89C();
    swift_getOpaqueTypeConformance2();
    sub_24402EAC4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3C78);
  }

  return result;
}

unint64_t sub_24402E89C()
{
  result = qword_27EDC3C98;
  if (!qword_27EDC3C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3C90);
    sub_24402E954();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3C98);
  }

  return result;
}

unint64_t sub_24402E954()
{
  result = qword_27EDC3CA0;
  if (!qword_27EDC3CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3CA8);
    sub_24402E9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3CA0);
  }

  return result;
}

unint64_t sub_24402E9E0()
{
  result = qword_27EDC3CB0;
  if (!qword_27EDC3CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3CB8);
    sub_243F5DD50(&qword_27EDC3CC0, &qword_27EDC3CC8);
    sub_243F5DD50(&qword_27EDC0D38, &qword_27EDC0D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3CB0);
  }

  return result;
}

unint64_t sub_24402EAC4()
{
  result = qword_27EDC3CD0;
  if (!qword_27EDC3CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3CD8);
    sub_24402EB84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3CD0);
  }

  return result;
}

unint64_t sub_24402EB84()
{
  result = qword_27EDC3CE0;
  if (!qword_27EDC3CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3CD8);
    sub_24402EC10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3CE0);
  }

  return result;
}

unint64_t sub_24402EC10()
{
  result = qword_27EDC3CE8;
  if (!qword_27EDC3CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3CF0);
    sub_24402EC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3CE8);
  }

  return result;
}

unint64_t sub_24402EC9C()
{
  result = qword_27EDC3CF8;
  if (!qword_27EDC3CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3D00);
    sub_24402ED28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3CF8);
  }

  return result;
}

unint64_t sub_24402ED28()
{
  result = qword_27EDC3D08;
  if (!qword_27EDC3D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3D10);
    sub_243F5DD50(&qword_27EDC3D18, &qword_27EDC3D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3D08);
  }

  return result;
}

unint64_t sub_24402EDE0()
{
  result = qword_27EDC3D30;
  if (!qword_27EDC3D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3D28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3D38);
    sub_243F5DD50(&qword_27EDC3D40, &qword_27EDC3D38);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3D30);
  }

  return result;
}

unint64_t sub_24402EED4()
{
  result = qword_27EDC3D48;
  if (!qword_27EDC3D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3D50);
    sub_24402EFB0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3D48);
  }

  return result;
}

unint64_t sub_24402EFB0()
{
  result = qword_27EDC3D58;
  if (!qword_27EDC3D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3D50);
    sub_24403005C(&qword_27EDC3D60, type metadata accessor for TermsOfServiceSheet);
    sub_243F5DD50(&qword_27EDC3D68, &qword_27EDC3D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3D58);
  }

  return result;
}

unint64_t sub_24402F098()
{
  result = qword_27EDC3D78;
  if (!qword_27EDC3D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3D78);
  }

  return result;
}

uint64_t sub_24402F0EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = v1[3];
  v5 = v1[4];
  *a1 = *(v3 + *(type metadata accessor for RegSheet() + 48));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E70);
  return sub_2440284F0(v3, a1 + *(v6 + 44), v4, v5);
}

uint64_t sub_24402F178()
{
  type metadata accessor for RegSheet();
  type metadata accessor for RegistrationViewModel();
  sub_24403005C(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  v0 = *sub_2440D1490();
  v1 = (*(v0 + 648))();

  if (v1)
  {
    v3 = *sub_2440D1490();
    v4 = (*(v3 + 288))();

    result = sub_243FA1978(v4, 1);
    if (result)
    {
      v5 = *sub_2440D1490();
      (*(v5 + 840))();
    }
  }

  return result;
}

uint64_t sub_24402F388@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RegSheet() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24402BF5C(v4, a1);
}

uint64_t sub_24402F410()
{
  type metadata accessor for RegSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  return sub_2440D2830();
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24402F4FC()
{
  result = qword_27EDC3DD8;
  if (!qword_27EDC3DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3DD0);
    sub_243F5DD50(&qword_27EDC3DE0, &qword_27EDC3DE8);
    sub_24403005C(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3DD8);
  }

  return result;
}

uint64_t sub_24402F5FC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RegSheet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_24402F678()
{
  result = qword_27EDC3E38;
  if (!qword_27EDC3E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3E38);
  }

  return result;
}

uint64_t sub_24402F728(uint64_t a1)
{
  type metadata accessor for RegSheet();
  type metadata accessor for RegistrationViewModel();
  sub_24403005C(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  v2 = *sub_2440D1490();
  (*(v2 + 856))(a1);
}

uint64_t sub_24402F848()
{
  type metadata accessor for RegSheet();
  type metadata accessor for RegistrationViewModel();
  sub_24403005C(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  v0 = sub_2440D1490();
  v1 = sub_243F4E2F4();
  (*(*v0 + 816))(v1 & 1);
}

uint64_t sub_24402F960()
{
  type metadata accessor for RegSheet();
  type metadata accessor for RegistrationViewModel();
  sub_24403005C(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  v0 = *sub_2440D1490();
  (*(v0 + 816))(1);
}

uint64_t sub_24402FA74(uint64_t a1)
{
  v3 = *(type metadata accessor for RegSheet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24402CE5C(a1, v4);
}

uint64_t objectdestroyTm_19()
{
  v1 = type metadata accessor for RegSheet();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_2440191EC();
  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3B88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2440D1630();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[6];
  v6 = sub_2440D1F00();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);

  v8 = v1[10];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
  (*(*(v9 - 8) + 8))(v2 + v8, v9);
  __swift_destroy_boxed_opaque_existential_0(v2 + v1[11]);

  return swift_deallocObject();
}

uint64_t sub_24402FD5C()
{
  type metadata accessor for RegSheet();
  type metadata accessor for RegistrationViewModel();
  sub_24403005C(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);

  return sub_2440D1490();
}

unint64_t sub_24402FE28()
{
  result = qword_27EDC3ED8;
  if (!qword_27EDC3ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3ED0);
    sub_24402FEB4();
    sub_24402FFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3ED8);
  }

  return result;
}

unint64_t sub_24402FEB4()
{
  result = qword_27EDC3EE0;
  if (!qword_27EDC3EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3EC8);
    sub_24403005C(&qword_27EDC3EE8, type metadata accessor for RegisteringDescription);
    sub_24403005C(&qword_27EDC3EF0, type metadata accessor for RegisteredDescription);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3EE0);
  }

  return result;
}

unint64_t sub_24402FFA0()
{
  result = qword_27EDC3EF8;
  if (!qword_27EDC3EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3EA8);
    sub_24403005C(&qword_27EDC3F00, type metadata accessor for SubscribingDescription);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3EF8);
  }

  return result;
}

uint64_t sub_24403005C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2440300A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24403010C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2440301A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2440D05F0();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for SafariWebView()
{
  result = qword_27EDCF420;
  if (!qword_27EDCF420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_244030294()
{
  v0 = objc_allocWithZone(MEMORY[0x277CDB700]);
  v1 = sub_2440D05A0();
  v2 = [v0 initWithURL_];

  [v2 setModalPresentationStyle_];
  return v2;
}

uint64_t sub_2440302FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440305B0(&qword_27EDC3F10);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24403037C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440305B0(&qword_27EDC3F10);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2440303FC()
{
  sub_2440305B0(&qword_27EDC3F10);
  sub_2440D2020();
  __break(1u);
}

uint64_t sub_244030454(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440D05F0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2440304D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440D05F0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_244030544()
{
  result = sub_2440D05F0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2440305B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SafariWebView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for BottomErrorView()
{
  result = qword_27EDCF9B0;
  if (!qword_27EDCF9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_24403067C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 120) = 0x404E800000000000;
  type metadata accessor for BottomErrorView();
  sub_243F64688();
  sub_2440D1E70();
  v10 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v10;
  v11 = *(a1 + 80);
  *(a5 + 64) = *(a1 + 64);
  *(a5 + 80) = v11;
  result = *a1;
  v13 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v13;
  *(a5 + 96) = a2;
  *(a5 + 104) = a3;
  *(a5 + 112) = a4;
  return result;
}

uint64_t sub_24403070C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BottomErrorView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_2440D1C20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3F18);
  sub_2440309E8(v1, a1 + *(v6 + 44));
  v7 = sub_2440D20B0();
  sub_2440D13D0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3F20) + 36);
  *v16 = v7;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = sub_2440D2680();
  v18 = sub_2440D20B0();
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3F28) + 36);
  *v19 = v17;
  *(v19 + 8) = v18;
  sub_24407070C();
  v21 = v20;
  v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3F30) + 36));
  v23 = *(sub_2440D18B0() + 20);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_2440D1B90();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  *v22 = v21;
  *(v22 + 1) = v21;
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC07B0) + 36)] = 256;
  sub_2440328D4(v1, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v27 = swift_allocObject();
  sub_24403293C(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  v28 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3F38) + 36));
  *v28 = sub_2440329A0;
  v28[1] = v27;
  v28[2] = 0;
  v28[3] = 0;
  sub_2440328D4(v1, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = swift_allocObject();
  sub_24403293C(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3F40);
  v31 = (a1 + *(result + 36));
  *v31 = 0;
  v31[1] = 0;
  v31[2] = sub_244032D28;
  v31[3] = v29;
  return result;
}

uint64_t sub_2440309E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v161 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3FF8);
  MEMORY[0x28223BE20](v3 - 8);
  v166 = &v152 - v4;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4000);
  MEMORY[0x28223BE20](v167);
  v168 = &v152 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4008);
  v159 = *(v6 - 8);
  v160 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v158 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v181 = &v152 - v9;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0010);
  MEMORY[0x28223BE20](v182);
  v185 = &v152 - v10;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4010);
  MEMORY[0x28223BE20](v163);
  v177 = &v152 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4018);
  v164 = *(v12 - 8);
  v165 = v12;
  MEMORY[0x28223BE20](v12);
  v162 = &v152 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4020);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v180 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v187 = &v152 - v17;
  v170 = type metadata accessor for BottomErrorView();
  v176 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v175 = v18;
  v184 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4028);
  MEMORY[0x28223BE20](v171);
  v172 = &v152 - v19;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4030);
  MEMORY[0x28223BE20](v174);
  v173 = &v152 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4038);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v179 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v188 = &v152 - v24;
  v25 = sub_2440D1F60();
  v157 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v152 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4040);
  MEMORY[0x28223BE20](v28);
  v30 = &v152 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4048);
  v156 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v152 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4050);
  v169 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v155 = &v152 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4058);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v178 = &v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = a1[1];
  v186 = &v152 - v39;
  if (v40)
  {
    v153 = v31;
    v154 = v34;
    v42 = a1[2];
    v41 = a1[3];
    v152 = v25;

    *v30 = sub_2440D1C20();
    *(v30 + 1) = 0;
    v30[16] = 1;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC40F0);
    sub_244031F64(v42, v41, a1, &v30[*(v43 + 44)]);
    sub_2440D1F50();
    v44 = a1;
    v45 = sub_243F5DD50(&qword_27EDC40F8, &qword_27EDC4040);
    sub_2440D2490();
    (*(v157 + 8))(v27, v152);
    sub_243F5EED4(v30, &qword_27EDC4040);
    *&v203 = v28;
    *(&v203 + 1) = v45;
    a1 = v44;
    swift_getOpaqueTypeConformance2();
    v46 = v155;
    v47 = v153;
    sub_2440D2480();

    (*(v156 + 8))(v33, v47);
    v48 = v186;
    sub_244035008(v46, v186);
    (*(v169 + 56))(v48, 0, 1, v154);
  }

  else
  {
    (*(v169 + 56))(&v152 - v39, 1, 1, v34);
  }

  v183 = a1;

  sub_24401FBC0();
  v49 = sub_24401FBD4();
  v51 = v50;
  v53 = v52;
  sub_2440D21D0();
  v54 = sub_2440D22E0();
  v56 = v55;
  v58 = v57;

  sub_243F62C68(v49, v51, v53 & 1);

  sub_2440D21B0();
  v59 = sub_2440D22A0();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  sub_243F62C68(v54, v56, v58 & 1);

  v66 = sub_2440D20D0();
  sub_2440D13D0();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  LOBYTE(v203) = v63 & 1;
  LOBYTE(v196) = 0;
  v75 = sub_2440D26C0();
  KeyPath = swift_getKeyPath();
  v77 = swift_getKeyPath();
  *&v203 = v59;
  *(&v203 + 1) = v61;
  LOBYTE(v204) = v63 & 1;
  *(&v204 + 1) = v65;
  LOBYTE(v205) = v66;
  *(&v205 + 1) = v68;
  *&v206 = v70;
  *(&v206 + 1) = v72;
  *&v207 = v74;
  BYTE8(v207) = 0;
  *&v208[0] = KeyPath;
  *(&v208[0] + 1) = v75;
  *&v208[1] = v77;
  BYTE8(v208[1]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4060);
  sub_24403461C();
  v78 = v172;
  sub_2440D2510();
  v215[4] = v207;
  v216[0] = v208[0];
  *(v216 + 9) = *(v208 + 9);
  v215[0] = v203;
  v215[1] = v204;
  v215[2] = v205;
  v215[3] = v206;
  sub_243F5EED4(v215, &qword_27EDC4060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  v79 = v183;
  sub_2440D1E60();
  LOBYTE(v196) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0258);
  sub_244034B6C(&qword_27EDC4070, &qword_27EDC4028, &unk_2440E17B0, sub_24403461C);
  sub_243F67D98();
  v80 = v173;
  sub_2440D24A0();

  sub_243F5EED4(v78, &qword_27EDC4028);
  v81 = v184;
  sub_2440328D4(v79, v184);
  v82 = v176[80];
  v83 = (v82 + 16) & ~v82;
  v171 = v83 + v175;
  v172 = v82;
  v84 = swift_allocObject();
  v175 = v83;
  sub_24403293C(v81, v84 + v83);
  v85 = (v80 + *(v174 + 36));
  *v85 = sub_2440346D4;
  v85[1] = v84;
  sub_244034774();
  v85[2] = 0;
  v85[3] = 0;
  sub_2440D24E0();
  sub_243F5EED4(v80, &qword_27EDC4030);

  sub_24401FBC0();
  v86 = sub_24401FBD4();
  v88 = v87;
  LOBYTE(v56) = v89;
  sub_2440D2150();
  v90 = sub_2440D22E0();
  v92 = v91;
  LOBYTE(v79) = v93;
  v176 = v94;

  sub_243F62C68(v86, v88, v56 & 1);

  v95 = swift_getKeyPath();
  LOBYTE(v88) = sub_2440D20D0();
  sub_2440D13D0();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  LOBYTE(v80) = v79 & 1;
  v213 = v79 & 1;
  v212 = 0;
  sub_2440D2AE0();
  sub_2440D18E0();
  *(&v214[3] + 7) = v216[5];
  *(&v214[4] + 7) = v216[6];
  *(&v214[5] + 7) = v216[7];
  *(&v214[6] + 7) = v216[8];
  *(v214 + 7) = v216[2];
  *(&v214[1] + 7) = v216[3];
  *(&v214[2] + 7) = v216[4];
  sub_2440D26A0();
  v104 = sub_2440D26B0();

  v105 = swift_getKeyPath();
  v106 = swift_getKeyPath();
  *&v196 = v90;
  *(&v196 + 1) = v92;
  LOBYTE(v197) = v80;
  *(&v197 + 1) = v176;
  *&v198 = v95;
  *(&v198 + 1) = 0x3FF4CCCCCCCCCCCDLL;
  LOBYTE(v199) = v88;
  *(&v199 + 1) = v97;
  *&v200 = v99;
  *(&v200 + 1) = v101;
  *&v201[0] = v103;
  BYTE8(v201[0]) = 0;
  *(&v201[4] + 9) = v214[4];
  *(&v201[5] + 9) = v214[5];
  *(&v201[6] + 9) = v214[6];
  *(v201 + 9) = v214[0];
  *(&v201[1] + 9) = v214[1];
  *(&v201[2] + 9) = v214[2];
  *(&v201[3] + 9) = v214[3];
  *(&v201[7] + 1) = *(&v214[6] + 15);
  *&v202[0] = v105;
  *(&v202[0] + 1) = v104;
  *&v202[1] = v106;
  BYTE8(v202[1]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4080);
  sub_24403489C();
  v107 = 1.0;
  v108 = v177;
  sub_2440D2510();
  v208[7] = v201[7];
  v209[0] = v202[0];
  *(v209 + 9) = *(v202 + 9);
  v208[3] = v201[3];
  v208[4] = v201[4];
  v208[5] = v201[5];
  v208[6] = v201[6];
  v207 = v200;
  v208[0] = v201[0];
  v208[1] = v201[1];
  v208[2] = v201[2];
  v203 = v196;
  v204 = v197;
  v205 = v198;
  v206 = v199;
  sub_243F5EED4(&v203, &qword_27EDC4080);
  v109 = *MEMORY[0x277CDF998];
  v110 = sub_2440D1770();
  v111 = *(v110 - 8);
  v112 = *(v111 + 104);
  v113 = v111 + 104;
  v114 = v185;
  v112(v185, v109, v110);
  v115 = sub_244034B24(&qword_27EDC00D8, MEMORY[0x277CDFA28]);
  result = sub_2440D2F50();
  if (result)
  {
    v174 = v110;
    LODWORD(v173) = v109;
    v176 = v112;
    v117 = v108;
    v118 = sub_244034B6C(&qword_27EDC40C0, &qword_27EDC4010, &unk_2440E1798, sub_24403489C);
    v170 = v113;
    v119 = sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    v120 = v162;
    v169 = v115;
    v121 = v163;
    v122 = v182;
    sub_2440D2420();
    sub_243F5EED4(v114, &qword_27EDC0010);
    sub_243F5EED4(v117, &qword_27EDC4010);
    *&v196 = v121;
    *(&v196 + 1) = v122;
    *&v197 = v118;
    *(&v197 + 1) = v119;
    v177 = v119;
    swift_getOpaqueTypeConformance2();
    v123 = v165;
    sub_2440D24E0();
    (*(v164 + 8))(v120, v123);
    v124 = v183;
    v125 = v183[8];
    v126 = v183[9];

    v127 = sub_2440D26A0();
    v128 = sub_2440D2660();
    v129 = v184;
    sub_2440328D4(v124, v184);
    v130 = swift_allocObject();
    sub_24403293C(v129, v130 + v175);
    sub_243FB9D2C(v125, v126, v127, v128, 0xD000000000000010, 0x80000002440ED610, sub_244034DB4, v130, v210);
    v132 = *(v124 + 104);
    v133 = *(v124 + 112);
    *&v196 = *(v124 + 96);
    v131 = v196;
    *(&v196 + 1) = v132;
    LOBYTE(v197) = v133;
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8);
    MEMORY[0x245D56840](&v190);
    LOBYTE(v127) = v190;
    v135 = swift_getKeyPath();
    v136 = swift_allocObject();
    *(v136 + 16) = v127;
    v192 = v210[2];
    v193 = v210[3];
    v190 = v210[0];
    v191 = v210[1];
    *&v194 = v211;
    *(&v194 + 1) = v135;
    *&v195 = sub_243FF6164;
    *(&v195 + 1) = v136;
    *&v196 = v131;
    *(&v196 + 1) = v132;
    LOBYTE(v197) = v133;
    MEMORY[0x245D56840](&v189, v134);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC40C8);
    sub_244034E28();
    v137 = v166;
    sub_2440D2480();
    v198 = v192;
    v199 = v193;
    v200 = v194;
    v201[0] = v195;
    v196 = v190;
    v197 = v191;
    sub_243F5EED4(&v196, &qword_27EDC40C8);
    *&v190 = v131;
    *(&v190 + 1) = v132;
    LOBYTE(v191) = v133;
    v138 = v185;
    MEMORY[0x245D56840](&v189, v134);
    if (v189)
    {
      v107 = 0.25;
    }

    v139 = v168;
    sub_244034EE0(v137, v168);
    *(v139 + *(v167 + 36)) = v107;
    (v176)(v138, v173, v174);
    result = sub_2440D2F50();
    if (result)
    {
      sub_244034F50();
      v140 = v181;
      sub_2440D2420();
      sub_243F5EED4(v138, &qword_27EDC0010);
      sub_243F5EED4(v139, &qword_27EDC4000);
      v141 = v178;
      sub_243F5F574(v186, v178, &qword_27EDC4058);
      v142 = v179;
      sub_243F5F574(v188, v179, &qword_27EDC4038);
      v143 = v180;
      sub_243F5F574(v187, v180, &qword_27EDC4020);
      v145 = v158;
      v144 = v159;
      v146 = *(v159 + 16);
      v147 = v160;
      v146(v158, v140, v160);
      v148 = v141;
      v149 = v161;
      sub_243F5F574(v148, v161, &qword_27EDC4058);
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC40E8);
      sub_243F5F574(v142, v149 + v150[12], &qword_27EDC4038);
      sub_243F5F574(v143, v149 + v150[16], &qword_27EDC4020);
      v146((v149 + v150[20]), v145, v147);
      v151 = *(v144 + 8);
      v151(v181, v147);
      sub_243F5EED4(v187, &qword_27EDC4020);
      sub_243F5EED4(v188, &qword_27EDC4038);
      sub_243F5EED4(v186, &qword_27EDC4058);
      v151(v145, v147);
      sub_243F5EED4(v180, &qword_27EDC4020);
      sub_243F5EED4(v179, &qword_27EDC4038);
      return sub_243F5EED4(v178, &qword_27EDC4058);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_244031F64@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v46 = a3;
  v48 = a4;
  v6 = sub_2440D2770();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4100);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4108);
  MEMORY[0x28223BE20](v47);
  v14 = &v46 - v13;

  sub_2440D2780();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
  v15 = sub_2440D2790();

  (*(v7 + 8))(v9, v6);
  LOBYTE(v9) = sub_2440D20B0();
  sub_2440D13D0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v55[0]) = 1;
  LOBYTE(v49) = 0;
  v24 = sub_2440D2130();
  KeyPath = swift_getKeyPath();
  v49 = v15;
  LOWORD(v50) = 1;
  BYTE8(v50) = v9;
  *&v51 = v17;
  *(&v51 + 1) = v19;
  *&v52 = v21;
  *(&v52 + 1) = v23;
  LOBYTE(v53) = 0;
  *(&v53 + 1) = KeyPath;
  v54 = v24;
  sub_2440D21B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4110);
  sub_244035078();
  sub_2440D2370();
  v55[3] = v52;
  v55[4] = v53;
  v56 = v54;
  v55[0] = v49;
  v55[1] = v50;
  v55[2] = v51;
  sub_243F5EED4(v55, &qword_27EDC4110);
  v26 = swift_getKeyPath();
  v27 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4130) + 36)];
  *v27 = v26;
  v27[1] = a2;

  sub_2440D2B00();
  sub_2440D1560();
  v28 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4138) + 36)];
  v29 = v50;
  *v28 = v49;
  *(v28 + 1) = v29;
  *(v28 + 2) = v51;
  LOBYTE(v26) = sub_2440D20B0();
  v30 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4140) + 36)];
  *v30 = a1;
  v30[8] = v26;
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4148) + 36)] = 256;

  LOBYTE(v26) = sub_2440D20C0();
  sub_2440D13D0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4150) + 36)];
  *v39 = v26;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  LOBYTE(v26) = sub_2440D20D0();
  sub_2440D13D0();
  v40 = &v12[*(v10 + 36)];
  *v40 = v26;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  sub_2440351BC();
  sub_2440D2480();
  sub_243F5EED4(v12, &qword_27EDC4100);
  sub_2440D1800();
  return sub_243F5EED4(v14, &qword_27EDC4108);
}

uint64_t sub_244032480(uint64_t a1)
{
  v24 = a1;
  v26 = sub_2440D2C80();
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2440D2CA0();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BottomErrorView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_2440D2CD0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  sub_243F5DB84();
  v23 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v25 = *(v10 + 8);
  v25(v13, v9);
  sub_2440328D4(v24, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_24403293C(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_2440355E0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_49;
  v18 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_244034B24(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v19 = v26;
  sub_2440D3710();
  v20 = v23;
  MEMORY[0x245D57400](v15, v5, v2, v18);
  _Block_release(v18);

  (*(v29 + 8))(v2, v19);
  (*(v27 + 8))(v5, v28);
  return (v25)(v15, v9);
}

uint64_t sub_2440328D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BottomErrorView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24403293C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BottomErrorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2440329B8(uint64_t a1)
{
  v2 = sub_2440D2C80();
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2440D2CA0();
  v5 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BottomErrorView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_243F5DB84();
  v11 = sub_2440D3530();
  sub_2440328D4(a1, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_24403293C(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = sub_2440345FC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_23;
  v14 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_244034B24(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  sub_2440D3710();
  MEMORY[0x245D57440](0, v7, v4, v14);
  _Block_release(v14);

  (*(v17 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v16);
}

uint64_t sub_244032D40(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for BottomErrorView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_244032DB8@<D0>(uint64_t a1@<X8>)
{
  *&result = 197121;
  *a1 = 197121;
  *(a1 + 4) = 4;
  return result;
}

uint64_t sub_244032DD0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BottomErrorView();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  sub_24403377C(a1, 0, 0, sub_2440336E0, 0, v22);
  v18[7] = 0;
  sub_2440D2970();
  v10 = v19;
  v11 = v20;
  v12 = v21;
  *(v9 + 15) = 0x404E800000000000;
  sub_243F64688();
  sub_2440D1E70();
  v13 = v22[3];
  *(v9 + 2) = v22[2];
  *(v9 + 3) = v13;
  v14 = v22[5];
  *(v9 + 4) = v22[4];
  *(v9 + 5) = v14;
  v15 = v22[1];
  *v9 = v22[0];
  *(v9 + 1) = v15;
  *(v9 + 12) = v10;
  *(v9 + 13) = v11;
  v9[112] = v12;
  sub_2440328D4(v9, v7);
  *a2 = 0;
  *(a2 + 8) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3FF0);
  sub_2440328D4(v7, a2 + *(v16 + 48));
  sub_243FF7184(v9);
  return sub_243FF7184(v7);
}

double sub_244032F5C@<D0>(unsigned __int8 a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  sub_24403377C(a1, a2, a3, a4, a5, v11);
  v7 = v11[3];
  a6[2] = v11[2];
  a6[3] = v7;
  v8 = v11[5];
  a6[4] = v11[4];
  a6[5] = v8;
  result = *v11;
  v10 = v11[1];
  *a6 = v11[0];
  a6[1] = v10;
  return result;
}

uint64_t sub_244032FA4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_2440D2B00();
  a1[1] = v4;
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3F48) + 44);
  *v5 = sub_2440D1C20();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3F50);
  sub_244032DD0(v3, &v5[*(v6 + 44)]);
  sub_2440D2680();
  v7 = sub_2440D26B0();

  v8 = sub_2440D20B0();
  v9 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3F58) + 36)];
  *v9 = v7;
  v9[8] = v8;
  v10 = sub_2440D20B0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3F60);
  *(a1 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_2440330A0(uint64_t a1)
{
  v2 = sub_2440345A8();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_2440330EC(uint64_t a1)
{
  v2 = sub_2440345A8();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_244033138(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  else
  {
    return sub_2440D3A10();
  }
}

uint64_t sub_244033170@<X0>(char a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = 0xEF6B72616D6E6F69;
  v8 = 0x74616D616C637865;
  if (a1)
  {
    if (a1 == 1)
    {
      v9 = 0xD000000000000017;
    }

    else
    {
      v8 = 0xD000000000000010;
      v7 = 0x80000002440ED0C0;
      v9 = 0xD000000000000015;
    }

    if (a1 == 1)
    {
      v10 = "PIN_DESCRIPTION_TIMEOUT";
    }

    else
    {
      v10 = "lock.shield.fill";
    }

    if (a1 == 1)
    {
      v11 = 0xD00000000000001CLL;
    }

    else
    {
      v11 = 0xD000000000000017;
    }

    if (a1 == 1)
    {
      v12 = "STATUS_PINPAD_PREVENTED";
    }

    else
    {
      v12 = "STATUS_PINPAD_TIMEOUT";
    }
  }

  else
  {
    v9 = 0xD000000000000019;
    v11 = 0xD00000000000001ELL;
    v12 = "STATUS_PINPAD_UNAVAILABLE";
    v10 = "DESCRIPTION_PINPAD_PREVENTED";
  }

  v13 = sub_2440D2660();
  v14 = sub_2440D26A0();
  *a4 = v8;
  a4[1] = v7;
  a4[2] = v13;
  a4[3] = v14;
  a4[4] = v9;
  a4[5] = v10 | 0x8000000000000000;
  a4[6] = v11;
  a4[7] = v12 | 0x8000000000000000;
  a4[8] = 0x4C4542414C5F4B4FLL;
  a4[9] = 0xE800000000000000;
  a4[10] = a2;
  a4[11] = a3;
}

uint64_t sub_2440332C8@<X0>(unsigned __int8 a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v8 = 0xD000000000000010;
        v7 = 0x80000002440ED0C0;
        v10 = sub_2440D2660();
        v11 = sub_2440D26A0();
        v16 = 0x80000002440ED320;
        v12 = 0xD000000000000014;
        v13 = "TION_CONNECTION_FAILED";
        v14 = "TION_READER_FAILED";
        v15 = 0xD000000000000020;
        v9 = 0xD000000000000010;
      }

      else
      {
        v7 = 0xEF6B72616D6E6F69;
        v9 = 0xD000000000000010;
        v8 = 0x74616D616C637865;
        v10 = sub_2440D2660();
        v11 = sub_2440D26A0();
        v16 = 0x80000002440ED320;
        v12 = 0xD00000000000001ALL;
        v13 = "IDENTITY_CONNECTION_FAILED";
        v14 = "BUTTON_TRY_AGAIN";
        v15 = 0xD000000000000026;
      }
    }

    else
    {
      v9 = 0x4C4542414C5F4B4FLL;
      if (a1)
      {
        v10 = sub_2440D2660();
        v11 = sub_2440D26A0();
        v12 = 0xD00000000000001BLL;
        v13 = "IDENTITY_TITLE_NFC_DISABLED";
        v14 = "TION_NFC_TIMEOUT";
        v15 = 0xD000000000000021;
        v16 = 0xE800000000000000;
        v7 = 0xE300000000000000;
        v8 = 6514286;
      }

      else
      {
        v10 = sub_2440D2660();
        v11 = sub_2440D26A0();
        v12 = 0xD000000000000021;
        v13 = "LUETOOTH_DISABLED";
        v14 = "TION_NFC_DISABLED";
        v15 = 0xD000000000000027;
        v16 = 0xE800000000000000;
        v7 = 0xE900000000000068;
        v8 = 0x746F6F7465756C62;
      }
    }
  }

  else
  {
    v7 = 0xEF6B72616D6E6F69;
    if (a1 <= 5u)
    {
      if (a1 == 4)
      {
        v9 = 0xD000000000000010;
        v8 = 0x74616D616C637865;
        v10 = sub_2440D2660();
        v11 = sub_2440D26A0();
        v16 = 0x80000002440ED320;
        v12 = 0xD000000000000019;
        v13 = "TION_NFC_OVERHEAT";
        v14 = "DESCRIPTION_PINPAD_UNAVAILABLE";
        v15 = 0xD000000000000025;
        goto LABEL_19;
      }

      v8 = 0x74616D616C637865;
      v9 = 0x4C4542414C5F4B4FLL;
      v10 = sub_2440D2660();
      v11 = sub_2440D26A0();
      v12 = 0xD000000000000014;
      v13 = "IDENTITY_NFC_TIMEOUT";
      v14 = "TION_READER_FAILED";
      v15 = 0xD000000000000021;
    }

    else
    {
      v8 = 0x74616D616C637865;
      v9 = 0x4C4542414C5F4B4FLL;
      if (a1 == 6)
      {
        v10 = sub_2440D2660();
        v11 = sub_2440D26A0();
        v12 = 0xD000000000000017;
        v13 = "IDENTITY_UNABLE_READ_ID";
        v14 = "ERIFY_INVALID_RESP";
        v15 = 0xD000000000000023;
      }

      else if (a1 == 7)
      {
        v10 = sub_2440D2660();
        v11 = sub_2440D26A0();
        v12 = 0xD000000000000016;
        v13 = "IDENTITY_READER_FAILED";
        v14 = "TION_UNABLE_READ_ID";
        v15 = 0xD000000000000022;
      }

      else
      {
        v10 = sub_2440D2660();
        v11 = sub_2440D26A0();
        v12 = 0xD000000000000019;
        v15 = 0xD000000000000032;
        v13 = "IDENTITY_UNABLE_TO_VERIFY";
        v14 = "DESCRIPTION_PINPAD_UNAVAILABLE";
      }
    }

    v16 = 0xE800000000000000;
  }

LABEL_19:
  *a4 = v8;
  a4[1] = v7;
  a4[2] = v10;
  a4[3] = v11;
  a4[4] = v12;
  a4[5] = v14 | 0x8000000000000000;
  a4[6] = v15;
  a4[7] = v13 | 0x8000000000000000;
  a4[8] = v9;
  a4[9] = v16;
  a4[10] = a2;
  a4[11] = a3;
}

uint64_t sub_24403368C@<X0>(void *a1@<X8>)
{
  result = sub_2440D1970();
  *a1 = v3;
  return result;
}

uint64_t sub_2440336E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2440D5CF0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000014;
  *(v0 + 40) = 0x80000002440ED0A0;
  sub_2440D3B00();
}

uint64_t sub_24403377C@<X0>(unsigned __int8 a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v9 = 0xEF6B72616D6E6F69;
      v10 = 0x74616D616C637865;
      v11 = 0x4C4542414C5F4B4FLL;
      v12 = sub_2440D2660();
      v13 = sub_2440D26A0();
      v14 = 0x80000002440ED530;
      v15 = 0x80000002440ED550;
      v17 = 0xD000000000000018;
      v16 = 0xD00000000000001ELL;
    }

    else
    {
      if (a1 == 4)
      {
        v11 = 0x4C4542414C5F4B4FLL;
        v12 = sub_2440D2660();
        v13 = sub_2440D26A0();
        v14 = 0x80000002440ED4F0;
        v15 = 0x80000002440ED510;
        v17 = 0xD000000000000013;
        v16 = 0xD000000000000018;
        v18 = 0xE800000000000000;
        v9 = 0xE300000000000000;
        v10 = 6514286;
        goto LABEL_19;
      }

      v9 = 0xEF6B72616D6E6F69;
      v10 = 0x74616D616C637865;
      v11 = 0x4C4542414C5F4B4FLL;
      v12 = sub_2440D2660();
      v13 = sub_2440D26A0();
      v14 = 0x80000002440ED4A0;
      v15 = 0x80000002440ED4C0;
      v17 = 0xD000000000000019;
      v16 = 0xD000000000000020;
    }
  }

  else
  {
    if (!a1)
    {
      v10 = 0xD000000000000010;
      v12 = sub_2440D2660();
      v21 = a4;
      v22 = sub_2440D26A0();
      if (a3)
      {
        v16 = a2;
      }

      else
      {
        v16 = 0xD00000000000001BLL;
      }

      if (a3)
      {
        v15 = a3;
      }

      else
      {
        v15 = 0x80000002440EBE70;
      }

      v18 = 0x80000002440ED320;

      v13 = v22;
      a4 = v21;
      v9 = 0x80000002440ED0C0;
      v14 = 0xEE0054554F454D49;
      v17 = 0x545F535554415453;
      v11 = 0xD000000000000010;
      goto LABEL_19;
    }

    v9 = 0xEF6B72616D6E6F69;
    v10 = 0x74616D616C637865;
    v11 = 0x4C4542414C5F4B4FLL;
    if (a1 == 1)
    {
      v12 = sub_2440D2660();
      v13 = sub_2440D26A0();
      v14 = 0x80000002440ED5B0;
      v15 = 0x80000002440ED590;
      v16 = 0xD00000000000001ALL;
      v17 = 0xD00000000000001DLL;
    }

    else
    {
      v12 = sub_2440D2660();
      v13 = sub_2440D26A0();
      v14 = 0x80000002440ED570;
      v15 = 0x80000002440ED590;
      v17 = 0xD000000000000015;
      v16 = 0xD00000000000001ALL;
    }
  }

  v18 = 0xE800000000000000;
LABEL_19:
  *a6 = v10;
  a6[1] = v9;
  a6[2] = v12;
  a6[3] = v13;
  a6[4] = v17;
  a6[5] = v14;
  a6[6] = v16;
  a6[7] = v15;
  a6[8] = v11;
  a6[9] = v18;
  a6[10] = a4;
  a6[11] = a5;
}

unint64_t sub_244033B0C()
{
  result = qword_27EDC3F68;
  if (!qword_27EDC3F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3F68);
  }

  return result;
}

unint64_t sub_244033B80()
{
  result = qword_27EDC3F70;
  if (!qword_27EDC3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3F70);
  }

  return result;
}

unint64_t sub_244033BD8()
{
  result = qword_27EDC3F78;
  if (!qword_27EDC3F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3F78);
  }

  return result;
}

unint64_t sub_244033C30()
{
  result = qword_27EDC3F80;
  if (!qword_27EDC3F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3F80);
  }

  return result;
}

uint64_t sub_244033C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_244033D68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_244033E18()
{
  sub_243F624A0();
  if (v0 <= 0x3F)
  {
    sub_243F67D28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_19ContactlessReaderUI10SystemIconVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_244033F18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_244033F60(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for IdentityUIError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityUIError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_244034168()
{
  result = qword_27EDC3F88;
  if (!qword_27EDC3F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3F40);
    sub_2440341F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3F88);
  }

  return result;
}

unint64_t sub_2440341F4()
{
  result = qword_27EDC3F90;
  if (!qword_27EDC3F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3F38);
    sub_244034280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3F90);
  }

  return result;
}

unint64_t sub_244034280()
{
  result = qword_27EDC3F98;
  if (!qword_27EDC3F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3F30);
    sub_244034338();
    sub_243F5DD50(&qword_27EDC07F8, &qword_27EDC07B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3F98);
  }

  return result;
}

unint64_t sub_244034338()
{
  result = qword_27EDC3FA0;
  if (!qword_27EDC3FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3F28);
    sub_2440343F0();
    sub_243F5DD50(&qword_27EDC0720, &qword_27EDC0728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3FA0);
  }

  return result;
}

unint64_t sub_2440343F0()
{
  result = qword_27EDC3FA8;
  if (!qword_27EDC3FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3F20);
    sub_243F5DD50(&qword_27EDC3FB0, &qword_27EDC3FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3FA8);
  }

  return result;
}

unint64_t sub_2440344F0()
{
  result = qword_27EDC3FD0;
  if (!qword_27EDC3FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3F60);
    sub_243F5DD50(&qword_27EDC3FD8, &qword_27EDC3FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3FD0);
  }

  return result;
}

unint64_t sub_2440345A8()
{
  result = qword_27EDC3FE8;
  if (!qword_27EDC3FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3FE8);
  }

  return result;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24403461C()
{
  result = qword_27EDC4068;
  if (!qword_27EDC4068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4060);
    sub_243FA83C0();
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4068);
  }

  return result;
}

uint64_t sub_2440346DC()
{
  type metadata accessor for BottomErrorView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  return sub_2440D1E50();
}

unint64_t sub_244034774()
{
  result = qword_27EDC4078;
  if (!qword_27EDC4078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0258);
    sub_244034B6C(&qword_27EDC4070, &qword_27EDC4028, &unk_2440E17B0, sub_24403461C);
    sub_243F67D98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4078);
  }

  return result;
}

unint64_t sub_24403489C()
{
  result = qword_27EDC4088;
  if (!qword_27EDC4088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4080);
    sub_244034954();
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4088);
  }

  return result;
}

unint64_t sub_244034954()
{
  result = qword_27EDC4090;
  if (!qword_27EDC4090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4098);
    sub_244034A0C();
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4090);
  }

  return result;
}

unint64_t sub_244034A0C()
{
  result = qword_27EDC40A0;
  if (!qword_27EDC40A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC40A8);
    sub_244034A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC40A0);
  }

  return result;
}

unint64_t sub_244034A98()
{
  result = qword_27EDC40B0;
  if (!qword_27EDC40B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC40B8);
    sub_243F7C83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC40B0);
  }

  return result;
}

uint64_t sub_244034B24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_244034B6C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_244034B24(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for BottomErrorView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  if (*(v2 + 8))
  {
  }

  v3 = v2 + *(v1 + 28);
  v4 = sub_2440D1F00();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);

  return swift_deallocObject();
}

unint64_t sub_244034E28()
{
  result = qword_27EDC40D0;
  if (!qword_27EDC40D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC40C8);
    sub_24402F678();
    sub_243F5DD50(&qword_27EDC2DD0, &qword_27EDC2DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC40D0);
  }

  return result;
}

uint64_t sub_244034EE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3FF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_244034F50()
{
  result = qword_27EDC40D8;
  if (!qword_27EDC40D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4000);
    sub_244034B6C(&qword_27EDC40E0, &qword_27EDC3FF8, &unk_2440E1778, sub_244034E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC40D8);
  }

  return result;
}

uint64_t sub_244035008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_244035078()
{
  result = qword_27EDC4118;
  if (!qword_27EDC4118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4110);
    sub_244035130();
    sub_243F5DD50(&qword_27EDC00A8, &qword_27EDC00B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4118);
  }

  return result;
}

unint64_t sub_244035130()
{
  result = qword_27EDC4120;
  if (!qword_27EDC4120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4128);
    sub_243F6194C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4120);
  }

  return result;
}

unint64_t sub_2440351BC()
{
  result = qword_27EDC4158;
  if (!qword_27EDC4158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4100);
    sub_244035248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4158);
  }

  return result;
}

unint64_t sub_244035248()
{
  result = qword_27EDC4160;
  if (!qword_27EDC4160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4150);
    sub_2440352D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4160);
  }

  return result;
}

unint64_t sub_2440352D4()
{
  result = qword_27EDC4168;
  if (!qword_27EDC4168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4148);
    sub_24403538C();
    sub_243F5DD50(&qword_27EDC1D08, &qword_27EDC1D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4168);
  }

  return result;
}

unint64_t sub_24403538C()
{
  result = qword_27EDC4170;
  if (!qword_27EDC4170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4140);
    sub_244035444();
    sub_243F5DD50(&qword_27EDC0720, &qword_27EDC0728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4170);
  }

  return result;
}

unint64_t sub_244035444()
{
  result = qword_27EDC4178;
  if (!qword_27EDC4178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4138);
    sub_2440354D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4178);
  }

  return result;
}

unint64_t sub_2440354D0()
{
  result = qword_27EDC4180;
  if (!qword_27EDC4180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4110);
    sub_244035078();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4180);
  }

  return result;
}

uint64_t sub_244035600(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      sub_243F5D774(v2, v5);
      v3 = v6;
      v4 = v7;
      __swift_project_boxed_opaque_existential_1(v5, v6);
      (*(v4 + 8))(v3, v4);
      result = __swift_destroy_boxed_opaque_existential_0(v5);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_244035690(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      sub_243F5D774(v2, v5);
      v3 = v6;
      v4 = v7;
      __swift_project_boxed_opaque_existential_1(v5, v6);
      (*(v4 + 16))(v3, v4);
      result = __swift_destroy_boxed_opaque_existential_0(v5);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t type metadata accessor for RegistrationNotStartedDescription()
{
  result = qword_27EDCFA80;
  if (!qword_27EDCFA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24403576C@<X0>(uint64_t a1@<X8>)
{
  v201 = a1;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4188);
  v1 = MEMORY[0x28223BE20](v229);
  v194 = &v192 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v202 = &v192 - v3;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4190);
  v4 = MEMORY[0x28223BE20](v230);
  v197 = &v192 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v204 = &v192 - v6;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4198);
  v7 = MEMORY[0x28223BE20](v231);
  v195 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v203 = &v192 - v9;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC41A0);
  v10 = MEMORY[0x28223BE20](v232);
  v196 = &v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v205 = &v192 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC41A8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v200 = &v192 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v199 = &v192 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v198 = &v192 - v19;
  MEMORY[0x28223BE20](v18);
  v233 = &v192 - v20;
  v21 = type metadata accessor for RegistrationNotStartedDescription();
  v22 = *(v21 - 8);
  v224 = v21;
  v225 = v22;
  MEMORY[0x28223BE20](v21);
  v226 = v23;
  v227 = &v192 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0010);
  MEMORY[0x28223BE20](v241);
  v242 = &v192 - v24;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC41B0);
  v210 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v207 = &v192 - v25;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC41B8);
  MEMORY[0x28223BE20](v206);
  v211 = &v192 - v26;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC41C0);
  MEMORY[0x28223BE20](v208);
  v212 = &v192 - v27;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC41C8);
  MEMORY[0x28223BE20](v209);
  v215 = &v192 - v28;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC41D0);
  MEMORY[0x28223BE20](v214);
  v216 = &v192 - v29;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC41D8);
  MEMORY[0x28223BE20](v217);
  v218 = &v192 - v30;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC41E0);
  v220 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v219 = &v192 - v31;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC41E8);
  MEMORY[0x28223BE20](v222);
  v221 = &v192 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC41F0);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v193 = &v192 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v240 = &v192 - v36;
  sub_24401FBC0();
  v37 = sub_24401FBD4();
  v39 = v38;
  v41 = v40;
  sub_2440D21B0();
  v42 = sub_2440D22A0();
  v44 = v43;
  v46 = v45;
  sub_243F62C68(v37, v39, v41 & 1);

  sub_2440D21D0();
  v47 = sub_2440D22E0();
  v49 = v48;
  LOBYTE(v39) = v50;
  v52 = v51;

  sub_243F62C68(v42, v44, v46 & 1);

  *&v257 = v47;
  *(&v257 + 1) = v49;
  v53 = v39 & 1;
  LOBYTE(v258) = v53;
  *(&v258 + 1) = v52;
  v54 = *MEMORY[0x277CDF988];
  v55 = sub_2440D1770();
  v56 = *(v55 - 8);
  v57 = *(v56 + 104);
  v237 = v54;
  v235 = v56 + 104;
  v236 = v57;
  v57(v242, v54, v55);
  v58 = sub_244037EC4(&qword_27EDC00D8, MEMORY[0x277CDFA28]);
  v238 = v55;
  v234 = v58;
  result = sub_2440D2F50();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v60 = sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
  v61 = v207;
  v62 = v242;
  v228 = v60;
  sub_2440D2420();
  sub_243F5EED4(v62, &qword_27EDC0010);
  sub_243F62C68(v47, v49, v53);

  sub_2440D2B10();
  sub_2440D18E0();
  v63 = v211;
  (*(v210 + 32))(v211, v61, v213);
  v64 = (v63 + *(v206 + 36));
  v65 = v248;
  v64[4] = v247;
  v64[5] = v65;
  v64[6] = v249;
  v66 = v244;
  *v64 = v243;
  v64[1] = v66;
  v67 = v246;
  v64[2] = v245;
  v64[3] = v67;
  KeyPath = swift_getKeyPath();
  v69 = v212;
  sub_243F681C8(v63, v212, &qword_27EDC41B8);
  v70 = v69 + *(v208 + 36);
  *v70 = KeyPath;
  *(v70 + 8) = 0;
  v71 = *sub_243FFAE40();
  v72 = swift_getKeyPath();
  v73 = v69;
  v74 = v215;
  sub_243F681C8(v73, v215, &qword_27EDC41C0);
  v75 = (v74 + *(v209 + 36));
  *v75 = v72;
  v75[1] = v71;

  LOBYTE(v71) = sub_2440D20C0();
  sub_2440D13D0();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = v216;
  sub_243F681C8(v74, v216, &qword_27EDC41C8);
  v85 = v84 + *(v214 + 36);
  *v85 = v71;
  *(v85 + 8) = v77;
  *(v85 + 16) = v79;
  *(v85 + 24) = v81;
  *(v85 + 32) = v83;
  *(v85 + 40) = 0;
  LOBYTE(v71) = sub_2440D20D0();
  sub_2440707C0();
  sub_2440D13D0();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v218;
  sub_243F681C8(v84, v218, &qword_27EDC41D0);
  v95 = v94 + *(v217 + 36);
  *v95 = v71;
  *(v95 + 8) = v87;
  *(v95 + 16) = v89;
  *(v95 + 24) = v91;
  *(v95 + 32) = v93;
  *(v95 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
  v96 = v239;
  sub_2440D1E60();
  LOBYTE(v250) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC00F0);
  sub_244037188();
  sub_243F619D0();
  v97 = v219;
  sub_2440D24A0();

  sub_243F5EED4(v94, &qword_27EDC41D8);
  v98 = v227;
  sub_244037544(v96, v227);
  v99 = (*(v225 + 80) + 16) & ~*(v225 + 80);
  v100 = swift_allocObject();
  sub_2440375AC(v98, v100 + v99);
  v101 = v221;
  (*(v220 + 32))(v221, v97, v223);
  v102 = (v101 + *(v222 + 36));
  *v102 = sub_244037610;
  v102[1] = v100;
  sub_244037670();
  v102[2] = 0;
  v102[3] = 0;
  sub_2440D24E0();
  sub_243F5EED4(v101, &qword_27EDC41E8);
  sub_24401FBC0();
  v103 = sub_24401FBD4();
  v105 = v104;
  LOBYTE(v97) = v106;
  sub_2440D21D0();
  v107 = sub_2440D22E0();
  v109 = v108;
  v111 = v110;
  v113 = v112;

  sub_243F62C68(v103, v105, v97 & 1);

  *&v257 = v107;
  *(&v257 + 1) = v109;
  LOBYTE(v258) = v111 & 1;
  *(&v258 + 1) = v113;
  v236(v242, v237, v238);
  result = sub_2440D2F50();
  if ((result & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v114 = v202;
  v115 = v242;
  sub_2440D2420();
  sub_243F5EED4(v115, &qword_27EDC0010);
  sub_243F62C68(v107, v109, v111 & 1);

  v226 = sub_243FFAEE0();
  v116 = *v226;
  v117 = swift_getKeyPath();
  v118 = &v114[*(v229 + 36)];
  *v118 = v117;
  v118[1] = v116;

  sub_2440D2B10();
  sub_2440D18E0();
  v119 = v114;
  v120 = v204;
  sub_243F681C8(v119, v204, &qword_27EDC4188);
  v121 = (v120 + *(v230 + 36));
  v122 = v255;
  v121[4] = v254;
  v121[5] = v122;
  v121[6] = v256;
  v123 = v251;
  *v121 = v250;
  v121[1] = v123;
  v124 = v253;
  v121[2] = v252;
  v121[3] = v124;
  v125 = swift_getKeyPath();
  v126 = v120;
  v127 = v203;
  sub_243F681C8(v126, v203, &qword_27EDC4190);
  v128 = v127 + *(v231 + 36);
  *v128 = v125;
  *(v128 + 8) = 0;
  LOBYTE(v125) = sub_2440D20D0();
  sub_2440D13D0();
  v130 = v129;
  v132 = v131;
  v134 = v133;
  v136 = v135;
  v137 = v127;
  v138 = v205;
  sub_243F681C8(v137, v205, &qword_27EDC4198);
  v139 = v138 + *(v232 + 36);
  *v139 = v125;
  *(v139 + 8) = v130;
  *(v139 + 16) = v132;
  *(v139 + 24) = v134;
  *(v139 + 32) = v136;
  *(v139 + 40) = 0;
  v227 = sub_244037764();
  sub_2440D24E0();
  sub_243F5EED4(v138, &qword_27EDC41A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160);
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_2440D5CF0;
  type metadata accessor for RegistrationViewModel();
  sub_244037EC4(&qword_27EDC3B80, type metadata accessor for RegistrationViewModel);
  v141 = sub_2440D1490();
  v142 = (*(*v141 + 240))(v141);
  v144 = v143;

  *(v140 + 32) = v142;
  *(v140 + 40) = v144;
  v145 = sub_243F4E2FC();
  v147 = sub_24401FC70(0xD000000000000019, 0x80000002440ED6D0, v145, v146, v140);
  v149 = v148;
  v151 = v150;
  sub_2440D21D0();
  v152 = sub_2440D22E0();
  v154 = v153;
  v156 = v155;
  v158 = v157;

  sub_243F62C68(v147, v149, v151 & 1);

  *&v257 = v152;
  *(&v257 + 1) = v154;
  LOBYTE(v258) = v156 & 1;
  *(&v258 + 1) = v158;
  v236(v242, v237, v238);
  result = sub_2440D2F50();
  if (result)
  {
    v159 = v194;
    v160 = v242;
    sub_2440D2420();
    sub_243F5EED4(v160, &qword_27EDC0010);
    sub_243F62C68(v152, v154, v156 & 1);

    v161 = *v226;
    v162 = swift_getKeyPath();
    v163 = &v159[*(v229 + 36)];
    *v163 = v162;
    v163[1] = v161;

    sub_2440D2B10();
    sub_2440D18E0();
    v164 = v159;
    v165 = v197;
    sub_243F681C8(v164, v197, &qword_27EDC4188);
    v166 = (v165 + *(v230 + 36));
    v167 = v262;
    v166[4] = v261;
    v166[5] = v167;
    v166[6] = v263;
    v168 = v258;
    *v166 = v257;
    v166[1] = v168;
    v169 = v260;
    v166[2] = v259;
    v166[3] = v169;
    v170 = swift_getKeyPath();
    v171 = v165;
    v172 = v195;
    sub_243F681C8(v171, v195, &qword_27EDC4190);
    v173 = v172 + *(v231 + 36);
    *v173 = v170;
    *(v173 + 8) = 0;
    LOBYTE(v170) = sub_2440D20D0();
    sub_2440D13D0();
    v175 = v174;
    v177 = v176;
    v179 = v178;
    v181 = v180;
    v182 = v172;
    v183 = v196;
    sub_243F681C8(v182, v196, &qword_27EDC4198);
    v184 = v183 + *(v232 + 36);
    *v184 = v170;
    *(v184 + 8) = v175;
    *(v184 + 16) = v177;
    *(v184 + 24) = v179;
    *(v184 + 32) = v181;
    *(v184 + 40) = 0;
    v185 = v198;
    sub_2440D24E0();
    sub_243F5EED4(v183, &qword_27EDC41A0);
    v186 = v193;
    sub_243F5F574(v240, v193, &qword_27EDC41F0);
    v187 = v233;
    v188 = v199;
    sub_243F5F574(v233, v199, &qword_27EDC41A8);
    v189 = v200;
    sub_243F5F574(v185, v200, &qword_27EDC41A8);
    v190 = v201;
    sub_243F5F574(v186, v201, &qword_27EDC41F0);
    v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4248);
    sub_243F5F574(v188, v190 + *(v191 + 48), &qword_27EDC41A8);
    sub_243F5F574(v189, v190 + *(v191 + 64), &qword_27EDC41A8);
    sub_243F5EED4(v185, &qword_27EDC41A8);
    sub_243F5EED4(v187, &qword_27EDC41A8);
    sub_243F5EED4(v240, &qword_27EDC41F0);
    sub_243F5EED4(v189, &qword_27EDC41A8);
    sub_243F5EED4(v188, &qword_27EDC41A8);
    return sub_243F5EED4(v186, &qword_27EDC41F0);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_244036CD0(uint64_t a1)
{
  v24 = a1;
  v26 = sub_2440D2C80();
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2440D2CA0();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RegistrationNotStartedDescription();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_2440D2CD0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  sub_243F5DB84();
  v23 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v25 = *(v10 + 8);
  v25(v13, v9);
  sub_244037544(v24, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_2440375AC(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_244037DD4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_24;
  v18 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_244037EC4(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v19 = v26;
  sub_2440D3710();
  v20 = v23;
  MEMORY[0x245D57400](v15, v5, v2, v18);
  _Block_release(v18);

  (*(v29 + 8))(v2, v19);
  (*(v27 + 8))(v5, v28);
  return (v25)(v15, v9);
}

uint64_t sub_24403712C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = 0;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  v8 = a7 + *(type metadata accessor for RegistrationNotStartedDescription() + 24);

  return sub_243F620B0(a6, v8);
}

unint64_t sub_244037188()
{
  result = qword_27EDC41F8;
  if (!qword_27EDC41F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC41D8);
    sub_244037214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC41F8);
  }

  return result;
}

unint64_t sub_244037214()
{
  result = qword_27EDC4200;
  if (!qword_27EDC4200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC41D0);
    sub_2440372A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4200);
  }

  return result;
}

unint64_t sub_2440372A0()
{
  result = qword_27EDC4208;
  if (!qword_27EDC4208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC41C8);
    sub_244037384(&qword_27EDC4210, &qword_27EDC41C0, &unk_2440E19C0, sub_244037434);
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4208);
  }

  return result;
}

uint64_t sub_244037384(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_244037434()
{
  result = qword_27EDC4218;
  if (!qword_27EDC4218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC41B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0010);
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4218);
  }

  return result;
}

uint64_t sub_244037544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegistrationNotStartedDescription();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2440375AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegistrationNotStartedDescription();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_244037610()
{
  v1 = *(type metadata accessor for RegistrationNotStartedDescription() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_244036CD0(v2);
}

unint64_t sub_244037670()
{
  result = qword_27EDC4220;
  if (!qword_27EDC4220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC41E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC41D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC00F0);
    sub_244037188();
    sub_243F619D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4220);
  }

  return result;
}

unint64_t sub_244037764()
{
  result = qword_27EDC4228;
  if (!qword_27EDC4228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC41A0);
    sub_244037384(&qword_27EDC4230, &qword_27EDC4198, &unk_2440E1990, sub_24403781C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4228);
  }

  return result;
}

unint64_t sub_24403781C()
{
  result = qword_27EDC4238;
  if (!qword_27EDC4238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4190);
    sub_2440378A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4238);
  }

  return result;
}

unint64_t sub_2440378A8()
{
  result = qword_27EDC4240;
  if (!qword_27EDC4240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0010);
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4240);
  }

  return result;
}

uint64_t sub_244037A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_244037AE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_244037B94()
{
  sub_24402E130();
  if (v0 <= 0x3F)
  {
    sub_243F624A0();
    if (v1 <= 0x3F)
    {
      sub_243F624F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t objectdestroyTm_21()
{
  v1 = (type metadata accessor for RegistrationNotStartedDescription() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2440191EC();

  v3 = v2 + v1[8];
  v4 = sub_2440D1F00();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);

  return swift_deallocObject();
}

uint64_t sub_244037DD4()
{
  type metadata accessor for RegistrationNotStartedDescription();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
  sub_2440D1E50();
  UIAccessibilityPostNotification(*MEMORY[0x277D764D8], 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8);
  return sub_2440D2950();
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_244037EC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_244037F10(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = sub_243F4DFA8();
  sub_243F4DE64(v11, v10);
  v12 = sub_2440D11E0();
  v13 = *(v12 - 8);
  v28 = *(v13 + 48);
  if (v28(v10, 1, v12) == 1)
  {
    sub_243F5FAB0(v10);
  }

  else
  {
    v26 = v11;
    v27 = v13;
    v29 = 0x20746C75736572;
    v30 = 0xE700000000000000;
    v14 = v2;
    MEMORY[0x245D57000](a1, a2);
    v15 = v29;
    v16 = v30;
    v17 = sub_243F4E2F4();
    v13 = v27;
    sub_243F4E308(v17 & 1, v14, 0xD00000000000001ALL, 0x80000002440ED710, v15, v16);
    v11 = v26;

    (*(v13 + 8))(v10, v12);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = sub_2440D2F80();
    [v19 notifyRegUIResultWithResult_];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243F4DE64(v11, v8);
    if (v28(v8, 1, v12) == 1)
    {
      sub_243F5FAB0(v8);
    }

    else
    {
      v21 = v13;
      v22 = sub_2440D11C0();
      v23 = sub_2440D3470();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_243F48000, v22, v23, "Lost weak UI reference", v24, 2u);
        MEMORY[0x245D58570](v24, -1, -1);
      }

      (*(v21 + 8))(v8, v12);
    }
  }
}

uint64_t sub_24403826C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = sub_243F4DFA8();
  sub_243F4DE64(v8, v7);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    sub_243F5FAB0(v7);
  }

  else
  {
    v12 = sub_243F4E2F4();
    v13 = sub_243F4E2FC();
    sub_243F4E308(v12 & 1, v1, 0x28495565736F6C63, 0xE900000000000029, v13, v14);

    (*(v10 + 8))(v7, v9);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong closeUI];
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_243F4DE64(v8, v5);
    if (v11(v5, 1, v9) == 1)
    {
      return sub_243F5FAB0(v5);
    }

    else
    {
      v17 = sub_2440D11C0();
      v18 = sub_2440D3470();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_243F48000, v17, v18, "Lost weak UI reference", v19, 2u);
        MEMORY[0x245D58570](v19, -1, -1);
      }

      return (*(v10 + 8))(v5, v9);
    }
  }
}

uint64_t sub_2440384F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = sub_243F4DFA8();
  sub_243F4DE64(v8, v7);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    sub_243F5FAB0(v7);
  }

  else
  {
    v12 = v8;
    v13 = v1;
    v14 = v10;
    v15 = sub_243F4E2F4();
    v16 = sub_243F4E2FC();
    v26 = v11;
    v17 = v15 & 1;
    v10 = v14;
    v18 = v13;
    v8 = v12;
    sub_243F4E308(v17, v18, 0xD000000000000012, 0x80000002440ED730, v16, v19);
    v11 = v26;

    (*(v10 + 8))(v7, v9);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong closeUIImmediate];
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_243F4DE64(v8, v5);
    if (v11(v5, 1, v9) == 1)
    {
      return sub_243F5FAB0(v5);
    }

    else
    {
      v22 = sub_2440D11C0();
      v23 = sub_2440D3470();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_243F48000, v22, v23, "Lost weak UI reference", v24, 2u);
        MEMORY[0x245D58570](v24, -1, -1);
      }

      return (*(v10 + 8))(v5, v9);
    }
  }
}

uint64_t sub_2440387A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_244038810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v105 = a4;
  v5 = sub_2440D08A0();
  MEMORY[0x28223BE20](v5 - 8);
  v106 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4260);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v100 - v8;
  v10 = sub_2440D0EE0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v108 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_2440D0B50();
  v115 = *(v112 - 8);
  v13 = MEMORY[0x28223BE20](v112);
  v104 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v103 = &v100 - v16;
  MEMORY[0x28223BE20](v15);
  v111 = &v100 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v100 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v100 - v25;
  v27 = sub_243F4E07C();
  sub_243F4DE64(v27, v26);
  v28 = sub_2440D11E0();
  v29 = *(v28 - 8);
  v113 = *(v29 + 48);
  v114 = v29 + 48;
  v30 = v113(v26, 1, v28);
  v107 = v9;
  if (v30 == 1)
  {
    result = sub_243F5EED4(v26, &qword_27EDC0A50);
  }

  else
  {
    v110 = a1;
    v32 = v11;
    v33 = v24;
    v34 = v29;
    v35 = v28;
    v36 = sub_243F4E2F4();
    v37 = sub_243F4E2FC();
    v38 = v36 & 1;
    v28 = v35;
    v29 = v34;
    v24 = v33;
    v11 = v32;
    a1 = v110;
    sub_243F4E308(v38, v116, 0xD000000000000021, 0x80000002440EB4B0, v37, v39);

    result = (*(v29 + 8))(v26, v28);
  }

  v40 = *(v116 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_viewModel);
  if (v40)
  {
    v102 = v10;
    v109 = v28;
    if (!a1)
    {
      __break(1u);
      return result;
    }

    v41 = *MEMORY[0x277D43758];
    v42 = v115;
    v43 = v111;
    v44 = v112;
    v101 = *(v115 + 104);
    v101(v111, v41, v112);
    v110 = v40;

    v45 = sub_2440D0B40();
    v47 = v46;
    v48 = *(v42 + 8);
    v115 = v42 + 8;
    v111 = v48;
    (v48)(v43, v44);
    if (!*(a1 + 16))
    {

      goto LABEL_14;
    }

    v49 = v11;
    v50 = sub_243FB03FC(v45, v47);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      goto LABEL_14;
    }

    sub_243F4F028(*(a1 + 56) + 32 * v50, v119);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_14;
    }

    v53 = v117;
    v54 = v118;
    sub_24403AB74(&qword_27EDC4270, MEMORY[0x277D439D0]);
    v55 = v107;
    v56 = v102;
    sub_244058714(0, v53, v54, v102, v107);
    if ((*(v49 + 48))(v55, 1, v56) == 1)
    {
      sub_243F5D81C(v53, v54);
      sub_243F5EED4(v55, &qword_27EDC4260);
LABEL_14:
      v59 = sub_243F4E22C();
      sub_243F4DE64(v59, v24);
      v60 = v109;
      if (v113(v24, 1, v109) == 1)
      {

        v58 = v24;
        return sub_243F5EED4(v58, &qword_27EDC0A50);
      }

      v61 = sub_2440D11C0();
      v62 = sub_2440D3470();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = v29;
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_243F48000, v61, v62, "Unable to fetch identity request details", v64, 2u);
        v65 = v64;
        v29 = v63;
        MEMORY[0x245D58570](v65, -1, -1);
      }

      return (*(v29 + 8))(v24, v60);
    }

    v113 = v54;
    v114 = v53;
    (*(v49 + 32))(v108, v55, v56);
    v70 = v103;
    v71 = v112;
    v101(v103, *MEMORY[0x277D43740], v112);
    v72 = sub_2440D0B40();
    v74 = v73;
    (v111)(v70, v71);
    v75 = *(a1 + 16);
    v100 = v49;
    if (v75)
    {
      v76 = sub_243FB03FC(v72, v74);
      v78 = v77;

      if (v78)
      {
        sub_243F4F028(*(a1 + 56) + 32 * v76, v119);
        if (swift_dynamicCast())
        {
          LODWORD(v109) = v117;
          goto LABEL_29;
        }
      }
    }

    else
    {
    }

    LODWORD(v109) = 0;
LABEL_29:
    v79 = v104;
    v80 = v112;
    v101(v104, *MEMORY[0x277D43748], v112);
    v81 = sub_2440D0B40();
    v83 = v82;
    (v111)(v79, v80);
    if (*(a1 + 16))
    {
      v84 = sub_243FB03FC(v81, v83);
      v86 = v85;

      if (v86)
      {
        sub_243F4F028(*(a1 + 56) + 32 * v84, v119);
        if (swift_dynamicCast())
        {
          v87 = v56;
          v88 = v117;
LABEL_35:
          v89 = v110;
          (*(*v110 + 1368))(v105);
          v90 = v108;
          (*(*v89 + 1360))(v108, v88);
          v91 = sub_243FA9620();
          swift_beginAccess();
          v92 = *v91;
          v93 = *(*v92 + 464);

          v94 = v116;
          v93(v116);
          v95 = v106;
          sub_2440D0800();
          (*(*v92 + 336))(v95);
          v96 = *(*v92 + 480);

          v96(sub_24403A9F0, v89);

          v97 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v98 = *(*v92 + 472);

          v98(&unk_2440E1B38, v97);

          (*((*MEMORY[0x277D85000] & **(v94 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_interruptionMonitor)) + 0xF0))(v99);
          sub_2440396D0(v109);
          (*(*v89 + 1376))();
          sub_243F5D81C(v114, v113);

          return (*(v100 + 8))(v90, v87);
        }
      }
    }

    else
    {
    }

    v87 = v56;
    v88 = sub_2440D1130();
    goto LABEL_35;
  }

  v57 = sub_243F4E22C();
  sub_243F4DE64(v57, v21);
  if (v113(v21, 1, v28) == 1)
  {
    v58 = v21;
    return sub_243F5EED4(v58, &qword_27EDC0A50);
  }

  v66 = v29;
  v67 = sub_2440D11C0();
  v68 = sub_2440D3470();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_243F48000, v67, v68, "View Model unavailable, unable to configure Identity UI", v69, 2u);
    MEMORY[0x245D58570](v69, -1, -1);
  }

  return (*(v66 + 8))(v21, v28);
}

uint64_t sub_244039414(uint64_t a1)
{
  v1[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v1[6] = swift_task_alloc();
  sub_2440D3360();
  v1[7] = sub_2440D3350();
  v3 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_2440394E4, v3, v2);
}

uint64_t sub_2440394E4()
{
  v1 = *(v0 + 48);

  v2 = sub_243F4E22C();
  sub_243F4DE64(v2, v1);
  v3 = sub_2440D11E0();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_243F5EED4(*(v0 + 48), &qword_27EDC0A50);
  }

  else
  {
    v5 = sub_2440D11C0();
    v6 = sub_2440D3460();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_243F48000, v5, v6, "Handling home button press, dismissing UI", v7, 2u);
      MEMORY[0x245D58570](v7, -1, -1);
    }

    v8 = *(v0 + 48);

    (*(v4 + 8))(v8, v3);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_viewModel);
    v11 = Strong;

    [v10 closeUI];
  }

  v12 = *(v0 + 8);

  return v12(1);
}

void sub_2440396D0(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = sub_243F4E07C();
  sub_243F4DE64(v10, v9);
  v11 = sub_2440D11E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    sub_243F5EED4(v9, &qword_27EDC0A50);
  }

  else
  {
    v42 = v11;
    v14 = sub_243F4E2F4();
    v15 = sub_243F4E2FC();
    v11 = v42;
    sub_243F4E308(v14 & 1, v2, 0xD000000000000020, 0x80000002440ED800, v15, v16);

    (*(v12 + 8))(v9, v11);
  }

  if (*(v2 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_viewModel))
  {
    v17 = *((*MEMORY[0x277D85000] & *v2) + 0x158);

    v17(v18);
    type metadata accessor for IdentityHostingController();

    sub_243F5F648(v19, a1 & 1);
    v21 = v20;
    v22 = [v21 view];
    if (v22)
    {
      v23 = v22;
      v24 = [v2 view];
      if (v24)
      {
        v25 = v24;
        [v24 frame];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;

        [v23 setFrame_];
        v34 = [v2 view];
        if (v34)
        {
          v35 = v34;
          v36 = [v21 view];

          if (v36)
          {
            [v35 addSubview_];

            [v2 addChildViewController_];
            [v21 didMoveToParentViewController_];

            return;
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  v37 = sub_243F4E22C();
  sub_243F4DE64(v37, v7);
  if (v13(v7, 1, v11) == 1)
  {
    sub_243F5EED4(v7, &qword_27EDC0A50);
  }

  else
  {
    v38 = sub_2440D11C0();
    v39 = sub_2440D3470();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_243F48000, v38, v39, "View Model unavailable, could not display IdentityView", v40, 2u);
      MEMORY[0x245D58570](v40, -1, -1);
    }

    (*(v12 + 8))(v7, v11);
  }
}

void sub_244039B14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_243F4E07C();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0x656E6E6F63736964, 0xEE00292864657463, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  v11 = OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_viewModel;
  v12 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_viewModel);
  if (v12)
  {
    v13 = *(*v12 + 1488);

    v13(v14);

    v15 = *(v1 + v11);
    if (v15)
    {
      v16 = *(*v15 + 1480);

      v16(v17);
    }
  }

  *(v1 + v11) = 0;

  sub_2440245DC();
}

uint64_t sub_244039D28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF50);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_243F4E07C();
  sub_243F4DE64(v11, v10);
  v12 = sub_2440D11E0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_243F5EED4(v10, &qword_27EDC0A50);
  }

  else
  {
    v14 = sub_243F4E2F4();
    v15 = sub_243F4E2FC();
    sub_243F4E308(v14 & 1, v1, 0x6E69427075746573, 0xEF292873676E6964, v15, v16);

    (*(v13 + 8))(v10, v12);
  }

  type metadata accessor for IdentityViewModel();
  v17 = sub_24400C3C4();
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_viewModel) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC27D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2440DD050;
  (*((*MEMORY[0x277D85000] & **(v1 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_interruptionMonitor)) + 0xD0))();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_243FDECD0(&qword_27EDBFF60, &qword_27EDBFF50);
  v19 = sub_2440D1370();

  v20 = (*(v28 + 8))(v7, v5);
  *(inited + 32) = v19;
  (*(*v17 + 392))(v20);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_243FDECD0(&qword_27EDC27E8, &qword_27EDBFF00);
  v21 = sub_2440D1370();

  v22 = *(v29 + 8);
  v23 = v22(v4, v2);
  *(inited + 40) = v21;
  (*(*v17 + 440))(v23);
  v24 = sub_2440D1370();
  v22(v4, v2);
  *(inited + 48) = v24;
  v25 = sub_243FDEEB0(inited);

  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_subscriptions) = v25;
}

uint64_t sub_24403A264(char *a1)
{
  v1 = *a1;
  sub_2440D1180();
  *(swift_allocObject() + 16) = v1;
  sub_2440D1160();
}

void sub_24403A2E4(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4E22C();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_2440D11C0();
    v9 = sub_2440D3460();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = a1 & 1;
      _os_log_impl(&dword_243F48000, v8, v9, "Controller binding - disable sleep: %{BOOL}d", v10, 8u);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v11 = [objc_opt_self() sharedApplication];
  [v11 setIdleTimerDisabled_];
}

uint64_t sub_24403A4BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4E07C();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0xD000000000000010, 0x80000002440EB4E0, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_subscriptions) = MEMORY[0x277D84FA0];
}

id IdentityRemoteSceneController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2440D2F80();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id IdentityRemoteSceneController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_viewModel] = 0;
  v7 = OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_interruptionMonitor;
  type metadata accessor for InterruptionMonitor();
  *&v3[v7] = sub_243F8EB98(0, 0);
  *&v3[OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_subscriptions] = MEMORY[0x277D84FA0];
  if (a2)
  {
    v8 = sub_2440D2F80();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for IdentityRemoteSceneController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id IdentityRemoteSceneController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id IdentityRemoteSceneController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_viewModel] = 0;
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_interruptionMonitor;
  type metadata accessor for InterruptionMonitor();
  *&v1[v3] = sub_243F8EB98(0, 0);
  *&v1[OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRemoteSceneController_subscriptions] = MEMORY[0x277D84FA0];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for IdentityRemoteSceneController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_24403A910()
{
}

id IdentityRemoteSceneController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityRemoteSceneController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24403AA00()
{
  MEMORY[0x245D58620](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24403AA38()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5DA80;

  return sub_244039414(v0);
}

void sub_24403AAC8(_BYTE *a1)
{
  if (*a1 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_24403AB74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24403ABD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2440D1AF0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3B88);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for IdentityRegistrationSheet();
  sub_243F5F574(v1 + *(v10 + 20), v9, &qword_27EDC3B88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2440D1630();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2440D3480();
    v13 = sub_2440D2070();
    sub_2440D11B0();

    sub_2440D1AE0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for IdentityRegistrationSheet()
{
  result = qword_27EDCFC20;
  if (!qword_27EDCFC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24403AE28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16 = a1;
  v3 = type metadata accessor for IdentityRegistrationSheet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_24403B104(v1, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v15[1] = v7;
  sub_244044BF8(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for IdentityRegistrationSheet);
  v8 = *sub_243FFAF58();
  v15[0] = v8;

  v9 = sub_2440D20B0();
  v18 = sub_24403B16C;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  type metadata accessor for IdentityRegistrationViewModel();
  sub_244045650(&qword_27EDC4288, type metadata accessor for IdentityRegistrationViewModel);
  sub_2440D1490();
  LOBYTE(v7) = sub_243FA1B68();

  v17 = v7 & 1;
  sub_24403B104(v2, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  sub_244044BF8(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v6, type metadata accessor for IdentityRegistrationSheet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4290);
  sub_244042450();
  v11 = v16;
  sub_2440D25D0();

  sub_24403B104(v2, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_244044BF8(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v6, type metadata accessor for IdentityRegistrationSheet);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC42B0);
  v14 = (v11 + *(result + 36));
  *v14 = 0;
  v14[1] = 0;
  v14[2] = sub_244042534;
  v14[3] = v12;
  return result;
}

uint64_t sub_24403B104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityRegistrationSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24403B16C()
{
  type metadata accessor for IdentityRegistrationSheet();
  sub_2440D1650();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4368);
  sub_24404414C();
  return sub_2440D1820();
}

uint64_t sub_24403B23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v90 = a2;
  v108 = a3;
  v109 = a1;
  v97 = type metadata accessor for IdentityRegistrationSheet();
  v107 = *(v97 - 1);
  MEMORY[0x28223BE20](v97);
  v111 = v8;
  v112 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440D1720();
  v88 = *(v9 - 8);
  v89 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v87 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v81 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC43E0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v81 - v16;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC43C8);
  MEMORY[0x28223BE20](v83);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4420);
  v85 = *(v20 - 8);
  v86 = v20;
  MEMORY[0x28223BE20](v20);
  v81 = &v81 - v21;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC43B0);
  MEMORY[0x28223BE20](v84);
  v23 = &v81 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4428);
  v91 = *(v24 - 8);
  v92 = v24;
  MEMORY[0x28223BE20](v24);
  v82 = &v81 - v25;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC43A0);
  MEMORY[0x28223BE20](v94);
  v93 = &v81 - v26;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4390);
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v81 - v27;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4380);
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v110 = &v81 - v28;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4378);
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v81 - v29;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4430);
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v81 - v30;
  sub_2440D2090();
  v115 = a1;
  v116 = a4;
  v117 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4438);
  sub_243F5DD50(&qword_27EDC4440, &qword_27EDC4438);
  sub_2440D13E0();
  *&v17[*(v15 + 44)] = 0x4000000000000000;
  sub_2440D2AE0();
  sub_2440D18E0();
  sub_243F681C8(v17, v19, &qword_27EDC43E0);
  v31 = &v19[*(v83 + 36)];
  v32 = v128;
  *(v31 + 4) = v127;
  *(v31 + 5) = v32;
  *(v31 + 6) = v129;
  v33 = v124;
  *v31 = v123;
  *(v31 + 1) = v33;
  v34 = v126;
  *(v31 + 2) = v125;
  *(v31 + 3) = v34;
  sub_2440445C0();
  v35 = v81;
  sub_2440D2520();
  sub_243F5EED4(v19, &qword_27EDC43C8);
  sub_2440D1710();
  v36 = v88;
  v37 = v89;
  (*(v88 + 16))(v87, v13, v89);
  sub_244045650(&qword_27EDC0C08, MEMORY[0x277CDF858]);
  v38 = v37;
  v39 = sub_2440D1610();
  v40 = v13;
  v41 = v82;
  (*(v36 + 8))(v40, v38);
  (*(v85 + 32))(v23, v35, v86);
  *&v23[*(v84 + 36)] = v39;
  sub_2440D1C30();
  v42 = v109;
  v113 = v109;
  v114 = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC43B8);
  sub_2440444CC();
  sub_244044730();
  sub_2440D23B0();
  sub_243F5EED4(v23, &qword_27EDC43B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2440D66C0;
  LOBYTE(v17) = sub_2440D20C0();
  *(inited + 32) = v17;
  v44 = sub_2440D20D0();
  *(inited + 33) = v44;
  v45 = sub_2440D20F0();
  sub_2440D20F0();
  if (sub_2440D20F0() != v17)
  {
    v45 = sub_2440D20F0();
  }

  sub_2440D20F0();
  if (sub_2440D20F0() != v44)
  {
    v45 = sub_2440D20F0();
  }

  v46 = sub_2440D1860();
  v47 = v93;
  (*(v91 + 32))(v93, v41, v92);
  v48 = v94;
  v49 = v47 + *(v94 + 36);
  *v49 = v46;
  *(v49 + 8) = v45;
  v50 = v42 + *(v97 + 10);
  v51 = *v50;
  v52 = *(v50 + 8);
  LOBYTE(v118) = v51;
  v119 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  v53 = sub_2440443D8();
  v54 = v95;
  sub_2440D24F0();
  v55 = sub_243F5EED4(v47, &qword_27EDC43A0);
  MEMORY[0x28223BE20](v55);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4398);
  v118 = v48;
  v119 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4400);
  v58 = sub_2440447F0();
  v118 = v57;
  v119 = v58;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v98;
  sub_2440D25B0();
  (*(v96 + 8))(v54, v60);
  v61 = *v42;
  v94 = *(v42 + 8);
  v95 = v61;
  LODWORD(v93) = *(v42 + 16);
  v92 = type metadata accessor for IdentityRegistrationViewModel();
  sub_244045650(&qword_27EDC4288, type metadata accessor for IdentityRegistrationViewModel);
  sub_2440D14A0();
  swift_getKeyPath();
  sub_2440D1740();

  LODWORD(v90) = v122;
  v62 = v112;
  sub_24403B104(v42, v112);
  v107 = *(v107 + 80);
  v63 = (v107 + 16) & ~v107;
  v96 = v63;
  v64 = swift_allocObject();
  v97 = type metadata accessor for IdentityRegistrationSheet;
  sub_244044BF8(v62, v64 + v63, type metadata accessor for IdentityRegistrationSheet);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4388);
  v118 = v60;
  v119 = v91;
  v120 = OpaqueTypeConformance2;
  v121 = v59;
  v98 = swift_getOpaqueTypeConformance2();
  v66 = type metadata accessor for IdentityTermsAndConditions();
  v67 = sub_244045650(&qword_27EDC17E8, type metadata accessor for IdentityTermsAndConditions);
  v118 = v66;
  v119 = MEMORY[0x277CE0F78];
  v120 = v67;
  v121 = MEMORY[0x277CE0F60];
  v80 = swift_getOpaqueTypeConformance2();
  v68 = v65;
  v69 = v100;
  v70 = v101;
  v71 = v110;
  sub_2440D2560();

  (*(v99 + 8))(v71, v70);
  sub_2440D14A0();
  swift_getKeyPath();
  sub_2440D1740();

  v118 = v70;
  v119 = v68;
  v120 = v98;
  v121 = v80;
  swift_getOpaqueTypeConformance2();
  v72 = v102;
  v73 = v105;
  sub_2440D2530();

  (*(v103 + 8))(v69, v73);
  v74 = v112;
  sub_24403B104(v109, v112);
  v75 = v96;
  v76 = swift_allocObject();
  sub_244044BF8(v74, v76 + v75, v97);
  v77 = v108;
  (*(v104 + 32))(v108, v72, v106);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4368);
  v79 = (v77 + *(result + 36));
  *v79 = sub_2440449E0;
  v79[1] = v76;
  v79[2] = 0;
  v79[3] = 0;
  return result;
}

uint64_t sub_24403C140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a1;
  v82 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4470);
  v2 = MEMORY[0x28223BE20](v80);
  v81 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v69 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0);
  MEMORY[0x28223BE20](v6 - 8);
  v76 = &v69 - v7;
  v8 = type metadata accessor for AVLoopPlayerView(0);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4478);
  MEMORY[0x28223BE20](v72);
  v11 = &v69 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4480);
  MEMORY[0x28223BE20](v74);
  v13 = &v69 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4488);
  MEMORY[0x28223BE20](v75);
  v15 = &v69 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4490);
  MEMORY[0x28223BE20](v16 - 8);
  v71 = &v69 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4498);
  MEMORY[0x28223BE20](v69);
  v19 = &v69 - v18;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC44A0);
  MEMORY[0x28223BE20](v70);
  v21 = &v69 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC44A8);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v78 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v77 = &v69 - v25;
  v26 = *sub_244056A6C();
  v27 = sub_2440D2F80();
  v28 = sub_2440D2F80();
  v29 = [v26 URLForResource:v27 withExtension:v28];

  if (v29)
  {
    v30 = v76;
    sub_2440D05C0();

    v31 = sub_2440D05F0();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  }

  else
  {
    v32 = sub_2440D05F0();
    v30 = v76;
    (*(*(v32 - 8) + 56))(v76, 1, 1, v32);
  }

  v33 = v73;
  sub_243FC7DF0(v30, v73);
  sub_244044BF8(v33, v11, type metadata accessor for AVLoopPlayerView);
  v34 = &v11[*(v72 + 36)];
  *v34 = 0;
  *(v34 + 4) = 257;
  sub_2440D2B00();
  sub_2440D1560();
  sub_243F681C8(v11, v13, &qword_27EDC4478);
  v35 = &v13[*(v74 + 36)];
  v36 = v84;
  *v35 = v83;
  *(v35 + 1) = v36;
  *(v35 + 2) = v85;
  sub_243F681C8(v13, v15, &qword_27EDC4480);
  *&v15[*(v75 + 36)] = 0;
  sub_244044C60();
  v37 = v71;
  sub_2440D2480();
  sub_243F5EED4(v15, &qword_27EDC4488);
  sub_243F681C8(v37, v19, &qword_27EDC4490);
  v19[*(v69 + 36)] = 0;
  v38 = sub_2440D20C0();
  sub_243F681C8(v19, v21, &qword_27EDC4498);
  v21[*(v70 + 36)] = v38;
  sub_244044E60();
  v39 = v77;
  sub_2440D24E0();
  sub_243F5EED4(v21, &qword_27EDC44A0);
  v40 = type metadata accessor for IdentityRegistrationSheet();
  v41 = v79;
  *v5 = *(v79 + *(v40 + 56));
  *(v5 + 1) = 0;
  v5[16] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC44F0);
  sub_24403C9F8(v41, &v5[*(v42 + 44)]);
  LOBYTE(v41) = sub_2440D20A0();
  sub_244070F28();
  swift_beginAccess();
  sub_2440D13D0();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC44F8) + 36)];
  *v51 = v41;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  LOBYTE(v41) = sub_2440D20D0();
  sub_2440D13D0();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4500) + 36)];
  *v60 = v41;
  *(v60 + 1) = v53;
  *(v60 + 2) = v55;
  *(v60 + 3) = v57;
  *(v60 + 4) = v59;
  v60[40] = 0;
  v61 = *sub_243FFAF58();

  v62 = sub_2440D20B0();
  v63 = &v5[*(v80 + 36)];
  *v63 = v61;
  v63[8] = v62;
  v64 = v78;
  sub_243F5F574(v39, v78, &qword_27EDC44A8);
  v65 = v81;
  sub_243F5F574(v5, v81, &qword_27EDC4470);
  v66 = v82;
  sub_243F5F574(v64, v82, &qword_27EDC44A8);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4508);
  sub_243F5F574(v65, v66 + *(v67 + 48), &qword_27EDC4470);
  sub_243F5EED4(v5, &qword_27EDC4470);
  sub_243F5EED4(v39, &qword_27EDC44A8);
  sub_243F5EED4(v65, &qword_27EDC4470);
  return sub_243F5EED4(v64, &qword_27EDC44A8);
}

uint64_t sub_24403C9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v320 = a2;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4510);
  MEMORY[0x28223BE20](v268);
  v291 = &v267 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4518);
  v269 = *(v4 - 8);
  v270 = v4;
  MEMORY[0x28223BE20](v4);
  v267 = &v267 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4520);
  v272 = *(v6 - 8);
  v273 = v6;
  MEMORY[0x28223BE20](v6);
  v271 = &v267 - v7;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4528);
  MEMORY[0x28223BE20](v316);
  v274 = &v267 - v8;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4530);
  MEMORY[0x28223BE20](v312);
  v10 = (&v267 - v9);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4538);
  v278 = *(v280 - 8);
  MEMORY[0x28223BE20](v280);
  v276 = &v267 - v11;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4540);
  MEMORY[0x28223BE20](v279);
  v277 = &v267 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4548);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v281 = &v267 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v282 = &v267 - v16;
  v17 = sub_2440D1F60();
  v294 = *(v17 - 8);
  v295 = v17;
  MEMORY[0x28223BE20](v17);
  v293 = &v267 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0010);
  MEMORY[0x28223BE20](v306);
  v321 = &v267 - v19;
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4550);
  MEMORY[0x28223BE20](v284);
  v292 = &v267 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4558);
  v285 = *(v21 - 8);
  v286 = v21;
  MEMORY[0x28223BE20](v21);
  v283 = &v267 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4560);
  v288 = *(v23 - 8);
  v289 = v23;
  MEMORY[0x28223BE20](v23);
  v287 = &v267 - v24;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4568);
  v25 = MEMORY[0x28223BE20](v290);
  v275 = &v267 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v307 = &v267 - v27;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4570);
  MEMORY[0x28223BE20](v314);
  v315 = &v267 - v28;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4578);
  MEMORY[0x28223BE20](v308);
  v310 = &v267 - v29;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4580);
  MEMORY[0x28223BE20](v313);
  v311 = &v267 - v30;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4588);
  MEMORY[0x28223BE20](v309);
  v305 = (&v267 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1280);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v304 = &v267 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v267 - v35;
  v322 = type metadata accessor for IdentityRegistrationSheet();
  v317 = *(v322 - 8);
  MEMORY[0x28223BE20](v322);
  v318 = v37;
  v319 = &v267 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4590);
  v299 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v296 = &v267 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4598);
  MEMORY[0x28223BE20](v39 - 8);
  v300 = &v267 - v40;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC45A0);
  v41 = MEMORY[0x28223BE20](v298);
  v303 = (&v267 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = MEMORY[0x28223BE20](v41);
  v297 = &v267 - v44;
  MEMORY[0x28223BE20](v43);
  v323 = a1;
  v324 = (&v267 - v45);
  type metadata accessor for IdentityRegistrationViewModel();
  sub_244045650(&qword_27EDC4288, type metadata accessor for IdentityRegistrationViewModel);
  sub_2440D1490();
  v46 = sub_243FA1988();

  if (sub_243FA1978(v46, 0))
  {
    sub_24401FBC0();
    v47 = sub_24401FBD4();
    v49 = v48;
    v51 = v50;
    sub_2440D21B0();
    v52 = sub_2440D22A0();
    v54 = v53;
    v56 = v55;
    sub_243F62C68(v47, v49, v51 & 1);

    sub_2440D21D0();
    v57 = sub_2440D22E0();
    v59 = v58;
    v302 = v36;
    v61 = v60;

    sub_243F62C68(v52, v54, v56 & 1);

    sub_243FFAE40();

    v321 = sub_2440D22C0();
    v63 = v62;
    LOBYTE(v47) = v64;
    v66 = v65;

    sub_243F62C68(v57, v59, v61 & 1);

    v67 = sub_2440D20C0();
    sub_244071094();
    sub_2440D13D0();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    LOBYTE(v47) = v47 & 1;
    LOBYTE(v346) = v47;
    LOBYTE(v325) = 0;
    LOBYTE(v59) = sub_2440D20D0();
    sub_2440707C0();
    sub_2440D13D0();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    LOBYTE(v354) = 0;
    sub_2440D2B10();
    sub_2440D18E0();
    *(&v364[3] + 5) = v368;
    *(&v364[4] + 5) = v369;
    *(&v364[5] + 5) = v370;
    *(&v364[6] + 5) = v371;
    *(v364 + 5) = v365;
    *(&v364[1] + 5) = v366;
    *(&v364[2] + 5) = v367;
    KeyPath = swift_getKeyPath();
    *&v346 = v321;
    *(&v346 + 1) = v63;
    LOBYTE(v347) = v47;
    *(&v347 + 1) = v66;
    LOBYTE(v348) = v67;
    *(&v348 + 1) = v69;
    *&v349 = v71;
    *(&v349 + 1) = v73;
    *&v350 = v75;
    BYTE8(v350) = 0;
    LOBYTE(v351) = v59;
    *(&v351 + 1) = v77;
    *&v352 = v79;
    *(&v352 + 1) = v81;
    *&v353[0] = v83;
    BYTE8(v353[0]) = 0;
    *(v353 + 9) = 256;
    *(&v353[4] + 11) = v364[4];
    *(&v353[5] + 11) = v364[5];
    *(&v353[6] + 11) = v364[6];
    *(v353 + 11) = v364[0];
    *(&v353[1] + 11) = v364[1];
    *(&v353[2] + 11) = v364[2];
    *(&v353[3] + 11) = v364[3];
    *(&v353[7] + 1) = *(&v364[6] + 13);
    *&v353[8] = KeyPath;
    BYTE8(v353[8]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
    v85 = v323;
    sub_2440D1E60();
    v325 = v354;
    LOBYTE(v326) = v355;
    LOBYTE(v337) = 0;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4660);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC00F0);
    v88 = sub_2440458C8();
    v89 = sub_243F619D0();
    v90 = v296;
    sub_2440D24A0();

    v362[4] = v353[5];
    v362[5] = v353[6];
    v363[0] = v353[7];
    *(v363 + 9) = *(&v353[7] + 9);
    v362[0] = v353[1];
    v362[1] = v353[2];
    v362[2] = v353[3];
    v362[3] = v353[4];
    v358 = v350;
    v359 = v351;
    v360 = v352;
    v361 = v353[0];
    v354 = v346;
    v355 = v347;
    v356 = v348;
    v357 = v349;
    sub_243F5EED4(&v354, &qword_27EDC4660);
    *&v346 = v86;
    *(&v346 + 1) = v87;
    *&v347 = v88;
    *(&v347 + 1) = v89;
    swift_getOpaqueTypeConformance2();
    v92 = v300;
    v91 = v301;
    sub_2440D24E0();
    (*(v299 + 8))(v90, v91);
    v93 = v85;
    v94 = v319;
    sub_24403B104(v93, v319);
    v95 = (*(v317 + 80) + 16) & ~*(v317 + 80);
    v96 = swift_allocObject();
    sub_244044BF8(v94, v96 + v95, type metadata accessor for IdentityRegistrationSheet);
    v97 = v297;
    sub_243F681C8(v92, v297, &qword_27EDC4598);
    v98 = (v97 + *(v298 + 36));
    *v98 = sub_244045A98;
    v98[1] = v96;
    v98[2] = 0;
    v98[3] = 0;
    sub_243F681C8(v97, v324, &qword_27EDC45A0);
    sub_24401FBC0();
    v99 = sub_24401FBD4();
    v101 = v100;
    LOBYTE(v92) = v102;
    sub_2440D21D0();
    v103 = sub_2440D22E0();
    v105 = v104;
    LOBYTE(v94) = v106;

    sub_243F62C68(v99, v101, v92 & 1);

    sub_243FFAEE0();

    v107 = sub_2440D22C0();
    v109 = v108;
    LOBYTE(v90) = v110;
    v112 = v111;

    sub_243F62C68(v103, v105, v94 & 1);

    sub_2440D2B10();
    sub_2440D18E0();
    v344 = v90 & 1;
    v113 = swift_getKeyPath();
    LOBYTE(v89) = sub_2440D20D0();
    sub_2440710F8();
    sub_2440D13D0();
    v345 = 0;
    *&v325 = v107;
    *(&v325 + 1) = v109;
    LOBYTE(v326) = v90 & 1;
    *(&v326 + 1) = v112;
    v331 = v341;
    v332 = v342;
    v333 = v343;
    v327 = v337;
    v328 = v338;
    v329 = v339;
    v330 = v340;
    *&v334 = v113;
    BYTE8(v334) = 0;
    LOBYTE(v335) = v89;
    *(&v335 + 1) = v114;
    *&v336[0] = v115;
    *(&v336[0] + 1) = v116;
    *&v336[1] = v117;
    BYTE8(v336[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC12E8);
    sub_243F916E4();
    v118 = v302;
    sub_2440D24E0();
    v353[3] = v335;
    v353[4] = v336[0];
    *(&v353[4] + 9) = *(v336 + 9);
    v352 = v331;
    v353[0] = v332;
    v353[1] = v333;
    v353[2] = v334;
    v348 = v327;
    v349 = v328;
    v350 = v329;
    v351 = v330;
    v346 = v325;
    v347 = v326;
    sub_243F5EED4(&v346, &qword_27EDC12E8);
    v119 = v303;
    sub_243F5F574(v324, v303, &qword_27EDC45A0);
    v120 = v304;
    sub_243F5F574(v118, v304, &qword_27EDC1280);
    v121 = v305;
    sub_243F5F574(v119, v305, &qword_27EDC45A0);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4690);
    sub_243F5F574(v120, v121 + *(v122 + 48), &qword_27EDC1280);
    sub_243F5EED4(v120, &qword_27EDC1280);
    sub_243F5EED4(v119, &qword_27EDC45A0);
    sub_243F5F574(v121, v310, &qword_27EDC4588);
    swift_storeEnumTagMultiPayload();
    sub_243F5DD50(&qword_27EDC45F0, &qword_27EDC4588);
    sub_243F5DD50(&qword_27EDC45F8, &qword_27EDC4530);
    v123 = v311;
    sub_2440D1D20();
    sub_243F5F574(v123, v315, &qword_27EDC4580);
    swift_storeEnumTagMultiPayload();
    sub_244045104();
    sub_2440451E4();
    v124 = v320;
    sub_2440D1D20();
    sub_243F5EED4(v123, &qword_27EDC4580);
    sub_243F5EED4(v121, &qword_27EDC4588);
    sub_243F5EED4(v302, &qword_27EDC1280);
    sub_243F5EED4(v324, &qword_27EDC45A0);
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC45A8);
    return (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
  }

  v324 = v10;
  sub_2440D1490();
  v127 = sub_243FA1988();

  if (sub_243FA1978(v127, 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
    sub_2440D1510();
    LOBYTE(v346) = 1;
    v128 = sub_2440D2970();
    v305 = &v267;
    v129 = v354;
    v130 = v355;
    MEMORY[0x28223BE20](v128);
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0030);
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4618);
    sub_243F61520();
    sub_244044FA4(&qword_27EDC4620, &qword_27EDC4618, &unk_2440E1FD0, sub_244045504);
    v133 = sub_24404D14C();
    v134 = sub_24404D154();
    v135 = v292;
    sub_24404D15C(v129, *(&v129 + 1), v130, sub_24403F0C8, sub_2440454FC, v131, v292, v133, v134, v132);
    v136 = *MEMORY[0x277CDF988];
    v137 = sub_2440D1770();
    v138 = *(v137 - 8);
    v139 = *(v138 + 104);
    v140 = v138 + 104;
    (v139)(v321, v136, v137);
    v141 = sub_244045650(&qword_27EDC00D8, MEMORY[0x277CDFA28]);
    result = sub_2440D2F50();
    if (result)
    {
      LODWORD(v305) = v136;
      v304 = v137;
      v142 = sub_243F5DD50(&qword_27EDC4638, &qword_27EDC4550);
      v303 = v139;
      v143 = sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
      v301 = v140;
      v302 = v141;
      v145 = v283;
      v144 = v284;
      v146 = v135;
      v147 = v306;
      sub_2440D2420();
      sub_243F5EED4(v321, &qword_27EDC0010);
      sub_243F5EED4(v146, &qword_27EDC4550);
      v148 = v293;
      sub_2440D1F40();
      *&v354 = v144;
      *(&v354 + 1) = v147;
      *&v355 = v142;
      v300 = v143;
      *(&v355 + 1) = v143;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v151 = v286;
      v150 = v287;
      sub_2440D2490();
      (*(v294 + 8))(v148, v295);
      (*(v285 + 8))(v145, v151);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
      v152 = v323;
      sub_2440D1E60();
      LOBYTE(v325) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC00F0);
      *&v346 = v151;
      *(&v346 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_243F619D0();
      v153 = v307;
      v154 = v289;
      sub_2440D24A0();

      (*(v288 + 8))(v150, v154);
      LOBYTE(v146) = sub_2440D20C0();
      sub_244071094();
      sub_2440D13D0();
      v156 = v155;
      v158 = v157;
      v160 = v159;
      v162 = v161;
      v163 = v153 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4640) + 36);
      *v163 = v146;
      *(v163 + 8) = v156;
      *(v163 + 16) = v158;
      *(v163 + 24) = v160;
      *(v163 + 32) = v162;
      *(v163 + 40) = 0;
      LOBYTE(v146) = sub_2440D20D0();
      sub_2440707C0();
      sub_2440D13D0();
      v165 = v164;
      v167 = v166;
      v169 = v168;
      v171 = v170;
      v172 = v153 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4648) + 36);
      *v172 = v146;
      *(v172 + 8) = v165;
      *(v172 + 16) = v167;
      *(v172 + 24) = v169;
      *(v172 + 32) = v171;
      *(v172 + 40) = 0;
      v173 = v319;
      sub_24403B104(v152, v319);
      v174 = (*(v317 + 80) + 16) & ~*(v317 + 80);
      v175 = swift_allocObject();
      sub_244044BF8(v173, v175 + v174, type metadata accessor for IdentityRegistrationSheet);
      v176 = (v153 + *(v290 + 36));
      *v176 = sub_244045698;
      v176[1] = v175;
      v176[2] = 0;
      v176[3] = 0;
      sub_24401FBC0();
      v177 = sub_24401FBD4();
      v179 = v178;
      v181 = v180;
      sub_2440D21D0();
      v182 = sub_2440D22E0();
      v184 = v183;
      LOBYTE(v153) = v185;

      sub_243F62C68(v177, v179, v181 & 1);

      sub_243FFAEE0();

      v186 = sub_2440D22C0();
      v188 = v187;
      LOBYTE(v145) = v189;
      v191 = v190;

      v192 = v153 & 1;
      v193 = v321;
      sub_243F62C68(v182, v184, v192);

      sub_2440D2B10();
      sub_2440D18E0();
      LOBYTE(v365) = v145 & 1;
      v194 = swift_getKeyPath();
      *&v346 = v186;
      *(&v346 + 1) = v188;
      LOBYTE(v347) = v145 & 1;
      *(&v347 + 1) = v191;
      v352 = v329;
      v353[0] = v330;
      v353[1] = v331;
      v348 = v325;
      v349 = v326;
      v350 = v327;
      v351 = v328;
      *&v353[2] = v194;
      BYTE8(v353[2]) = 0;
      (v303)(v193, v305, v304);
      result = sub_2440D2F50();
      if (result)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1300);
        sub_2440456C8();
        v195 = v276;
        sub_2440D2420();
        sub_243F5EED4(v193, &qword_27EDC0010);
        v360 = v352;
        v361 = v353[0];
        v362[0] = v353[1];
        *(v362 + 9) = *(&v353[1] + 9);
        v356 = v348;
        v357 = v349;
        v358 = v350;
        v359 = v351;
        v354 = v346;
        v355 = v347;
        sub_243F5EED4(&v354, &qword_27EDC1300);
        v196 = sub_2440D20D0();
        sub_2440710F8();
        sub_2440D13D0();
        v198 = v197;
        v200 = v199;
        v202 = v201;
        v204 = v203;
        v205 = v277;
        (*(v278 + 32))(v277, v195, v280);
        v206 = v205 + *(v279 + 36);
        *v206 = v196;
        *(v206 + 8) = v198;
        *(v206 + 16) = v200;
        *(v206 + 24) = v202;
        *(v206 + 32) = v204;
        *(v206 + 40) = 0;
        sub_2440457A0();
        v207 = v282;
        sub_2440D24E0();
        sub_243F5EED4(v205, &qword_27EDC4540);
        v208 = v275;
        sub_243F5F574(v307, v275, &qword_27EDC4568);
        v209 = v281;
        sub_243F5F574(v207, v281, &qword_27EDC4548);
        v210 = v324;
        sub_243F5F574(v208, v324, &qword_27EDC4568);
        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4658);
        sub_243F5F574(v209, v210 + *(v211 + 48), &qword_27EDC4548);
        sub_243F5EED4(v209, &qword_27EDC4548);
        sub_243F5EED4(v208, &qword_27EDC4568);
        sub_243F5F574(v210, v310, &qword_27EDC4530);
        swift_storeEnumTagMultiPayload();
        sub_243F5DD50(&qword_27EDC45F0, &qword_27EDC4588);
        sub_243F5DD50(&qword_27EDC45F8, &qword_27EDC4530);
        v212 = v311;
        sub_2440D1D20();
        sub_243F5F574(v212, v315, &qword_27EDC4580);
        swift_storeEnumTagMultiPayload();
        sub_244045104();
        sub_2440451E4();
        v213 = v320;
        sub_2440D1D20();
        sub_243F5EED4(v212, &qword_27EDC4580);
        sub_243F5EED4(v210, &qword_27EDC4530);
        sub_243F5EED4(v207, &qword_27EDC4548);
        sub_243F5EED4(v307, &qword_27EDC4568);
        v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC45A8);
        return (*(*(v214 - 8) + 56))(v213, 0, 1, v214);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  sub_2440D1490();
  v215 = sub_243FA1988();

  if (sub_243FA1978(v215, 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
    sub_2440D1510();
    LOBYTE(v346) = 1;
    v216 = sub_2440D2970();
    v324 = &v267;
    v217 = v354;
    v218 = v355;
    MEMORY[0x28223BE20](v216);
    v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0030);
    v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC45B0);
    sub_243F61520();
    sub_244044FA4(&qword_27EDC45B8, &qword_27EDC45B0, &unk_2440E1FA8, sub_244045060);
    v221 = sub_24404D154();
    sub_24404D15C(v217, *(&v217 + 1), v218, sub_24403F9F4, sub_244045058, v219, v291, 10.0, v221, v220);
    v222 = *MEMORY[0x277CDF988];
    v223 = sub_2440D1770();
    v224 = v321;
    (*(*(v223 - 8) + 104))(v321, v222, v223);
    sub_244045650(&qword_27EDC00D8, MEMORY[0x277CDFA28]);
    result = sub_2440D2F50();
    if (result)
    {
      v225 = sub_243F5DD50(&qword_27EDC45D0, &qword_27EDC4510);
      v226 = sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
      v228 = v267;
      v227 = v268;
      v229 = v306;
      v230 = v291;
      sub_2440D2420();
      sub_243F5EED4(v224, &qword_27EDC0010);
      sub_243F5EED4(v230, &qword_27EDC4510);
      v231 = v293;
      sub_2440D1F40();
      *&v354 = v227;
      *(&v354 + 1) = v229;
      *&v355 = v225;
      *(&v355 + 1) = v226;
      v232 = swift_getOpaqueTypeConformance2();
      v233 = v270;
      v234 = v271;
      sub_2440D2490();
      (*(v294 + 8))(v231, v295);
      (*(v269 + 8))(v228, v233);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
      v235 = v323;
      sub_2440D1E60();
      LOBYTE(v325) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC00F0);
      *&v346 = v233;
      *(&v346 + 1) = v232;
      swift_getOpaqueTypeConformance2();
      sub_243F619D0();
      v236 = v273;
      v237 = v274;
      sub_2440D24A0();

      (*(v272 + 8))(v234, v236);
      LOBYTE(v230) = sub_2440D20C0();
      sub_244071094();
      sub_2440D13D0();
      v239 = v238;
      v241 = v240;
      v243 = v242;
      v245 = v244;
      v246 = v237 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC45D8) + 36);
      *v246 = v230;
      *(v246 + 8) = v239;
      *(v246 + 16) = v241;
      *(v246 + 24) = v243;
      *(v246 + 32) = v245;
      *(v246 + 40) = 0;
      LOBYTE(v230) = sub_2440D20D0();
      sub_2440707C0();
      sub_2440D13D0();
      v248 = v247;
      v250 = v249;
      v252 = v251;
      v254 = v253;
      v255 = v237 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC45E0) + 36);
      *v255 = v230;
      *(v255 + 8) = v248;
      *(v255 + 16) = v250;
      *(v255 + 24) = v252;
      *(v255 + 32) = v254;
      *(v255 + 40) = 0;
      v256 = v319;
      sub_24403B104(v235, v319);
      v257 = (*(v317 + 80) + 16) & ~*(v317 + 80);
      v258 = swift_allocObject();
      sub_244044BF8(v256, v258 + v257, type metadata accessor for IdentityRegistrationSheet);
      v259 = v315;
      v260 = (v237 + *(v316 + 36));
      *v260 = sub_2440450EC;
      v260[1] = v258;
      v260[2] = 0;
      v260[3] = 0;
      sub_243F5F574(v237, v259, &qword_27EDC4528);
      swift_storeEnumTagMultiPayload();
      sub_244045104();
      sub_2440451E4();
      v261 = v320;
      sub_2440D1D20();
      sub_243F5EED4(v237, &qword_27EDC4528);
      v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC45A8);
      return (*(*(v262 - 8) + 56))(v261, 0, 1, v262);
    }

    goto LABEL_15;
  }

  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC45A8);
  v264 = *(*(v263 - 8) + 56);
  v265 = v263;
  v266 = v320;

  return v264(v266, 1, 1, v265);
}

uint64_t sub_24403F0C8()
{
  sub_24401FBC0();
  v0 = sub_24401FBD4();
  v2 = v1;
  v4 = v3;
  sub_2440D21B0();
  v5 = sub_2440D22A0();
  v7 = v6;
  v9 = v8;
  sub_243F62C68(v0, v2, v4 & 1);

  sub_2440D21D0();
  v10 = sub_2440D22E0();
  v12 = v11;
  v14 = v13;

  sub_243F62C68(v5, v7, v9 & 1);

  sub_243FFAE40();

  v15 = sub_2440D22C0();
  v17 = v16;
  v19 = v18;

  sub_243F62C68(v10, v12, v14 & 1);

  sub_2440D24E0();
  sub_243F62C68(v15, v17, v19 & 1);
}

uint64_t sub_24403F2A4@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_2440D1F20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0EF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4630);
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  sub_2440D14F0();
  sub_2440D1F10();
  sub_243F5DD50(&qword_27EDC1028, &qword_27EDC0EF8);
  sub_244045650(&qword_27EDC1030, MEMORY[0x277CDE330]);
  sub_2440D2340();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  sub_2440D2B00();
  sub_2440D1560();
  v12 = &v11[*(v9 + 36)];
  v13 = v17;
  *v12 = v16;
  *(v12 + 1) = v13;
  *(v12 + 2) = v18;
  sub_244045504();
  sub_2440D2480();
  return sub_243F5EED4(v11, &qword_27EDC4630);
}

uint64_t sub_24403F57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v27 = a1;
  v32 = sub_2440D2C80();
  v35 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2440D2CA0();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IdentityRegistrationSheet();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = sub_2440D2CD0();
  v28 = v12;
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  sub_243F9B2E8(0, &qword_27EDC6160);
  v26 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v19 = *(v13 + 8);
  v19(v16, v12);
  sub_24403B104(v27, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  sub_244044BF8(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for IdentityRegistrationSheet);
  aBlock[4] = v30;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = v31;
  v22 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_244045650(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v23 = v32;
  sub_2440D3710();
  v24 = v26;
  MEMORY[0x245D57400](v18, v8, v5, v22);
  _Block_release(v22);

  (*(v35 + 8))(v5, v23);
  (*(v33 + 8))(v8, v34);
  return (v19)(v18, v28);
}

uint64_t sub_24403F9F4()
{
  sub_24401FBC0();
  v0 = sub_24401FBD4();
  v2 = v1;
  v4 = v3;
  sub_2440D21B0();
  v5 = sub_2440D22A0();
  v7 = v6;
  v9 = v8;
  sub_243F62C68(v0, v2, v4 & 1);

  sub_2440D21D0();
  v10 = sub_2440D22E0();
  v12 = v11;
  v14 = v13;

  sub_243F62C68(v5, v7, v9 & 1);

  sub_243FFAE40();

  v15 = sub_2440D22C0();
  v17 = v16;
  v19 = v18;

  sub_243F62C68(v10, v12, v14 & 1);

  sub_2440D24E0();
  sub_243F62C68(v15, v17, v19 & 1);
}

uint64_t sub_24403FBCC@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v1 = sub_2440D2770();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC45B0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  sub_2440D2760();
  (*(v2 + 104))(v4, *MEMORY[0x277CE0FE0], v1);
  v8 = sub_2440D2790();

  (*(v2 + 8))(v4, v1);
  sub_2440D2160();
  sub_2440D2180();
  v9 = sub_2440D21F0();

  KeyPath = swift_getKeyPath();
  v11 = sub_2440D2660();
  v12 = swift_getKeyPath();
  LOBYTE(v22[0]) = 1;
  sub_2440D2B00();
  sub_2440D1560();
  v15 = v8;
  LOWORD(v16) = 1;
  *(&v16 + 1) = KeyPath;
  *&v17 = v9;
  *(&v17 + 1) = v12;
  *&v18 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC45C8);
  sub_244045060();
  sub_2440D24E0();
  v22[4] = v19;
  v22[5] = v20;
  v23 = v21;
  v22[0] = v15;
  v22[1] = v16;
  v22[2] = v17;
  v22[3] = v18;
  sub_243F5EED4(v22, &qword_27EDC45C8);
  sub_2440D17F0();
  return sub_243F5EED4(v7, &qword_27EDC45B0);
}

uint64_t sub_24403FF00(uint64_t a1)
{
  v40 = a1;
  v43 = sub_2440D2C80();
  v49 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2440D2CA0();
  v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityRegistrationSheet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = v7;
  v8 = sub_2440D2CD0();
  v46 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v41 = sub_243F9B2E8(0, &qword_27EDC6160);
  v37 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v15 = *(v9 + 8);
  v45 = v9 + 8;
  v47 = v15;
  v15(v12, v8);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24403B104(a1, v36);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  v38 = type metadata accessor for IdentityRegistrationSheet;
  sub_244044BF8(&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for IdentityRegistrationSheet);
  v54 = sub_244045F4C;
  v55 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_243F5F604;
  v53 = &block_descriptor_81;
  v18 = _Block_copy(&aBlock);

  sub_2440D2C90();
  aBlock = MEMORY[0x277D84F90];
  v34 = sub_244045650(&qword_27EDC0510, MEMORY[0x277D85198]);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  v35 = sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v19 = v42;
  v20 = v43;
  sub_2440D3710();
  v21 = v19;
  v22 = v37;
  MEMORY[0x245D57400](v14, v4, v19, v18);
  _Block_release(v18);

  v23 = *(v49 + 8);
  v49 += 8;
  v37 = v23;
  v23(v19, v20);
  v24 = *(v48 + 8);
  v48 += 8;
  v32 = v24;
  v25 = v44;
  v24(v4, v44);
  v47(v14, v46);
  v26 = sub_2440D3530();
  sub_244070FAC();
  v27 = v36;
  sub_24403B104(v40, v36);
  v28 = swift_allocObject();
  sub_244044BF8(v27, v28 + v16, v38);
  v54 = sub_244045E7C;
  v55 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_243F5F604;
  v53 = &block_descriptor_87;
  v29 = _Block_copy(&aBlock);

  sub_2440D2C90();
  aBlock = MEMORY[0x277D84F90];
  sub_2440D3710();
  MEMORY[0x245D57400](v14, v4, v21, v29);
  _Block_release(v29);

  v37(v21, v20);
  v32(v4, v25);
  return (v47)(v14, v46);
}

uint64_t sub_244040560(uint64_t a1)
{
  v16 = sub_2440D1AF0();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3B88);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_2440D1630();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IdentityRegistrationSheet();
  sub_243F5F574(a1 + *(v12 + 20), v7, &qword_27EDC3B88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_2440D3480();
    v13 = sub_2440D2070();
    sub_2440D11B0();

    sub_2440D1AE0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_2440D1620();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2440407E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4460);
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  type metadata accessor for IdentityRegistrationViewModel();
  sub_244045650(&qword_27EDC4288, type metadata accessor for IdentityRegistrationViewModel);
  sub_2440D1490();
  v7 = sub_243FA1988();

  if (sub_243FA1978(v7, 0))
  {
    sub_2440409E0(a1, v6);
    (*(v11 + 32))(a2, v6, v4);
    return (*(v11 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v9 = *(v11 + 56);

    return v9(a2, 1, 1, v4);
  }
}

uint64_t sub_2440409E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v62 = sub_2440D1BE0();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC42B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v57 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC42C0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC42C8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC42D0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC42D8);
  MEMORY[0x28223BE20](v58);
  v21 = &v57 - v20;
  *v7 = *(v2 + *(type metadata accessor for IdentityRegistrationSheet() + 56));
  *(v7 + 1) = 0;
  v7[16] = 0;
  v22 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC42E0) + 44)];
  v57 = a1;
  sub_244042618(v2, a1, v22);
  sub_2440D2AF0();
  sub_2440D18E0();
  sub_243F681C8(v7, v11, &qword_27EDC42B8);
  v23 = &v11[*(v9 + 44)];
  v24 = v68;
  *(v23 + 4) = v67;
  *(v23 + 5) = v24;
  *(v23 + 6) = v69;
  v25 = v64;
  *v23 = v63;
  *(v23 + 1) = v25;
  v26 = v66;
  *(v23 + 2) = v65;
  *(v23 + 3) = v26;
  LOBYTE(v7) = sub_2440D20A0();
  sub_244070F28();
  swift_beginAccess();
  sub_2440D13D0();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_243F681C8(v11, v15, &qword_27EDC42C0);
  v35 = &v15[*(v13 + 44)];
  *v35 = v7;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  LOBYTE(v7) = sub_2440D20C0();
  sub_2440D13D0();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_243F681C8(v15, v19, &qword_27EDC42C8);
  v44 = &v19[*(v17 + 44)];
  *v44 = v7;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = sub_2440D20D0();
  if ((sub_243FC0F94() & 1) == 0)
  {
    sub_2440D1640();
  }

  sub_2440D13D0();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_243F681C8(v19, v21, &qword_27EDC42D0);
  v54 = &v21[*(v58 + 36)];
  *v54 = v45;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  v55 = v59;
  sub_2440D1BD0();
  sub_244042FC4();
  sub_2440D2470();
  (*(v60 + 8))(v55, v62);
  return sub_243F5EED4(v21, &qword_27EDC42D8);
}

uint64_t sub_244040EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4448);
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v25 - v4;
  v5 = sub_2440D1DC0();
  MEMORY[0x28223BE20](v5 - 8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4410);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v25 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4400);
  v8 = MEMORY[0x28223BE20](v28);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  type metadata accessor for IdentityRegistrationViewModel();
  sub_244045650(&qword_27EDC4288, type metadata accessor for IdentityRegistrationViewModel);
  sub_2440D1490();
  v13 = sub_243FA1988();

  if (sub_243FA1978(v13, 0))
  {
    v14 = sub_2440D1DA0();
    MEMORY[0x28223BE20](v14);
    *(&v25 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4450);
    sub_244044B18();
    sub_2440D14D0();
    v15 = sub_243F5DD50(&qword_27EDC4418, &qword_27EDC4410);
    v17 = v26;
    v16 = v27;
    MEMORY[0x245D55CE0](v7, v27, v15);
    v18 = v29;
    (*(v3 + 16))(v10, v17, v29);
    (*(v3 + 56))(v10, 0, 1, v18);
    v31 = v16;
    v32 = v15;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x245D55CF0](v10, v18, OpaqueTypeConformance2);
    sub_243F5EED4(v10, &qword_27EDC4400);
    (*(v3 + 8))(v17, v18);
    (*(v25 + 8))(v7, v16);
  }

  else
  {
    v20 = v29;
    (*(v3 + 56))(v10, 1, 1, v29);
    v21 = sub_243F5DD50(&qword_27EDC4418, &qword_27EDC4410);
    v31 = v27;
    v32 = v21;
    v22 = swift_getOpaqueTypeConformance2();
    MEMORY[0x245D55CF0](v10, v20, v22);
    sub_243F5EED4(v10, &qword_27EDC4400);
  }

  v23 = sub_2440447F0();
  MEMORY[0x245D55CE0](v12, v28, v23);
  return sub_243F5EED4(v12, &qword_27EDC4400);
}

uint64_t sub_2440413E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for IdentityRegistrationSheet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3DF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3DE8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3DD0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  sub_2440D13B0();
  v16 = sub_2440D13C0();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  sub_24403B104(a1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_244044BF8(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for IdentityRegistrationSheet);
  sub_2440D2860();
  v27 = sub_2440579C8(0, 0x435F4E4F54545542);
  v28 = v19;
  sub_243F5DD50(&qword_27EDC3DE0, &qword_27EDC3DE8);
  sub_243F4EF64();
  sub_2440D2440();

  (*(v10 + 8))(v12, v9);
  v20 = v26;
  sub_2440D1800();
  sub_243F5EED4(v15, &qword_27EDC3DD0);
  type metadata accessor for IdentityRegistrationViewModel();
  sub_244045650(&qword_27EDC4288, type metadata accessor for IdentityRegistrationViewModel);
  sub_2440D1490();
  LOBYTE(v8) = sub_243FA1B2C();

  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v8 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4450);
  v24 = (v20 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = sub_243FF6164;
  v24[2] = v22;
  return result;
}

uint64_t sub_244041868()
{
  v0 = sub_2440D1630();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IdentityRegistrationViewModel();
  sub_244045650(&qword_27EDC4288, type metadata accessor for IdentityRegistrationViewModel);
  sub_2440D1490();
  sub_243FA32E0();

  sub_24403ABD4(v3);
  sub_2440D1620();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2440419B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v13 - v1;
  v3 = type metadata accessor for IdentityTermsAndConditions();
  MEMORY[0x28223BE20](v3);
  v5 = (v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for IdentityRegistrationViewModel();
  sub_244045650(&qword_27EDC4288, type metadata accessor for IdentityRegistrationViewModel);
  v6 = sub_2440D1490();
  v7 = sub_2440D1490();
  v8 = *(v7 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_termsAndConditionsAcceptanceRequired);
  v9 = *(v7 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_termsAndConditionsAcceptanceRequired + 8);

  v10 = type metadata accessor for WebContent();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = sub_243FA6A84();
  sub_243FA6A94(sub_244044AB0, v6, v8, v9, v2, v5, v11);
  v13[1] = *sub_243FFAF58();
  sub_244045650(&qword_27EDC17E8, type metadata accessor for IdentityTermsAndConditions);
  sub_2440D24D0();
  return sub_244044AB4(v5);
}

uint64_t sub_244041C24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3DB8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_24401FBC0();
  sub_24401FBD4();
  sub_24401FBC0();
  sub_24401FBD4();
  v3 = sub_2440D2630();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_2440D2620();
}

uint64_t sub_244041DBC(uint64_t a1)
{
  v30 = a1;
  v26 = sub_2440D2C80();
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2440D2CA0();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityRegistrationSheet();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2440D2CD0();
  v24 = v7;
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_243F9B2E8(0, &qword_27EDC3DB0);
  v14 = [swift_getObjCClassFromMetadata() appearance];
  [v14 setBounces_];

  sub_243F9B2E8(0, &qword_27EDC6160);
  v15 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v16 = *(v8 + 8);
  v16(v11, v7);
  sub_24403B104(v30, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v18 = swift_allocObject();
  sub_244044BF8(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for IdentityRegistrationSheet);
  aBlock[4] = sub_2440449F8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_25;
  v19 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_244045650(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v20 = v25;
  v21 = v26;
  sub_2440D3710();
  MEMORY[0x245D57400](v13, v4, v20, v19);
  _Block_release(v19);

  (*(v29 + 8))(v20, v21);
  (*(v27 + 8))(v4, v28);
  v16(v13, v24);
  type metadata accessor for IdentityRegistrationViewModel();
  sub_244045650(&qword_27EDC4288, type metadata accessor for IdentityRegistrationViewModel);
  sub_2440D1490();
  sub_243FA3354();
}

uint64_t sub_2440422FC(_BYTE *a1)
{
  v2 = sub_2440D1630();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    sub_24403ABD4(v6);
    sub_2440D1620();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_2440423E0(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for IdentityRegistrationSheet();

  return sub_2440422FC(a2);
}

unint64_t sub_244042450()
{
  result = qword_27EDC4298;
  if (!qword_27EDC4298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4290);
    sub_243F5DD50(&qword_27EDC42A0, &qword_27EDC42A8);
    sub_243F5DD50(&qword_27EDC0720, &qword_27EDC0728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4298);
  }

  return result;
}

uint64_t sub_244042534()
{
  type metadata accessor for IdentityRegistrationSheet();
  type metadata accessor for IdentityRegistrationViewModel();
  sub_244045650(&qword_27EDC4288, type metadata accessor for IdentityRegistrationViewModel);
  sub_2440D1490();
  v0 = sub_243F68750();
  sub_243FA3374(v0 & 1);
}

uint64_t sub_244042618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v89 = a1;
  v83 = a3;
  v3 = type metadata accessor for IdentityRegistrationSheet();
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v85 = v4;
  v86 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E20);
  v5 = MEMORY[0x28223BE20](v81);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v82 = &v72 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0010);
  MEMORY[0x28223BE20](v87);
  v10 = &v72 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4330);
  MEMORY[0x28223BE20](v78);
  v12 = &v72 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4338);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v77 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4340);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v80 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v72 - v19;
  sub_2440D0AE0();
  v21 = sub_243F9A83C();

  v88 = v20;
  if (v21)
  {
    v73 = v12;
    v74 = v14;
    v75 = v13;
    v76 = v7;
    v22 = v89;
    v23 = (v89 + *(v3 + 32));
    v25 = v23[1];
    *&v90 = *v23;
    v24 = v90;
    *(&v90 + 1) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC25C0);
    sub_2440D2840();
    v26 = v99;
    v27 = *&v100;
    sub_2440D1650();
    v29 = v28 - (*(v22 + *(v3 + 52)) + *(v22 + *(v3 + 52)));
    v30 = sub_2440D0AE0();
    sub_243F9AFB0(v26, *(&v26 + 1), v30, v31, 1, v97, v27, v29);
    *&v99 = v24;
    *(&v99 + 1) = v25;
    sub_2440D2820();
    sub_2440D2B00();
    sub_2440D1560();
    v94 = v97[4];
    v95 = v97[5];
    v96 = v98;
    v90 = v97[0];
    v91 = v97[1];
    v92 = v97[2];
    v93 = v97[3];
    v32 = *MEMORY[0x277CDF988];
    v33 = sub_2440D1770();
    (*(*(v33 - 8) + 104))(v10, v32, v33);
    sub_244045650(&qword_27EDC00D8, MEMORY[0x277CDFA28]);
    result = sub_2440D2F50();
    if ((result & 1) == 0)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4350);
    sub_244043F88();
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    v35 = v73;
    v36 = v32;
    sub_2440D2420();
    sub_243F5EED4(v10, &qword_27EDC0010);
    v103 = v94;
    v104 = v95;
    v105 = v96;
    v99 = v90;
    v100 = v91;
    v101 = v92;
    v102 = v93;
    sub_243F5EED4(&v99, &qword_27EDC4350);
    v37 = sub_2440D20D0();
    sub_2440D13D0();
    v38 = v35 + *(v78 + 36);
    *v38 = v37;
    *(v38 + 8) = v39;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    *(v38 + 32) = v42;
    *(v38 + 40) = 0;
    sub_244044014();
    v43 = v77;
    sub_2440D24E0();
    sub_243F5EED4(v35, &qword_27EDC4330);
    v44 = v88;
    sub_243F681C8(v43, v88, &qword_27EDC4338);
    (*(v74 + 56))(v44, 0, 1, v75);
    v7 = v76;
  }

  else
  {
    (*(v14 + 56))(v20, 1, 1, v13);
    v36 = *MEMORY[0x277CDF988];
  }

  v45 = sub_2440D26A0();
  v46 = sub_2440D2660();
  v47 = v86;
  sub_24403B104(v89, v86);
  v48 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v49 = swift_allocObject();
  sub_244044BF8(v47, v49 + v48, type metadata accessor for IdentityRegistrationSheet);
  sub_243FB9D2C(0x45554E49544E4F43, 0xEE004C4542414C5FLL, v45, v46, 0xD00000000000001DLL, 0x80000002440ED850, sub_244043EAC, v49, &v90);
  v50 = sub_2440D1770();
  (*(*(v50 - 8) + 104))(v10, v36, v50);
  sub_244045650(&qword_27EDC00D8, MEMORY[0x277CDFA28]);
  result = sub_2440D2F50();
  if (result)
  {
    sub_24402F678();
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    v51 = v82;
    sub_2440D2420();
    sub_243F5EED4(v10, &qword_27EDC0010);
    v101 = v92;
    v102 = v93;
    *&v103 = v94;
    v99 = v90;
    v100 = v91;
    sub_24402F6CC(&v99);
    v52 = sub_2440D20C0();
    sub_2440D13D0();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v61 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3E40) + 36);
    *v61 = v52;
    *(v61 + 8) = v54;
    *(v61 + 16) = v56;
    *(v61 + 24) = v58;
    *(v61 + 32) = v60;
    *(v61 + 40) = 0;
    v62 = sub_2440D20D0();
    sub_244070F34();
    sub_2440D13D0();
    v63 = v80;
    v64 = v51 + *(v81 + 36);
    *v64 = v62;
    *(v64 + 8) = v65;
    *(v64 + 16) = v66;
    *(v64 + 24) = v67;
    *(v64 + 32) = v68;
    *(v64 + 40) = 0;
    v69 = v88;
    sub_243F5F574(v88, v63, &qword_27EDC4340);
    sub_243F5F574(v51, v7, &qword_27EDC3E20);
    v70 = v83;
    sub_243F5F574(v63, v83, &qword_27EDC4340);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4348);
    sub_243F5F574(v7, v70 + *(v71 + 48), &qword_27EDC3E20);
    sub_243F5EED4(v51, &qword_27EDC3E20);
    sub_243F5EED4(v69, &qword_27EDC4340);
    sub_243F5EED4(v7, &qword_27EDC3E20);
    return sub_243F5EED4(v63, &qword_27EDC4340);
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_244042FC4()
{
  result = qword_27EDC42E8;
  if (!qword_27EDC42E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC42D8);
    sub_244043050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC42E8);
  }

  return result;
}

unint64_t sub_244043050()
{
  result = qword_27EDC42F0;
  if (!qword_27EDC42F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC42D0);
    sub_2440430DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC42F0);
  }

  return result;
}

unint64_t sub_2440430DC()
{
  result = qword_27EDC42F8;
  if (!qword_27EDC42F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC42C8);
    sub_244043168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC42F8);
  }

  return result;
}

unint64_t sub_244043168()
{
  result = qword_27EDC4300;
  if (!qword_27EDC4300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC42C0);
    sub_243F5DD50(&qword_27EDC4308, &qword_27EDC42B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4300);
  }

  return result;
}

uint64_t sub_244043224@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3B88);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_244043284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  v8 = type metadata accessor for IdentityRegistrationSheet();
  sub_243F681C8(a3, a5 + v8[5], &qword_27EDC27B0);
  sub_243F681C8(a4, a5 + v8[6], &qword_27EDBFFF0);
  v9 = (a5 + v8[7]);
  sub_2440D2810();
  *v9 = v20;
  v9[1] = v21;
  v10 = (a5 + v8[8]);
  sub_2440D2810();
  *v10 = v20;
  v10[1] = v21;
  v11 = a5 + v8[9];
  sub_2440D2810();
  *v11 = v20;
  *(v11 + 8) = v21;
  v12 = a5 + v8[10];
  sub_2440D2810();
  *v12 = v20;
  *(v12 + 8) = v21;
  sub_243F6069C();
  sub_2440D1500();
  v13 = (a5 + v8[12]);
  v14 = sub_2440D0DA0();
  v15 = MEMORY[0x277D438F8];
  v13[3] = v14;
  v13[4] = v15;
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_2440D0D90();
  v16 = v8[13];
  v17 = sub_244070F28();
  swift_beginAccess();
  *(a5 + v16) = *v17;
  v18 = v8[14];
  result = sub_2440D1C30();
  *(a5 + v18) = result;
  return result;
}

uint64_t sub_244043478@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = type metadata accessor for IdentityRegistrationSheet();
  *(a1 + v3[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3B88);
  swift_storeEnumTagMultiPayload();
  sub_243F60648();
  sub_2440D1E70();
  sub_2440D2690();
  *a1 = sub_244043670;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = (a1 + v3[7]);
  sub_2440D2810();
  *v4 = v15;
  v4[1] = v16;
  v5 = (a1 + v3[8]);
  sub_2440D2810();
  *v5 = v15;
  v5[1] = v16;
  v6 = a1 + v3[9];
  sub_2440D2810();
  *v6 = v15;
  *(v6 + 8) = v16;
  v7 = a1 + v3[10];
  sub_2440D2810();
  *v7 = v15;
  *(v7 + 8) = v16;
  sub_243F6069C();
  sub_2440D1500();
  v8 = (a1 + v3[12]);
  v9 = sub_2440D0DA0();
  v10 = MEMORY[0x277D438F8];
  v8[3] = v9;
  v8[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v8);
  sub_2440D0D90();
  v11 = v3[13];
  v12 = sub_244070F28();
  swift_beginAccess();
  *(a1 + v11) = *v12;
  v13 = v3[14];
  result = sub_2440D1C30();
  *(a1 + v13) = result;
  return result;
}

unint64_t sub_2440436D4()
{
  result = qword_27EDC4310;
  if (!qword_27EDC4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4310);
  }

  return result;
}

uint64_t sub_244043748(uint64_t a1)
{
  v2 = sub_244043E58();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_244043794(uint64_t a1)
{
  v2 = sub_244043E58();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_2440437F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC27B0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[11];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_24404399C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC27B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[11];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

void sub_244043B30()
{
  sub_244043C8C();
  if (v0 <= 0x3F)
  {
    sub_24402E1C4();
    if (v1 <= 0x3F)
    {
      sub_243F624F0();
      if (v2 <= 0x3F)
      {
        sub_243F8AF54(319, &qword_27EDC06C0);
        if (v3 <= 0x3F)
        {
          sub_243F8AF54(319, &qword_27EDC2640);
          if (v4 <= 0x3F)
          {
            sub_243F8AF54(319, &qword_27EDC0280);
            if (v5 <= 0x3F)
            {
              sub_243F62560();
              if (v6 <= 0x3F)
              {
                sub_24402E21C();
                if (v7 <= 0x3F)
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
}

void sub_244043C8C()
{
  if (!qword_27EDC4318)
  {
    type metadata accessor for IdentityRegistrationViewModel();
    sub_244045650(&qword_27EDC4288, type metadata accessor for IdentityRegistrationViewModel);
    v0 = sub_2440D14B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC4318);
    }
  }
}

unint64_t sub_244043D34()
{
  result = qword_27EDC4320;
  if (!qword_27EDC4320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC42B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4290);
    sub_244042450();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4320);
  }

  return result;
}

unint64_t sub_244043E58()
{
  result = qword_27EDC4328;
  if (!qword_27EDC4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4328);
  }

  return result;
}

uint64_t sub_244043EAC()
{
  type metadata accessor for IdentityRegistrationSheet();
  type metadata accessor for IdentityRegistrationViewModel();
  sub_244045650(&qword_27EDC4288, type metadata accessor for IdentityRegistrationViewModel);
  sub_2440D1490();
  sub_243FA2900();
}

unint64_t sub_244043F88()
{
  result = qword_27EDC4358;
  if (!qword_27EDC4358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4350);
    sub_243F9B17C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4358);
  }

  return result;
}

unint64_t sub_244044014()
{
  result = qword_27EDC4360;
  if (!qword_27EDC4360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0010);
    sub_244043F88();
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4360);
  }

  return result;
}

unint64_t sub_24404414C()
{
  result = qword_27EDC4370;
  if (!qword_27EDC4370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC43A0);
    sub_2440443D8();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4400);
    sub_2440447F0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for IdentityTermsAndConditions();
    sub_244045650(&qword_27EDC17E8, type metadata accessor for IdentityTermsAndConditions);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4370);
  }

  return result;
}

unint64_t sub_2440443D8()
{
  result = qword_27EDC43A8;
  if (!qword_27EDC43A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC43A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC43B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC43B8);
    sub_2440444CC();
    sub_244044730();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC43A8);
  }

  return result;
}

unint64_t sub_2440444CC()
{
  result = qword_27EDC43C0;
  if (!qword_27EDC43C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC43B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC43C8);
    sub_2440445C0();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC43C0);
  }

  return result;
}

unint64_t sub_2440445C0()
{
  result = qword_27EDC43D0;
  if (!qword_27EDC43D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC43C8);
    sub_24404464C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC43D0);
  }

  return result;
}

unint64_t sub_24404464C()
{
  result = qword_27EDC43D8;
  if (!qword_27EDC43D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC43E0);
    sub_243F5DD50(&qword_27EDC43E8, &qword_27EDC43F0);
    sub_243F5DD50(&qword_27EDC0D38, &qword_27EDC0D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC43D8);
  }

  return result;
}

unint64_t sub_244044730()
{
  result = qword_27EDC43F8;
  if (!qword_27EDC43F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC43B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC42D8);
    sub_244042FC4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC43F8);
  }

  return result;
}

unint64_t sub_2440447F0()
{
  result = qword_27EDC4408;
  if (!qword_27EDC4408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4410);
    sub_243F5DD50(&qword_27EDC4418, &qword_27EDC4410);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4408);
  }

  return result;
}

uint64_t sub_2440448E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = *(v3 + *(type metadata accessor for IdentityRegistrationSheet() + 56));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4468);
  return sub_24403C140(v3, a1 + *(v4 + 44));
}

uint64_t sub_244044970()
{
  type metadata accessor for IdentityRegistrationSheet();

  return sub_2440419B8();
}

uint64_t sub_2440449F8()
{
  type metadata accessor for IdentityRegistrationSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  return sub_2440D2830();
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_244044AB4(uint64_t a1)
{
  v2 = type metadata accessor for IdentityTermsAndConditions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_244044B18()
{
  result = qword_27EDC4458;
  if (!qword_27EDC4458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4450);
    sub_24402F4FC();
    sub_243F5DD50(&qword_27EDC2DD0, &qword_27EDC2DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4458);
  }

  return result;
}

uint64_t sub_244044BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_244044C60()
{
  result = qword_27EDC44B0;
  if (!qword_27EDC44B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4488);
    sub_244044D18();
    sub_243F5DD50(&qword_27EDC44C8, &qword_27EDC44D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC44B0);
  }

  return result;
}

unint64_t sub_244044D18()
{
  result = qword_27EDC44B8;
  if (!qword_27EDC44B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4480);
    sub_244044DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC44B8);
  }

  return result;
}

unint64_t sub_244044DA4()
{
  result = qword_27EDC44C0;
  if (!qword_27EDC44C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4478);
    sub_244045650(&qword_27EDC2070, type metadata accessor for AVLoopPlayerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC44C0);
  }

  return result;
}

unint64_t sub_244044E60()
{
  result = qword_27EDC44D8;
  if (!qword_27EDC44D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC44A0);
    sub_244044EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC44D8);
  }

  return result;
}

unint64_t sub_244044EEC()
{
  result = qword_27EDC44E0;
  if (!qword_27EDC44E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4498);
    sub_244044FA4(&qword_27EDC44E8, &qword_27EDC4490, &unk_2440E1EB0, sub_244044C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC44E0);
  }

  return result;
}

uint64_t sub_244044FA4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_244045650(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_244045060()
{
  result = qword_27EDC45C0;
  if (!qword_27EDC45C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC45C8);
    sub_243F617DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC45C0);
  }

  return result;
}

unint64_t sub_244045104()
{
  result = qword_27EDC45E8;
  if (!qword_27EDC45E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4580);
    sub_243F5DD50(&qword_27EDC45F0, &qword_27EDC4588);
    sub_243F5DD50(&qword_27EDC45F8, &qword_27EDC4530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC45E8);
  }

  return result;
}

unint64_t sub_2440451E4()
{
  result = qword_27EDC4600;
  if (!qword_27EDC4600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4528);
    sub_244045270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4600);
  }

  return result;
}

unint64_t sub_244045270()
{
  result = qword_27EDC4608;
  if (!qword_27EDC4608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC45E0);
    sub_2440452FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4608);
  }

  return result;
}

unint64_t sub_2440452FC()
{
  result = qword_27EDC4610;
  if (!qword_27EDC4610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC45D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC00F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4510);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0010);
    sub_243F5DD50(&qword_27EDC45D0, &qword_27EDC4510);
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243F619D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4610);
  }

  return result;
}

unint64_t sub_244045504()
{
  result = qword_27EDC4628;
  if (!qword_27EDC4628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0EF8);
    sub_2440D1F20();
    sub_243F5DD50(&qword_27EDC1028, &qword_27EDC0EF8);
    sub_244045650(&qword_27EDC1030, MEMORY[0x277CDE330]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4628);
  }

  return result;
}

uint64_t sub_244045650(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2440456C8()
{
  result = qword_27EDC12F8;
  if (!qword_27EDC12F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1300);
    sub_243F884B4(&qword_27EDC0DC8, &qword_27EDC0DD0);
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC12F8);
  }

  return result;
}

unint64_t sub_2440457A0()
{
  result = qword_27EDC4650;
  if (!qword_27EDC4650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0010);
    sub_2440456C8();
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4650);
  }

  return result;
}

unint64_t sub_2440458C8()
{
  result = qword_27EDC4668;
  if (!qword_27EDC4668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4660);
    sub_244045980();
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4668);
  }

  return result;
}

unint64_t sub_244045980()
{
  result = qword_27EDC4670;
  if (!qword_27EDC4670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4678);
    sub_244045A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4670);
  }

  return result;
}

unint64_t sub_244045A0C()
{
  result = qword_27EDC4680;
  if (!qword_27EDC4680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC4688);
    sub_243F8840C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4680);
  }

  return result;
}

void sub_244045B5C()
{
  type metadata accessor for IdentityRegistrationSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
  sub_2440D1E50();
  UIAccessibilityPostNotification(*MEMORY[0x277D764D8], 0);
}

uint64_t objectdestroyTm_22()
{
  v1 = type metadata accessor for IdentityRegistrationSheet();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_2440191EC();
  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3B88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2440D1630();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[6];
  v6 = sub_2440D1F00();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);

  v8 = v1[11];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
  (*(*(v9 - 8) + 8))(v2 + v8, v9);
  __swift_destroy_boxed_opaque_existential_0(v2 + v1[12]);

  return swift_deallocObject();
}

uint64_t sub_244045E94(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for IdentityRegistrationSheet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_244045F68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_244045FDC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_244046070()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

void (*sub_2440460E0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F511F8;
}

uint64_t sub_244046184()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4698);
  sub_2440D1310();
  return swift_endAccess();
}

uint64_t sub_2440461F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC46A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4698);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_244046330(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC46A0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver__event;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4698);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F515A0;
}

uint64_t sub_2440464A0()
{
  v0 = swift_allocObject();
  sub_2440464D8();
  return v0;
}

uint64_t sub_2440464D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4698);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-v3];
  v5 = OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver__event;
  v9[15] = 2;
  sub_2440D1300();
  (*(v2 + 32))(v0 + v5, v4, v1);
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_timer) = 0;
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_isObscured) = 0;
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_activationDelay) = 0x400D99999999999ALL;
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_started) = 0;
  v6 = OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_timeOfLastEvent;
  v7 = sub_2440D06D0();
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_proxClient) = IOHIDEventSystemClientCreate();
  return v0;
}

void sub_244046670()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = aBlock - v3;
  v5 = OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_started;
  if ((*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_started) & 1) == 0)
  {
    v6 = sub_243F4DF28();
    sub_243F5F574(v6, v4, &qword_27EDC0A50);
    v7 = sub_2440D11E0();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      sub_243F5EED4(v4, &qword_27EDC0A50);
    }

    else
    {
      v9 = sub_2440D11C0();
      v10 = sub_2440D3490();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_243F48000, v9, v10, "start observing proximity sensor", v11, 2u);
        MEMORY[0x245D58570](v11, -1, -1);
      }

      (*(v8 + 8))(v4, v7);
    }

    (*(*v1 + 144))(2);
    *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_isObscured) = 0;
    v12 = OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_timer;
    [*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_timer) invalidate];
    v13 = *(v1 + v12);
    *(v1 + v12) = 0;

    sub_244047E7C(&unk_28577A480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC46A8);
    swift_arrayDestroy();
    v14 = sub_2440D2EA0();
    IOHIDEventSystemClientSetMatching();

    v15 = CFRunLoopGetCurrent();
    if (v15)
    {
      if (*MEMORY[0x277CBF058])
      {
        v16 = v15;

        IOHIDEventSystemClientScheduleWithRunLoop();

        v17 = swift_allocObject();
        swift_weakInit();
        aBlock[4] = sub_244047FB0;
        aBlock[5] = v17;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_244046A08;
        aBlock[3] = &block_descriptor_26;
        v18 = _Block_copy(aBlock);

        IOHIDEventSystemClientRegisterEventFilterBlock();

        _Block_release(v18);
        *(v1 + v5) = 1;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_244046A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);

  v10 = a5;
  v11 = v9(a2, a3, a4, v10);

  return v11;
}

void sub_244046A88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_started;
  if (*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_started) == 1)
  {
    v6 = sub_243F4DF28();
    sub_243F5F574(v6, v4, &qword_27EDC0A50);
    v7 = sub_2440D11E0();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      sub_243F5EED4(v4, &qword_27EDC0A50);
    }

    else
    {
      v9 = sub_2440D11C0();
      v10 = sub_2440D3490();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_243F48000, v9, v10, "stop observing proximity sensor", v11, 2u);
        MEMORY[0x245D58570](v11, -1, -1);
      }

      (*(v8 + 8))(v4, v7);
    }

    IOHIDEventSystemClientUnregisterEventFilterBlock();
    *(v1 + v5) = 0;
    (*(*v1 + 144))(2);
    *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_isObscured) = 0;
    v12 = OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_timer;
    [*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_timer) invalidate];
    v13 = *(v1 + v12);
    *(v1 + v12) = 0;
  }
}

void sub_244046CAC(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_isObscured;
  if (*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_isObscured))
  {
    if ((a1 & 1) == 0)
    {
      sub_24404738C(0);
      (*(*v1 + 144))(2);
      *(v1 + v3) = 0;
      v4 = OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_timer;
      [*(v2 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_timer) invalidate];
      v5 = *(v2 + v4);
      *(v2 + v4) = 0;
    }
  }

  else if (a1)
  {
    type metadata accessor for MockDaemon();
    if (sub_243F62C7C(6) & 1) != 0 && (sub_243F62C7C(43))
    {
      v6 = sub_243FA9620();
      swift_beginAccess();
      v7 = *(**v6 + 208);

      v9 = v7(v8);

      if (v9)
      {
        [v9 reportProxEventInRange:1 inRangeTime:0xFFFFFFFFLL];
      }
    }

    else
    {
      sub_24404738C(1);
    }

    *(v2 + v3) = 1;
    (*(*v2 + 144))(0);
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_244048338;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243F81670;
    aBlock[3] = &block_descriptor_27;
    v12 = _Block_copy(aBlock);

    v13 = [v10 scheduledTimerWithTimeInterval:0 repeats:v12 block:3.7];
    _Block_release(v12);
    v14 = *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_timer);
    *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_timer) = v13;
  }
}

uint64_t sub_244046F48@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC46D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC46E8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v22 = v12;
  sub_243F5DD50(&qword_27EDC46F0, &qword_27EDC46D8);
  result = sub_2440D0950();
  if (v11 >> 14 >= v10 >> 14)
  {
    sub_2440D3660();
    v15 = v20;
    sub_2440D0970();
    if (v15)
    {

      (*(v4 + 8))(v6, v3);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC46F8);
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    }

    else
    {
      (*(v4 + 8))(v6, v3);

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC46F8);
      if ((*(*(v17 - 8) + 48))(v9, 1, v17) != 1)
      {
        sub_243F5EED4(v9, &qword_27EDC46E8);
        result = MEMORY[0x245D56F70](v10, v11, v22, v13);
        goto LABEL_6;
      }
    }

    sub_243F5EED4(v9, &qword_27EDC46E8);
    result = 0;
    v18 = 0;
LABEL_6:
    v19 = v21;
    *v21 = result;
    v19[1] = v18;
    return result;
  }

  __break(1u);
  return result;
}

char *sub_244047244(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 56);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *(v5 - 1);
    v9 = *v5;
    v17 = *(v5 - 3);
    v18 = v8;
    v19 = v9;

    v20(&v15, &v17);
    if (v3)
    {
      break;
    }

    v10 = v16;
    if (v16)
    {
      v11 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_244047C64(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_244047C64((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v7 = &v6[16 * v13];
      *(v7 + 4) = v11;
      *(v7 + 5) = v10;
    }

    v5 += 4;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_24404738C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC46B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-v5];
  v7 = sub_244047518();
  v8 = sub_243FA9620();
  swift_beginAccess();
  v9 = *(**v8 + 208);

  v11 = v9(v10);

  if (v11)
  {
    [v11 reportProxEventInRange:a1 & 1 inRangeTime:v7];
  }

  sub_2440D06C0();
  v12 = sub_2440D06D0();
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_timeOfLastEvent;
  swift_beginAccess();
  sub_2440482C8(v6, v2 + v13);
  return swift_endAccess();
}

uint64_t sub_244047518()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC46B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_2440D06D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_timeOfLastEvent;
  swift_beginAccess();
  sub_243F5F574(v0 + v11, v3, &qword_27EDC46B0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_243F5EED4(v3, &qword_27EDC46B0);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  sub_2440D06C0();
  sub_2440D06B0();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v8, v4);
  result = (v15)(v10, v4);
  v16 = v14 * 1000.0;
  if (COERCE__INT64(fabs(v14 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v16 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 4294967300.0)
  {
    return v16;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_24404777C()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver__event;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4698);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_243F5EED4(v0 + OBJC_IVAR____TtC19ContactlessReaderUI23ProximitySensorObserver_timeOfLastEvent, &qword_27EDC46B0);

  return swift_deallocClassInstance();
}

uint64_t sub_244047864@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ProximitySensorObserver();
  result = sub_2440D12F0();
  *a1 = result;
  return result;
}

unint64_t sub_2440478A4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_2440D31C0();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_244047D70(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_244047D70((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_2440D3190();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_2440D30D0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_2440D30D0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_2440D31C0();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_244047D70(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_2440D31C0();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_244047D70(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_244047D70((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2440D30D0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_244047C64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160);
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

char *sub_244047D70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4700);
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

unint64_t sub_244047E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4708);
    v3 = sub_2440D3910();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_243FB03FC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_244047F78()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_244047FB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for IOHIDEvent(0);
    v5 = a4;
    v6 = sub_2440D3040();
    sub_244048428(v6, v7);

    IntegerValue = IOHIDEventGetIntegerValue();
    sub_244046CAC((IntegerValue & 0x400) != 0);
  }

  return 0;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_244048074()
{
  result = qword_27EDC46B8;
  if (!qword_27EDC46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC46B8);
  }

  return result;
}

uint64_t type metadata accessor for ProximitySensorObserver()
{
  result = qword_27EDCFE30;
  if (!qword_27EDCFE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24404811C()
{
  sub_2440483D8(319, &qword_27EDC46C0, &type metadata for ProximitySensorObserver.Event, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_244048238();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}