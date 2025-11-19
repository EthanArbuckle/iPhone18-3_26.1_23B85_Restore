uint64_t sub_24B72DBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_24B75BAE8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[2] = a3;
  v24[3] = a4;
  v24[4] = a5;
  v24[5] = a6;
  v16 = type metadata accessor for ProgramDetailView();
  v17 = sub_24B72793C(v16);
  v18 = (v17)(a2);
  v20 = v19;
  LOBYTE(a3) = v21;

  sub_24B75BA28();
  (*(v12 + 104))(v15, *MEMORY[0x277CE0A10], v11);
  sub_24B75BB28();

  (*(v12 + 8))(v15, v11);
  v22 = sub_24B75BC18();

  sub_24B6E89A0(v18, v20, a3 & 1);

  return v22;
}

uint64_t sub_24B72DD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ProgramDetailAction();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for ProgramDetailView();
  sub_24B7275FC();
  swift_storeEnumTagMultiPayload();
  sub_24B75C228();

  return sub_24B734BFC(v12, type metadata accessor for ProgramDetailAction);
}

uint64_t sub_24B72DE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a4;
  v33 = a5;
  v34 = a1;
  v31 = a6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036068, &unk_24B767A80);
  v8 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v10 = &v30 - v9;
  v11 = sub_24B75B1F8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_24B75C2F8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035898, &qword_24B764A10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v35 = a2;
  v36 = a3;
  v37 = v32;
  v38 = v33;
  type metadata accessor for ProgramDetailView();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v35 = sub_24B75C348();
  v36 = v22;
  sub_24B6E89B0();
  sub_24B75BFD8();
  v23 = *MEMORY[0x277CDFA10];
  v24 = sub_24B75B538();
  (*(*(v24 - 8) + 104))(v10, v23, v24);
  sub_24B73593C(&qword_27F0360B8, MEMORY[0x277CDFA28]);
  result = sub_24B75C2D8();
  if (result)
  {
    sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10);
    sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80);
    v26 = v31;
    sub_24B75BD58();
    sub_24B6B9CD4(v10, &qword_27F036068, &unk_24B767A80);
    (*(v16 + 8))(v19, v15);
    sub_24B75BA38();
    sub_24B75BA98();
    v27 = sub_24B75BAD8();

    KeyPath = swift_getKeyPath();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0361A8, &qword_24B7670C8);
    v29 = (v26 + *(result + 36));
    *v29 = KeyPath;
    v29[1] = v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B72E2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036048, &qword_24B766F28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v9 = *(a1 + 32);
  v16 = *(a1 + 16);
  v17 = v9;
  v18 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036050, &qword_24B766F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036058, &qword_24B766F38);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036060, &unk_24B766F40);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036068, &unk_24B767A80);
  v12 = sub_24B7348D8();
  v13 = sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80);
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  swift_getOpaqueTypeConformance2();
  sub_24B6C743C(&qword_27F0360A0, &qword_27F036058, &qword_24B766F38);
  sub_24B75BB48();
  sub_24B6C743C(&qword_27F0360A8, &qword_27F036048, &qword_24B766F28);
  sub_24B734A48();
  sub_24B75BEC8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24B72E560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v72 = a5;
  v70 = a6;
  v83 = a2;
  v84 = a3;
  v85 = a4;
  v86 = a5;
  v10 = type metadata accessor for ProgramDetailView();
  v11 = *(v10 - 8);
  v62 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v53 - v12;
  v71 = v53 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036020, &qword_24B766EE8);
  v69 = *(v68 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v66 = v53 - v17;
  MEMORY[0x28223BE20](v18);
  v65 = v53 - v19;
  v21 = MEMORY[0x28223BE20](v20);
  v60 = v53 - v22;
  v23 = *(v11 + 16);
  v63 = v11 + 16;
  v64 = v23;
  v54 = v10;
  (v23)(v13, a1, v10, v21);
  v61 = *(v11 + 80);
  v24 = (v61 + 48) & ~v61;
  v55 = v24;
  v25 = swift_allocObject();
  v26 = a2;
  v56 = a2;
  *(v25 + 2) = a2;
  *(v25 + 3) = a3;
  v27 = a4;
  v57 = a4;
  *(v25 + 4) = a4;
  v28 = v72;
  *(v25 + 5) = v72;
  v29 = *(v11 + 32);
  v58 = v11 + 32;
  v59 = v29;
  v29(&v25[v24], v71, v10);
  v78 = v26;
  v79 = a3;
  v30 = a3;
  v80 = v27;
  v81 = v28;
  v82 = a1;
  v31 = a1;
  v53[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035898, &qword_24B764A10);
  v53[1] = sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10);
  v32 = v60;
  sub_24B75BFE8();
  v33 = v71;
  v34 = v54;
  v64(v71, a1, v54);
  v35 = v55;
  v36 = swift_allocObject();
  v37 = v56;
  *(v36 + 2) = v56;
  *(v36 + 3) = v30;
  v38 = v30;
  v39 = v57;
  v40 = v72;
  *(v36 + 4) = v57;
  *(v36 + 5) = v40;
  v59(&v36[v35], v33, v34);
  v73 = v37;
  v74 = v38;
  v75 = v39;
  v76 = v40;
  v77 = v31;
  v41 = v65;
  sub_24B75BFE8();
  v42 = v69;
  v43 = *(v69 + 16);
  v44 = v66;
  v45 = v32;
  v46 = v32;
  v47 = v68;
  v43(v66, v46, v68);
  v48 = v67;
  v43(v67, v41, v47);
  v49 = v70;
  v43(v70, v44, v47);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C0, &qword_24B766FC8);
  v43(&v49[*(v50 + 48)], v48, v47);
  v51 = *(v42 + 8);
  v51(v41, v47);
  v51(v45, v47);
  v51(v48, v47);
  return (v51)(v44, v47);
}

uint64_t sub_24B72EADC()
{
  type metadata accessor for ProgramDetailView();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  sub_24B75B728();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  return sub_24B75BFC8();
}

uint64_t sub_24B72EC40()
{
  v0 = sub_24B75B1F8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_24B75C2F8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  type metadata accessor for ProgramDetailView();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  sub_24B75C348();
  sub_24B6E89B0();
  return sub_24B75BFD8();
}

uint64_t sub_24B72EE1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036068, &unk_24B767A80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v17 - v2;
  v4 = sub_24B75BAE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B75BF98();
  sub_24B75BA28();
  sub_24B75BA48();

  (*(v5 + 104))(v8, *MEMORY[0x277CE0A10], v4);
  v10 = sub_24B75BB28();

  (*(v5 + 8))(v8, v4);
  KeyPath = swift_getKeyPath();
  v12 = sub_24B75BF28();
  v13 = swift_getKeyPath();
  v17[2] = v9;
  v17[3] = v9;
  v17[4] = KeyPath;
  v17[5] = v10;
  v17[6] = v13;
  v17[7] = v12;
  v14 = *MEMORY[0x277CDF9D8];
  v15 = sub_24B75B538();
  (*(*(v15 - 8) + 104))(v3, v14, v15);
  sub_24B73593C(&qword_27F0360B8, MEMORY[0x277CDFA28]);
  result = sub_24B75C2D8();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036060, &unk_24B766F40);
    sub_24B7348D8();
    v17[1] = KeyPath;
    sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80);
    sub_24B75BD58();
    sub_24B6B9CD4(v3, &qword_27F036068, &unk_24B767A80);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ProgramDetailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v3 = sub_24B75B1F8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v119 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B75C2F8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v118 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(a1 - 8);
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v9);
  v114 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0345E8, &qword_24B766D40);
  sub_24B75B958();
  v11 = *(a1 + 16);
  v112 = a1;
  v113 = v11;
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E98, &qword_24B766D70);
  v111 = *(a1 + 24);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_24B73593C(&qword_27F0345C8, MEMORY[0x277CE0660]);
  v159 = WitnessTable;
  v160 = v13;
  v157 = swift_getWitnessTable();
  v158 = v13;
  v155 = swift_getWitnessTable();
  v156 = v13;
  v153 = swift_getWitnessTable();
  v154 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v14 = sub_24B75B3E8();
  v15 = swift_getWitnessTable();
  v140 = v14;
  v141 = v15;
  swift_getOpaqueTypeMetadata2();
  v140 = v14;
  v141 = v15;
  swift_getOpaqueTypeConformance2();
  sub_24B75B4F8();
  v92 = sub_24B75B7B8();
  v16 = sub_24B75BF88();
  v105 = *(v16 - 8);
  v17 = *(v105 + 64);
  MEMORY[0x28223BE20](v16);
  v96 = &v84 - v18;
  v94 = v16;
  v19 = sub_24B75B558();
  v106 = *(v19 - 8);
  v20 = *(v106 + 64);
  MEMORY[0x28223BE20](v19);
  v99 = &v84 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035EA0, &qword_24B766D78);
  v23 = sub_24B6C743C(&qword_27F0345E0, &qword_27F0345E8, &qword_24B766D40);
  v24 = swift_getWitnessTable();
  v151 = v23;
  v152 = v24;
  v91 = swift_getWitnessTable();
  v150 = v91;
  v93 = swift_getWitnessTable();
  v148 = v93;
  v149 = MEMORY[0x277CE0790];
  v25 = swift_getWitnessTable();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035EA8, &qword_24B766D80);
  v27 = sub_24B6C743C(&qword_27F035EB0, &qword_27F035EA8, &qword_24B766D80);
  v140 = v26;
  v141 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v85 = v19;
  v86 = OpaqueTypeConformance2;
  v140 = v19;
  v141 = v22;
  v87 = v25;
  v88 = v22;
  v142 = v25;
  v143 = OpaqueTypeConformance2;
  v29 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v95 = *(OpaqueTypeMetadata2 - 8);
  v31 = *(v95 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v84 = &v84 - v32;
  v140 = v19;
  v141 = v22;
  v142 = v25;
  v143 = v29;
  v33 = swift_getOpaqueTypeConformance2();
  v140 = OpaqueTypeMetadata2;
  v141 = v33;
  v34 = OpaqueTypeMetadata2;
  v89 = OpaqueTypeMetadata2;
  v90 = v33;
  v35 = v33;
  v36 = swift_getOpaqueTypeMetadata2();
  v103 = v36;
  v110 = *(v36 - 8);
  v37 = *(v110 + 64);
  MEMORY[0x28223BE20](v36);
  v121 = &v84 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035EB8, &qword_24B766D88);
  v102 = v39;
  v140 = v34;
  v141 = v35;
  v40 = swift_getOpaqueTypeConformance2();
  v101 = v40;
  v41 = sub_24B6E89B0();
  v100 = v41;
  v98 = sub_24B6C743C(&qword_27F035EC0, &qword_27F035EB8, &qword_24B766D88);
  v140 = v36;
  v141 = MEMORY[0x277D837D0];
  v142 = v39;
  v143 = MEMORY[0x277CE0BD8];
  v144 = v40;
  v145 = v41;
  v146 = v98;
  v147 = MEMORY[0x277CE0BC8];
  v107 = MEMORY[0x277CDE9B8];
  v42 = swift_getOpaqueTypeMetadata2();
  v43 = *(v42 - 8);
  v108 = v42;
  v109 = v43;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v97 = &v84 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v104 = &v84 - v47;
  v48 = v112;
  v49 = v113;
  *&v50 = v113;
  v51 = v111;
  *(&v50 + 1) = v111;
  v52 = v117;
  v137 = v117;
  v122 = *(v112 + 32);
  v135 = v50;
  v136 = v122;
  v53 = v96;
  sub_24B75BF78();
  v55 = v114;
  v54 = v115;
  (*(v115 + 16))(v114, v52, v48);
  v56 = (*(v54 + 80) + 48) & ~*(v54 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = v49;
  *(v57 + 24) = v51;
  *(v57 + 32) = v122;
  (*(v54 + 32))(v57 + v56, v55, v48);
  v58 = v99;
  v59 = v94;
  sub_24B75BE88();

  (*(v105 + 8))(v53, v59);
  v131 = v49;
  v132 = v51;
  v133 = v122;
  v134 = v52;
  v61 = v84;
  v60 = v85;
  sub_24B75BE58();
  (*(v106 + 8))(v58, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F035EC8, &qword_24B766D90);
  v62 = *(sub_24B75B5B8() - 8);
  v63 = *(v62 + 72);
  v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_24B760390;
  sub_24B75B5A8();
  v66 = v89;
  MEMORY[0x24C248130](1, v65, v89, v90);

  (*(v95 + 8))(v61, v66);
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v68 = [objc_opt_self() bundleForClass_];
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v69 = sub_24B75C348();
  v119 = v70;
  v138 = v69;
  v139 = v70;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C238();

  v127 = v49;
  v128 = v51;
  v129 = v122;
  v130 = v52;
  v123 = v49;
  v124 = v51;
  v125 = v122;
  v126 = v52;
  v71 = v98;
  v72 = v100;
  v73 = v101;
  v74 = v102;
  v75 = v103;
  v76 = v97;
  v77 = v121;
  sub_24B75BD98();

  (*(v110 + 8))(v77, v75);
  v140 = v75;
  v141 = MEMORY[0x277D837D0];
  v142 = v74;
  v143 = MEMORY[0x277CE0BD8];
  v144 = v73;
  v145 = v72;
  v146 = v71;
  v147 = MEMORY[0x277CE0BC8];
  v78 = swift_getOpaqueTypeConformance2();
  v79 = v104;
  v80 = v76;
  v81 = v108;
  sub_24B6C7504(v76, v108, v78);
  v82 = *(v109 + 8);
  v82(v80, v81);
  sub_24B6C7504(v79, v81, v78);
  return (v82)(v79, v81);
}

uint64_t sub_24B730138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a1;
  v71 = a6;
  v86 = a2;
  v87 = a3;
  v64 = a4;
  v88 = a4;
  v89 = a5;
  v65 = a5;
  v8 = type metadata accessor for ProgramDetailView();
  v61 = *(v8 - 8);
  v59 = *(v61 + 64);
  MEMORY[0x28223BE20](v8);
  v60 = &OpaqueTypeConformance2 - v9;
  v10 = type metadata accessor for WorkoutProgram();
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &OpaqueTypeConformance2 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v12;
  MEMORY[0x28223BE20](v13);
  v68 = &OpaqueTypeConformance2 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0345E8, &qword_24B766D40);
  v67 = *(v15 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x28223BE20](v15);
  v66 = &OpaqueTypeConformance2 - v17;
  State = type metadata accessor for ProgramDetailLoadState();
  v19 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v21 = &OpaqueTypeConformance2 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75B958();
  v62 = a2;
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E98, &qword_24B766D70);
  v63 = a3;
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  WitnessTable = swift_getWitnessTable();
  v23 = sub_24B73593C(&qword_27F0345C8, MEMORY[0x277CE0660]);
  v84 = WitnessTable;
  v85 = v23;
  v82 = swift_getWitnessTable();
  v83 = v23;
  v80 = swift_getWitnessTable();
  v81 = v23;
  v78 = swift_getWitnessTable();
  v79 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v24 = sub_24B75B3E8();
  v25 = swift_getWitnessTable();
  v86 = v24;
  v87 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = v24;
  v87 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_24B75B4F8();
  v70 = v15;
  v28 = sub_24B75B7B8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &OpaqueTypeConformance2 - v31;
  v33 = v8;
  v34 = v69;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
  if ((*(*(v35 - 8) + 48))(v21, 2, v35))
  {
    v36 = v66;
    sub_24B75B448();
    sub_24B6C743C(&qword_27F0345E0, &qword_27F0345E8, &qword_24B766D40);
    swift_getWitnessTable();
    v37 = v70;
    sub_24B73898C(v36, v70);
    (*(v67 + 8))(v36, v37);
  }

  else
  {
    v38 = v68;
    sub_24B7351C8(v21, v68, type metadata accessor for WorkoutProgram);
    v67 = v29;
    v39 = v61;
    v40 = *(v61 + 16);
    v66 = OpaqueTypeMetadata2;
    v41 = v60;
    v40(v60, v34, v33);
    v69 = v28;
    v42 = v58;
    sub_24B735160(v38, v58, type metadata accessor for WorkoutProgram);
    v43 = (*(v39 + 80) + 48) & ~*(v39 + 80);
    v44 = (v59 + *(v56 + 80) + v43) & ~*(v56 + 80);
    v45 = swift_allocObject();
    v46 = v63;
    *(v45 + 2) = v62;
    *(v45 + 3) = v46;
    v47 = v65;
    *(v45 + 4) = v64;
    *(v45 + 5) = v47;
    (*(v39 + 32))(&v45[v43], v41, v33);
    v29 = v67;
    v48 = v42;
    v28 = v69;
    sub_24B7351C8(v48, &v45[v44], type metadata accessor for WorkoutProgram);
    v76 = sub_24B75B4E8();
    v77 = v49;
    v50 = swift_getWitnessTable();
    sub_24B6C7504(&v76, v27, v50);

    v74 = v86;
    v75 = v87;
    sub_24B6C7504(&v74, v27, v50);
    v74 = v76;
    v75 = v77;
    sub_24B6C743C(&qword_27F0345E0, &qword_27F0345E8, &qword_24B766D40);
    sub_24B738894(&v74, v70, v27);

    sub_24B734BFC(v68, type metadata accessor for WorkoutProgram);
  }

  v51 = sub_24B6C743C(&qword_27F0345E0, &qword_27F0345E8, &qword_24B766D40);
  v52 = swift_getWitnessTable();
  v72 = v51;
  v73 = v52;
  v53 = swift_getWitnessTable();
  sub_24B6C7504(v32, v28, v53);
  return (*(v29 + 8))(v32, v28);
}

uint64_t sub_24B730CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a7;
  v38 = a6;
  v39 = a3;
  v36 = a2;
  v37 = a1;
  v41 = a8;
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E98, &qword_24B766D70);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B8E8();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  v10 = sub_24B75B558();
  WitnessTable = swift_getWitnessTable();
  v60 = sub_24B73593C(&qword_27F0345C8, MEMORY[0x277CE0660]);
  v57 = swift_getWitnessTable();
  v58 = v60;
  v55 = swift_getWitnessTable();
  v56 = v60;
  v53 = swift_getWitnessTable();
  v54 = MEMORY[0x277CDF918];
  v30[2] = v10;
  v30[1] = swift_getWitnessTable();
  v11 = sub_24B75B3E8();
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - v13;
  v31 = swift_getWitnessTable();
  v49 = v11;
  v50 = v31;
  v33 = MEMORY[0x277CDE7E0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v34 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v32 = v30 - v20;
  sub_24B75B988();
  v42 = a4;
  v43 = a5;
  v21 = a5;
  v22 = v38;
  v23 = v40;
  v44 = v38;
  v45 = v40;
  v46 = v36;
  v47 = v39;
  v48 = v37;
  sub_24B738A84();
  v49 = a4;
  v50 = v21;
  v51 = v22;
  v52 = v23;
  type metadata accessor for ProgramDetailView();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C238();

  v24 = *(type metadata accessor for WorkoutProgram() + 36);
  v25 = v31;
  sub_24B75BD38();

  (*(v35 + 8))(v14, v11);
  v49 = v11;
  v50 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v32;
  sub_24B6C7504(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v28 = *(v34 + 8);
  v28(v18, OpaqueTypeMetadata2);
  sub_24B6C7504(v27, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v28)(v27, OpaqueTypeMetadata2);
}

uint64_t sub_24B731478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v69 = a7;
  v68 = a6;
  v62 = a4;
  v53[1] = a3;
  v67 = a2;
  v65 = a1;
  v72 = a8;
  sub_24B75B958();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B7B8();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E98, &qword_24B766D70);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v53[2] = swift_getWitnessTable();
  v9 = sub_24B75C088();
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v53 - v11;
  sub_24B75B8E8();
  v13 = sub_24B75B558();
  v58 = *(v13 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v13);
  v54 = v53 - v15;
  v59 = sub_24B75B558();
  v60 = *(v59 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = v53 - v17;
  v18 = sub_24B75B558();
  v64 = *(v18 - 8);
  v19 = *(v64 + 64);
  MEMORY[0x28223BE20](v18);
  v55 = v53 - v20;
  v66 = v21;
  v71 = sub_24B75B558();
  v70 = *(v71 - 8);
  v22 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v61 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v63 = v53 - v25;
  sub_24B75B788();
  v26 = v62;
  v73 = v62;
  v74 = a5;
  v27 = v68;
  v28 = v69;
  v75 = v68;
  v76 = v69;
  v77 = v65;
  v78 = v67;
  sub_24B75C078();
  v29 = sub_24B75B9D8();
  v87 = v26;
  v88 = a5;
  v89 = v27;
  v90 = v28;
  type metadata accessor for ProgramDetailView();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v30 = v88;
  WitnessTable = swift_getWitnessTable();
  v32 = v54;
  sub_24B7274C0(v29, v30, 0, v9, WitnessTable);
  (*(v56 + 8))(v12, v9);
  v33 = sub_24B75B9F8();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v34 = v90;
  v35 = sub_24B73593C(&qword_27F0345C8, MEMORY[0x277CE0660]);
  v85 = WitnessTable;
  v86 = v35;
  v36 = swift_getWitnessTable();
  v37 = v57;
  sub_24B7274C0(v33, v34, 0, v13, v36);
  v38 = v13;
  v39 = v55;
  (*(v58 + 8))(v32, v38);
  v40 = sub_24B75B9C8();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v41 = v87;
  v83 = v36;
  v84 = v35;
  v42 = v35;
  v43 = v59;
  v44 = swift_getWitnessTable();
  sub_24B7274C0(v40, v41, 0, v43, v44);
  (*(v60 + 8))(v37, v43);
  sub_24B75B9B8();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  if (v91 < 7u || (sub_24B7275FC(), swift_getKeyPath(), sub_24B75C218(), , , v92 == 1))
  {
    sub_24B75B478();
  }

  v81 = v44;
  v82 = v42;
  v45 = v66;
  v46 = swift_getWitnessTable();
  v47 = v61;
  sub_24B75BE48();
  (*(v64 + 8))(v39, v45);
  v79 = v46;
  v80 = MEMORY[0x277CDF918];
  v48 = v71;
  v49 = swift_getWitnessTable();
  v50 = v63;
  sub_24B6C7504(v47, v48, v49);
  v51 = *(v70 + 8);
  v51(v47, v48);
  sub_24B6C7504(v50, v48, v49);
  return (v51)(v50, v48);
}

