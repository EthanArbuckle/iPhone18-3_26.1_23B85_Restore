uint64_t sub_2561E9360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830730, &qword_2561EFF40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v105 = &v88 - v14;
  v15 = sub_2561EDD40();
  v103 = *(v15 - 8);
  v16 = *(v103 + 64);
  MEMORY[0x28223BE20](v15);
  v101 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830738, &qword_2561EFF48);
  v18 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v88 - v19;
  v20 = sub_2561EDD80();
  v97 = *(v20 - 8);
  v98 = v20;
  v21 = *(v97 + 64);
  MEMORY[0x28223BE20](v20);
  v96 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830740, &qword_2561EFF50);
  v23 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v99 = &v88 - v24;
  v109 = a2;
  v110 = a3;
  *&v128 = a2;
  *(&v128 + 1) = a3;
  v111 = a4;
  v112 = a5;
  *&v129 = a4;
  *(&v129 + 1) = a5;
  v25 = type metadata accessor for OBKListView(0, &v128);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v108 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v88 - v29;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830748, &qword_2561EFF58);
  v31 = *(*(v106 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v106);
  result = MEMORY[0x28223BE20](v32);
  v36 = &v88 - v35;
  v37 = *(a1 + 80);
  v128 = *(a1 + 64);
  v129 = v37;
  v38 = *(a1 + 112);
  v132 = *(a1 + 128);
  v130 = *(a1 + 96);
  v131 = v38;
  v133 = *(a1 + 144);
  v134 = BYTE1(v129);
  v135 = v129;
  if (*(&v128 + 1))
  {
    v89 = v34;
    v90 = v15;
    v91 = v12;
    v125 = v128;
    LOWORD(v126[0]) = v129;
    *(v126 + 2) = *(a1 + 82);
    *(&v126[1] + 2) = *(a1 + 98);
    v126[2] = *(a1 + 112);
    v94 = v132;
    v95 = a6;
    *v127 = v132;
    *&v127[8] = *(a1 + 136);
    v92 = *(v26 + 16);
    v93 = v26 + 16;
    v92(v30, a1, v25);
    v39 = (*(v26 + 80) + 136) & ~*(v26 + 80);
    v40 = swift_allocObject();
    v41 = v110;
    *(v40 + 16) = v109;
    *(v40 + 24) = v41;
    v42 = v112;
    *(v40 + 32) = v111;
    *(v40 + 40) = v42;
    v43 = v126[2];
    *(v40 + 80) = v126[1];
    *(v40 + 96) = v43;
    *(v40 + 112) = *v127;
    *(v40 + 128) = *&v127[16];
    v44 = v126[0];
    *(v40 + 48) = v125;
    *(v40 + 64) = v44;
    v45 = (*(v26 + 32))(v40 + v39, v30, v25);
    MEMORY[0x28223BE20](v45);
    *(&v88 - 2) = &v125;
    v123[2] = v130;
    v123[3] = v131;
    v123[4] = v132;
    v124 = v133;
    v123[0] = v128;
    v123[1] = v129;
    sub_2561D7E98(&v128, &v117, &qword_27F830378, &qword_2561EFF60);
    sub_2561D85E4(v123, &v117);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830750, &qword_2561EFF68);
    sub_2561EBDFC();
    sub_2561EE180();
    v46 = &v36[*(v106 + 36)];
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307A0, &qword_2561EFF88) + 28);
    v48 = *MEMORY[0x277CDF420];
    v49 = sub_2561EDB10();
    (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
    *v46 = swift_getKeyPath();
    v50 = *(a1 + *(v25 + 84));
    v107 = v25;
    if (v50)
    {
      sub_2561D7E98(v36, v89, &qword_27F830748, &qword_2561EFF58);
      sub_2561EC1D8();
      v51 = sub_2561EE1C0();
      v106 = v26;
      v52 = v51;
      sub_2561D8584(v36, &qword_27F830748, &qword_2561EFF58);
      *&v117 = v52;
      v53 = v101;
      sub_2561EDD30();
      v54 = sub_2561EC670(&qword_27F830810, MEMORY[0x277CDE340]);
      v55 = MEMORY[0x277CE11C8];
      v56 = MEMORY[0x277CE11C0];
      v57 = v90;
      sub_2561EDFA0();
      (*(v103 + 8))(v53, v57);
      *&v117 = v55;
      *(&v117 + 1) = v57;
      *&v118 = v56;
      *(&v118 + 1) = v54;
      swift_getOpaqueTypeConformance2();
      v58 = sub_2561EE1C0();
      v26 = v106;
    }

    else
    {
      v60 = v96;
      sub_2561EDD70();
      sub_2561EC1D8();
      sub_2561EC670(&qword_27F8307D0, MEMORY[0x277CDE400]);
      v61 = v98;
      v62 = v99;
      sub_2561EDFA0();
      (*(v97 + 8))(v60, v61);
      v63 = &v62[*(v100 + 36)];
      v64 = *(sub_2561EDBA0() + 20);
      v65 = *MEMORY[0x277CE0118];
      v66 = sub_2561EDC80();
      (*(*(v66 - 8) + 104))(&v63[v64], v65, v66);
      __asm { FMOV            V0.2D, #15.0 }

      *v63 = _Q0;
      *&v63[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307D8, &qword_2561EFFD0) + 36)] = 256;
      sub_2561EC2BC();
      v72 = sub_2561EE1C0();
      sub_2561D8584(v36, &qword_27F830748, &qword_2561EFF58);
      *&v117 = v72;
      v58 = sub_2561EE1C0();
    }

    v73 = v134 | v135;
    KeyPath = swift_getKeyPath();
    v75 = swift_allocObject();
    *(v75 + 16) = v73 & 1;
    v77 = v107;
    v76 = v108;
    v92(v108, a1, v107);
    *&v114 = v58;
    *(&v114 + 1) = KeyPath;
    v106 = KeyPath;
    v115 = sub_2561EC400;
    v116 = v75;
    v79 = v111;
    v78 = v112;
    v81 = v109;
    v80 = v110;
    if (v94)
    {
      v120 = v131;
      v121 = v132;
      v122 = v133;
      v117 = v128;
      v118 = v129;
      v119 = v130;
      sub_2561D85E4(&v117, v113);
      v104 = v58;
      sub_2561E9F2C(&v114, &v125, v81, v80, v79, v78, v105);
      v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8307F0, &qword_2561F0008);
      v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830488, &qword_2561EF820);
      v84 = sub_2561EC418();
      v85 = v26;
      v86 = sub_2561EBCE4();
      v87 = sub_2561E1BB8(&qword_27F8304A8, &qword_27F830488, &qword_2561EF820);
      v113[0] = v82;
      v113[1] = MEMORY[0x277D837D0];
      v113[2] = v83;
      v113[3] = MEMORY[0x277CE0BD8];
      v113[4] = v84;
      v113[5] = v86;
      v113[6] = v87;
      v113[7] = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v59 = sub_2561EE1C0();

      sub_2561D8584(&v128, &qword_27F830378, &qword_2561EFF60);
      (*(v85 + 8))(v108, v107);
    }

    else
    {
      *&v117 = v58;
      *(&v117 + 1) = v106;
      *&v118 = sub_2561EC400;
      *(&v118 + 1) = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307F0, &qword_2561F0008);
      sub_2561EC418();
      v59 = sub_2561EE1C0();
      (*(v26 + 8))(v76, v77);
    }

    result = sub_2561D8584(&v128, &qword_27F830378, &qword_2561EFF60);
    a6 = v95;
  }

  else
  {
    v59 = 0;
  }

  *a6 = v59;
  return result;
}

