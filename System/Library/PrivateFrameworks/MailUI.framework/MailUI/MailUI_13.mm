uint64_t sub_214C74838@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a4;
  __src = a1;
  v58 = a2;
  v59 = a3;
  v62 = sub_214C7825C;
  v95 = 0;
  v94 = 0;
  __n = 40;
  v61 = 0;
  memset(&v93[1], 0, 0x28uLL);
  v69 = &v89;
  v89 = 0;
  v90 = 0;
  __dst[5] = v58;
  memcpy(__dst, __src, 0x28uLL);
  v24 = __dst[0];
  v25 = __dst[1];
  v26 = __dst[2];
  v27 = __dst[3];
  v28 = __dst[4];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37F30);
  v17 = (*(*(v71 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v78 = &__n - v17;
  v18 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&__n - v17);
  v80 = &__n - v18;
  v95 = &__n - v18;
  v67 = 0;
  v43 = sub_214CCEF74();
  v40 = *(v43 - 8);
  v41 = v43 - 8;
  v19 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v42 = &__n - v19;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37F38);
  v20 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v37 = &__n - v20;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37DA0);
  v21 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v49 = &__n - v21;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DB0);
  v22 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v53 = &__n - v22;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37E08);
  v23 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v57 = &__n - v23;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37E10);
  v30 = *(*(v70 - 8) + 64);
  v29 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](__src);
  v79 = &__n - v29;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v6);
  v81 = &__n - v31;
  v94 = &__n - v31;
  v93[1] = v8;
  v93[2] = v9;
  v93[3] = v10;
  *&v93[4] = v7;
  v93[5] = v11;
  v32 = *(v12 + 32);
  swift_unknownObjectRetain();
  v38 = (*(v59 + 24))(v58);
  swift_unknownObjectRelease();
  v33 = *MEMORY[0x277CE1020];
  v36 = sub_214CCEF64();
  v34 = *(v36 - 8);
  v35 = v36 - 8;
  (*(v34 + 104))(v37, v33);
  v13 = *(v34 + 56);
  v68 = 1;
  v13(v37, v61);
  v39 = sub_214CCEF44();
  sub_214C77D88(v37);

  v44 = v93;
  v93[0] = v39;
  (*(v40 + 104))(v42, *MEMORY[0x277CE1048], v43);
  sub_214CCEAF4();
  (*(v40 + 8))(v42, v43);
  sub_214A75F80();
  v45 = *(__src + 4);
  swift_unknownObjectRetain();
  v46 = (*(v59 + 32))(v58);
  swift_unknownObjectRelease();
  v48 = &v92;
  v92 = v46;
  sub_214C77E30();
  sub_214CCEC04();
  sub_214A75F80();
  sub_214C77ED4(v49);
  v52 = sub_214CCE8E4();
  v50 = *__src;
  sub_214C77F8C();
  sub_214CCED64();
  sub_214C78034(v53);
  v54 = *(__src + 1);
  v56 = sub_214C78114();
  sub_214B68808();
  sub_214CCED04();
  sub_214C78034(v57);
  v73 = sub_214C781B8();
  sub_214B061F0(v79, v70, v81);
  sub_214C78034(v79);
  v65 = sub_214CCE534();
  v60 = *(__src + 2);
  sub_214C750F0(__src, v91);
  v63 = v82;
  v82[2] = v58;
  v82[3] = v59;
  v82[4] = __src;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37F78);
  sub_214C78278();
  sub_214CCF064();
  sub_214C751EC();
  v74 = sub_214C78300();
  sub_214B061F0(v78, v71, v80);
  sub_214C78388(v78);
  v87 = sub_214CCF054();
  v88 = v14 & 1 & v68;
  v72 = MEMORY[0x277CE1180];
  v75 = MEMORY[0x277CE1170];
  sub_214B061F0(&v87, MEMORY[0x277CE1180], v69);
  sub_214C785D8(v81, v79);
  v77 = v86;
  v86[0] = v79;
  sub_214C78798(v80, v78);
  v86[1] = v78;
  v84 = v89;
  v85 = v90;
  v86[2] = &v84;
  v83[0] = v70;
  v83[1] = v71;
  v83[2] = v72;
  v82[5] = v73;
  v82[6] = v74;
  v82[7] = v75;
  sub_214C663A4(v77, 3uLL, v83, v76);
  sub_214C78388(v78);
  sub_214C78034(v79);
  sub_214C78388(v80);
  return sub_214C78034(v81);
}

void *sub_214C750F0(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = a1[3];
  v4 = a1[4];
  swift_unknownObjectRetain();
  result = a2;
  a2[4] = v4;
  return result;
}

unint64_t sub_214C75164()
{
  v2 = qword_27CA37D88;
  if (!qword_27CA37D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37D80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37D88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C75218()
{
  v2 = qword_27CA37D90;
  if (!qword_27CA37D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37D70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37D90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C752A0(uint64_t a1)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D98) + 44);

  v8 = a1 + v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37DA0) + 36);

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220) + 28);
  v1 = sub_214CCEF74();
  (*(*(v1 - 8) + 8))(v8 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DB0);

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DB8) + 48);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DC0) + 44);
  v14 = a1 + v7 + v10 + v11;
  sub_214B072EC(*v14, *(v14 + 8), *(v14 + 16) & 1);

  v12 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DC8) + 36);

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DD0) + 28);
  v2 = sub_214CCE9F4();
  (*(*(v2 - 8) + 8))(v12 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DD8);

  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DE0) + 48);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DE8);
  if (!(*(*(v16 - 8) + 48))(v14 + v15, 1))
  {
    v5 = a1 + v7 + v10 + v11 + v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF0) + 44);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF8);
    (*(*(v3 - 8) + 8))(v5);
  }

  return a1;
}

unint64_t sub_214C75608()
{
  v2 = qword_27CA37E00;
  if (!qword_27CA37E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37D78);
    sub_214C75218();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37E00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C756AC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D98) + 44);
  v23 = *(a1 + v22);

  v30 = a2 + v22;
  *(a2 + v22) = v23;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37DA0) + 36);
  v27 = (a1 + v22 + v24);
  v25 = *v27;

  *(v30 + v24) = v25;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220) + 28);
  v2 = sub_214CCEF74();
  (*(*(v2 - 8) + 16))(a2 + v22 + v24 + v26, &v27[v26]);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DB0) + 36);
  v29 = *(a1 + v22 + v28);

  *(v30 + v28) = v29;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37E08);
  memcpy((a2 + v22 + *(v3 + 36)), (a1 + v22 + *(v3 + 36)), 0x29uLL);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37E10);
  memcpy((a2 + v22 + *(v4 + 36)), (a1 + v22 + *(v4 + 36)), 0x30uLL);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DB8);
  v32 = *(v31 + 48);
  v33 = a1 + v22 + v32;
  v34 = a2 + v22 + v32;
  *v34 = *v33;
  *(v34 + 16) = *(v33 + 16);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DC0) + 44);
  v36 = *(v33 + v35);
  v37 = *(v33 + v35 + 8);
  v38 = *(v33 + v35 + 16);
  sub_214B0755C(v36, v37, v38 & 1);
  v5 = v34 + v35;
  v45 = v34 + v35;
  *v5 = v36;
  *(v5 + 8) = v37;
  *(v5 + 16) = v38 & 1;
  v39 = *(v33 + v35 + 24);

  *(v45 + 24) = v39;
  v40 = *(v33 + v35 + 32);

  *(v45 + 32) = v40;
  *(v45 + 40) = *(v33 + v35 + 40);
  *(v45 + 48) = *(v33 + v35 + 48);
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DC8) + 36);
  v44 = (v33 + v35 + v41);
  v42 = *v44;

  *(v45 + v41) = v42;
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DD0) + 28);
  v6 = sub_214CCE9F4();
  (*(*(v6 - 8) + 16))(v34 + v35 + v41 + v43, &v44[v43]);
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DD8) + 36);
  v48 = (v33 + v35 + v46);
  v47 = *v48;

  *(v45 + v46) = v47;
  v49 = v48[1];

  *(v34 + v35 + v46 + 8) = v49;
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DE0) + 48);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DE8);
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v33 + v35 + v50, 1))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA37E18);
    memcpy((a2 + v22 + v32 + v35 + v50), (a1 + v22 + v32 + v35 + v50), *(*(v9 - 8) + 64));
  }

  else
  {
    v16 = a1 + v22 + v32 + v35 + v50;
    v17 = a2 + v22 + v32 + v35 + v50;
    *v17 = *v16;
    *(v17 + 16) = *(v16 + 16);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF0);
    v15 = v17 + *(v7 + 44);
    v14 = v16 + *(v7 + 44);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF8);
    (*(*(v8 - 8) + 16))(v15, v14);
    v18 = *(v51 + 36);
    v19 = *(v16 + v18);

    *(v17 + v18) = v19;
    (*(v52 + 56))();
  }

  v10 = a2 + v22 + *(v31 + 64);
  v11 = a1 + v22 + *(v31 + 64);
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D78);
  memcpy((a2 + *(v12 + 36)), (a1 + *(v12 + 36)), 0x70uLL);
  return a2;
}

uint64_t sub_214C75DD4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = &v125;
  v28 = a3;
  v29 = a2;
  v91 = a1;
  v31 = a4;
  v75 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0u;
  v125 = 0u;
  v97 = 0;
  v134 = a2;
  v4 = *a1;
  v5 = a1[1];
  v133 = *(a1 + 4);
  v132 = v5;
  v131 = v4;
  v54 = v4;
  v55 = v5;
  v56 = v133;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37F90);
  v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32 - 8);
  v34 = v27 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DE8);
  v36 = *(v35 - 8);
  v37 = v36;
  v39 = *(v36 + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = v27 - v41;
  MEMORY[0x28223BE20](v27 - v41);
  v40 = v27 - v41;
  MEMORY[0x28223BE20](v6);
  v42 = v27 - v41;
  v130 = v27 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA37E18);
  v45 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = v27 - v47;
  MEMORY[0x28223BE20](v7);
  v46 = v27 - v47;
  MEMORY[0x28223BE20](v8);
  v48 = v27 - v47;
  v129 = v27 - v47;
  v82 = sub_214CCE9F4();
  v49 = *(v82 - 8);
  v80 = v49;
  MEMORY[0x28223BE20](v75);
  v81 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_214CCE4A4();
  v50 = *(v71 - 8);
  v70 = v50;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v71 - 8);
  v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = v27 - v52;
  MEMORY[0x28223BE20](v27 - v52);
  v69 = v27 - v52;
  MEMORY[0x28223BE20](v27 - v52);
  v72 = v27 - v52;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DC8);
  v53 = (*(*(v84 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v84 - 8);
  v86 = v27 - v53;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DD8);
  v57 = v88;
  v58 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v60 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  v90 = v27 - v60;
  v59 = v27 - v60;
  v11 = MEMORY[0x28223BE20](v10);
  v87 = v27 - v60;
  v61 = v27 - v60;
  v128 = v27 - v60;
  *&v125 = v12;
  *(&v125 + 1) = v13;
  *&v126 = v14;
  *(&v126 + 1) = v11;
  v127 = v15;
  v74 = 1;
  v76 = 1;
  sub_214CCE494();
  v67 = "";
  sub_214CCF614();
  v62 = v16;
  sub_214CCE484();

  v63 = v91[4];
  swift_unknownObjectRetain();
  v66 = [v63 displayName];
  v64 = sub_214CCF564();
  v65 = v17;
  swift_unknownObjectRelease();
  sub_214CCE474();

  sub_214CCF614();
  v68 = v18;
  sub_214CCE484();

  (*(v70 + 16))(v69, v72, v71);
  (*(v70 + 32))(v73, v69, v71);
  (*(v70 + 8))(v72, v71);
  sub_214CCE4C4();
  v115 = v75;
  v116 = v75;
  v77 = 0;
  LOBYTE(v117) = 0;
  HIBYTE(v117) = v74;
  v26 = v117;
  v25 = v75;
  v111 = sub_214CCEA54();
  v112 = v19;
  v113 = v20;
  v114 = v21;
  v108[0] = v111;
  v108[1] = v19;
  v109 = v20;
  v110 = v21;
  v78 = v108;
  sub_214CCEE24();
  sub_214B07618(v78);
  v102[0] = v118;
  v102[1] = v119;
  v103 = v120;
  v104 = v121;
  v105 = v122;
  v106 = v123;
  v107 = v124;
  (*(v80 + 104))(v81, *MEMORY[0x277CE0B30], v82);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E70);
  sub_214B7A274();
  v83 = v102;
  sub_214CCEBE4();
  (*(v80 + 8))(v81, v82);
  sub_214B1B288(v83);
  v85 = sub_214CCE9A4();
  sub_214C78BE8();
  sub_214CCECF4();

  sub_214C78D18(v86);
  v89 = sub_214C78DF8();
  sub_214B061F0(v90, v88, v87);
  sub_214C78EA0(v90);
  v92 = v91[4];
  swift_unknownObjectRetain();
  v95 = [v92 pathComponents];
  v94 = sub_214CCF7E4();
  swift_unknownObjectRelease();
  v101[2] = v94;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  sub_214B50C54();
  v96 = sub_214CCFA94();

  if (v96)
  {
    (*(v37 + 56))(v44, 1, 1, v35);
    sub_214C78FBC();
    sub_214C66600(v44, v35, v46);
    sub_214C790EC(v44);
    sub_214C791E4(v46, v48);
  }

  else
  {
    v27[1] = v91[2];
    sub_214C750F0(v91, v99);
    v27[5] = v27;
    MEMORY[0x28223BE20](v27);
    v22 = v28;
    v27[2] = &v27[-6];
    v27[-4] = v29;
    v27[-3] = v22;
    v25 = v23;
    v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF8);
    v27[4] = sub_214C797F0();
    sub_214C11934();
    sub_214CCF024();
    sub_214C751EC();
    v98 = sub_214C777B8();
    sub_214C79064();
    v27[6] = &v98;
    sub_214CCEC04();
    sub_214A75F80();
    sub_214C79910(v34);
    v27[7] = sub_214C78FBC();
    sub_214B061F0(v40, v35, v42);
    sub_214C7999C(v40);
    v97 = v40;
    sub_214C79A50(v42, v38);
    sub_214B061F0(v38, v35, v40);
    sub_214C7999C(v38);
    sub_214C79A50(v40, v44);
    (*(v37 + 56))(v44, 0, 1, v35);
    sub_214C66600(v44, v35, v46);
    sub_214C790EC(v44);
    sub_214C791E4(v46, v48);
    sub_214C7999C(v40);
    sub_214C7999C(v42);
  }

  sub_214C7938C(v61, v59);
  v101[0] = v59;
  sub_214C7957C(v48, v46);
  v101[1] = v46;
  v100[0] = v57;
  v100[1] = v43;
  v99[5] = v89;
  v99[6] = sub_214C7973C();
  sub_214C663A4(v101, 2uLL, v100, v31);
  sub_214C790EC(v46);
  sub_214C78EA0(v59);
  sub_214C790EC(v48);
  return sub_214C78EA0(v61);
}

uint64_t sub_214C76954@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v17 = a1;
  v15 = a2;
  v16 = a3;
  v19 = sub_214C79B44;
  v38 = 0;
  v37 = 0;
  v39 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF8);
  v26 = *(v32 - 8);
  v27 = v32 - 8;
  v11 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v30 = &v11 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v31 = &v11 - v12;
  v38 = &v11 - v12;
  v37 = v6;
  v13 = *(v6 + 32);
  swift_unknownObjectRetain();
  v25 = [v13 pathComponents];
  v14 = sub_214CCF7E4();
  swift_unknownObjectRelease();
  v24 = &v36;
  v36 = v14;
  KeyPath = swift_getKeyPath();
  sub_214C750F0(v17, v35);
  v7 = swift_allocObject();
  v8 = v16;
  v9 = v17;
  v20 = v7;
  v7[2] = v15;
  v7[3] = v8;
  memcpy(v7 + 4, v9, 0x28uLL);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38008);
  v23 = sub_214C79B60();
  sub_214C79888();
  sub_214CCF0D4();
  MEMORY[0x277D82BD8](v25);
  v29 = sub_214C797F0();
  sub_214B061F0(v30, v32, v31);
  v34 = *(v26 + 8);
  v33 = v26 + 8;
  v34(v30, v32);
  (*(v26 + 16))(v30, v31, v32);
  sub_214B061F0(v30, v32, v28);
  v34(v30, v32);
  return (v34)(v31, v32);
}

uint64_t sub_214C76CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v63 = a1;
  v93 = a2;
  v149 = 0;
  v147 = 0;
  v148 = 0;
  v146 = 0;
  v150 = a3;
  v76 = 0;
  v84 = sub_214CCE9F4();
  v81 = *(v84 - 8);
  v82 = v84 - 8;
  v58 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v83 = &v15 - v58;
  v73 = sub_214CCE4A4();
  v71 = *(v73 - 8);
  v72 = v73 - 8;
  v59 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73);
  v75 = &v15 - v59;
  v60 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v15 - v59);
  v70 = &v15 - v60;
  v61 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v15 - v60);
  v74 = &v15 - v61;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DC8);
  v62 = (*(*(v86 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86);
  v88 = &v15 - v62;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DD8);
  v65 = *(*(v90 - 8) + 64);
  v64 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v92 = &v15 - v64;
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v89 = &v15 - v66;
  v149 = &v15 - v66;
  v98 = *v7;
  v99 = v7[1];
  v147 = v98;
  v148 = v99;
  v146 = v8;
  v77 = 1;
  sub_214CCE494();
  v68 = "";
  *&v79[1] = 1;
  sub_214CCF614();
  v67 = v9;
  sub_214CCE484();

  sub_214CCE474();
  sub_214CCF614();
  v69 = v10;
  sub_214CCE484();

  (*(v71 + 16))(v70, v74, v73);
  (*(v71 + 32))(v75, v70, v73);
  (*(v71 + 8))(v74, v73);
  sub_214CCE4C4();
  v136 = 0;
  v137 = 0;
  v138 = *v79 & 0x100;
  v132 = sub_214CCEA54();
  v133 = v11;
  v134 = v12;
  v135 = v13;
  v78 = v129;
  v129[0] = v132;
  v129[1] = v11;
  v130 = v12 & 1 & v79[1];
  v131 = v13;
  sub_214CCEE24();
  sub_214B07618(v78);
  v85 = v123;
  v123[0] = v139;
  v123[1] = v140;
  v124 = v141 & 1 & v79[1];
  v125 = v142;
  v126 = v143;
  v127 = v144;
  v128 = v145 & 1 & v79[1];
  (*(v81 + 104))(v83, *MEMORY[0x277CE0B30], v84);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E70);
  sub_214B7A274();
  sub_214CCEBE4();
  (*(v81 + 8))(v83, v84);
  sub_214B1B288(v85);
  v87 = sub_214CCE904();
  sub_214C78BE8();
  sub_214CCECF4();

  sub_214C78D18(v88);
  v91 = sub_214C78DF8();
  sub_214B061F0(v92, v90, v89);
  sub_214C78EA0(v92);

  v95 = *(v93 + 32);
  swift_unknownObjectRetain();
  v94 = [v95 pathComponents];
  v97 = sub_214CCF7E4();
  swift_unknownObjectRelease();
  v119 = v97;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  sub_214BB8FF0();
  sub_214CCF434();
  v100 = v118;

  v116[0] = v98;
  v116[1] = v99;
  v117 = v100;
  if (v99)
  {
    sub_214A61AD0(v116, v102);
    if (*(&v117 + 1))
    {
      v54 = v116;
      v52 = &v101;
      v101 = v117;
      v53 = v102;
      v55 = MEMORY[0x21605D8D0](v102[0], v102[1], v117, *(&v117 + 1));
      sub_214A61B48();
      sub_214A61B48();
      sub_214A61B48();
      v56 = v55;
      goto LABEL_7;
    }

    sub_214A61B48();
    goto LABEL_9;
  }

  if (*(&v117 + 1))
  {
LABEL_9:
    sub_214A76610();
    v56 = 0;
    goto LABEL_7;
  }

  sub_214A61B48();
  v56 = 1;
LABEL_7:
  v51 = v56;

  MEMORY[0x277D82BD8](v94);

  if (v51)
  {
    v24 = v114;
    memset(v114, 0, sizeof(v114));
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38020);
    sub_214B0B3D8();
    sub_214C66600(v24, v23, v115);
    v25 = v115[0];
    v26 = v115[1];
    v27 = v115[2];
    sub_214B0DC0C(v115[0]);
    v120 = v25;
    v121 = v26;
    v122 = v27;
    v48 = v25;
    v49 = v26;
    v50 = v27;
  }

  else
  {
    v28 = @"chevron.forward";
    MEMORY[0x277D82BE0](@"chevron.forward");
    sub_214CCF564();
    v29 = sub_214CCEF34();
    MEMORY[0x277D82BD8](v28);
    v31 = v108;
    v108[0] = v29;
    v30 = sub_214CCE994();
    sub_214CCECF4();

    sub_214A75F80();
    v32 = v107;
    v107[0] = v108[1];
    v107[1] = v108[2];
    v107[2] = v108[3];
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38020);
    v41 = sub_214B0B3D8();
    v44 = v109;
    sub_214B061F0(v32, v40, v109);
    sub_214B0B504();
    v33 = v109[0];
    v34 = v109[1];
    v35 = v109[2];

    v36 = v105;
    v105[0] = v33;
    v105[1] = v34;
    v105[2] = v35;
    v43 = v106;
    sub_214B061F0(v105, v40, v106);
    sub_214B0B504();
    v37 = v106[0];
    v38 = v106[1];
    v39 = v106[2];

    v42 = v103;
    v103[0] = v37;
    v103[1] = v38;
    v103[2] = v39;
    sub_214C66600(v103, v40, v104);
    sub_214B0DCF0(v42);
    v45 = v104[0];
    v46 = v104[1];
    v47 = v104[2];
    sub_214B0DC0C(v104[0]);
    v120 = v45;
    v121 = v46;
    v122 = v47;
    sub_214B0B504();
    sub_214B0B504();
    v48 = v45;
    v49 = v46;
    v50 = v47;
  }

  v18 = v50;
  v17 = v49;
  v16 = v48;
  sub_214C7938C(v89, v92);
  v21 = v113;
  v113[0] = v92;
  v22 = v112;
  v112[0] = v16;
  v112[1] = v17;
  v112[2] = v18;
  v113[1] = v112;
  v19 = v111;
  v111[0] = v90;
  v111[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38030);
  v20 = v110;
  v110[0] = v91;
  v110[1] = sub_214C79BE8();
  sub_214C663A4(v21, 2uLL, v19, v57);
  sub_214B0DCF0(v22);
  sub_214C78EA0(v92);
  sub_214B0DCF0(&v120);
  return sub_214C78EA0(v89);
}

uint64_t sub_214C77878()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214C778FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 169))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 48)))
      {
        v3 = *(a1 + 48);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214C77A14(uint64_t result, int a2, int a3)
{
  v3 = (result + 169);
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 112) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 152) = 0;
    *(result + 144) = 0;
    *(result + 136) = 0;
    *(result + 128) = 0;
    *(result + 160) = 0;
    *(result + 168) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 48) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_214C77C44()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_214C77C8C()
{
  v2 = qword_27CA37F20;
  if (!qword_27CA37F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37F28);
    sub_214C71BDC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37F20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C77D88(uint64_t a1)
{
  v3 = sub_214CCEF64();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_214C77E30()
{
  v2 = qword_27CA37F40;
  if (!qword_27CA37F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37DA0);
    sub_214C22340();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37F40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C77ED4(uint64_t a1)
{

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37DA0) + 36);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220) + 28);
  v1 = sub_214CCEF74();
  (*(*(v1 - 8) + 8))(v3 + v4);
  return a1;
}

unint64_t sub_214C77F8C()
{
  v2 = qword_27CA37F50;
  if (!qword_27CA37F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37DB0);
    sub_214C77E30();
    sub_214B0B5F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37F50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C78034(uint64_t a1)
{

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37DA0) + 36);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220) + 28);
  v1 = sub_214CCEF74();
  (*(*(v1 - 8) + 8))(v3 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DB0);

  return a1;
}