uint64_t sub_24B731F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v71 = a6;
  v70 = a5;
  v68 = a4;
  v69 = a2;
  v55 = a1;
  v65 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E98, &qword_24B766D70);
  sub_24B75B558();
  swift_getTupleTypeMetadata2();
  v57 = sub_24B75C178();
  v59 = sub_24B75BF88();
  v62 = *(v59 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v50 - v9;
  v61 = sub_24B75B558();
  v63 = *(v61 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  v64 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v50 - v13;
  MEMORY[0x28223BE20](v14);
  v60 = &v50 - v15;
  sub_24B75B958();
  v50 = a3;
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E70, &qword_24B766D48);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  v54 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  v53 = sub_24B75C088();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E80, &qword_24B766D58);
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E88, &qword_24B766D60);
  sub_24B75B558();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
  swift_getTupleTypeMetadata2();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  v16 = sub_24B75B7B8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v21 = sub_24B75B558();
  v67 = *(v21 - 8);
  v22 = *(v67 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v66 = &v50 - v26;
  v27 = type metadata accessor for WorkoutProgram();
  v28 = v27[12];
  v29 = v27[10];
  v30 = v27[5];
  v81 = a3;
  v82 = v68;
  v83 = v70;
  v84 = v71;
  v51 = type metadata accessor for ProgramDetailView();
  v31 = v55;
  sub_24B727B08(v69, v69 + v28, v69 + v29, v69 + v30, v69, v51, v20);
  sub_24B75B9C8();
  WitnessTable = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v87 = WitnessTable;
  v88 = v33;
  v34 = swift_getWitnessTable();
  sub_24B75BE48();
  (*(v17 + 8))(v20, v16);
  v85 = v34;
  v86 = MEMORY[0x277CDF918];
  v52 = swift_getWitnessTable();
  sub_24B6C7504(v24, v21, v52);
  v53 = *(v67 + 8);
  v53(v24, v21);
  v72 = v50;
  v73 = v68;
  v74 = v70;
  v75 = v71;
  v76 = v31;
  v77 = v69;
  v35 = swift_getWitnessTable();
  v36 = v56;
  sub_24B75BF78();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v80[4] = v35;
  v37 = v59;
  v38 = swift_getWitnessTable();
  v39 = v58;
  sub_24B75BE28();
  (*(v62 + 8))(v36, v37);
  v80[2] = v38;
  v80[3] = MEMORY[0x277CDF748];
  v40 = v61;
  v41 = swift_getWitnessTable();
  v42 = v60;
  sub_24B6C7504(v39, v40, v41);
  v43 = v63;
  v44 = *(v63 + 8);
  v44(v39, v40);
  v45 = v66;
  (*(v67 + 16))(v24, v66, v21);
  v81 = v24;
  v46 = *(v43 + 16);
  v47 = v64;
  v46(v64, v42, v40);
  v82 = v47;
  v80[0] = v21;
  v80[1] = v40;
  v78 = v52;
  v79 = v41;
  sub_24B7386C4(&v81, 2uLL, v80);
  v44(v42, v40);
  v48 = v53;
  v53(v45, v21);
  v44(v47, v40);
  return v48(v24, v21);
}

uint64_t sub_24B7328B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v35 = a1;
  v40 = a6;
  v10 = sub_24B75B558();
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v38 = &v35 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035E98, &qword_24B766D70);
  v36 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v37 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - v20;
  *v21 = sub_24B75B788();
  *(v21 + 1) = 0x4034000000000000;
  v21[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360E0, &qword_24B767048);
  sub_24B732C18(v35, a2, a3, a4, a5, &v21[*(v22 + 44)]);
  v23 = sub_24B75B9C8();
  sub_24B75B3D8();
  v24 = &v21[*(v16 + 36)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  LODWORD(a2) = *(type metadata accessor for ProgramDetailView() + 64);
  sub_24B75B568();
  sub_24B75B998();
  sub_24B75BD68();
  v43[2] = a5;
  v43[3] = MEMORY[0x277CE0880];
  WitnessTable = swift_getWitnessTable();
  v30 = v38;
  sub_24B6C7504(v13, v10, WitnessTable);
  v31 = v39;
  v32 = *(v39 + 8);
  v32(v13, v10);
  v33 = v37;
  sub_24B6B9D34(v21, v37, &qword_27F035E98, &qword_24B766D70);
  v44 = v33;
  (*(v31 + 16))(v13, v30, v10);
  v45 = v13;
  v43[0] = v36;
  v43[1] = v10;
  v41 = sub_24B734CB8();
  v42 = WitnessTable;
  sub_24B7386C4(&v44, 2uLL, v43);
  v32(v30, v10);
  sub_24B6B9CD4(v21, &qword_27F035E98, &qword_24B766D70);
  v32(v13, v10);
  return sub_24B6B9CD4(v33, &qword_27F035E98, &qword_24B766D70);
}

uint64_t sub_24B732C18@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v61 = a1;
  v66 = a6;
  v64 = sub_24B75B1F8();
  v62 = *(v64 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24B75AF28();
  v12 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v54 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036100, &qword_24B767058);
  v63 = *(v65 - 8);
  v14 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v60 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = &v54 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036108, &qword_24B767060);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036110, &qword_24B767068);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v54 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036118, &qword_24B767070);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v57 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v54 - v30;
  v67 = a2;
  v68 = a3;
  v69 = a4;
  v70 = a5;
  v32 = type metadata accessor for ProgramDetailView();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v55 = v31;
  if (v71 <= 6u && (sub_24B7275FC(), swift_getKeyPath(), sub_24B75C218(), , , v72 == 1))
  {
    swift_storeEnumTagMultiPayload();
    sub_24B734D70();
    sub_24B75B7A8();
    v33 = v61;
  }

  else
  {
    v33 = v61;
    sub_24B72C2F8(v61, v32, v21);
    sub_24B6B9D34(v21, v25, &qword_27F036108, &qword_24B767060);
    swift_storeEnumTagMultiPayload();
    sub_24B734D70();
    sub_24B75B7A8();
    sub_24B6B9CD4(v21, &qword_27F036108, &qword_24B767060);
  }

  v34 = type metadata accessor for WorkoutProgram();
  v35 = *(v33 + v34[7]);
  v36 = v34[11];
  v37 = v33 + v34[12];
  sub_24B75AF18();
  sub_24B73593C(&qword_27F034938, MEMORY[0x277CC8B30]);
  v38 = sub_24B75C378();
  v40 = v39;
  sub_24B7275FC();
  swift_getKeyPath();
  v41 = v58;
  sub_24B75C218();

  v42 = v33 + v36;
  v43 = v59;
  sub_24B72D498(v42, v35, v38, v40, v41, v32, v59);

  (*(v62 + 8))(v41, v64);
  v44 = v55;
  v45 = v57;
  sub_24B6B9D34(v55, v57, &qword_27F036118, &qword_24B767070);
  v46 = v63;
  v47 = *(v63 + 16);
  v48 = v60;
  v49 = v65;
  v47(v60, v43, v65);
  v50 = v66;
  sub_24B6B9D34(v45, v66, &qword_27F036118, &qword_24B767070);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036140, &qword_24B767080);
  v47((v50 + *(v51 + 48)), v48, v49);
  v52 = *(v46 + 8);
  v52(v43, v49);
  sub_24B6B9CD4(v44, &qword_27F036118, &qword_24B767070);
  v52(v48, v49);
  return sub_24B6B9CD4(v45, &qword_27F036118, &qword_24B767070);
}

uint64_t sub_24B73326C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24B75B808();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035EA8, &qword_24B766D80);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19[-v15];
  sub_24B75B7F8();
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035FF8, &qword_24B766ED0);
  sub_24B7346D4();
  sub_24B75B598();
  v17 = sub_24B6C743C(&qword_27F035EB0, &qword_27F035EA8, &qword_24B766D80);
  MEMORY[0x24C247AE0](v16, v12, v17);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_24B73345C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v72 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036018, &qword_24B766EE0);
  v73 = *(v11 - 8);
  v74 = v11;
  v12 = *(v73 + 64);
  MEMORY[0x28223BE20](v11);
  v71 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v76 = &v58[-v15];
  v77 = a2;
  v63 = a2;
  v64 = a3;
  v78 = a3;
  v79 = a4;
  v65 = a4;
  v80 = a5;
  v16 = type metadata accessor for ProgramDetailView();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v58[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036020, &qword_24B766EE8);
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v62 = &v58[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036028, &qword_24B766EF0);
  v69 = *(v24 - 8);
  v70 = v24;
  v25 = *(v69 + 64);
  MEMORY[0x28223BE20](v24);
  v68 = &v58[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v75 = &v58[-v28];
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v60 = sub_24B75B728();
  v30 = v29;
  v59 = v31;
  v33 = v32;
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  if (v77)
  {
    v34 = 1937075312;
  }

  else
  {
    v34 = 0x72616D6B63656863;
  }

  if (v77)
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE90000000000006BLL;
  }

  (*(v17 + 16))(v20, a1, v16);
  v36 = *(v17 + 80);
  v61 = a1;
  v37 = (v36 + 48) & ~v36;
  v38 = swift_allocObject();
  v39 = v64;
  *(v38 + 2) = v63;
  *(v38 + 3) = v39;
  *(v38 + 4) = v65;
  *(v38 + 5) = a5;
  v40 = (*(v17 + 32))(&v38[v37], v20, v16);
  MEMORY[0x28223BE20](v40);
  *&v58[-48] = v60;
  *&v58[-40] = v30;
  v58[-32] = v59 & 1;
  *&v58[-24] = v33;
  *&v58[-16] = v34;
  *&v58[-8] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035898, &qword_24B764A10);
  sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10);
  v41 = v62;
  sub_24B75BFE8();

  sub_24B6C743C(&qword_27F036030, &qword_27F036020, &qword_24B766EE8);
  sub_24B73486C();
  v42 = v75;
  v43 = v67;
  sub_24B75BD08();
  (*(v66 + 8))(v41, v43);
  v44 = v76;
  sub_24B72E2DC(v16, v76);
  v45 = v68;
  v46 = v69;
  v47 = *(v69 + 16);
  v48 = v70;
  v47(v68, v42, v70);
  v49 = v73;
  v67 = *(v73 + 16);
  v50 = v71;
  v51 = v44;
  v52 = v74;
  v67(v71, v51, v74);
  v53 = v72;
  v47(v72, v45, v48);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036040, &qword_24B766F20);
  v67(&v53[*(v54 + 48)], v50, v52);
  v55 = *(v49 + 8);
  v55(v76, v52);
  v56 = *(v46 + 8);
  v56(v75, v48);
  v55(v50, v52);
  return (v56)(v45, v48);
}

uint64_t sub_24B733B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v83 = a4;
  v84 = a5;
  v81 = a2;
  v82 = a3;
  v77 = a6;
  v85 = a2;
  v86 = a3;
  v87 = a4;
  v88 = a5;
  v7 = type metadata accessor for ProgramDetailView();
  v72 = *(v7 - 8);
  v80 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v78 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035FE8, &unk_24B766EB8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v59 - v11;
  v13 = sub_24B75B1F8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24B75C2F8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034918, &unk_24B75FCE0);
  v76 = *(v67 - 8);
  v21 = *(v76 + 64);
  MEMORY[0x28223BE20](v67);
  v75 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v74 = &v59 - v24;
  MEMORY[0x28223BE20](v25);
  v73 = &v59 - v26;
  MEMORY[0x28223BE20](v27);
  v79 = &v59 - v28;
  v62 = v20;
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v71 = ObjCClassFromMetadata;
  v65 = objc_opt_self();
  v30 = [v65 bundleForClass_];
  v31 = a1;
  sub_24B7275FC();
  swift_getKeyPath();
  v64 = v16;
  sub_24B75C218();

  v85 = sub_24B75C348();
  v86 = v32;
  sub_24B75B3A8();
  v69 = sub_24B75B3C8();
  v33 = *(v69 - 8);
  v68 = *(v33 + 56);
  v70 = v33 + 56;
  v61 = v12;
  v68(v12, 0, 1, v69);
  v34 = v72;
  v66 = *(v72 + 16);
  v35 = v78;
  v66(v78, a1, v7);
  v36 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v37 = swift_allocObject();
  v38 = v82;
  v37[2] = v81;
  v37[3] = v38;
  v39 = v84;
  v37[4] = v83;
  v37[5] = v39;
  v72 = *(v34 + 32);
  v60 = v7;
  (v72)(v37 + v36, v35, v7);
  v63 = sub_24B6E89B0();
  sub_24B75BFF8();
  sub_24B75C2E8();
  v40 = [v65 bundleForClass_];
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  v85 = sub_24B75C348();
  v86 = v41;
  v42 = v61;
  sub_24B75B3B8();
  v68(v42, 0, 1, v69);
  v43 = v78;
  v44 = v60;
  v66(v78, v31, v60);
  v45 = swift_allocObject();
  v46 = v82;
  v45[2] = v81;
  v45[3] = v46;
  v47 = v84;
  v45[4] = v83;
  v45[5] = v47;
  (v72)(v45 + v36, v43, v44);
  v48 = v73;
  sub_24B75BFF8();
  v49 = v76;
  v50 = *(v76 + 16);
  v51 = v74;
  v52 = v79;
  v53 = v67;
  v50(v74, v79, v67);
  v54 = v75;
  v50(v75, v48, v53);
  v55 = v77;
  v50(v77, v51, v53);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035FF0, &qword_24B766EC8);
  v50(&v55[*(v56 + 48)], v54, v53);
  v57 = *(v49 + 8);
  v57(v48, v53);
  v57(v52, v53);
  v57(v54, v53);
  return (v57)(v51, v53);
}

uint64_t sub_24B734258@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24B75B1F8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_24B75C2F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  type metadata accessor for ProgramDetailView();
  sub_24B7275FC();
  swift_getKeyPath();
  sub_24B75C218();

  result = sub_24B75BB58();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_24B73440C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_24B734258(a1);
}

uint64_t sub_24B73441C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_24B73446C(uint64_t a1)
{
  sub_24B7345B4();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
    swift_getFunctionTypeMetadata1();
    sub_24B75B288();
    if (v4 <= 0x3F)
    {
      v8 = *(a1 + 24);
      v9 = *(a1 + 40);
      type metadata accessor for ProgramDetailView.Layout();
      if (v5 <= 0x3F)
      {
        sub_24B6C71E0();
        if (v6 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B7345B4()
{
  if (!qword_27F035F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035F58, qword_24B766E48);
    sub_24B6C743C(qword_27F035F60, &qword_27F035F58, qword_24B766E48);
    v0 = sub_24B75B418();
    if (!v1)
    {
      atomic_store(v0, &qword_27F035F50);
    }
  }
}

uint64_t sub_24B734670()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_24B7346D4()
{
  result = qword_27F036000;
  if (!qword_27F036000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035FF8, &qword_24B766ED0);
    sub_24B6C743C(&qword_27F036008, &qword_27F036010, &qword_24B766ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036000);
  }

  return result;
}

uint64_t sub_24B7347C4()
{

  return sub_24B75BFC8();
}

uint64_t sub_24B734858()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  return sub_24B7347C4();
}

unint64_t sub_24B73486C()
{
  result = qword_27F036038;
  if (!qword_27F036038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036038);
  }

  return result;
}

unint64_t sub_24B7348D8()
{
  result = qword_27F036070;
  if (!qword_27F036070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036060, &unk_24B766F40);
    sub_24B734990();
    sub_24B6C743C(&qword_27F036088, &qword_27F036090, &qword_24B766F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036070);
  }

  return result;
}

unint64_t sub_24B734990()
{
  result = qword_27F036078;
  if (!qword_27F036078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036080, &unk_24B766F50);
    sub_24B6C743C(&qword_27F034BA8, &qword_27F034BB0, &qword_24B760370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036078);
  }

  return result;
}

unint64_t sub_24B734A48()
{
  result = qword_27F0360B0;
  if (!qword_27F0360B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0360B0);
  }

  return result;
}

uint64_t sub_24B734ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for ProgramDetailView() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for WorkoutProgram() - 8);
  v13 = v2 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_24B730CDC(a1, v2 + v10, v13, v5, v6, v7, v8, a2);
}

uint64_t sub_24B734BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B734CB8()
{
  result = qword_27F0360E8;
  if (!qword_27F0360E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E98, &qword_24B766D70);
    sub_24B6C743C(&qword_27F0360F0, &qword_27F0360F8, &qword_24B767050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0360E8);
  }

  return result;
}

unint64_t sub_24B734D70()
{
  result = qword_27F036120;
  if (!qword_27F036120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036108, &qword_24B767060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036128, &qword_24B767078);
    sub_24B75B258();
    sub_24B6C743C(&qword_27F036130, &qword_27F036128, &qword_24B767078);
    sub_24B73593C(&qword_27F036138, MEMORY[0x277D09D38]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036120);
  }

  return result;
}

uint64_t sub_24B734EB4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for ProgramDetailView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24B75AFE8() - 8);
  v9 = v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_24B72DBAC(v0 + v6, v9, v1, v2, v3, v4);
}

uint64_t sub_24B734FBC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for ProgramDetailView() - 8);
  v8 = *(v1 + ((*(v7 + 64) + ((*(v7 + 80) + 48) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = type metadata accessor for ProgramDetailView();
  return sub_24B72CC40(v8, v9, a1);
}

uint64_t sub_24B7350A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for ProgramDetailView() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_24B72CF20(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_24B735160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B7351C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B735230()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for ProgramDetailView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for WorkoutProgramLinkAnnotation() - 8);
  v9 = v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_24B72D1EC(v0 + v6, v9, v1, v2, v3, v4);
}

unint64_t sub_24B735340()
{
  result = qword_27F036190;
  if (!qword_27F036190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036188, &qword_24B7670B0);
    sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10);
    sub_24B6C743C(&qword_27F034BA8, &qword_27F034BB0, &qword_24B760370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036190);
  }

  return result;
}

unint64_t sub_24B735424()
{
  result = qword_27F036198;
  if (!qword_27F036198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036198);
  }

  return result;
}