uint64_t sub_2561E9ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 64))
  {
    v9[0] = a3;
    v9[1] = a4;
    v9[2] = a5;
    v9[3] = a6;
    v6 = type metadata accessor for OBKListView(0, v9);
    return sub_2561E2DE0(1, v6);
  }

  else
  {
    v8 = *(a1 + 32);
    return (*(a1 + 24))();
  }
}

uint64_t sub_2561E9F2C@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a7;
  v11 = a1[1];
  v28 = *a1;
  v29 = v11;
  v12 = a2[6];
  if (a2[8])
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {

    v14 = 0;
    v12 = 0xE000000000000000;
    v16 = 2;
  }

  else
  {
    v14 = a2[5];
    v15 = a2[6];

    v16 = 1;
  }

  v25 = v16;
  v27[4] = v14;
  v27[5] = v12;
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  v17 = type metadata accessor for OBKListView(0, v27);
  v18 = sub_2561E2E44(v17);
  v22[3] = v19;
  v23 = v18;
  v24 = v22;
  v20 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307F0, &qword_2561F0008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830488, &qword_2561EF820);
  sub_2561EC418();
  sub_2561EBCE4();
  sub_2561E1BB8(&qword_27F8304A8, &qword_27F830488, &qword_2561EF820);
  sub_2561EE030();
}