unint64_t sub_214C78114()
{
  v2 = qword_27CA37F68;
  if (!qword_27CA37F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37E08);
    sub_214C77F8C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37F68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C781B8()
{
  v2 = qword_27CA37F70;
  if (!qword_27CA37F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37E10);
    sub_214C78114();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37F70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C78278()
{
  v2 = qword_27CA37F80;
  if (!qword_27CA37F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37F78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37F80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C78300()
{
  v2 = qword_27CA37F88;
  if (!qword_27CA37F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37F30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37F88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C78388(uint64_t a1)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DC0) + 44);
  sub_214B072EC(*(a1 + v6), *(a1 + v6 + 8), *(a1 + v6 + 16) & 1);

  v7 = a1 + v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DC8) + 36);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DD0) + 28);
  v1 = sub_214CCE9F4();
  (*(*(v1 - 8) + 8))(v7 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DD8);

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DE0) + 48);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DE8);
  if (!(*(*(v10 - 8) + 48))(a1 + v6 + v9, 1))
  {
    v4 = a1 + v6 + v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF0) + 44);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF8);
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

char *sub_214C785D8(char *a1, char *a2)
{
  v6 = *a1;

  *a2 = v6;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37DA0) + 36);
  v8 = *&a1[v7];

  *&a2[v7] = v8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220) + 28);
  v2 = sub_214CCEF74();
  (*(*(v2 - 8) + 16))(&a2[v7 + v9], &a1[v7 + v9]);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DB0) + 36);
  v11 = *&a1[v10];

  *&a2[v10] = v11;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37E08);
  memcpy(&a2[*(v3 + 36)], &a1[*(v3 + 36)], 0x29uLL);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37E10);
  memcpy(&a2[*(v4 + 36)], &a1[*(v4 + 36)], 0x30uLL);
  return a2;
}

uint64_t sub_214C78798(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DC0) + 44);
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = *(a1 + v16 + 16);
  sub_214B0755C(v17, v18, v19 & 1);
  v2 = a2 + v16;
  v26 = a2 + v16;
  *v2 = v17;
  *(v2 + 8) = v18;
  *(v2 + 16) = v19 & 1;
  v20 = *(a1 + v16 + 24);

  *(v26 + 24) = v20;
  v21 = *(a1 + v16 + 32);

  *(v26 + 32) = v21;
  *(v26 + 40) = *(a1 + v16 + 40);
  *(v26 + 48) = *(a1 + v16 + 48);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DC8) + 36);
  v25 = (a1 + v16 + v22);
  v23 = *v25;

  *(v26 + v22) = v23;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DD0) + 28);
  v3 = sub_214CCE9F4();
  (*(*(v3 - 8) + 16))(a2 + v16 + v22 + v24, &v25[v24]);
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DD8) + 36);
  v29 = (a1 + v16 + v27);
  v28 = *v29;

  *(v26 + v27) = v28;
  v30 = v29[1];

  *(a2 + v16 + v27 + 8) = v30;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DE0) + 48);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DE8);
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(a1 + v16 + v31, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA37E18);
    memcpy((a2 + v16 + v31), (a1 + v16 + v31), *(*(v6 - 8) + 64));
  }

  else
  {
    v10 = a1 + v16 + v31;
    v11 = a2 + v16 + v31;
    *v11 = *v10;
    *(v11 + 16) = *(v10 + 16);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF0);
    v9 = v11 + *(v4 + 44);
    v8 = v10 + *(v4 + 44);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF8);
    (*(*(v5 - 8) + 16))(v9, v8);
    v12 = *(v32 + 36);
    v13 = *(v10 + v12);

    *(v11 + v12) = v13;
    (*(v33 + 56))();
  }

  return a2;
}

unint64_t sub_214C78BE8()
{
  v2 = qword_27CA37FB8;
  if (!qword_27CA37FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37DC8);
    sub_214B7A274();
    sub_214C78C90();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37FB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C78C90()
{
  v2 = qword_27CA37FC0;
  if (!qword_27CA37FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37DD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37FC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C78D18(uint64_t a1)
{
  sub_214B072EC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DC8) + 36);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DD0) + 28);
  v1 = sub_214CCE9F4();
  (*(*(v1 - 8) + 8))(v3 + v4);
  return a1;
}

unint64_t sub_214C78DF8()
{
  v2 = qword_27CA37FC8;
  if (!qword_27CA37FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37DD8);
    sub_214C78BE8();
    sub_214B0B47C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37FC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C78EA0(uint64_t a1)
{
  sub_214B072EC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DC8) + 36);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DD0) + 28);
  v1 = sub_214CCE9F4();
  (*(*(v1 - 8) + 8))(v3 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DD8);

  return a1;
}

unint64_t sub_214C78FBC()
{
  v2 = qword_27CA37FE0;
  if (!qword_27CA37FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37DE8);
    sub_214C79064();
    sub_214B0B5F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37FE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C79064()
{
  v2 = qword_27CA37FE8;
  if (!qword_27CA37FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37F90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37FE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C790EC(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DE8);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF0) + 44);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF8);
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

_BYTE *sub_214C791E4(_BYTE *a1, _BYTE *a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DE8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA37E18);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[16] = a1[16];
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF0);
    v7 = &a2[*(v2 + 44)];
    v6 = &a1[*(v2 + 44)];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF8);
    (*(*(v3 - 8) + 32))(v7, v6);
    *&a2[*(v10 + 36)] = *&a1[*(v10 + 36)];
    (*(v11 + 56))();
  }

  return a2;
}

uint64_t sub_214C7938C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_214B0755C(*a1, v5, v6 & 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  v7 = *(a1 + 24);

  *(a2 + 24) = v7;
  v8 = *(a1 + 32);

  *(a2 + 32) = v8;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DC8) + 36);
  v10 = *(a1 + v9);

  *(a2 + v9) = v10;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DD0) + 28);
  v2 = sub_214CCE9F4();
  (*(*(v2 - 8) + 16))(a2 + v9 + v11, a1 + v9 + v11);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DD8) + 36);
  v14 = *(a1 + v13);

  *(a2 + v13) = v14;
  v16 = *(a1 + v13 + 8);

  result = a2;
  *(a2 + v13 + 8) = v16;
  return result;
}

_BYTE *sub_214C7957C(_BYTE *a1, _BYTE *a2)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DE8);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA37E18);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[16] = a1[16];
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF0);
    v7 = &a2[*(v2 + 44)];
    v6 = &a1[*(v2 + 44)];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF8);
    (*(*(v3 - 8) + 16))(v7, v6);
    v8 = *(v12 + 36);
    v9 = *&a1[v8];

    *&a2[v8] = v9;
    (*(v13 + 56))();
  }

  return a2;
}

unint64_t sub_214C7973C()
{
  v2 = qword_27CA37FF0;
  if (!qword_27CA37FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CA37E18);
    sub_214C78FBC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37FF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C797F0()
{
  v2 = qword_27CA37FF8;
  if (!qword_27CA37FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37DF8);
    sub_214C79888();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37FF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C79888()
{
  v2 = qword_27CA38000;
  if (!qword_27CA38000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38008);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38000);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C79910(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF0) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF8);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_214C7999C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF0) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF8);
  (*(*(v1 - 8) + 8))(a1 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DE8);

  return a1;
}

uint64_t sub_214C79A50(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF0) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DF8);
  (*(*(v2 - 8) + 16))(a2 + v4, a1 + v4);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37DE8) + 36);
  v8 = *(a1 + v7);

  result = a2;
  *(a2 + v7) = v8;
  return result;
}

unint64_t sub_214C79B60()
{
  v2 = qword_27CA38010;
  if (!qword_27CA38010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA34EC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C79BE8()
{
  v2 = qword_27CA38038;
  if (!qword_27CA38038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38030);
    sub_214B0B3D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38038);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C79D14()
{
  v2 = qword_27CA38050;
  if (!qword_27CA38050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38048);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38050);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C79D9C()
{
  v2 = qword_27CA38058;
  if (!qword_27CA38058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38058);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C79E24()
{
  v2 = qword_27CA38068;
  if (!qword_27CA38068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8);
    sub_214B0C24C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38068);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C79EC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCF0C4();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37CB8);
  result = a2;
  *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
  return result;
}

uint64_t sub_214C79F58(uint64_t a1)
{
  v3 = *(sub_214CCE374() + 20);
  v1 = sub_214CCE4D4();
  (*(*(v1 - 8) + 8))(a1 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38048);

  return a1;
}

char *sub_214C79FFC(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(sub_214CCE374() + 20);
  v2 = sub_214CCE4D4();
  (*(*(v2 - 8) + 16))(&a2[v4], &a1[v4]);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38048);
  v6 = *(v8 + 52);
  v7 = *&a1[v6];

  result = a2;
  *&a2[v6] = v7;
  *&a2[*(v8 + 56)] = *&a1[*(v8 + 56)];
  return result;
}