uint64_t sub_24B735478()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t objectdestroy_3Tm()
{
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  v17 = *(v0 + 40);
  v1 = (type metadata accessor for ProgramDetailView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80)));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  sub_24B6C7004();
  v7 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
  swift_getFunctionTypeMetadata1();
  v8 = sub_24B75B288();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = (v3 + v1[16]);
  v10 = *v9;

  v11 = v9[1];

  v12 = v1[17];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v13 - 8) + 8))(v3 + v12, v13);
  (*(*(v15 - 8) + 8))(v3 + v1[18]);
  return swift_deallocObject();
}

uint64_t sub_24B735694()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for ProgramDetailView() - 8);
  return sub_24B72DD84(v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80)), v1, v2, v3, v4);
}

unint64_t sub_24B735764()
{
  result = qword_27F0361B0;
  if (!qword_27F0361B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0361A8, &qword_24B7670C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035898, &qword_24B764A10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036068, &unk_24B767A80);
    sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10);
    sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80);
    swift_getOpaqueTypeConformance2();
    sub_24B6C743C(&qword_27F034BA8, &qword_27F034BB0, &qword_24B760370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0361B0);
  }

  return result;
}

uint64_t sub_24B73593C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B735998()
{
  result = qword_27F0361D0;
  if (!qword_27F0361D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E78, &qword_24B766D50);
    sub_24B735E34(&qword_27F0361D8, &qword_27F0361E0, &qword_24B7670D8, sub_24B735A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0361D0);
  }

  return result;
}

unint64_t sub_24B735A50()
{
  result = qword_27F0361E8;
  if (!qword_27F0361E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0361F0, &qword_24B7670E0);
    sub_24B6C743C(&qword_27F0361F8, &qword_27F036200, &unk_24B7670E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0361E8);
  }

  return result;
}

unint64_t sub_24B735B00()
{
  result = qword_27F036218;
  if (!qword_27F036218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036210, &unk_24B767130);
    sub_24B6E8D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036218);
  }

  return result;
}

unint64_t sub_24B735B8C()
{
  result = qword_27F036278;
  if (!qword_27F036278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036270, &qword_24B7671A0);
    sub_24B735C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036278);
  }

  return result;
}

unint64_t sub_24B735C18()
{
  result = qword_27F036280;
  if (!qword_27F036280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036280);
  }

  return result;
}

unint64_t sub_24B735CC4()
{
  result = qword_27F036298;
  if (!qword_27F036298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036288, &qword_24B7671A8);
    sub_24B6C743C(&qword_27F0362A0, &qword_27F0362A8, &qword_24B7671B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036298);
  }

  return result;
}

unint64_t sub_24B735D7C()
{
  result = qword_27F0362B8;
  if (!qword_27F0362B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035E90, &qword_24B766D68);
    sub_24B735E34(&qword_27F0362C0, &qword_27F0362C8, &qword_24B7671B8, sub_24B735EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0362B8);
  }

  return result;
}

uint64_t sub_24B735E34(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B735EB0()
{
  result = qword_27F0346E8;
  if (!qword_27F0346E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034538, &qword_24B7671C0);
    sub_24B6E8CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0346E8);
  }

  return result;
}

__n128 ProgramDetailEnvironment.init(addToLibrary:fetchRemoteProgramDetail:loadLibraryState:makeArchivedSessionsUpdatedStream:navigateToWorkoutDetail:openUrl:presentMoreInfo:presentVideo:refreshCanvasWorkoutItems:removeFromLibrary:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __n128 a14, uint64_t a15, uint64_t a16)
{
  result = a14;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 152) = a16;
  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_24B735F98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B735FE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B736058(uint64_t a1)
{
  v2 = sub_24B7367E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B736094(uint64_t a1)
{
  v2 = sub_24B7367E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7360F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x446D6172676F7270 && a2 == 0xED00006C69617465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B75C6B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B736184(uint64_t a1)
{
  v2 = sub_24B73689C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7361C0(uint64_t a1)
{
  v2 = sub_24B73689C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7361FC(uint64_t a1)
{
  v2 = sub_24B7368F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B736238(uint64_t a1)
{
  v2 = sub_24B7368F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B736274(uint64_t a1)
{
  v2 = sub_24B736944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7362B0(uint64_t a1)
{
  v2 = sub_24B736944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProgramDetailLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036300, &qword_24B767290);
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v31 - v4;
  v36 = type metadata accessor for WorkoutProgram();
  v5 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036308, &qword_24B767298);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036310, &qword_24B7672A0);
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  State = type metadata accessor for ProgramDetailLoadState();
  v16 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036318, &unk_24B7672A8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7367E4();
  sub_24B75C738();
  sub_24B736838(v41, v18);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
  v26 = (*(*(v25 - 8) + 48))(v18, 2, v25);
  if (v26)
  {
    if (v26 == 1)
    {
      v42 = 0;
      sub_24B736944();
      sub_24B75C638();
      (*(v32 + 8))(v14, v33);
    }

    else
    {
      v43 = 1;
      sub_24B7368F0();
      sub_24B75C638();
      (*(v34 + 8))(v10, v35);
    }

    return (*(v20 + 8))(v23, v19);
  }

  else
  {
    v27 = v37;
    sub_24B7371A8(v18, v37, type metadata accessor for WorkoutProgram);
    v44 = 2;
    sub_24B73689C();
    v28 = v38;
    sub_24B75C638();
    sub_24B737164(&qword_27F036330);
    v29 = v40;
    sub_24B75C6A8();
    (*(v39 + 8))(v28, v29);
    sub_24B73793C(v27, type metadata accessor for WorkoutProgram);
    return (*(v20 + 8))(v23, v19);
  }
}

unint64_t sub_24B7367E4()
{
  result = qword_27F036320;
  if (!qword_27F036320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036320);
  }

  return result;
}

uint64_t sub_24B736838(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for ProgramDetailLoadState();
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

unint64_t sub_24B73689C()
{
  result = qword_27F036328;
  if (!qword_27F036328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036328);
  }

  return result;
}

unint64_t sub_24B7368F0()
{
  result = qword_27F036338;
  if (!qword_27F036338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036338);
  }

  return result;
}

unint64_t sub_24B736944()
{
  result = qword_27F036340;
  if (!qword_27F036340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036340);
  }

  return result;
}

uint64_t ProgramDetailLoadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036348, &qword_24B7672B8);
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v52 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036350, &qword_24B7672C0);
  v62 = *(v55 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v55);
  v61 = &v52 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036358, &qword_24B7672C8);
  v60 = *(v54 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v54);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036360, &unk_24B7672D0);
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  State = type metadata accessor for ProgramDetailLoadState();
  v17 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24B7367E4();
  v25 = v64;
  sub_24B75C728();
  if (!v25)
  {
    v27 = v60;
    v26 = v61;
    v52 = v19;
    v53 = v22;
    v28 = v62;
    v64 = 0;
    v29 = sub_24B75C628();
    v30 = (2 * *(v29 + 16)) | 1;
    v66 = v29;
    v67 = v29 + 32;
    v68 = 0;
    v69 = v30;
    v31 = sub_24B6B9E08();
    v32 = v15;
    if (v31 == 3 || v68 != v69 >> 1)
    {
      v38 = sub_24B75C568();
      swift_allocError();
      v40 = v39;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
      *v40 = State;
      sub_24B75C5A8();
      sub_24B75C558();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
      swift_willThrow();
      (*(v63 + 8))(v32, v12);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v65);
    }

    if (v31)
    {
      v33 = v63;
      if (v31 == 1)
      {
        v70 = 1;
        sub_24B7368F0();
        v34 = v64;
        sub_24B75C598();
        if (!v34)
        {
          (*(v28 + 8))(v26, v55);
          (*(v33 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
          v36 = v53;
          (*(*(v35 - 8) + 56))(v53, 2, 2, v35);
          v37 = v59;
LABEL_17:
          sub_24B7371A8(v36, v37, type metadata accessor for ProgramDetailLoadState);
          return __swift_destroy_boxed_opaque_existential_1(v65);
        }
      }

      else
      {
        v70 = 2;
        sub_24B73689C();
        v45 = v64;
        sub_24B75C598();
        if (!v45)
        {
          v46 = v59;
          type metadata accessor for WorkoutProgram();
          sub_24B737164(&qword_27F036368);
          v47 = v52;
          v48 = v56;
          v49 = v58;
          sub_24B75C618();
          (*(v57 + 8))(v49, v48);
          (*(v33 + 8))(v32, v12);
          swift_unknownObjectRelease();
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
          (*(*(v51 - 8) + 56))(v47, 0, 2, v51);
          v36 = v53;
          sub_24B7371A8(v47, v53, type metadata accessor for ProgramDetailLoadState);
          v37 = v46;
          goto LABEL_17;
        }
      }

      (*(v33 + 8))(v15, v12);
      goto LABEL_9;
    }

    v70 = 0;
    sub_24B736944();
    v43 = v64;
    sub_24B75C598();
    v44 = v63;
    if (!v43)
    {
      (*(v27 + 8))(v11, v54);
      (*(v44 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
      v36 = v53;
      (*(*(v50 - 8) + 56))(v53, 1, 2, v50);
      v37 = v59;
      goto LABEL_17;
    }

    (*(v63 + 8))(v15, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_24B737164(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutProgram();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B7371A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s20FitnessProductDetail07ProgramC9LoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutProgram();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for ProgramDetailLoadState();
  v9 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0363C0, &qword_24B767728);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v17 = *(v16 + 56);
  sub_24B736838(a1, &v23 - v14);
  sub_24B736838(a2, &v15[v17]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
  v19 = *(*(v18 - 8) + 48);
  v20 = v19(v15, 2, v18);
  if (!v20)
  {
    sub_24B736838(v15, v11);
    if (!v19(&v15[v17], 2, v18))
    {
      sub_24B7371A8(&v15[v17], v7, type metadata accessor for WorkoutProgram);
      v21 = _s20FitnessProductDetail14WorkoutProgramV2eeoiySbAC_ACtFZ_0(v11, v7);
      sub_24B73793C(v7, type metadata accessor for WorkoutProgram);
      sub_24B73793C(v11, type metadata accessor for WorkoutProgram);
      sub_24B73793C(v15, type metadata accessor for ProgramDetailLoadState);
      return v21 & 1;
    }

    sub_24B73793C(v11, type metadata accessor for WorkoutProgram);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v15[v17], 2, v18) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v15[v17], 2, v18) != 2)
  {
LABEL_9:
    sub_24B7378D4(v15);
    v21 = 0;
    return v21 & 1;
  }

  sub_24B73793C(v15, type metadata accessor for ProgramDetailLoadState);
  v21 = 1;
  return v21 & 1;
}

unint64_t sub_24B737568()
{
  result = qword_27F036370;
  if (!qword_27F036370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036370);
  }

  return result;
}

unint64_t sub_24B7375C0()
{
  result = qword_27F036378;
  if (!qword_27F036378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036378);
  }

  return result;
}

unint64_t sub_24B737618()
{
  result = qword_27F036380;
  if (!qword_27F036380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036380);
  }

  return result;
}

unint64_t sub_24B737670()
{
  result = qword_27F036388;
  if (!qword_27F036388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036388);
  }

  return result;
}

unint64_t sub_24B7376C8()
{
  result = qword_27F036390;
  if (!qword_27F036390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036390);
  }

  return result;
}

unint64_t sub_24B737720()
{
  result = qword_27F036398;
  if (!qword_27F036398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036398);
  }

  return result;
}

unint64_t sub_24B737778()
{
  result = qword_27F0363A0;
  if (!qword_27F0363A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363A0);
  }

  return result;
}

unint64_t sub_24B7377D0()
{
  result = qword_27F0363A8;
  if (!qword_27F0363A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363A8);
  }

  return result;
}

unint64_t sub_24B737828()
{
  result = qword_27F0363B0;
  if (!qword_27F0363B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363B0);
  }

  return result;
}

unint64_t sub_24B737880()
{
  result = qword_27F0363B8;
  if (!qword_27F0363B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363B8);
  }

  return result;
}

uint64_t sub_24B7378D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0363C0, &qword_24B767728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B73793C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 ProgramDetailLayout.contentMargins.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 ProgramDetailLayout.init(contentMargins:dynamicTypeSize:sizeClass:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = a2;
  *(a4 + 33) = a3 & 1;
  return result;
}

uint64_t sub_24B7379D0()
{
  v1 = 0x5463696D616E7964;
  if (*v0 != 1)
  {
    v1 = 0x73616C43657A6973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4D746E65746E6F63;
  }
}

uint64_t sub_24B737A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B738594(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B737A70(uint64_t a1)
{
  v2 = sub_24B737CCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B737AAC(uint64_t a1)
{
  v2 = sub_24B737CCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProgramDetailLayout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0363C8, &qword_24B767730);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v15 = *(v3 + 32);
  v10 = *(v3 + 33);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B737CCC();
  sub_24B75C738();
  v12 = *(v3 + 16);
  v14[0] = *v3;
  v14[1] = v12;
  v16 = 0;
  sub_24B737D20();
  sub_24B75C6A8();
  if (!v2)
  {
    LOBYTE(v14[0]) = v15;
    v16 = 1;
    sub_24B737D74();
    sub_24B75C6A8();
    LOBYTE(v14[0]) = v10;
    v16 = 2;
    sub_24B737DC8();
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B737CCC()
{
  result = qword_27F0363D0;
  if (!qword_27F0363D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363D0);
  }

  return result;
}

unint64_t sub_24B737D20()
{
  result = qword_27F0363D8;
  if (!qword_27F0363D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363D8);
  }

  return result;
}

unint64_t sub_24B737D74()
{
  result = qword_27F0363E0;
  if (!qword_27F0363E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363E0);
  }

  return result;
}

unint64_t sub_24B737DC8()
{
  result = qword_27F0363E8;
  if (!qword_27F0363E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363E8);
  }

  return result;
}

uint64_t ProgramDetailLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0363F0, &qword_24B767738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B737CCC();
  sub_24B75C728();
  if (!v2)
  {
    v19 = 0;
    sub_24B738040();
    sub_24B75C618();
    v15 = v18;
    v16 = v17;
    v19 = 1;
    sub_24B738094();
    sub_24B75C618();
    v12 = v17;
    v19 = 2;
    sub_24B7380E8();
    sub_24B75C618();
    (*(v6 + 8))(v9, v5);
    v13 = v17;
    v14 = v15;
    *a2 = v16;
    *(a2 + 16) = v14;
    *(a2 + 32) = v12;
    *(a2 + 33) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B738040()
{
  result = qword_27F0363F8;
  if (!qword_27F0363F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0363F8);
  }

  return result;
}

unint64_t sub_24B738094()
{
  result = qword_27F036400;
  if (!qword_27F036400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036400);
  }

  return result;
}

unint64_t sub_24B7380E8()
{
  result = qword_27F036408;
  if (!qword_27F036408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036408);
  }

  return result;
}

uint64_t ProgramDetailLayout.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C2489D0](*&v1);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x24C2489D0](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x24C2489D0](*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x24C2489D0](*&v9);
  MEMORY[0x24C2489B0](v5);
  return MEMORY[0x24C2489B0](v6);
}

uint64_t ProgramDetailLayout.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  sub_24B75C6D8();
  ProgramDetailLayout.hash(into:)();
  return sub_24B75C718();
}

uint64_t sub_24B73826C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  sub_24B75C6D8();
  ProgramDetailLayout.hash(into:)();
  return sub_24B75C718();
}

uint64_t sub_24B7382CC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  sub_24B75C6D8();
  ProgramDetailLayout.hash(into:)();
  return sub_24B75C718();
}

uint64_t _s20FitnessProductDetail07ProgramC6LayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))));
  v2.i16[0] = vminv_u16(v2);
  return v2.i32[0] & ~(*(a2 + 33) ^ *(a1 + 33)) & (*(a1 + 32) == *(a2 + 32));
}

unint64_t sub_24B738378()
{
  result = qword_27F036410;
  if (!qword_27F036410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036410);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B7383E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24B738424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24B738490()
{
  result = qword_27F036418;
  if (!qword_27F036418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036418);
  }

  return result;
}

unint64_t sub_24B7384E8()
{
  result = qword_27F036420;
  if (!qword_27F036420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036420);
  }

  return result;
}

unint64_t sub_24B738540()
{
  result = qword_27F036428;
  if (!qword_27F036428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036428);
  }

  return result;
}

uint64_t sub_24B738594(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B7386C4(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_24B75C188();
}

uint64_t sub_24B738894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24B75B798();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_24B75B7A8();
}

uint64_t sub_24B73898C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B798();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_24B75B7A8();
}

uint64_t sub_24B738A9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036448, qword_24B7679D8);
  sub_24B6C743C(&qword_2810F6970, &qword_27F036448, qword_24B7679D8);

  return sub_24B75B408();
}

uint64_t sub_24B738B3C(uint64_t a1)
{
  v1 = *(a1 + 68);
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
  swift_getFunctionTypeMetadata1();
  sub_24B75B288();
  sub_24B75B278();
  return v4;
}

uint64_t sub_24B738BB4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344D8, qword_24B75FA30);
  return sub_24B75B268();
}

uint64_t EditorialDetailView.init(store:artworkViewBuilder:filterResultsViewBuilder:textViewBuilder:bubbleTipPopoverBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, void (*a7)(uint64_t))
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *a6 = sub_24B6C4E74;
  *(a6 + 8) = v12;
  *(a6 + 16) = 0;
  v13 = type metadata accessor for EditorialDetailView();
  v14 = v13[17];

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
  swift_getFunctionTypeMetadata1();
  v15 = sub_24B75B268();
  v16 = a6 + v13[20];
  a3(v15);
  v17 = v13[18];

  v18 = sub_24B738BB4(a4, a5);
  v19 = a6 + v13[19];
  a7(v18);
}