uint64_t sub_2561EA160(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = *(a1 + 80);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  sub_2561D85E4(a1, v6);
  return sub_2561EE180();
}

uint64_t sub_2561EA224@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[8])
  {
    v4 = a1[10];
    v5 = a1[9];
  }

  sub_2561EBCE4();
  result = sub_2561EDF50();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_2561EA29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 64))
  {
    v3 = *(a1 + 56);
  }

  sub_2561EBCE4();
  result = sub_2561EDF50();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_2561EA310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *&v66 = a4;
  *(&v66 + 1) = a5;
  *&v65 = a2;
  *(&v65 + 1) = a3;
  v8 = sub_2561EDC60();
  v63 = *(v8 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v8);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830830, &qword_2561F0038);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v64 = &v54 - v13;
  v60 = sub_2561EDB90();
  v58 = *(v60 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830838, &qword_2561F0040);
  v17 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v54 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830748, &qword_2561EFF58);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v21);
  v26 = &v54 - v25;
  v27 = *(a1 + 152);
  v28 = *(a1 + 200);
  v78[2] = *(a1 + 184);
  v78[3] = v28;
  v78[4] = *(a1 + 216);
  v79 = *(a1 + 232);
  v29 = *(a1 + 168);
  v78[0] = v27;
  v78[1] = v29;
  if (*(&v27 + 1))
  {
    v55 = v8;
    v56 = v11;
    v57 = a6;
    v72 = __PAIR128__(*(&v27 + 1), *&v78[0]);
    v30 = *(a1 + 184);
    v31 = *(a1 + 216);
    v75 = *(a1 + 200);
    v76 = v31;
    v77 = *(a1 + 232);
    v32 = *(a1 + 168);
    v74 = v30;
    v73 = v32;
    v33 = swift_allocObject();
    v34 = v75;
    *(v33 + 48) = v74;
    *(v33 + 64) = v34;
    *(v33 + 80) = v76;
    *(v33 + 96) = v77;
    v35 = v73;
    *(v33 + 16) = v72;
    *(v33 + 32) = v35;
    MEMORY[0x28223BE20](v33);
    *(&v54 - 2) = &v72;
    v36 = *(a1 + 184);
    v37 = *(a1 + 216);
    v70[3] = *(a1 + 200);
    v70[4] = v37;
    v71 = *(a1 + 232);
    v38 = *(a1 + 168);
    v70[0] = *(a1 + 152);
    v70[1] = v38;
    v70[2] = v36;
    sub_2561D7E98(v78, &v67, &qword_27F830378, &qword_2561EFF60);
    sub_2561D85E4(v70, &v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830750, &qword_2561EFF68);
    sub_2561EBDFC();
    sub_2561EE180();
    v39 = &v26[*(v19 + 36)];
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307A0, &qword_2561EFF88) + 28);
    v41 = *MEMORY[0x277CDF420];
    v42 = sub_2561EDB10();
    (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
    *v39 = swift_getKeyPath();
    v67 = v65;
    v68 = v66;
    if (*(a1 + *(type metadata accessor for OBKListView(0, &v67) + 84)) == 1)
    {
      sub_2561EDB80();
      sub_2561EC1D8();
      sub_2561EC670(&qword_27F830850, MEMORY[0x277CDDA98]);
      v44 = v59;
      v43 = v60;
      sub_2561EDFA0();
      (*(v58 + 8))(v16, v43);
      v45 = [objc_opt_self() labelColor];
      *&v44[*(v61 + 36)] = sub_2561EE0C0();
      sub_2561EC6B8();
      v46 = sub_2561EE1C0();
      sub_2561D8584(v26, &qword_27F830748, &qword_2561EFF58);
      *&v67 = v46;
      v47 = sub_2561EE1C0();
    }

    else
    {
      sub_2561D7E98(v26, v23, &qword_27F830748, &qword_2561EFF58);
      sub_2561EC1D8();
      v48 = sub_2561EE1C0();
      sub_2561D8584(v26, &qword_27F830748, &qword_2561EFF58);
      *&v67 = v48;
      v49 = v62;
      sub_2561EDC50();
      sub_2561EC670(&qword_27F830840, MEMORY[0x277CDDE40]);
      v50 = v64;
      v51 = v55;
      sub_2561EDFA0();
      (*(v63 + 8))(v49, v51);
      sub_2561EE1F0();
      sub_2561EDB30();
      v52 = &v50[*(v56 + 36)];
      v53 = v68;
      *v52 = v67;
      *(v52 + 1) = v53;
      *(v52 + 2) = v69;
      sub_2561EC570();
      v47 = sub_2561EE1C0();
    }

    result = sub_2561D8584(v78, &qword_27F830378, &qword_2561EFF60);
    a6 = v57;
  }

  else
  {
    v47 = 0;
  }

  *a6 = v47;
  return result;
}