unint64_t sub_214C7A100()
{
  v2 = qword_27CA380A8;
  if (!qword_27CA380A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA380A0);
    sub_214C7A1A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA380A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C7A1A4()
{
  v2 = qword_27CA380B0;
  if (!qword_27CA380B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA380B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA380B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C7A22C()
{
  v2 = qword_27CA380C8;
  if (!qword_27CA380C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA380C0);
    sub_214C7A100();
    sub_214B0B47C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA380C8);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_214C7A2D4()
{
}

unint64_t sub_214C7A330()
{
  v2 = qword_27CA380D8;
  if (!qword_27CA380D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38088);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA380D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C7A3B8()
{
  v2 = qword_27CA380E0;
  if (!qword_27CA380E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38090);
    sub_214C7A330();
    sub_214B0B47C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA380E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C7A460()
{
  v2 = qword_27CA380E8;
  if (!qword_27CA380E8)
  {
    sub_214CCE554();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA380E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C7A4E0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38088);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38090);

  return a1;
}

unint64_t sub_214C7A5A0()
{
  v2 = qword_27CA380F0;
  if (!qword_27CA380F0)
  {
    sub_214CCFC94();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA380F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C7A63C()
{
  v2 = qword_27CA380F8;
  if (!qword_27CA380F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38098);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA380F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C7A6C4()
{
  v2 = qword_27CA38100;
  if (!qword_27CA38100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38078);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C7A74C()
{
  v2 = qword_27CA38108;
  if (!qword_27CA38108)
  {
    sub_214CCE344();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38108);
    return WitnessTable;
  }

  return v2;
}

void *sub_214C7A7CC(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v7 = a1[3];

  a2[3] = v7;
  v9 = a1[4];

  result = a2;
  a2[4] = v9;
  return result;
}

unint64_t sub_214C7A878()
{
  v2 = qword_27CA38110;
  if (!qword_27CA38110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38078);
    sub_214CCE344();
    sub_214C7A6C4();
    sub_214C7A74C();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38110);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C7A9A4()
{
  v2 = qword_27CA38118;
  if (!qword_27CA38118)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38118);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C7AA40()
{
  v2 = qword_27CA38120;
  if (!qword_27CA38120)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38120);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C7AB60()
{
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v1 = sub_214CCE324();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 201) & ~*(*(v1 - 8) + 80));

  return sub_214C6F5E0((v0 + 32), v2, v4, v5);
}

uint64_t sub_214C7AD48()
{
  type metadata accessor for MUIPriorityMessageListBackgroundDecorationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38130);
  return sub_214CCF5B4();
}

unint64_t type metadata accessor for MUIPriorityMessageListBackgroundDecorationView()
{
  v2 = qword_27CA38158;
  if (!qword_27CA38158)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38158);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214C7AE04()
{
  v2 = *(v0 + OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_visualEffectView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double sub_214C7AE4C()
{
  v2 = (v0 + OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_backgroundCornerRadius);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_214C7AEB0(double a1)
{
  v3 = (v1 + OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_backgroundCornerRadius);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_214C7AF1C()
{
  v2 = (v0 + OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_isAnimating);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_214C7AF84(char a1)
{
  v3 = (v1 + OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_isAnimating);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

_BYTE *sub_214C7B06C(double a1, double a2, double a3, double a4)
{
  v18 = 0;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v6 = OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_visualEffectView;
  sub_214C7B1CC();
  *v6 = sub_214A61730();
  v7 = OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_backgroundCornerRadius;
  [objc_opt_self() preferredMessageListBackgroundCornerRadius];
  *&v18[v7] = v4;
  v18[OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_isAnimating] = 0;
  v13.receiver = v18;
  v13.super_class = MUIPriorityMessageListBackgroundDecorationView;
  v12 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  MEMORY[0x277D82BE0](v12);
  v18 = v12;
  sub_214C7B230();
  MEMORY[0x277D82BD8](v18);
  return v12;
}

unint64_t sub_214C7B1CC()
{
  v2 = qword_27CA38150;
  if (!qword_27CA38150)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38150);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_214C7B230()
{
  v5 = [v0 0x1FADAE878];
  MEMORY[0x277D82BD8](v0);
  v3 = &v0[OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_backgroundCornerRadius];
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  [v5 setCornerRadius_];
  MEMORY[0x277D82BD8](v5);
  v7 = [v0 0x1FADAE878];
  MEMORY[0x277D82BD8](v0);
  v6 = *MEMORY[0x277CDA138];
  [v7 setCornerCurve_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BE0](v0);
  v8 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v0);
  v11 = [v0 0x1FADAE878];
  MEMORY[0x277D82BD8](v0);
  v9 = [objc_opt_self() separatorColor];
  v10 = [v9 CGColor];
  [v11 setBorderColor_];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v14 = [v0 0x1FADAE878];
  MEMORY[0x277D82BD8](v0);
  v12 = [objc_opt_self() mainScreen];
  [v12 scale];
  v13 = v1;
  MEMORY[0x277D82BD8](v12);
  [v14 setBorderWidth_];
  MEMORY[0x277D82BD8](v14);
  v15 = *&v0[OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_visualEffectView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v15);
  v18 = *&v0[OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_visualEffectView];
  MEMORY[0x277D82BE0](v18);
  v16 = &v0[OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_backgroundCornerRadius];
  swift_beginAccess();
  v17 = *v16;
  swift_endAccess();
  [v18 _setCornerRadius_];
  MEMORY[0x277D82BD8](v18);
  v19 = *&v0[OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_visualEffectView];
  [v0 addSubview_];
  MEMORY[0x277D82BD8](v19);
  v21 = *&v0[OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_visualEffectView];
  [v21 mf:v20 pinToView:0 usingLayoutMargins:MEMORY[0x277D82BE0](v21).n128_f64[0]];
  *&result = MEMORY[0x277D82BD8](v21).n128_u64[0];
  return result;
}

void MUIPriorityMessageListBackgroundDecorationView.init(coder:)()
{
  v1 = OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_visualEffectView;
  sub_214C7B1CC();
  *v1 = sub_214A61730();
  v2 = OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_backgroundCornerRadius;
  [objc_opt_self() preferredMessageListBackgroundCornerRadius];
  *v2 = v0;
  *OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_isAnimating = 0;
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

Swift::Void __swiftcall MUIPriorityMessageListBackgroundDecorationView.shimmer()()
{
  ObjectType = swift_getObjectType();
  v51 = 0.0;
  v50 = 0.0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v52 = v0;
  v27 = (v0 + OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_isAnimating);
  swift_beginAccess();
  v28 = *v27;
  swift_endAccess();
  if ((v28 & 1) == 0)
  {
    v10 = (v25 + OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_isAnimating);
    swift_beginAccess();
    *v10 = 1;
    swift_endAccess();
    [objc_opt_self() preferredMessageListAnimationDelay];
    v21 = v1;
    v51 = v1;
    [objc_opt_self() preferredMessageListFadeInDuration];
    v20 = v2;
    v50 = v2;
    [objc_opt_self() preferredMessageListFadeOutDelay];
    v16 = v3;
    v49 = v3;
    [objc_opt_self() preferredMessageListFadeOutDuration];
    v15 = v4;
    v48 = v4;
    v47 = [objc_opt_self() preferredMessageListBeginningAnimationCurve];
    v17 = [objc_opt_self() preferredMessageListEndingAnimationCurve];
    v46 = v17;
    [objc_opt_self() preferredMessageListRimLightThickness];
    v11 = v5;
    v45 = v5;
    [objc_opt_self() preferredMessageListRimLightSoftRadius];
    v13 = v6;
    v44 = v6;
    [objc_opt_self() preferredMessageListRimLightColorOpacity];
    v12 = v7;
    v43 = v7;
    v19 = objc_opt_self();
    v22 = sub_214C7BDC4(v47);
    v14 = swift_allocObject();
    (MEMORY[0x277D82BE0])();
    swift_unknownObjectWeakInit();
    (MEMORY[0x277D82BD8])();

    v8 = swift_allocObject();
    v8[2] = v14;
    v8[3] = v11;
    v8[4] = v12;
    v8[5] = v13;
    v41 = sub_214C7C0FC;
    v42 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = 0;
    v39 = sub_214A746A8;
    v40 = &block_descriptor_21;
    v24 = _Block_copy(&aBlock);

    v18 = swift_allocObject();
    (MEMORY[0x277D82BE0])();
    swift_unknownObjectWeakInit();
    (MEMORY[0x277D82BD8])();

    v9 = swift_allocObject();
    v9[2] = v15;
    v9[3] = v16;
    v9[4] = v17;
    v9[5] = v18;
    v9[6] = ObjectType;
    v34 = sub_214C7C498;
    v35 = v9;
    v29 = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = 0;
    v32 = sub_214A7A88C;
    v33 = &block_descriptor_10;
    v23 = _Block_copy(&v29);

    [v19 animateWithDuration:v22 delay:v24 options:v23 animations:v20 completion:v21];
    _Block_release(v23);
    _Block_release(v24);
  }
}

uint64_t sub_214C7BDC4(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 0x10000;
    case 2:
      return 0x20000;
  }

  return 196608;
}

double sub_214C7BE5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    sub_214C7CA28();
    v1 = [objc_opt_self() sharedLight];
    v9 = sub_214C7C110(v1);
    [v9 setActivationTransitionDirection_];
    [v9 0x1FBB852D2];
    sub_214C7CA8C();
    sub_214A65CE0();
    v2 = sub_214C7AC2C();
    v8 = sub_214C7C158(v2, 2, 2);
    [v8 0x1FBB852D2];
    v6 = *(Strong + OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_visualEffectView);
    MEMORY[0x277D82BE0](v6);
    sub_214C7C9C4();
    sub_214CD03C4();
    v4 = v3;
    MEMORY[0x277D82BE0](v9);
    *v4 = v9;
    MEMORY[0x277D82BE0](v8);
    v4[1] = v8;
    sub_214A63280();
    v5 = sub_214CCF7D4();

    [v6 setBackgroundEffects_];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

void sub_214C7C1B8(char a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v34 = a1 & 1;
  v33 = a4;
  v32 = a5;
  v31 = a2;
  v30 = a3 + 16;
  v10 = objc_opt_self();
  v13 = sub_214C7BDC4(a2);
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](Strong);

  v28 = sub_214C7C8E8;
  v29 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = 0;
  v26 = sub_214A746A8;
  v27 = &block_descriptor_14_0;
  v15 = _Block_copy(&aBlock);

  v9 = swift_allocObject();
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v8);

  v21 = sub_214C7C954;
  v22 = v9;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = 0;
  v19 = sub_214A7A88C;
  v20 = &block_descriptor_18_0;
  v14 = _Block_copy(&v16);

  [v10 animateWithDuration:v13 delay:v15 options:v14 animations:a4 completion:a5];
  _Block_release(v14);
  _Block_release(v15);
}

double sub_214C7C518()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_visualEffectView);
    MEMORY[0x277D82BE0](v2);
    sub_214C7C9C4();
    sub_214CD03C4();
    v1 = sub_214CCF7D4();

    [v2 setBackgroundEffects_];
    MEMORY[0x277D82BD8](v1);
    MEMORY[0x277D82BD8](v2);
    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

double sub_214C7C644(char a1, uint64_t a2)
{
  v6 = a1 & 1;
  v5[4] = a2 + 16;
  swift_beginAccess();
  v5[0] = swift_unknownObjectWeakLoadStrong();
  if (v5[0])
  {
    v4 = v5[0];
    MEMORY[0x277D82BE0](v5[0]);
    sub_214A671E8(v5);
    swift_endAccess();
    v3 = (v4 + OBJC_IVAR___MUIPriorityMessageListBackgroundDecorationView_isAnimating);
    swift_beginAccess();
    *v3 = 0;
    swift_endAccess();
    *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  else
  {
    sub_214A671E8(v5);
    swift_endAccess();
  }

  return result;
}

Swift::Void __swiftcall MUIPriorityMessageListBackgroundDecorationView.updateBorderColor()()
{
  v3 = [v0 layer];
  (MEMORY[0x277D82BD8])();
  v1 = [objc_opt_self() separatorColor];
  v2 = [v1 CGColor];
  [v3 setBorderColor_];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
}

uint64_t block_copy_helper_12_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_16_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214C7C9C4()
{
  v2 = qword_27CA38160;
  if (!qword_27CA38160)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38160);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C7CA28()
{
  v2 = qword_27CA38168;
  if (!qword_27CA38168)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38168);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C7CA8C()
{
  v2 = qword_27CA38170;
  if (!qword_27CA38170)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38170);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214C7CB14(uint64_t a1)
{
  v4 = [v1 initWithLightSource_blurStyle_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id sub_214C7CB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [v3 initWithThickness:a1 color:a2 softRadius:a3 region:? activationDirection:?];
  MEMORY[0x277D82BD8](a1);
  return v6;
}

MUISenderHeaderColors __swiftcall MUISenderHeaderColors.init(analysis:)(MailUI::ArtworkColorAnalyzer::Analysis *analysis)
{
  memset(__b, 0, sizeof(__b));
  isa = analysis->backgroundColor.super.isa;
  v14 = analysis->contrastingBackgroundColor.super.isa;
  isContrastingBackgroundColorLight = analysis->isContrastingBackgroundColorLight;
  v15 = analysis->primaryTextColor.super.isa;
  v16 = analysis->primaryDropShadowColor.super.isa;
  isPrimaryTextColorLight = analysis->isPrimaryTextColorLight;
  v17 = analysis->secondaryTextColor.super.isa;
  v18 = analysis->secondaryDropShadowColor.super.isa;
  isSecondaryTextColorLight = analysis->isSecondaryTextColorLight;
  v19 = analysis->tertiaryTextColor.super.isa;
  v20 = analysis->tertiaryDropShadowColor.super.isa;
  isTertiaryTextColorLight = analysis->isTertiaryTextColorLight;
  v21 = analysis->quaternaryTextColor.super.isa;
  v22 = analysis->quaternaryDropShadowColor.super.isa;
  LOBYTE(__b[0]) = analysis->isImageTransparent;
  __b[1] = isa;
  __b[2] = v14;
  LOBYTE(__b[3]) = isContrastingBackgroundColorLight;
  __b[4] = v15;
  __b[5] = v16;
  LOBYTE(__b[6]) = isPrimaryTextColorLight;
  __b[7] = v17;
  __b[8] = v18;
  LOBYTE(__b[9]) = isSecondaryTextColorLight;
  __b[10] = v19;
  __b[11] = v20;
  LOBYTE(__b[12]) = isTertiaryTextColorLight;
  __b[13] = v21;
  __b[14] = v22;
  if (isContrastingBackgroundColorLight)
  {
    v11 = [objc_opt_self() blackColor];
  }

  else
  {
    v11 = [objc_opt_self() whiteColor];
  }

  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  MEMORY[0x277D82BE0](v14);
  v10 = [v9 initWithContrastingBackgroundColor:v14 textColor:v11 secondaryTextColor:{v17, MEMORY[0x277D82BE0](v17).n128_f64[0]}];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BE0](v10);
  v24 = v10;
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v24);
  v8 = v10;
  result.secondaryTextColor = v7;
  result.textColor = v6;
  result.contrastingBackgroundColor = v5;
  result.super.isa = v8;
  return result;
}

uint64_t MUISenderHeaderColors.contrastingBackgroundColor.getter()
{
  v2 = (v0 + OBJC_IVAR___MUISenderHeaderColors_contrastingBackgroundColor);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C7CFB4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUISenderHeaderColors_contrastingBackgroundColor);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214C7D050@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 contrastingBackgroundColor];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214C7D0C4(uint64_t *a1, id *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  [*a2 setContrastingBackgroundColor_];
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

uint64_t MUISenderHeaderColors.textColor.getter()
{
  v2 = (v0 + OBJC_IVAR___MUISenderHeaderColors_textColor);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C7D2B4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUISenderHeaderColors_textColor);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214C7D350@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 textColor];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214C7D3C4(uint64_t *a1, id *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  [*a2 setTextColor_];
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

uint64_t MUISenderHeaderColors.secondaryTextColor.getter()
{
  v2 = (v0 + OBJC_IVAR___MUISenderHeaderColors_secondaryTextColor);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C7D5B4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUISenderHeaderColors_secondaryTextColor);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214C7D650@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 secondaryTextColor];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214C7D6C4(uint64_t *a1, id *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  [*a2 setSecondaryTextColor_];
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

MUISenderHeaderColors __swiftcall MUISenderHeaderColors.init(contrastingBackgroundColor:textColor:secondaryTextColor:)(UIColor contrastingBackgroundColor, UIColor textColor, UIColor secondaryTextColor)
{
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContrastingBackgroundColor:contrastingBackgroundColor.super.isa textColor:textColor.super.isa secondaryTextColor:secondaryTextColor.super.isa];
  MEMORY[0x277D82BD8](secondaryTextColor.super.isa);
  MEMORY[0x277D82BD8](textColor.super.isa);
  MEMORY[0x277D82BD8](contrastingBackgroundColor.super.isa);
  v6 = v10;
  result.secondaryTextColor = v5;
  result.textColor = v4;
  result.contrastingBackgroundColor = v3;
  result.super.isa = v6;
  return result;
}

char *MUISenderHeaderColors.init(contrastingBackgroundColor:textColor:secondaryTextColor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v12 = a1;
  v11 = a2;
  v10 = a3;
  MEMORY[0x277D82BE0](a1);
  *OBJC_IVAR___MUISenderHeaderColors_contrastingBackgroundColor = a1;
  MEMORY[0x277D82BE0](a2);
  *&v13[OBJC_IVAR___MUISenderHeaderColors_textColor] = a2;
  *&v3 = MEMORY[0x277D82BE0](a3).n128_u64[0];
  *&v13[OBJC_IVAR___MUISenderHeaderColors_secondaryTextColor] = a3;
  v9.receiver = v13;
  v9.super_class = MUISenderHeaderColors;
  v8 = objc_msgSendSuper2(&v9, sel_init, v3);
  MEMORY[0x277D82BE0](v8);
  v13 = v8;
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v13);
  return v8;
}

MUISenderHeaderColors __swiftcall MUISenderHeaderColors.init()()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result.secondaryTextColor = v3;
  result.textColor = v2;
  result.contrastingBackgroundColor = v1;
  result.super.isa = v0;
  return result;
}

unint64_t type metadata accessor for MUISenderHeaderColors()
{
  v2 = qword_280C7CA68;
  if (!qword_280C7CA68)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CA68);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t NSDiffableDataSourceSnapshot.mui_moveSections(_:before:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v87 = a1;
  v79 = a2;
  v78 = a3;
  v89 = MEMORY[0x277D83988];
  v61 = MEMORY[0x277D83958];
  v62 = sub_214C7E708;
  v63 = "MailUI/NSDiffableDataSourceSnapshot+MailUI.swift";
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v103 = 0;
  v90 = v102;
  v102[0] = 0;
  v102[1] = 0;
  v64 = *(a3 - 8);
  v65 = a3 - 8;
  v66 = (v64[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v67 = &v24 - v66;
  v68 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v24 - v66);
  v69 = &v24 - v68;
  v88 = *(v5 + 16);
  v111 = v88;
  v70 = *(v88 - 8);
  v71 = v88 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v24 - v68);
  v73 = &v24 - v72;
  v110 = &v24 - v72;
  v74 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v75 = &v24 - v74;
  v109 = &v24 - v74;
  v76 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v77 = &v24 - v76;
  v108 = &v24 - v76;
  v93 = 0;
  v80 = sub_214CCFF34();
  v81 = (*(*(v80 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v87);
  v82 = &v24 - v81;
  v83 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v84 = &v24 - v83;
  v85 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v86 = &v24 - v85;
  v107 = v14;
  v106 = v15;
  v105 = v3;
  v104 = *(v16 + 24);
  v103 = 0;

  v101 = v87;
  v91 = sub_214CCF8D4();
  WitnessTable = swift_getWitnessTable();
  sub_214CCFAC4();
  v94 = v93;
  v95 = v93;
  while (2)
  {
    v58 = v95;
    v59 = v94;
    while (1)
    {
      sub_214CD01C4();
      sub_214CD01B4();
      v55 = *(v70 + 48);
      v56 = (v70 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v17 = v55(v86, 1, v88);
      v57 = v59;
      if (v17 == 1)
      {
        v24 = v57;
        sub_214A62278();
        return v24;
      }

      v18 = v69;
      v47 = *(v70 + 32);
      v48 = (v70 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v47(v77, v86, v88);
      v49 = v64[2];
      v50 = (v64 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v49(v18, v60, v78);
      v53 = sub_214CCDDF4();
      v54 = v19;
      v51 = v64[1];
      v52 = (v64 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v51(v69, v78);
      v99 = v53;
      v100 = v54 & 1;
      v46 = (v54 & 1) == 0;
      v38 = v47;
      v39 = v48;
      v40 = v49;
      v41 = v50;
      v42 = v51;
      v43 = v52;
      v44 = v55;
      v45 = v56;
      if ((v54 & 1) == 0)
      {
        break;
      }

      (*(v70 + 8))(v77, v88);
    }

    v36 = v45;
    v37 = v44;
    v30 = v43;
    v31 = v42;
    v32 = v41;
    v33 = v40;
    v34 = v39;
    v35 = v38;
    sub_214BD22CC(v79, v84, v88, v80);
    if (v37(v84, 1, v88) == 1)
    {
      sub_214AFE844(v84, v88);
    }

    else
    {
      v20 = v69;
      v35(v75, v84, v88);
      v33(v20, v60, v78);
      v28 = sub_214CCDDF4();
      v29 = v21;
      v31(v69, v78);
      v96 = v28;
      v97 = v29 & 1;
      v27 = (v29 & 1) == 0;
      if ((v29 & 1) == 0)
      {
        sub_214CCDDD4();
        result = (*(v70 + 8))(v75, v88);
        goto LABEL_13;
      }

      (*(v70 + 8))(v75, v88);
    }

    v33(v67, v60, v78);
    v26 = sub_214CCDE24();
    v31(v67, v78);
    v98 = v26;
    swift_getWitnessTable();
    sub_214CCF434();
    if (v37(v82, 1, v88) == 1)
    {
      sub_214AFE844(v82, v88);

      result = sub_214CD01D4();
    }

    else
    {
      v35(v73, v82, v88);

      sub_214CCDDC4();
      result = (*(v70 + 8))(v73, v88);
    }

LABEL_13:
    v25 = v58 + 1;
    if (!__OFADD__(v58, 1))
    {
      v103 = v25;
      (*(v70 + 8))(v77, v88);
      v94 = v25;
      v95 = v25;
      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t NSDiffableDataSourceSnapshot.mui_moveSections(_:after:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v87 = a1;
  v79 = a2;
  v78 = a3;
  v89 = MEMORY[0x277D83958];
  v61 = MEMORY[0x277D83988];
  v62 = sub_214C7E708;
  v63 = "MailUI/NSDiffableDataSourceSnapshot+MailUI.swift";
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v105 = 0;
  v92 = v104;
  v104[0] = 0;
  v104[1] = 0;
  v64 = *(a3 - 8);
  v65 = a3 - 8;
  v66 = (v64[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v67 = &v24 - v66;
  v68 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v24 - v66);
  v69 = &v24 - v68;
  v88 = *(v5 + 16);
  v113 = v88;
  v70 = *(v88 - 8);
  v71 = v88 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v24 - v68);
  v73 = &v24 - v72;
  v112 = &v24 - v72;
  v74 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v75 = &v24 - v74;
  v111 = &v24 - v74;
  v76 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v77 = &v24 - v76;
  v110 = &v24 - v76;
  v93 = 0;
  v80 = sub_214CCFF34();
  v81 = (*(*(v80 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v87);
  v82 = &v24 - v81;
  v83 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v84 = &v24 - v83;
  v85 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v86 = &v24 - v85;
  v109 = v14;
  v108 = v15;
  v107 = v3;
  v106 = *(v16 + 24);
  v105 = 0;

  v102 = v87;
  v90 = sub_214CCF8D4();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x21605D710](&v103, v90);
  v101 = v103;
  sub_214CD0294();
  sub_214CD0264();
  v94 = v93;
  v95 = v93;
  while (2)
  {
    v58 = v95;
    v59 = v94;
    while (1)
    {
      sub_214CD0284();
      sub_214CD0274();
      v55 = *(v70 + 48);
      v56 = (v70 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v17 = v55(v86, 1, v88);
      v57 = v59;
      if (v17 == 1)
      {
        v24 = v57;
        sub_214A62278();
        return v24;
      }

      v18 = v69;
      v47 = *(v70 + 32);
      v48 = (v70 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v47(v77, v86, v88);
      v49 = v64[2];
      v50 = (v64 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v49(v18, v60, v78);
      v53 = sub_214CCDDF4();
      v54 = v19;
      v51 = v64[1];
      v52 = (v64 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v51(v69, v78);
      v99 = v53;
      v100 = v54 & 1;
      v46 = (v54 & 1) == 0;
      v38 = v47;
      v39 = v48;
      v40 = v49;
      v41 = v50;
      v42 = v51;
      v43 = v52;
      v44 = v55;
      v45 = v56;
      if ((v54 & 1) == 0)
      {
        break;
      }

      (*(v70 + 8))(v77, v88);
    }

    v36 = v45;
    v37 = v44;
    v30 = v43;
    v31 = v42;
    v32 = v41;
    v33 = v40;
    v34 = v39;
    v35 = v38;
    sub_214BD22CC(v79, v84, v88, v80);
    if (v37(v84, 1, v88) == 1)
    {
      sub_214AFE844(v84, v88);
    }

    else
    {
      v20 = v69;
      v35(v75, v84, v88);
      v33(v20, v60, v78);
      v28 = sub_214CCDDF4();
      v29 = v21;
      v31(v69, v78);
      v96 = v28;
      v97 = v29 & 1;
      v27 = (v29 & 1) == 0;
      if ((v29 & 1) == 0)
      {
        sub_214CCDDC4();
        result = (*(v70 + 8))(v75, v88);
        goto LABEL_13;
      }

      (*(v70 + 8))(v75, v88);
    }

    v33(v67, v60, v78);
    v26 = sub_214CCDE24();
    v31(v67, v78);
    v98 = v26;
    swift_getWitnessTable();
    sub_214CCFA74();
    if (v37(v82, 1, v88) == 1)
    {
      sub_214AFE844(v82, v88);

      result = sub_214CD01D4();
    }

    else
    {
      v35(v73, v82, v88);

      sub_214CCDDD4();
      result = (*(v70 + 8))(v73, v88);
    }

LABEL_13:
    v25 = v58 + 1;
    if (!__OFADD__(v58, 1))
    {
      v105 = v25;
      (*(v70 + 8))(v77, v88);
      v94 = v25;
      v95 = v25;
      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSRegularExpression.init(tokens:options:)(NSRegularExpression *__return_ptr retstr, Swift::OpaquePointer tokens, NSRegularExpressionOptions options)
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = 0;
  rawValue = tokens._rawValue;
  v31 = options;

  v30 = tokens._rawValue;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  sub_214C65A3C();
  v23 = sub_214CD0154();
  if (v22)
  {
    __break(1u);
    __break(1u);
    __break(1u);
  }

  else
  {
    v29 = v23;
    sub_214B22E9C();
    v18 = sub_214CCF754();
    sub_214A62278();
    v28 = v18;
    v3 = sub_214B50C54();
    v17 = sub_214A6E4F4(sub_214C7F7C4, 0, v21, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v16);
    sub_214A62278();
    v27 = v17;
    sub_214CCF614();
    sub_214BB8FF0();
    v10 = sub_214CCF474();
    v11 = v4;

    sub_214A62278();
    v25 = v10;
    v26 = v11;
    v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v33 = 0;
    v24[3] = sub_214CD03B4();
    v24[4] = v5;
    v6 = sub_214CCF614();
    MEMORY[0x21605E650](v6);

    v24[1] = v10;
    v24[2] = v11;
    sub_214CD0394();
    v7 = sub_214CCF614();
    MEMORY[0x21605E650](v7);

    sub_214A61B48();
    sub_214CCF5F4();
    v14 = sub_214CCF544();

    v24[0] = v33;
    v15 = [v12 initWithPattern:v14 options:options error:v24];
    v13 = v24[0];
    MEMORY[0x277D82BE0](v24[0]);
    v8 = v33;
    v33 = v13;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v14);
    if (v15)
    {
      MEMORY[0x277D82BE0](v15);

      MEMORY[0x277D82BD8](v15);
      return;
    }
  }

  v9 = v33;
  sub_214CCD084();
  MEMORY[0x277D82BD8](v9);
  swift_willThrow();
}

uint64_t *sub_214C7F7C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v21 = a1[1];
  v25 = *a1;
  v26 = v21;

  v23 = v25;
  v24 = v21;
  sub_214C7FC44();
  sub_214CCF444();
  sub_214CCF614();
  sub_214B61004();
  sub_214B075A0();
  v22 = sub_214CD0004();
  if (v22)
  {
    sub_214B61168();
    sub_214CCFB14();
  }

  v15 = objc_opt_self();

  v16 = sub_214CCF544();

  v17 = [v15 escapedPatternForString_];
  MEMORY[0x277D82BD8](v16);
  v18 = sub_214CCF564();
  v19 = v2;
  MEMORY[0x277D82BD8](v17);
  sub_214CCF614();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36270);
  sub_214CD03C4();
  if (v22)
  {
    v10 = v3;

    v10[3] = MEMORY[0x277D837D0];
    v10[4] = sub_214BD1FAC();
    *v10 = v18;
    v10[1] = v19;
    sub_214A63280();
    v11 = sub_214CCF574();
    v12 = v4;

    v13 = v11;
    v14 = v12;
  }

  else
  {
    v7 = v3;

    v7[3] = MEMORY[0x277D837D0];
    v7[4] = sub_214BD1FAC();
    *v7 = v18;
    v7[1] = v19;
    sub_214A63280();
    v8 = sub_214CCF574();
    v9 = v5;

    v13 = v8;
    v14 = v9;
  }

  *a2 = v13;
  a2[1] = v14;

  result = &v23;
  sub_214A61B48();
  return result;
}

unint64_t sub_214C7FC44()
{
  v2 = qword_280C7D068;
  if (!qword_280C7D068)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7D068);
    return WitnessTable;
  }

  return v2;
}

__C::_NSRange __swiftcall NSString.rangeByAdding(maxNumberOfWordsBefore:maxNumberOfWordsAfter:range:)(Swift::Int maxNumberOfWordsBefore, Swift::Int maxNumberOfWordsAfter, __C::_NSRange range)
{
  location = range.location;
  length = range.length;
  v84 = 0;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v76 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v58 = 0;
  v47 = 0;
  v87 = maxNumberOfWordsBefore;
  v86 = maxNumberOfWordsAfter;
  v85 = range;
  v33 = range.location != sub_214CCCE14() && length != 0;
  *&v3 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v32 = v33 && [v37 length] != 0;
  *&v4 = (MEMORY[0x277D82BD8])().n128_u64[0];
  if (!v32)
  {
    v23 = location;
    v24 = length;
    goto LABEL_31;
  }

  if (maxNumberOfWordsBefore <= 0 && maxNumberOfWordsAfter <= 0)
  {
    v23 = location;
    v24 = length;
    goto LABEL_31;
  }

  v30 = [v37 length];
  v82 = 0;
  v83 = v30;
  if (location < 0)
  {
    v29 = 0;
  }

  else
  {
    v88 = 0;
    v89 = v30;
    v29 = location < v30;
  }

  v81 = v29;
  v79 = location;
  v80 = length;
  v96 = location;
  v97 = length;
  v77 = 0;
  v78 = v30;
  v94 = 0;
  v95 = v30;
  v76 = v30 >= location + length;
  if (!v29 || v30 < location + length)
  {
    v23 = location;
    v24 = length;
    goto LABEL_31;
  }

  v74 = location;
  v75 = length;
  v5 = [v37 paragraphRangeForRange_];
  v72 = v5;
  v73 = v6;
  v25 = v5;
  v26 = v6;
  v70 = v5;
  v71 = v6;
  v27 = location - v5;
  if (__OFSUB__(location, v5))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v68 = location - v5;
  v69 = length;
  v66 = location;
  v67 = length;
  v92 = location;
  v93 = length;
  v64 = location - v5;
  v65 = length;
  v90 = location - v5;
  v91 = length;
  if (__OFSUB__(v6, v27 + length))
  {
    goto LABEL_33;
  }

  v62 = location + length;
  v63 = v6 - (v27 + length);
  v60 = v5;
  v61 = location - v5;
  v20 = swift_allocObject();
  v59 = v20 + 16;
  *(v20 + 16) = location;
  *(v20 + 24) = length;
  v19 = swift_allocObject();
  v58 = v19 + 16;
  *(v19 + 16) = 0;
  _s3__C18EnumerationOptionsVMa_0();
  sub_214CD03C4();
  *v9 = 3;
  v9[1] = 256;
  sub_214A63280();
  sub_214B01640();
  sub_214CD0084();
  v14 = v57;

  v10 = swift_allocObject();
  v10[2] = v19;
  v10[3] = maxNumberOfWordsBefore;
  v10[4] = v20;
  v55 = sub_214C80668;
  v56 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = 0;
  v53 = sub_214C806A0;
  v54 = &block_descriptor_22;
  v15 = _Block_copy(&aBlock);

  v48 = v25;
  v49 = v27;
  [v37 0x1FACBB6C0];
  _Block_release(v15);
  v18 = swift_allocObject();
  v47 = v18 + 16;
  *(v18 + 16) = 0;
  sub_214CD03C4();
  *v11 = 3;
  sub_214A63280();
  sub_214CD0084();
  v16 = v46;

  v12 = swift_allocObject();
  v12[2] = v18;
  v12[3] = maxNumberOfWordsAfter;
  v12[4] = v20;
  v44 = sub_214C80668;
  v45 = v12;
  v39 = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = 0;
  v42 = sub_214C806A0;
  v43 = &block_descriptor_13_0;
  v17 = _Block_copy(&v39);

  [v37 0x1FACBB6C0];
  _Block_release(v17);
  swift_beginAccess();
  v21 = *(v20 + 16);
  v22 = *(v20 + 24);
  swift_endAccess();

  v23 = v21;
  v24 = v22;
LABEL_31:
  v5 = v23;
  v6 = v24;
LABEL_34:
  result.length = v6;
  result.location = v5;
  return result;
}

uint64_t sub_214C80440(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, NSRange *a10)
{
  v15.location = a3;
  v15.length = a4;
  v31 = a1;
  v32 = a2;
  v29 = a3;
  v30 = a4;
  v27 = a5;
  v28 = a6;
  v26 = a7;
  v25 = a8 + 16;
  v24 = a9;
  v23 = a10 + 1;
  swift_beginAccess();
  v18 = *(a8 + 16);
  swift_endAccess();
  if (v18 < a9)
  {
    swift_beginAccess();
    v13 = a10[1];
    swift_endAccess();
    v22 = v13;
    v21 = v15;
    v20 = NSUnionRange(v13, v15);
    swift_beginAccess();
    a10[1] = v20;
    swift_endAccess();
    result = swift_beginAccess();
    v11 = *(a8 + 16);
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      *(a8 + 16) = v14;
      return swift_endAccess();
    }
  }

  else
  {
    v19 = 1;
    return sub_214CAD888(&v19, a7, MEMORY[0x277D85368]);
  }

  return result;
}

uint64_t sub_214C806A0(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 32);

  v2 = MEMORY[0x277D82BE0](a2);
  if (a2)
  {
    v4 = sub_214CCF564();
    v2 = MEMORY[0x277D82BD8](a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6(v5, v2);
}

uint64_t block_copy_helper_11_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t EMOriginalContentMessage.summarizableMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v53 = 0;
  v52 = 0;
  v50 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38190);
  v24 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v25 = v10 - v24;
  v36 = 0;
  v45 = sub_214CCD254();
  v43 = *(v45 - 8);
  v44 = v45 - 8;
  v26 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v42 = v10 - v26;
  v27 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v46 = v10 - v27;
  v28 = sub_214CCD9D4();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v48);
  v32 = v10 - v31;
  v53 = v10 - v31;
  v52 = v3;
  v33 = [v3 searchableMessageID];
  v41 = [v33 stringValue];
  v37 = sub_214CCF564();
  v38 = v4;
  MEMORY[0x277D82BD8](v33);
  v40 = [objc_opt_self() searchableIndexBundleID];
  v34 = sub_214CCF564();
  v35 = v5;
  v39 = [v48 bodyText];
  sub_214CCF564();
  sub_214CCD974();
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  *&v6 = MEMORY[0x277D82BD8](v41).n128_u64[0];
  v47 = [v48 date];
  sub_214CCD224();
  (*(v43 + 32))(v46, v42, v45);
  (*(v43 + 56))(v46, 0, 1, v45);
  sub_214CCD994();
  *&v7 = MEMORY[0x277D82BD8](v47).n128_u64[0];
  v49 = [v48 subject];
  if (v49)
  {
    v22 = v49;
    v17 = v49;
    v18 = sub_214CCF564();
    v19 = v8;
    MEMORY[0x277D82BD8](v17);
    v20 = v18;
    v21 = v19;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  sub_214CCD9C4();
  v16 = [v48 flags];
  if (v16)
  {
    v15 = v16;
    v12 = v16;
    v13 = [v16 read];
    MEMORY[0x277D82BD8](v12);
    v14 = v13;
  }

  else
  {
    v14 = 2;
  }

  v51 = v14;
  if (v14 == 2)
  {
    v11 = 1;
  }

  else
  {
    v11 = v51;
  }

  sub_214CCD9A4();
  v10[1] = [v48 sender];
  swift_getObjectType();
  sub_214C8649C();
  swift_unknownObjectRelease();
  sub_214CCD9B4();
  v50 = sub_214C867D0(v48);
  sub_214CCD984();
  (*(v29 + 16))(v23, v32, v28);
  return (*(v29 + 8))(v32, v28);
}

uint64_t sub_214C80E84()
{
  sub_214C877BC(0);

  return 0;
}

uint64_t sub_214C80EB4()
{
  sub_214CCF614();
  v1 = [objc_opt_self() mui_MailUIBundle];
  sub_214CCF614();
  sub_214B1C228();
  v2 = sub_214CCCF54();

  MEMORY[0x277D82BD8](v1);

  return v2;
}

BOOL sub_214C80FBC(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_214C81200@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC6MailUI31OriginalContentMessageGenerator_logger;
  v2 = sub_214CCDA74();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_214C8128C()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI31OriginalContentMessageGenerator_contentRepresentationQueue);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t OriginalContentMessageGenerator.init()()
{
  v17 = 0;
  v14 = 0;
  v5 = (*(*(sub_214CCFC34() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v13 = &v4 - v5;
  v6 = (*(*(sub_214CCFC24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v12 = &v4 - v6;
  v7 = (*(*(sub_214CCF254() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v11 = &v4 - v7;
  v17 = v0;
  v8 = OBJC_IVAR____TtC6MailUI31OriginalContentMessageGenerator_logger;
  type metadata accessor for OriginalContentMessageGenerator();
  static Logger.mailUILogger<A>(for:)();
  v15 = OBJC_IVAR____TtC6MailUI31OriginalContentMessageGenerator_contentRepresentationQueue;
  sub_214B51A38();
  v9 = sub_214CCF614();
  v10 = v1;
  sub_214C81274();
  sub_214BB5824();
  sub_214BB58C4(v13);
  v2 = sub_214CCFC64();
  result = v16;
  *(v16 + v15) = v2;
  return result;
}

uint64_t sub_214C814BC(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 105) = a2 & 1;
  *(v3 + 48) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 104) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 104) = a2 & 1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_214C81530, 0);
}

uint64_t sub_214C81530()
{
  v7 = *(v0 + 105);
  v6 = *(v0 + 48);
  *(v0 + 16) = v0;
  v9 = sub_214CCF614();
  v10 = v1;
  *(v0 + 64) = v1;
  v5 = swift_allocObject();
  *(v0 + 72) = v5;

  swift_weakInit();

  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *(v11 + 16) = v5;
  *(v11 + 24) = v6;
  *(v11 + 32) = v7;
  v2 = swift_task_alloc();
  *(v8 + 88) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA381C0);
  *v2 = *(v8 + 16);
  v2[1] = sub_214C816FC;

  return MEMORY[0x2822008A0](v8 + 40, 0, 0, v9, v10, sub_214C86BB4, v11, v3);
}

uint64_t sub_214C816FC()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 96) = v0;

  if (v0)
  {
    v2 = sub_214C81900;
  }

  else
  {

    v2 = sub_214C818B0;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214C81900()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_214C819E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v21 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = 0;
  v16 = sub_214C87868;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v32 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38248);
  v24 = *(v22 - 8);
  v23 = v22 - 8;
  v25 = v24;
  v26 = *(v24 + 64);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v28 = &v11 - v27;
  v38 = v4;
  v29 = v5 + 16;
  v37 = v5 + 16;
  v36 = v6;
  v35 = v7 & 1;
  v30 = &v34;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v15 = Strong;
    v14 = Strong;
    v32 = Strong;
    v11 = v25;
    (*(v24 + 16))(v28, v21, v22);
    v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v13 = swift_allocObject();
    (*(v24 + 32))(v13 + v12, v28, v22);
    sub_214C83A50(v18, v19 & 1, v16, v13);
  }

  else
  {
    sub_214C86C30();
    v8 = swift_allocError();
    *v9 = 0;
    v33 = v8;
    return sub_214CCF934();
  }
}

void sub_214C81C90(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38248);
    sub_214CCF934();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38248);
    sub_214CCF944();
  }
}

double sub_214C81DB4(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v22 = 0;
  v27 = a1;
  v26 = a2 & 1;
  v24 = a3;
  v25 = a4;
  sub_214B66AC0();
  v14[16] = a2;
  v13 = sub_214B66BA4(sub_214C86BC8, v14);
  v22 = v13;
  v9 = swift_allocObject();

  swift_weakInit();

  MEMORY[0x277D82BE0](a1);
  v4 = swift_allocObject();
  v4[2] = v9;
  v4[3] = a3;
  v4[4] = a4;
  v4[5] = a1;
  v20 = sub_214C86BD4;
  v21 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = 0;
  v18 = sub_214B673A0;
  v19 = &block_descriptor_23;
  v11 = _Block_copy(&aBlock);

  v12 = [a1 requestRepresentationWithOptions:v13 completionHandler:v11];
  _Block_release(v11);
  MEMORY[0x277D82BD8](v12);
  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

uint64_t sub_214C81FDC(void *a1, char a2)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = *MEMORY[0x277D06BA0];
  [a1 setRequestedRepresentation_];
  MEMORY[0x277D82BD8](v3);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if (a2)
  {
    [a1 setNetworkUsage_];
  }

  else
  {
    [a1 setNetworkUsage_];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_214C820C0(void *a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v120 = a1;
  v119 = a2;
  v114 = a3;
  v115 = a4;
  v116 = a5;
  v117 = a6;
  v118 = 0;
  v102 = sub_214C877B4;
  v103 = sub_214A7E854;
  v104 = sub_214BC6620;
  v105 = sub_214BC6628;
  v106 = sub_214B21624;
  v107 = sub_214A662DC;
  v108 = sub_214A662DC;
  v109 = sub_214A7E40C;
  v110 = sub_214A662DC;
  v111 = sub_214A662DC;
  v112 = sub_214B217B4;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v139 = 0;
  v140 = 0;
  v138 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v113 = 0;
  v121 = sub_214CCDA74();
  v122 = *(v121 - 8);
  v123 = v121 - 8;
  v124 = (*(v122 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v120);
  v125 = &v54 - v124;
  v143 = v6;
  v142 = v7;
  v126 = v8 + 16;
  v141 = v8 + 16;
  v139 = v9;
  v140 = v10;
  v138 = v11;
  v127 = &v137;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v101 = Strong;
    v98 = Strong;
    v136 = Strong;
    v18 = v119;
    if (v119)
    {
      v97 = v119;
      v75 = v119;
      v134 = v119;
      (*(v122 + 16))(v125, v98 + OBJC_IVAR____TtC6MailUI31OriginalContentMessageGenerator_logger, v121);
      MEMORY[0x277D82BE0](v117);
      v74 = 24;
      v82 = 7;
      v19 = swift_allocObject();
      v20 = v75;
      v76 = v19;
      *(v19 + 16) = v117;
      v21 = v20;
      v80 = swift_allocObject();
      *(v80 + 16) = v75;
      sub_214B1C228();

      v94 = sub_214CCDA54();
      v95 = sub_214CCFBA4();
      v78 = 17;
      v85 = swift_allocObject();
      *(v85 + 16) = 32;
      v86 = swift_allocObject();
      v79 = 8;
      *(v86 + 16) = 8;
      v81 = 32;
      v22 = swift_allocObject();
      v23 = v76;
      v77 = v22;
      *(v22 + 16) = v102;
      *(v22 + 24) = v23;
      v24 = swift_allocObject();
      v25 = v77;
      v87 = v24;
      *(v24 + 16) = v103;
      *(v24 + 24) = v25;
      v88 = swift_allocObject();
      *(v88 + 16) = 64;
      v89 = swift_allocObject();
      *(v89 + 16) = v79;
      v26 = swift_allocObject();
      v27 = v80;
      v83 = v26;
      *(v26 + 16) = v104;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      v29 = v83;
      v84 = v28;
      *(v28 + 16) = v105;
      *(v28 + 24) = v29;
      v30 = swift_allocObject();
      v31 = v84;
      v91 = v30;
      *(v30 + 16) = v106;
      *(v30 + 24) = v31;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
      v90 = sub_214CD03C4();
      v92 = v32;

      v33 = v85;
      v34 = v92;
      *v92 = v107;
      v34[1] = v33;

      v35 = v86;
      v36 = v92;
      v92[2] = v108;
      v36[3] = v35;

      v37 = v87;
      v38 = v92;
      v92[4] = v109;
      v38[5] = v37;

      v39 = v88;
      v40 = v92;
      v92[6] = v110;
      v40[7] = v39;

      v41 = v89;
      v42 = v92;
      v92[8] = v111;
      v42[9] = v41;

      v43 = v91;
      v44 = v92;
      v92[10] = v112;
      v44[11] = v43;
      sub_214A63280();

      if (os_log_type_enabled(v94, v95))
      {
        v45 = v113;
        v66 = sub_214CCFF24();
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
        v65 = 1;
        v67 = sub_214A632C4(1);
        v68 = sub_214A632C4(v65);
        v70 = &v133;
        v133 = v66;
        v71 = &v132;
        v132 = v67;
        v72 = &v131;
        v131 = v68;
        v69 = 2;
        sub_214A6627C(2, &v133);
        sub_214A6627C(v69, v70);
        v129 = v107;
        v130 = v85;
        sub_214A66290(&v129, v70, v71, v72);
        v73 = v45;
        if (v45)
        {

          __break(1u);
        }

        else
        {
          v129 = v108;
          v130 = v86;
          sub_214A66290(&v129, &v133, &v132, &v131);
          v63 = 0;
          v129 = v109;
          v130 = v87;
          sub_214A66290(&v129, &v133, &v132, &v131);
          v62 = 0;
          v129 = v110;
          v130 = v88;
          sub_214A66290(&v129, &v133, &v132, &v131);
          v61 = 0;
          v129 = v111;
          v130 = v89;
          sub_214A66290(&v129, &v133, &v132, &v131);
          v60 = 0;
          v129 = v112;
          v130 = v91;
          sub_214A66290(&v129, &v133, &v132, &v131);
          _os_log_impl(&dword_214A5E000, v94, v95, "Unable to request representation for message: %s with error %@", v66, 0x16u);
          v59 = 1;
          sub_214A669DC(v67);
          sub_214A669DC(v68);
          sub_214CCFF04();
        }
      }

      else
      {
      }

      v46 = MEMORY[0x277D82BD8](v94);
      (*(v122 + 8))(v125, v121, v46);

      v47 = v75;
      v58 = 1;
      v115(v75);
      sub_214C86BE8(v75, v58 & 1);
    }

    else
    {
      MEMORY[0x277D82BE0](v120);
      if (v120)
      {
        v96 = v120;
        v55 = v120;
        v135 = v120;

        v53 = MEMORY[0x277D82BE0](v55);
        HIDWORD(v54) = 0;
        (v115)(v55, v53);
        sub_214C86BE8(v55, BYTE4(v54) & 1);

        MEMORY[0x277D82BD8](v55);
      }

      else
      {

        sub_214C86C30();
        v57 = 1;
        v48 = swift_allocError();
        v49 = v115;
        v56 = v48;
        v51 = v50;
        v52 = v57;
        *v51 = 1;
        v49(v48, v52);
        sub_214C86BE8(v56, v57 & 1);
      }
    }
  }

  else
  {

    sub_214C86C30();
    v100 = 1;
    v12 = swift_allocError();
    v13 = v115;
    v99 = v12;
    v15 = v14;
    v16 = v100;
    *v15 = 0;
    v13(v12, v16);
    sub_214C86BE8(v99, v100 & 1);
  }
}

uint64_t sub_214C82F50(void *a1)
{
  v8 = [a1 searchableMessageID];
  if (v8)
  {
    v3 = [v8 stringValue];
    v4 = sub_214CCF564();
    v5 = v1;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v3);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  else
  {
    return sub_214CCF614();
  }
}

void *sub_214C83084(void *a1, char a2)
{
  v10 = dispatch_semaphore_create(0);
  v8 = swift_allocObject();
  sub_214C86C30();
  v2 = swift_allocError();
  *v3 = 1;
  *(v8 + 16) = v2;
  *(v8 + 24) = 1;

  MEMORY[0x277D82BE0](v10);
  v7 = swift_allocObject();
  *(v7 + 16) = v8;
  *(v7 + 24) = v10;
  sub_214C81DB4(a1, a2 & 1, sub_214C86CAC, v7);

  sub_214CCFCF4();
  swift_beginAccess();
  v9 = *(v8 + 16);
  sub_214C86CBC(v9, *(v8 + 24) & 1);
  swift_endAccess();

  MEMORY[0x277D82BD8](v10);
  return v9;
}

uint64_t sub_214C83264(void *a1, char a2, uint64_t a3)
{
  sub_214C86CBC(a1, a2 & 1);
  swift_beginAccess();
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2 & 1;
  sub_214C86BE8(v3, v4 & 1);
  swift_endAccess();
  return sub_214CCFD04();
}

uint64_t sub_214C83334(uint64_t a1, int a2, int a3)
{
  v50 = a1;
  v49 = a2;
  v48 = a3;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v45 = 0;
  v65 = 0;
  v66 = 0;
  v62 = 0;
  v63 = 0;
  v59 = 0;
  v60 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
  v46 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v47 = v20 - v46;
  v51 = sub_214CCD154();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v55 = v20 - v54;
  v56 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v6);
  v57 = v20 - v56;
  v71 = v20 - v56;
  v70 = v8;
  v69 = v9 & 1;
  v68 = v10 & 1;
  v67 = v3;
  v58 = [v8 contentURL];
  if (v58)
  {
    v44 = v58;
    v43 = v58;
    sub_214CCD124();
    (*(v52 + 32))(v47, v55, v51);
    (*(v52 + 56))(v47, 0, 1, v51);
    v11 = MEMORY[0x277D82BD8](v43);
  }

  else
  {
    (*(v52 + 56))(v47, 1, 1, v51);
  }

  if ((*(v52 + 48))(v47, 1, v51, v11) == 1)
  {
    sub_214B6807C(v47);
LABEL_14:
    v26 = 0;
    v27 = 0;
    return v26;
  }

  v12 = v45;
  (*(v52 + 32))(v57, v47, v51);
  sub_214C80E84();
  v40 = sub_214CCD164();
  v41 = v13;
  v42 = v12;
  if (v12)
  {

    v38 = 0;
    v39 = 0xF000000000000000;
  }

  else
  {
    v38 = v40;
    v39 = v41;
  }

  v36 = v39;
  v37 = v38;
  if ((v39 & 0xF000000000000000) == 0xF000000000000000)
  {
    (*(v52 + 8))(v57, v51);
    goto LABEL_14;
  }

  v34 = v37;
  v35 = v36;
  v29 = v36;
  v28 = v37;
  v65 = v37;
  v66 = v36;
  sub_214AF8330(v37, v36);
  v31 = v64;
  v64[0] = v28;
  v64[1] = v29;
  v30 = sub_214C86D04();
  sub_214C86D7C();
  v14 = sub_214CCF6B4();
  v32 = v14;
  v33 = v15;
  v62 = v14;
  v63 = v15;
  if (v49)
  {
    v21 = objc_opt_self();

    v22 = sub_214CCF544();

    type metadata accessor for ECMessageBodyStringAccumulatorOptions();
    v16 = sub_214CD03C4();
    *v17 = 32;
    sub_214A63280();
    v20[1] = v16;
    sub_214B01770();
    sub_214CD0084();
    v23 = [v21 snippetFromHTMLBody:v22 options:v61 maxLength:0x7FFFFFFFFFFFFFFFLL preservingQuotedForwardedContent:v48 & 1];
    MEMORY[0x277D82BD8](v22);
    v24 = sub_214CCF564();
    v25 = v18;
    v59 = v24;
    v60 = v18;
    MEMORY[0x277D82BD8](v23);

    sub_214AF83FC(v28, v29);
    (*(v52 + 8))(v57, v51);
    v26 = v24;
    v27 = v25;
  }

  else
  {
    sub_214AF83FC(v28, v29);
    (*(v52 + 8))(v57, v51);
    v26 = v32;
    v27 = v33;
  }

  return v26;
}

uint64_t sub_214C83A50(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v53 = a1;
  v42 = a2;
  v40 = a3;
  v41 = a4;
  v34 = sub_214C86E98;
  v77 = 0;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v54 = v69;
  v69[0] = 0;
  v69[1] = 0;
  v63 = 0;
  v49 = 0;
  v35 = sub_214CCF224();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v39 = v20 - v38;
  v43 = sub_214CCF254();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53);
  v47 = v20 - v46;
  v77 = v5;
  v50 = 1;
  v76 = v6 & 1;
  v74 = v7;
  v75 = v8;
  v73 = v4;
  v48 = swift_allocObject();
  v72 = v48 + 16;
  sub_214C86DF4();
  *(v48 + 16) = sub_214CD03C4();
  sub_214B71394();
  v51 = sub_214CCF854() == 1;
  v71 = v51 & v50;
  v52 = dispatch_group_create();
  v70 = v52;

  v68 = v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36238);
  sub_214B8CB04();
  sub_214CCFAC4();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38208);
    sub_214CD01B4();
    v32 = v67;
    if (!v67)
    {
      break;
    }

    v31 = v32;
    v30 = v32;
    v63 = v32;
    dispatch_group_enter(v52);
    v29 = *(v33 + OBJC_IVAR____TtC6MailUI31OriginalContentMessageGenerator_contentRepresentationQueue);
    MEMORY[0x277D82BE0](v29);
    v25 = 7;
    v28 = swift_allocObject();
    v23 = v28 + 16;

    v24 = v33;
    swift_weakInit();

    MEMORY[0x277D82BE0](v52);
    MEMORY[0x277D82BE0](v30);

    v9 = swift_allocObject();
    v10 = v41;
    v11 = v52;
    v12 = v51;
    v13 = v42;
    v14 = v48;
    v15 = v34;
    v16 = v30;
    v17 = v9;
    v18 = v40;
    v26 = v17;
    *(v17 + 16) = v28;
    *(v17 + 24) = v18;
    *(v17 + 32) = v10;
    *(v17 + 40) = v11;
    *(v17 + 48) = v16;
    *(v17 + 56) = v12;
    *(v17 + 57) = v13;
    *(v17 + 64) = v14;
    v61 = v15;
    v62 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = 0;
    v59 = sub_214A746A8;
    v60 = &block_descriptor_22;
    v27 = _Block_copy(&aBlock);
    sub_214BC69C4();
    sub_214BC69DC();
    MEMORY[0x21605DF00](0, v47, v39, v27);
    (*(v36 + 8))(v39, v35);
    (*(v44 + 8))(v47, v43);
    _Block_release(v27);

    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
  }

  sub_214A62278();
  sub_214CCFC14();
  v20[4] = v48 + 16;
  v20[1] = &v66;
  v20[5] = 32;
  v20[6] = 0;
  swift_beginAccess();
  v20[2] = *(v48 + 16);

  swift_endAccess();
  v21 = sub_214C86134();

  v20[3] = &v65;
  swift_beginAccess();

  *(v48 + 16) = v21;

  swift_endAccess();

  v20[7] = &v64;
  swift_beginAccess();
  swift_endAccess();
  v22 = 0;
  v40(v21);
  sub_214C86E58(v21, v22 & 1);

  MEMORY[0x277D82BD8](v52);
}

void sub_214C8422C(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, NSObject *a4, void *a5, char a6, char a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();

  if (Strong)
  {

    MEMORY[0x277D82BE0](a5);
    MEMORY[0x277D82BE0](a4);
    v9 = swift_allocObject();
    v9[2] = a8;
    v9[3] = Strong;
    v9[4] = a5;
    v9[5] = a4;
    sub_214C850BC(a5, a6 & 1, a7 & 1, sub_214C8779C, v9);
  }

  else
  {
    sub_214C86C30();
    v10 = swift_allocError();
    *v8 = 0;
    a2(v10, 1);
    sub_214C86E58(v10, 1);

    dispatch_group_leave(a4);
  }
}

void sub_214C8445C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v96 = a1;
  v95 = a2;
  v91 = a3;
  v92 = a4;
  v93 = a5;
  v94 = a6;
  v79 = sub_214C877B4;
  v80 = sub_214A7E854;
  v81 = sub_214BC6620;
  v82 = sub_214BC6628;
  v83 = sub_214B21624;
  v84 = sub_214A662DC;
  v85 = sub_214A662DC;
  v86 = sub_214A7E40C;
  v87 = sub_214A662DC;
  v88 = sub_214A662DC;
  v89 = sub_214B217B4;
  v115 = 0;
  v116 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v90 = 0;
  v104 = 0;
  v97 = sub_214CCDA74();
  v98 = *(v97 - 8);
  v99 = v97 - 8;
  v100 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v96);
  v101 = v42 - v100;
  v115 = v6;
  v116 = v7 & 1;
  v114 = v8 + 16;
  v113 = v9;
  v112 = v10;
  v111 = v11;
  if (v7)
  {
    v77 = v96;
    v12 = v101;
    v53 = v96;
    v13 = v96;
    v110 = v53;
    (*(v98 + 16))(v12, v92 + OBJC_IVAR____TtC6MailUI31OriginalContentMessageGenerator_logger, v97);
    MEMORY[0x277D82BE0](v93);
    v52 = 24;
    v60 = 7;
    v14 = swift_allocObject();
    v15 = v53;
    v54 = v14;
    *(v14 + 16) = v93;
    v16 = v15;
    v58 = swift_allocObject();
    *(v58 + 16) = v53;
    sub_214B1C228();

    v72 = sub_214CCDA54();
    v73 = sub_214CCFBA4();
    v56 = 17;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    v57 = 8;
    *(v64 + 16) = 8;
    v59 = 32;
    v17 = swift_allocObject();
    v18 = v54;
    v55 = v17;
    *(v17 + 16) = v79;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v55;
    v65 = v19;
    *(v19 + 16) = v80;
    *(v19 + 24) = v20;
    v66 = swift_allocObject();
    *(v66 + 16) = 64;
    v67 = swift_allocObject();
    *(v67 + 16) = v57;
    v21 = swift_allocObject();
    v22 = v58;
    v61 = v21;
    *(v21 + 16) = v81;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v61;
    v62 = v23;
    *(v23 + 16) = v82;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v62;
    v69 = v25;
    *(v25 + 16) = v83;
    *(v25 + 24) = v26;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v68 = sub_214CD03C4();
    v70 = v27;

    v28 = v63;
    v29 = v70;
    *v70 = v84;
    v29[1] = v28;

    v30 = v64;
    v31 = v70;
    v70[2] = v85;
    v31[3] = v30;

    v32 = v65;
    v33 = v70;
    v70[4] = v86;
    v33[5] = v32;

    v34 = v66;
    v35 = v70;
    v70[6] = v87;
    v35[7] = v34;

    v36 = v67;
    v37 = v70;
    v70[8] = v88;
    v37[9] = v36;

    v38 = v69;
    v39 = v70;
    v70[10] = v89;
    v39[11] = v38;
    sub_214A63280();

    if (os_log_type_enabled(v72, v73))
    {
      v40 = v90;
      v44 = sub_214CCFF24();
      v42[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v43 = 1;
      v45 = sub_214A632C4(1);
      v46 = sub_214A632C4(v43);
      v48 = &v109;
      v109 = v44;
      v49 = &v108;
      v108 = v45;
      v50 = &v107;
      v107 = v46;
      v47 = 2;
      sub_214A6627C(2, &v109);
      sub_214A6627C(v47, v48);
      v105 = v84;
      v106 = v63;
      sub_214A66290(&v105, v48, v49, v50);
      v51 = v40;
      if (v40)
      {

        __break(1u);
      }

      else
      {
        v105 = v85;
        v106 = v64;
        sub_214A66290(&v105, &v109, &v108, &v107);
        v42[5] = 0;
        v105 = v86;
        v106 = v65;
        sub_214A66290(&v105, &v109, &v108, &v107);
        v42[4] = 0;
        v105 = v87;
        v106 = v66;
        sub_214A66290(&v105, &v109, &v108, &v107);
        v42[3] = 0;
        v105 = v88;
        v106 = v67;
        sub_214A66290(&v105, &v109, &v108, &v107);
        v42[2] = 0;
        v105 = v89;
        v106 = v69;
        sub_214A66290(&v105, &v109, &v108, &v107);
        _os_log_impl(&dword_214A5E000, v72, v73, "Unable to generate original content message for message: %s with error %@. Skipping this message.", v44, 0x16u);
        v42[1] = 1;
        sub_214A669DC(v45);
        sub_214A669DC(v46);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    v41 = MEMORY[0x277D82BD8](v72);
    (*(v98 + 8))(v101, v97, v41);
  }

  else
  {
    v78 = v96;
    v76 = v96;
    MEMORY[0x277D82BE0](v96);
    v104 = v76;
    MEMORY[0x277D82BE0](v76);
    v74 = &v103;
    v103 = v76;
    v75 = &v102;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA381C0);
    sub_214CCF884();
    swift_endAccess();
    MEMORY[0x277D82BD8](v76);
  }

  dispatch_group_leave(v94);
}

uint64_t sub_214C850BC(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v12 = swift_allocObject();

  swift_weakInit();

  MEMORY[0x277D82BE0](a1);
  v11 = swift_allocObject();
  *(v11 + 16) = v12;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  *(v11 + 40) = a1;
  *(v11 + 48) = a2;
  sub_214C81DB4(a1, a3 & 1, sub_214C86F28, v11);
}

uint64_t sub_214C8521C(void *a1, int a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, int a7)
{
  v49 = a1;
  v48 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = 0;
  v35 = sub_214C87710;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  v69 = 0;
  v70 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v36 = 0;
  v37 = sub_214CCF224();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v41 = v28 - v40;
  v50 = sub_214CCF254();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v54 = v28 - v53;
  v72 = v7;
  v73 = v8 & 1;
  v55 = v9 + 16;
  v71 = v9 + 16;
  v69 = v10;
  v70 = v11;
  v68 = v12;
  v67 = v13 & 1;
  v56 = &v66;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v34 = Strong;
    v31 = Strong;
    v65 = Strong;
    v30 = *(Strong + OBJC_IVAR____TtC6MailUI31OriginalContentMessageGenerator_contentRepresentationQueue);
    MEMORY[0x277D82BE0](v30);
    sub_214C86CBC(v49, v48 & 1);

    MEMORY[0x277D82BE0](v45);

    v19 = swift_allocObject();
    v20 = v48;
    v21 = v45;
    v22 = v46;
    v23 = v43;
    v24 = v44;
    v25 = v35;
    v26 = v31;
    v28[1] = v19;
    *(v19 + 16) = v49;
    *(v19 + 24) = v20 & 1;
    *(v19 + 32) = v26;
    *(v19 + 40) = v21;
    *(v19 + 48) = v22;
    *(v19 + 56) = v23;
    *(v19 + 64) = v24;
    v63 = v25;
    v64 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = 0;
    v61 = sub_214A746A8;
    v62 = &block_descriptor_39;
    v29 = _Block_copy(&aBlock);
    sub_214BC69C4();
    sub_214BC69DC();
    MEMORY[0x21605DF00](0, v54, v41, v29);
    (*(v38 + 8))(v41, v37);
    (*(v51 + 8))(v54, v50);
    _Block_release(v29);

    MEMORY[0x277D82BD8](v30);
  }

  else
  {

    sub_214C86C30();
    v33 = 1;
    v14 = swift_allocError();
    v15 = v43;
    v32 = v14;
    v17 = v16;
    v18 = v33;
    *v17 = 0;
    v15(v14, v18);
    sub_214C86BE8(v32, v33 & 1);
  }
}

void sub_214C85700(void *a1, char a2, uint64_t a3, void *a4, char a5, void (*a6)(void *))
{
  if (a2)
  {
    v9 = a1;

    v10 = a1;
    a6(a1);
    sub_214C86BE8(a1, 1);
  }

  else
  {
    MEMORY[0x277D82BE0](a1);
    v6 = sub_214C85964(a1, a4, a5 & 1);
    v12 = v6;
    if (v6)
    {

      v8 = MEMORY[0x277D82BE0](v12);
      (a6)(v12, v8);
      sub_214C86BE8(v12, 0);

      MEMORY[0x277D82BD8](v12);
    }

    else
    {

      sub_214C86C30();
      v11 = swift_allocError();
      *v7 = 2;
      (a6)(v11, 1);
      sub_214C86BE8(v11, 1);
    }

    MEMORY[0x277D82BD8](a1);
  }
}

id sub_214C85964(uint64_t a1, void *a2, int a3)
{
  v57 = a1;
  v56 = a2;
  v55 = a3;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v70 = 0;
  v52 = 0;
  v53 = (*(*(sub_214CCD254() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v54 = &v22 - v53;
  v58 = sub_214CCD2B4();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v62 = &v22 - v61;
  v79 = v4;
  v78 = v5;
  v77 = v6 & 1;
  v76 = v3;
  v63 = sub_214C83334(v4, 1, v6 & 1);
  v64 = v7;
  if (!v7)
  {
    return 0;
  }

  v50 = v63;
  v51 = v64;
  v47 = v64;
  v48 = v63;
  v74 = v63;
  v75 = v64;
  *&v8 = MEMORY[0x277D82BE0](v56).n128_u64[0];
  v9 = [v56 senderAddress];
  v49 = v9;
  if (!v9)
  {
    MEMORY[0x277D82BD8](v56);

    return 0;
  }

  v46 = v49;
  v45 = v49;
  v73 = v49;
  *&v10 = MEMORY[0x277D82BD8](v56).n128_u64[0];
  v11 = [v56 searchableMessageID];
  v71 = v11;
  if (v11)
  {
    v72 = v71;
  }

  else
  {
    v42 = sub_214BC68D8();
    sub_214CCD2A4();
    v43 = sub_214CCD264();
    v44 = v12;
    (*(v59 + 8))(v62, v58);
    v72 = sub_214BC9508();
    if (v71)
    {
      sub_214A671E8(&v71);
    }
  }

  v40 = v72;
  v70 = v72;
  v41 = sub_214C86DF4();

  *&v13 = MEMORY[0x277D82BE0](v56).n128_u64[0];
  v67 = [v56 subject];
  if (v67)
  {
    v33 = &v67;
    v34 = v67;
    MEMORY[0x277D82BE0](v67);
    sub_214A671E8(v33);
    *&v14 = MEMORY[0x277D82BD8](v56).n128_u64[0];
    v35 = [v34 subjectString];
    v36 = sub_214CCF564();
    v37 = v15;
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    v38 = v36;
    v39 = v37;
  }

  else
  {
    sub_214A671E8(&v67);
    MEMORY[0x277D82BD8](v56);
    v38 = 0;
    v39 = 0;
  }

  v65 = v38;
  v66 = v39;
  if (v39)
  {
    v68 = v65;
    v69 = v66;
  }

  else
  {
    v68 = sub_214CCF614();
    v69 = v16;
    if (v66)
    {
      sub_214A61B48();
    }
  }

  v24 = v68;
  v25 = v69;
  *&v17 = MEMORY[0x277D82BE0](v56).n128_u64[0];
  v30 = [v56 toList];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0);
  v26 = sub_214CCF7E4();
  MEMORY[0x277D82BD8](v56);
  *&v18 = MEMORY[0x277D82BE0](v56).n128_u64[0];
  v29 = [v56 ccList];
  v27 = sub_214CCF7E4();
  MEMORY[0x277D82BD8](v56);
  *&v19 = MEMORY[0x277D82BE0](v56).n128_u64[0];
  v23 = [v56 flags];
  MEMORY[0x277D82BD8](v56);
  *&v20 = MEMORY[0x277D82BE0](v56).n128_u64[0];
  v28 = [v56 date];
  sub_214CCD224();
  MEMORY[0x277D82BD8](v56);
  v31 = sub_214C86098(v40, v48, v47, v24, v25, v45, v26, v27, v23, v54);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);

  return v31;
}

uint64_t sub_214C86134()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA381C0);
  sub_214C86F48();
  return sub_214CCF754();
}

uint64_t sub_214C861E4(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9[1] = a2;
  v26 = 0;
  v25 = 0;
  v20 = sub_214CCD254();
  v15 = *(v20 - 8);
  v16 = v20 - 8;
  v11 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v17 = v9 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v19 = v9 - v12;
  v26 = *v5;
  v14 = *v6;
  v25 = v14;
  v13 = 0x1FB750000uLL;
  v23 = [v26 0x1FB750678];
  sub_214CCD224();
  v18 = [v14 (v13 + 1656)];
  sub_214CCD224();
  v24 = sub_214CCD1E4();
  v22 = *(v15 + 8);
  v21 = v15 + 8;
  v22(v17, v20);
  v7 = MEMORY[0x277D82BD8](v18);
  (v22)(v19, v20, v7);
  MEMORY[0x277D82BD8](v23);
  return v24 & 1;
}

uint64_t OriginalContentMessageGenerator.deinit()
{
  v3 = OBJC_IVAR____TtC6MailUI31OriginalContentMessageGenerator_logger;
  v1 = sub_214CCDA74();
  (*(*(v1 - 8) + 8))(v0 + v3);
  MEMORY[0x277D82BD8](*(v0 + OBJC_IVAR____TtC6MailUI31OriginalContentMessageGenerator_contentRepresentationQueue));
  return v4;
}

double sub_214C8649C()
{
  swift_unknownObjectRetain();
  location = 0;
  objc_storeStrong(&location, v0);
  v13 = [location emailAddressValue];
  v14 = [v13 displayName];
  v15 = 0;
  if (v14)
  {
    MEMORY[0x277D82BE0](v14);
  }

  else
  {
    v16 = [location stringValue];
    v15 = 1;
    MEMORY[0x277D82BE0](v16);
  }

  v18 = v1;
  if (v15)
  {
    MEMORY[0x277D82BD8](v16);
  }

  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v13);
  objc_storeStrong(&location, 0);
  v9 = v18;
  v2 = v18;
  v10 = v9;
  swift_unknownObjectRelease();
  sub_214CCF564();
  swift_unknownObjectRetain();
  v21 = 0;
  objc_storeStrong(&v21, v0);
  v11 = [v21 emailAddressValue];
  v12 = [v11 simpleAddress];
  v19 = 0;
  if (v12)
  {
    MEMORY[0x277D82BE0](v12);
  }

  else
  {
    v20 = [v21 stringValue];
    v19 = 1;
    MEMORY[0x277D82BE0](v20);
  }

  v22 = v3;
  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v11);
  objc_storeStrong(&v21, 0);
  v6 = v22;
  v4 = v22;
  v8 = v6;
  swift_unknownObjectRelease();
  sub_214CCF564();
  v7 = *MEMORY[0x277CBCFC0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBCFC0]);
  sub_214CCF564();
  sub_214CCD934();
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  return result;
}

uint64_t sub_214C867D0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0);
  sub_214CD03C4();
  v10 = [a1 toList];
  if (v10)
  {
    v7 = sub_214CCF7E4();
    *&v1 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EB0);
    sub_214B68780();
    sub_214CCF874();
  }

  v6 = [a1 ccList];
  if (v6)
  {
    v4 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v6);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EB0);
    sub_214B68780();
    sub_214CCF874();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EB0);
  sub_214CCD944();
  sub_214B68780();
  v3 = sub_214CCF6F4();
  sub_214A62278();
  sub_214A62278();
  return v3;
}