uint64_t EditorialDetailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  sub_24B739274(v6, &v28);
  v7 = v28;
  v8 = v29;
  v9 = v30;
  v25 = v28;
  v26 = v29;
  v27 = v30;
  (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v10 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v12 = *(a1 + 24);
  *(v11 + 16) = *(a1 + 16);
  *(v11 + 24) = v12;
  v13 = *(a1 + 48);
  v17 = *(a1 + 32);
  *(v11 + 32) = v17;
  *(v11 + 48) = v13;
  (*(v4 + 32))(v11 + v10, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B7B8();
  sub_24B75B958();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  WitnessTable = swift_getWitnessTable();
  v24 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v14 = sub_24B75B3E8();
  v15 = swift_getWitnessTable();
  v21 = v14;
  v22 = v15;
  swift_getOpaqueTypeMetadata2();
  v21 = v14;
  v22 = v15;
  swift_getOpaqueTypeConformance2();
  sub_24B75B4F8();
  sub_24B75B7B8();
  v19 = swift_getWitnessTable();
  v20 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  sub_24B75BE88();

  return sub_24B739F54(v7, v8, v9);
}

uint64_t sub_24B739274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EditorialDetailContent();
  *&v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  *&v49 = &v48 - v12;
  State = type metadata accessor for EditorialDetailLoadState();
  v14 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  sub_24B738A9C();
  swift_getKeyPath();
  sub_24B75C218();

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  if ((*(*(v18 - 8) + 48))(v16, 2, v18))
  {
    v19 = a1;
    v20 = *(a1 + 16);
    sub_24B75B558();
    sub_24B75B558();
    sub_24B75B7B8();
    sub_24B75B958();
    sub_24B75B558();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
    v21 = *(v17 + 24);
    sub_24B75B558();
    swift_getTupleTypeMetadata3();
    sub_24B75C178();
    swift_getWitnessTable();
    sub_24B75C028();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
    swift_getTupleTypeMetadata3();
    sub_24B75C178();
    sub_24B75BF88();
    sub_24B75B558();
    v22 = *(v17 + 32);
    swift_getTupleTypeMetadata3();
    sub_24B75C178();
    swift_getWitnessTable();
    sub_24B75C088();
    sub_24B75B558();
    WitnessTable = swift_getWitnessTable();
    v23 = MEMORY[0x277CDF918];
    v56 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    v24 = sub_24B75B3E8();
    v25 = swift_getWitnessTable();
    *&v57 = v24;
    *(&v57 + 1) = v25;
    swift_getOpaqueTypeMetadata2();
    *&v57 = v24;
    *(&v57 + 1) = v25;
    swift_getOpaqueTypeConformance2();
    v26 = sub_24B75B4F8();
    v27 = swift_getWitnessTable();
    sub_24B738894(v27, v26, MEMORY[0x277CE1428]);
  }

  else
  {
    v28 = v16;
    v29 = v49;
    sub_24B73FE00(v28, v49, type metadata accessor for EditorialDetailContent);
    (*(v5 + 16))(&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
    sub_24B73FAF8(v29, v10, type metadata accessor for EditorialDetailContent);
    v30 = (*(v5 + 80) + 64) & ~*(v5 + 80);
    v31 = (v6 + *(v48 + 80) + v30) & ~*(v48 + 80);
    v19 = a1;
    v32 = swift_allocObject();
    v33 = *(a1 + 24);
    *(v32 + 16) = *(a1 + 16);
    *(v32 + 24) = v33;
    v34 = *(a1 + 48);
    v48 = *(a1 + 32);
    *(v32 + 32) = v48;
    *(v32 + 48) = v34;
    (*(v5 + 32))(v32 + v30, v7, a1);
    sub_24B73FE00(v10, v32 + v31, type metadata accessor for EditorialDetailContent);
    sub_24B75B558();
    sub_24B75B558();
    sub_24B75B7B8();
    sub_24B75B958();
    sub_24B75B558();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
    sub_24B75B558();
    swift_getTupleTypeMetadata3();
    sub_24B75C178();
    swift_getWitnessTable();
    sub_24B75C028();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
    swift_getTupleTypeMetadata3();
    sub_24B75C178();
    sub_24B75BF88();
    sub_24B75B558();
    swift_getTupleTypeMetadata3();
    sub_24B75C178();
    swift_getWitnessTable();
    sub_24B75C088();
    sub_24B75B558();
    v51[4] = swift_getWitnessTable();
    v23 = MEMORY[0x277CDF918];
    v51[5] = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    v35 = sub_24B75B3E8();
    v36 = swift_getWitnessTable();
    *&v57 = v35;
    *(&v57 + 1) = v36;
    swift_getOpaqueTypeMetadata2();
    *&v57 = v35;
    *(&v57 + 1) = v36;
    swift_getOpaqueTypeConformance2();
    *&v57 = sub_24B75B4E8();
    *(&v57 + 1) = v37;
    v38 = sub_24B75B4F8();
    v39 = swift_getWitnessTable();
    sub_24B6C7504(&v57, v38, v39);

    v57 = v52;
    sub_24B6C7504(&v57, v38, v39);
    v51[0] = v51[2];
    v51[1] = v51[3];
    sub_24B73898C(v51, v38);

    sub_24B740874(v49, type metadata accessor for EditorialDetailContent);
  }

  v40 = v58;
  v49 = v57;
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B7B8();
  sub_24B75B958();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
  v41 = *(v19 + 24);
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  v42 = *(v19 + 32);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  v53 = swift_getWitnessTable();
  v54 = v23;
  swift_getWitnessTable();
  v43 = sub_24B75B3E8();
  v44 = swift_getWitnessTable();
  *&v52 = v43;
  *(&v52 + 1) = v44;
  swift_getOpaqueTypeMetadata2();
  *&v52 = v43;
  *(&v52 + 1) = v44;
  swift_getOpaqueTypeConformance2();
  sub_24B75B4F8();
  v45 = sub_24B75B7B8();
  v51[6] = swift_getWitnessTable();
  v51[7] = MEMORY[0x277CE1410];
  v46 = swift_getWitnessTable();
  sub_24B6C7504(&v57, v45, v46);
  return sub_24B739F54(v49, *(&v49 + 1), v40);
}

uint64_t sub_24B739F54(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_24B739F64(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

void sub_24B739FB8(void *a1)
{
  sub_24B73A0E4();
  if (v2 <= 0x3F)
  {
    v3 = a1[2];
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
    swift_getFunctionTypeMetadata1();
    sub_24B75B288();
    if (v4 <= 0x3F)
    {
      sub_24B6C71E0();
      if (v5 <= 0x3F)
      {
        v6 = a1[3];
        swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          v8 = a1[4];
          swift_checkMetadataState();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B73A0E4()
{
  if (!qword_2810F6980[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036448, qword_24B7679D8);
    sub_24B6C743C(&qword_2810F6970, &qword_27F036448, qword_24B7679D8);
    v0 = sub_24B75B418();
    if (!v1)
    {
      atomic_store(v0, qword_2810F6980);
    }
  }
}

uint64_t sub_24B73A188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v44 = a8;
  v42 = a7;
  v36 = a5;
  v43 = a3;
  v40 = a2;
  v41 = a1;
  v47 = a9;
  v39 = a10;
  v12 = sub_24B75B7E8();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12);
  v38 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a4;
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B7B8();
  sub_24B75B958();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  v15 = a6;
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C088();
  sub_24B75B558();
  WitnessTable = swift_getWitnessTable();
  v60 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v16 = sub_24B75B3E8();
  v35 = *(v16 - 8);
  v17 = *(v35 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  v20 = swift_getWitnessTable();
  v57 = v16;
  v58 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v34 - v27;
  v48 = v37;
  v49 = v36;
  v50 = v15;
  v51 = v42;
  v52 = v44;
  v53 = v39;
  v54 = v40;
  v55 = v43;
  v56 = v41;
  sub_24B75B988();
  v29 = v38;
  sub_24B75B3F8();
  sub_24B75B7D8();
  v30 = sub_24B75B988();
  sub_24B75B978();
  sub_24B75B978();
  if (sub_24B75B978() != v30)
  {
    sub_24B75B978();
  }

  sub_24B75BDC8();
  (*(v45 + 8))(v29, v46);
  (*(v35 + 8))(v19, v16);
  v57 = v16;
  v58 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B6C7504(v25, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v32 = *(v22 + 8);
  v32(v25, OpaqueTypeMetadata2);
  sub_24B6C7504(v28, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v32)(v28, OpaqueTypeMetadata2);
}

uint64_t sub_24B73A798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = *(type metadata accessor for EditorialDetailView() - 8);
  v11 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for EditorialDetailContent() - 8);
  return sub_24B73A188(a1, v2 + v11, v2 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80)), v4, v5, v6, v7, v8, a2, v9);
}

uint64_t sub_24B73A8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v34 = a7;
  v35 = a8;
  v29 = a5;
  v36 = a3;
  v37 = a9;
  v32 = a1;
  v33 = a2;
  v30 = a4;
  v31 = a10;
  sub_24B75B558();
  sub_24B75B558();
  sub_24B75B7B8();
  sub_24B75B958();
  sub_24B75B558();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  sub_24B75C028();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  sub_24B75BF88();
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v11 = sub_24B75C088();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = sub_24B75B558();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v28 - v22;
  sub_24B75B788();
  v38 = v30;
  v39 = v29;
  v40 = a6;
  v41 = v34;
  v42 = v35;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  sub_24B75C078();
  sub_24B75B9B8();
  sub_24B75B478();
  WitnessTable = swift_getWitnessTable();
  sub_24B75BE48();
  (*(v12 + 8))(v15, v11);
  v46 = WitnessTable;
  v47 = MEMORY[0x277CDF918];
  v25 = swift_getWitnessTable();
  sub_24B6C7504(v20, v16, v25);
  v26 = *(v17 + 8);
  v26(v20, v16);
  sub_24B6C7504(v23, v16, v25);
  return (v26)(v23, v16);
}

uint64_t sub_24B73AD7C@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v96 = a8;
  v70 = a7;
  v77 = a6;
  v89 = a2;
  v90 = a1;
  v86 = a9;
  v87 = a5;
  v85 = *(a5 - 1);
  v13 = *(v85 + 64);
  MEMORY[0x28223BE20](a1);
  v93 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v84 = &v68 - v16;
  v17 = type metadata accessor for EditorialDetailLayout();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v83 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
  v69 = a4;
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  v78 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24B75C028();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
  swift_getTupleTypeMetadata3();
  v76 = sub_24B75C178();
  v79 = sub_24B75BF88();
  v81 = *(v79 - 8);
  v20 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - v21;
  v80 = sub_24B75B558();
  v82 = *(v80 - 8);
  v22 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  v95 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v92 = &v68 - v25;
  sub_24B75B558();
  v68 = a3;
  sub_24B75B558();
  v26 = sub_24B75B7B8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v68 - v29;
  sub_24B75B958();
  v88 = sub_24B75B558();
  v91 = *(v88 - 8);
  v31 = *(v91 + 64);
  MEMORY[0x28223BE20](v88);
  v94 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v97 = &v68 - v34;
  v110 = a3;
  v111 = a4;
  v112 = a5;
  v35 = v77;
  v113 = v77;
  v114 = a7;
  v115 = v96;
  v71 = type metadata accessor for EditorialDetailView();
  v36 = v90;
  sub_24B73B6F8(v89, v71, v30);
  v109[12] = v35;
  v109[13] = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v109[10] = v35;
  v109[11] = MEMORY[0x277CDF678];
  v38 = swift_getWitnessTable();
  v109[8] = WitnessTable;
  v109[9] = v38;
  v39 = swift_getWitnessTable();
  v40 = v94;
  sub_24B75BDA8();
  (*(v27 + 8))(v30, v26);
  v41 = sub_24B740548(&qword_27F034580, MEMORY[0x277CDE470]);
  v109[6] = v39;
  v109[7] = v41;
  v42 = v88;
  v72 = swift_getWitnessTable();
  sub_24B6C7504(v40, v42, v72);
  v43 = *(v91 + 8);
  v73 = v91 + 8;
  v74 = v43;
  v43(v40, v42);
  v98 = v68;
  v99 = v69;
  v100 = v87;
  v101 = v35;
  v102 = v70;
  v103 = v96;
  v104 = v89;
  v105 = v36;
  v44 = swift_getWitnessTable();
  v45 = v75;
  sub_24B75BF78();
  sub_24B75B998();
  v46 = v71;
  sub_24B738A9C();
  swift_getKeyPath();
  v47 = v83;
  sub_24B75C218();

  sub_24B75B2F8();
  v48 = sub_24B75B308();
  (*(*(v48 - 8) + 8))(v47, v48);
  v109[5] = v44;
  v49 = v79;
  v50 = swift_getWitnessTable();
  v51 = v95;
  sub_24B75BE48();
  (*(v81 + 8))(v45, v49);
  v109[3] = v50;
  v109[4] = MEMORY[0x277CDF918];
  v52 = v80;
  v83 = swift_getWitnessTable();
  v53 = v92;
  sub_24B6C7504(v51, v52, v83);
  v54 = v82;
  v89 = *(v82 + 8);
  v89(v51, v52);
  v55 = v90 + *(v46 + 80);
  v56 = v84;
  v57 = v87;
  v58 = v96;
  sub_24B6C7504(v55, v87, v96);
  v59 = v94;
  v60 = v88;
  (*(v91 + 16))(v94, v97, v88);
  v110 = v59;
  v61 = v95;
  (*(v54 + 16))(v95, v53, v52);
  v111 = v61;
  v62 = v85;
  v63 = v93;
  (*(v85 + 16))(v93, v56, v57);
  v112 = v63;
  v109[0] = v60;
  v109[1] = v52;
  v109[2] = v57;
  v106 = v72;
  v107 = v83;
  v108 = v58;
  sub_24B7386C4(&v110, 3uLL, v109);
  v64 = *(v62 + 8);
  v64(v56, v57);
  v65 = v89;
  v89(v92, v52);
  v66 = v74;
  v74(v97, v60);
  v64(v93, v57);
  v65(v95, v52);
  return v66(v94, v60);
}

uint64_t sub_24B73B6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v57 = a3;
  v4 = *(a2 + 16);
  v5 = sub_24B75B558();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v46 - v9;
  v53 = *(v4 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24B75B558();
  v48 = *(v14 - 8);
  v15 = *(v48 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v47 = &v46 - v19;
  v20 = type metadata accessor for EditorialDetailLayout();
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v5;
  v25 = sub_24B75B7B8();
  v55 = *(v25 - 8);
  v56 = v25;
  v26 = *(v55 + 64);
  MEMORY[0x28223BE20](v25);
  v54 = &v46 - v27;
  sub_24B738A9C();
  swift_getKeyPath();
  sub_24B75C218();

  LODWORD(v21) = v24[*(v21 + 28)];
  sub_24B740874(v24, type metadata accessor for EditorialDetailLayout);
  v28 = sub_24B738B3C(a2);
  v28(v52);

  v29 = MEMORY[0x277CDF678];
  if (v21 > 2)
  {
    sub_24B75C158();
    v30 = *(a2 + 40);
    v35 = v50;
    sub_24B75BE08();
    (*(v53 + 8))(v13, v4);
    v71 = v30;
    v72 = v29;
    v36 = v58;
    WitnessTable = swift_getWitnessTable();
    v38 = v49;
    sub_24B6C7504(v35, v36, WitnessTable);
    v39 = *(v51 + 8);
    v39(v35, v36);
    sub_24B6C7504(v38, v36, WitnessTable);
    v69 = v30;
    v70 = MEMORY[0x277CE01B0];
    swift_getWitnessTable();
    v34 = v54;
    sub_24B738894(v35, v14, v36);
    v39(v35, v36);
    v40 = v38;
    v29 = MEMORY[0x277CDF678];
    v39(v40, v36);
  }

  else
  {
    v30 = *(a2 + 40);
    sub_24B75BCE8();
    (*(v53 + 8))(v13, v4);
    v61 = v30;
    v62 = MEMORY[0x277CE01B0];
    v31 = swift_getWitnessTable();
    v32 = v47;
    sub_24B6C7504(v17, v14, v31);
    v33 = *(v48 + 8);
    v33(v17, v14);
    sub_24B6C7504(v32, v14, v31);
    v59 = v30;
    v60 = v29;
    swift_getWitnessTable();
    v34 = v54;
    sub_24B73898C(v17, v14);
    v33(v17, v14);
    v33(v32, v14);
  }

  v67 = v30;
  v68 = MEMORY[0x277CE01B0];
  v41 = swift_getWitnessTable();
  v65 = v30;
  v66 = v29;
  v42 = swift_getWitnessTable();
  v63 = v41;
  v64 = v42;
  v43 = v56;
  v44 = swift_getWitnessTable();
  sub_24B6C7504(v34, v43, v44);
  return (*(v55 + 8))(v34, v43);
}

uint64_t sub_24B73BD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v170 = a8;
  v172 = a7;
  v169 = a6;
  v171 = a5;
  v167 = a2;
  v173 = a1;
  v159 = a9;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036460, &unk_24B767A50);
  v157 = *(v158 - 8);
  v15 = *(v157 + 64);
  MEMORY[0x28223BE20](v158);
  v133 = v131 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034ED8, &qword_24B761788);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v148 = v131 - v19;
  v146 = type metadata accessor for EditorialPreview();
  v149 = *(v146 - 8);
  v20 = *(v149 + 64);
  MEMORY[0x28223BE20](v146);
  v132 = v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131[7] = v21;
  MEMORY[0x28223BE20](v22);
  v153 = v131 - v23;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036440, &qword_24B767958);
  v24 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v156 = v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v155 = v131 - v27;
  v186 = a3;
  v187 = a4;
  v188 = a5;
  v189 = a6;
  v190 = a7;
  v191 = a8;
  v162 = type metadata accessor for EditorialDetailView();
  v160 = *(v162 - 8);
  v163 = *(v160 + 64);
  MEMORY[0x28223BE20](v162);
  v168 = v131 - v28;
  v164 = type metadata accessor for EditorialDetailContent();
  v135 = *(v164 - 8);
  v29 = *(v135 + 64);
  MEMORY[0x28223BE20](v164);
  v136 = v30;
  v137 = v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24B75B1F8();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v134 = v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24B75C2F8();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036468, &qword_24B767A60);
  v139 = *(v140 - 8);
  v36 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v138 = v131 - v37;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036438, &qword_24B767950);
  v38 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v152 = v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = v131 - v41;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0346C0, &qword_24B75FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
  sub_24B75B558();
  swift_getTupleTypeMetadata3();
  sub_24B75C178();
  swift_getWitnessTable();
  v43 = sub_24B75C028();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = v131 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = v131 - v49;
  v166 = a3;
  v174 = a3;
  v175 = a4;
  v51 = v167;
  v165 = a4;
  v176 = v171;
  v177 = v169;
  v178 = v172;
  v179 = v170;
  v52 = v173;
  v180 = v173;
  v181 = v167;
  sub_24B75B6B8();
  sub_24B75C018();
  WitnessTable = swift_getWitnessTable();
  v145 = v50;
  v141 = WitnessTable;
  sub_24B6C7504(v47, v43, WitnessTable);
  v142 = v44;
  v54 = *(v44 + 8);
  v147 = v47;
  v55 = v47;
  v56 = v164;
  v150 = v43;
  v144 = v44 + 8;
  v143 = v54;
  v54(v55, v43);
  v57 = (v52 + v56[10]);
  v58 = v57[1];
  v161 = v42;
  if (v58)
  {
    v59 = *v57;
    v60 = swift_allocObject();
    v131[5] = v60;
    *(v60 + 16) = v59;
    *(v60 + 24) = v58;
    v61 = (v173 + v56[7]);
    v62 = v61[1];
    v131[6] = *v61;
    v131[4] = v62;

    sub_24B75C2E8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v64 = objc_opt_self();
    v65 = [v64 bundleForClass_];
    v66 = v162;
    sub_24B738A9C();
    swift_getKeyPath();
    sub_24B75C218();

    v131[3] = sub_24B75C348();
    v131[2] = v67;
    sub_24B75C2E8();
    v68 = [v64 bundleForClass_];
    sub_24B738A9C();
    swift_getKeyPath();
    sub_24B75C218();

    v134 = sub_24B75C348();
    v131[1] = v69;
    v70 = v137;
    sub_24B73FAF8(v173, v137, type metadata accessor for EditorialDetailContent);
    v71 = v160;
    v131[0] = *(v160 + 16);
    (v131[0])(v168, v51, v66);
    v72 = (*(v135 + 80) + 64) & ~*(v135 + 80);
    v73 = *(v71 + 80);
    v74 = (v136 + v73 + v72) & ~v73;
    v136 = v73 | 7;
    v75 = swift_allocObject();
    v76 = v165;
    v75[2] = v166;
    v75[3] = v76;
    v77 = v169;
    v75[4] = v171;
    v75[5] = v77;
    v78 = v170;
    v75[6] = v172;
    v75[7] = v78;
    sub_24B73FE00(v70, v75 + v72, type metadata accessor for EditorialDetailContent);
    v79 = *(v71 + 32);
    v80 = v75 + v74;
    v81 = v168;
    v82 = v66;
    v79(v80, v168, v66);
    v83 = v81;
    (v131[0])(v81, v167, v66);
    v84 = (v73 + 64) & ~v73;
    v85 = swift_allocObject();
    v86 = v165;
    *(v85 + 2) = v166;
    *(v85 + 3) = v86;
    v87 = v169;
    *(v85 + 4) = v171;
    *(v85 + 5) = v87;
    v88 = v172;
    v89 = v170;
    *(v85 + 6) = v172;
    *(v85 + 7) = v89;
    v79(&v85[v84], v83, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364B8, &qword_24B767AB8);
    sub_24B6C743C(&qword_27F0364C0, &qword_27F0364B8, &qword_24B767AB8);
    v90 = v161;
    v56 = v164;
    v91 = v138;
    sub_24B75B318();
    v92 = v139;
    v42 = v90;
    v93 = v91;
    v94 = v140;
    (*(v139 + 32))(v90, v93, v140);
    v95 = 0;
    v96 = v168;
    v97 = v163;
    v98 = v94;
    v99 = v92;
  }

  else
  {
    v95 = 1;
    v88 = v172;
    v82 = v162;
    v96 = v168;
    v97 = v163;
    v98 = v140;
    v99 = v139;
  }

  (*(v99 + 56))(v42, v95, 1, v98);
  v100 = v173 + v56[8];
  v101 = v148;
  sub_24B6B9D34(v100, v148, &qword_27F034ED8, &qword_24B761788);
  v102 = v149;
  if ((*(v149 + 48))(v101, 1, v146) == 1)
  {
    sub_24B6B9CD4(v101, &qword_27F034ED8, &qword_24B761788);
    v103 = 1;
    v104 = v158;
    v105 = v155;
  }

  else
  {
    v106 = v153;
    sub_24B73FE00(v101, v153, type metadata accessor for EditorialPreview);
    v107 = v96;
    v108 = v97;
    v109 = v88;
    v110 = v160;
    (*(v160 + 16))(v107, v167, v82);
    v111 = v132;
    sub_24B73FAF8(v106, v132, type metadata accessor for EditorialPreview);
    v112 = (*(v110 + 80) + 64) & ~*(v110 + 80);
    v113 = (v108 + *(v102 + 80) + v112) & ~*(v102 + 80);
    v114 = swift_allocObject();
    v115 = v165;
    *(v114 + 2) = v166;
    *(v114 + 3) = v115;
    v116 = v169;
    *(v114 + 4) = v171;
    *(v114 + 5) = v116;
    *(v114 + 6) = v109;
    *(v114 + 7) = v170;
    (*(v110 + 32))(&v114[v112], v168, v162);
    v117 = sub_24B73FE00(v111, &v114[v113], type metadata accessor for EditorialPreview);
    v173 = v131;
    MEMORY[0x28223BE20](v117);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364A0, &qword_24B767A70);
    v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0364A8, &qword_24B767A78);
    v119 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036068, &unk_24B767A80);
    v120 = sub_24B73F32C();
    v121 = sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80);
    v186 = v118;
    v187 = v119;
    v42 = v161;
    v188 = v120;
    v189 = v121;
    swift_getOpaqueTypeConformance2();
    v122 = v133;
    sub_24B75BFE8();
    LOBYTE(v114) = sub_24B75BA08();
    sub_24B740874(v153, type metadata accessor for EditorialPreview);
    v104 = v158;
    v123 = v122 + *(v158 + 36);
    *v123 = v114;
    *(v123 + 8) = 0u;
    *(v123 + 24) = 0u;
    *(v123 + 40) = 1;
    v105 = v155;
    sub_24B6B0B2C(v122, v155);
    v103 = 0;
  }

  (*(v157 + 56))(v105, v103, 1, v104);
  v124 = v147;
  v125 = v145;
  v126 = v150;
  (*(v142 + 16))(v147, v145, v150);
  v186 = v124;
  v127 = v152;
  sub_24B6B9D34(v42, v152, &qword_27F036438, &qword_24B767950);
  v187 = v127;
  v128 = v156;
  sub_24B6B9D34(v105, v156, &qword_27F036440, &qword_24B767958);
  v188 = v128;
  v185[0] = v126;
  v185[1] = v151;
  v185[2] = v154;
  v182 = v141;
  v183 = sub_24B73F0FC();
  v184 = sub_24B73F1AC();
  sub_24B7386C4(&v186, 3uLL, v185);
  sub_24B6B9CD4(v105, &qword_27F036440, &qword_24B767958);
  sub_24B6B9CD4(v42, &qword_27F036438, &qword_24B767950);
  v129 = v143;
  v143(v125, v126);
  sub_24B6B9CD4(v128, &qword_27F036440, &qword_24B767958);
  sub_24B6B9CD4(v127, &qword_27F036438, &qword_24B767950);
  return v129(v124, v126);
}