uint64_t sub_2561EAA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830820, &qword_2561F0028);
  v3 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v5 = &v52 - v4;
  v6 = sub_2561EDD20();
  v57 = *(v6 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830780, &qword_2561EFF80);
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830828, &qword_2561F0030);
  v55 = *(v56 - 8);
  v14 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830778, &qword_2561EFF78);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - v19;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830768, &qword_2561EFF70);
  v21 = *(*(v58 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v58);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  if (*(a1 + 16))
  {
    v53 = &v52 - v25;
    sub_2561EDB20();
    sub_2561EDD10();
    sub_2561E1BB8(&qword_27F830788, &qword_27F830780, &qword_2561EFF80);
    sub_2561EC670(&qword_27F830790, MEMORY[0x277CDE330]);
    sub_2561EDF90();
    (*(v57 + 8))(v9, v6);
    (*(v54 + 8))(v13, v10);
    sub_2561EE1F0();
    sub_2561EDBE0();
    (*(v55 + 32))(v20, v16, v56);
    v26 = &v20[*(v17 + 36)];
    v27 = v67;
    *(v26 + 4) = v66;
    *(v26 + 5) = v27;
    *(v26 + 6) = v68;
    v28 = v63;
    *v26 = v62;
    *(v26 + 1) = v28;
    v29 = v65;
    *(v26 + 2) = v64;
    *(v26 + 3) = v29;
    v30 = &v24[*(v58 + 36)];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307A0, &qword_2561EFF88) + 28);
    v32 = *MEMORY[0x277CDF440];
    v33 = sub_2561EDB10();
    (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
    *v30 = swift_getKeyPath();
    sub_2561ECE3C(v20, v24, &qword_27F830778, &qword_2561EFF78);
    v34 = v53;
    sub_2561ECE3C(v24, v53, &qword_27F830768, &qword_2561EFF70);
    sub_2561D7E98(v34, v5, &qword_27F830768, &qword_2561EFF70);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307B0, &qword_2561EFF90);
    sub_2561EBE88();
    sub_2561EC08C();
    sub_2561EDCF0();
    return sub_2561D8584(v34, &qword_27F830768, &qword_2561EFF70);
  }

  else
  {
    v36 = *(a1 + 8);
    *&v62 = *a1;
    *(&v62 + 1) = v36;
    sub_2561EBCE4();

    v37 = sub_2561EDF50();
    v39 = v38;
    v41 = v40;
    v42 = sub_2561EDF20();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    sub_2561DA350(v37, v39, v41 & 1);

    sub_2561EE1F0();
    sub_2561EDBE0();
    v61 = v46 & 1;
    *v5 = v42;
    *(v5 + 1) = v44;
    v5[16] = v46 & 1;
    *(v5 + 3) = v48;
    v49 = v67;
    *(v5 + 6) = v66;
    *(v5 + 7) = v49;
    *(v5 + 8) = v68;
    v50 = v63;
    *(v5 + 2) = v62;
    *(v5 + 3) = v50;
    v51 = v65;
    *(v5 + 4) = v64;
    *(v5 + 5) = v51;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8307B0, &qword_2561EFF90);
    sub_2561EBE88();
    sub_2561EC08C();
    return sub_2561EDCF0();
  }
}