unint64_t sub_214C86AC4()
{
  v2 = qword_27CA381A0;
  if (!qword_27CA381A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA381A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for OriginalContentMessageGenerator()
{
  v1 = qword_27CA38230;
  if (!qword_27CA38230)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void sub_214C86BE8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    MEMORY[0x277D82BD8](a1);
  }
}

unint64_t sub_214C86C30()
{
  v2 = qword_27CA381D0;
  if (!qword_27CA381D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA381D0);
    return WitnessTable;
  }

  return v2;
}

void sub_214C86CBC(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    MEMORY[0x277D82BE0](a1);
  }
}

unint64_t sub_214C86D04()
{
  v2 = qword_27CA381E0;
  if (!qword_27CA381E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA381E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C86D7C()
{
  v2 = qword_27CA381E8;
  if (!qword_27CA381E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA381E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C86DF4()
{
  v2 = qword_27CA381F8;
  if (!qword_27CA381F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA381F8);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_214C86E58(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_214C86F48()
{
  v2 = qword_27CA38220;
  if (!qword_27CA38220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA381C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38220);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C86FEC()
{
  updated = sub_214CCDA74();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t dispatch thunk of OriginalContentMessageGenerator.originalContentMessages(for:allowNetwork:)(uint64_t a1, char a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_214B8C8CC;

  return v8(a1, a2 & 1);
}

unint64_t sub_214C8737C()
{
  v2 = qword_27CA38240;
  if (!qword_27CA38240)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38240);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C873F8()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_214C8649C();
  return swift_unknownObjectRelease();
}

id sub_214C87460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = sub_214CCF544();
  if (a5)
  {
    v18 = sub_214CCF544();

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (a7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0);
    v16 = sub_214CCF7D4();

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0);
    v14 = sub_214CCF7D4();

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v12 = sub_214CCD1C4();
  v13 = [v24 initWithSearchableMessageID:a1 bodyText:v26 subject:v19 sender:a6 toList:v17 ccList:v15 flags:a9 date:v12];
  MEMORY[0x277D82BD8](v12);
  v10 = sub_214CCD254();
  (*(*(v10 - 8) + 8))(a10);
  MEMORY[0x277D82BD8](a9);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v17);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v26);

  MEMORY[0x277D82BD8](a1);
  return v13;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_214C877BC(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for ReadingOptions();
    v1 = sub_214CCF834();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

void sub_214C87868(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38248);

  sub_214C81C90(a1, a2 & 1);
}

uint64_t SearchItem.Photo.id.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = sub_214CCD2B4();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v7 = &v5 - v6;
  v14 = v3;
  v13 = v1;
  (*(v9 + 16))(v2);
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t type metadata accessor for SearchItem.Photo()
{
  v1 = qword_280C7E598;
  if (!qword_280C7E598)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t SearchItem.Photo.configuration.setter(uint64_t *a1)
{
  v4 = *a1;
  v5 = a1[1];

  v2 = (v1 + *(type metadata accessor for SearchItem.Photo() + 20));
  *v2 = v4;
  v2[1] = v5;
}

uint64_t SearchItem.Photo.description.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Photo() + 24));

  return v2;
}

uint64_t SearchItem.Photo.description.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Photo() + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.Photo.image.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Photo() + 28));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double SearchItem.Photo.image.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = (v1 + *(type metadata accessor for SearchItem.Photo() + 28));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t SearchItem.Photo.senders.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Photo() + 32));

  return v2;
}