uint64_t sub_24B73CFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v74 = a8;
  v73 = a7;
  v72 = a6;
  v70 = a5;
  v63 = a4;
  v67 = a3;
  v75 = a2;
  v78 = a9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036430, &qword_24B767948);
  v10 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v59 - v11;
  v76 = sub_24B75B558();
  v77 = *(v76 - 8);
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  v65 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v69 = &v59 - v15;
  v62 = sub_24B75B768();
  v61 = *(v62 - 8);
  v16 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0346C0, &qword_24B75FAC0);
  v19 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v64 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v60 = &v59 - v22;
  v23 = (a1 + *(type metadata accessor for EditorialDetailContent() + 28));
  v24 = v23[1];
  v87 = *v23;
  v88 = v24;
  sub_24B6E89B0();

  v25 = sub_24B75BC48();
  v27 = v26;
  v29 = v28;
  sub_24B75BA18();
  v30 = sub_24B75BC18();
  v32 = v31;
  v34 = v33;

  sub_24B6E89A0(v25, v27, v29 & 1);

  v35 = sub_24B75BC08();
  v37 = v36;
  LOBYTE(v27) = v38;
  v40 = v39;
  sub_24B6E89A0(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  v87 = v35;
  v88 = v37;
  LOBYTE(v89) = v27 & 1;
  v90 = v40;
  v91 = KeyPath;
  v92 = 3;
  v93 = 0;
  sub_24B75B758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034700, &unk_24B75FAF0);
  sub_24B6E8D88();
  v42 = v60;
  sub_24B75BDD8();
  (*(v61 + 8))(v18, v62);
  sub_24B6E89A0(v35, v37, v27 & 1);

  v43 = v63;
  v87 = v67;
  v88 = v63;
  v89 = v70;
  v90 = v72;
  v44 = v73;
  v91 = v73;
  v92 = v74;
  v45 = type metadata accessor for EditorialDetailView();
  v46 = v66;
  v47 = v75;
  sub_24B73D620(v45, v66);
  v48 = *(v45 + 76);
  v49 = sub_24B7401C4();
  v50 = v47 + v48;
  v51 = v65;
  MEMORY[0x24C248140](v50, v68, v43, v49);
  sub_24B6B9CD4(v46, &qword_27F036430, &qword_24B767948);
  v85 = v49;
  v86 = v44;
  v52 = v76;
  WitnessTable = swift_getWitnessTable();
  v54 = v69;
  sub_24B6C7504(v51, v52, WitnessTable);
  v55 = v77;
  v56 = *(v77 + 8);
  v56(v51, v52);
  v57 = v64;
  sub_24B6B9D34(v42, v64, &qword_27F0346C0, &qword_24B75FAC0);
  v83 = 0x4014000000000000;
  v84 = 0;
  v87 = v57;
  v88 = &v83;
  (*(v55 + 16))(v51, v54, v52);
  v89 = v51;
  v82[0] = v71;
  v82[1] = MEMORY[0x277CE1180];
  v82[2] = v52;
  v79 = sub_24B6E8CCC();
  v80 = MEMORY[0x277CE1170];
  v81 = WitnessTable;
  sub_24B7386C4(&v87, 3uLL, v82);
  v56(v54, v52);
  sub_24B6B9CD4(v42, &qword_27F0346C0, &qword_24B75FAC0);
  v56(v51, v52);
  return sub_24B6B9CD4(v57, &qword_27F0346C0, &qword_24B75FAC0);
}

uint64_t sub_24B73D620@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036068, &unk_24B767A80);
  v4 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v51 = &v43 - v5;
  v6 = sub_24B75B948();
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036540, &qword_24B767BB8);
  v14 = *(v13 - 8);
  v53 = v13;
  v54 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v50 = &v43 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036520, &qword_24B767BA8);
  v17 = *(*(v49 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v49);
  v48 = &v43 - v19;
  (*(v10 + 16))(&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v18);
  v20 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v21 = swift_allocObject();
  v23 = a1[2];
  v22 = a1[3];
  *(v21 + 2) = v23;
  *(v21 + 3) = v22;
  v25 = a1[4];
  v24 = a1[5];
  *(v21 + 4) = v25;
  *(v21 + 5) = v24;
  v26 = a1[6];
  v27 = a1[7];
  *(v21 + 6) = v26;
  *(v21 + 7) = v27;
  (*(v10 + 32))(&v21[v20], v46, a1);
  v57 = v23;
  v58 = v22;
  v59 = v25;
  v60 = v24;
  v28 = v48;
  v29 = v49;
  v30 = v51;
  v61 = v26;
  v62 = v27;
  v63 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036578, &unk_24B767BD0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036188, &qword_24B7670B0);
  v32 = sub_24B735340();
  v64 = v31;
  v65 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v50;
  sub_24B75BFE8();
  v34 = v52;
  sub_24B75B938();
  sub_24B6C743C(&qword_27F036548, &qword_27F036540, &qword_24B767BB8);
  sub_24B740548(&qword_27F036550, MEMORY[0x277CDE400]);
  v35 = v53;
  v36 = v55;
  sub_24B75BCF8();
  (*(v56 + 8))(v34, v36);
  (*(v54 + 8))(v33, v35);
  v37 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036538, &qword_24B767BB0) + 36));
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036560, &qword_24B767BC0) + 28);
  sub_24B75B5E8();
  *v37 = swift_getKeyPath();
  *(v28 + *(v29 + 36)) = sub_24B75BEF8();
  v39 = *MEMORY[0x277CDFA10];
  v40 = sub_24B75B538();
  (*(*(v40 - 8) + 104))(v30, v39, v40);
  sub_24B740548(&qword_27F0360B8, MEMORY[0x277CDFA28]);
  result = sub_24B75C2D8();
  if (result)
  {
    sub_24B740318();
    sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80);
    v42 = v45;
    sub_24B75BD58();
    sub_24B6B9CD4(v30, &qword_27F036068, &unk_24B767A80);
    sub_24B6B9CD4(v28, &qword_27F036520, &qword_24B767BA8);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036430, &qword_24B767948);
    *(v42 + *(result + 36)) = 0x3FF0000000000000;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B73DC44()
{
  sub_24B6E89B0();

  return sub_24B75BC48();
}

uint64_t sub_24B73DC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = sub_24B75B788();
  *(a9 + 8) = 0x4024000000000000;
  *(a9 + 16) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364C8, &unk_24B767AC0);
  return sub_24B73DD48(a1, a2, a3, a4, a5, a6, a7, a8, a9 + *(v18 + 44));
}

uint64_t sub_24B73DD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = a8;
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v37 = a2;
  v39 = a3;
  v40 = a4;
  v41[0] = a3;
  v41[1] = a4;
  v41[2] = a5;
  v41[3] = a6;
  v41[4] = a7;
  v41[5] = a8;
  v38 = type metadata accessor for EditorialDetailView();
  v15 = *(v38 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v29 - v17;
  v18 = *(a1 + *(type metadata accessor for EditorialDetailContent() + 20));
  v19 = *(v18 + 16);
  if (!v19)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v30 = v12;
  v31 = v11;
  v32 = v10;
  v33 = v9;
  v34 = a9;
  v20 = sub_24B73F548(v19, 0);
  v21 = *(type metadata accessor for EditorialExternalLink() - 8);
  sub_24B73F7C8(v41, v20 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v19, v18);
  KeyPath = v22;

  result = sub_24B73FA1C();
  if (KeyPath == v19)
  {
    v9 = v33;
    v11 = v31;
    v10 = v32;
    v12 = v30;
LABEL_5:
    v41[0] = v20;
    KeyPath = swift_getKeyPath();
    v24 = v36;
    v25 = v38;
    (*(v15 + 16))(v36, v37, v38);
    v26 = (*(v15 + 80) + 64) & ~*(v15 + 80);
    v27 = swift_allocObject();
    v28 = v40;
    *(v27 + 2) = v39;
    *(v27 + 3) = v28;
    *(v27 + 4) = v12;
    *(v27 + 5) = v11;
    *(v27 + 6) = v10;
    *(v27 + 7) = v9;
    (*(v15 + 32))(&v27[v26], v24, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364D0, &qword_24B767AE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364D8, &qword_24B767AF0);
    sub_24B6C743C(&qword_27F0364E0, &qword_27F0364D0, &qword_24B767AE8);
    sub_24B740548(&qword_2810F70E8, type metadata accessor for EditorialExternalLink);
    sub_24B6C743C(&qword_27F0364E8, &qword_27F0364D8, &qword_24B767AF0);
    return sub_24B75C0D8();
  }

  __break(1u);
  return result;
}

uint64_t sub_24B73E0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v38 = a7;
  v39 = a8;
  v36 = a5;
  v37 = a6;
  v34 = a3;
  v35 = a4;
  v40 = a9;
  v17 = type metadata accessor for EditorialExternalLink();
  v33 = *(v17 - 8);
  v18 = *(v33 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = a8;
  v19 = type metadata accessor for EditorialDetailView();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v33 - v23;
  (*(v20 + 16))(&v33 - v23, a2, v19, v22);
  v25 = a1;
  sub_24B73FAF8(a1, &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditorialExternalLink);
  v26 = (*(v20 + 80) + 64) & ~*(v20 + 80);
  v27 = (v21 + *(v33 + 80) + v26) & ~*(v33 + 80);
  v28 = swift_allocObject();
  v29 = v35;
  *(v28 + 2) = v34;
  *(v28 + 3) = v29;
  v30 = v37;
  *(v28 + 4) = v36;
  *(v28 + 5) = v30;
  v31 = v39;
  *(v28 + 6) = v38;
  *(v28 + 7) = v31;
  (*(v20 + 32))(&v28[v26], v24, v19);
  sub_24B73FE00(&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), &v28[v27], type metadata accessor for EditorialExternalLink);
  v41 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364F0, &qword_24B767AF8);
  sub_24B73FFD0();
  return sub_24B75BFE8();
}

uint64_t sub_24B73E338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for EditorialDetailAction();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = a7;
  v22[5] = a8;
  type metadata accessor for EditorialDetailView();
  sub_24B738A9C();
  v19 = *(type metadata accessor for EditorialExternalLink() + 20);
  v20 = sub_24B75B108();
  (*(*(v20 - 8) + 16))(v18, a2 + v19, v20);
  swift_storeEnumTagMultiPayload();
  sub_24B75C228();

  return sub_24B740874(v18, type metadata accessor for EditorialDetailAction);
}

uint64_t sub_24B73E490@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B75BAE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035898, &qword_24B764A10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  v14 = *a1;
  v15 = a1[1];
  v24[0] = v14;
  v24[1] = v15;
  sub_24B6E89B0();

  sub_24B75BFD8();
  v24[0] = 0x4000000000000000;
  sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10);
  sub_24B735424();
  sub_24B75BCC8();
  (*(v10 + 8))(v13, v9);
  sub_24B75BA38();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0A10], v4);
  v16 = sub_24B75BB28();

  (*(v5 + 8))(v8, v4);
  KeyPath = swift_getKeyPath();
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036508, &qword_24B767B00) + 36));
  *v18 = KeyPath;
  v18[1] = v16;
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364F0, &qword_24B767AF8) + 36));
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0348D8, &qword_24B75FC70) + 28);
  v21 = *MEMORY[0x277CE1050];
  v22 = sub_24B75BFA8();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  result = swift_getKeyPath();
  *v19 = result;
  return result;
}

uint64_t sub_24B73E7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for EditorialDetailAction();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  type metadata accessor for EditorialDetailView();
  sub_24B738A9C();
  swift_storeEnumTagMultiPayload();
  sub_24B75C228();

  return sub_24B740874(v16, type metadata accessor for EditorialDetailAction);
}

uint64_t sub_24B73E8C0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for EditorialDetailAction();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a5;
  v24[3] = a6;
  v24[4] = a7;
  v24[5] = a8;
  type metadata accessor for EditorialDetailView();
  sub_24B738A9C();
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035508, &qword_24B767B70) + 48);
  v20 = *(a2 + 1);
  *v18 = *a2;
  *(v18 + 1) = v20;
  v21 = *(type metadata accessor for EditorialPreview() + 20);
  v22 = sub_24B75B108();
  (*(*(v22 - 8) + 16))(&v18[v19], &a2[v21], v22);
  swift_storeEnumTagMultiPayload();

  sub_24B75C228();

  return sub_24B740874(v18, type metadata accessor for EditorialDetailAction);
}

uint64_t sub_24B73EA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v32 = a6;
  v33 = a7;
  v30 = a8;
  v31 = a5;
  v34 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036068, &unk_24B767A80);
  v11 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0364A8, &qword_24B767A78);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v18 = sub_24B75B1F8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_24B75C2F8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = v31;
  v39 = v32;
  v40 = v33;
  type metadata accessor for EditorialDetailView();
  sub_24B738A9C();
  swift_getKeyPath();
  sub_24B75C218();

  v35 = sub_24B75C348();
  v36 = v24;
  sub_24B6E89B0();
  sub_24B75BFD8();
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  *&v17[*(v14 + 36)] = sub_24B75BED8();
  v25 = *MEMORY[0x277CDFA10];
  v26 = sub_24B75B538();
  (*(*(v26 - 8) + 104))(v13, v25, v26);
  sub_24B740548(&qword_27F0360B8, MEMORY[0x277CDFA28]);
  result = sub_24B75C2D8();
  if (result)
  {
    sub_24B73F32C();
    sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80);
    sub_24B75BD58();
    sub_24B6B9CD4(v13, &qword_27F036068, &unk_24B767A80);
    return sub_24B6B9CD4(v17, &qword_27F0364A8, &qword_24B767A78);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B73EE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a6;
  v29 = a7;
  v30 = a1;
  v31 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036188, &qword_24B7670B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = sub_24B75B1F8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_24B75C2F8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  sub_24B75C2E8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = v28;
  v37 = v29;
  type metadata accessor for EditorialDetailView();
  sub_24B738A9C();
  swift_getKeyPath();
  sub_24B75C218();

  v32 = sub_24B75C348();
  v33 = v22;
  sub_24B6E89B0();
  sub_24B75BFD8();
  v23 = sub_24B75BA28();
  KeyPath = swift_getKeyPath();
  v25 = &v15[*(v12 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  sub_24B75BA88();
  sub_24B735340();
  sub_24B75BCB8();
  return sub_24B6B9CD4(v15, &qword_27F036188, &qword_24B7670B0);
}

unint64_t sub_24B73F0FC()
{
  result = qword_27F036470;
  if (!qword_27F036470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036438, &qword_24B767950);
    sub_24B6C743C(&qword_27F036478, &qword_27F036468, &qword_24B767A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036470);
  }

  return result;
}

unint64_t sub_24B73F1AC()
{
  result = qword_27F036480;
  if (!qword_27F036480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036440, &qword_24B767958);
    sub_24B73F230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036480);
  }

  return result;
}

unint64_t sub_24B73F230()
{
  result = qword_27F036488;
  if (!qword_27F036488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036460, &unk_24B767A50);
    sub_24B6C743C(&qword_27F036490, &qword_27F036498, &qword_24B767A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036488);
  }

  return result;
}

unint64_t sub_24B73F32C()
{
  result = qword_27F0364B0;
  if (!qword_27F0364B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0364A8, &qword_24B767A78);
    sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10);
    sub_24B6C743C(&qword_27F034920, &qword_27F034928, &qword_24B767A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0364B0);
  }

  return result;
}

uint64_t sub_24B73F410()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24B73DC44();
}