uint64_t OBKListView<>.init(title:detailText:symbolName:caption:primaryButton:secondaryButton:applyListRowBackground:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, ValueMetadata *a15)
{
  v40 = &type metadata for Solarium;
  v17 = sub_2561D9210();
  v41 = v17;
  LOBYTE(v37) = 0;
  v18 = sub_2561EDA60();
  __swift_destroy_boxed_opaque_existential_1(&v37);
  v19 = 0;
  if (v18)
  {
    v40 = &type metadata for Solarium;
    v41 = v17;
    LOBYTE(v37) = 1;
    v19 = sub_2561EDA60();
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  v37 = MEMORY[0x277D84A98];
  v38 = a14;
  v39 = MEMORY[0x277CE1538];
  v40 = a15;
  v20 = type metadata accessor for OBKListView(0, &v37);
  *(a9 + v20[21]) = v19 & 1;
  v21 = a9 + v20[22];
  v42 = 0;
  sub_2561EE130();
  v22 = v38;
  *v21 = v37;
  *(v21 + 8) = v22;
  v23 = a9 + v20[23];
  v42 = 0;
  sub_2561EE130();
  v24 = v38;
  *v23 = v37;
  *(v23 + 8) = v24;
  v25 = *(a8 + 48);
  *(a9 + 96) = *(a8 + 32);
  *(a9 + 112) = v25;
  *(a9 + 128) = *(a8 + 64);
  v26 = *(a8 + 16);
  *(a9 + 64) = *a8;
  *(a9 + 80) = v26;
  v27 = *(a10 + 48);
  *(a9 + 184) = *(a10 + 32);
  *(a9 + 200) = v27;
  *(a9 + 216) = *(a10 + 64);
  v28 = *(a10 + 16);
  *(a9 + 152) = *a10;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 240) = a5;
  *(a9 + 248) = a6;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = a12;
  *(a9 + 56) = a13;
  *(a9 + 144) = *(a8 + 80);
  *(a9 + 232) = *(a10 + 80);
  *(a9 + 168) = v28;
  result = sub_2561E30CC(a7, a9 + v20[19]);
  *(a9 + v20[20]) = (a11 == 2) | a11 & 1;
  return result;
}

uint64_t sub_2561EB344(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_2561EB390()
{
  sub_2561EB5D8(319, &qword_27F830398, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2561EB524();
    if (v1 <= 0x3F)
    {
      sub_2561EB588();
      if (v2 <= 0x3F)
      {
        sub_2561EB5D8(319, &qword_27F8303B8, &type metadata for OBKButton, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2561D7FB4();
          if (v4 <= 0x3F)
          {
            sub_2561EB5D8(319, &qword_27F8306B8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2561EB524()
{
  if (!qword_27F8306A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8306A8, qword_2561EFDC8);
    v0 = sub_2561EE3D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8306A0);
    }
  }
}

unint64_t sub_2561EB588()
{
  result = qword_27F8306B0;
  if (!qword_27F8306B0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F8306B0);
  }

  return result;
}

void sub_2561EB5D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_2561EB638()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_opt_self();
  v4 = sub_2561EE280();
  v5 = [v3 linkWithBundleIdentifier_];

  if (v5)
  {
    return v5;
  }

  v7 = objc_allocWithZone(MEMORY[0x277D37670]);

  return [v7 init];
}

uint64_t sub_2561EB6DC(uint64_t a1, char a2, int a3, int a4, id a5)
{
  result = [a5 view];
  if (result)
  {
    v8 = result;
    [result intrinsicContentSize];

    if (a2)
    {
      return 0x7FF0000000000000;
    }

    else
    {
      return a1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2561EB75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2561EB8A4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2561EB7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2561EB8A4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2561EB824()
{
  sub_2561EB8A4();
  sub_2561EDDF0();
  __break(1u);
}

unint64_t sub_2561EB850()
{
  result = qword_27F8306C0;
  if (!qword_27F8306C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8306C0);
  }

  return result;
}

unint64_t sub_2561EB8A4()
{
  result = qword_27F8306C8;
  if (!qword_27F8306C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8306C8);
  }

  return result;
}

uint64_t sub_2561EB910(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (BYTE2(a6) != 255)
  {
    return sub_2561EBA50(result, a2, a3, a4, a5, a6, BYTE2(a6) & 1, sub_2561EB96C, sub_2561EB9C4);
  }

  return result;
}

uint64_t sub_2561EB96C(uint64_t a1, uint64_t a2, char a3)
{
  sub_2561EB9B4(a1, a2, a3 & 1);
}

uint64_t sub_2561EB9B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2561EB9C4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2561EB9D4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2561EB9E4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2561EB9F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (BYTE2(a6) != 255)
  {
    return sub_2561EBA50(result, a2, a3, a4, a5, a6, BYTE2(a6) & 1, sub_2561EBA70, sub_2561EBAB8);
  }

  return result;
}

uint64_t sub_2561EBA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  if (a7)
  {
    return a9(a1, a2, a3 & 1);
  }

  else
  {
    return a8(a1, a2, a3, a4, a5, a6, (a6 >> 8) & 1);
  }
}

uint64_t sub_2561EBA70(uint64_t a1, uint64_t a2, char a3)
{
  sub_2561DA350(a1, a2, a3 & 1);
}

uint64_t sub_2561EBAB8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_2561EBAC8()
{
  result = qword_27F8306E8;
  if (!qword_27F8306E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8306D8, &qword_2561EFEE8);
    sub_2561EBB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8306E8);
  }

  return result;
}