uint64_t SearchItem.Photo.senders.setter(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SearchItem.Photo() + 32)) = a1;
}

uint64_t SearchItem.Photo.init(id:configuration:description:image:senders:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a7;
  v38 = a1;
  v25 = a2;
  v29 = a3;
  v34 = a4;
  v33 = a5;
  v32 = a6;
  v48 = 0;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v41 = 0;
  v26 = 0;
  v39 = sub_214CCD2B4();
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v24 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v27 = &v23 - v24;
  v30 = type metadata accessor for SearchItem.Photo();
  MEMORY[0x28223BE20](v27);
  v7 = v26;
  v8 = v30;
  v9 = v36;
  v40 = &v23 - v10;
  v48 = &v23 - v10;
  v47 = v11;
  v28 = *v12;
  v35 = v12[1];
  v45 = v28;
  v46 = v35;
  v43 = v13;
  v44 = v14;
  v42 = v15;
  v41 = v16;
  v17 = (&v23 + v30[6] - v10);
  *v17 = 0;
  v17[1] = 0;
  *(&v23 + v8[8] - v10) = v7;
  (*(v9 + 16))();
  (*(v36 + 32))(v40, v27, v39);

  v18 = v35;
  v19 = (v40 + v30[5]);
  *v19 = v28;
  v19[1] = v18;

  v20 = v34;
  v21 = (v40 + v30[6]);
  *v21 = v29;
  v21[1] = v20;

  MEMORY[0x277D82BE0](v33);
  *(v40 + v30[7]) = v33;

  *(v40 + v30[8]) = v32;

  sub_214C8827C(v40, v31);

  MEMORY[0x277D82BD8](v33);

  (*(v36 + 8))(v38, v39);
  return sub_214C883D4(v40);
}

uint64_t sub_214C8827C(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 16))(a2, a1);
  v12 = type metadata accessor for SearchItem.Photo();
  v3 = (a1 + v12[5]);
  v6 = (a2 + v12[5]);
  *v6 = *v3;
  v7 = v3[1];

  v6[1] = v7;
  v4 = v12[6];
  v8 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v9 = *(a1 + v4 + 8);

  *(v8 + 8) = v9;
  v10 = v12[7];
  v11 = *(a1 + v10);
  MEMORY[0x277D82BE0](v11);
  *(a2 + v10) = v11;
  v15 = v12[8];
  v16 = *(a1 + v15);

  result = a2;
  *(a2 + v15) = v16;
  return result;
}

uint64_t sub_214C883D4(uint64_t a1)
{
  v1 = sub_214CCD2B4();
  (*(*(v1 - 8) + 8))(a1);
  v3 = type metadata accessor for SearchItem.Photo();

  MEMORY[0x277D82BD8](*(a1 + *(v3 + 28)));

  return a1;
}

BOOL static SearchItem.Photo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v42 = a2;
  v66 = 0;
  v65 = 0;
  v49 = sub_214CCD2B4();
  v45 = *(v49 - 8);
  v46 = v49 - 8;
  v40 = v45[8];
  v39 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v47 = &v8 - v39;
  v41 = v39;
  v2 = MEMORY[0x28223BE20](&v8 - v39);
  v48 = &v8 - v41;
  v66 = v3;
  v65 = v42;
  v44 = v45[2];
  v43 = v45 + 2;
  v44(v2);
  (v44)(v47, v42, v49);
  v52 = sub_214CCD284();
  v51 = v45[1];
  v50 = v45 + 1;
  v51(v47, v49);
  v51(v48, v49);
  if ((v52 & 1) == 0)
  {
    return 0;
  }

  v30 = type metadata accessor for SearchItem.Photo();
  v4 = (v38 + v30[5]);
  v31 = *v4;
  v32 = v4[1];

  v36 = v64;
  v64[0] = v31;
  v64[1] = v32;
  v5 = (v42 + v30[5]);
  v33 = *v5;
  v34 = v5[1];

  v35 = v63;
  v63[0] = v33;
  v63[1] = v34;
  v37 = static CornerConfiguration.== infix(_:_:)(v36, v63);
  sub_214A61B48();
  sub_214A61B48();
  if (!v37)
  {
    return 0;
  }

  v6 = (v38 + v30[6]);
  v27 = *v6;
  v28 = v6[1];

  v29 = *(v42 + v30[6]);

  v61[0] = v27;
  v61[1] = v28;
  v62 = v29;
  if (v28)
  {
    sub_214A61AD0(v61, &v55);
    if (*(&v62 + 1))
    {
      v24 = &v54;
      v54 = v55;
      v23 = &v53;
      v53 = v62;
      v25 = MEMORY[0x21605D8D0](v55, *(&v55 + 1), v62, *(&v62 + 1));
      sub_214A61B48();
      sub_214A61B48();
      sub_214A61B48();
      v26 = v25;
      goto LABEL_9;
    }

    sub_214A61B48();
    goto LABEL_11;
  }

  if (*(&v62 + 1))
  {
LABEL_11:
    sub_214A76610();
    v26 = 0;
    goto LABEL_9;
  }

  sub_214A61B48();
  v26 = 1;
LABEL_9:
  v22 = v26;

  if (v22)
  {
    sub_214A77084();
    v20 = *(v38 + v30[7]);
    MEMORY[0x277D82BE0](v20);
    v19 = *(v42 + v30[7]);
    MEMORY[0x277D82BE0](v19);
    v21 = sub_214CCFD64();
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    if ((v21 & 1) == 0)
    {
      return 0;
    }

    v17 = *(v38 + v30[8]);

    v18 = *(v42 + v30[8]);

    v59 = v17;
    v60 = v18;
    if (v17)
    {
      sub_214B1C04C(&v59, &v58);
      if (v60)
      {
        v14 = &v57;
        v57 = v58;
        v13 = &v56;
        v56 = v60;
        v12 = v58;
        v10 = v60;
        v11 = sub_214B63E30();
        sub_214B63E94();
        v15 = sub_214CCF8E4();
        sub_214A62278();
        sub_214A62278();
        sub_214A62278();
        v16 = v15;
LABEL_20:
        v9 = v16;

        return (v9 & 1) != 0;
      }

      sub_214A62278();
    }

    else if (!v60)
    {
      sub_214A62278();
      v16 = 1;
      goto LABEL_20;
    }

    sub_214B63DF8();
    v16 = 0;
    goto LABEL_20;
  }

  return 0;
}

uint64_t *SearchItem.Photo.hash(into:)(uint64_t a1)
{
  v25 = a1;
  v2 = v1;
  v27 = v2;
  v36 = 0;
  v35 = 0;
  v22 = 0;
  v13 = sub_214CCD2B4();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v13);
  v12 = &v9 - v9;
  v36 = a1;
  v35 = v5;
  (*(v10 + 16))(v4);
  sub_214B5C87C();
  sub_214CD0554();
  (*(v10 + 8))(v12, v13);
  v26 = type metadata accessor for SearchItem.Photo();
  v6 = (v27 + v26[5]);
  v14 = *v6;
  v15 = v6[1];

  v16 = v34;
  v34[0] = v14;
  v34[1] = v15;
  sub_214B5D644();
  sub_214CD0554();
  sub_214A61B48();
  v7 = (v27 + v26[6]);
  v17 = *v7;
  v18 = v7[1];

  v20 = v33;
  v33[0] = v17;
  v33[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352F0);
  sub_214A75068();
  sub_214CD0554();
  sub_214A61B48();
  v21 = *(v27 + v26[7]);
  MEMORY[0x277D82BE0](v21);
  v24 = &v32;
  v32 = v21;
  v23 = sub_214A731BC();
  sub_214A74FE8();
  sub_214CD0554();
  MEMORY[0x277D82BD8](v32);
  v28 = *(v27 + v26[8]);

  v30 = &v31;
  v31 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359B0);
  sub_214B642F0();
  sub_214CD0554();
  result = v30;
  sub_214A62278();
  return result;
}

uint64_t SearchItem.Photo.hashValue.getter()
{
  type metadata accessor for SearchItem.Photo();
  sub_214C88F54();
  return sub_214CD0114();
}

unint64_t sub_214C88F54()
{
  v2 = qword_27CA38250;
  if (!qword_27CA38250)
  {
    type metadata accessor for SearchItem.Photo();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C89034()
{
  v2 = qword_27CA38258;
  if (!qword_27CA38258)
  {
    type metadata accessor for SearchItem.Photo();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38258);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C89120()
{
  v5 = sub_214CCD2B4();
  if (v0 <= 0x3F)
  {
    v5 = sub_214B5CC3C();
    if (v1 <= 0x3F)
    {
      v5 = sub_214A731BC();
      if (v2 <= 0x3F)
      {
        v5 = sub_214B64884();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

id static UIColor.platformSecondaryLabel.getter()
{
  v0 = [objc_opt_self() secondaryLabelColor];

  return v0;
}

id static UIColor.platformTertiaryLabel.getter()
{
  v0 = [objc_opt_self() tertiaryLabelColor];

  return v0;
}

id static UIColor.platformLabel.getter()
{
  v0 = [objc_opt_self() labelColor];

  return v0;
}

id static UIColor.platformBlack.getter()
{
  v0 = [objc_opt_self() systemBlackColor];

  return v0;
}

id static UIColor.platformWhite.getter()
{
  v0 = [objc_opt_self() systemWhiteColor];

  return v0;
}

id static UIColor.focus.getter()
{
  v0 = [objc_opt_self() systemIndigoColor];

  return v0;
}

id static UIColor.readLater.getter()
{
  v0 = [objc_opt_self() systemTealColor];

  return v0;
}

id static UIColor.messageListBackground.getter()
{
  v0 = [objc_opt_self() tableBackgroundColor];

  return v0;
}

id sub_214C894E8()
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v0 = static UIColor.mailBrandAvatarBorder.getter();

  return v0;
}

uint64_t static UIColor.mailBrandAvatarBorder.getter()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_214CCD744();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_214A65CE0();
  v1 = sub_214CBEE08();
  (*(v5 + 16))(v8, v1, v7);
  return sub_214CCFD54();
}

id static UIFont.manualSummaryTitle.getter()
{
  v2 = objc_opt_self();
  v3 = *MEMORY[0x277D76968];
  MEMORY[0x277D82BE0](*MEMORY[0x277D76968]);
  v4 = [v2 _preferredFontForTextStyle_weight_];
  MEMORY[0x277D82BD8](v3);
  if (v4)
  {
    return v4;
  }

  sub_214CD01F4();
  __break(1u);
  return v1;
}

id static UIFont.manualSummaryTextView.getter()
{
  v1 = objc_opt_self();
  v2 = *MEMORY[0x277D76918];
  v3 = [v1 preferredFontForTextStyle_];
  MEMORY[0x277D82BD8](v2);
  return v3;
}

id static UIFont.manualSummaryExternalIntelligenceLabel.getter()
{
  v2 = objc_opt_self();
  v3 = *MEMORY[0x277D76968];
  v4 = [v2 _preferredFontForTextStyle_addingSymbolicTraits_];
  MEMORY[0x277D82BD8](v3);
  if (v4)
  {
    return v4;
  }

  sub_214CD01F4();
  __break(1u);
  return v1;
}

id static UIFont.manualSummaryButton.getter()
{
  v2 = objc_opt_self();
  v3 = *MEMORY[0x277D76968];
  v4 = [v2 _preferredFontForTextStyle_addingSymbolicTraits_];
  MEMORY[0x277D82BD8](v3);
  if (v4)
  {
    return v4;
  }

  sub_214CD01F4();
  __break(1u);
  return v1;
}

unint64_t static UIImage.gradientImage(with:bounds:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v42 = 0;
  v47 = a1;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  sub_214C89E8C();
  v20 = sub_214A61730();
  v41 = v20;
  v40 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38278);
  v23 = sub_214C8BE98();
  sub_214A6E4F4(sub_214C8BE08, 0, v21, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84A98], v23, MEMORY[0x277D84AC0], v22);
  v13 = sub_214CCF7D4();

  [v20 setColors_];
  MEMORY[0x277D82BD8](v13);
  v39 = a1;
  v14 = sub_214A69284();
  sub_214A6E4F4(sub_214C8BF20, 0, v21, v14, MEMORY[0x277D84A98], v23, MEMORY[0x277D84AC0], v22);
  v6 = sub_214CCF7D4();

  [v20 setLocations_];
  MEMORY[0x277D82BD8](v6);
  v37 = 0;
  v38 = 0.5;
  [v20 setStartPoint_];
  v35 = 1.0;
  v36 = 0.5;
  [v20 setEndPoint_];
  MEMORY[0x277D82BE0](v20);
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  [v20 setFrame_];
  MEMORY[0x277D82BD8](v20);
  sub_214C8BF88();
  v9 = sub_214C8BCC0(a4, a5);
  MEMORY[0x277D82BE0](v20);
  v8 = swift_allocObject();
  *(v8 + 16) = v20;

  v7 = swift_allocObject();
  *(v7 + 16) = sub_214C8C0C4;
  *(v7 + 24) = v8;

  v29 = sub_214B6829C;
  v30 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = 0;
  v27 = sub_214B88634;
  v28 = &block_descriptor_24;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 imageWithActions_];
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v20);
    sub_214A6B584(sub_214C8C0C4);
    return v11;
  }

  return result;
}