uint64_t sub_24B73F418@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for EditorialDetailContent() - 8);
  v10 = *(v9 + 64);
  v11 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v12 = *(type metadata accessor for EditorialDetailView() - 8);
  v13 = v1 + ((v11 + v10 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_24B73DC98(v1 + v11, v13, v3, v4, v5, v6, v7, v8, a1);
}

size_t sub_24B73F548(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036510, &qword_24B767B68);
  v4 = *(type metadata accessor for EditorialExternalLink() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24B73F644@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B75B698();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B73F678(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24B75B6A8();
}

uint64_t sub_24B73F6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

void sub_24B73F7C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for EditorialExternalLink();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v31 = &v28 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_24B73FAF8(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for EditorialExternalLink);
      v24 = v23;
      v25 = v31;
      sub_24B73FE00(v24, v31, type metadata accessor for EditorialExternalLink);
      sub_24B73FE00(v25, a2, type metadata accessor for EditorialExternalLink);
      if (v19 == v30)
      {
        a1 = v29;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_24B73FA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for EditorialDetailView() - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_24B73E0A4(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t sub_24B73FAF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_12Tm(uint64_t (*a1)(void))
{
  v3 = *(v1 + 24);
  v23 = *(v1 + 16);
  v22 = *(v1 + 32);
  v24 = *(v1 + 48);
  v4 = (type metadata accessor for EditorialDetailView() - 8);
  v5 = (*(*v4 + 80) + 64) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = (a1(0) - 8);
  v8 = (v5 + v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  v9 = *(*v7 + 64);
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  sub_24B6C7004();
  v14 = v4[19];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
  swift_getFunctionTypeMetadata1();
  v15 = sub_24B75B288();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);
  v16 = v4[20];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v17 - 8) + 8))(v10 + v16, v17);
  (*(*(v3 - 8) + 8))(v10 + v4[21], v3);
  (*(*(v22 - 8) + 8))(v10 + v4[22]);
  v18 = *(v1 + v8 + 8);

  v19 = v7[7];
  v20 = sub_24B75B108();
  (*(*(v20 - 8) + 8))(v1 + v8 + v19, v20);
  return swift_deallocObject();
}

uint64_t sub_24B73FE00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B73FE94(uint64_t (*a1)(void), uint64_t (*a2)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = *(v2 + 7);
  v10 = *(type metadata accessor for EditorialDetailView() - 8);
  v11 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(a1(0) - 8);
  v14 = &v2[(v11 + v12 + *(v13 + 80)) & ~*(v13 + 80)];

  return a2(&v2[v11], v14, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_24B73FFD0()
{
  result = qword_27F0364F8;
  if (!qword_27F0364F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0364F0, &qword_24B767AF8);
    sub_24B740088();
    sub_24B6C743C(&qword_27F0348F8, &qword_27F0348D8, &qword_24B75FC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0364F8);
  }

  return result;
}

unint64_t sub_24B740088()
{
  result = qword_27F036500;
  if (!qword_27F036500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036508, &qword_24B767B00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035898, &qword_24B764A10);
    sub_24B6C743C(&qword_27F0358A0, &qword_27F035898, &qword_24B764A10);
    sub_24B735424();
    swift_getOpaqueTypeConformance2();
    sub_24B6C743C(&qword_27F034BA8, &qword_27F034BB0, &qword_24B760370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036500);
  }

  return result;
}

unint64_t sub_24B7401C4()
{
  result = qword_27F036518;
  if (!qword_27F036518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036430, &qword_24B767948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036520, &qword_24B767BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036068, &unk_24B767A80);
    sub_24B740318();
    sub_24B6C743C(&qword_27F036098, &qword_27F036068, &unk_24B767A80);
    swift_getOpaqueTypeConformance2();
    sub_24B6C743C(&qword_27F036568, &qword_27F036570, &qword_24B767BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036518);
  }

  return result;
}

unint64_t sub_24B740318()
{
  result = qword_27F036528;
  if (!qword_27F036528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036520, &qword_24B767BA8);
    sub_24B7403D0();
    sub_24B6C743C(&qword_27F034920, &qword_27F034928, &qword_24B767A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036528);
  }

  return result;
}

unint64_t sub_24B7403D0()
{
  result = qword_27F036530;
  if (!qword_27F036530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036538, &qword_24B767BB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F036540, &qword_24B767BB8);
    sub_24B75B948();
    sub_24B6C743C(&qword_27F036548, &qword_27F036540, &qword_24B767BB8);
    sub_24B740548(&qword_27F036550, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_24B6C743C(&qword_27F036558, &qword_27F036560, &qword_24B767BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036530);
  }

  return result;
}

uint64_t sub_24B740548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 24);
  v14 = *(v0 + 16);
  v13 = *(v0 + 32);
  v15 = *(v0 + 48);
  v2 = (type metadata accessor for EditorialDetailView() - 8);
  v3 = *(*v2 + 64);
  v4 = (v0 + ((*(*v2 + 80) + 64) & ~*(*v2 + 80)));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  sub_24B6C7004();
  v8 = v2[19];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034ED0, &qword_24B761780);
  swift_getFunctionTypeMetadata1();
  v9 = sub_24B75B288();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  v10 = v2[20];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C8, &qword_24B75F6D0);
  (*(*(v11 - 8) + 8))(v4 + v10, v11);
  (*(*(v1 - 8) + 8))(v4 + v2[21], v1);
  (*(*(v13 - 8) + 8))(v4 + v2[22]);
  return swift_deallocObject();
}

uint64_t sub_24B740788()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = *(type metadata accessor for EditorialDetailView() - 8);
  return sub_24B73E7B0(v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80)), v1, v2, v3, v4, v5, v6);
}

uint64_t sub_24B740874(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 ProgramDetailState.layout.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 33) = v3;
  return result;
}

uint64_t ProgramDetailState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProgramDetailState() + 24);

  return sub_24B7409B8(a1, v3);
}

uint64_t sub_24B7409B8(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for ProgramDetailLoadState();
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t ProgramDetailState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProgramDetailState() + 28);
  v4 = sub_24B75B1F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProgramDetailState.programIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ProgramDetailState() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ProgramDetailState.showingRemoveFromLibraryAlert.setter(char a1)
{
  result = type metadata accessor for ProgramDetailState();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ProgramDetailState.showingShareSheet.setter(char a1)
{
  result = type metadata accessor for ProgramDetailState();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t ProgramDetailState.init(layout:libraryState:loadState:locale:programIdentifier:showingRemoveFromLibraryAlert:showingShareSheet:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v16 = *(a1 + 32);
  v17 = *(a1 + 33);
  v18 = *a2;
  v19 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v19;
  *(a9 + 32) = v16;
  *(a9 + 33) = v17;
  *(a9 + 34) = v18;
  v20 = type metadata accessor for ProgramDetailState();
  sub_24B740D40(a3, a9 + v20[6]);
  v21 = v20[7];
  v22 = sub_24B75B1F8();
  result = (*(*(v22 - 8) + 32))(a9 + v21, a4, v22);
  v24 = (a9 + v20[8]);
  *v24 = a5;
  v24[1] = a6;
  *(a9 + v20[9]) = a7;
  *(a9 + v20[10]) = a8;
  return result;
}

uint64_t sub_24B740D40(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for ProgramDetailLoadState();
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t sub_24B740DA4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x537972617262696CLL;
    if (v1 != 1)
    {
      v5 = 0x7461745364616F6CLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x74756F79616CLL;
    }
  }

  else
  {
    v2 = 0xD00000000000001DLL;
    if (v1 != 5)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0x656C61636F6CLL;
    if (v1 != 3)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24B740E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B741E84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B740EC8(uint64_t a1)
{
  v2 = sub_24B741260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B740F04(uint64_t a1)
{
  v2 = sub_24B741260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProgramDetailState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036580, &qword_24B767C10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B741260();
  sub_24B75C738();
  v11 = *(v3 + 32);
  v12 = *(v3 + 33);
  v13 = v3[1];
  v25 = *v3;
  v26 = v13;
  v27 = v11;
  v28 = v12;
  v24 = 0;
  sub_24B7412B4();
  sub_24B75C6A8();
  if (!v2)
  {
    LOBYTE(v25) = *(v3 + 34);
    v24 = 1;
    sub_24B709E80();
    sub_24B75C6A8();
    v14 = type metadata accessor for ProgramDetailState();
    v15 = v14[6];
    LOBYTE(v25) = 2;
    type metadata accessor for ProgramDetailLoadState();
    sub_24B7419A0(&qword_27F036598, type metadata accessor for ProgramDetailLoadState);
    sub_24B75C6A8();
    v16 = v14[7];
    LOBYTE(v25) = 3;
    sub_24B75B1F8();
    sub_24B7419A0(&qword_27F033EC8, MEMORY[0x277CC9788]);
    sub_24B75C6A8();
    v17 = (v3 + v14[8]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v25) = 4;
    sub_24B75C678();
    v20 = *(v3 + v14[9]);
    LOBYTE(v25) = 5;
    sub_24B75C688();
    v21 = *(v3 + v14[10]);
    LOBYTE(v25) = 6;
    sub_24B75C688();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B741260()
{
  result = qword_27F036588;
  if (!qword_27F036588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036588);
  }

  return result;
}

unint64_t sub_24B7412B4()
{
  result = qword_27F036590;
  if (!qword_27F036590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036590);
  }

  return result;
}

uint64_t ProgramDetailState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_24B75B1F8();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for ProgramDetailLoadState();
  v7 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0365A0, &qword_24B767C18);
  v40 = *(v43 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v43);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ProgramDetailState();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24B741260();
  v19 = v44;
  sub_24B75C728();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v20 = v9;
  v37 = v13;
  v44 = v16;
  v22 = v40;
  v21 = v41;
  v23 = v42;
  v50 = 0;
  sub_24B74194C();
  sub_24B75C618();
  v24 = v48;
  v25 = v49;
  v26 = v47;
  v27 = v44;
  *v44 = v46;
  *(v27 + 16) = v26;
  *(v27 + 32) = v24;
  *(v27 + 33) = v25;
  v50 = 1;
  sub_24B70C424();
  sub_24B75C618();
  *(v27 + 34) = v46;
  LOBYTE(v46) = 2;
  sub_24B7419A0(&qword_27F0365B0, type metadata accessor for ProgramDetailLoadState);
  sub_24B75C618();
  sub_24B740D40(v20, v27 + v37[6]);
  LOBYTE(v46) = 3;
  sub_24B7419A0(&qword_27F033EF8, MEMORY[0x277CC9788]);
  v28 = v39;
  v29 = v23;
  sub_24B75C618();
  v30 = v37;
  (*(v21 + 32))(v27 + v37[7], v28, v29);
  LOBYTE(v46) = 4;
  v31 = sub_24B75C5E8();
  v32 = (v27 + v30[8]);
  *v32 = v31;
  v32[1] = v33;
  LOBYTE(v46) = 5;
  *(v27 + v30[9]) = sub_24B75C5F8() & 1;
  LOBYTE(v46) = 6;
  LOBYTE(v30) = sub_24B75C5F8();
  (*(v22 + 8))(v12, v43);
  v34 = v38;
  *(v27 + v37[10]) = v30 & 1;
  sub_24B7419E8(v27, v34, type metadata accessor for ProgramDetailState);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_24B741A50(v27, type metadata accessor for ProgramDetailState);
}

unint64_t sub_24B74194C()
{
  result = qword_27F0365A8;
  if (!qword_27F0365A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0365A8);
  }

  return result;
}

uint64_t sub_24B7419A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B7419E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B741A50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s20FitnessProductDetail07ProgramC5StateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v6;
  v21 = v4;
  v22 = v5;
  v7 = *(a2 + 32);
  v8 = *(a2 + 33);
  v9 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v9;
  v18 = v7;
  v19 = v8;
  if (_s20FitnessProductDetail07ProgramC6LayoutV2eeoiySbAC_ACtFZ_0(v20, v17) & 1) != 0 && *(a1 + 34) == *(a2 + 34) && (v10 = type metadata accessor for ProgramDetailState(), (_s20FitnessProductDetail07ProgramC9LoadStateO2eeoiySbAC_ACtFZ_0(a1 + v10[6], a2 + v10[6])) && (MEMORY[0x24C2474B0](a1 + v10[7], a2 + v10[7]) & 1) != 0 && ((v11 = v10[8], v12 = *(a1 + v11), v13 = *(a1 + v11 + 8), v14 = (a2 + v11), v12 == *v14) && v13 == v14[1] || (sub_24B75C6B8()) && *(a1 + v10[9]) == *(a2 + v10[9]))
  {
    v15 = *(a1 + v10[10]) ^ *(a2 + v10[10]) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t getEnumTagSinglePayload for ProgramDetailState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProgramDetailState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B741D80()
{
  result = qword_27F0365B8;
  if (!qword_27F0365B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0365B8);
  }

  return result;
}

unint64_t sub_24B741DD8()
{
  result = qword_27F0365C0;
  if (!qword_27F0365C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0365C0);
  }

  return result;
}

unint64_t sub_24B741E30()
{
  result = qword_27F0365C8;
  if (!qword_27F0365C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0365C8);
  }

  return result;
}

uint64_t sub_24B741E84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x537972617262696CLL && a2 == 0xEC00000065746174 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B76C1F0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024B76C210 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B76C230 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

BOOL static EditorialDetailLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x24C2475B0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EditorialDetailLayout();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t EditorialDetailLayout.init(contentMargins:sizeClass:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_24B75B308();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for EditorialDetailLayout();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_24B7421A8()
{
  if (*v0)
  {
    result = 0x73616C43657A6973;
  }

  else
  {
    result = 0x4D746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_24B7421F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B7422E0(uint64_t a1)
{
  v2 = sub_24B7428B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74231C(uint64_t a1)
{
  v2 = sub_24B7428B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialDetailLayout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0365D0, &qword_24B767E00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7428B8();
  sub_24B75C738();
  v12[15] = 0;
  sub_24B75B308();
  sub_24B742E10(&qword_27F0365E0, MEMORY[0x277D096F0]);
  sub_24B75C6A8();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for EditorialDetailLayout() + 20));
    v12[13] = 1;
    sub_24B74290C();
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t EditorialDetailLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_24B75B308();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0365F0, &qword_24B767E08);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for EditorialDetailLayout();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7428B8();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  v34 = 0;
  sub_24B742E10(&qword_27F0365F8, MEMORY[0x277D096F0]);
  v19 = v31;
  v20 = v29;
  sub_24B75C618();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v32 = 1;
  sub_24B742960();
  sub_24B75C618();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v33;
  sub_24B7429B4(v22, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B742A18(v22);
}

unint64_t sub_24B7428B8()
{
  result = qword_27F0365D8;
  if (!qword_27F0365D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0365D8);
  }

  return result;
}

unint64_t sub_24B74290C()
{
  result = qword_27F0365E8;
  if (!qword_27F0365E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0365E8);
  }

  return result;
}

unint64_t sub_24B742960()
{
  result = qword_27F036600;
  if (!qword_27F036600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036600);
  }

  return result;
}

uint64_t sub_24B7429B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialDetailLayout();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B742A18(uint64_t a1)
{
  v2 = type metadata accessor for EditorialDetailLayout();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EditorialDetailLayout.hash(into:)()
{
  sub_24B75B308();
  sub_24B742E10(&qword_27F035110, MEMORY[0x277D096F0]);
  sub_24B75C2C8();
  v1 = type metadata accessor for EditorialDetailLayout();
  return MEMORY[0x24C2489B0](*(v0 + *(v1 + 20)));
}

uint64_t EditorialDetailLayout.hashValue.getter()
{
  sub_24B75C6D8();
  sub_24B75B308();
  sub_24B742E10(&qword_27F035110, MEMORY[0x277D096F0]);
  sub_24B75C2C8();
  v1 = type metadata accessor for EditorialDetailLayout();
  MEMORY[0x24C2489B0](*(v0 + *(v1 + 20)));
  return sub_24B75C718();
}

uint64_t sub_24B742BA4(uint64_t a1)
{
  sub_24B75C6D8();
  sub_24B75B308();
  sub_24B742E10(&qword_27F035110, MEMORY[0x277D096F0]);
  sub_24B75C2C8();
  MEMORY[0x24C2489B0](*(v1 + *(a1 + 20)));
  return sub_24B75C718();
}

uint64_t sub_24B742C48(uint64_t a1, uint64_t a2)
{
  sub_24B75B308();
  sub_24B742E10(&qword_27F035110, MEMORY[0x277D096F0]);
  sub_24B75C2C8();
  return MEMORY[0x24C2489B0](*(v2 + *(a2 + 20)));
}

uint64_t sub_24B742CD4(uint64_t a1, uint64_t a2)
{
  sub_24B75C6D8();
  sub_24B75B308();
  sub_24B742E10(&qword_27F035110, MEMORY[0x277D096F0]);
  sub_24B75C2C8();
  MEMORY[0x24C2489B0](*(v2 + *(a2 + 20)));
  return sub_24B75C718();
}

uint64_t sub_24B742E10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B742E94()
{
  result = qword_27F036610;
  if (!qword_27F036610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036610);
  }

  return result;
}

unint64_t sub_24B742EEC()
{
  result = qword_27F036618;
  if (!qword_27F036618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036618);
  }

  return result;
}

unint64_t sub_24B742F44()
{
  result = qword_27F036620;
  if (!qword_27F036620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036620);
  }

  return result;
}