unint64_t sub_2561EBB4C()
{
  result = qword_27F8306F0;
  if (!qword_27F8306F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8306F8, &qword_2561EFEF8);
    sub_2561E1BB8(&qword_27F830700, &qword_27F830708, &qword_2561EFF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8306F0);
  }

  return result;
}

unint64_t sub_2561EBC04()
{
  result = qword_27F830710;
  if (!qword_27F830710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8306E0, &qword_2561EFEF0);
    sub_2561EB850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830710);
  }

  return result;
}

unint64_t sub_2561EBC90()
{
  result = qword_27F830720;
  if (!qword_27F830720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830720);
  }

  return result;
}

unint64_t sub_2561EBCE4()
{
  result = qword_27F830728;
  if (!qword_27F830728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830728);
  }

  return result;
}

uint64_t sub_2561EBD38()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for OBKListView(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 136) & ~*(v5 + 80));

  return sub_2561E9ECC((v0 + 6), v6, v1, v2, v3, v4);
}

unint64_t sub_2561EBDFC()
{
  result = qword_27F830758;
  if (!qword_27F830758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830750, &qword_2561EFF68);
    sub_2561EBE88();
    sub_2561EC08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830758);
  }

  return result;
}

unint64_t sub_2561EBE88()
{
  result = qword_27F830760;
  if (!qword_27F830760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830768, &qword_2561EFF70);
    sub_2561EBF40();
    sub_2561E1BB8(&qword_27F830798, &qword_27F8307A0, &qword_2561EFF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830760);
  }

  return result;
}

unint64_t sub_2561EBF40()
{
  result = qword_27F830770;
  if (!qword_27F830770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830778, &qword_2561EFF78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830780, &qword_2561EFF80);
    sub_2561EDD20();
    sub_2561E1BB8(&qword_27F830788, &qword_27F830780, &qword_2561EFF80);
    sub_2561EC670(&qword_27F830790, MEMORY[0x277CDE330]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830770);
  }

  return result;
}

unint64_t sub_2561EC08C()
{
  result = qword_27F8307A8;
  if (!qword_27F8307A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8307B0, &qword_2561EFF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8307A8);
  }

  return result;
}

uint64_t sub_2561EC110(uint64_t a1)
{
  v2 = sub_2561EDB10();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x259C5DE00](v5);
}

unint64_t sub_2561EC1D8()
{
  result = qword_27F8307B8;
  if (!qword_27F8307B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830748, &qword_2561EFF58);
    sub_2561E1BB8(&qword_27F8307C0, &qword_27F8307C8, &qword_2561EFFC8);
    sub_2561E1BB8(&qword_27F830798, &qword_27F8307A0, &qword_2561EFF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8307B8);
  }

  return result;
}

unint64_t sub_2561EC2BC()
{
  result = qword_27F8307E0;
  if (!qword_27F8307E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830740, &qword_2561EFF50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830748, &qword_2561EFF58);
    sub_2561EDD80();
    sub_2561EC1D8();
    sub_2561EC670(&qword_27F8307D0, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_2561E1BB8(&qword_27F8307E8, &qword_27F8307D8, &qword_2561EFFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8307E0);
  }

  return result;
}