unint64_t sub_214C89E8C()
{
  v2 = qword_280C7CC38;
  if (!qword_280C7CC38)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CC38);
    return ObjCClassMetadata;
  }

  return v2;
}

UIImage __swiftcall UIImage.badged(with:background:foreground:)(Swift::String with, UIColor background, UIColor foreground)
{
  v25 = 0;
  v28 = with;
  isa = background.super.isa;
  v26 = foreground.super.isa;
  sub_214C8BF88();
  [v6 size];
  v23 = v3;
  v24 = v4;
  v11 = sub_214C8BCC0(v3, v4);
  (MEMORY[0x277D82BE0])();
  MEMORY[0x277D82BE0](background.super.isa);
  MEMORY[0x277D82BE0](foreground.super.isa);

  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = 0x3FAC71C71C71C71CLL;
  *(v10 + 32) = 0x3FA2F684BDA12F68;
  *(v10 + 40) = background;
  *(v10 + 48) = 0x3FC7B425ED097B42;
  *(v10 + 56) = foreground;
  *(v10 + 64) = with;

  v14 = swift_allocObject();
  *(v14 + 16) = sub_214C8C0CC;
  *(v14 + 24) = v10;

  v21 = sub_214B6829C;
  v22 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = 0;
  v19 = sub_214B88634;
  v20 = &block_descriptor_13_1;
  v12 = _Block_copy(&aBlock);

  v13 = [v11 imageWithActions_];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result.super.isa = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x277D82BD8](v11);

    return v13;
  }

  return result;
}

uint64_t static UIImage.mui_dynamicImage(baseImage:dark:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = a1;
  v86 = a2;
  v85 = a3;
  v75 = sub_214C8B148;
  v76 = sub_214C8C2A8;
  v77 = sub_214B14B24;
  v78 = sub_214B1DA88;
  v79 = sub_214B21624;
  v80 = sub_214A662DC;
  v81 = sub_214A662DC;
  v82 = sub_214B217B4;
  v114 = 0;
  v112 = 0;
  v113 = 0;
  v111 = 0;
  v83 = 0;
  v104 = 0;
  v103 = 0;
  v94 = 0;
  v84 = 0;
  v88 = sub_214CCDA74();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v87);
  v92 = v28 - v91;
  v114 = v5;
  v112 = v6;
  v113 = v7;
  v111 = v3;
  v93 = [v5 imageAsset];
  if (!v93)
  {
    v14 = v92;
    v39 = sub_214C8AE8C();
    v40 = &v110;
    v42 = 32;
    swift_beginAccess();
    (*(v89 + 16))(v14, v39, v88);
    swift_endAccess();
    MEMORY[0x277D82BE0](v87);
    v43 = 7;
    v44 = swift_allocObject();
    *(v44 + 16) = v87;
    v52 = sub_214CCDA54();
    v53 = sub_214CCFBA4();
    v41 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 66;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v15 = swift_allocObject();
    v16 = v44;
    v45 = v15;
    *(v15 + 16) = v78;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v45;
    v49 = v17;
    *(v17 + 16) = v79;
    *(v17 + 24) = v18;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v48 = sub_214CD03C4();
    v50 = v19;

    v20 = v46;
    v21 = v50;
    *v50 = v80;
    v21[1] = v20;

    v22 = v47;
    v23 = v50;
    v50[2] = v81;
    v23[3] = v22;

    v24 = v49;
    v25 = v50;
    v50[4] = v82;
    v25[5] = v24;
    sub_214A63280();

    if (os_log_type_enabled(v52, v53))
    {
      v26 = v83;
      v32 = sub_214CCFF24();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v33 = sub_214A632C4(1);
      v34 = sub_214A632C4(0);
      v35 = &v109;
      v109 = v32;
      v36 = &v108;
      v108 = v33;
      v37 = &v107;
      v107 = v34;
      sub_214A6627C(2, &v109);
      sub_214A6627C(1, v35);
      v105 = v80;
      v106 = v46;
      sub_214A66290(&v105, v35, v36, v37);
      v38 = v26;
      if (v26)
      {

        __break(1u);
      }

      else
      {
        v105 = v81;
        v106 = v47;
        sub_214A66290(&v105, &v109, &v108, &v107);
        v30 = 0;
        v105 = v82;
        v106 = v49;
        sub_214A66290(&v105, &v109, &v108, &v107);
        _os_log_impl(&dword_214A5E000, v52, v53, "Cannot create dynamic image for %{public}@: Missing image asset", v32, 0xCu);
        sub_214A669DC(v33);
        sub_214A669DC(v34);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    v27 = MEMORY[0x277D82BD8](v52);
    (*(v89 + 8))(v92, v88, v27);
    MEMORY[0x277D82BE0](v87);
    v56 = v87;
    v57 = 0;
    v58 = 0;
    v59 = v84;
    v60 = v84;
    goto LABEL_13;
  }

  v74 = v93;
  v63 = v93;
  v104 = v93;
  v64 = [objc_opt_self() currentTraitCollection];
  v70 = sub_214CCFC74();
  MEMORY[0x277D82BD8](v64);
  v103 = v70;
  v65 = &v102;
  v102 = 0;
  v66 = 7;
  v8 = swift_allocObject();
  v9 = v86;
  v10 = v85;
  v69 = v8;
  v8[2] = v65;
  v8[3] = v9;
  v8[4] = v10;

  v67 = v69;
  v11 = swift_allocObject();
  v12 = v69;
  v68 = v11;
  *(v11 + 16) = v76;
  *(v11 + 24) = v12;

  v100 = v77;
  v101 = v68;
  aBlock = MEMORY[0x277D85DD0];
  v96 = 1107296256;
  v97 = 0;
  v98 = sub_214BE4B54;
  v99 = &block_descriptor_38_0;
  v72 = v68;
  v71 = _Block_copy(&aBlock);

  [v70 performAsCurrentTraitCollection_];
  _Block_release(v71);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v62 = v102;
    MEMORY[0x277D82BE0](v102);
    if (v62)
    {
      v61 = v62;
      v55 = v62;
      v94 = v62;
      sub_214C8C2D4();
      v54 = sub_214C8B214(2);
      [v63 registerImage:v55 withTraitCollection:?];
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BE0](v87);
      MEMORY[0x277D82BD8](v55);
    }

    else
    {
      MEMORY[0x277D82BE0](v87);
    }

    sub_214A671E8(&v102);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v63);
    v56 = v87;
    v57 = v76;
    v58 = v67;
    v59 = v84;
    v60 = v84;
LABEL_13:
    v28[1] = v60;
    v28[0] = v59;
    v29 = v56;
    sub_214A6B584(v57);
    sub_214A6B584(v28[0]);
    return v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_214C8AE24()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_27CA38260);
  __swift_project_value_buffer(v1, qword_27CA38260);
  sub_214A731BC();
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_214C8AE8C()
{
  if (qword_27CA340B0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_27CA38260);
}

uint64_t static UIImage.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214C8AE8C();
  swift_beginAccess();
  v1 = sub_214CCDA74();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t static UIImage.logger.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = sub_214CCDA74();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  v6 = sub_214C8AE8C();
  (*(v9 + 16))(v7, v11, v12);
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t (*static UIImage.logger.modify())()
{
  sub_214C8AE8C();
  swift_beginAccess();
  return sub_214B34D28;
}

uint64_t sub_214C8B1A4(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = a2();
  v3 = *a1;
  *a1 = v2;
  return MEMORY[0x277D82BD8](v3);
}

id sub_214C8B214(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() traitCollectionWithUserInterfaceStyle_];

  return v1;
}

double sub_214C8B260(CGContext *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v82 = a1;
  v92 = a2;
  v66 = a7;
  v74 = a8;
  v84 = a3;
  v93 = a9;
  v62 = a4;
  v63 = a5;
  v64 = a6;
  v59 = "Fatal error";
  v60 = "Unexpectedly found nil while unwrapping an Optional value";
  v61 = "MailUI/PlatformImage.swift";
  v133 = 0;
  v132 = 0;
  v131 = 0.0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v125 = 0;
  v126 = 0;
  v121 = 0u;
  v122 = 0u;
  v114 = 0.0;
  v111 = 0.0;
  v110 = 0;
  v107 = 0.0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v100 = 0.0;
  v101 = 0.0;
  v94 = 0;
  v86 = sub_214CCD474();
  v72 = *(v86 - 8);
  v73 = v86 - 8;
  v65 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v92);
  v85 = &v43 - v65;
  v133 = a1;
  v132 = v11;
  v131 = v10;
  v130 = v12;
  v129 = v13;
  v128 = v14;
  v127 = v15;
  v125 = v16;
  v126 = v17;
  v91 = 0x1FAD1B000uLL;
  [v11 0x1FAD1B1F8];
  v123 = v18;
  v124 = v19;
  v79 = v18;
  v80 = v19;
  v78 = 0.0;
  v121 = 0uLL;
  *&v122 = v18;
  *(&v122 + 1) = v19;
  v117 = 0;
  v118 = 0;
  v119 = v18;
  v120 = v19;
  [v92 drawInRect_];
  [v92 (v91 + 504)];
  v115 = v20;
  v116 = v21;
  v68 = v20 * v66;
  v114 = v20 * v66;
  CGContextBeginPath(a1);
  v22 = sub_214C8BAC8(v78, v78, v79, v80);
  v67 = v22 - v68;
  sub_214C8BB08(v78, v78, v79, v80);
  sub_214CCFB54();
  v69 = sub_214B2F9FC(v78, v78, v79, v80);
  sub_214C8BB48(v78, v78, v79, v80);
  sub_214CCFB64();
  v70 = sub_214B2F9FC(v78, v78, v79, v80);
  sub_214C8BB08(v78, v78, v79, v80);
  sub_214CCFB64();
  CGContextClosePath(v82);
  v71 = [objc_opt_self() systemGrayColor];
  v83 = 0x1FAADB000uLL;
  [v71 0x1FAADB595];
  MEMORY[0x277D82BD8](v71);
  sub_214C8BB88(v85);
  sub_214CCFB74();
  v23 = v82;
  v88 = *(v72 + 8);
  v87 = v72 + 8;
  v88(v85, v86);
  [v92 (v91 + 504)];
  v112 = v24;
  v113 = v25;
  v76 = v24 * v74;
  v111 = v24 * v74;
  CGContextBeginPath(v23);
  v26 = sub_214C8BAC8(v78, v78, v79, v80);
  v75 = v26 - v76;
  sub_214C8BB08(v78, v78, v79, v80);
  sub_214CCFB54();
  v77 = sub_214B2F9FC(v78, v78, v79, v80);
  sub_214C8BB48(v78, v78, v79, v80);
  sub_214CCFB64();
  v81 = sub_214B2F9FC(v78, v78, v79, v80);
  sub_214C8BB08(v78, v78, v79, v80);
  sub_214CCFB64();
  CGContextClosePath(v82);
  [v84 (v83 + 1429)];
  sub_214C8BB88(v85);
  sub_214CCFB74();
  v88(v85, v86);
  v89 = sub_214C8C338();
  v90 = sub_214A61730();
  v110 = v90;
  [v90 setAlignment_];
  [v92 (v91 + 504)];
  v108 = v27;
  v109 = v28;
  v96 = v27 * v93;
  v107 = v27 * v93;
  v95 = sub_214BD1F48();
  sub_214CCF614();
  v97 = sub_214C8BBF4(v96);
  if (v97)
  {
    v58 = v97;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v57 = v58;
  v106 = v58;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365F0);
  v46 = sub_214CD03C4();
  v44 = v29;
  sub_214A671A8(MEMORY[0x277D740A8], v29);
  MEMORY[0x277D82BE0](v57);
  v30 = v44;
  v31 = v57;
  v44[4] = v95;
  v30[1] = v31;
  sub_214A671A8(MEMORY[0x277D740C0], v30 + 5);
  MEMORY[0x277D82BE0](v62);
  v49 = 0;
  v32 = sub_214A65CE0();
  v33 = v62;
  v34 = v44;
  v44[9] = v32;
  v34[6] = v33;
  sub_214A671A8(MEMORY[0x277D74118], v34 + 10);
  MEMORY[0x277D82BE0](v90);
  v35 = v44;
  v36 = v90;
  v37 = v46;
  v44[14] = v89;
  v35[11] = v36;
  sub_214A63280();
  v48 = v37;
  v47 = type metadata accessor for Key();
  sub_214B04398();
  v56 = sub_214CCF344();
  v105 = v56;
  sub_214AF7FCC();

  v55 = sub_214C8BC70(v63, v64, v56);
  v104 = v55;
  [v55 size];
  v102 = v38;
  v103 = v39;
  v51 = v38;
  v52 = v39;
  v100 = v38;
  v101 = v39;
  v54 = 0.0;
  v50 = sub_214C8BAC8(0.0, 0.0, v79, v80);
  v40 = sub_214C8BB48(v54, v54, v79, v80);
  CGContextTranslateCTM(v82, v50, v40);
  CGContextRotateCTM(v82, -0.785398163);
  v53 = 2.0;
  CGContextTranslateCTM(v82, -v51 / 2.0, -v52 / 2.0);
  v41 = sub_214B2F8EC(v54, v54, v79, v80);
  CGContextTranslateCTM(v82, v54, v41 / v53 - v76);
  v98 = v54;
  v99 = v54;
  [v55 drawAtPoint_];
  MEMORY[0x277D82BD8](v55);

  MEMORY[0x277D82BD8](v57);
  *&result = MEMORY[0x277D82BD8](v90).n128_u64[0];
  return result;
}

uint64_t sub_214C8BB88@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CBF258];
  v1 = sub_214CCD474();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

id sub_214C8BBF4(double a1)
{
  v3 = sub_214CCF544();
  v4 = [swift_getObjCClassFromMetadata() fontWithName:v3 size:a1];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

double sub_214C8BD08(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v19 = [a1 CGContext];
  MEMORY[0x277D82BD8](a1);
  sub_214C8B260(v19, a2, a3, a4, a5, a6, a7, a8, a9);
  *&result = MEMORY[0x277D82BD8](v19).n128_u64[0];
  return result;
}

double sub_214C8BE08@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v5 = [*a1 color];
  v3 = [v5 CGColor];
  a2[3] = type metadata accessor for CGColor();
  *a2 = v3;
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

unint64_t sub_214C8BE98()
{
  v2 = qword_280C7CE80;
  if (!qword_280C7CE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38278);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE80);
    return WitnessTable;
  }

  return v2;
}

id sub_214C8BF20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_214A69284();
  [v3 location];
  result = sub_214C8BFEC();
  *a2 = result;
  return result;
}

unint64_t sub_214C8BF88()
{
  v2 = qword_280C7C938;
  if (!qword_280C7C938)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C938);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_214C8C02C(void *a1, void *a2)
{
  v5 = [a1 CGContext];
  [a2 renderInContext_];
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

uint64_t block_copy_helper_11_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_214C8C154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = sub_214CCF544();
  if (a3)
  {
    type metadata accessor for Key();
    sub_214B04398();
    v5 = sub_214CCF304();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [v7 initWithString:v9 attributes:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v9);

  return v4;
}

unint64_t sub_214C8C2D4()
{
  v2 = qword_280C7CB28;
  if (!qword_280C7CB28)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CB28);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C8C338()
{
  v2 = qword_27CA38280;
  if (!qword_27CA38280)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38280);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t PlatformLocation.address.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t PlatformLocation.address.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t PlatformLocation.description.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t PlatformLocation.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t PlatformLocation.senderImage.getter()
{
  v2 = *(v0 + 32);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t PlatformLocation.senderImage.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  MEMORY[0x277D82BD8](v2);
  return MEMORY[0x277D82BD8](a1);
}

uint64_t PlatformLocation.mapImage.getter()
{
  v2 = *(v0 + 40);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t PlatformLocation.mapImage.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  MEMORY[0x277D82BD8](v2);
  return MEMORY[0x277D82BD8](a1);
}

BOOL static PlatformLocation.== infix(_:_:)(void *a1, __int128 *a2)
{
  v41 = 0;
  v40 = 0;
  v19 = *a1;
  v20 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1[5];
  v41 = a1;
  v21 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 4);
  v18 = *(a2 + 5);
  v40 = a2;

  v38[0] = v19;
  v38[1] = v20;
  v39 = v21;
  if (v20)
  {
    sub_214A61AD0(v38, v22);
    if (*(&v39 + 1))
    {
      v10 = MEMORY[0x21605D8D0](v22[0], v22[1], v39, *(&v39 + 1));
      sub_214A61B48();
      sub_214A61B48();
      sub_214A61B48();
      v11 = v10;
      goto LABEL_7;
    }

    sub_214A61B48();
    goto LABEL_9;
  }

  if (*(&v39 + 1))
  {
LABEL_9:
    sub_214A76610();
    v11 = 0;
    goto LABEL_7;
  }

  sub_214A61B48();
  v11 = 1;
LABEL_7:

  if (v11)
  {

    v36[0] = v12;
    v36[1] = v13;
    v37 = v16;
    if (v13)
    {
      sub_214A61AD0(v36, &v25);
      if (*(&v37 + 1))
      {
        v24 = v25;
        v23 = v37;
        v8 = MEMORY[0x21605D8D0](v25, *(&v25 + 1), v37, *(&v37 + 1));
        sub_214A61B48();
        sub_214A61B48();
        sub_214A61B48();
        v9 = v8;
        goto LABEL_17;
      }

      sub_214A61B48();
    }

    else if (!*(&v37 + 1))
    {
      sub_214A61B48();
      v9 = 1;
LABEL_17:

      if ((v9 & 1) == 0)
      {
        return 0;
      }

      MEMORY[0x277D82BE0](v14);
      MEMORY[0x277D82BE0](v14);
      MEMORY[0x277D82BE0](v17);
      MEMORY[0x277D82BE0](v17);
      v34 = v14;
      v35 = v17;
      if (v14)
      {
        sub_214A671A8(&v34, &v28);
        if (v35)
        {
          v27 = v28;
          v26 = v35;
          sub_214A731BC();
          v6 = sub_214CCFD64();
          MEMORY[0x277D82BD8](v26);
          MEMORY[0x277D82BD8](v27);
          sub_214A671E8(&v34);
          v7 = v6;
          goto LABEL_27;
        }

        MEMORY[0x277D82BD8](v28);
      }

      else if (!v35)
      {
        sub_214A671E8(&v34);
        v7 = 1;
LABEL_27:
        MEMORY[0x277D82BD8](v17);
        MEMORY[0x277D82BD8](v14);
        if ((v7 & 1) == 0)
        {
          return 0;
        }

        MEMORY[0x277D82BE0](v15);
        MEMORY[0x277D82BE0](v15);
        MEMORY[0x277D82BE0](v18);
        MEMORY[0x277D82BE0](v18);
        v32 = v15;
        v33 = v18;
        if (v15)
        {
          sub_214A671A8(&v32, &v31);
          if (v33)
          {
            v30 = v31;
            v29 = v33;
            sub_214A731BC();
            v4 = sub_214CCFD64();
            MEMORY[0x277D82BD8](v29);
            MEMORY[0x277D82BD8](v30);
            sub_214A671E8(&v32);
            v5 = v4;
LABEL_37:
            MEMORY[0x277D82BD8](v18);
            MEMORY[0x277D82BD8](v15);
            return (v5 & 1) != 0;
          }

          MEMORY[0x277D82BD8](v31);
        }

        else if (!v33)
        {
          sub_214A671E8(&v32);
          v5 = 1;
          goto LABEL_37;
        }

        sub_214A68120(&v32);
        v5 = 0;
        goto LABEL_37;
      }

      sub_214A68120(&v34);
      v7 = 0;
      goto LABEL_27;
    }

    sub_214A76610();
    v9 = 0;
    goto LABEL_17;
  }

  return 0;
}

void *PlatformLocation.hash(into:)(uint64_t a1)
{
  v11 = 0;
  v12 = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v11 = v1;

  v10[3] = v3;
  v10[4] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352F0);
  sub_214A75068();
  sub_214CD0554();
  sub_214A61B48();

  v10[1] = v5;
  v10[2] = v6;
  sub_214CD0554();
  sub_214A61B48();
  MEMORY[0x277D82BE0](v7);
  v10[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352E8);
  sub_214A74F50();
  sub_214CD0554();
  sub_214A671E8(v10);
  MEMORY[0x277D82BE0](v8);
  v9 = v8;
  sub_214CD0554();
  return sub_214A671E8(&v9);
}

uint64_t PlatformLocation.hashValue.getter()
{
  memset(__b, 0, sizeof(__b));
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  __b[0] = *v0;
  __b[1] = v1;
  __b[2] = v2;
  __b[3] = v3;
  __b[4] = v4;
  __b[5] = v5;
  sub_214C8CFD0();
  return sub_214CD0114();
}

unint64_t sub_214C8CFD0()
{
  v2 = qword_27CA38288;
  if (!qword_27CA38288)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38288);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C8D094()
{
  v2 = qword_27CA38290;
  if (!qword_27CA38290)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38290);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C8D12C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v4 = *(a1 + 8);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_214C8D25C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
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

double sub_214C8D44C(double a1)
{
  v4 = [v1 textContainer];
  [v4 setLineFragmentPadding_];
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

double sub_214C8D4C4()
{
  [v0 0x1FAC25D78];
  v4 = v1;
  [v0 0x1FAC25D78];
  return v4 + v2;
}

double sub_214C8D624()
{
  v3 = [v0 textContainer];
  [v3 lineFragmentPadding];
  v4 = v1;
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t sub_214C8D694()
{
  type metadata accessor for PriorityMessageListCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38298);
  result = sub_214CCF5B4();
  qword_27CA3EFA0 = result;
  qword_27CA3EFA8 = v1;
  return result;
}

uint64_t *sub_214C8D720()
{
  if (qword_27CA340B8 != -1)
  {
    swift_once();
  }

  return &qword_27CA3EFA0;
}

uint64_t sub_214C8D780()
{
  v1 = *sub_214C8D720();

  return v1;
}

uint64_t sub_214C8D7C4()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23PriorityMessageListCell_message);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C8D834(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI23PriorityMessageListCell_message);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C8D8CC()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23PriorityMessageListCell_viewModel);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C8D934(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23PriorityMessageListCell_viewModel);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