uint64_t sub_24B742F98(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x4164694477656976;
    v7 = 0xD000000000000013;
    if (a1 == 3)
    {
      v8 = 0xD000000000000013;
    }

    else
    {
      v8 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD00000000000001DLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7070615465726F6DLL;
    v2 = 0xD000000000000017;
    if (a1 != 9)
    {
      v2 = 0x707061546B6E696CLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    v4 = 0xD000000000000023;
    if (a1 != 6)
    {
      v4 = 0x6C69466863746177;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B74312C(uint64_t a1)
{
  v2 = sub_24B7448A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B743168(uint64_t a1)
{
  v2 = sub_24B7448A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7431AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B746BB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B7431E0(uint64_t a1)
{
  v2 = sub_24B7445F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74321C(uint64_t a1)
{
  v2 = sub_24B7445F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B743258(uint64_t a1)
{
  v2 = sub_24B744A4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B743294(uint64_t a1)
{
  v2 = sub_24B744A4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7432D0(uint64_t a1)
{
  v2 = sub_24B7449A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74330C(uint64_t a1)
{
  v2 = sub_24B7449A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B743358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B75C6B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B7433E0(uint64_t a1)
{
  v2 = sub_24B7446A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74341C(uint64_t a1)
{
  v2 = sub_24B7446A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B743458(uint64_t a1)
{
  v2 = sub_24B7448F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B743494(uint64_t a1)
{
  v2 = sub_24B7448F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7434D0(uint64_t a1)
{
  v2 = sub_24B744750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74350C(uint64_t a1)
{
  v2 = sub_24B744750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B743548(uint64_t a1)
{
  v2 = sub_24B7446FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B743584(uint64_t a1)
{
  v2 = sub_24B7446FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7435C0(uint64_t a1)
{
  v2 = sub_24B7447F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7435FC(uint64_t a1)
{
  v2 = sub_24B7447F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B743638(uint64_t a1)
{
  v2 = sub_24B74484C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B743674(uint64_t a1)
{
  v2 = sub_24B74484C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7436B0(uint64_t a1)
{
  v2 = sub_24B7449F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7436EC(uint64_t a1)
{
  v2 = sub_24B7449F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B743728(uint64_t a1)
{
  v2 = sub_24B7447A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B743764(uint64_t a1)
{
  v2 = sub_24B7447A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProgramDetailAction.encode(to:)(void *a1)
{
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036628, &qword_24B768000);
  v77 = *(v104 - 8);
  v2 = *(v77 + 64);
  MEMORY[0x28223BE20](v104);
  v103 = &v77 - v3;
  v4 = sub_24B75B108();
  v110 = *(v4 - 8);
  v111 = v4;
  v5 = *(v110 + 64);
  MEMORY[0x28223BE20](v4);
  v109 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036630, &qword_24B768008);
  v99 = *(v108 - 8);
  v7 = *(v99 + 64);
  MEMORY[0x28223BE20](v108);
  v107 = &v77 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036638, &qword_24B768010);
  v101 = *(v9 - 8);
  v102 = v9;
  v10 = *(v101 + 64);
  MEMORY[0x28223BE20](v9);
  v100 = &v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036640, &qword_24B768018);
  v97 = *(v12 - 8);
  v98 = v12;
  v13 = *(v97 + 64);
  MEMORY[0x28223BE20](v12);
  v96 = &v77 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036648, &qword_24B768020);
  v94 = *(v95 - 8);
  v15 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v77 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036650, &qword_24B768028);
  v91 = *(v92 - 8);
  v17 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v77 - v18;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036658, &qword_24B768030);
  v86 = *(v87 - 8);
  v19 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v77 - v20;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036660, &qword_24B768038);
  v88 = *(v89 - 8);
  v21 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v106 = &v77 - v22;
  v84 = type metadata accessor for WorkoutProgram();
  v23 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v105 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036668, &qword_24B768040);
  v82 = *(v83 - 8);
  v25 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v27 = &v77 - v26;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036670, &qword_24B768048);
  v80 = *(v81 - 8);
  v28 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v77 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036678, &qword_24B768050);
  v78 = *(v30 - 8);
  v31 = *(v78 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v77 - v32;
  v34 = type metadata accessor for ProgramDetailAction();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036680, &qword_24B768058);
  v39 = *(v38 - 8);
  v114 = v38;
  v115 = v39;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v77 - v41;
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7445F0();
  v113 = v42;
  sub_24B75C738();
  sub_24B744644(v112, v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload != 8)
      {
        v46 = v114;
        if (EnumCaseMultiPayload == 9)
        {
          v125 = 7;
          sub_24B7447A4();
          v62 = v96;
          v47 = v113;
          sub_24B75C638();
          v64 = v97;
          v63 = v98;
        }

        else
        {
          v126 = 8;
          sub_24B744750();
          v62 = v100;
          v47 = v113;
          sub_24B75C638();
          v64 = v101;
          v63 = v102;
        }

        v48 = *(v64 + 8);
        v49 = v62;
        goto LABEL_26;
      }

      v124 = 6;
      sub_24B7447F8();
      v73 = v93;
      v47 = v113;
      v46 = v114;
      sub_24B75C638();
      v48 = *(v94 + 8);
      v49 = v73;
      v50 = &v130;
    }

    else if (EnumCaseMultiPayload == 5)
    {
      v117 = 1;
      sub_24B7449F8();
      v72 = v79;
      v47 = v113;
      v46 = v114;
      sub_24B75C638();
      v48 = *(v80 + 8);
      v49 = v72;
      v50 = &v113;
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v122 = 4;
      sub_24B7448A0();
      v45 = v85;
      v47 = v113;
      v46 = v114;
      sub_24B75C638();
      v48 = *(v86 + 8);
      v49 = v45;
      v50 = &v120;
    }

    else
    {
      v123 = 5;
      sub_24B74484C();
      v76 = v90;
      v47 = v113;
      v46 = v114;
      sub_24B75C638();
      v48 = *(v91 + 8);
      v49 = v76;
      v50 = &v129;
    }

    v63 = *(v50 - 32);
LABEL_26:
    v48(v49, v63);
    return (*(v115 + 8))(v47, v46);
  }

  v112 = v30;
  v51 = v106;
  v52 = v107;
  v53 = v108;
  v54 = v109;
  v55 = v111;
  if (EnumCaseMultiPayload <= 1)
  {
    v65 = v114;
    if (EnumCaseMultiPayload)
    {
      v74 = v105;
      sub_24B745E1C(v37, v105, type metadata accessor for WorkoutProgram);
      v121 = 3;
      sub_24B7448F4();
      v67 = v113;
      sub_24B75C638();
      sub_24B6A72EC(&qword_27F036330, type metadata accessor for WorkoutProgram);
      v75 = v89;
      sub_24B75C6A8();
      (*(v88 + 8))(v51, v75);
      sub_24B744948(v74);
    }

    else
    {
      v66 = *v37;
      v119 = 2;
      sub_24B7449A4();
      v67 = v113;
      sub_24B75C638();
      v118 = v66;
      sub_24B709E80();
      v68 = v83;
      sub_24B75C6A8();
      (*(v82 + 8))(v27, v68);
    }

    return (*(v115 + 8))(v67, v65);
  }

  else
  {
    v56 = v114;
    if (EnumCaseMultiPayload == 2)
    {
      v69 = *v37;
      v70 = *(v37 + 1);
      v127 = 9;
      sub_24B7446FC();
      v71 = v113;
      sub_24B75C638();
      sub_24B75C678();

      (*(v99 + 8))(v52, v53);
      return (*(v115 + 8))(v71, v56);
    }

    else
    {
      v57 = v113;
      if (EnumCaseMultiPayload == 3)
      {
        v58 = v110;
        (*(v110 + 32))(v109, v37, v111);
        v128 = 10;
        sub_24B7446A8();
        v59 = v103;
        sub_24B75C638();
        sub_24B6A72EC(&qword_27F0341E0, MEMORY[0x277CC9260]);
        v60 = v104;
        sub_24B75C6A8();
        (*(v77 + 8))(v59, v60);
        (*(v58 + 8))(v54, v55);
      }

      else
      {
        v116 = 0;
        sub_24B744A4C();
        sub_24B75C638();
        (*(v78 + 8))(v33, v112);
      }

      return (*(v115 + 8))(v57, v56);
    }
  }
}

uint64_t type metadata accessor for ProgramDetailAction()
{
  result = qword_27F036748;
  if (!qword_27F036748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B7445F0()
{
  result = qword_27F036688;
  if (!qword_27F036688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036688);
  }

  return result;
}

uint64_t sub_24B744644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProgramDetailAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B7446A8()
{
  result = qword_27F036690;
  if (!qword_27F036690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036690);
  }

  return result;
}

unint64_t sub_24B7446FC()
{
  result = qword_27F036698;
  if (!qword_27F036698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036698);
  }

  return result;
}

unint64_t sub_24B744750()
{
  result = qword_27F0366A0;
  if (!qword_27F0366A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366A0);
  }

  return result;
}

unint64_t sub_24B7447A4()
{
  result = qword_27F0366A8;
  if (!qword_27F0366A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366A8);
  }

  return result;
}

unint64_t sub_24B7447F8()
{
  result = qword_27F0366B0;
  if (!qword_27F0366B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366B0);
  }

  return result;
}

unint64_t sub_24B74484C()
{
  result = qword_27F0366B8;
  if (!qword_27F0366B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366B8);
  }

  return result;
}

unint64_t sub_24B7448A0()
{
  result = qword_27F0366C0;
  if (!qword_27F0366C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366C0);
  }

  return result;
}

unint64_t sub_24B7448F4()
{
  result = qword_27F0366C8;
  if (!qword_27F0366C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366C8);
  }

  return result;
}

uint64_t sub_24B744948(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutProgram();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B7449A4()
{
  result = qword_27F0366D0;
  if (!qword_27F0366D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366D0);
  }

  return result;
}

unint64_t sub_24B7449F8()
{
  result = qword_27F0366D8;
  if (!qword_27F0366D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366D8);
  }

  return result;
}

unint64_t sub_24B744A4C()
{
  result = qword_27F0366E0;
  if (!qword_27F0366E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0366E0);
  }

  return result;
}

uint64_t ProgramDetailAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0366E8, &qword_24B768060);
  v114 = *(v113 - 8);
  v3 = *(v114 + 64);
  MEMORY[0x28223BE20](v113);
  v121 = &v89 - v4;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0366F0, &qword_24B768068);
  v111 = *(v112 - 8);
  v5 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v122 = &v89 - v6;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0366F8, &qword_24B768070);
  v109 = *(v110 - 8);
  v7 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v128 = &v89 - v8;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036700, &qword_24B768078);
  v107 = *(v108 - 8);
  v9 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v120 = &v89 - v10;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036708, &qword_24B768080);
  v105 = *(v106 - 8);
  v11 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v119 = &v89 - v12;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036710, &qword_24B768088);
  v103 = *(v104 - 8);
  v13 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v118 = &v89 - v14;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036718, &qword_24B768090);
  v99 = *(v101 - 8);
  v15 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  v117 = &v89 - v16;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036720, &qword_24B768098);
  v102 = *(v100 - 8);
  v17 = *(v102 + 64);
  MEMORY[0x28223BE20](v100);
  v116 = &v89 - v18;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036728, &qword_24B7680A0);
  v97 = *(v98 - 8);
  v19 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v127 = &v89 - v20;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036730, &qword_24B7680A8);
  v96 = *(v95 - 8);
  v21 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  v126 = &v89 - v22;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036738, &qword_24B7680B0);
  v93 = *(v94 - 8);
  v23 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v115 = &v89 - v24;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036740, &unk_24B7680B8);
  v129 = *(v125 - 8);
  v25 = *(v129 + 64);
  MEMORY[0x28223BE20](v125);
  v27 = &v89 - v26;
  v124 = type metadata accessor for ProgramDetailAction();
  v28 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v30 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v89 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v89 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v89 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v89 - v41;
  v44 = a1[3];
  v43 = a1[4];
  v131 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_24B7445F0();
  v45 = v130;
  sub_24B75C728();
  if (v45)
  {
    return __swift_destroy_boxed_opaque_existential_1(v131);
  }

  v89 = v39;
  v90 = v33;
  v91 = v36;
  v92 = v30;
  v47 = v126;
  v46 = v127;
  v48 = v128;
  v130 = v42;
  v49 = v125;
  v50 = sub_24B75C628();
  v51 = (2 * *(v50 + 16)) | 1;
  v132 = v50;
  v133 = v50 + 32;
  v134 = 0;
  v135 = v51;
  v52 = sub_24B6B66F4();
  v53 = v27;
  if (v52 == 11 || v134 != v135 >> 1)
  {
    v59 = sub_24B75C568();
    swift_allocError();
    v61 = v60;
    v62 = v49;
    v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
    *v61 = v124;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D84160], v59);
    swift_willThrow();
    (*(v129 + 8))(v53, v62);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v131);
  }

  if (v52 <= 4u)
  {
    if (v52 <= 1u)
    {
      v73 = v129;
      if (v52)
      {
        v136 = 1;
        sub_24B7449F8();
        sub_24B75C598();
        v55 = v123;
        (*(v96 + 8))(v47, v95);
      }

      else
      {
        v136 = 0;
        sub_24B744A4C();
        v74 = v115;
        sub_24B75C598();
        v55 = v123;
        (*(v93 + 8))(v74, v94);
      }

      (*(v73 + 8))(v27, v49);
      swift_unknownObjectRelease();
      v58 = v130;
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    }

    v65 = v129;
    if (v52 != 2)
    {
      if (v52 == 3)
      {
        v136 = 3;
        sub_24B7448F4();
        v66 = v116;
        sub_24B75C598();
        type metadata accessor for WorkoutProgram();
        sub_24B6A72EC(&qword_27F036368, type metadata accessor for WorkoutProgram);
        v67 = v91;
        v68 = v100;
        sub_24B75C618();
        (*(v102 + 8))(v66, v68);
        (*(v65 + 8))(v27, v49);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v58 = v130;
        sub_24B745E1C(v67, v130, type metadata accessor for ProgramDetailAction);
      }

      else
      {
        v136 = 4;
        sub_24B7448A0();
        v76 = v117;
        sub_24B75C598();
        (*(v99 + 8))(v76, v101);
        (*(v65 + 8))(v53, v49);
        swift_unknownObjectRelease();
        v58 = v130;
        swift_storeEnumTagMultiPayload();
      }

      v83 = v131;
      v55 = v123;
      goto LABEL_33;
    }

    v136 = 2;
    sub_24B7449A4();
    sub_24B75C598();
    v55 = v123;
    sub_24B70C424();
    v79 = v98;
    sub_24B75C618();
    (*(v97 + 8))(v46, v79);
    (*(v65 + 8))(v27, v49);
    swift_unknownObjectRelease();
    v82 = v89;
    *v89 = v136;
    goto LABEL_30;
  }

  v54 = v27;
  v55 = v123;
  if (v52 <= 7u)
  {
    v56 = v129;
    if (v52 == 5)
    {
      v136 = 5;
      sub_24B74484C();
      v75 = v118;
      sub_24B75C598();
      (*(v103 + 8))(v75, v104);
      (*(v56 + 8))(v54, v49);
      swift_unknownObjectRelease();
      v58 = v130;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (v52 == 6)
      {
        v136 = 6;
        sub_24B7447F8();
        v57 = v119;
        sub_24B75C598();
        (*(v105 + 8))(v57, v106);
      }

      else
      {
        v136 = 7;
        sub_24B7447A4();
        v77 = v120;
        sub_24B75C598();
        (*(v107 + 8))(v77, v108);
      }

      (*(v56 + 8))(v54, v49);
      swift_unknownObjectRelease();
      v58 = v130;
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_32;
  }

  if (v52 != 8)
  {
    if (v52 == 9)
    {
      v136 = 9;
      sub_24B7446FC();
      v69 = v122;
      sub_24B75C598();
      v70 = v112;
      v71 = sub_24B75C5E8();
      v72 = v129;
      v84 = v71;
      v86 = v85;
      (*(v111 + 8))(v69, v70);
      (*(v72 + 8))(v54, v49);
      swift_unknownObjectRelease();
      v87 = v90;
      *v90 = v84;
      v87[1] = v86;
      swift_storeEnumTagMultiPayload();
      v88 = v87;
LABEL_31:
      v58 = v130;
      sub_24B745E1C(v88, v130, type metadata accessor for ProgramDetailAction);
      goto LABEL_32;
    }

    v136 = 10;
    sub_24B7446A8();
    v78 = v121;
    sub_24B75C598();
    sub_24B75B108();
    sub_24B6A72EC(&qword_27F0341F8, MEMORY[0x277CC9260]);
    v80 = v92;
    v81 = v113;
    sub_24B75C618();
    (*(v114 + 8))(v78, v81);
    v82 = v80;
    (*(v129 + 8))(v27, v49);
    swift_unknownObjectRelease();
LABEL_30:
    swift_storeEnumTagMultiPayload();
    v88 = v82;
    goto LABEL_31;
  }

  v136 = 8;
  sub_24B744750();
  sub_24B75C598();
  (*(v109 + 8))(v48, v110);
  (*(v129 + 8))(v27, v49);
  swift_unknownObjectRelease();
  v58 = v130;
  swift_storeEnumTagMultiPayload();
LABEL_32:
  v83 = v131;
LABEL_33:
  sub_24B745E1C(v58, v55, type metadata accessor for ProgramDetailAction);
  return __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t sub_24B745E1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24B745EB4()
{
  type metadata accessor for WorkoutProgram();
  if (v0 <= 0x3F)
  {
    sub_24B745F48();
    if (v1 <= 0x3F)
    {
      sub_24B745F78();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_24B745F48()
{
  result = qword_27F036758;
  if (!qword_27F036758)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F036758);
  }

  return result;
}

void sub_24B745F78()
{
  if (!qword_27F036760)
  {
    v0 = sub_24B75B108();
    if (!v1)
    {
      atomic_store(v0, &qword_27F036760);
    }
  }
}

uint64_t getEnumTagSinglePayload for ProgramDetailAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProgramDetailAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B7461C4()
{
  result = qword_27F036768;
  if (!qword_27F036768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036768);
  }

  return result;
}

unint64_t sub_24B74621C()
{
  result = qword_27F036770;
  if (!qword_27F036770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036770);
  }

  return result;
}

unint64_t sub_24B746274()
{
  result = qword_27F036778;
  if (!qword_27F036778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036778);
  }

  return result;
}

unint64_t sub_24B7462CC()
{
  result = qword_27F036780;
  if (!qword_27F036780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036780);
  }

  return result;
}

unint64_t sub_24B746324()
{
  result = qword_27F036788;
  if (!qword_27F036788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036788);
  }

  return result;
}

unint64_t sub_24B74637C()
{
  result = qword_27F036790;
  if (!qword_27F036790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036790);
  }

  return result;
}

unint64_t sub_24B7463D4()
{
  result = qword_27F036798;
  if (!qword_27F036798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036798);
  }

  return result;
}

unint64_t sub_24B74642C()
{
  result = qword_27F0367A0;
  if (!qword_27F0367A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367A0);
  }

  return result;
}

unint64_t sub_24B746484()
{
  result = qword_27F0367A8;
  if (!qword_27F0367A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367A8);
  }

  return result;
}

unint64_t sub_24B7464DC()
{
  result = qword_27F0367B0;
  if (!qword_27F0367B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367B0);
  }

  return result;
}

unint64_t sub_24B746534()
{
  result = qword_27F0367B8;
  if (!qword_27F0367B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367B8);
  }

  return result;
}

unint64_t sub_24B74658C()
{
  result = qword_27F0367C0;
  if (!qword_27F0367C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367C0);
  }

  return result;
}

unint64_t sub_24B7465E4()
{
  result = qword_27F0367C8;
  if (!qword_27F0367C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367C8);
  }

  return result;
}

unint64_t sub_24B74663C()
{
  result = qword_27F0367D0;
  if (!qword_27F0367D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367D0);
  }

  return result;
}

unint64_t sub_24B746694()
{
  result = qword_27F0367D8;
  if (!qword_27F0367D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367D8);
  }

  return result;
}

unint64_t sub_24B7466EC()
{
  result = qword_27F0367E0;
  if (!qword_27F0367E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367E0);
  }

  return result;
}

unint64_t sub_24B746744()
{
  result = qword_27F0367E8;
  if (!qword_27F0367E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367E8);
  }

  return result;
}

unint64_t sub_24B74679C()
{
  result = qword_27F0367F0;
  if (!qword_27F0367F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367F0);
  }

  return result;
}

unint64_t sub_24B7467F4()
{
  result = qword_27F0367F8;
  if (!qword_27F0367F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0367F8);
  }

  return result;
}

unint64_t sub_24B74684C()
{
  result = qword_27F036800;
  if (!qword_27F036800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036800);
  }

  return result;
}

unint64_t sub_24B7468A4()
{
  result = qword_27F036808;
  if (!qword_27F036808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036808);
  }

  return result;
}

unint64_t sub_24B7468FC()
{
  result = qword_27F036810;
  if (!qword_27F036810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036810);
  }

  return result;
}

unint64_t sub_24B746954()
{
  result = qword_27F036818;
  if (!qword_27F036818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036818);
  }

  return result;
}

unint64_t sub_24B7469AC()
{
  result = qword_27F036820;
  if (!qword_27F036820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036820);
  }

  return result;
}

unint64_t sub_24B746A04()
{
  result = qword_27F036828;
  if (!qword_27F036828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036828);
  }

  return result;
}

unint64_t sub_24B746A5C()
{
  result = qword_27F036830;
  if (!qword_27F036830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036830);
  }

  return result;
}

unint64_t sub_24B746AB4()
{
  result = qword_27F036838;
  if (!qword_27F036838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036838);
  }

  return result;
}

unint64_t sub_24B746B0C()
{
  result = qword_27F036840;
  if (!qword_27F036840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036840);
  }

  return result;
}

unint64_t sub_24B746B64()
{
  result = qword_27F036848;
  if (!qword_27F036848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036848);
  }

  return result;
}