unint64_t sub_2561EC418()
{
  result = qword_27F8307F8;
  if (!qword_27F8307F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8307F0, &qword_2561F0008);
    sub_2561E1BB8(&qword_27F830800, &qword_27F830808, &unk_2561F0010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8307F8);
  }

  return result;
}

uint64_t sub_2561EC4E0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t objectdestroy_31Tm()
{
  v1 = v0[3];

  v2 = v0[6];

  if (v0[10])
  {
    v3 = v0[8];

    v4 = v0[10];

    v5 = v0[12];
  }

  return swift_deallocObject();
}

unint64_t sub_2561EC570()
{
  result = qword_27F830848;
  if (!qword_27F830848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830830, &qword_2561F0038);
    sub_2561EDC60();
    sub_2561EC670(&qword_27F830840, MEMORY[0x277CDDE40]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830848);
  }

  return result;
}

uint64_t sub_2561EC670(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2561EC6B8()
{
  result = qword_27F830858;
  if (!qword_27F830858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830838, &qword_2561F0040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830748, &qword_2561EFF58);
    sub_2561EDB90();
    sub_2561EC1D8();
    sub_2561EC670(&qword_27F830850, MEMORY[0x277CDDA98]);
    swift_getOpaqueTypeConformance2();
    sub_2561E1BB8(&qword_27F830860, &qword_27F830868, &qword_2561F0048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830858);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);
  v28[0] = *(v0 + 16);
  v28[1] = v1;
  v2 = type metadata accessor for OBKListView(0, v28);
  v3 = *(*(v2 - 1) + 64);
  v4 = (v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80)));
  v5 = v4[1];

  v6 = v4[3];

  if (v4[4])
  {
    v7 = v4[5];
  }

  v8 = v4[7];

  if (v4[9])
  {

    v9 = v4[12];

    if (v4[16])
    {
      v10 = v4[14];

      v11 = v4[16];

      v12 = v4[18];
    }
  }

  if (v4[20])
  {

    v13 = v4[23];

    if (v4[27])
    {
      v14 = v4[25];

      v15 = v4[27];

      v16 = v4[29];
    }
  }

  v17 = v4[31];

  v18 = v4 + v2[19];
  v19 = type metadata accessor for OBKCaption();
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        goto LABEL_13;
      case 1:
        v22 = *(v18 + 1);

        v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F830418, &qword_2561EF3B8) + 64);
        v24 = sub_2561ED970();
        (*(*(v24 - 8) + 8))(&v18[v23], v24);
        break;
      case 0:
LABEL_13:
        v21 = *(v18 + 1);

        break;
    }
  }

  v25 = *(v4 + v2[22] + 8);

  v26 = *(v4 + v2[23] + 8);

  return swift_deallocObject();
}

uint64_t sub_2561ECA54(uint64_t *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v8[0] = v1[2];
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v6 = *(*(type metadata accessor for OBKListView(0, v8) - 8) + 80);

  return sub_2561E7560(a1);
}

uint64_t sub_2561ECB00()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56) > 0.0;
  v3 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v3;
  v4 = type metadata accessor for OBKListView(0, v6);
  return sub_2561E2D40(v2, v4);
}

unint64_t sub_2561ECB80()
{
  result = qword_27F830890;
  if (!qword_27F830890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305B8, &qword_2561EFD18);
    sub_2561E1BB8(&qword_27F830898, &qword_27F8308A0, &qword_2561F0060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830890);
  }

  return result;
}

uint64_t sub_2561ECC38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_2561E7348(v1[5], a1);
}

unint64_t sub_2561ECC74()
{
  result = qword_27F8308C0;
  if (!qword_27F8308C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830598, &qword_2561EFCF8);
    sub_2561ECD00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8308C0);
  }

  return result;
}

unint64_t sub_2561ECD00()
{
  result = qword_27F8308C8;
  if (!qword_27F8308C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8308D0, &qword_2561F0078);
    sub_2561ECDB8();
    sub_2561E1BB8(&qword_27F8308B8, &qword_27F830590, &qword_2561EFCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8308C8);
  }

  return result;
}