char *PriorityMessageListCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  *&v8 = a3;
  *(&v8 + 1) = a4;
  ObjectType = swift_getObjectType();
  v11 = v7;
  v12 = v8;
  v13 = v4;
  *&v4[OBJC_IVAR____TtC6MailUI23PriorityMessageListCell_message] = 0;
  *&v13[OBJC_IVAR____TtC6MailUI23PriorityMessageListCell_viewModel] = 0;
  v10.receiver = v13;
  v10.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v10, sel_initWithFrame_, v7, v8);
  MEMORY[0x277D82BE0](v9);
  v13 = v9;
  sub_214C8DB2C();
  MEMORY[0x277D82BD8](v13);
  return v9;
}

id PriorityMessageListCell.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

void PriorityMessageListCell.init(coder:)()
{
  *OBJC_IVAR____TtC6MailUI23PriorityMessageListCell_message = 0;
  *OBJC_IVAR____TtC6MailUI23PriorityMessageListCell_viewModel = 0;
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

Swift::Void __swiftcall PriorityMessageListCell.prepareForReuse()()
{
  ObjectType = swift_getObjectType();
  v7 = v0;
  *&v1 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v6.receiver = v0;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_prepareForReuse, v1);
  (MEMORY[0x277D82BD8])();
  v4 = &v0[OBJC_IVAR____TtC6MailUI23PriorityMessageListCell_message];
  swift_beginAccess();
  v2 = *v4;
  *v4 = 0;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  v5 = &v0[OBJC_IVAR____TtC6MailUI23PriorityMessageListCell_viewModel];
  swift_beginAccess();
  *v5 = 0;

  swift_endAccess();
  sub_214C8DE0C(0, 0);
}

void sub_214C8DE0C(void *a1, uint64_t a2)
{
  v37 = a2;
  v45 = a1;
  v32 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA382B0);
  v28 = *(v27 - 8);
  v29 = v28;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v31 = v16 - v30;
  v33 = sub_214CCE6E4();
  v34 = *(v33 - 8);
  v35 = v34;
  MEMORY[0x28223BE20](v32);
  v36 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v36;
  v38 = sub_214CCDB84();
  v39 = *(v38 - 8);
  v40 = v39;
  v41 = *(v39 + 64);
  MEMORY[0x28223BE20](v45);
  v43 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v42 = v16 - v43;
  MEMORY[0x28223BE20](v4);
  v44 = v16 - v43;
  v54 = v16 - v43;
  v53 = v5;
  v52 = v6;
  v51 = v2;
  v7 = v5;
  if (!v45)
  {
    goto LABEL_17;
  }

  v25 = v45;
  v24 = v45;
  v49 = v45;

  if (!v37)
  {

LABEL_17:
    v15 = v26;
    memset(v50, 0, sizeof(v50));
    MEMORY[0x21605DF70](v50);

    return;
  }

  v23 = v37;
  v8 = v44;
  v21 = v37;
  v48 = v37;
  v9 = v26;
  v22 = [v26 _bridgedConfigurationState];
  sub_214CCDB64();
  (*(v40 + 32))(v8, v42, v38);

  v10 = sub_214CCDB24();
  if (v10)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_214CCDB34();
  }

  if (v20)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_214CCDB74();
  }

  v47 = v19 & 1;
  if (v19)
  {
    sub_214CCE6D4();
  }

  else
  {
    sub_214CCE6C4();
  }

  v11 = v26;
  v12 = v24;

  v16[3] = v16;
  MEMORY[0x28223BE20](v16);
  v13 = v21;
  v16[1] = &v16[-6];
  v16[-4] = v24;
  v16[-3] = v13;
  v16[-2] = v14;
  v16[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA382B8);
  sub_214C8EC3C();
  sub_214CCE7A4();

  v17 = sub_214CCE8A4();
  v46[3] = v27;
  v46[4] = sub_214C8ECE4();
  v18 = v46;
  __swift_allocate_boxed_opaque_existential_1(v46);
  sub_214CCE794();
  (*(v29 + 8))(v31, v27);
  MEMORY[0x21605DF70](v18);

  (*(v35 + 8))(v36, v33);
  (*(v40 + 8))(v44, v38);
}

double PriorityMessageListCell.updateConfiguration(using:)(uint64_t a1)
{
  v28 = a1;
  v31 = v1;
  ObjectType = swift_getObjectType();
  v36 = 0;
  v35 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA366A0);
  v12 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v30 = &v12 - v12;
  v29 = 0;
  v16 = sub_214CCDB84();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v13 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v3 = &v12 - v13;
  v17 = &v12 - v13;
  v36 = v4;
  v35 = v5;
  v6 = MEMORY[0x277D82BE0](v5);
  (*(v14 + 16))(v3, v28, v16, v6);
  v7 = sub_214CCDB54();
  v8 = v31;
  v19 = v7;
  (*(v14 + 8))(v17, v16);
  v34.receiver = v8;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, sel__bridgedUpdateConfigurationUsingState_, v19);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v8);
  v20 = &v8[OBJC_IVAR____TtC6MailUI23PriorityMessageListCell_message];
  v21 = &v33;
  v22 = 32;
  v23 = 0;
  swift_beginAccess();
  v27 = *v20;
  MEMORY[0x277D82BE0](v27);
  swift_endAccess();
  v24 = &v8[OBJC_IVAR____TtC6MailUI23PriorityMessageListCell_viewModel];
  v25 = &v32;
  swift_beginAccess();
  v26 = *v24;

  swift_endAccess();
  sub_214C8DE0C(v27, v26);
  v9 = v31;

  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BE0](v9);
  sub_214C8F0DC(v28, v30);
  v10 = sub_214CCDCB4();
  (*(*(v10 - 8) + 56))(v30, 0, 1);
  MEMORY[0x21605DF80](v30);
  *&result = MEMORY[0x277D82BD8](v31).n128_u64[0];
  return result;
}

id PriorityMessageListCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PriorityMessageListCell.updateMessage(_:andViewModel:)(void *a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v2 + OBJC_IVAR____TtC6MailUI23PriorityMessageListCell_message);
  swift_beginAccess();
  v3 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v3);
  swift_endAccess();

  v5 = (v2 + OBJC_IVAR____TtC6MailUI23PriorityMessageListCell_viewModel);
  swift_beginAccess();
  *v5 = a2;

  swift_endAccess();
  sub_214C8DE0C(a1, a2);
}

char *sub_214C8EA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v18 = type metadata accessor for MUIHighlightedMessagesRowView();
  v12 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v4 = (&v11 - v12);
  v20 = &v11 - v12;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA382B8);
  v13 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v24 = &v11 - v13;
  v14 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v25 = &v11 - v14;
  v29 = &v11 - v14;
  v28 = v7;
  v27 = v8;
  v26 = v9;
  MEMORY[0x277D82BE0](v7);

  sub_214C26C38(v15, v16, v4);
  KeyPath = swift_getKeyPath();
  sub_214C30984();
  sub_214CCEB64();

  sub_214C30CB4(v20);
  v23 = sub_214C8EC3C();
  sub_214B061F0(v24, v22, v25);
  sub_214C8ED6C(v24);
  sub_214C8EED0(v25, v24);
  sub_214B061F0(v24, v22, v21);
  sub_214C8ED6C(v24);
  return sub_214C8ED6C(v25);
}

unint64_t sub_214C8EC3C()
{
  v2 = qword_27CA382C0;
  if (!qword_27CA382C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA382B8);
    sub_214C30984();
    sub_214C30A04();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA382C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C8ECE4()
{
  v2 = qword_27CA382C8;
  if (!qword_27CA382C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA382B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA382C8);
    return WitnessTable;
  }

  return v2;
}

char *sub_214C8ED6C(char *a1)
{
  MEMORY[0x277D82BD8](*a1);

  v6 = *(type metadata accessor for MUIHighlightedMessagesRowView() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE6E4();
    (*(*(v1 - 8) + 8))(&a1[v6]);
  }

  else
  {
  }

  v4 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA382B8) + 36)];

  v5 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37568) + 28)];
  v2 = sub_214CCE6E4();
  (*(*(v2 - 8) + 8))(v5);
  return a1;
}

void *sub_214C8EED0(void *a1, void *a2)
{
  v13 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v13;
  v15 = a1[1];

  a2[1] = v15;
  v16 = *(type metadata accessor for MUIHighlightedMessagesRowView() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE6E4();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v12 = *(a1 + v16);

    *(a2 + v16) = v12;
  }

  swift_storeEnumTagMultiPayload();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA382B8);
  v8 = (a2 + *(v3 + 36));
  v9 = (a1 + *(v3 + 36));
  v7 = *v9;

  *v8 = v7;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37568);
  v11 = v8 + *(v4 + 28);
  v10 = v9 + *(v4 + 28);
  v5 = sub_214CCE6E4();
  (*(*(v5 - 8) + 16))(v11, v10);
  return a2;
}

uint64_t sub_214C8F0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v11 = a1;
  v12 = sub_214C8F330;
  v21 = 0;
  v20 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA366A8);
  v13 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v14 = &v7 - v13;
  v15 = sub_214CCDCB4();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v19 = &v7 - v18;
  v21 = &v7 - v18;
  v20 = a1;
  sub_214CCDC84();
  if (sub_214CCDB74())
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_214CCDB34();
  }

  if (v9)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_214CCDB24();
  }

  if (v8)
  {
    v4 = [objc_opt_self() systemBlueColor];
    sub_214CCDC04();
    if (sub_214CCDB34())
    {
      sub_214CCDE84();
      v5 = sub_214CCDE74();
      (*(*(v5 - 8) + 56))(v14, 0, 1);
      sub_214CCDC64();
    }
  }

  return (*(v16 + 32))(v10, v19, v15);
}

id sub_214C8F330(void *a1)
{
  v1 = [a1 colorWithAlphaComponent_];

  return v1;
}

uint64_t sub_214C8F398()
{
  type metadata accessor for PriorityMessageListContainerCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA382D0);
  result = sub_214CCF5B4();
  qword_27CA3EFB0 = result;
  qword_27CA3EFB8 = v1;
  return result;
}

uint64_t *sub_214C8F424()
{
  if (qword_27CA340C0 != -1)
  {
    swift_once();
  }

  return &qword_27CA3EFB0;
}

uint64_t sub_214C8F484()
{
  v1 = *sub_214C8F424();

  return v1;
}

uint64_t sub_214C8F4C8()
{
  v2 = (v0 + OBJC_IVAR___MUIPriorityMessageListContainerCell_contentSizeObserver);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C8F538(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIPriorityMessageListContainerCell_contentSizeObserver);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214C8F5D0()
{
  v7 = (v0 + OBJC_IVAR___MUIPriorityMessageListContainerCell____lazy_storage___priorityMessageListViewController);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214C8F6D8();
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR___MUIPriorityMessageListContainerCell____lazy_storage___priorityMessageListViewController);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

double sub_214C8F704(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIPriorityMessageListContainerCell____lazy_storage___priorityMessageListViewController);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

char *PriorityMessageListContainerCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  *&v8 = a3;
  *(&v8 + 1) = a4;
  ObjectType = swift_getObjectType();
  v11 = v7;
  v12 = v8;
  v13 = v4;
  *&v4[OBJC_IVAR___MUIPriorityMessageListContainerCell_contentSizeObserver] = 0;
  *&v13[OBJC_IVAR___MUIPriorityMessageListContainerCell____lazy_storage___priorityMessageListViewController] = 0;
  v10.receiver = v13;
  v10.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v10, sel_initWithFrame_, v7, v8);
  MEMORY[0x277D82BE0](v9);
  v13 = v9;
  sub_214C8F914();
  MEMORY[0x277D82BD8](v13);
  return v9;
}

double sub_214C8F914()
{
  v26 = sub_214C9132C;
  v27 = "Fatal error";
  v28 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v29 = "MailUI/PriorityMessageListContainerCell.swift";
  v39 = 0;
  v38 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA366A0);
  v30 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v31 = &v9 - v30;
  v39 = v0;
  MEMORY[0x277D82BE0](v0);
  sub_214CCDCA4();
  v2 = sub_214CCDCB4();
  (*(*(v2 - 8) + 56))(v31, 0, 1);
  MEMORY[0x21605DF80](v31);
  MEMORY[0x277D82BD8](v32);
  v33 = sub_214C8F5D0();
  v34 = [v33 view];
  if (v34)
  {
    v25 = v34;
    v3 = v32;
    v21 = v34;
    v38 = v34;
    *&v4 = MEMORY[0x277D82BD8](v33).n128_u64[0];
    v22 = 0;
    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    [v3 addSubview_];
    [v21 mf:v3 pinToView:v22 & 1 usingLayoutMargins:?];
    v23 = sub_214C8F5D0();
    v24 = sub_214C95294();
    MEMORY[0x277D82BD8](v23);
    if (v24)
    {
      v20 = v24;
    }

    else
    {
      sub_214CD01F4();
      __break(1u);
    }

    v12 = &v37;
    v37 = v20;
    KeyPath = swift_getKeyPath();
    type metadata accessor for NSKeyValueObservingOptions();
    v10 = 2;
    v5 = sub_214CD03C4();
    *v6 = v10;
    v6[1] = 1;
    sub_214A63280();
    v11 = v5;
    sub_214B019D0();
    sub_214CD0084();
    v14 = v36;
    v15 = swift_allocObject();
    v13 = v15 + 16;
    MEMORY[0x277D82BE0](v32);
    swift_unknownObjectWeakInit();
    MEMORY[0x277D82BD8](v32);

    v18 = sub_214CCD0F4();

    MEMORY[0x277D82BD8](v37);
    v17 = &v32[OBJC_IVAR___MUIPriorityMessageListContainerCell_contentSizeObserver];
    v19 = &v35;
    swift_beginAccess();
    v7 = *v17;
    *v17 = v18;
    MEMORY[0x277D82BD8](v7);
    swift_endAccess();
    *&result = MEMORY[0x277D82BD8](v21).n128_u64[0];
  }

  else
  {
    *&result = MEMORY[0x277D82BD8](v33).n128_u64[0];
  }

  return result;
}

id PriorityMessageListContainerCell.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

void PriorityMessageListContainerCell.init(coder:)()
{
  *OBJC_IVAR___MUIPriorityMessageListContainerCell_contentSizeObserver = 0;
  *OBJC_IVAR___MUIPriorityMessageListContainerCell____lazy_storage___priorityMessageListViewController = 0;
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

CGSize __swiftcall PriorityMessageListContainerCell.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(CGSize _, UILayoutPriority withHorizontalFittingPriority, UILayoutPriority verticalFittingPriority)
{
  v22 = sub_214C8F5D0();
  v23 = sub_214C95294();
  *&v3 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  if (v23)
  {
    v21 = v23;
  }

  else
  {
    LOBYTE(v10) = 2;
    v12 = 32;
    LODWORD(v14) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v21 layoutIfNeeded];
  MEMORY[0x277D82BD8](v21);
  v19 = sub_214C8F5D0();
  v20 = sub_214C95294();
  *&v4 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  if (v20)
  {
    v18 = v20;
  }

  else
  {
    LOBYTE(v11) = 2;
    v13 = 33;
    LODWORD(v15) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v18 intrinsicContentSize];
  v16 = v5;
  v17 = v6;
  MEMORY[0x277D82BD8](v18);
  v7 = v16;
  v8 = v17;
  result.height = v8;
  result.width = v7;
  return result;
}

Swift::Void __swiftcall PriorityMessageListContainerCell.prepareForReuse()()
{
  ObjectType = swift_getObjectType();
  v5 = v0;
  *&v1 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_prepareForReuse, v1);
  (MEMORY[0x277D82BD8])();
  v3 = sub_214C8F5D0();
  sub_214C97AFC(0);
  MEMORY[0x277D82BD8](v3);
}

id PriorityMessageListContainerCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall PriorityMessageListContainerCell.show(belowLineMessages:)(Swift::Bool belowLineMessages)
{
  if (belowLineMessages)
  {
    v2 = sub_214C8F5D0();
    if (sub_214C97A94())
    {

      sub_214A75F80();
      MEMORY[0x277D82BD8](v2);
      sub_214C3B6B4();
    }

    else
    {
      sub_214A75F80();
      MEMORY[0x277D82BD8](v2);
    }
  }

  else
  {
    v1 = sub_214C8F5D0();
    if (sub_214C97A94())
    {

      sub_214A75F80();
      MEMORY[0x277D82BD8](v1);
      sub_214C3B6E8();
    }

    else
    {
      sub_214A75F80();
      MEMORY[0x277D82BD8](v1);
    }
  }
}

Swift::Void __swiftcall PriorityMessageListContainerCell.updateContainerInsets(_:)(NSDirectionalEdgeInsets a1)
{
  v2 = sub_214C8F5D0();
  if (sub_214C97A94())
  {

    sub_214A75F80();
    MEMORY[0x277D82BD8](v2);
    sub_214C39118(a1.top, a1.leading, a1.bottom, a1.trailing);
  }

  else
  {
    sub_214A75F80();
    MEMORY[0x277D82BD8](v2);
  }
}

Swift::Void __swiftcall PriorityMessageListContainerCell.update(_:mailboxes:)(Swift::OpaquePointer _, Swift::OpaquePointer mailboxes)
{
  v5 = sub_214C8F5D0();
  if (sub_214C97A94())
  {

    sub_214A75F80();
    MEMORY[0x277D82BD8](v5);

    sub_214C34218(mailboxes._rawValue);
  }

  else
  {
    sub_214A75F80();
    MEMORY[0x277D82BD8](v5);
  }

  v2 = sub_214C8F5D0();
  if (sub_214C97A94())
  {

    sub_214A75F80();
    MEMORY[0x277D82BD8](v2);

    sub_214C339E4(_._rawValue);
  }

  else
  {
    sub_214A75F80();
    MEMORY[0x277D82BD8](v2);
  }
}

uint64_t PriorityMessageListContainerCell.update(_:mailboxes:cellLayoutValues:containerInsets:contactStore:avatarGenerator:delegate:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  type metadata accessor for MUIHighlightedMessagesViewModel();

  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  swift_unknownObjectRetain();
  v23 = sub_214C33494(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  v20 = sub_214C8F5D0();

  sub_214C97AFC(v23);
  MEMORY[0x277D82BD8](v20);
  v22 = sub_214C8F5D0();
  swift_unknownObjectRetain();
  sub_214C94FC0();
  MEMORY[0x277D82BD8](v22);
}

double PriorityMessageListContainerCell.parentViewController(_:viewWillAppearWith:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_214C8F5D0();
  PriorityMessageListViewController.parentViewController(_:viewWillAppearWith:)(a1, a2);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

double PriorityMessageListContainerCell.parentViewController(_:didSelectItemWith:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_214C8F5D0();
  PriorityMessageListViewController.parentViewController(_:didSelectItemWith:)(a1, a2);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

double sub_214C90DCC@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  [*a1 contentSize];
  *a2 = v2;
  a2[1] = v3;
  *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  return result;
}

double sub_214C90E48(double *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setContentSize_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

uint64_t sub_214C90ECC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v24 = 0.0;
  v25 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v31 = *a1;
  v30 = a2;
  v29 = a3 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38358);
  sub_214CCD0E4();
  if (v28 & 1) != 0 || (v24 = v26, v25 = v27, sub_214CCD0D4(), (v23))
  {
    sub_214B11080();
    sub_214CD0204();
    __break(1u);
    goto LABEL_13;
  }

  v19 = v21;
  v20 = v22;
  if (v26 == v21 && v27 == v22)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_13;
  }

  v7 = objc_opt_self();

  v6 = swift_allocObject();
  *(v6 + 16) = sub_214C91334;
  *(v6 + 24) = a3;

  v17 = sub_214B14B24;
  v18 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_214BE4B54;
  v16 = &block_descriptor_25;
  v8 = _Block_copy(&aBlock);

  [v7 performWithoutAnimation_];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v4 = sub_214C91334;
    v5 = 0;
LABEL_13:
    sub_214A6B584(v4);
    return sub_214A6B584(v5);
  }

  __break(1u);
  return result;
}

double sub_214C91260(uint64_t a1)
{
  v3[4] = a1 + 16;
  swift_beginAccess();
  v3[0] = swift_unknownObjectWeakLoadStrong();
  if (v3[0])
  {
    v2 = v3[0];
    MEMORY[0x277D82BE0](v3[0]);
    sub_214A671E8(v3);
    swift_endAccess();
    [v2 invalidateIntrinsicContentSize];
    *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  }

  else
  {
    sub_214A671E8(v3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_214C9133C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_214CCE6E4();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v11 = v4 - v5;
  v15 = sub_214CCE434();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_214CCE414();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_214C914CC(uint64_t a1)
{
  v4 = a1;
  v1 = sub_214CCE6E4();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return sub_214CCE424();
}

uint64_t sub_214C91584()
{
  type metadata accessor for PriorityMessageListFooterCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38360);
  result = sub_214CCF5B4();
  qword_27CA3EFC0 = result;
  qword_27CA3EFC8 = v1;
  return result;
}

uint64_t *sub_214C91610()
{
  if (qword_27CA340C8 != -1)
  {
    swift_once();
  }

  return &qword_27CA3EFC0;
}

uint64_t sub_214C91670()
{
  v1 = *sub_214C91610();

  return v1;
}

uint64_t sub_214C916B4()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI29PriorityMessageListFooterCell_viewModel);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C9171C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI29PriorityMessageListFooterCell_viewModel);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

id PriorityMessageListFooterCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  *&v8 = a3;
  *(&v8 + 1) = a4;
  ObjectType = swift_getObjectType();
  v11 = v7;
  v12 = v8;
  v13 = v4;
  *&v4[OBJC_IVAR____TtC6MailUI29PriorityMessageListFooterCell_viewModel] = 0;
  v10.receiver = v13;
  v10.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v10, sel_initWithFrame_, v7, v8);
  MEMORY[0x277D82BE0](v9);
  v13 = v9;
  sub_214C91904();
  MEMORY[0x277D82BD8](v13);
  return v9;
}

uint64_t sub_214C91904()
{
  v18 = 0;
  v17 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA366A0);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v11 = &v7 - v8;
  v9 = 0;
  v16 = sub_214CCDCB4();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v10 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v15 = &v7 - v10;
  v18 = &v7 - v10;
  v17 = v0;
  sub_214C91D2C(v2);
  v3 = v12;
  sub_214CCDC84();
  v4 = MEMORY[0x277D82BE0](v3);
  (*(v13 + 16))(v11, v15, v16, v4);
  (*(v13 + 56))(v11, 0, 1, v16);
  MEMORY[0x21605DF80](v11);
  v5 = MEMORY[0x277D82BD8](v12);
  return (*(v13 + 8))(v15, v16, v5);
}

id PriorityMessageListFooterCell.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

void PriorityMessageListFooterCell.init(coder:)()
{
  *OBJC_IVAR____TtC6MailUI29PriorityMessageListFooterCell_viewModel = 0;
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

Swift::Void __swiftcall PriorityMessageListFooterCell.prepareForReuse()()
{
  ObjectType = swift_getObjectType();
  v5 = v0;
  *&v1 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_prepareForReuse, v1);
  (MEMORY[0x277D82BD8])();
  v3 = &v0[OBJC_IVAR____TtC6MailUI29PriorityMessageListFooterCell_viewModel];
  swift_beginAccess();
  *v3 = 0;

  swift_endAccess();
  sub_214C91D2C(0);
}