uint64_t sub_24B746BB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001DLL && 0x800000024B76C250 == a2;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B76C270 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B76C290 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B76C2B0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B76C2D0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024B76C2F0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C69466863746177 && a2 == 0xEF6465707061546DLL || (sub_24B75C6B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7070615465726F6DLL && a2 == 0xEA00000000006465 || (sub_24B75C6B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B76C320 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x707061546B6E696CLL && a2 == 0xEA00000000006465)
  {

    return 10;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_24B746F68(uint64_t a1)
{
  v2 = sub_24B748264();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B746FA4(uint64_t a1)
{
  v2 = sub_24B748264();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B746FE0(uint64_t a1)
{
  v2 = sub_24B748210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74701C(uint64_t a1)
{
  v2 = sub_24B748210();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B747058(uint64_t a1)
{
  v2 = sub_24B7481BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B747094(uint64_t a1)
{
  v2 = sub_24B7481BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7470D0(uint64_t a1)
{
  v2 = sub_24B748168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74710C(uint64_t a1)
{
  v2 = sub_24B748168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B747148(uint64_t a1)
{
  v2 = sub_24B748114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B747184(uint64_t a1)
{
  v2 = sub_24B748114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7471C0(uint64_t a1)
{
  v2 = sub_24B7480C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7471FC(uint64_t a1)
{
  v2 = sub_24B7480C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B747238(uint64_t a1)
{
  v2 = sub_24B7482B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B747274(uint64_t a1)
{
  v2 = sub_24B7482B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7472B0(uint64_t a1)
{
  v2 = sub_24B74830C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7472EC(uint64_t a1)
{
  v2 = sub_24B74830C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B747328(uint64_t a1)
{
  v2 = sub_24B748360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B747364(uint64_t a1)
{
  v2 = sub_24B748360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7473A0(uint64_t a1)
{
  v2 = sub_24B7484B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7473DC(uint64_t a1)
{
  v2 = sub_24B7484B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B747418(uint64_t a1)
{
  v2 = sub_24B7483B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B747454(uint64_t a1)
{
  v2 = sub_24B7483B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B747490(uint64_t a1)
{
  v2 = sub_24B748408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7474CC(uint64_t a1)
{
  v2 = sub_24B748408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B747508(uint64_t a1)
{
  v2 = sub_24B74845C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B747544(uint64_t a1)
{
  v2 = sub_24B74845C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailDynamicTypeSize.encode(to:)(void *a1, int a2)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036850, &qword_24B768C80);
  v85 = *(v3 - 8);
  v86 = v3;
  v4 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v84 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036858, &qword_24B768C88);
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  MEMORY[0x28223BE20](v6);
  v81 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036860, &qword_24B768C90);
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = *(v79 + 64);
  MEMORY[0x28223BE20](v9);
  v78 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036868, &qword_24B768C98);
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = *(v76 + 64);
  MEMORY[0x28223BE20](v12);
  v75 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036870, &qword_24B768CA0);
  v73 = *(v15 - 8);
  v74 = v15;
  v16 = *(v73 + 64);
  MEMORY[0x28223BE20](v15);
  v72 = &v55 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036878, &qword_24B768CA8);
  v70 = *(v71 - 8);
  v18 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v55 - v19;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036880, &qword_24B768CB0);
  v67 = *(v68 - 8);
  v20 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v55 - v21;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036888, &qword_24B768CB8);
  v64 = *(v65 - 8);
  v22 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = &v55 - v23;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036890, &qword_24B768CC0);
  v61 = *(v62 - 8);
  v24 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v60 = &v55 - v25;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036898, &qword_24B768CC8);
  v58 = *(v59 - 8);
  v26 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v55 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0368A0, &qword_24B768CD0);
  v56 = *(v28 - 8);
  v29 = *(v56 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v55 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0368A8, &qword_24B768CD8);
  v55 = *(v32 - 8);
  v33 = *(v55 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v55 - v34;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0368B0, &qword_24B768CE0);
  v36 = *(v89 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v89);
  v39 = &v55 - v38;
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7480C0();
  v88 = v39;
  sub_24B75C738();
  v41 = (v36 + 8);
  if (v87 > 5u)
  {
    if (v87 > 8u)
    {
      if (v87 == 9)
      {
        v99 = 9;
        sub_24B7481BC();
        v44 = v78;
        v43 = v88;
        v42 = v89;
        sub_24B75C638();
        v46 = v79;
        v45 = v80;
      }

      else if (v87 == 10)
      {
        v100 = 10;
        sub_24B748168();
        v44 = v81;
        v43 = v88;
        v42 = v89;
        sub_24B75C638();
        v46 = v82;
        v45 = v83;
      }

      else
      {
        v101 = 11;
        sub_24B748114();
        v44 = v84;
        v43 = v88;
        v42 = v89;
        sub_24B75C638();
        v46 = v85;
        v45 = v86;
      }
    }

    else
    {
      if (v87 == 6)
      {
        v96 = 6;
        sub_24B7482B8();
        v51 = v69;
        v43 = v88;
        v42 = v89;
        sub_24B75C638();
        (*(v70 + 8))(v51, v71);
        return (*v41)(v43, v42);
      }

      if (v87 == 7)
      {
        v97 = 7;
        sub_24B748264();
        v44 = v72;
        v43 = v88;
        v42 = v89;
        sub_24B75C638();
        v46 = v73;
        v45 = v74;
      }

      else
      {
        v98 = 8;
        sub_24B748210();
        v44 = v75;
        v43 = v88;
        v42 = v89;
        sub_24B75C638();
        v46 = v76;
        v45 = v77;
      }
    }

    (*(v46 + 8))(v44, v45);
    return (*v41)(v43, v42);
  }

  if (v87 > 2u)
  {
    if (v87 == 3)
    {
      v93 = 3;
      sub_24B7483B4();
      v52 = v60;
      v43 = v88;
      v42 = v89;
      sub_24B75C638();
      (*(v61 + 8))(v52, v62);
    }

    else if (v87 == 4)
    {
      v94 = 4;
      sub_24B748360();
      v47 = v63;
      v43 = v88;
      v42 = v89;
      sub_24B75C638();
      (*(v64 + 8))(v47, v65);
    }

    else
    {
      v95 = 5;
      sub_24B74830C();
      v54 = v66;
      v43 = v88;
      v42 = v89;
      sub_24B75C638();
      (*(v67 + 8))(v54, v68);
    }
  }

  else
  {
    if (!v87)
    {
      v90 = 0;
      sub_24B7484B0();
      v48 = v88;
      v49 = v89;
      sub_24B75C638();
      (*(v55 + 8))(v35, v32);
      return (*v41)(v48, v49);
    }

    if (v87 == 1)
    {
      v91 = 1;
      sub_24B74845C();
      v43 = v88;
      v42 = v89;
      sub_24B75C638();
      (*(v56 + 8))(v31, v28);
    }

    else
    {
      v92 = 2;
      sub_24B748408();
      v53 = v57;
      v43 = v88;
      v42 = v89;
      sub_24B75C638();
      (*(v58 + 8))(v53, v59);
    }
  }

  return (*v41)(v43, v42);
}

unint64_t sub_24B7480C0()
{
  result = qword_27F0368B8;
  if (!qword_27F0368B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368B8);
  }

  return result;
}

unint64_t sub_24B748114()
{
  result = qword_27F0368C0;
  if (!qword_27F0368C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368C0);
  }

  return result;
}

unint64_t sub_24B748168()
{
  result = qword_27F0368C8;
  if (!qword_27F0368C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368C8);
  }

  return result;
}

unint64_t sub_24B7481BC()
{
  result = qword_27F0368D0;
  if (!qword_27F0368D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368D0);
  }

  return result;
}

unint64_t sub_24B748210()
{
  result = qword_27F0368D8;
  if (!qword_27F0368D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368D8);
  }

  return result;
}

unint64_t sub_24B748264()
{
  result = qword_27F0368E0;
  if (!qword_27F0368E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368E0);
  }

  return result;
}

unint64_t sub_24B7482B8()
{
  result = qword_27F0368E8;
  if (!qword_27F0368E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368E8);
  }

  return result;
}

unint64_t sub_24B74830C()
{
  result = qword_27F0368F0;
  if (!qword_27F0368F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368F0);
  }

  return result;
}

unint64_t sub_24B748360()
{
  result = qword_27F0368F8;
  if (!qword_27F0368F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0368F8);
  }

  return result;
}

unint64_t sub_24B7483B4()
{
  result = qword_27F036900;
  if (!qword_27F036900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036900);
  }

  return result;
}

unint64_t sub_24B748408()
{
  result = qword_27F036908;
  if (!qword_27F036908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036908);
  }

  return result;
}

unint64_t sub_24B74845C()
{
  result = qword_27F036910;
  if (!qword_27F036910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036910);
  }

  return result;
}

unint64_t sub_24B7484B0()
{
  result = qword_27F036918;
  if (!qword_27F036918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036918);
  }

  return result;
}

uint64_t sub_24B74851C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B7485D4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t WorkoutDetailDynamicTypeSize.hashValue.getter(unsigned __int8 a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1);
  return sub_24B75C718();
}

uint64_t sub_24B7485D4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A00, &qword_24B769808);
  v94 = *(v2 - 8);
  v95 = v2;
  v3 = *(v94 + 64);
  MEMORY[0x28223BE20](v2);
  v100 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A08, &qword_24B769810);
  v92 = *(v5 - 8);
  v93 = v5;
  v6 = *(v92 + 64);
  MEMORY[0x28223BE20](v5);
  v105 = &v69 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A10, &qword_24B769818);
  v90 = *(v91 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v104 = &v69 - v9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A18, &qword_24B769820);
  v88 = *(v89 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v99 = &v69 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A20, &qword_24B769828);
  v86 = *(v87 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v98 = &v69 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A28, &qword_24B769830);
  v84 = *(v85 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v97 = &v69 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A30, &qword_24B769838);
  v83 = *(v82 - 8);
  v16 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  v103 = &v69 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A38, &qword_24B769840);
  v81 = *(v80 - 8);
  v18 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  v102 = &v69 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A40, &qword_24B769848);
  v78 = *(v79 - 8);
  v20 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v101 = &v69 - v21;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A48, &qword_24B769850);
  v76 = *(v77 - 8);
  v22 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v96 = &v69 - v23;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A50, &qword_24B769858);
  v74 = *(v75 - 8);
  v24 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v26 = &v69 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A58, &qword_24B769860);
  v73 = *(v27 - 8);
  v28 = *(v73 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v69 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A60, &qword_24B769868);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v69 - v34;
  v37 = a1[3];
  v36 = a1[4];
  v107 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_24B7480C0();
  v38 = v106;
  sub_24B75C728();
  if (v38)
  {
    goto LABEL_12;
  }

  v70 = v30;
  v69 = v27;
  v71 = v26;
  v39 = v101;
  v40 = v102;
  v41 = v103;
  v42 = v104;
  v72 = 0;
  v43 = v105;
  v106 = v32;
  v44 = sub_24B75C628();
  v45 = (2 * *(v44 + 16)) | 1;
  v108 = v44;
  v109 = v44 + 32;
  v110 = 0;
  v111 = v45;
  v46 = sub_24B6B9E0C();
  v47 = v35;
  if (v46 != 12 && v110 == v111 >> 1)
  {
    v32 = v46;
    if (v46 <= 5u)
    {
      if (v46 <= 2u)
      {
        v48 = v72;
        if (v46)
        {
          if (v46 == 1)
          {
            v112 = 1;
            sub_24B74845C();
            v49 = v71;
            sub_24B75C598();
            if (!v48)
            {
              (*(v74 + 8))(v49, v75);
LABEL_45:
              v55 = v106;
              goto LABEL_47;
            }
          }

          else
          {
            v112 = 2;
            sub_24B748408();
            v65 = v96;
            sub_24B75C598();
            if (!v48)
            {
              (*(v76 + 8))(v65, v77);
              goto LABEL_45;
            }
          }
        }

        else
        {
          v112 = 0;
          sub_24B7484B0();
          v61 = v70;
          sub_24B75C598();
          if (!v48)
          {
            (*(v73 + 8))(v61, v69);
            goto LABEL_45;
          }
        }

        v55 = v106;
        goto LABEL_41;
      }

      v55 = v106;
      v58 = v72;
      if (v46 == 3)
      {
        v112 = 3;
        sub_24B7483B4();
        sub_24B75C598();
        if (!v58)
        {
          (*(v78 + 8))(v39, v79);
          goto LABEL_47;
        }
      }

      else if (v46 == 4)
      {
        v112 = 4;
        sub_24B748360();
        sub_24B75C598();
        if (!v58)
        {
          (*(v81 + 8))(v40, v80);
          goto LABEL_47;
        }
      }

      else
      {
        v112 = 5;
        sub_24B74830C();
        sub_24B75C598();
        if (!v58)
        {
          (*(v83 + 8))(v41, v82);
          goto LABEL_47;
        }
      }

      goto LABEL_41;
    }

    if (v46 <= 8u)
    {
      v55 = v106;
      if (v46 == 6)
      {
        v112 = 6;
        sub_24B7482B8();
        v62 = v97;
        v63 = v72;
        sub_24B75C598();
        if (!v63)
        {
          (*(v84 + 8))(v62, v85);
          goto LABEL_47;
        }
      }

      else
      {
        v56 = v72;
        if (v46 == 7)
        {
          v112 = 7;
          sub_24B748264();
          v57 = v98;
          sub_24B75C598();
          if (!v56)
          {
            (*(v86 + 8))(v57, v87);
LABEL_47:
            (*(v55 + 8))(v47, v31);
LABEL_50:
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v107);
            return v32;
          }
        }

        else
        {
          v112 = 8;
          sub_24B748210();
          v66 = v99;
          sub_24B75C598();
          if (!v56)
          {
            (*(v88 + 8))(v66, v89);
            goto LABEL_47;
          }
        }
      }

LABEL_41:
      (*(v55 + 8))(v47, v31);
      goto LABEL_11;
    }

    v59 = v106;
    if (v46 == 9)
    {
      v112 = 9;
      sub_24B7481BC();
      v64 = v72;
      sub_24B75C598();
      if (!v64)
      {
        (*(v90 + 8))(v42, v91);
        goto LABEL_49;
      }
    }

    else if (v46 == 10)
    {
      v112 = 10;
      sub_24B748168();
      v60 = v72;
      sub_24B75C598();
      if (!v60)
      {
        (*(v92 + 8))(v43, v93);
LABEL_49:
        (*(v59 + 8))(v47, v31);
        goto LABEL_50;
      }
    }

    else
    {
      v112 = 11;
      sub_24B748114();
      v67 = v100;
      v68 = v72;
      sub_24B75C598();
      if (!v68)
      {
        (*(v94 + 8))(v67, v95);
        goto LABEL_49;
      }
    }

    (*(v59 + 8))(v47, v31);
    goto LABEL_11;
  }

  v50 = v31;
  v51 = sub_24B75C568();
  swift_allocError();
  v53 = v52;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
  *v53 = &type metadata for WorkoutDetailDynamicTypeSize;
  sub_24B75C5A8();
  sub_24B75C558();
  (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84160], v51);
  swift_willThrow();
  (*(v106 + 8))(v47, v50);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v107);
  return v32;
}

unint64_t sub_24B7493B4()
{
  result = qword_27F036920;
  if (!qword_27F036920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036920);
  }

  return result;
}

unint64_t sub_24B7494EC()
{
  result = qword_27F036928;
  if (!qword_27F036928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036928);
  }

  return result;
}

unint64_t sub_24B749544()
{
  result = qword_27F036930;
  if (!qword_27F036930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036930);
  }

  return result;
}

unint64_t sub_24B74959C()
{
  result = qword_27F036938;
  if (!qword_27F036938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036938);
  }

  return result;
}

unint64_t sub_24B7495F4()
{
  result = qword_27F036940;
  if (!qword_27F036940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036940);
  }

  return result;
}

unint64_t sub_24B74964C()
{
  result = qword_27F036948;
  if (!qword_27F036948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036948);
  }

  return result;
}

unint64_t sub_24B7496A4()
{
  result = qword_27F036950;
  if (!qword_27F036950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036950);
  }

  return result;
}

unint64_t sub_24B7496FC()
{
  result = qword_27F036958;
  if (!qword_27F036958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036958);
  }

  return result;
}

unint64_t sub_24B749754()
{
  result = qword_27F036960;
  if (!qword_27F036960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036960);
  }

  return result;
}

unint64_t sub_24B7497AC()
{
  result = qword_27F036968;
  if (!qword_27F036968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036968);
  }

  return result;
}

unint64_t sub_24B749804()
{
  result = qword_27F036970;
  if (!qword_27F036970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036970);
  }

  return result;
}

unint64_t sub_24B74985C()
{
  result = qword_27F036978;
  if (!qword_27F036978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036978);
  }

  return result;
}

unint64_t sub_24B7498B4()
{
  result = qword_27F036980;
  if (!qword_27F036980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036980);
  }

  return result;
}

unint64_t sub_24B74990C()
{
  result = qword_27F036988;
  if (!qword_27F036988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036988);
  }

  return result;
}

unint64_t sub_24B749964()
{
  result = qword_27F036990;
  if (!qword_27F036990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036990);
  }

  return result;
}

unint64_t sub_24B7499BC()
{
  result = qword_27F036998;
  if (!qword_27F036998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036998);
  }

  return result;
}

unint64_t sub_24B749A14()
{
  result = qword_27F0369A0;
  if (!qword_27F0369A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369A0);
  }

  return result;
}

unint64_t sub_24B749A6C()
{
  result = qword_27F0369A8;
  if (!qword_27F0369A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369A8);
  }

  return result;
}

unint64_t sub_24B749AC4()
{
  result = qword_27F0369B0;
  if (!qword_27F0369B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369B0);
  }

  return result;
}

unint64_t sub_24B749B1C()
{
  result = qword_27F0369B8;
  if (!qword_27F0369B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369B8);
  }

  return result;
}

unint64_t sub_24B749B74()
{
  result = qword_27F0369C0;
  if (!qword_27F0369C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369C0);
  }

  return result;
}

unint64_t sub_24B749BCC()
{
  result = qword_27F0369C8;
  if (!qword_27F0369C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369C8);
  }

  return result;
}

unint64_t sub_24B749C24()
{
  result = qword_27F0369D0;
  if (!qword_27F0369D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369D0);
  }

  return result;
}

unint64_t sub_24B749C7C()
{
  result = qword_27F0369D8;
  if (!qword_27F0369D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369D8);
  }

  return result;
}

unint64_t sub_24B749CD4()
{
  result = qword_27F0369E0;
  if (!qword_27F0369E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369E0);
  }

  return result;
}

unint64_t sub_24B749D2C()
{
  result = qword_27F0369E8;
  if (!qword_27F0369E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369E8);
  }

  return result;
}

unint64_t sub_24B749D84()
{
  result = qword_27F0369F0;
  if (!qword_27F0369F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369F0);
  }

  return result;
}

unint64_t sub_24B749DDC()
{
  result = qword_27F0369F8;
  if (!qword_27F0369F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0369F8);
  }

  return result;
}

uint64_t sub_24B749E4C()
{
  if (*v0)
  {
    result = 0x62694C6E49746F6ELL;
  }

  else
  {
    result = 0x72617262694C6E69;
  }

  *v0;
  return result;
}

uint64_t sub_24B749E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72617262694C6E69 && a2 == 0xE900000000000079;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x62694C6E49746F6ELL && a2 == 0xEC00000079726172)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B749F7C(uint64_t a1)
{
  v2 = sub_24B74A394();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B749FB8(uint64_t a1)
{
  v2 = sub_24B74A394();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B749FF4(uint64_t a1)
{
  v2 = sub_24B74A43C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74A030(uint64_t a1)
{
  v2 = sub_24B74A43C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B74A06C(uint64_t a1)
{
  v2 = sub_24B74A3E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74A0A8(uint64_t a1)
{
  v2 = sub_24B74A3E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BookmarkStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A68, &qword_24B769870);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A70, &qword_24B769878);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A78, &qword_24B769880);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B74A394();
  sub_24B75C738();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_24B74A3E8();
    v18 = v22;
    sub_24B75C638();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_24B74A43C();
    sub_24B75C638();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_24B74A394()
{
  result = qword_27F036A80;
  if (!qword_27F036A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036A80);
  }

  return result;
}

unint64_t sub_24B74A3E8()
{
  result = qword_27F036A88;
  if (!qword_27F036A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036A88);
  }

  return result;
}

unint64_t sub_24B74A43C()
{
  result = qword_27F036A90;
  if (!qword_27F036A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036A90);
  }

  return result;
}

uint64_t BookmarkStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036A98, &qword_24B769888);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036AA0, &qword_24B769890);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036AA8, &unk_24B769898);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B74A394();
  v16 = v36;
  sub_24B75C728();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_24B75C628();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_24B6B9E04();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_24B75C568();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
      *v26 = &type metadata for BookmarkStatus;
      sub_24B75C5A8();
      sub_24B75C558();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_24B74A3E8();
        sub_24B75C598();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_24B74A43C();
        sub_24B75C598();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t BookmarkStatus.hashValue.getter()
{
  v1 = *v0;
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v1);
  return sub_24B75C718();
}

unint64_t sub_24B74A9F4()
{
  result = qword_27F036AB0;
  if (!qword_27F036AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AB0);
  }

  return result;
}

unint64_t sub_24B74AA8C()
{
  result = qword_27F036AB8;
  if (!qword_27F036AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AB8);
  }

  return result;
}

unint64_t sub_24B74AAE4()
{
  result = qword_27F036AC0;
  if (!qword_27F036AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AC0);
  }

  return result;
}

unint64_t sub_24B74AB3C()
{
  result = qword_27F036AC8;
  if (!qword_27F036AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AC8);
  }

  return result;
}

unint64_t sub_24B74AB94()
{
  result = qword_27F036AD0;
  if (!qword_27F036AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AD0);
  }

  return result;
}

unint64_t sub_24B74ABEC()
{
  result = qword_27F036AD8;
  if (!qword_27F036AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AD8);
  }

  return result;
}

unint64_t sub_24B74AC44()
{
  result = qword_27F036AE0;
  if (!qword_27F036AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AE0);
  }

  return result;
}

unint64_t sub_24B74AC9C()
{
  result = qword_27F036AE8;
  if (!qword_27F036AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AE8);
  }

  return result;
}

uint64_t EditorialExternalLink.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EditorialExternalLink.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditorialExternalLink() + 20);
  v4 = sub_24B75B108();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EditorialExternalLink.init(name:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for EditorialExternalLink() + 20);
  v7 = sub_24B75B108();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_24B74AE20()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_24B74AE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B74AF28(uint64_t a1)
{
  v2 = sub_24B74B158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B74AF64(uint64_t a1)
{
  v2 = sub_24B74B158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialExternalLink.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036AF0, &qword_24B769C20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B74B158();
  sub_24B75C738();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_24B75C678();
  if (!v2)
  {
    v13 = *(type metadata accessor for EditorialExternalLink() + 20);
    v15[14] = 1;
    sub_24B75B108();
    sub_24B6A7334(&qword_27F0341E0, MEMORY[0x277CC9260]);
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v9, v5);
}