unint64_t sub_2561ECDB8()
{
  result = qword_27F8308D8;
  if (!qword_27F8308D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8308E0, &qword_2561F0080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8308D8);
  }

  return result;
}

uint64_t sub_2561ECE3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2561ECEA4()
{
  result = qword_27F8308F0;
  if (!qword_27F8308F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305A0, &qword_2561EFD00);
    sub_2561E1BB8(&qword_27F8308F8, &qword_27F8308B0, &qword_2561F0070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8308F0);
  }

  return result;
}

unint64_t sub_2561ECF5C()
{
  result = qword_27F830900;
  if (!qword_27F830900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830900);
  }

  return result;
}

uint64_t sub_2561ECFB0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2561ECFC0()
{
  result = qword_27F830918;
  if (!qword_27F830918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830910, &qword_2561F0098);
    sub_2561EBB4C();
    sub_2561E1BB8(&qword_27F830920, &qword_27F830928, &qword_2561F00A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830918);
  }

  return result;
}

uint64_t sub_2561ED078(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2561EB9B4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2561ED0C8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2561DA350(result, a2, a3 & 1);
  }

  return result;
}

double sub_2561ED118(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  return result;
}

unint64_t sub_2561ED164()
{
  result = qword_27F830938;
  if (!qword_27F830938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8305C8, &unk_2561EFD20);
    sub_2561ED1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830938);
  }

  return result;
}

unint64_t sub_2561ED1E8()
{
  result = qword_27F830940;
  if (!qword_27F830940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830948, &qword_2561F00B0);
    sub_2561ED274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830940);
  }

  return result;
}

unint64_t sub_2561ED274()
{
  result = qword_27F830950;
  if (!qword_27F830950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830958, &qword_2561F00B8);
    sub_2561ED300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830950);
  }

  return result;
}

unint64_t sub_2561ED300()
{
  result = qword_27F830960;
  if (!qword_27F830960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F830968, &unk_2561F00C0);
    sub_2561E5FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830960);
  }

  return result;
}

const char *iCloudMailSettingsFeatureFlag.feature.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = "iCloudMailSettingsBYOD";
    v8 = "PaintballSecurity";
    if (v1 != 10)
    {
      v8 = "";
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = "iCloudMailSettingsMailAssistant";
    v10 = "MailAppBocceball";
    if (v1 != 7)
    {
      v10 = "iCloudMailSettingsMailImport";
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = "iCloudMailSettingsMain";
    v3 = "iCloudMailSettingsRules";
    v4 = "iCloudMailSettingsMailForwarding";
    if (v1 != 4)
    {
      v4 = "iCloudMailSettingsMailboxBehavior";
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = "iCloudMailSettingsAlias";
    if (v1 != 1)
    {
      v5 = "iCloudMailSettingsAutoReply";
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t iCloudMailSettingsFeatureFlag.isEnabled.getter()
{
  v1 = *v0;
  if (v1 == 11)
  {
    LOBYTE(v4[0]) = 2;
    if (iCloudMailSettingsFeatureFlag.isEnabled.getter() & 1) != 0 || (iCloudMailSettingsFeatureFlag.isEnabled.getter() & 1) != 0 || (LOBYTE(v4[0]) = 5, (iCloudMailSettingsFeatureFlag.isEnabled.getter()))
    {
      v2 = 1;
    }

    else
    {
      LOBYTE(v4[0]) = 3;
      v2 = iCloudMailSettingsFeatureFlag.isEnabled.getter();
    }
  }

  else
  {
    v4[3] = &type metadata for iCloudMailSettingsFeatureFlag;
    v4[4] = sub_2561ED588();
    LOBYTE(v4[0]) = v1;
    v2 = sub_2561EDA60();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return v2 & 1;
}

unint64_t sub_2561ED588()
{
  result = qword_280E1BDF8;
  if (!qword_280E1BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E1BDF8);
  }

  return result;
}

uint64_t iCloudMailSettingsFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_2561EE510();
  MEMORY[0x259C5E720](v1);
  return sub_2561EE530();
}

unint64_t sub_2561ED67C()
{
  result = qword_27F830970;
  if (!qword_27F830970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F830970);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for iCloudMailSettingsFeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for iCloudMailSettingsFeatureFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}