void sub_214C91D2C(uint64_t a1)
{
  v36 = a1;
  v24 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v38 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38370);
  v20 = *(v19 - 8);
  v21 = v20;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v23 = v10 - v22;
  v25 = sub_214CCE6E4();
  v26 = *(v25 - 8);
  v27 = v26;
  MEMORY[0x28223BE20](v24);
  v28 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v28;
  v29 = sub_214CCDB84();
  v30 = *(v29 - 8);
  v31 = v30;
  v32 = *(v30 + 64);
  MEMORY[0x28223BE20](v36);
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = v10 - v34;
  MEMORY[0x28223BE20](v3);
  v35 = v10 - v34;
  v43 = v10 - v34;
  v42 = v4;
  v41 = v1;

  if (v36)
  {
    v17 = v36;
    v5 = v35;
    v15 = v36;
    v39 = v36;
    v6 = v18;
    v16 = [v18 _bridgedConfigurationState];
    sub_214CCDB64();
    (*(v31 + 32))(v5, v33, v29);

    if (sub_214CCDB24())
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_214CCDB34();
    }

    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_214CCDB74();
    }

    v38 = v13 & 1;
    if (v13)
    {
      sub_214CCE6D4();
    }

    else
    {
      sub_214CCE6C4();
    }

    v7 = v18;

    v10[2] = v10;
    MEMORY[0x28223BE20](v10);
    v10[0] = &v10[-4];
    v10[-2] = v15;
    v10[-1] = v8;
    v10[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38378);
    sub_214C92950();
    sub_214CCE7A4();

    v11 = sub_214CCE8A4();
    v37[3] = v19;
    v37[4] = sub_214C929F8();
    v12 = v37;
    __swift_allocate_boxed_opaque_existential_1(v37);
    sub_214CCE794();
    (*(v21 + 8))(v23, v19);
    MEMORY[0x21605DF70](v12);

    (*(v27 + 8))(v28, v25);
    (*(v31 + 8))(v35, v29);
  }

  else
  {
    v9 = v18;
    memset(v40, 0, sizeof(v40));
    MEMORY[0x21605DF70](v40);
  }
}

double PriorityMessageListFooterCell.updateConfiguration(using:)(uint64_t a1)
{
  v23 = a1;
  v26 = v1;
  ObjectType = swift_getObjectType();
  v30 = 0;
  v29 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA366A0);
  v12 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v25 = &v12 - v12;
  v24 = 0;
  v16 = sub_214CCDB84();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v13 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v3 = &v12 - v13;
  v17 = &v12 - v13;
  v30 = v4;
  v29 = v5;
  v6 = MEMORY[0x277D82BE0](v5);
  (*(v14 + 16))(v3, v23, v16, v6);
  v7 = sub_214CCDB54();
  v8 = v26;
  v19 = v7;
  (*(v14 + 8))(v17, v16);
  v28.receiver = v8;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, sel__bridgedUpdateConfigurationUsingState_, v19);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v8);
  v20 = &v8[OBJC_IVAR____TtC6MailUI29PriorityMessageListFooterCell_viewModel];
  v21 = &v27;
  swift_beginAccess();
  v22 = *v20;

  swift_endAccess();
  sub_214C91D2C(v22);
  v9 = v26;

  MEMORY[0x277D82BE0](v9);
  sub_214C8F0DC(v23, v25);
  v10 = sub_214CCDCB4();
  (*(*(v10 - 8) + 56))(v25, 0, 1);
  MEMORY[0x21605DF80](v25);
  *&result = MEMORY[0x277D82BD8](v26).n128_u64[0];
  return result;
}

id PriorityMessageListFooterCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PriorityMessageListFooterCell.updateViewModel(_:)(uint64_t a1)
{

  v2 = (v1 + OBJC_IVAR____TtC6MailUI29PriorityMessageListFooterCell_viewModel);
  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
  sub_214C91D2C(a1);
}

uint64_t sub_214C927A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  v11 = a1;
  v12 = a2;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38378);
  v9 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v18 = &v9 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v19 = &v9 - v10;
  v23 = &v9 - v10;
  v22 = v5;
  v21 = v6;

  v7 = nullsub_1(v11);
  v14 = &v20;
  v20 = v7;
  KeyPath = swift_getKeyPath();
  sub_214C30BA4();
  sub_214CCEB64();

  sub_214A75F80();
  v17 = sub_214C92950();
  sub_214B061F0(v18, v16, v19);
  sub_214C92A80(v18);
  sub_214C92B38(v19, v18);
  sub_214B061F0(v18, v16, v15);
  sub_214C92A80(v18);
  return sub_214C92A80(v19);
}

unint64_t sub_214C92950()
{
  v2 = qword_27CA38380;
  if (!qword_27CA38380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38378);
    sub_214C30BA4();
    sub_214C30A04();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C929F8()
{
  v2 = qword_27CA38388;
  if (!qword_27CA38388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38370);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38388);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C92A80(uint64_t a1)
{

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38378) + 36);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37568) + 28);
  v1 = sub_214CCE6E4();
  (*(*(v1 - 8) + 8))(v3 + v4);
  return a1;
}

char *sub_214C92B38(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38378) + 36);
  v7 = *&a1[v6];

  *&a2[v6] = v7;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37568) + 28);
  v2 = sub_214CCE6E4();
  (*(*(v2 - 8) + 16))(&a2[v6 + v8], &a1[v6 + v8]);
  return a2;
}

uint64_t sub_214C92C3C()
{
  type metadata accessor for PriorityMessageListHeaderCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38390);
  result = sub_214CCF5B4();
  qword_27CA3EFD0 = result;
  qword_27CA3EFD8 = v1;
  return result;
}

uint64_t *sub_214C92CC8()
{
  if (qword_27CA340D0 != -1)
  {
    swift_once();
  }

  return &qword_27CA3EFD0;
}

uint64_t sub_214C92D28()
{
  v1 = *sub_214C92CC8();

  return v1;
}

id PriorityMessageListHeaderCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v6 = a1;
  *(&v6 + 1) = a2;
  *&v7 = a3;
  *(&v7 + 1) = a4;
  v10 = v6;
  v11 = v7;
  v12 = v4;
  v9.receiver = v4;
  v9.super_class = swift_getObjectType();
  v8 = objc_msgSendSuper2(&v9, sel_initWithFrame_, v6, v7);
  MEMORY[0x277D82BE0](v8);
  v12 = v8;
  sub_214C92EC0();
  MEMORY[0x277D82BD8](v12);
  return v8;
}

uint64_t sub_214C92EC0()
{
  v18 = 0;
  v17 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA366A0);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v11 = &v7 - v8;
  v9 = 0;
  v16 = sub_214CCDCB4();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v10 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v15 = &v7 - v10;
  v18 = &v7 - v10;
  v17 = v0;
  sub_214C93294(v2);
  v3 = v12;
  sub_214CCDC84();
  v4 = MEMORY[0x277D82BE0](v3);
  (*(v13 + 16))(v11, v15, v16, v4);
  (*(v13 + 56))(v11, 0, 1, v16);
  MEMORY[0x21605DF80](v11);
  v5 = MEMORY[0x277D82BD8](v12);
  return (*(v13 + 8))(v15, v16, v5);
}

id PriorityMessageListHeaderCell.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

void PriorityMessageListHeaderCell.init(coder:)()
{
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

Swift::Void __swiftcall PriorityMessageListHeaderCell.prepareForReuse()()
{
  ObjectType = swift_getObjectType();
  v4 = v0;
  *&v1 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  objc_msgSendSuper2(&v3, sel_prepareForReuse, v1);
  (MEMORY[0x277D82BD8])();
  sub_214C93294(0);
}

double sub_214C93294(uint64_t a1)
{
  v17 = a1;
  v11 = sub_214C936C0;
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38398);
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v16 = &v5 - v15;
  v24 = v2;
  v23 = v1;

  if (v17)
  {
    v9 = v17;
    v8 = v17;
    v21 = v17;
    MEMORY[0x277D82BE0](v10);

    v5 = type metadata accessor for MUIHighlightedMessagesHeaderView();
    sub_214C3029C();
    sub_214CCE7A4();

    v6 = sub_214CCE8A4();
    v7 = &v18;
    v19 = v12;
    v20 = sub_214C936C8();
    __swift_allocate_boxed_opaque_existential_1(v7);
    sub_214CCE794();
    (*(v13 + 8))(v16, v12);
    MEMORY[0x21605DF70](v7);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](v10);
    memset(v22, 0, sizeof(v22));
    MEMORY[0x21605DF70](v22, v4);
    *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  }

  return result;
}

id PriorityMessageListHeaderCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214C93590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v8 = a1;
  v15 = 0;
  v14 = 0;
  v10 = type metadata accessor for MUIHighlightedMessagesHeaderView();
  v6 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v12 = (&v6 - v6);
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v13 = (&v6 - v7);
  v15 = &v6 - v7;
  v14 = v4;

  sub_214C20DDC(v8, v12);
  v11 = sub_214C3029C();
  sub_214B061F0(v12, v10, v13);
  sub_214C3031C(v12);
  sub_214C93750(v13, v12);
  sub_214B061F0(v12, v10, v9);
  sub_214C3031C(v12);
  return sub_214C3031C(v13);
}

unint64_t sub_214C936C8()
{
  v2 = qword_27CA383A0;
  if (!qword_27CA383A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38398);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA383A0);
    return WitnessTable;
  }

  return v2;
}

void *sub_214C93750(uint64_t *a1, void *a2)
{
  v6 = *a1;

  *a2 = v6;
  v7 = *(type metadata accessor for MUIHighlightedMessagesHeaderView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE514();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v4 = *(a1 + v7);

    *(a2 + v7) = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

double PriorityMessageListViewController.parentViewController(_:viewWillAppearWith:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_214C95294();
  if (v5)
  {
    v3 = v5;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  swift_unknownObjectRetain();
  [v3 mui:a2 interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator:1 animated:?];
  swift_unknownObjectRelease();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double PriorityMessageListViewController.parentViewController(_:didSelectItemWith:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_214C95294();
  if (v5)
  {
    v3 = v5;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  swift_unknownObjectRetain();
  [v3 mui:a2 interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator:1 animated:?];
  swift_unknownObjectRelease();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

uint64_t sub_214C93A94@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC6MailUIP33_07A1850E5F3C7E70BBD82C37C425483041PriorityMessageListHeaderFooterIdentifier_identifier;
  v2 = sub_214CCD2B4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

id sub_214C93B44(uint64_t a1)
{
  v20 = a1;
  v8 = v1;
  v12.super_class = swift_getObjectType();
  v24 = 0;
  v23 = 0;
  v17 = sub_214CCD2B4();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v17);
  v3 = &v7 - v7;
  v16 = &v7 - v7;
  v23 = v4;
  v24 = v8;
  v9 = v8;
  v11 = *(v14 + 16);
  v10 = v14 + 16;
  v11(&v7 - v7, v2);
  (*(v14 + 32))(v9 + OBJC_IVAR____TtC6MailUIP33_07A1850E5F3C7E70BBD82C37C425483041PriorityMessageListHeaderFooterIdentifier_identifier, v3, v17);
  v12.receiver = v24;
  (v11)(v3, v20, v17);
  v13 = sub_214CCD274();
  v22 = v12;
  v21 = objc_msgSendSuper2(&v22, sel_initAsEphemeralID_representedObjectID_, 1);
  swift_unknownObjectRelease();
  v19 = *(v14 + 8);
  v18 = v14 + 8;
  v19(v16, v17);
  v5 = MEMORY[0x277D82BE0](v21);
  v24 = v21;
  (v19)(v20, v17, v5);
  MEMORY[0x277D82BD8](v24);
  return v21;
}

void sub_214C93D60()
{
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

uint64_t sub_214C94118()
{
  result = sub_214CD03C4();
  sub_214A63280();
  return result;
}

BOOL sub_214C941B0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214C940DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_214C941E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214C94158();
  *a1 = result;
  return result;
}

uint64_t sub_214C942E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214C94118();
  *a1 = result;
  return result;
}

id sub_214C943F8(void *a1)
{
  v2 = [a1 messageListItem];
  swift_getObjectType();
  v4 = [v2 objectID];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v4);
  v5 = v4;
  v6 = 1;
  MEMORY[0x277D82BD8](a1);
  sub_214A671E8(&v5);
  return v4;
}

uint64_t sub_214C944B0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a3);
  if (!a2)
  {
    if (!a4)
    {
      MEMORY[0x277D82BE0](a1);
      MEMORY[0x277D82BE0](a3);
      sub_214A77084();
      if (sub_214CCFD64())
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

LABEL_19:
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](a3);
    v5 = 0;
    return v5 & 1;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      MEMORY[0x277D82BE0](a1);
      MEMORY[0x277D82BE0](a3);
      sub_214A77084();
      if (sub_214CCFD64())
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    goto LABEL_19;
  }

  if (a4 != 2)
  {
    goto LABEL_19;
  }

  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a3);
  sub_214A77084();
  if (sub_214CCFD64())
  {
LABEL_17:
    MEMORY[0x277D82BD8](a3);
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](a3);
    v5 = 1;
    return v5 & 1;
  }

LABEL_13:
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](a3);
  v5 = 0;
  return v5 & 1;
}

double sub_214C948C0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a2);
  sub_214CD0554();
  sub_214B894B8();
  sub_214C9FC38();
  sub_214CD0554();
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

uint64_t sub_214C94B6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214C94310(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_214C94BD4()
{
  result = sub_214CCF614();
  qword_27CA383B0 = result;
  qword_27CA383B8 = v1;
  return result;
}

uint64_t *sub_214C94C18()
{
  if (qword_27CA340D8 != -1)
  {
    swift_once();
  }

  return &qword_27CA383B0;
}

uint64_t sub_214C94C78()
{
  v1 = *sub_214C94C18();

  return v1;
}

double sub_214C94CBC@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_214C94F58();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214C94D28(uint64_t *a1, void *a2)
{
  sub_214B5AEEC(a1, &v5);
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214C94FC0();
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t sub_214C94DA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ([Strong respondsToSelector_])
    {
      swift_unknownObjectRetain();
      *(swift_allocObject() + 16) = Strong;
      v4 = sub_214C974C0;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      v1 = v4();

      swift_unknownObjectRelease();
      v2 = v1;
    }

    else
    {
      swift_unknownObjectRelease();
      v2 = 0;
    }

    sub_214C97424(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_214C94F58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_214C94FC0()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  sub_214C94DA0();
  return swift_unknownObjectRelease();
}

void (*sub_214C95044(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_delegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_214C950F0;
}

void sub_214C950F0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_214A759F4();
    swift_endAccess();
  }

  else
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    swift_endAccess();
    sub_214C94DA0();
  }

  free(v2);
}

double sub_214C951B0@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_214C95294();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214C9521C(uint64_t *a1, void *a2)
{
  sub_214A671A8(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214C953FC(v5);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t sub_214C95294()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_collectionView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

unint64_t sub_214C95304()
{
  v2 = qword_27CA383C8;
  if (!qword_27CA383C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA383C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C95380()
{
  v2 = qword_27CA383D0;
  if (!qword_27CA383D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA383D0);
    return WitnessTable;
  }

  return v2;
}

double sub_214C953FC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_collectionView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C95500()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_dataSource);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C95570(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_dataSource);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214C95674()
{
  v16 = 0;
  v1 = sub_214CCD2B4();
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v10 = v4 - v9;
  v16 = v0;
  v11 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___headerIdentifier);
  v12 = &v15;
  swift_beginAccess();
  v13 = *v11;
  MEMORY[0x277D82BE0](v13);
  swift_endAccess();
  if (v13)
  {
    v7 = v13;
    return v13;
  }

  else
  {
    type metadata accessor for PriorityMessageListHeaderFooterIdentifier();
    sub_214CCD2A4();
    v5 = sub_214C93B08(v10);
    MEMORY[0x277D82BE0](v5);
    v4[0] = v8 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___headerIdentifier;
    v4[1] = &v14;
    swift_beginAccess();
    v2 = *v4[0];
    *v4[0] = v5;
    MEMORY[0x277D82BD8](v2);
    swift_endAccess();
    return v5;
  }
}

double sub_214C957F0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___headerIdentifier);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double (*sub_214C95888(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_214C95674();
  return sub_214C958E4;
}

double sub_214C958E4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_214C957F0(*a1);
  }

  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  sub_214C957F0(v3);
  *&result = MEMORY[0x277D82BD8](*a1).n128_u64[0];
  return result;
}

id sub_214C95964()
{
  v16 = 0;
  v1 = sub_214CCD2B4();
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v10 = v4 - v9;
  v16 = v0;
  v11 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___footerIdentifier);
  v12 = &v15;
  swift_beginAccess();
  v13 = *v11;
  MEMORY[0x277D82BE0](v13);
  swift_endAccess();
  if (v13)
  {
    v7 = v13;
    return v13;
  }

  else
  {
    type metadata accessor for PriorityMessageListHeaderFooterIdentifier();
    sub_214CCD2A4();
    v5 = sub_214C93B08(v10);
    MEMORY[0x277D82BE0](v5);
    v4[0] = v8 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___footerIdentifier;
    v4[1] = &v14;
    swift_beginAccess();
    v2 = *v4[0];
    *v4[0] = v5;
    MEMORY[0x277D82BD8](v2);
    swift_endAccess();
    return v5;
  }
}

double sub_214C95AE0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___footerIdentifier);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double (*sub_214C95B78(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_214C95964();
  return sub_214C95BD4;
}

double sub_214C95BD4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_214C95AE0(*a1);
  }

  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  sub_214C95AE0(v3);
  *&result = MEMORY[0x277D82BD8](*a1).n128_u64[0];
  return result;
}

uint64_t sub_214C95C54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_214C95CBC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x277D82BD8](a1);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

void (*sub_214C95D54(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_backgroundView;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_214B520E8;
}

uint64_t sub_214C95E00()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hasPendingHighlightsShimmer);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_214C95E68(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hasPendingHighlightsShimmer);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

void sub_214C95F48()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewIsVisible);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  (MEMORY[0x277D82BE0])();
  if (v3)
  {
    v1 = sub_214C95E00();
  }

  else
  {
    v1 = 0;
  }

  (MEMORY[0x277D82BD8])();
  if (v1)
  {
    sub_214C96020();
  }
}

uint64_t sub_214C96020()
{
  v93 = 0;
  v130 = 0;
  v88 = 0;
  v125 = 0;
  v120 = 0;
  v89 = sub_214CCF224();
  v90 = *(v89 - 8);
  v91 = v90;
  MEMORY[0x28223BE20](0);
  v92 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_214CCF254();
  v95 = *(v94 - 8);
  v96 = v95;
  MEMORY[0x28223BE20](v93);
  v97 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_214CCDA74();
  v99 = *(v98 - 8);
  v100 = v99;
  v102 = *(v99 + 64);
  MEMORY[0x28223BE20](v98 - 8);
  v104 = (v102 + 15) & 0xFFFFFFFFFFFFFFF0;
  v101 = v13 - v104;
  MEMORY[0x28223BE20](v13 - v104);
  v103 = v13 - v104;
  MEMORY[0x28223BE20](v13 - v104);
  v105 = v13 - v104;
  v130 = v0;
  v106 = sub_214C97A94();
  if (!v106)
  {
LABEL_24:
    (*(v100 + 16))(v101, &v87[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_logger], v98);
    v31 = sub_214CCDA54();
    v28 = v31;
    v30 = sub_214CCFBB4();
    v29 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v32 = sub_214CD03C4();
    if (os_log_type_enabled(v31, v30))
    {
      v10 = v88;
      v19 = sub_214CCFF24();
      v15 = v19;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v17 = 0;
      v20 = sub_214A632C4(0);
      v18 = v20;
      v21 = sub_214A632C4(v17);
      v129 = v19;
      v128 = v20;
      v127 = v21;
      v22 = 0;
      v23 = &v129;
      sub_214A6627C(0, &v129);
      sub_214A6627C(v22, v23);
      v126 = v32;
      v24 = v13;
      MEMORY[0x28223BE20](v13);
      v25 = &v13[-6];
      v13[-4] = v11;
      v13[-3] = &v128;
      v13[-2] = &v127;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
      sub_214A810E0();
      sub_214CCF764();
      v27 = v10;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v28, v29, "Did not add any new priority emails. Skipping shimmer.", v15, 2u);
        v13[1] = 0;
        sub_214A669DC(v18);
        sub_214A669DC(v21);
        sub_214CCFF04();

        v14 = v27;
      }
    }

    else
    {

      v14 = v88;
    }

    v13[0] = v14;

    (*(v100 + 8))(v101, v98);
    return v13[0];
  }

  v86 = v106;
  v85 = v106;
  v125 = v106;
  v3 = sub_214C39564();
  if ((v3 & 1) == 0)
  {

    goto LABEL_24;
  }

  v84 = sub_214C973B4();
  if (v84)
  {
    v83 = v84;
    v81 = v84;
    v120 = v84;
    v119 = [v84 activationState];
    v118 = 0;
    v82 = type metadata accessor for ActivationState();
    sub_214C9F760();
    v4 = sub_214CD03F4();
    if (v4 & 1) != 0 && (sub_214C970A4())
    {
      sub_214C95E68(0);
      (*(v100 + 16))(v105, &v87[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_logger], v98);
      v79 = sub_214CCDA54();
      v76 = v79;
      v78 = sub_214CCFBB4();
      v77 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
      v80 = sub_214CD03C4();
      if (os_log_type_enabled(v79, v78))
      {
        v5 = v88;
        v67 = sub_214CCFF24();
        v63 = v67;
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
        v65 = 0;
        v68 = sub_214A632C4(0);
        v66 = v68;
        v69 = sub_214A632C4(v65);
        v110 = v67;
        v109 = v68;
        v108 = v69;
        v70 = 0;
        v71 = &v110;
        sub_214A6627C(0, &v110);
        sub_214A6627C(v70, v71);
        v107 = v80;
        v72 = v13;
        MEMORY[0x28223BE20](v13);
        v73 = &v13[-6];
        v13[-4] = v6;
        v13[-3] = &v109;
        v13[-2] = &v108;
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
        sub_214A810E0();
        sub_214CCF764();
        v75 = v5;
        if (v5)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_214A5E000, v76, v77, "Did add new items to Priority, playing shimmer.", v63, 2u);
          v61 = 0;
          sub_214A669DC(v66);
          sub_214A669DC(v69);
          sub_214CCFF04();

          v62 = v75;
        }
      }

      else
      {

        v62 = v88;
      }

      v59 = v62;

      (*(v100 + 8))(v105, v98);
      v56 = 0;
      sub_214B51A38();
      v58 = sub_214CCFC44();
      v55 = swift_allocObject();
      v54 = v55 + 16;
      v7 = v87;
      swift_unknownObjectWeakInit();

      v116 = sub_214C9F7E0;
      v117 = v55;
      aBlock = MEMORY[0x277D85DD0];
      v112 = 1107296256;
      v113 = 0;
      v114 = sub_214A746A8;
      v115 = &block_descriptor_26;
      v57 = _Block_copy(&aBlock);

      sub_214BC69C4();
      sub_214BC69DC();
      MEMORY[0x21605DF00](v56, v97, v92, v57);
      (*(v91 + 8))(v92, v89);
      (*(v96 + 8))(v97, v94);
      _Block_release(v57);

      sub_214C3A10C();

      return v59;
    }
  }

  sub_214C95E68(1);
  (*(v100 + 16))(v103, &v87[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_logger], v98);
  v52 = sub_214CCDA54();
  v49 = v52;
  v51 = sub_214CCFBB4();
  v50 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v53 = sub_214CD03C4();
  if (os_log_type_enabled(v52, v51))
  {
    v8 = v88;
    v40 = sub_214CCFF24();
    v36 = v40;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v38 = 0;
    v41 = sub_214A632C4(0);
    v39 = v41;
    v42 = sub_214A632C4(v38);
    v124 = v40;
    v123 = v41;
    v122 = v42;
    v43 = 0;
    v44 = &v124;
    sub_214A6627C(0, &v124);
    sub_214A6627C(v43, v44);
    v121 = v53;
    v45 = v13;
    MEMORY[0x28223BE20](v13);
    v46 = &v13[-6];
    v13[-4] = v9;
    v13[-3] = &v123;
    v13[-2] = &v122;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
    sub_214A810E0();
    sub_214CCF764();
    v48 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v49, v50, "Need to play Priority shimmer but the scene is not active, will wait until the scene becomes active.", v36, 2u);
      v34 = 0;
      sub_214A669DC(v39);
      sub_214A669DC(v42);
      sub_214CCFF04();

      v35 = v48;
    }
  }

  else
  {

    v35 = v88;
  }

  v33 = v35;

  (*(v100 + 8))(v103, v98);

  return v33;
}