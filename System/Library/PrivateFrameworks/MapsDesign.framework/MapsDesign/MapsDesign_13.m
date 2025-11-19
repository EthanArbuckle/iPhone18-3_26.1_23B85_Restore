uint64_t sub_213F2FCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a3;
  v54 = a4;
  v47 = a2;
  v5 = type metadata accessor for RoutePlanningCell();
  v43 = v5;
  v49 = *(v5 - 1);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = &v42 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4D0, &qword_213F63DF0);
  v7 = *(*(v51 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v51);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v66 = v65;
  sub_213F4D400();
  v67 = sub_213F4F6B0();
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v11 = sub_213F4EBC0();
  WitnessTable = swift_getWitnessTable();
  v64 = v11;
  v65 = WitnessTable;
  v45 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v17 = &v42 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  v18 = sub_213F4D400();
  v55 = *(v18 - 8);
  v19 = *(v55 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v42 = &v42 - v23;
  v24 = v5;
  v25 = a1;
  sub_213F2A4C8(v24, v17);
  v64 = v11;
  v65 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_213F4E510();
  (*(v14 + 8))(v17, OpaqueTypeMetadata2);
  v27 = sub_213DE3AE4(&qword_281182960, &qword_27C8F99C8, &qword_213F59548);
  v62 = OpaqueTypeConformance2;
  v63 = v27;
  v44 = swift_getWitnessTable();
  sub_213DBFEEC(v22, v18, v44);
  v45 = *(v55 + 8);
  v45(v22, v18);
  v28 = v46;
  v29 = v43;
  sub_213F2D8B0(v43, v46);
  v30 = v49;
  v31 = v48;
  (*(v49 + 16))(v48, v25, v29);
  v32 = v30;
  v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v34 = swift_allocObject();
  v35 = v53;
  *(v34 + 16) = v47;
  *(v34 + 24) = v35;
  (*(v32 + 32))(v34 + v33, v31, v29);
  v36 = v51;
  v37 = (v28 + *(v51 + 36));
  *v37 = sub_213E08248;
  v37[1] = 0;
  v37[2] = sub_213F3BE50;
  v37[3] = v34;
  v38 = v42;
  (*(v55 + 16))(v22, v42, v18);
  v60 = 0;
  v61 = 1;
  v64 = v22;
  v65 = &v60;
  v39 = v52;
  sub_213DE3164(v28, v52, &qword_27C8FC4D0, &qword_213F63DF0);
  v66 = v39;
  v59[0] = v18;
  v59[1] = MEMORY[0x277CE1180];
  v59[2] = v36;
  v56 = v44;
  v57 = MEMORY[0x277CE1170];
  v58 = sub_213F3BE54();
  sub_213E95270(&v64, 3uLL, v59);
  sub_213DE36FC(v28, &qword_27C8FC4D0, &qword_213F63DF0);
  v40 = v45;
  v45(v38, v18);
  sub_213DE36FC(v39, &qword_27C8FC4D0, &qword_213F63DF0);
  return v40(v22, v18);
}

uint64_t sub_213F30348(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_213F4D8A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_213DE295C();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8);
  sub_213F4ECE0();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  return sub_213F4EB30();
}

uint64_t sub_213F30878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a1;
  v73 = a4;
  v75 = a3;
  v76 = type metadata accessor for RoutePlanningCell();
  v69 = *(v76 - 1);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v76);
  v68 = &v61 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4D0, &qword_213F63DF0);
  v6 = *(*(v71 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v71);
  v72 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v61 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v94 = v93;
  v74 = a2;
  sub_213F4D400();
  v95 = sub_213F4F6B0();
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v10 = sub_213F4EBC0();
  v65 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v92 = v10;
  v93 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  v14 = sub_213F4F6B0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  v16 = sub_213F39294();
  v92 = v15;
  v93 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v92 = v13;
  v93 = v14;
  v94 = OpaqueTypeConformance2;
  v95 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v92 = v13;
  v93 = v14;
  v94 = OpaqueTypeConformance2;
  v95 = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = sub_213DE295C();
  v92 = v19;
  v93 = &type metadata for CarGestureRepresentable;
  v94 = v20;
  v95 = v21;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  v22 = sub_213F4DBB0();
  v23 = sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8);
  v92 = v12;
  v93 = MEMORY[0x277D83B88];
  v94 = v22;
  v95 = v23;
  v96 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v92 = v19;
  v93 = &type metadata for CarGestureRepresentable;
  v94 = v20;
  v95 = v21;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v26 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  v92 = v25;
  v93 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  v89 = v24;
  v90 = v27;
  v88 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  v63 = swift_getWitnessTable();
  v28 = sub_213F4EBC0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v61 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  v33 = sub_213F4D400();
  OpaqueTypeMetadata2 = *(v33 - 8);
  v34 = *(OpaqueTypeMetadata2 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v61 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v62 = &v61 - v38;
  sub_213F4DA50();
  v39 = v66;
  sub_213F28828();
  v77 = v74;
  v78 = v75;
  v79 = v39;
  sub_213F4EBB0();
  v40 = swift_getWitnessTable();
  sub_213F4E510();
  (*(v29 + 8))(v32, v28);
  v41 = sub_213DE3AE4(&qword_281182960, &qword_27C8F99C8, &qword_213F59548);
  v86 = v40;
  v87 = v41;
  v63 = swift_getWitnessTable();
  sub_213DBFEEC(v37, v33, v63);
  v42 = OpaqueTypeMetadata2;
  v65 = *(OpaqueTypeMetadata2 + 8);
  v65(v37, v33);
  v43 = v67;
  v44 = v76;
  sub_213F2D8B0(v76, v67);
  v45 = v69;
  v46 = v68;
  v47 = v39;
  v48 = v44;
  (*(v69 + 16))(v68, v47, v44);
  v49 = v45;
  v50 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v51 = swift_allocObject();
  v52 = v75;
  *(v51 + 16) = v74;
  *(v51 + 24) = v52;
  (*(v49 + 32))(v51 + v50, v46, v48);
  v53 = v71;
  v54 = v43;
  v55 = (v43 + *(v71 + 36));
  *v55 = sub_213E08248;
  v55[1] = 0;
  v55[2] = sub_213F3CB7C;
  v55[3] = v51;
  v56 = v62;
  (*(v42 + 16))(v37, v62, v33);
  v84 = 0;
  v85 = 1;
  v92 = v37;
  v93 = &v84;
  v57 = v72;
  sub_213DE3164(v54, v72, &qword_27C8FC4D0, &qword_213F63DF0);
  v94 = v57;
  v83[0] = v33;
  v83[1] = MEMORY[0x277CE1180];
  v83[2] = v53;
  v80 = v63;
  v81 = MEMORY[0x277CE1170];
  v82 = sub_213F3BE54();
  sub_213E95270(&v92, 3uLL, v83);
  sub_213DE36FC(v54, &qword_27C8FC4D0, &qword_213F63DF0);
  v58 = v56;
  v59 = v65;
  v65(v58, v33);
  sub_213DE36FC(v57, &qword_27C8FC4D0, &qword_213F63DF0);
  return v59(v37, v33);
}

uint64_t sub_213F312B4@<X0>(uint64_t a1@<X0>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v58 = a2;
  v59 = a1;
  v60 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v4 = sub_213DE295C();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8);
  v71 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v69 = OpaqueTypeConformance2;
  v70 = v4;
  v5 = swift_getOpaqueTypeConformance2();
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v68 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  v66[3] = v5;
  v66[4] = swift_getOpaqueTypeConformance2();
  v66[2] = swift_getWitnessTable();
  swift_getWitnessTable();
  v6 = sub_213F4EBC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v48 - v11;
  v61 = v12;
  v13 = sub_213F4F6B0();
  v56 = *(v13 - 8);
  v57 = v13;
  v14 = *(v56 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v62 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = &v48 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v69 = v68;
  sub_213F4D400();
  v70 = sub_213F4F6B0();
  v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v18 = sub_213F4EBC0();
  v19 = swift_getWitnessTable();
  v67 = v18;
  v68 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v48 - v26;
  v28 = type metadata accessor for RoutePlanningCell();
  v29 = v59;
  sub_213F2A4C8(v28, v25);
  v67 = v18;
  v68 = v19;
  v30 = swift_getOpaqueTypeConformance2();
  v58 = v27;
  v51 = v30;
  sub_213DBFEEC(v25, OpaqueTypeMetadata2, v30);
  v52 = v21;
  v31 = *(v21 + 8);
  v54 = v21 + 8;
  v53 = v31;
  v31(v25, OpaqueTypeMetadata2);
  v32 = v29 + *(v28 + 44);
  if (*(*(v32 + *(type metadata accessor for RoutePlanningCellViewModel(0) + 44)) + 16))
  {
    v33 = v49;
    sub_213F2C098(v28, v49);
    v34 = v61;
    v35 = swift_getWitnessTable();
    v36 = v50;
    sub_213DBFEEC(v33, v34, v35);
    v37 = *(v7 + 8);
    v37(v33, v34);
    sub_213DBFEEC(v36, v34, v35);
    v37(v36, v34);
    v38 = v62;
    (*(v7 + 32))(v62, v33, v34);
    (*(v7 + 56))(v38, 0, 1, v34);
  }

  else
  {
    (*(v7 + 56))(v62, 1, 1, v61);
    swift_getWitnessTable();
  }

  v39 = v55;
  v40 = v62;
  sub_213F43E1C(v62, v55);
  v41 = v56;
  v42 = v57;
  v43 = *(v56 + 8);
  v43(v40, v57);
  v44 = v58;
  (*(v52 + 16))(v25, v58, OpaqueTypeMetadata2);
  v67 = v25;
  (*(v41 + 16))(v40, v39, v42);
  v68 = v40;
  v66[0] = OpaqueTypeMetadata2;
  v66[1] = v42;
  v64 = v51;
  v63 = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  sub_213E95270(&v67, 2uLL, v66);
  v43(v39, v42);
  v45 = v44;
  v46 = v53;
  v53(v45, OpaqueTypeMetadata2);
  v43(v40, v42);
  return v46(v25, OpaqueTypeMetadata2);
}

uint64_t sub_213F31BCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for RoutePlanningCell();
  sub_213F27D3C();
  return sub_213F27C7C(v2);
}

uint64_t sub_213F31C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a1;
  v55 = a2;
  v56 = a4;
  v52 = *(a3 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](a1);
  v51 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4A8, &qword_213F63DB8);
  v42 = v6;
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - v8;
  v10 = *(a3 + 16);
  v49 = *(a3 + 24);
  v50 = v10;
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  v11 = sub_213F4F6B0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B0, &unk_213F63DC0);
  v13 = sub_213F391DC();
  v59 = v12;
  v60 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v59 = v6;
  v60 = v11;
  v61 = OpaqueTypeConformance2;
  v62 = v43;
  v41 = OpaqueTypeConformance2;
  v44 = MEMORY[0x277CDEEB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v45 = OpaqueTypeMetadata2;
  v46 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v19 = &v41 - v18;
  v59 = sub_213F4E8D0();
  LOBYTE(v60) = 0;
  sub_213F4E840();

  v20 = v47;
  v59 = sub_213F27BB4(a3);
  v60 = v21;
  LOBYTE(v61) = v22;
  LOBYTE(v57) = 1;
  v23 = swift_checkMetadataState();
  v24 = v42;
  v25 = v43;
  sub_213F4E770();

  v26 = v9;
  v27 = v24;
  (*(v48 + 8))(v26, v24);
  v29 = v51;
  v28 = v52;
  v30 = v20;
  v31 = a3;
  (*(v52 + 16))(v51, v30, a3);
  v32 = v28;
  v33 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v34 = (v53 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v49;
  *(v35 + 16) = v50;
  *(v35 + 24) = v36;
  (*(v32 + 32))(v35 + v33, v29, v31);
  v37 = (v35 + v34);
  v38 = v55;
  *v37 = v54;
  v37[1] = v38;
  v57 = sub_213F3BADC;
  v58 = v35;

  v59 = v27;
  v60 = v23;
  v61 = v41;
  v62 = v25;
  swift_getOpaqueTypeConformance2();
  sub_213DE295C();
  v39 = v45;
  sub_213F4E7A0();

  return (*(v46 + 8))(v19, v39);
}

uint64_t sub_213F320A8(_BYTE *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*a1 != 1)
  {
    return a3();
  }

  result = type metadata accessor for RoutePlanningCell();
  v5 = a2 + *(result + 64);
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 8);

    v6(v8);

    return sub_213DD7558(v6);
  }

  return result;
}

uint64_t sub_213F32138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4A8, &qword_213F63DB8);
  v3 = *(a1 + 16);
  v41 = *(a1 + 24);
  v42 = a1;
  v40 = v3;
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B0, &unk_213F63DC0);
  sub_213F391DC();
  swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v37 = sub_213DE295C();
  swift_getOpaqueTypeMetadata2();
  v39 = sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8);
  v57 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v55 = OpaqueTypeConformance2;
  v56 = v37;
  v5 = swift_getOpaqueTypeConformance2();
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v54 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  v51 = v5;
  v52 = swift_getOpaqueTypeConformance2();
  v50 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  swift_getTupleTypeMetadata2();
  v34[1] = sub_213F4EFE0();
  v34[0] = swift_getWitnessTable();
  v6 = sub_213F4EBE0();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v36 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v35 = v34 - v10;
  sub_213F4D400();
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v11 = sub_213F4EBE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v34 - v17;
  v39 = sub_213F4DBB0();
  OpaqueTypeMetadata2 = *(v39 - 8);
  v19 = *(OpaqueTypeMetadata2 + 64);
  MEMORY[0x28223BE20](v39);
  v21 = v34 - v20;
  v22 = *(v43 + *(v42 + 52));
  v45 = v40;
  v46 = v41;
  v47 = v43;
  sub_213F4EEE0();
  if (v22 == 1)
  {
    sub_213F4EBD0();
    v23 = swift_getWitnessTable();
    sub_213DBFEEC(v16, v11, v23);
    v24 = *(v12 + 8);
    v24(v16, v11);
    sub_213DBFEEC(v18, v11, v23);
    swift_getWitnessTable();
    sub_213E95440(v16, v11);
    v24(v16, v11);
    v24(v18, v11);
  }

  else
  {
    v25 = v36;
    sub_213F4EBD0();
    v26 = swift_getWitnessTable();
    v27 = v35;
    sub_213DBFEEC(v25, v6, v26);
    v28 = *(v37 + 8);
    v28(v25, v6);
    sub_213DBFEEC(v27, v6, v26);
    swift_getWitnessTable();
    sub_213DBFF2C(v25, v11, v6);
    v28(v25, v6);
    v28(v27, v6);
  }

  v29 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v48 = v29;
  v49 = v30;
  v31 = v39;
  v32 = swift_getWitnessTable();
  sub_213DBFEEC(v21, v31, v32);
  return (*(OpaqueTypeMetadata2 + 8))(v21, v31);
}

uint64_t sub_213F32CD0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a3;
  v76 = a1;
  v75 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v72 = a2;
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  v81 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getWitnessTable();
  v80 = MEMORY[0x277CDEAE8];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v78 = sub_213F4EB40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  v5 = sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  v82 = MEMORY[0x277CDEF60];
  swift_getOpaqueTypeConformance2();
  v85[5] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = sub_213DE295C();
  v70 = MEMORY[0x277CDEEC8];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8);
  v90 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v88 = OpaqueTypeConformance2;
  v89 = v8;
  v9 = swift_getOpaqueTypeConformance2();
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v87 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  v85[3] = v9;
  v85[4] = swift_getOpaqueTypeConformance2();
  v85[2] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v74 = sub_213F4EBC0();
  v71 = *(v74 - 8);
  v10 = *(v71 + 64);
  v11 = MEMORY[0x28223BE20](v74);
  v73 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4A8, &qword_213F63DB8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B0, &unk_213F63DC0);
  v16 = sub_213F391DC();
  v86 = v15;
  v87 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v86 = v14;
  v87 = v5;
  v88 = v17;
  v89 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = v14;
  v87 = v5;
  v19 = OpaqueTypeMetadata2;
  v88 = v17;
  v89 = WitnessTable;
  v20 = swift_getOpaqueTypeConformance2();
  v86 = v19;
  v87 = &type metadata for CarGestureRepresentable;
  v88 = v20;
  v82 = v8;
  v89 = v8;
  v21 = v76;
  v22 = swift_getOpaqueTypeMetadata2();
  v68 = *(v22 - 8);
  v23 = *(v68 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v67 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v66 = &v64 - v26;
  v27 = sub_213F4D290();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v64 - v33;
  v70 = sub_213F4F6B0();
  v69 = *(v70 - 8);
  v35 = *(v69 + 64);
  v36 = MEMORY[0x28223BE20](v70);
  v38 = &v64 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v80 = &v64 - v39;
  v40 = type metadata accessor for RoutePlanningCell();
  v78 = v20;
  v79 = v40;
  v41 = (v21 + *(v40 + 60));
  v42 = *v41;
  v77 = v19;
  if (!v42)
  {
    goto LABEL_5;
  }

  v65 = v22;
  v72 = v38;
  v43 = v41[1];

  v44 = v79;
  sub_213F2732C(v34);
  sub_213F4D280();
  v45 = sub_213F4D270();
  v46 = *(v28 + 8);
  v46(v32, v27);
  v46(v34, v27);
  if ((v45 & 1) == 0)
  {
    sub_213DD7558(v42);
    v19 = v77;
    v20 = v78;
    v38 = v72;
    v22 = v65;
LABEL_5:
    (*(v68 + 56))(v38, 1, 1, v22);
    v86 = v19;
    v87 = &type metadata for CarGestureRepresentable;
    v88 = v20;
    v89 = v82;
    swift_getOpaqueTypeConformance2();
    goto LABEL_6;
  }

  v47 = v67;
  sub_213F31C20(v42, v43, v44, v67);
  sub_213DD7558(v42);
  v86 = v77;
  v87 = &type metadata for CarGestureRepresentable;
  v88 = v78;
  v89 = v82;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v66;
  v50 = v65;
  sub_213DBFEEC(v47, v65, v48);
  v51 = v68;
  v52 = *(v68 + 8);
  v52(v47, v50);
  sub_213DBFEEC(v49, v50, v48);
  v52(v49, v50);
  v38 = v72;
  (*(v51 + 32))(v72, v47, v50);
  (*(v51 + 56))(v38, 0, 1, v50);
LABEL_6:
  v53 = v80;
  sub_213F43E1C(v38, v80);
  v54 = v69;
  v72 = *(v69 + 8);
  v55 = v70;
  (v72)(v38, v70);
  v56 = v73;
  sub_213F2ED78(v79);
  v57 = v74;
  v79 = swift_getWitnessTable();
  sub_213DBFEEC(v56, v57, v79);
  v58 = v71;
  v59 = *(v71 + 8);
  v59(v56, v57);
  (*(v54 + 16))(v38, v53, v55);
  v85[0] = v38;
  v60 = v38;
  v61 = v81;
  (*(v58 + 16))(v56, v81, v57);
  v85[1] = v56;
  v84[0] = v55;
  v84[1] = v57;
  v86 = v77;
  v87 = &type metadata for CarGestureRepresentable;
  v88 = v78;
  v89 = v82;
  v83 = swift_getOpaqueTypeConformance2();
  v86 = swift_getWitnessTable();
  v87 = v79;
  sub_213E95270(v85, 2uLL, v84);
  v59(v61, v57);
  v62 = v72;
  (v72)(v80, v55);
  v59(v56, v57);
  return (v62)(v60, v55);
}

uint64_t sub_213F33984@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a3;
  v76 = a1;
  v75 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v74 = a2;
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  v81 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getWitnessTable();
  v78 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  v5 = sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  v82 = MEMORY[0x277CDEF60];
  swift_getOpaqueTypeConformance2();
  v85[5] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = sub_213DE295C();
  v70 = MEMORY[0x277CDEEC8];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8);
  v90 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v88 = OpaqueTypeConformance2;
  v89 = v8;
  v9 = swift_getOpaqueTypeConformance2();
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v87 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  v85[3] = v9;
  v85[4] = swift_getOpaqueTypeConformance2();
  v85[2] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v73 = sub_213F4EB40();
  v71 = *(v73 - 8);
  v10 = *(v71 + 64);
  v11 = MEMORY[0x28223BE20](v73);
  v72 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4A8, &qword_213F63DB8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B0, &unk_213F63DC0);
  v16 = sub_213F391DC();
  v86 = v15;
  v87 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v86 = v14;
  v87 = v5;
  v88 = v17;
  v89 = WitnessTable;
  v18 = swift_getOpaqueTypeMetadata2();
  v86 = v14;
  v87 = v5;
  v19 = v76;
  v88 = v17;
  v89 = WitnessTable;
  v20 = v18;
  v21 = swift_getOpaqueTypeConformance2();
  v86 = v20;
  v87 = &type metadata for CarGestureRepresentable;
  v88 = v21;
  v82 = v8;
  v89 = v8;
  v22 = swift_getOpaqueTypeMetadata2();
  v68 = *(v22 - 8);
  v23 = *(v68 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v67 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v66 = &v64 - v26;
  v27 = sub_213F4D290();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v64 - v33;
  v70 = sub_213F4F6B0();
  v69 = *(v70 - 8);
  v35 = *(v69 + 64);
  v36 = MEMORY[0x28223BE20](v70);
  v38 = &v64 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  OpaqueTypeMetadata2 = &v64 - v39;
  v40 = type metadata accessor for RoutePlanningCell();
  v78 = v21;
  v79 = v40;
  v41 = (v19 + *(v40 + 60));
  v42 = *v41;
  v77 = v20;
  if (!v42)
  {
    goto LABEL_5;
  }

  v65 = v22;
  v74 = v38;
  v43 = v41[1];

  v44 = v79;
  sub_213F2732C(v34);
  sub_213F4D280();
  v45 = sub_213F4D270();
  v46 = *(v28 + 8);
  v46(v32, v27);
  v46(v34, v27);
  if ((v45 & 1) == 0)
  {
    sub_213DD7558(v42);
    v20 = v77;
    v21 = v78;
    v38 = v74;
    v22 = v65;
LABEL_5:
    (*(v68 + 56))(v38, 1, 1, v22);
    v86 = v20;
    v87 = &type metadata for CarGestureRepresentable;
    v88 = v21;
    v89 = v82;
    swift_getOpaqueTypeConformance2();
    goto LABEL_6;
  }

  v47 = v67;
  sub_213F31C20(v42, v43, v44, v67);
  sub_213DD7558(v42);
  v86 = v77;
  v87 = &type metadata for CarGestureRepresentable;
  v88 = v78;
  v89 = v82;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v66;
  v50 = v65;
  sub_213DBFEEC(v47, v65, v48);
  v51 = v68;
  v52 = *(v68 + 8);
  v52(v47, v50);
  sub_213DBFEEC(v49, v50, v48);
  v52(v49, v50);
  v38 = v74;
  (*(v51 + 32))(v74, v47, v50);
  (*(v51 + 56))(v38, 0, 1, v50);
LABEL_6:
  v53 = OpaqueTypeMetadata2;
  sub_213F43E1C(v38, OpaqueTypeMetadata2);
  v54 = v69;
  v74 = *(v69 + 8);
  v55 = v70;
  (v74)(v38, v70);
  v56 = v72;
  sub_213F30348(v79);
  v57 = v73;
  v79 = swift_getWitnessTable();
  sub_213DBFEEC(v56, v57, v79);
  v58 = v71;
  v59 = *(v71 + 8);
  v59(v56, v57);
  (*(v54 + 16))(v38, v53, v55);
  v85[0] = v38;
  v60 = v38;
  v61 = v81;
  (*(v58 + 16))(v56, v81, v57);
  v85[1] = v56;
  v84[0] = v55;
  v84[1] = v57;
  v86 = v77;
  v87 = &type metadata for CarGestureRepresentable;
  v88 = v78;
  v89 = v82;
  v83 = swift_getOpaqueTypeConformance2();
  v86 = swift_getWitnessTable();
  v87 = v79;
  sub_213E95270(v85, 2uLL, v84);
  v59(v61, v57);
  v62 = v74;
  (v74)(OpaqueTypeMetadata2, v55);
  v59(v56, v57);
  return (v62)(v60, v55);
}

uint64_t RoutePlanningCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v282 = a2;
  v268 = *(a1 - 8);
  v3 = *(v268 + 64);
  MEMORY[0x28223BE20](a1);
  v266 = v4;
  v267 = v217 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4A8, &qword_213F63DB8);
  v299 = a1;
  v6 = *(a1 + 16);
  v284 = *(a1 + 24);
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  v7 = sub_213F4F6B0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B0, &unk_213F63DC0);
  v9 = sub_213F391DC();
  *&v356 = v8;
  *(&v356 + 1) = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  *&v356 = v5;
  *(&v356 + 1) = v7;
  v12 = v7;
  v298 = v7;
  v357 = OpaqueTypeConformance2;
  v358 = v11;
  v13 = v11;
  v302 = v11;
  v14 = MEMORY[0x277CDEEB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v356 = v5;
  *(&v356 + 1) = v12;
  v357 = OpaqueTypeConformance2;
  v358 = v13;
  v16 = swift_getOpaqueTypeConformance2();
  v296 = sub_213DE295C();
  *&v356 = OpaqueTypeMetadata2;
  *(&v356 + 1) = &type metadata for CarGestureRepresentable;
  v357 = v16;
  v358 = v296;
  swift_getOpaqueTypeMetadata2();
  v303 = sub_213F4F6B0();
  *&v356 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  *(&v356 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v357 = *(&v356 + 1);
  v285 = v6;
  sub_213F4D400();
  v358 = sub_213F4F6B0();
  v359 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v17 = sub_213F4EBC0();
  v18 = swift_getWitnessTable();
  *&v356 = v17;
  *(&v356 + 1) = v18;
  v295 = MEMORY[0x277CDEAE8];
  v297 = swift_getOpaqueTypeMetadata2();
  v301 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  v300 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v294 = sub_213F4EB40();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  v22 = sub_213F39294();
  *&v356 = v21;
  *(&v356 + 1) = v22;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v298;
  *&v356 = v20;
  *(&v356 + 1) = v298;
  v25 = v302;
  v357 = v23;
  v358 = v302;
  v292 = v14;
  v26 = swift_getOpaqueTypeMetadata2();
  *&v356 = v20;
  *(&v356 + 1) = v24;
  v357 = v23;
  v358 = v25;
  v27 = swift_getOpaqueTypeConformance2();
  *&v356 = v26;
  *(&v356 + 1) = &type metadata for CarGestureRepresentable;
  v357 = v27;
  v28 = v296;
  v358 = v296;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  v29 = sub_213F4DBB0();
  v30 = sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8);
  *&v356 = v19;
  *(&v356 + 1) = MEMORY[0x277D83B88];
  v357 = v29;
  v358 = v30;
  v359 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  *&v356 = v26;
  *(&v356 + 1) = &type metadata for CarGestureRepresentable;
  v357 = v27;
  v358 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v33 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  *&v356 = v32;
  *(&v356 + 1) = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v354 = v31;
  v355 = v34;
  v353 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4D400();
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  v288 = sub_213F4DBB0();
  v300 = sub_213F4D400();
  v35 = sub_213F4D400();
  v36 = sub_213F4D400();
  v37 = sub_213F4D400();
  v255 = *(v37 - 8);
  v38 = *(v255 + 64);
  MEMORY[0x28223BE20](v37);
  v254 = v217 - v39;
  v291 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B38, &qword_213F60B00);
  v297 = v37;
  v40 = sub_213F4D400();
  v258 = *(v40 - 8);
  v41 = *(v258 + 64);
  MEMORY[0x28223BE20](v40);
  v256 = v217 - v42;
  v290 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D8, &qword_213F57938);
  v296 = v40;
  v43 = sub_213F4D400();
  v259 = *(v43 - 8);
  v44 = *(v259 + 64);
  MEMORY[0x28223BE20](v43);
  v257 = v217 - v45;
  v295 = v46;
  v47 = sub_213F4D400();
  v262 = *(v47 - 8);
  v48 = *(v262 + 64);
  MEMORY[0x28223BE20](v47);
  v261 = v217 - v49;
  v294 = v50;
  v293 = sub_213F4D400();
  v265 = *(v293 - 8);
  v51 = *(v265 + 64);
  v52 = MEMORY[0x28223BE20](v293);
  v264 = v217 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v260 = v217 - v55;
  MEMORY[0x28223BE20](v54);
  v263 = v217 - v56;
  v57 = sub_213F4CEA0();
  v276 = *(v57 - 8);
  v277 = v57;
  v58 = *(v276 + 64);
  MEMORY[0x28223BE20](v57);
  v274 = v217 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_213F4DCA0();
  v247 = *(v60 - 8);
  v61 = *(v247 + 64);
  MEMORY[0x28223BE20](v60);
  v246 = v217 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  v351 = v63;
  v352 = v64;
  v271 = swift_getWitnessTable();
  v65 = MEMORY[0x277CDF918];
  v349 = v271;
  v350 = MEMORY[0x277CDF918];
  v272 = swift_getWitnessTable();
  v347 = v272;
  v348 = v65;
  v287 = v35;
  v273 = swift_getWitnessTable();
  v345 = v273;
  v346 = v65;
  v303 = v36;
  v301 = swift_getWitnessTable();
  v66 = sub_213F4EB20();
  v236 = *(v66 - 8);
  v67 = *(v236 + 64);
  MEMORY[0x28223BE20](v66);
  v228 = v217 - v68;
  v69 = swift_getWitnessTable();
  v70 = sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8]);
  *&v356 = v66;
  *(&v356 + 1) = v60;
  v357 = v69;
  v358 = v70;
  v71 = swift_getOpaqueTypeMetadata2();
  v229 = *(v71 - 8);
  v72 = *(v229 + 64);
  MEMORY[0x28223BE20](v71);
  v225 = v217 - v73;
  v238 = v66;
  *&v356 = v66;
  *(&v356 + 1) = v60;
  v248 = v60;
  v222 = v70;
  v223 = v69;
  v357 = v69;
  v358 = v70;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = v298;
  *&v356 = v71;
  *(&v356 + 1) = v298;
  v357 = v74;
  v358 = v302;
  v76 = swift_getOpaqueTypeMetadata2();
  v227 = *(v76 - 8);
  v77 = *(v227 + 64);
  MEMORY[0x28223BE20](v76);
  v224 = v217 - v78;
  v231 = v79;
  v80 = sub_213F4D400();
  v230 = *(v80 - 8);
  v81 = *(v230 + 64);
  MEMORY[0x28223BE20](v80);
  v226 = v217 - v82;
  v83 = sub_213F4D400();
  v239 = *(v83 - 8);
  v84 = *(v239 + 64);
  MEMORY[0x28223BE20](v83);
  v232 = v217 - v85;
  v86 = sub_213F4D400();
  v242 = *(v86 - 8);
  v87 = *(v242 + 64);
  MEMORY[0x28223BE20](v86);
  v237 = v217 - v88;
  v89 = sub_213F4D400();
  v245 = *(v89 - 8);
  v90 = *(v245 + 64);
  MEMORY[0x28223BE20](v89);
  v240 = v217 - v91;
  v233 = v71;
  *&v356 = v71;
  *(&v356 + 1) = v75;
  v221 = v74;
  v357 = v74;
  v358 = v302;
  v217[0] = swift_getOpaqueTypeConformance2();
  v343 = v217[0];
  v344 = MEMORY[0x277CDFC60];
  v234 = v80;
  v92 = swift_getWitnessTable();
  v93 = sub_213DE3AE4(&qword_281182898, &qword_27C8F9B38, &qword_213F60B00);
  v217[1] = v92;
  v341 = v92;
  v292 = v93;
  v342 = v93;
  v241 = v83;
  v94 = swift_getWitnessTable();
  v95 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938);
  v219 = v94;
  v339 = v94;
  v291 = v95;
  v340 = v95;
  v244 = v86;
  v96 = swift_getWitnessTable();
  v97 = sub_213DD9674();
  v218 = v96;
  v337 = v96;
  v290 = v97;
  v338 = v97;
  v98 = swift_getWitnessTable();
  v283 = v89;
  v99 = v303;
  *&v356 = v89;
  *(&v356 + 1) = v303;
  v289 = v98;
  v357 = v98;
  v358 = v301;
  v100 = swift_getOpaqueTypeMetadata2();
  v243 = *(v100 - 8);
  v101 = *(v243 + 64);
  v102 = MEMORY[0x28223BE20](v100);
  v235 = v217 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = MEMORY[0x28223BE20](v102);
  v220 = v217 - v105;
  MEMORY[0x28223BE20](v104);
  v253 = v217 - v106;
  v107 = sub_213F4D290();
  v251 = *(v107 - 8);
  v252 = v107;
  v108 = *(v251 + 64);
  v109 = MEMORY[0x28223BE20](v107);
  v250 = v217 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v109);
  v249 = v217 - v111;
  v278 = v100;
  v281 = sub_213F4DBB0();
  v280 = *(v281 - 8);
  v112 = *(v280 + 64);
  v113 = MEMORY[0x28223BE20](v281);
  v279 = v217 - v114;
  v115 = *(v288 - 8);
  v116 = *(v115 + 64);
  v117 = MEMORY[0x28223BE20](v113);
  v119 = v217 - v118;
  v269 = *(v300 - 8);
  v120 = *(v269 + 64);
  v121 = MEMORY[0x28223BE20](v117);
  v123 = v217 - v122;
  v270 = *(v287 - 8);
  v124 = *(v270 + 64);
  v125 = MEMORY[0x28223BE20](v121);
  v127 = v217 - v126;
  v275 = *(v99 - 8);
  v128 = *(v275 + 64);
  MEMORY[0x28223BE20](v125);
  v130 = v217 - v129;
  v131 = v299;
  v132 = v286;
  sub_213F32138(v299, v119);
  sub_213F4E040();
  sub_213F27D3C();
  v133 = v288;
  sub_213F4E7D0();
  (*(v115 + 8))(v119, v133);
  sub_213F4E060();
  sub_213F27E68();
  v134 = v300;
  sub_213F4E7D0();
  (*(v269 + 8))(v123, v134);
  sub_213F4E070();
  sub_213F280C0(v131);
  v300 = v130;
  v135 = v287;
  sub_213F4E7D0();
  (*(v270 + 8))(v127, v135);
  v136 = v132;
  v137 = (v132 + *(v131 + 60));
  if (*v137)
  {
    v138 = *v137;
    v139 = v137[1];

    v140 = v249;
    sub_213F2732C(v249);
    v141 = v250;
    sub_213F4D280();
    sub_213F39194(&qword_2811834A8, MEMORY[0x277CDF7E8]);
    v142 = v252;
    v143 = sub_213F4F1F0();
    v144 = *(v251 + 8);
    v144(v141, v142);
    v144(v140, v142);
    if ((v143 & 1) == 0)
    {
      v179 = swift_allocObject();
      v287 = v138;
      *(v179 + 16) = v138;
      *(v179 + 24) = v139;
      MEMORY[0x28223BE20](v179);

      v180 = v228;
      sub_213F4EB00();
      v181 = v246;
      sub_213F4DC90();
      v182 = v225;
      v288 = v139;
      v183 = v238;
      v184 = v248;
      sub_213F4E3B0();
      (*(v247 + 8))(v181, v184);
      (*(v236 + 8))(v180, v183);
      v185 = v299;
      *&v356 = sub_213F27BB4(v299);
      *(&v356 + 1) = v186;
      LOBYTE(v357) = v187;
      v314 = 0;
      swift_checkMetadataState();
      v188 = v224;
      v189 = v233;
      sub_213F4E770();

      (*(v229 + 8))(v182, v189);
      sub_213F28224();
      sub_213F4EEE0();
      v190 = v231;
      v191 = v226;
      sub_213F4E750();
      (*(v227 + 8))(v188, v190);
      v192 = v274;
      sub_213F2752C(v185, v274);
      v193 = v232;
      v194 = v234;
      sub_213F4E3D0();
      (*(v276 + 8))(v192, v277);
      (*(v230 + 8))(v191, v194);
      sub_213F27884();
      v195 = v136 + *(v185 + 44);
      LOBYTE(v191) = *(v195 + *(type metadata accessor for RoutePlanningCellViewModel(0) + 36));
      sub_213F27A24(v185);
      v196 = v237;
      v197 = v241;
      View.backgroundPlatter(isCarPlay:isHighlighted:isFocused:)();
      (*(v239 + 8))(v193, v197);
      v356 = xmmword_213F63D10;
      LOBYTE(v357) = 2;
      v198 = v240;
      v199 = v244;
      View.mapsDesignAXContainer(withID:)(&v356, v244, v218);
      sub_213DD9350(v356, *(&v356 + 1), v357);
      v200 = (*(v242 + 8))(v196, v199);
      MEMORY[0x28223BE20](v200);
      v201 = v303;
      v202 = v220;
      v203 = v283;
      v204 = v289;
      v168 = v301;
      sub_213F4E680();
      (*(v245 + 8))(v198, v203);
      *&v356 = v203;
      *(&v356 + 1) = v201;
      v357 = v204;
      v358 = v168;
      v205 = swift_getOpaqueTypeConformance2();
      v206 = v253;
      v207 = v278;
      sub_213DBFEEC(v202, v278, v205);
      v208 = *(v243 + 8);
      v208(v202, v207);
      v209 = v235;
      sub_213DBFEEC(v206, v207, v205);
      v312 = v168;
      v313 = MEMORY[0x277CDFC60];
      v310 = swift_getWitnessTable();
      v311 = v292;
      v308 = swift_getWitnessTable();
      v309 = v291;
      v306 = swift_getWitnessTable();
      v307 = v290;
      v304 = swift_getWitnessTable();
      v177 = MEMORY[0x277CE0790];
      v305 = MEMORY[0x277CE0790];
      swift_getWitnessTable();
      v175 = v279;
      sub_213E95440(v209, v207);
      sub_213DD7558(v287);
      v208(v209, v207);
      v210 = v207;
      v178 = v300;
      v208(v253, v210);
      v174 = v283;
      goto LABEL_6;
    }

    sub_213DD7558(v138);
  }

  v145 = v299;
  v146 = v136;
  sub_213F28224();
  sub_213F4EEE0();
  v147 = v301;
  v148 = v254;
  sub_213F4E750();
  v149 = v274;
  sub_213F2752C(v145, v274);
  v335 = v147;
  v336 = MEMORY[0x277CDFC60];
  v150 = v297;
  v151 = swift_getWitnessTable();
  v152 = v256;
  sub_213F4E3D0();
  (*(v276 + 8))(v149, v277);
  (*(v255 + 8))(v148, v150);
  sub_213F27884();
  v153 = v146 + *(v145 + 44);
  LOBYTE(v148) = *(v153 + *(type metadata accessor for RoutePlanningCellViewModel(0) + 36));
  sub_213F27A24(v145);
  v333 = v151;
  v334 = v292;
  v154 = v296;
  v155 = swift_getWitnessTable();
  v156 = v257;
  View.backgroundPlatter(isCarPlay:isHighlighted:isFocused:)();
  (*(v258 + 8))(v152, v154);
  v356 = xmmword_213F63D10;
  LOBYTE(v357) = 2;
  v331 = v155;
  v332 = v291;
  v157 = v295;
  v158 = swift_getWitnessTable();
  v159 = v261;
  View.mapsDesignAXContainer(withID:)(&v356, v157, v158);
  sub_213DD9350(v356, *(&v356 + 1), v357);
  (*(v259 + 8))(v156, v157);
  v161 = v267;
  v160 = v268;
  (*(v268 + 16))(v267, v286, v145);
  v162 = (*(v160 + 80) + 32) & ~*(v160 + 80);
  v163 = swift_allocObject();
  v164 = v284;
  *(v163 + 16) = v285;
  *(v163 + 24) = v164;
  (*(v160 + 32))(v163 + v162, v161, v145);
  v329 = v158;
  v330 = v290;
  v165 = v294;
  v166 = swift_getWitnessTable();
  v167 = v260;
  sub_213F4E800();

  (*(v262 + 8))(v159, v165);
  v327 = v166;
  v168 = v301;
  v328 = MEMORY[0x277CE0790];
  v169 = v293;
  v170 = swift_getWitnessTable();
  v171 = v263;
  sub_213DBFEEC(v167, v169, v170);
  v172 = *(v265 + 8);
  v172(v167, v169);
  v173 = v264;
  sub_213DBFEEC(v171, v169, v170);
  v174 = v283;
  *&v356 = v283;
  *(&v356 + 1) = v303;
  v357 = v289;
  v358 = v168;
  swift_getOpaqueTypeConformance2();
  v175 = v279;
  sub_213DBFF2C(v173, v278, v169);
  v176 = v173;
  v177 = MEMORY[0x277CE0790];
  v172(v176, v169);
  v172(v171, v169);
  v178 = v300;
LABEL_6:
  *&v356 = v174;
  v211 = v303;
  *(&v356 + 1) = v303;
  v357 = v289;
  v358 = v168;
  v212 = swift_getOpaqueTypeConformance2();
  v325 = v168;
  v326 = MEMORY[0x277CDFC60];
  v323 = swift_getWitnessTable();
  v324 = v292;
  v321 = swift_getWitnessTable();
  v322 = v291;
  v319 = swift_getWitnessTable();
  v320 = v290;
  v317 = swift_getWitnessTable();
  v318 = v177;
  v213 = swift_getWitnessTable();
  v315 = v212;
  v316 = v213;
  v214 = v281;
  v215 = swift_getWitnessTable();
  sub_213DBFEEC(v175, v214, v215);
  (*(v280 + 8))(v175, v214);
  return (*(v275 + 8))(v178, v211);
}

uint64_t sub_213F36904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4A8, &qword_213F63DB8);
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B0, &unk_213F63DC0);
  sub_213F391DC();
  swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v2 = sub_213DE295C();
  v16[3] = MEMORY[0x277CDEEC8];
  swift_getOpaqueTypeMetadata2();
  v16[7] = sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getWitnessTable();
  v16[2] = MEMORY[0x277CDEAE8];
  v16[4] = swift_getOpaqueTypeMetadata2();
  v16[6] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  v16[5] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v16[1] = sub_213F4EB40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8);
  v34 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v32 = OpaqueTypeConformance2;
  v33 = v2;
  v4 = swift_getOpaqueTypeConformance2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v31 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  v28 = v4;
  v29 = swift_getOpaqueTypeConformance2();
  v27 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4D400();
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  sub_213F4DBB0();
  sub_213F4D400();
  sub_213F4D400();
  v5 = sub_213F4D400();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v25 = v10;
  v26 = v11;
  v12 = swift_getWitnessTable();
  v13 = MEMORY[0x277CDF918];
  v23 = v12;
  v24 = MEMORY[0x277CDF918];
  v21 = swift_getWitnessTable();
  v22 = v13;
  v19 = swift_getWitnessTable();
  v20 = v13;
  v14 = swift_getWitnessTable();
  sub_213DBFEEC(v17, v5, v14);
  sub_213DBFEEC(v9, v5, v14);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_213F371E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v34 = a1;
  v38 = sub_213F4F0B0();
  v41 = *(v38 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_213F4F0D0();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RoutePlanningCell();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = sub_213F4F0F0();
  v36 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  sub_213E15130(0, &qword_2811823E8, 0x277D85C78);
  v33 = sub_213F4F580();
  sub_213F4F0E0();
  sub_213F4F130();
  v35 = *(v15 + 8);
  v35(v19, v14);
  (*(v10 + 16))(v13, v34, v9);
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = swift_allocObject();
  v24 = v32;
  *(v23 + 16) = v31;
  *(v23 + 24) = v24;
  (*(v10 + 32))(v23 + v22, v13, v9);
  aBlock[4] = sub_213F3B9FC;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_213F1CB04;
  aBlock[3] = &block_descriptor_2;
  v25 = _Block_copy(aBlock);

  sub_213F4F0C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_213F39194(&qword_281182548, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3E0, &unk_213F63BC0);
  sub_213DE3AE4(&qword_2811824A0, &qword_27C8FC3E0, &unk_213F63BC0);
  v26 = v37;
  v27 = v38;
  sub_213F4F6F0();
  v28 = v33;
  MEMORY[0x216052950](v21, v8, v26, v25);
  _Block_release(v25);

  (*(v41 + 8))(v26, v27);
  (*(v39 + 8))(v8, v40);
  return (v35)(v21, v36);
}

uint64_t sub_213F37698()
{
  v0 = type metadata accessor for RoutePlanningCell();
  result = sub_213F27730(v0);
  if (result)
  {
    return sub_213F27AE8(1, v0);
  }

  return result;
}

MapsDesign::CustomRouteCellViewModel __swiftcall CustomRouteCellViewModel.init(primaryText:secondaryText:)(Swift::String primaryText, Swift::String secondaryText)
{
  *v2 = primaryText;
  v2[1] = secondaryText;
  result.secondaryText = secondaryText;
  result.primaryText = primaryText;
  return result;
}

__n128 CustomRouteCell.init(viewModel:useCompactLayout:tapHandler:useUIKitSizingForLabels:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 a2@<W1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unsigned __int8 a5@<W4>, __n128 *a6@<X8>)
{
  result = *a1;
  v7 = a1[1].n128_u64[0];
  v8 = a1[1].n128_u64[1];
  *a6 = *a1;
  a6[1].n128_u64[0] = v7;
  a6[1].n128_u64[1] = v8;
  a6[2].n128_u8[0] = a2;
  a6[2].n128_u64[1] = a3;
  a6[3].n128_u64[0] = a4;
  a6[3].n128_u8[8] = a5;
  return result;
}

double CustomRouteCell.body.getter@<D0>(uint64_t *a1@<X8>)
{
  v60 = a1;
  v61 = type metadata accessor for RoutePlanningCellViewModel(0);
  v2 = *(*(v61 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v61);
  v67 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v66 = v59 - v5;
  v6 = sub_213F4CA70();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = sub_213F4CA10();
  v65 = *(v71 - 8);
  v8 = *(v65 + 64);
  v9 = MEMORY[0x28223BE20](v71);
  v70 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = v59 - v11;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[3];
  v59[1] = v1[2];
  v62 = *(v1 + 32);
  v16 = v1[5];
  v15 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC500, &unk_213F63E20);
  inited = swift_initStackObject();
  v68 = xmmword_213F55C80;
  *(inited + 16) = xmmword_213F55C80;
  v18 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];

  v64 = v16;
  v63 = v15;
  sub_213DD74C4(v16);
  v19 = qword_281186B40;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_281186B48;
  *(inited + 64) = sub_213E15130(0, &qword_281182338, 0x277D74300);
  *(inited + 40) = v21;
  v22 = v21;
  sub_213F4B69C(inited);
  swift_setDeallocating();
  sub_213DE36FC(inited + 32, &qword_27C8FA8B8, &qword_213F5D760);
  sub_213F4CA80();
  v23 = v69;
  sub_213F4CA20();
  sub_213F4CA60();
  v24 = v70;
  sub_213F4CA20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC508, &qword_213F63E30);
  v25 = v65;
  v26 = *(v65 + 72);
  v27 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v68;
  v29 = *(v25 + 16);
  v30 = v23;
  v31 = v71;
  v29(v28 + v27, v30, v71);
  v32 = swift_allocObject();
  *(v32 + 16) = v68;
  v29(v32 + v27, v24, v31);
  v33 = v66;
  sub_213F4CB30();
  v34 = v61;
  v35 = MEMORY[0x277D84F90];
  v36 = (v33 + *(v61 + 20));
  *v36 = v28;
  v36[1] = v35;
  v37 = (v33 + v34[6]);
  *v37 = v32;
  v37[1] = v35;
  v38 = (v33 + v34[7]);
  *v38 = 0;
  v38[1] = 0;
  *(v33 + v34[8]) = 3;
  *(v33 + v34[9]) = 0;
  *(v33 + v34[10]) = 0;
  *(v33 + v34[11]) = v35;
  v39 = v67;
  sub_213F20704(v33, v67);
  KeyPath = swift_getKeyPath();
  v41 = v60;
  *v60 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC510, &qword_213F63E38);
  v43 = v42[9];
  *(v41 + v43) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v44 = v41 + v42[10];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  v45 = v41 + v42[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC518, &qword_213F63E40);
  sub_213DE3AE4(qword_281185CC8, &qword_27C8FC518, &qword_213F63E40);
  sub_213F4CE00();
  v46 = v74;
  v47 = LOBYTE(v75);
  *v45 = v73;
  *(v45 + 1) = v46;
  v45[16] = v47;
  sub_213F20704(v39, v41 + v42[11]);
  *(v41 + v42[12]) = 0;
  *(v41 + v42[13]) = v62;
  v48 = (v41 + v42[14]);
  *v48 = sub_213F38BC4;
  v48[1] = 0;
  v72 = 0;
  sub_213F4EC70();
  sub_213F3C414(v39, type metadata accessor for RoutePlanningCellViewModel);
  sub_213F3C414(v33, type metadata accessor for RoutePlanningCellViewModel);
  v49 = *(v25 + 8);
  v50 = v71;
  v49(v70, v71);
  v49(v69, v50);
  v51 = v74;
  result = v75;
  v53 = v41 + v42[20];
  *v53 = v73;
  *(v53 + 1) = v51;
  *(v53 + 2) = result;
  v54 = (v41 + v42[15]);
  v55 = v63;
  *v54 = v64;
  v54[1] = v55;
  v56 = (v41 + v42[16]);
  *v56 = 0;
  v56[1] = 0;
  v57 = (v41 + v42[17]);
  *v57 = nullsub_1;
  v57[1] = 0;
  v58 = (v41 + v42[18]);
  *v58 = 0;
  v58[1] = 0;
  return result;
}

uint64_t RideshareRouteCellViewModel.init(appIconImage:primaryText:secondaryText:tertiaryText:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

__n128 RideshareRouteCell.init(viewModel:useCompactLayout:tapHandler:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 16);
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 32) = result;
  *(a5 + 48) = v7;
  *(a5 + 56) = a2;
  *(a5 + 64) = a3;
  *(a5 + 72) = a4;
  return result;
}

uint64_t sub_213F37DF8()
{
  v1 = sub_213F4CA10();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = *v0;
  if (*v0)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D74270]);
    v5 = v3;
    v6 = [v4 init];
    [v6 setImage_];
    if (qword_27C8F73C8 != -1)
    {
      swift_once();
    }

    [qword_27C8FC498 pointSize];
    v8 = v7;
    [v5 size];
    v10 = v9;
    [v5 size];
    [v6 setBounds_];
    v12 = [objc_opt_self() attributedStringWithAttachment_];

    return v12;
  }

  else
  {
    sub_213E15130(0, &qword_2811823E0, 0x277CCA898);
    sub_213F4C9A0();
    return sub_213F4F5A0();
  }
}

double RideshareRouteCell.body.getter@<D0>(uint64_t *a1@<X8>)
{
  v99 = a1;
  v95 = type metadata accessor for RoutePlanningCellViewModel(0);
  v2 = *(*(v95 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v95);
  v98 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v97 = &v81 - v5;
  v6 = sub_213F4CA70();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v106 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_213F4CA10();
  v9 = *(v104 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v104);
  v103 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v81 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v81 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = *(v1 + 2);
  v20 = v1[3];
  v23 = v1[4];
  v22 = v1[5];
  v24 = v1[6];
  v119 = *(v1 + 56);
  *v116 = *(v1 + 57);
  *&v116[3] = *(v1 + 15);
  v25 = v1[8];
  v26 = v1[9];
  v108 = v18;
  v109 = v19;
  v110 = v21;
  v111 = v20;
  v90 = v23;
  v91 = v20;
  v112 = v23;
  v113 = v22;
  v93 = v22;
  v100 = v24;
  v101 = v26;
  v114 = v24;
  v115 = v119;
  v96 = v25;
  v117 = v25;
  v118 = v26;
  sub_213F37DF8();
  v102 = v17;
  sub_213F4CA50();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC500, &unk_213F63E20);
  inited = swift_initStackObject();
  v105 = xmmword_213F55C80;
  *(inited + 16) = xmmword_213F55C80;
  v28 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v29 = qword_27C8F73C8;
  v83 = v28;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = qword_27C8FC498;
  v82 = sub_213E15130(0, &qword_281182338, 0x277D74300);
  *(inited + 64) = v82;
  *(inited + 40) = v30;
  v31 = v30;
  sub_213F4B69C(inited);
  swift_setDeallocating();
  sub_213DE36FC(inited + 32, &qword_27C8FA8B8, &qword_213F5D760);
  sub_213F4CA80();
  sub_213F4CA20();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC508, &qword_213F63E30);
  v33 = v9;
  v34 = *(v9 + 72);
  v35 = *(v9 + 80);
  v92 = v9;
  v36 = v15;
  v37 = (v35 + 32) & ~v35;
  v38 = swift_allocObject();
  v81 = xmmword_213F51DE0;
  *(v38 + 16) = xmmword_213F51DE0;
  v89 = v38;
  v39 = v38 + v37;
  v40 = *(v33 + 16);
  v84 = v40;
  v41 = v104;
  v40(v38 + v37, v102, v104);
  v94 = v36;
  v85 = v33 + 16;
  v40(v39 + v34, v36, v41);
  v42 = swift_allocObject();
  *(v42 + 16) = v105;
  sub_213F4C9A0();
  v87 = v34;
  v88 = v32;
  v43 = swift_allocObject();
  *(v43 + 16) = v105;

  sub_213F4CA60();
  sub_213F4CA20();
  v44 = swift_initStackObject();
  *(v44 + 16) = v81;
  *(v44 + 32) = v83;
  v45 = qword_27C8F73D0;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = qword_27C8FC4A0;
  *(v44 + 40) = qword_27C8FC4A0;
  v47 = *MEMORY[0x277D740C0];
  *(v44 + 64) = v82;
  *(v44 + 72) = v47;
  v48 = objc_opt_self();
  v49 = v46;
  v50 = v47;
  v51 = [v48 labelColor];
  *(v44 + 104) = sub_213E15130(0, &qword_27C8F9680, 0x277D75348);
  *(v44 + 80) = v51;
  sub_213F4B69C(v44);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA8B8, &qword_213F5D760);
  swift_arrayDestroy();
  sub_213F4CA80();
  v52 = v103;
  sub_213F4CA20();
  v53 = swift_allocObject();
  *(v53 + 16) = v105;
  v84(v53 + v37, v52, v104);
  v54 = v97;
  sub_213F4CB30();
  v55 = v95;
  v56 = (v54 + *(v95 + 20));
  *v56 = v89;
  v56[1] = v42;
  v57 = (v54 + v55[6]);
  v58 = MEMORY[0x277D84F90];
  *v57 = v43;
  v57[1] = v58;
  v59 = (v54 + v55[7]);
  *v59 = v53;
  v59[1] = v58;
  *(v54 + v55[8]) = 4;
  *(v54 + v55[9]) = 0;
  *(v54 + v55[10]) = 0;
  *(v54 + v55[11]) = v58;
  v60 = v98;
  sub_213F20704(v54, v98);
  LODWORD(v106) = v119;
  KeyPath = swift_getKeyPath();
  v62 = v99;
  *v99 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC510, &qword_213F63E38);
  v64 = v63[9];
  *(v62 + v64) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v65 = v62 + v63[10];
  *v65 = swift_getKeyPath();
  v65[8] = 0;
  v66 = v62 + v63[19];
  v67 = v96;
  sub_213DD74C4(v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC518, &qword_213F63E40);
  sub_213DE3AE4(qword_281185CC8, &qword_27C8FC518, &qword_213F63E40);
  sub_213F4CE00();
  v68 = v109;
  v69 = LOBYTE(v110);
  *v66 = LOBYTE(v108);
  *(v66 + 1) = v68;
  v66[16] = v69;
  sub_213F20704(v60, v62 + v63[11]);
  *(v62 + v63[12]) = 0;
  *(v62 + v63[13]) = v106;
  v70 = (v62 + v63[14]);
  *v70 = sub_213F38BC4;
  v70[1] = 0;
  v107 = 0;
  sub_213F4EC70();
  sub_213F3C414(v60, type metadata accessor for RoutePlanningCellViewModel);
  sub_213F3C414(v54, type metadata accessor for RoutePlanningCellViewModel);
  v71 = *(v92 + 8);
  v72 = v104;
  v71(v103, v104);
  v71(v94, v72);
  v71(v102, v72);
  v73 = v109;
  result = v110;
  v75 = v62 + v63[20];
  *v75 = v108;
  *(v75 + 1) = v73;
  *(v75 + 2) = result;
  v76 = (v62 + v63[15]);
  v77 = v101;
  *v76 = v67;
  v76[1] = v77;
  v78 = (v62 + v63[16]);
  *v78 = 0;
  v78[1] = 0;
  v79 = (v62 + v63[17]);
  *v79 = nullsub_1;
  v79[1] = 0;
  v80 = (v62 + v63[18]);
  *v80 = 0;
  v80[1] = 0;
  return result;
}

uint64_t sub_213F38830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8460, &unk_213F53C68);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_213DE3164(a1, &v6 - v4, &qword_27C8F8460, &unk_213F53C68);
  return sub_213F4D6C0();
}

void sub_213F388D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x216052C90](v3);
  if (v3)
  {
    v4 = (a2 + 57);
    do
    {
      v6 = *(v4 - 25);
      v7 = *(v4 - 17);
      v8 = *(v4 - 9);
      v9 = *(v4 - 1);
      v10 = *v4;
      sub_213F4F8A0();
      if (v6)
      {
        v5 = v6;

        v6 = v5;
        sub_213F4F620();
      }

      else
      {
      }

      sub_213F4F2C0();
      sub_213F4F8A0();
      sub_213F4F8A0();

      v4 += 32;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_213F389D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return sub_213F4F8A0();
  }

  sub_213F4F8A0();
  v5 = *(a2 + 16);
  MEMORY[0x216052C90](v5);
  if (v5)
  {
    v6 = *(sub_213F4CA10() - 8);
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    sub_213F39194(&qword_27C8F9F90, MEMORY[0x277CC8C40]);
    do
    {
      sub_213F4F1B0();
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  v9 = *(a3 + 16);
  result = MEMORY[0x216052C90](v9);
  if (v9)
  {
    v11 = *(sub_213F4CA10() - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    sub_213F39194(&qword_27C8F9F90, MEMORY[0x277CC8C40]);
    do
    {
      result = sub_213F4F1B0();
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_213F38BD0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_213F4F360();
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
    v5 = MEMORY[0x216052740](15, a1 >> 16);
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

unint64_t sub_213F38C4C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_213F38F70(a1, a3, a4);
  v8 = sub_213F38F70(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_213F4F2A0();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_213F4F750();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_213F4F2B0();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_213F4F750();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_213F38E5C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_213F4F750();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_213F38F70(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_213F39008(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_213F38E5C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_213F39008(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_213F38BD0(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s10MapsDesign17AdvisoryViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 25);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v17 = *(a1 + 25);
    sub_213E15130(0, &qword_281182320, 0x277D755B8);
    v11 = v7;
    v12 = v3;
    v13 = sub_213F4F610();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = *(a1 + 25);
    if (v7)
    {
      return 0;
    }
  }

  if (v2 == v6 && v4 == v8)
  {
    if (v5 == v9)
    {
      return v17 ^ v10 ^ 1u;
    }

    return 0;
  }

  v15 = sub_213F4F830();
  result = 0;
  if ((v15 & 1) != 0 && ((v5 ^ v9) & 1) == 0)
  {
    return v17 ^ v10 ^ 1u;
  }

  return result;
}

uint64_t sub_213F39194(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213F391DC()
{
  result = qword_281183270;
  if (!qword_281183270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B0, &unk_213F63DC0);
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183270);
  }

  return result;
}

unint64_t sub_213F39294()
{
  result = qword_281183280;
  if (!qword_281183280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
    sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183280);
  }

  return result;
}

uint64_t sub_213F393D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_213F36904(v1[4], a1);
}

unint64_t sub_213F393F8()
{
  result = qword_27C8FC520;
  if (!qword_27C8FC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC520);
  }

  return result;
}

unint64_t sub_213F39450()
{
  result = qword_27C8FC528;
  if (!qword_27C8FC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC528);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_213F3957C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213F395C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoutePlanningCellPrimaryActionStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoutePlanningCellPrimaryActionStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_213F39790()
{
  sub_213F4CB40();
  if (v0 <= 0x3F)
  {
    sub_213F39AD8(319, qword_281184B78, &type metadata for MultiPartLabelViewModel, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_213F39AD8(319, &qword_2811824D0, &type metadata for AdvisoryViewModel, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213F39898(uint64_t a1)
{
  sub_213E61E68(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v2 <= 0x3F)
  {
    sub_213E61E68(319, &qword_281183528, MEMORY[0x277CDF3E0]);
    if (v3 <= 0x3F)
    {
      sub_213F39AD8(319, &qword_281183500, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v4 <= 0x3F)
      {
        type metadata accessor for RoutePlanningCellViewModel(319);
        if (v5 <= 0x3F)
        {
          sub_213DE22E8();
          if (v6 <= 0x3F)
          {
            sub_213E0C0F8();
            if (v7 <= 0x3F)
            {
              v8 = *(a1 + 16);
              v9 = *(a1 + 24);
              type metadata accessor for RoutePlanningCell.NestedFocusState();
              sub_213F4F6B0();
              swift_getWitnessTable();
              swift_getWitnessTable();
              sub_213F4CE10();
              if (v10 <= 0x3F)
              {
                sub_213F39AD8(319, &qword_281182630, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
                if (v11 <= 0x3F)
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

void sub_213F39AD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_213F39B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_213F39B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213F39BE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213F39C28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213F39C84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213F39CCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213F39D30(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213F39DB8(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_213F39F1C(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *(a1 + v9) = v14;
              }

              else
              {
                *(a1 + v9) = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        *(a1 + 2) = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      *(a1 + v9) = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *(a1 + v9) = 0;
  }

  else if (v12)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

  v18(v19);
}

void sub_213F3A1A4()
{
  sub_213E61E68(319, &qword_281183528, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_213E61E68(319, &qword_281183520, MEMORY[0x277CDF7E8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_213F3A300()
{
  result = qword_27C8FC5A0;
  if (!qword_27C8FC5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC548, &qword_213F64490);
    sub_213F3A3B8();
    sub_213DE3AE4(&qword_281182C08, &qword_27C8F8430, &qword_213F53C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC5A0);
  }

  return result;
}

unint64_t sub_213F3A3B8()
{
  result = qword_27C8FC5A8;
  if (!qword_27C8FC5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC540, &qword_213F64488);
    sub_213DE3AE4(&qword_27C8FC5B0, &qword_27C8FC538, &qword_213F64480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC5A8);
  }

  return result;
}

unint64_t sub_213F3A470()
{
  result = qword_281182AE0;
  if (!qword_281182AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC580, &unk_213F644C8);
    sub_213F3C6EC(&qword_281182ED0, &qword_27C8FC590, &qword_213F644E0, sub_213F3A528);
    sub_213F3A5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AE0);
  }

  return result;
}

unint64_t sub_213F3A528()
{
  result = qword_281183080;
  if (!qword_281183080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC588, &qword_213F644D8);
    sub_213E29BA4();
    sub_213DE3AE4(&qword_281182C08, &qword_27C8F8430, &qword_213F53C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183080);
  }

  return result;
}

unint64_t sub_213F3A5E0()
{
  result = qword_281182D58;
  if (!qword_281182D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC568, &qword_213F644B0);
    sub_213F3A66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D58);
  }

  return result;
}

unint64_t sub_213F3A66C()
{
  result = qword_281182E20;
  if (!qword_281182E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC560, &qword_213F644A8);
    sub_213F3A724();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E20);
  }

  return result;
}

unint64_t sub_213F3A724()
{
  result = qword_281182FC0;
  if (!qword_281182FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC558, &qword_213F644A0);
    sub_213DE2CCC();
    sub_213DE3AE4(&qword_281182868, &qword_27C8FC5B8, &unk_213F644F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FC0);
  }

  return result;
}

unint64_t sub_213F3A7DC()
{
  result = qword_2811832F0;
  if (!qword_2811832F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC5E0, &qword_213F64588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC678, &qword_213F64620);
    sub_213F3A8A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832F0);
  }

  return result;
}

unint64_t sub_213F3A8A4()
{
  result = qword_281182D90;
  if (!qword_281182D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC678, &qword_213F64620);
    sub_213F3A95C();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D90);
  }

  return result;
}

unint64_t sub_213F3A95C()
{
  result = qword_281182E50;
  if (!qword_281182E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC680, &qword_213F64628);
    sub_213F3AA14();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E50);
  }

  return result;
}

unint64_t sub_213F3AA14()
{
  result = qword_281182FE0;
  if (!qword_281182FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC688, &qword_213F64630);
    sub_213F3AAA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FE0);
  }

  return result;
}

unint64_t sub_213F3AAA0()
{
  result = qword_281183240;
  if (!qword_281183240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC690, &qword_213F64638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183240);
  }

  return result;
}

unint64_t sub_213F3AB24()
{
  result = qword_27C8FC698;
  if (!qword_27C8FC698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC600, &qword_213F645A8);
    sub_213F3ABDC();
    sub_213DE3AE4(&qword_27C8FC6C0, &qword_27C8FC5E8, &qword_213F64590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC698);
  }

  return result;
}

unint64_t sub_213F3ABDC()
{
  result = qword_281182AD8;
  if (!qword_281182AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC670, &qword_213F64618);
    sub_213F3AC68();
    sub_213F3B088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AD8);
  }

  return result;
}

unint64_t sub_213F3AC68()
{
  result = qword_281182CC8;
  if (!qword_281182CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC668, &qword_213F64610);
    sub_213F3ACF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CC8);
  }

  return result;
}

unint64_t sub_213F3ACF4()
{
  result = qword_281182D18;
  if (!qword_281182D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC660, &qword_213F64608);
    sub_213F3AD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D18);
  }

  return result;
}

unint64_t sub_213F3AD80()
{
  result = qword_281182DA8;
  if (!qword_281182DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC658, &qword_213F64600);
    sub_213F3AE0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182DA8);
  }

  return result;
}

unint64_t sub_213F3AE0C()
{
  result = qword_281182E88;
  if (!qword_281182E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC650, &qword_213F645F8);
    sub_213F3AE98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E88);
  }

  return result;
}

unint64_t sub_213F3AE98()
{
  result = qword_281183028;
  if (!qword_281183028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC648, &qword_213F645F0);
    sub_213F3AF50();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183028);
  }

  return result;
}

unint64_t sub_213F3AF50()
{
  result = qword_2811832E8;
  if (!qword_2811832E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC640, &qword_213F645E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC630, &qword_213F645D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8980, &unk_213F55A40);
    sub_213E0C270();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_2811828A8, &qword_27C8FC6A0, &qword_213F64640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832E8);
  }

  return result;
}

unint64_t sub_213F3B088()
{
  result = qword_281182E90;
  if (!qword_281182E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC620, &qword_213F645C8);
    sub_213F3B114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E90);
  }

  return result;
}

unint64_t sub_213F3B114()
{
  result = qword_281183030;
  if (!qword_281183030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC618, &qword_213F645C0);
    sub_213F3B1A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183030);
  }

  return result;
}

unint64_t sub_213F3B1A0()
{
  result = qword_2811832F8;
  if (!qword_2811832F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC610, &qword_213F645B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC6A8, &qword_213F64648);
    sub_213F3B268();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832F8);
  }

  return result;
}

unint64_t sub_213F3B268()
{
  result = qword_281182F50;
  if (!qword_281182F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC6A8, &qword_213F64648);
    sub_213F3B2F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F50);
  }

  return result;
}

unint64_t sub_213F3B2F4()
{
  result = qword_281183188;
  if (!qword_281183188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC6B0, &qword_213F64650);
    sub_213DE3AE4(&qword_281182690, &qword_27C8FC6B8, &qword_213F64658);
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183188);
  }

  return result;
}

unint64_t sub_213F3B3D8()
{
  result = qword_281182B38;
  if (!qword_281182B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC5D0, &qword_213F64578);
    sub_213F3A7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B38);
  }

  return result;
}

unint64_t sub_213F3B464()
{
  result = qword_281182F48;
  if (!qword_281182F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC720, &qword_213F64718);
    sub_213F3B51C();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F48);
  }

  return result;
}

unint64_t sub_213F3B51C()
{
  result = qword_281183180;
  if (!qword_281183180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC728, &qword_213F64720);
    sub_213DE3AE4(&qword_281182690, &qword_27C8FC6B8, &qword_213F64658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183180);
  }

  return result;
}

unint64_t sub_213F3B5D4()
{
  result = qword_27C8FC738;
  if (!qword_27C8FC738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC730, &qword_213F64758);
    sub_213F3B68C();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC738);
  }

  return result;
}

unint64_t sub_213F3B68C()
{
  result = qword_27C8FC740;
  if (!qword_27C8FC740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC748, &qword_213F64760);
    sub_213E50DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC740);
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for RoutePlanningCell();
  v4 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = (v0 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_213F4D290();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = v3[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_213F4CEA0();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
    v11 = *&v6[v9];
  }

  sub_213E053BC(*&v6[v3[10]], v6[v3[10] + 8]);
  v12 = &v6[v3[11]];
  v13 = sub_213F4CB40();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = type metadata accessor for RoutePlanningCellViewModel(0);
  v15 = &v12[v14[5]];
  v16 = *v15;

  v17 = *(v15 + 1);

  v18 = &v12[v14[6]];
  if (*v18)
  {

    v19 = *(v18 + 1);
  }

  v20 = &v12[v14[7]];
  if (*v20)
  {

    v21 = *(v20 + 1);
  }

  v22 = *&v12[v14[11]];

  v23 = *&v6[v3[14] + 8];

  v24 = &v6[v3[15]];
  if (*v24)
  {
    v25 = *(v24 + 1);
  }

  v26 = &v6[v3[16]];
  if (*v26)
  {
    v27 = *(v26 + 1);
  }

  v28 = *&v6[v3[17] + 8];

  v29 = &v6[v3[18]];
  if (*v29)
  {
    v30 = *(v29 + 1);
  }

  v31 = *&v6[v3[19] + 8];

  v32 = &v6[v3[20]];
  v33 = *v32;

  v34 = *(v32 + 1);

  return swift_deallocObject();
}

uint64_t sub_213F3BA14(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for RoutePlanningCell() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_213F3BADC(_BYTE *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for RoutePlanningCell() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_213F320A8(a1, v1 + v6, v8);
}

uint64_t sub_213F3BBBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for RoutePlanningCell() - 8);
  v8 = (v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));

  return sub_213F2CAFC(a1, v8, v5, v6, a2);
}

uint64_t sub_213F3BC60(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1, a1 + 1);
}

uint64_t sub_213F3BC90()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  if (*(v0 + 57))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v7 = *(v0 + 32);
  v8 = v3;
  v9 = v5 | v4;
  return v2(&v7);
}

unint64_t sub_213F3BCF4()
{
  result = qword_281182EC0;
  if (!qword_281182EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC760, &qword_213F647A0);
    sub_213F3C6EC(&qword_281183070, &qword_27C8F9640, &qword_213F584C8, sub_213E3D854);
    sub_213DE3AE4(&qword_281182BE0, &qword_27C8FC798, &qword_213F647E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182EC0);
  }

  return result;
}

uint64_t objectdestroy_118Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

unint64_t sub_213F3BE54()
{
  result = qword_281183388;
  if (!qword_281183388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
    sub_213F3BF0C();
    sub_213DE3AE4(&qword_281182918, &qword_27C8F7940, &qword_213F51AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183388);
  }

  return result;
}

unint64_t sub_213F3BF0C()
{
  result = qword_281182A10;
  if (!qword_281182A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7A8, &qword_213F647F8);
    sub_213F3BF90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A10);
  }

  return result;
}

unint64_t sub_213F3BF90()
{
  result = qword_281182A18;
  if (!qword_281182A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7B0, &qword_213F64800);
    sub_213F3C01C();
    sub_213F3C29C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A18);
  }

  return result;
}

unint64_t sub_213F3C01C()
{
  result = qword_281182AB0;
  if (!qword_281182AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7B8, &qword_213F64808);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7C0, &qword_213F64810);
    sub_213F3C6EC(&qword_281182D98, &qword_27C8FC7C0, &qword_213F64810, sub_213F3C1E4);
    sub_213DE295C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7E8, &qword_213F64838);
    sub_213F4DCA0();
    sub_213DE3AE4(&qword_281182770, &qword_27C8FC7E8, &qword_213F64838);
    sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AB0);
  }

  return result;
}

unint64_t sub_213F3C1E4()
{
  result = qword_281182E60;
  if (!qword_281182E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7C8, &qword_213F64818);
    sub_213F3C29C();
    sub_213DE3AE4(qword_2811844D8, &qword_27C8FC7E0, &qword_213F64830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E60);
  }

  return result;
}

unint64_t sub_213F3C29C()
{
  result = qword_281182FF8;
  if (!qword_281182FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7D0, &qword_213F64820);
    sub_213F3C328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FF8);
  }

  return result;
}

unint64_t sub_213F3C328()
{
  result = qword_2811832A0;
  if (!qword_2811832A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7D8, &qword_213F64828);
    type metadata accessor for RoutePlanningCellPrimaryActionLabel(255);
    sub_213F39194(qword_281183A78, type metadata accessor for RoutePlanningCellPrimaryActionLabel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832A0);
  }

  return result;
}

uint64_t sub_213F3C414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_213F3C500()
{
  result = qword_281183448;
  if (!qword_281183448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC838, &qword_213F64888);
    sub_213E66C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183448);
  }

  return result;
}

unint64_t sub_213F3C58C()
{
  result = qword_281183110;
  if (!qword_281183110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
    sub_213F3C6EC(&qword_281183118, &qword_27C8FC4B8, &qword_213F63DD0, sub_213F3C500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183110);
  }

  return result;
}

unint64_t sub_213F3C63C()
{
  result = qword_281182E78;
  if (!qword_281182E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
    sub_213F3C6EC(&qword_281182E80, &qword_27C8FC830, &qword_213F64880, sub_213F3C7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E78);
  }

  return result;
}

uint64_t sub_213F3C6EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_213F39194(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213F3C7A0()
{
  result = qword_281183020;
  if (!qword_281183020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC828, &qword_213F64878);
    sub_213F3C82C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183020);
  }

  return result;
}

unint64_t sub_213F3C82C()
{
  result = qword_2811832E0;
  if (!qword_2811832E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC820, &qword_213F64870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC818, &qword_213F64868);
    sub_213F4DCA0();
    sub_213DE3AE4(&qword_281182788, &qword_27C8FC818, &qword_213F64868);
    sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832E0);
  }

  return result;
}

uint64_t sub_213F3C978()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for RoutePlanningCell();
  v4 = v0 + *(v3 + 68) + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  v5 = *(v4 + 8);
  return (*v4)();
}

uint64_t sub_213F3C9E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_213F3CA40(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(type metadata accessor for RoutePlanningCell() - 8) + 80);
  return sub_213F31BCC(a1);
}

unint64_t sub_213F3CAC0()
{
  result = qword_27C8FC840;
  if (!qword_27C8FC840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC848, &unk_213F64890);
    sub_213F3A470();
    sub_213F3C6EC(&qword_27C8FC5C0, &qword_27C8FC550, &qword_213F64498, sub_213F3A300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC840);
  }

  return result;
}

uint64_t sub_213F3CB80(uint64_t a1)
{
  sub_213E29028();
  sub_213F4EA90();
  return a1;
}

uint64_t sub_213F3CBD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213F3CC1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_213F3CC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213F3CD00@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v32 = a1;
  v36 = a7;
  v11 = *(a5 - 8);
  v34 = a6;
  v35 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC850, &unk_213F64960);
  v15 = sub_213F4D400();
  v33 = *(v15 - 8);
  v16 = *(v33 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  v46 = a3;
  v47 = a4;
  v22 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC858, &qword_213F64FC0);
  sub_213F4EAA0();
  v23 = v45;
  v24 = a2;
  v25 = v32;
  v32(v45);

  v26 = v34;
  v37 = a5;
  v38 = v34;
  v39 = v25;
  v40 = v24;
  v41 = a3;
  v42 = v22;
  sub_213F4EEE0();
  sub_213F3D030();
  sub_213F4E350();
  (*(v35 + 8))(v14, a5);
  v27 = sub_213F3D084();
  v43 = v26;
  v44 = v27;
  WitnessTable = swift_getWitnessTable();
  sub_213DBFEEC(v19, v15, WitnessTable);
  v29 = *(v33 + 8);
  v29(v19, v15);
  sub_213DBFEEC(v21, v15, WitnessTable);
  return (v29)(v21, v15);
}

uint64_t sub_213F3CFD8@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC858, &qword_213F64FC0);
  result = sub_213F4EAA0();
  *a1 = v4;
  return result;
}

unint64_t sub_213F3D030()
{
  result = qword_281185B88;
  if (!qword_281185B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281185B88);
  }

  return result;
}

unint64_t sub_213F3D084()
{
  result = qword_281182C18;
  if (!qword_281182C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC850, &unk_213F64960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182C18);
  }

  return result;
}

uint64_t sub_213F3D0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F3D1EC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213F3D160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F3D1EC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213F3D1C4()
{
  sub_213F3D1EC();
  sub_213F4DB60();
  __break(1u);
}

unint64_t sub_213F3D1EC()
{
  result = qword_281185B90[0];
  if (!qword_281185B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281185B90);
  }

  return result;
}

uint64_t type metadata accessor for ClipShadowModifier()
{
  result = qword_281185A90;
  if (!qword_281185A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213F3D2B4()
{
  result = sub_213F4D950();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213F3D370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v13 = *(v2 + 1);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC888, &qword_213F64BC0);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC890, &qword_213F64BC8) + 36)) = 256;
  v8 = sub_213F4EEE0();
  v10 = v9;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC898, &qword_213F64BD0) + 36);
  *v11 = v5;
  *(v11 + 8) = v13;
  *(v11 + 24) = v6;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
}

uint64_t sub_213F3D490@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = a2[5];
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC860, &unk_213F64B90) + 36));
  v9 = sub_213F4D470();
  v10 = *(v9 + 20);
  v11 = sub_213F4D950();
  v12 = *(*(v11 - 8) + 16);
  v12(&v8[v10], v3 + v7, v11);
  *v8 = v6;
  *(v8 + 1) = v6;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)] = 256;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC868, &qword_213F64BA0);
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  v25 = sub_213F4EEE0();
  v15 = v14;
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC870, &qword_213F64BA8) + 36));
  v12(&v16[*(v9 + 20)], v3 + v7, v11);
  *v16 = v6;
  *(v16 + 1) = v6;
  v17 = *(v3 + a2[6]);
  v18 = *(v3 + a2[7]);
  v19 = *(v3 + a2[8]);
  v20 = *(v3 + a2[9]);
  v21 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC878, &qword_213F64BB0) + 36)];
  *v21 = v17;
  *(v21 + 1) = v18;
  *(v21 + 2) = v19;
  *(v21 + 3) = v20;
  v22 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC880, &qword_213F64BB8) + 36)];
  *v22 = v25;
  v22[1] = v15;
}

unint64_t sub_213F3D690()
{
  result = qword_27C8FC8A0;
  if (!qword_27C8FC8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC870, &qword_213F64BA8);
    sub_213F3D748();
    sub_213DE3AE4(&qword_27C8FC8A8, &qword_27C8FC880, &qword_213F64BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC8A0);
  }

  return result;
}

unint64_t sub_213F3D748()
{
  result = qword_281183368;
  if (!qword_281183368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC860, &unk_213F64B90);
    sub_213DE3AE4(&qword_281182950, &qword_27C8FC868, &qword_213F64BA0);
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183368);
  }

  return result;
}

unint64_t sub_213F3D82C()
{
  result = qword_2811830A0;
  if (!qword_2811830A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC898, &qword_213F64BD0);
    sub_213F3D8E4();
    sub_213DE3AE4(&qword_281182BF8, &qword_27C8FC8B8, &unk_213F64BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811830A0);
  }

  return result;
}

unint64_t sub_213F3D8E4()
{
  result = qword_281183360;
  if (!qword_281183360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC890, &qword_213F64BC8);
    sub_213DE3AE4(&qword_281182948, &qword_27C8FC888, &qword_213F64BC0);
    sub_213DE3AE4(&qword_2811834D8, &qword_27C8FC8B0, &qword_213F64BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183360);
  }

  return result;
}

uint64_t static Color.mapsDesignColor(_:)(uint64_t a1, uint64_t a2)
{
  sub_213E621D4();
  v4 = sub_213F4F600();
  if (!v4)
  {
    v4 = [objc_opt_self() mainBundle];
  }

  return MEMORY[0x282133540](a1, a2, v4);
}

uint64_t sub_213F3DA6C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for ImageComposerViewModel(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();

  sub_213F4CB30();
  v12 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  sub_213F4CBB0();
  *(v11 + v12) = a1;
  v13 = (v11 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  *v13 = a2;
  v13[1] = a3;
  *(v11 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder) = a4;
  v14 = a1;
  return v11;
}

uint64_t ImageComposerViewModel.__allocating_init(image:colorGradient:isCityPlaceholder:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_213F4CB30();
  v12 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  sub_213F4CBB0();
  *(v11 + v12) = a1;
  v13 = (v11 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  *v13 = a2;
  v13[1] = a3;
  *(v11 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder) = a4;
  return v11;
}

uint64_t sub_213F3DC3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213F3DD34(uint64_t a1, uint64_t *a2)
{
  v4 = sub_213F4CB40();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_213F3DEF8(v7);
}

uint64_t sub_213F3DE00@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213F3DEF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_213F3F4BC(&qword_27C8F8BF8, MEMORY[0x277CC95F0]);
  v15[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
    sub_213F4CB70();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_213F3E198(uint64_t a1, uint64_t a2)
{
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void (*sub_213F3E2B4(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F3DBDC();
  return sub_213F3E3EC;
}

id sub_213F3E458@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_213F3E52C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_213F3E620(v2);
}

void *sub_213F3E55C()
{
  swift_getKeyPath();
  v5 = v0;
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
  sub_213F4CB80();

  v1 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

void sub_213F3E620(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
    sub_213F4CB70();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_213F3F53C();
  v6 = v5;
  v7 = a1;
  v8 = sub_213F4F610();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_213F3E79C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

void (*sub_213F3E80C(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F3E3F8();
  return sub_213F3E944;
}

uint64_t sub_213F3E9B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
  sub_213F4CB80();

  v4 = (v3 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_213F3EA84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);

  sub_213F4CB70();
}

uint64_t sub_213F3EB80()
{
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
  sub_213F4CB80();

  v1 = (v0 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_213F3EC58()
{
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
  sub_213F4CB70();
}

uint64_t sub_213F3ED40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  *v5 = a2;
  v5[1] = a3;
}

void (*sub_213F3EDCC(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F3E950();
  return sub_213F3EF04;
}

uint64_t sub_213F3EF70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_213F3F05C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
  sub_213F4CB80();

  v1 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_213F3F118(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
    sub_213F4CB70();
  }

  return result;
}

void (*sub_213F3F244(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F3EF10();
  return sub_213F3F37C;
}

uint64_t ImageComposerViewModel.init(image:colorGradient:isCityPlaceholder:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_213F4CB40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4CB30();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id, v13, v9);
  v14 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  *(v4 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image) = 0;
  sub_213F4CBB0();

  *(v4 + v14) = a1;
  v15 = (v4 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  *v15 = a2;
  v15[1] = a3;
  *(v4 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder) = a4;
  return v4;
}

uint64_t sub_213F3F4BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213F3F53C()
{
  result = qword_281182320;
  if (!qword_281182320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281182320);
  }

  return result;
}

uint64_t sub_213F3F5A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t ImageComposerViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v4 = *(v0 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  v3 = *(v0 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient + 8);

  v5 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel___observationRegistrar;
  v6 = sub_213F4CBC0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t ImageComposerViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v4 = *(v0 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  v3 = *(v0 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient + 8);

  v5 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel___observationRegistrar;
  v6 = sub_213F4CBC0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_213F3F820@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_213F3F920()
{
  result = sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_213F4CBC0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_213F3FC4C()
{
  sub_213DE59D4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ImageComposerViewModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_213F3FCEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v87 = a2;
  v80 = sub_213F4EF90();
  v79 = *(v80 - 8);
  v3 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_213F4CEA0();
  v71 = *(v72 - 8);
  v5 = *(v71 + 64);
  v6 = MEMORY[0x28223BE20](v72);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = &v65 - v8;
  v9 = sub_213F4EA00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F30, &qword_213F5A7E8);
  v14 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v74 = &v65 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC8D8, &qword_213F64DE0);
  v85 = *(v86 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v86);
  v77 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v76 = &v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC8E0, &unk_213F64DE8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v84 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v83 = &v65 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C8, &qword_213F57320);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_213F51DE0;
  v26 = *(type metadata accessor for ImageComposerView(0) + 20);
  v73 = a1;
  v27 = *(a1 + v26);
  swift_getKeyPath();
  v91 = v27;
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel);
  sub_213F4CB80();

  v28 = (v27 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  swift_beginAccess();
  *(v25 + 32) = *v28;
  swift_getKeyPath();
  v91 = v27;

  sub_213F4CB80();

  *(v25 + 40) = v28[1];

  sub_213F4F020();
  sub_213F4F030();
  MEMORY[0x2160521D0](v25);
  sub_213F4D2C0();
  v29 = v91;
  v81 = v93;
  v82 = v92;
  swift_getKeyPath();
  v90 = v27;
  sub_213F4CB80();

  v30 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  swift_beginAccess();
  v31 = *(v27 + v30);
  if (v31)
  {
    v68 = v29;
    v67 = v31;
    sub_213F4E9D0();
    v32 = v10;
    (*(v10 + 104))(v13, *MEMORY[0x277CE0FE0], v9);
    v33 = sub_213F4EA40();

    (*(v32 + 8))(v13, v9);
    swift_getKeyPath();
    v89 = v27;
    sub_213F4CB80();

    v34 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder;
    swift_beginAccess();
    v35 = 1.0;
    if (*(v27 + v34) == 1)
    {
      v66 = v33;
      v36 = v69;
      sub_213EA8894(v69);
      v37 = v71;
      v38 = v70;
      v39 = v72;
      (*(v71 + 104))(v70, *MEMORY[0x277CDF3D0], v72);
      v40 = sub_213F4CE90();
      v41 = *(v37 + 8);
      v41(v38, v39);
      v42 = v36;
      v33 = v66;
      v41(v42, v39);
      if (v40)
      {
        v35 = 1.5;
      }

      else
      {
        v35 = 1.1;
      }
    }

    swift_getKeyPath();
    v88 = v27;
    sub_213F4CB80();

    v43 = v79;
    if (*(v27 + v34))
    {
      v44 = MEMORY[0x277CE13F0];
    }

    else
    {
      v44 = MEMORY[0x277CE13D8];
    }

    v45 = v78;
    v46 = v80;
    (*(v79 + 104))(v78, *v44, v80);
    v47 = v74;
    (*(v43 + 32))(&v74[*(v75 + 36)], v45, v46);
    *v47 = v33;
    *(v47 + 8) = 0;
    *(v47 + 16) = 1;
    *(v47 + 24) = v35;
    swift_getKeyPath();
    v88 = v27;
    sub_213F4CB80();

    if (*(v27 + v34))
    {
      v48 = 1.1;
    }

    else
    {
      v48 = 0.8;
    }

    sub_213F4F040();
    v50 = v49;
    v52 = v51;

    v53 = v77;
    sub_213DE2B44(v47, v77, &qword_27C8F9F30, &qword_213F5A7E8);
    v54 = v86;
    v55 = v53 + *(v86 + 36);
    *v55 = v48;
    *(v55 + 8) = v48;
    *(v55 + 16) = v50;
    *(v55 + 24) = v52;
    v56 = v53;
    v57 = v76;
    sub_213DE2B44(v56, v76, &qword_27C8FC8D8, &qword_213F64DE0);
    v58 = v57;
    v59 = v83;
    sub_213DE2B44(v58, v83, &qword_27C8FC8D8, &qword_213F64DE0);
    v60 = 0;
    v29 = v68;
  }

  else
  {
    v60 = 1;
    v54 = v86;
    v59 = v83;
  }

  (*(v85 + 56))(v59, v60, 1, v54);
  v61 = v84;
  sub_213F406DC(v59, v84);
  v62 = v87;
  *v87 = v29;
  *(v62 + 3) = v81;
  *(v62 + 1) = v82;
  *(v62 + 20) = 256;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC8E8, &qword_213F64DF8);
  sub_213F406DC(v61, v62 + *(v63 + 48));

  sub_213F4074C(v59);
  sub_213F4074C(v61);
}

uint64_t sub_213F40668@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_213F4EEE0();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC8C8, &qword_213F64DC8);
  sub_213F3FCEC(v1, (a1 + *(v4 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC8D0, &unk_213F64DD0);
  v6 = a1 + *(result + 36);
  *v6 = 0x3FF0000000000000;
  *(v6 + 4) = 0;
  return result;
}

uint64_t sub_213F406DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC8E0, &unk_213F64DE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213F4074C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC8E0, &unk_213F64DE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_213F407B4()
{
  result = qword_27C8FC8F0;
  if (!qword_27C8FC8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC8D0, &unk_213F64DD0);
    sub_213F40840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC8F0);
  }

  return result;
}

unint64_t sub_213F40840()
{
  result = qword_27C8FC8F8;
  if (!qword_27C8FC8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC900, qword_213F64E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC8F8);
  }

  return result;
}

id static UIImage.mapsDesignImage(_:)()
{
  sub_213E621D4();
  v0 = sub_213F4F600();
  if (!v0)
  {
    v0 = [objc_opt_self() mainBundle];
  }

  v1 = v0;
  v2 = sub_213F4F220();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1];

  return v3;
}

uint64_t static Image.mapsDesignImage(_:)(uint64_t a1, uint64_t a2)
{
  sub_213E621D4();
  v4 = sub_213F4F600();
  if (!v4)
  {
    v4 = [objc_opt_self() mainBundle];
  }

  return MEMORY[0x2821336E0](a1, a2, v4);
}

uint64_t ImageProvidingSpecs.init(preferredSize:displayScale:darkMode:isRightToLeft:isCarPlay:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a7;
  *(a4 + 24) = result;
  *(a4 + 25) = a2;
  *(a4 + 26) = a3;
  return result;
}

void ImageProvidingSpecs.withPreferredSize(_:displayScale:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v5 = v4[24];
  v6 = v4[25];
  v7 = v4[26];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = v5;
  *(a1 + 25) = v6;
  *(a1 + 26) = v7;
}

double ImageProvidingSpecs.withEnvironments(colorScheme:layoutDirection:interfaceIdiom:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v24 = a1;
  v25 = a2;
  v26 = sub_213F4D290();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_213F4D3B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_213F4CEA0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v4;
  v20 = *(v4 + 2);
  (*(v16 + 104))(v19, *MEMORY[0x277CDF3C0], v15);
  v21 = sub_213F4CE90();
  (*(v16 + 8))(v19, v15);
  (*(v11 + 104))(v14, *MEMORY[0x277CDFA90], v10);
  LOBYTE(v16) = sub_213F4D3A0();
  (*(v11 + 8))(v14, v10);
  sub_213F4D280();
  LOBYTE(v10) = sub_213F4D270();
  (*(v6 + 8))(v9, v26);
  result = *&v23;
  *a4 = v23;
  *(a4 + 16) = v20;
  *(a4 + 24) = v21 & 1;
  *(a4 + 25) = v16 & 1;
  *(a4 + 26) = v10 & 1;
  return result;
}

double ImageProvidingSpecs.preferredSize.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_213F40DC4(uint64_t a1)
{
  result = sub_213F414D0(&qword_281182318, sub_213F3F53C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213F40E24(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_213F40EA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 27))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_213F40EFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_213F40F80()
{
  v1 = OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MapsDesignStaticImageProvider()
{
  result = qword_27C8FC918;
  if (!qword_27C8FC918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213F41090()
{
  result = sub_213F4CB40();
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

void sub_213F41174(uint64_t a1, void (*a2)(void *))
{
  v4 = *(*v2 + OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_image);
  v5 = v4;
  a2(v4);
}

void *sub_213F411E4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_placeholderImage);
  v2 = v1;
  return v1;
}

uint64_t sub_213F41218@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_id;
  v5 = sub_213F4CB40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_213F412A0()
{
  v1 = *v0;
  sub_213F4F880();
  v2 = *(v1 + OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_image);
  sub_213F4F8A0();
  if (v2)
  {
    v3 = v2;
    sub_213F4F620();
  }

  return sub_213F4F8C0();
}

void sub_213F4131C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_image);
  if (v1)
  {
    sub_213F4F8A0();
    v2 = v1;
    sub_213F4F620();
  }

  else
  {
    sub_213F4F8A0();
  }
}

uint64_t sub_213F413B8()
{
  sub_213F4F880();
  v1 = *(*v0 + OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_image);
  sub_213F4F8A0();
  if (v1)
  {
    v2 = v1;
    sub_213F4F620();
  }

  return sub_213F4F8C0();
}

uint64_t sub_213F41478(uint64_t a1)
{
  result = sub_213F414D0(&qword_27C8FC930, type metadata accessor for MapsDesignStaticImageProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213F414D0(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_213F41518(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_image);
  v3 = *(a2 + OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_image);
  result = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_213F3F53C();
    v6 = v3;
    v7 = v2;
    v8 = sub_213F4F610();

    return v8 & 1;
  }

  return result;
}

uint64_t View.insetGroupedSectionBackground(cornerRadius:)(uint64_t a1, uint64_t a2, double a3)
{
  v8[3] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_213E29028();
  sub_213F4EA90();
  v6 = v8[0];
  *&v8[2] = a3;
  MEMORY[0x216051BF0](v8, a1, &type metadata for InsetGroupedSectionBackgroundModifier, a2);
}

uint64_t InsetGroupedUIPlatter.init(cornerRadius:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_213E29028();
  result = sub_213F4EA90();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = a2;
  *(a1 + 24) = a2;
  *(a1 + 32) = a2;
  *(a1 + 40) = a2;
  return result;
}

uint64_t InsetGroupedUIPlatter.init(topLeft:topRight:bottomLeft:bottomRight:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_213E29028();
  result = sub_213F4EA90();
  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  return result;
}

__n128 InsetGroupedUIPlatter.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v5 = v1->n128_u64[0];
  v6 = v1->n128_i64[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC858, &qword_213F64FC0);
  sub_213F4EAA0();
  *a1 = v4;
  result = v1[1];
  *(a1 + 24) = v1[2];
  *(a1 + 8) = result;
  return result;
}

__n128 sub_213F417DC@<Q0>(uint64_t a1@<X8>)
{
  v5 = v1->n128_u64[0];
  v6 = v1->n128_i64[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC858, &qword_213F64FC0);
  sub_213F4EAA0();
  *a1 = v4;
  result = v1[1];
  *(a1 + 24) = v1[2];
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213F4184C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_213F41894(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_213F418F0()
{
  result = qword_27C8FC938;
  if (!qword_27C8FC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC938);
  }

  return result;
}

uint64_t sub_213F41954(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_213F4199C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_213F41A08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC960, &qword_213F65278);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = sub_213F4CCE0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = *v0;
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 secondarySystemGroupedBackgroundColor];
  [v18 setBackgroundColor_];

  v20 = *(v0 + 8);
  v21 = *(v0 + 16);
  v22 = *(v0 + 24);
  v23 = *(v0 + 32);
  sub_213F4CC50();
  v24 = sub_213F4CC60();
  v25 = *(*(v24 - 8) + 56);
  v25(v13, 0, 1, v24);
  sub_213F4CC50();
  v25(v11, 0, 1, v24);
  sub_213F4CC50();
  v25(v8, 0, 1, v24);
  sub_213F4CC50();
  v25(v5, 0, 1, v24);
  sub_213F4CCD0();
  sub_213F41FEC(v5);
  sub_213F41FEC(v8);
  sub_213F41FEC(v11);
  sub_213F41FEC(v13);
  sub_213F4F5E0();
  return v18;
}

id sub_213F41CB0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_213F41A08();
}

uint64_t sub_213F41CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F41F98();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213F41D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F41F98();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213F41DB4()
{
  sub_213F41F98();
  sub_213F4DB60();
  __break(1u);
}

uint64_t sub_213F41DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC940, &unk_213F65258) + 36));
  v7 = *(sub_213F4D470() + 20);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_213F4D950();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = a3;
  v6[1] = a3;
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)) = 256;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC948, &qword_213F65268);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = sub_213F4EEE0();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC858, &qword_213F64FC0);
  sub_213F4EAA0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC950, &qword_213F65270);
  v15 = a2 + *(result + 36);
  *v15 = v16;
  *(v15 + 8) = a3;
  *(v15 + 16) = a3;
  *(v15 + 24) = a3;
  *(v15 + 32) = a3;
  *(v15 + 40) = v11;
  *(v15 + 48) = v13;
  return result;
}

uint64_t sub_213F41F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 1);
  return sub_213F41DF8(a1, a2, v2[2]);
}

unint64_t sub_213F41F98()
{
  result = qword_27C8FC958;
  if (!qword_27C8FC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC958);
  }

  return result;
}

uint64_t sub_213F41FEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC960, &qword_213F65278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_213F42054()
{
  result = qword_27C8FC968;
  if (!qword_27C8FC968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC950, &qword_213F65270);
    sub_213F4210C();
    sub_213DE3AE4(&qword_27C8FC980, &qword_27C8FC988, &qword_213F65280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC968);
  }

  return result;
}

unint64_t sub_213F4210C()
{
  result = qword_27C8FC970;
  if (!qword_27C8FC970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC940, &unk_213F65258);
    sub_213DE3AE4(&qword_27C8FC978, &qword_27C8FC948, &qword_213F65268);
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC970);
  }

  return result;
}

BOOL ListCellProviding.hasOneLineOfText.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 48))() + 16);

  return v2 == 0;
}

BOOL ListCellProviding.hasTwoLinesOfText.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 48))() + 16);

  return v2 == 1;
}

BOOL ListCellProviding.hasThreeLinesOfText.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 48))() + 16);

  return v2 == 2;
}

BOOL ListCellProviding.hasTrailingAccessory.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 72))() + 16);

  return v2 != 0;
}

BOOL ListCellProviding.hasContextLineAccessory.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 80))() + 16);

  return v2 != 0;
}

BOOL ListCellProviding.hasBottomAccessory.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB630, &qword_213F63CC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  (*(a2 + 88))(a1, a2);
  v8 = type metadata accessor for BottomAccessoryViewModel(0);
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8) != 1;
  sub_213F4241C(v7);
  return v9;
}

uint64_t sub_213F4241C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB630, &qword_213F63CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL ListCellProviding.hasLeadingAccessory.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 64))() + 16);

  return v2 != 0;
}

double ListCellProviding.imageProvider.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ListCellProviding.bottomAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BottomAccessoryViewModel(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id static MapsDesignConstants.Colors.defaultButtonTintColor()()
{
  v0 = [objc_opt_self() labelColor];

  return v0;
}

uint64_t static MapsDesignConstants.Specs.values(_:carPlay:macOS:with:)()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4D280();
  sub_213F4D270();
  return (*(v1 + 8))(v4, v0);
}

int *static MapsDesignConstants.GridLayouts.visitedPlacesCategoriesGridLayoutConfig(count:dynamicType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v3 = sub_213F4D390();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v4[13];
  v8(v7, *MEMORY[0x277CDFA00], v3);
  sub_213E691F4();
  v9 = sub_213F4F1D0();
  v10 = v4[1];
  v10(v7, v3);
  if (v9)
  {
    v11 = 2.0;
  }

  else
  {
    v11 = 3.0;
  }

  v8(v7, *MEMORY[0x277CDF988], v3);
  v12 = sub_213F4F1D0();
  v10(v7, v3);
  if ((v12 & 1) == 0)
  {
    v11 = 4.0;
  }

  sub_213F4CB30();
  result = type metadata accessor for GridLayoutConfig();
  *(a2 + result[5]) = 0;
  *(a2 + result[7]) = v11;
  *(a2 + result[8]) = v11;
  *(a2 + result[9]) = 0;
  *(a2 + result[10]) = 6;
  *(a2 + result[11]) = 1;
  *(a2 + result[12]) = 0x4030000000000000;
  *(a2 + result[13]) = 0x4020000000000000;
  *(a2 + result[14]) = 0;
  *(a2 + result[6]) = v15;
  return result;
}

int *static MapsDesignConstants.GridLayouts.visitedPlacesByCategoryGridLayoutConfig(count:dynamicType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a1;
  v4 = sub_213F4D390();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *MEMORY[0x277CDFA00];
  v10 = v5[13];
  v10(v8, v9, v4);
  sub_213E691F4();
  v11 = sub_213F4F1D0();
  v12 = v5[1];
  v12(v8, v4);
  v13 = 3.0;
  if (v11)
  {
    v14 = 2.0;
  }

  else
  {
    v14 = 3.0;
  }

  v10(v8, v9, v4);
  v15 = sub_213F4F1D0();
  v12(v8, v4);
  if (v15)
  {
    v13 = 2.0;
  }

  v10(v8, *MEMORY[0x277CDF988], v4);
  v16 = sub_213F4F1D0();
  v12(v8, v4);
  if (v16)
  {
    v17 = v14;
  }

  else
  {
    v13 = 2.5;
    v17 = 6.0;
  }

  sub_213F4CB30();
  result = type metadata accessor for GridLayoutConfig();
  *(a3 + result[5]) = 4;
  *(a3 + result[7]) = v17;
  *(a3 + result[8]) = v13;
  *(a3 + result[9]) = 0;
  *(a3 + result[10]) = 6;
  *(a3 + result[11]) = 1;
  *(a3 + result[12]) = 0x4030000000000000;
  *(a3 + result[13]) = 0x4020000000000000;
  *(a3 + result[14]) = 0;
  *(a3 + result[6]) = v20;
  return result;
}

int *static MapsDesignConstants.GridLayouts.visitedPlacesLocationsGridLayoutConfig(count:dynamicType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v3 = sub_213F4D390();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277CDFA00];
  v9 = v4[13];
  v9(v7, v8, v3);
  sub_213E691F4();
  v19 = sub_213F4F1D0();
  v10 = v4[1];
  v10(v7, v3);
  v9(v7, *MEMORY[0x277CDF988], v3);
  v18 = sub_213F4F1D0();
  v10(v7, v3);
  v9(v7, v8, v3);
  v11 = sub_213F4F1D0();
  v10(v7, v3);
  if (v11)
  {
    v12 = 4.0;
    v13 = 3.0;
    v14 = 1;
    v15 = 3;
  }

  else
  {
    v14 = 0;
    v16 = 3.0;
    if (v19)
    {
      v16 = 2.0;
    }

    if (v18)
    {
      v13 = v16;
    }

    else
    {
      v13 = 4.0;
    }

    v15 = 6;
    v12 = v13;
  }

  sub_213F4CB30();
  result = type metadata accessor for GridLayoutConfig();
  *(a2 + result[5]) = v14;
  *(a2 + result[7]) = v13;
  *(a2 + result[8]) = v12;
  *(a2 + result[9]) = 0;
  *(a2 + result[10]) = v15;
  *(a2 + result[11]) = 1;
  *(a2 + result[12]) = 0x4030000000000000;
  *(a2 + result[13]) = 0x4020000000000000;
  *(a2 + result[14]) = 0;
  *(a2 + result[6]) = v20;
  return result;
}

void static MapsDesignConstants.ColumnViews.containerSize(for:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 >= 550.0)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  if (a2 >= 450.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if (a2 < 320.0)
  {
    v3 = 0;
  }

  *a1 = v3;
}

double static MapsDesignConstants.ColumnViews.SearchHome.cityGuidesColumnViewConfig(itemCount:containerSize:)@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_213F4CB30();
  v6 = type metadata accessor for ColumnViewConfig();
  v7 = a3 + v6[8];
  *(a3 + v6[5]) = a1;
  v8 = 7;
  if (v5 == 2)
  {
    v8 = 9;
  }

  if (v5 == 3)
  {
    v8 = 11;
  }

  *(a3 + v6[6]) = v8;
  *(a3 + v6[7]) = 3;
  result = 3.0;
  *v7 = xmmword_213F652B0;
  *(v7 + 16) = 0;
  *(a3 + v6[9]) = 0x4030000000000000;
  *(a3 + v6[10]) = 0x4020000000000000;
  return result;
}

uint64_t MapsDesignConstants.ColumnViews.ContainerSize.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

int *static MapsDesignConstants.ColumnViews.MapsHome.pinnedColumnViewConfig(itemCount:containerSize:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_213F4CB30();
  result = type metadata accessor for ColumnViewConfig();
  v7 = a3 + result[8];
  *(a3 + result[5]) = a1;
  v8 = 8;
  if (v5 == 2)
  {
    v8 = 10;
  }

  if (v5 == 3)
  {
    v8 = 12;
  }

  *(a3 + result[6]) = v8;
  *(a3 + result[7]) = 2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  *(a3 + result[9]) = 0x4030000000000000;
  *(a3 + result[10]) = 0x4020000000000000;
  return result;
}

int *sub_213F43270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_213F4CB30();
  result = type metadata accessor for ColumnViewConfig();
  v9 = a4 + result[8];
  *(a4 + result[5]) = a1;
  *(a4 + result[6]) = a2;
  *(a4 + result[7]) = a3;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  *(a4 + result[9]) = 0x4030000000000000;
  *(a4 + result[10]) = 0x4020000000000000;
  return result;
}

double _s10MapsDesign0aB9ConstantsO11ColumnViewsO0A4HomeV010userGuidesD10ViewConfig9itemCount13containerSizeAA0diJ0VSi_AE09ContainerN0OtFZ_0@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_213F4CB30();
  v6 = type metadata accessor for ColumnViewConfig();
  v7 = a3 + v6[8];
  *(a3 + v6[5]) = a1;
  v8 = 6;
  if (v5 == 2)
  {
    v8 = 8;
  }

  if (v5 == 3)
  {
    v8 = 10;
  }

  *(a3 + v6[6]) = v8;
  *(a3 + v6[7]) = 3;
  result = 3.0;
  *v7 = xmmword_213F652B0;
  *(v7 + 16) = 0;
  *(a3 + v6[9]) = 0x4030000000000000;
  *(a3 + v6[10]) = 0x4020000000000000;
  return result;
}

double static MapsDesignConstants.GridLayouts.visitedPlacesCurrentYearGridLayoutConfig(count:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 3)
  {
    v4 = 6.0;
  }

  else
  {
    v4 = 4.5;
  }

  sub_213F4CB30();
  v5 = type metadata accessor for GridLayoutConfig();
  *(a2 + v5[5]) = 3;
  *(a2 + v5[7]) = v4;
  result = v4 + 1.0;
  *(a2 + v5[8]) = v4 + 1.0;
  *(a2 + v5[9]) = 0;
  *(a2 + v5[10]) = 6;
  *(a2 + v5[11]) = 3;
  *(a2 + v5[12]) = 0x4030000000000000;
  *(a2 + v5[13]) = 0x4020000000000000;
  *(a2 + v5[14]) = 0;
  *(a2 + v5[6]) = a1;
  return result;
}

double static MapsDesignConstants.GridLayouts.visitedPlacesPreviousYearGridLayoutConfig(count:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 1)
  {
    v4 = 6.0;
  }

  else
  {
    v4 = 4.5;
  }

  sub_213F4CB30();
  v5 = type metadata accessor for GridLayoutConfig();
  *(a2 + v5[5]) = 3;
  *(a2 + v5[7]) = v4;
  result = v4 + 1.0;
  *(a2 + v5[8]) = v4 + 1.0;
  *(a2 + v5[9]) = 0;
  *(a2 + v5[10]) = 6;
  *(a2 + v5[11]) = 1;
  *(a2 + v5[12]) = 0x4030000000000000;
  *(a2 + v5[13]) = 0x4020000000000000;
  *(a2 + v5[14]) = 0;
  *(a2 + v5[6]) = a1;
  return result;
}

int *static MapsDesignConstants.GridLayouts.searchHomeFindNearbyGridLayoutConfig(count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_213F4CB30();
  result = type metadata accessor for GridLayoutConfig();
  *(a2 + result[5]) = 3;
  *(a2 + result[7]) = 0x4012000000000000;
  *(a2 + result[8]) = 0x4016000000000000;
  *(a2 + result[9]) = 0;
  *(a2 + result[10]) = 6;
  *(a2 + result[11]) = 2;
  *(a2 + result[12]) = 0x4030000000000000;
  *(a2 + result[13]) = 0x4020000000000000;
  *(a2 + result[14]) = 0;
  *(a2 + result[6]) = a1;
  return result;
}

int *static MapsDesignConstants.GridLayouts.searchHomeRecentsGridLayoutConfig(count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_213F4CB30();
  result = type metadata accessor for GridLayoutConfig();
  *(a2 + result[5]) = 2;
  *(a2 + result[7]) = 0x4018000000000000;
  *(a2 + result[8]) = 0x401C000000000000;
  *(a2 + result[9]) = 0;
  *(a2 + result[10]) = 6;
  *(a2 + result[11]) = 3;
  *(a2 + result[12]) = 0x4030000000000000;
  *(a2 + result[13]) = 0x4020000000000000;
  *(a2 + result[14]) = 1;
  *(a2 + result[6]) = a1;
  return result;
}

int *static MapsDesignConstants.GridLayouts.searchHomeCityGuideGridLayoutConfig(count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_213F4CB30();
  result = type metadata accessor for GridLayoutConfig();
  *(a2 + result[5]) = 0;
  *(a2 + result[7]) = 0x4008000000000000;
  *(a2 + result[8]) = 0x4010000000000000;
  *(a2 + result[9]) = 0;
  *(a2 + result[10]) = 7;
  *(a2 + result[11]) = 1;
  *(a2 + result[12]) = 0x4030000000000000;
  *(a2 + result[13]) = 0x4020000000000000;
  *(a2 + result[14]) = 0;
  *(a2 + result[6]) = a1;
  return result;
}

int *static MapsDesignConstants.GridLayouts.searchHomeNearbyGuideGridLayoutConfig(count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_213F4CB30();
  result = type metadata accessor for GridLayoutConfig();
  *(a2 + result[5]) = 0;
  v5 = 3.0;
  if (a1 == 1)
  {
    v5 = 6.0;
  }

  *(a2 + result[7]) = v5;
  *(a2 + result[8]) = 0x4010000000000000;
  *(a2 + result[9]) = 0;
  *(a2 + result[10]) = 6;
  *(a2 + result[11]) = 1;
  *(a2 + result[12]) = 0x4030000000000000;
  *(a2 + result[13]) = 0x4020000000000000;
  *(a2 + result[14]) = 0;
  *(a2 + result[6]) = a1;
  return result;
}

unint64_t sub_213F43BE0()
{
  result = qword_27C8FC990;
  if (!qword_27C8FC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC990);
  }

  return result;
}

uint64_t sub_213F43D34()
{
  v0 = sub_213F4CC40();
  __swift_allocate_value_buffer(v0, qword_28118EDE0);
  __swift_project_value_buffer(v0, qword_28118EDE0);
  return sub_213F4CC30();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_213F43E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4F6B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t MapsDesignMarquee.init(spacing:feathering:rate:delay:direction:content:)@<X0>(double a1@<X0>, char a2@<W1>, double a3@<X2>, int a4@<W3>, double a5@<X4>, int a6@<W5>, double a7@<X6>, int a8@<W7>, double *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v50 = a8;
  v49 = a7;
  v48 = a6;
  v47 = a5;
  v46 = a4;
  v45 = a3;
  v51 = a12;
  v52 = a11;
  v15 = sub_213F4D3B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v44 - v22;
  v24 = type metadata accessor for MapsDesignMarquee();
  v25 = (a9 + v24[14]);
  v26 = sub_213E93B1C();
  *v25 = v27;
  v25[1] = v28;
  v25[2] = v26;
  v29 = a9 + v24[15];
  v53 = 0;
  sub_213F4EA90();
  v30 = v55;
  *v29 = v54;
  *(v29 + 1) = v30;
  v31 = v24[16];
  v32 = sub_213F4CB00();
  (*(*(v32 - 8) + 56))(v23, 1, 1, v32);
  sub_213F44254(v23);
  v33 = a9 + v24[17];
  *v33 = swift_getKeyPath();
  *(v33 + 1) = 0;
  *(v33 + 8) = 0;
  v34 = v24[18];
  *(a9 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v35 = a9 + v24[19];
  *v35 = sub_213F47E1C;
  *(v35 + 1) = 0;
  v35[16] = 0;
  v36 = a1;
  if (a2)
  {
    v36 = 20.0;
  }

  v37 = v45;
  if (v46)
  {
    v37 = 8.0;
  }

  *a9 = v36;
  a9[1] = v37;
  v38 = v47;
  if (v48)
  {
    v38 = 30.0;
  }

  v39 = v49;
  if (v50)
  {
    v39 = 2.0;
  }

  a9[2] = v38;
  a9[3] = v39;
  v40 = *(v16 + 48);
  if (v40(a10, 1, v15) == 1)
  {
    (*(v16 + 104))(v19, *MEMORY[0x277CDFA88], v15);
    if (v40(a10, 1, v15) != 1)
    {
      sub_213DE36FC(a10, &qword_27C8F7B58, &unk_213F52120);
    }
  }

  else
  {
    (*(v16 + 32))(v19, a10, v15);
  }

  result = (*(v16 + 32))(a9 + v24[12], v19, v15);
  v42 = (a9 + v24[13]);
  v43 = v51;
  *v42 = v52;
  v42[1] = v43;
  return result;
}

uint64_t sub_213F44254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_213DE3164(a1, &v6 - v4, &qword_27C8F7B50, &qword_213F653D0);
  sub_213F4EA90();
  return sub_213DE36FC(a1, &qword_27C8F7B50, &qword_213F653D0);
}

double sub_213F4431C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v5 = *v2;
  v6 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  return v4;
}

uint64_t sub_213F4437C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v4 = *v2;
  v5 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  return sub_213F4EAB0();
}

uint64_t sub_213F443E0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  return v4;
}

uint64_t sub_213F44440(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 60));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213F444A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *(a2 + 64);
  sub_213DE3164(a1, &v9 - v7, &qword_27C8F7B50, &qword_213F653D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9B8, &qword_213F65450);
  sub_213F4EAB0();
  return sub_213DE36FC(a1, &qword_27C8F7B50, &qword_213F653D0);
}

uint64_t MapsDesignMarquee.coordinatedContentSize.getter(uint64_t a1)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1 + 68);
  result = *v8;
  v10 = *(v8 + 16);
  if (*(v8 + 17) != 1)
  {
    v11 = *v8;
    v12 = *(v8 + 8);

    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213F47E54(v11, v12, v10, 0);
    (*(v4 + 8))(v7, v3);
    return v14[1];
  }

  return result;
}

uint64_t sub_213F446EC()
{
  sub_213F4AD34();
  sub_213F4D820();
  return v1;
}

double sub_213F4472C@<D0>(uint64_t a1@<X8>)
{
  sub_213F4AD34();
  sub_213F4D820();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_213F44784(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  sub_213F4AD34();
  return sub_213F4D830();
}

uint64_t sub_213F447D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_213F4D7F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_213DE3164(v2 + *(a1 + 72), &v18 - v12, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_213F4D290();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_213F4F520();
    v17 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t MapsDesignMarquee.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v46 = *(a1 - 8);
  v47 = v2;
  v48 = *(v46 + 64);
  MEMORY[0x28223BE20](a1);
  v45 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_213F4DEF0();
  v5 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v37 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a1 + 16);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC998, &qword_213F65430);
  sub_213F4D400();
  sub_213F4DF60();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  v7 = sub_213F4D400();
  WitnessTable = swift_getWitnessTable();
  v66 = MEMORY[0x277CDF748];
  v8 = swift_getWitnessTable();
  v9 = MEMORY[0x277D839B0];
  v61 = v7;
  v62 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D839C8];
  v63 = v8;
  v64 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  v61 = v7;
  v62 = v9;
  v63 = v8;
  v64 = v10;
  swift_getOpaqueTypeConformance2();
  v36[1] = sub_213F4D250();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9A0, &qword_213F65438);
  v36[2] = sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9A8, &qword_213F65440);
  v38 = sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9B0, &qword_213F65448);
  v40 = sub_213F4D400();
  v41 = sub_213F4D400();
  v39 = sub_213F4D400();
  v42 = sub_213F4ACE4(&qword_2811828E8, MEMORY[0x277CDE300]);
  v11 = sub_213F4D060();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v36 - v17;
  v19 = v47;
  sub_213F4510C(a1);
  v20 = v46;
  v21 = v45;
  (*(v46 + 16))(v45, v19, a1);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  v24 = *(a1 + 24);
  *(v23 + 16) = v44;
  *(v23 + 24) = v24;
  (*(v20 + 32))(v23 + v22, v21, a1);
  v25 = swift_getWitnessTable();
  v26 = sub_213DE3AE4(&qword_2811834D0, &qword_27C8FC9A0, &qword_213F65438);
  v59 = v25;
  v60 = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_213DE3AE4(&qword_281182880, &qword_27C8FC9A8, &qword_213F65440);
  v57 = v27;
  v58 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_213DE3AE4(&qword_2811828B8, &qword_27C8FC9B0, &qword_213F65448);
  v55 = v29;
  v56 = v30;
  v53 = swift_getWitnessTable();
  v54 = MEMORY[0x277CDF678];
  v51 = swift_getWitnessTable();
  v52 = MEMORY[0x277CDFC60];
  v31 = v39;
  v32 = swift_getWitnessTable();
  sub_213F47C2C(v37, sub_213F47E68, v23, v43, v31, v42, v32);
  v50 = v32;
  v33 = swift_getWitnessTable();
  sub_213DBFEEC(v16, v11, v33);
  v34 = *(v12 + 8);
  v34(v16, v11);
  sub_213DBFEEC(v18, v11, v33);
  return (v34)(v18, v11);
}

uint64_t sub_213F4510C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_213F47D84(a1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_213F4CD20();

  if (sub_213F4787C(a1))
  {
    v6 = *(a1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9B8, &qword_213F65450);
    sub_213F4EAA0();
    v7 = sub_213F4CB00();
    (*(*(v7 - 8) + 48))(v5, 1, v7);
    sub_213DE36FC(v5, &qword_27C8F7B50, &qword_213F653D0);
  }

  return sub_213F4DEE0();
}

uint64_t sub_213F452AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v103 = a3;
  v104 = a4;
  v102 = a2;
  v94 = a1;
  v100 = a5;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9C0, &qword_213F65458);
  v5 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v98 = v72 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA58, &qword_213F65740);
  v78 = *(v87 - 8);
  v92 = *(v78 + 64);
  MEMORY[0x28223BE20](v87);
  v8 = v72 - v7;
  v86 = type metadata accessor for MapsDesignMarquee();
  v9 = *(v86 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v86);
  v12 = v72 - v11;
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC998, &qword_213F65430);
  sub_213F4D400();
  sub_213F4DF60();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  v13 = sub_213F4D400();
  WitnessTable = swift_getWitnessTable();
  v120 = MEMORY[0x277CDF748];
  v84 = MEMORY[0x277CDFAD8];
  v14 = swift_getWitnessTable();
  v15 = MEMORY[0x277D839B0];
  v115 = v13;
  v116 = MEMORY[0x277D839B0];
  v16 = MEMORY[0x277D839C8];
  v117 = v14;
  v118 = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v115 = v13;
  v116 = v15;
  v117 = v14;
  v118 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = sub_213F4D250();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9A0, &qword_213F65438);
  v79 = sub_213F4D400();
  v82 = *(v79 - 8);
  v17 = *(v82 + 64);
  MEMORY[0x28223BE20](v79);
  v74 = v72 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9A8, &qword_213F65440);
  v80 = sub_213F4D400();
  v88 = *(v80 - 8);
  v19 = *(v88 + 64);
  MEMORY[0x28223BE20](v80);
  v101 = v72 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9B0, &qword_213F65448);
  v85 = sub_213F4D400();
  v91 = *(v85 - 8);
  v21 = *(v91 + 64);
  MEMORY[0x28223BE20](v85);
  v81 = v72 - v22;
  v90 = sub_213F4D400();
  v96 = *(v90 - 8);
  v23 = *(v96 + 64);
  MEMORY[0x28223BE20](v90);
  v83 = v72 - v24;
  v95 = sub_213F4D400();
  v97 = *(v95 - 8);
  v25 = *(v97 + 64);
  v26 = MEMORY[0x28223BE20](v95);
  v89 = v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v93 = v72 - v28;
  v29 = v9;
  v30 = *(v9 + 16);
  v72[2] = v9 + 16;
  v73 = v30;
  v72[0] = v12;
  v31 = v86;
  v30(v12, v102, v86);
  v32 = v78;
  v33 = v8;
  v34 = v8;
  v35 = v87;
  (*(v78 + 16))(v34, v94, v87);
  v36 = *(v29 + 80);
  v37 = (v36 + 32) & ~v36;
  v94 = v37 + v10;
  v72[1] = v36 | 7;
  v38 = (v37 + v10 + *(v32 + 80)) & ~*(v32 + 80);
  v39 = swift_allocObject();
  v40 = v104;
  *(v39 + 16) = v103;
  *(v39 + 24) = v40;
  v92 = *(v29 + 32);
  v92(v39 + v37, v12, v31);
  (*(v32 + 32))(v39 + v38, v33, v35);
  v115 = sub_213F4D240();
  v116 = v41;
  v42 = v98;
  v43 = v102;
  MapsDesignMarquee.mask.getter(v31, v98);
  v44 = swift_getWitnessTable();
  sub_213F4A064();
  v45 = v74;
  sub_213F4E720();
  sub_213DE36FC(v42, &qword_27C8FC9C0, &qword_213F65458);

  swift_getKeyPath();
  v46 = *(v31 + 48);
  v47 = sub_213DE3AE4(&qword_2811834D0, &qword_27C8FC9A0, &qword_213F65438);
  v113 = v44;
  v114 = v47;
  v48 = v79;
  v49 = swift_getWitnessTable();
  sub_213F4E3F0();

  (*(v82 + 8))(v45, v48);
  v50 = v72[0];
  v73(v72[0], v43, v31);
  v51 = swift_allocObject();
  v52 = v104;
  *(v51 + 16) = v103;
  *(v51 + 24) = v52;
  v53 = v51 + v37;
  v54 = v31;
  v92(v53, v50, v31);
  v55 = sub_213DE3AE4(&qword_281182880, &qword_27C8FC9A8, &qword_213F65440);
  v111 = v49;
  v112 = v55;
  v56 = v80;
  v57 = swift_getWitnessTable();
  sub_213F4AADC();
  sub_213F4ACE4(&unk_281182358, type metadata accessor for CGSize);
  v58 = v81;
  v59 = v101;
  sub_213F4E5D0();

  (*(v88 + 8))(v59, v56);
  sub_213F4431C(v54);
  sub_213F4EEE0();
  v60 = sub_213DE3AE4(&qword_2811828B8, &qword_27C8FC9B0, &qword_213F65448);
  v109 = v57;
  v110 = v60;
  v61 = v85;
  v62 = swift_getWitnessTable();
  v63 = v83;
  sub_213F4E740();
  (*(v91 + 8))(v58, v61);
  sub_213F4431C(v54);
  sub_213F4EEE0();
  v107 = v62;
  v108 = MEMORY[0x277CDF678];
  v70 = v90;
  v71 = swift_getWitnessTable();
  v64 = v89;
  sub_213F4E750();
  (*(v96 + 8))(v63, v70);
  v105 = v71;
  v106 = MEMORY[0x277CDFC60];
  v65 = v95;
  v66 = swift_getWitnessTable();
  v67 = v93;
  sub_213DBFEEC(v64, v65, v66);
  v68 = *(v97 + 8);
  v68(v64, v65);
  sub_213DBFEEC(v67, v65, v66);
  return (v68)(v67, v65);
}

uint64_t sub_213F45F9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a5;
  v55 = a3;
  v51 = a1;
  v59 = a6;
  v54 = type metadata accessor for MapsDesignMarquee();
  v56 = *(v54 - 8);
  v58 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  v57 = &v41 - v8;
  v53 = sub_213F4CB00();
  v52 = *(v53 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a4;
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC998, &qword_213F65430);
  sub_213F4D400();
  sub_213F4DF60();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v11 = sub_213F4EB40();
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = sub_213F4D400();
  v49 = *(v15 - 8);
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](v15);
  v43 = &v41 - v17;
  WitnessTable = swift_getWitnessTable();
  v69 = WitnessTable;
  v70 = MEMORY[0x277CDF748];
  v45 = swift_getWitnessTable();
  v65 = v15;
  v66 = MEMORY[0x277D839B0];
  v67 = v45;
  v68 = MEMORY[0x277D839C8];
  v47 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = *(OpaqueTypeMetadata2 - 8);
  v19 = *(v48 + 64);
  v20 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v44 = &v41 - v23;
  v24 = *a2;
  v61 = a4;
  v62 = v60;
  v63 = a2;
  v64 = v51;
  sub_213F4D8A0();
  sub_213F4EB30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA58, &qword_213F65740);
  v25 = v50;
  sub_213F4D030();
  v26 = v54;
  sub_213F4763C(v25, v54);
  (*(v52 + 8))(v25, v53);
  v27 = v43;
  sub_213F4E760();
  (*(v46 + 8))(v14, v11);
  LOBYTE(v65) = sub_213F4787C(v26) & 1;
  v28 = v56;
  v29 = v57;
  (*(v56 + 16))(v57, a2, v26);
  v30 = v28;
  v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v32 = swift_allocObject();
  v33 = v60;
  *(v32 + 16) = v41;
  *(v32 + 24) = v33;
  (*(v30 + 32))(v32 + v31, v29, v26);
  v34 = MEMORY[0x277D839B0];
  v35 = v45;
  v36 = MEMORY[0x277D839C8];
  sub_213F4E810();

  (*(v49 + 8))(v27, v15);
  v65 = v15;
  v66 = v34;
  v67 = v35;
  v68 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v44;
  sub_213DBFEEC(v22, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v39 = *(v48 + 8);
  v39(v22, OpaqueTypeMetadata2);
  sub_213DBFEEC(v38, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v39)(v38, OpaqueTypeMetadata2);
}

uint64_t sub_213F466C0@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v139 = a4;
  v140 = a2;
  v144 = a1;
  v137 = a5;
  v6 = type metadata accessor for MapsDesignMarquee();
  v138 = v6;
  v119 = *(v6 - 8);
  v126 = *(v119 + 64);
  MEMORY[0x28223BE20](v6);
  v127 = &v108 - v7;
  v8 = sub_213F4D400();
  sub_213F4DF60();
  v9 = sub_213F4D400();
  v114 = *(v9 - 8);
  v10 = *(v114 + 64);
  MEMORY[0x28223BE20](v9);
  v125 = &v108 - v11;
  v143 = v12;
  v13 = sub_213F4D400();
  v117 = *(v13 - 8);
  v14 = *(v117 + 64);
  MEMORY[0x28223BE20](v13);
  v115 = &v108 - v15;
  v142 = v16;
  v17 = sub_213F4D400();
  v128 = *(v17 - 8);
  v18 = *(v128 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v118 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v116 = &v108 - v21;
  v134 = v22;
  v136 = sub_213F4F6B0();
  v135 = *(v136 - 8);
  v23 = *(v135 + 64);
  v24 = MEMORY[0x28223BE20](v136);
  v133 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v132 = &v108 - v26;
  v130 = sub_213F4D160();
  v27 = *(v130 - 8);
  v124 = *(v27 + 64);
  v28 = MEMORY[0x28223BE20](v130);
  v30 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a3 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v28);
  v35 = &v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v8;
  v131 = *(v8 - 8);
  v36 = *(v131 + 64);
  MEMORY[0x28223BE20](v33);
  v38 = &v108 - v37;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC998, &qword_213F65430);
  v39 = sub_213F4D400();
  v141 = *(v39 - 8);
  v40 = *(v141 + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v108 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41);
  v145 = &v108 - v45;
  v46 = v144 + *(v6 + 52);
  v47 = *v46;
  v110 = *(v46 + 8);
  v111 = v47;
  v47(v44);
  v48 = v139;
  sub_213F4E830();
  v49 = *(v31 + 8);
  v112 = v35;
  v129 = a3;
  v113 = v31 + 8;
  v109 = v49;
  v49(v35, a3);
  sub_213F4EAE0();
  v50 = v30;
  v51 = v30;
  v52 = v130;
  (*(v27 + 16))(v51, v140, v130);
  v53 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v54 = swift_allocObject();
  v55 = v50;
  v56 = v120;
  (*(v27 + 32))(v54 + v53, v55, v52);
  type metadata accessor for CGRect(0);
  v162[10] = v48;
  v162[11] = MEMORY[0x277CDFC48];
  WitnessTable = swift_getWitnessTable();
  sub_213F4AADC();
  sub_213F4E580();
  v58 = v131;

  v59 = *(v58 + 8);
  v60 = v38;
  v59(v38, v56);
  v61 = sub_213DE3AE4(&qword_281182928, &qword_27C8FC998, &qword_213F65430);
  v162[8] = WitnessTable;
  v162[9] = v61;
  v121 = swift_getWitnessTable();
  sub_213DBFEEC(v43, v39, v121);
  v62 = *(v141 + 8);
  v130 = v43;
  v131 = v39;
  v124 = v141 + 8;
  v123 = v62;
  v62(v43, v39);
  v63 = v144;
  v64 = sub_213F4431C(v138);
  v65 = sub_213F4D140();
  v122 = WitnessTable;
  if (v66 >= v64)
  {
    v94 = v133;
    (*(v128 + 56))(v133, 1, 1, v134);
    v95 = sub_213F4ACE4(&qword_281182838, MEMORY[0x277CDE470]);
    v162[6] = WitnessTable;
    v162[7] = v95;
    v162[4] = swift_getWitnessTable();
    v96 = MEMORY[0x277CE0790];
    v162[5] = MEMORY[0x277CE0790];
    v162[2] = swift_getWitnessTable();
    v162[3] = v96;
    swift_getWitnessTable();
  }

  else
  {
    v67 = v112;
    v111(v65);
    v68 = v60;
    v69 = v129;
    v70 = v139;
    sub_213F4E830();
    v109(v67, v69);
    sub_213F4E620();
    v59(v68, v56);
    v71 = v119;
    v140 = *(v119 + 16);
    v72 = v127;
    v73 = v138;
    v140(v127, v63, v138);
    v74 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v69;
    *(v75 + 24) = v70;
    v120 = *(v71 + 32);
    v120(v75 + v74, v72, v73);
    v76 = sub_213F4ACE4(&qword_281182838, MEMORY[0x277CDE470]);
    v150 = WitnessTable;
    v151 = v76;
    v77 = v143;
    v78 = swift_getWitnessTable();
    v79 = v115;
    v80 = v125;
    sub_213F4E800();

    (*(v114 + 8))(v80, v77);
    v81 = v127;
    v82 = v138;
    v140(v127, v144, v138);
    v83 = swift_allocObject();
    v84 = v139;
    *(v83 + 16) = v129;
    *(v83 + 24) = v84;
    v120(v83 + v74, v81, v82);
    v148 = v78;
    v85 = MEMORY[0x277CE0790];
    v149 = MEMORY[0x277CE0790];
    v86 = v142;
    v87 = swift_getWitnessTable();
    v88 = v118;
    sub_213F4E420();

    (*(v117 + 8))(v79, v86);
    v146 = v87;
    v147 = v85;
    v89 = v134;
    v90 = swift_getWitnessTable();
    v91 = v116;
    sub_213DBFEEC(v88, v89, v90);
    v92 = v128;
    v93 = *(v128 + 8);
    v93(v88, v89);
    sub_213DBFEEC(v91, v89, v90);
    v93(v91, v89);
    v94 = v133;
    (*(v92 + 32))(v133, v88, v89);
    (*(v92 + 56))(v94, 0, 1, v89);
  }

  v97 = v135;
  v98 = *(v135 + 16);
  v99 = v132;
  v100 = v136;
  v98(v132, v94, v136);
  v101 = *(v97 + 8);
  v101(v94, v100);
  v102 = v130;
  v103 = v131;
  (*(v141 + 16))(v130, v145, v131);
  v162[0] = v102;
  v98(v94, v99, v100);
  v162[1] = v94;
  v161[0] = v103;
  v161[1] = v100;
  v159 = v121;
  v104 = sub_213F4ACE4(&qword_281182838, MEMORY[0x277CDE470]);
  v157 = v122;
  v158 = v104;
  v155 = swift_getWitnessTable();
  v105 = MEMORY[0x277CE0790];
  v156 = MEMORY[0x277CE0790];
  v153 = swift_getWitnessTable();
  v154 = v105;
  v152 = swift_getWitnessTable();
  v160 = swift_getWitnessTable();
  sub_213E95270(v162, 2uLL, v161);
  v101(v99, v100);
  v106 = v123;
  v123(v145, v103);
  v101(v94, v100);
  return v106(v102, v103);
}

uint64_t sub_213F4763C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_213F4CB00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9B8, &qword_213F65450);
  sub_213F4EAA0();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213DE36FC(v8, &qword_27C8F7B50, &qword_213F653D0);
  }

  (*(v10 + 32))(v13, v8, v9);
  if (sub_213F4431C(a2) == 0.0 && v16 == 0.0)
  {
    return (*(v10 + 8))(v13, v9);
  }

  sub_213F4CAE0();
  v18 = v17;
  v19 = sub_213F47F04(a2);
  fmod(v18, v19);
  sub_213F47F04(a2);
  result = (*(v10 + 8))(v13, v9);
  v20 = *(v3 + 16);
  *(v3 + 24);
  return result;
}

uint64_t sub_213F4787C(uint64_t a1)
{
  v2 = sub_213F4D290();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  if (sub_213F443E0(a1))
  {
    sub_213F447D8(a1, v9);
    sub_213F4D280();
    sub_213F4ACE4(&qword_2811834A8, MEMORY[0x277CDF7E8]);
    v10 = sub_213F4F1F0();
    v11 = *(v3 + 8);
    v11(v7, v2);
    v11(v9, v2);
    v12 = v10 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_213F479F4(uint64_t a1, _BYTE *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  if (*a2 == 1)
  {
    sub_213F4CAF0();
    v7 = sub_213F4CB00();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_213F4CB00();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  v9 = type metadata accessor for MapsDesignMarquee();
  return sub_213F444A4(v6, v9);
}

uint64_t MapsDesignMarquee.mask.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  sub_213F47F80(v2, a2);
  v6 = sub_213F4E0B0();
  sub_213F4CDA0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9C0, &qword_213F65458);
  v16 = a2 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

void sub_213F47BAC(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = type metadata accessor for MapsDesignMarquee();
  if (vabdd_f64(sub_213F4431C(v3), v1) > 0.5 || (sub_213F4431C(v3), vabdd_f64(v4, v2) > 0.5))
  {
    sub_213F4437C(v3);
  }
}

uint64_t sub_213F47C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v14 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a2;
  v18[7] = a3;
  sub_213F4D050();
  return (*(v14 + 8))(a1, a4);
}

uint64_t sub_213F47D84(uint64_t a1)
{
  v2 = (v1 + *(a1 + 76));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = type metadata accessor for LowPowerMode();
  v7 = sub_213F4ACE4(&qword_281188118, type metadata accessor for LowPowerMode);

  return MEMORY[0x282130840](v3, v4, v5, v6, v7);
}

uint64_t sub_213F47E1C()
{
  v0 = type metadata accessor for LowPowerMode();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_213F487BC();
}

uint64_t sub_213F47E54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_213F47E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for MapsDesignMarquee() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_213F452AC(a1, v8, v5, v6, a2);
}

double sub_213F47F04(uint64_t a1)
{
  v3 = sub_213F4431C(a1);
  v4 = *v1;
  v5 = MapsDesignMarquee.coordinatedContentSize.getter(a1);
  if (v6)
  {
    v7 = sub_213F4431C(a1);
  }

  else
  {
    v7 = *&v5;
  }

  return v1[3] + (v3 + v4 + v7 - sub_213F4431C(a1)) / v1[2];
}

uint64_t sub_213F47F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA48, &qword_213F656E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v34 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9F8, &qword_213F655E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for MapsDesignMarquee();
  if (sub_213F443E0(v12))
  {
    v38 = v4;
    v39 = a2;
    v37 = sub_213F4D8A0();
    v54 = 0;
    sub_213F483E4(a1, &v41);
    v63 = v49;
    v64 = v50;
    v65 = v51;
    v59 = v45;
    v60 = v46;
    v61 = v47;
    v62 = v48;
    v55 = v41;
    v56 = v42;
    v57 = v43;
    v58 = v44;
    v67[8] = v49;
    v67[9] = v50;
    v67[10] = v51;
    v67[4] = v45;
    v67[5] = v46;
    v67[6] = v47;
    v67[7] = v48;
    v67[0] = v41;
    v67[1] = v42;
    v66 = v52;
    v68 = v52;
    v67[2] = v43;
    v67[3] = v44;
    sub_213DE3164(&v55, v40, &qword_27C8FCA50, &qword_213F656F0);
    sub_213DE36FC(v67, &qword_27C8FCA50, &qword_213F656F0);
    *(&v53[8] + 7) = v63;
    *(&v53[9] + 7) = v64;
    *(&v53[10] + 7) = v65;
    *(&v53[4] + 7) = v59;
    *(&v53[5] + 7) = v60;
    *(&v53[6] + 7) = v61;
    *(&v53[7] + 7) = v62;
    *(v53 + 7) = v55;
    *(&v53[1] + 7) = v56;
    *(&v53[2] + 7) = v57;
    *(&v53[11] + 7) = v66;
    *(&v53[3] + 7) = v58;
    v36 = v54;
    v35 = sub_213F4E040();
    v13 = -*(a1 + 8);
    sub_213F4CDA0();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v40[0] = 0;
    KeyPath = swift_getKeyPath();
    v23 = &v11[*(v8 + 36)];
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9A8, &qword_213F65440) + 28);
    v25 = *MEMORY[0x277CDFA88];
    v26 = sub_213F4D3B0();
    (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
    *v23 = KeyPath;
    v27 = v53[9];
    *(v11 + 145) = v53[8];
    *(v11 + 161) = v27;
    *(v11 + 177) = v53[10];
    *(v11 + 12) = *(&v53[10] + 15);
    v28 = v53[5];
    *(v11 + 81) = v53[4];
    *(v11 + 97) = v28;
    v29 = v53[7];
    *(v11 + 113) = v53[6];
    *(v11 + 129) = v29;
    v30 = v53[1];
    *(v11 + 17) = v53[0];
    *(v11 + 33) = v30;
    v31 = v53[3];
    *(v11 + 49) = v53[2];
    *v11 = v37;
    *(v11 + 1) = 0;
    v32 = v35;
    v11[16] = v36;
    *(v11 + 65) = v31;
    v11[208] = v32;
    *(v11 + 209) = v41;
    *(v11 + 53) = *(&v41 + 3);
    *(v11 + 27) = v15;
    *(v11 + 28) = v17;
    *(v11 + 29) = v19;
    *(v11 + 30) = v21;
    v11[248] = 0;
    sub_213DE3164(v11, v7, &qword_27C8FC9F8, &qword_213F655E0);
    swift_storeEnumTagMultiPayload();
    sub_213F4A200();
    sub_213F4DBA0();
    return sub_213DE36FC(v11, &qword_27C8FC9F8, &qword_213F655E0);
  }

  else
  {
    *v7 = sub_213F4E8C0();
    swift_storeEnumTagMultiPayload();
    sub_213F4A200();
    return sub_213F4DBA0();
  }
}

uint64_t sub_213F483E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C8, &qword_213F57320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_213F51DE0;
  *(v4 + 32) = sub_213F4E8D0();
  *(v4 + 40) = sub_213F4E8C0();
  sub_213F4F050();
  sub_213F4F060();
  MEMORY[0x2160521D0](v4);
  sub_213F4D2C0();
  v5 = *(a1 + 8);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v6 = sub_213F4E8C0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_213F51DE0;
  *(v7 + 32) = sub_213F4E8C0();
  *(v7 + 40) = sub_213F4E8D0();
  sub_213F4F050();
  sub_213F4F060();
  MEMORY[0x2160521D0](v7);
  sub_213F4D2C0();
  sub_213F4EEE0();
  sub_213F4D0C0();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v21[0] = v15;
  v21[1] = v16;
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v23[0] = v9;
  v23[1] = v10;
  *a2 = v15;
  *(a2 + 16) = v16;
  *(a2 + 48) = v18;
  *(a2 + 64) = v19;
  *(a2 + 32) = v17;
  *(a2 + 128) = v11;
  *(a2 + 144) = v12;
  *(a2 + 160) = v13;
  *(a2 + 96) = v9;
  *(a2 + 112) = v10;
  v22 = v20;
  v24 = v14;
  *(a2 + 80) = v20;
  *(a2 + 88) = v6;
  *(a2 + 176) = v14;
  v25[0] = v9;
  v25[1] = v10;
  v26 = v14;
  v25[3] = v12;
  v25[4] = v13;
  v25[2] = v11;
  sub_213DE3164(v21, v27, &qword_27C8F94E8, &unk_213F65730);

  sub_213DE3164(v23, v27, &qword_27C8F94E8, &unk_213F65730);
  sub_213DE36FC(v25, &qword_27C8F94E8, &unk_213F65730);

  v27[2] = v17;
  v27[3] = v18;
  v27[4] = v19;
  v28 = v20;
  v27[0] = v15;
  v27[1] = v16;
  return sub_213DE36FC(v27, &qword_27C8F94E8, &unk_213F65730);
}

uint64_t View.coordinatedMapsDesignMarquees()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CGSize(0);
  sub_213F4EA90();
  MEMORY[0x216051BF0](&v5, a1, &type metadata for CoordinatedMapsDesignMarquees, a2);
}

uint64_t sub_213F48748()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_213F4CD20();

  return v1;
}

uint64_t sub_213F487BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA60, &qword_213F65748);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - v4;
  v6 = sub_213F4F5B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA68, &unk_213F65750);
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA40, &qword_213F656E0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v21 = OBJC_IVAR____TtC10MapsDesignP33_43D951131FA075B6C4BE7F30380B0BA212LowPowerMode__isEnabled;
  v37 = 0;
  sub_213F4CD10();
  (*(v17 + 32))(v1 + v21, v20, v16);
  v22 = OBJC_IVAR____TtC10MapsDesignP33_43D951131FA075B6C4BE7F30380B0BA212LowPowerMode_subscription;
  *(v1 + OBJC_IVAR____TtC10MapsDesignP33_43D951131FA075B6C4BE7F30380B0BA212LowPowerMode_subscription) = 0;
  v23 = [objc_opt_self() defaultCenter];
  v24 = *MEMORY[0x277CCA5E8];
  sub_213F4F5C0();

  sub_213F1FF38();
  v25 = sub_213F4F580();
  v36 = v25;
  v26 = sub_213F4F570();
  (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
  sub_213F4ACE4(&qword_2811823D0, MEMORY[0x277CC9DB0]);
  sub_213F4ACE4(&unk_2811823F0, sub_213F1FF38);
  sub_213F4CD40();
  sub_213DE36FC(v5, &qword_27C8FCA60, &qword_213F65748);

  (*(v7 + 8))(v10, v6);
  swift_allocObject();
  swift_weakInit();
  sub_213DE3AE4(&qword_281183550, &qword_27C8FCA68, &unk_213F65750);
  v27 = v33;
  v28 = sub_213F4CD50();

  (*(v34 + 8))(v15, v27);
  v29 = *(v1 + v22);
  *(v1 + v22) = v28;

  v30 = [objc_opt_self() processInfo];
  LOBYTE(v27) = [v30 isLowPowerModeEnabled];

  swift_getKeyPath();
  swift_getKeyPath();
  v35 = v27;

  sub_213F4CD30();
  return v1;
}

uint64_t sub_213F48C98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = [objc_opt_self() processInfo];
    [v1 isLowPowerModeEnabled];

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_213F4CD30();
  }

  return result;
}

uint64_t sub_213F48D58()
{
  v1 = OBJC_IVAR____TtC10MapsDesignP33_43D951131FA075B6C4BE7F30380B0BA212LowPowerMode__isEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA40, &qword_213F656E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10MapsDesignP33_43D951131FA075B6C4BE7F30380B0BA212LowPowerMode_subscription);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_213F48E10@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LowPowerMode();
  result = sub_213F4CD00();
  *a1 = result;
  return result;
}

void sub_213F48E50(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_213F48E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213F4AD98();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

double CoordinatedMapsDesignMarquees.contentSize.getter()
{
  v3 = *v0;
  v4 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  return v2;
}

double sub_213F48F1C@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_213F48F7C(__int128 *a1, __int128 *a2)
{
  v5 = *(a2 + 2);
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  return sub_213F4EAB0();
}

uint64_t CoordinatedMapsDesignMarquees.contentSize.setter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  return sub_213F4EAB0();
}

void (*CoordinatedMapsDesignMarquees.contentSize.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  *(v3 + 80) = *v1;
  *(v3 + 88) = v6;
  v7 = v1[2];
  v4[12] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  return sub_213F490E0;
}

void sub_213F490E0(uint64_t *a1)
{
  v1 = *a1;
  *(*a1 + 24) = *(*a1 + 80);
  v2 = *(v1 + 104);
  *(v1 + 40) = *(v1 + 96);
  *(v1 + 64) = *(v1 + 48);
  sub_213F4EAB0();

  free(v1);
}

double CoordinatedMapsDesignMarquees.$contentSize.getter()
{
  v3 = *v0;
  v4 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAC0();
  return v2;
}

uint64_t CoordinatedMapsDesignMarquees.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = swift_allocObject();
  *(v8 + 2) = v5;
  *(v8 + 3) = v6;
  *(v8 + 4) = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9C8, &qword_213F65468);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9D0, &qword_213F65470) + 36));
  *v10 = sub_213F493C0;
  v10[1] = v8;
  KeyPath = swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9D8, &qword_213F65478);
  v13 = a2 + *(result + 36);
  *v13 = KeyPath;
  *(v13 + 8) = v14;
  *(v13 + 16) = v15;
  *(v13 + 24) = 0;
  return result;
}

uint64_t sub_213F492EC(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  result = sub_213F4EAA0();
  if (v5 == 0.0 && v6 == 0.0)
  {
    result = sub_213F4EAA0();
    if (v5 != v1 || v6 != v2)
    {
      return sub_213F4EAB0();
    }
  }

  return result;
}

uint64_t sub_213F493C0(double *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_213F492EC(a1);
}

uint64_t sub_213F493CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = swift_allocObject();
  *(v8 + 2) = v5;
  *(v8 + 3) = v6;
  *(v8 + 4) = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9C8, &qword_213F65468);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9D0, &qword_213F65470) + 36));
  *v10 = sub_213F4AE4C;
  v10[1] = v8;
  KeyPath = swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9D8, &qword_213F65478);
  v13 = a2 + *(result + 36);
  *v13 = KeyPath;
  *(v13 + 8) = v14;
  *(v13 + 16) = v15;
  *(v13 + 24) = 0;
  return result;
}

uint64_t MapsDesignMarquee<>.init(_:spacing:feathering:rate:delay:direction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, int a4@<W3>, double a5@<X4>, int a6@<W5>, double a7@<X6>, int a8@<W7>, double *a9@<X8>, double a10, unsigned __int8 a11, uint64_t a12)
{
  v62 = a8;
  v61 = a7;
  v58 = a5;
  v57 = a4;
  v56 = a3;
  v59 = a6;
  v60 = a11;
  v52 = a12;
  v53 = a2;
  v54 = sub_213F4D3B0();
  v14 = *(v54 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v54);
  v63 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B58, &unk_213F52120);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v51 - v26;
  sub_213DE3164(a12, &v51 - v26, &qword_27C8F7B58, &unk_213F52120);
  v28 = swift_allocObject();
  v55 = v28;
  v29 = v53;
  *(v28 + 16) = a1;
  *(v28 + 24) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B60, &qword_213F65480);
  v31 = a9 + v30[14];
  type metadata accessor for CGSize(0);
  v64 = 0;
  v65 = 0;
  sub_213F4EA90();
  v32 = v67;
  *v31 = v66;
  *(v31 + 2) = v32;
  v33 = a9 + v30[15];
  LOBYTE(v64) = 0;
  sub_213F4EA90();
  v34 = *(&v66 + 1);
  *v33 = v66;
  *(v33 + 1) = v34;
  v35 = v30[16];
  v36 = sub_213F4CB00();
  (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
  sub_213DE3164(v23, v21, &qword_27C8F7B50, &qword_213F653D0);
  sub_213F4EA90();
  sub_213DE36FC(v52, &qword_27C8F7B58, &unk_213F52120);
  v37 = v54;
  sub_213DE36FC(v23, &qword_27C8F7B50, &qword_213F653D0);
  v38 = a9 + v30[17];
  *v38 = swift_getKeyPath();
  *(v38 + 1) = 0;
  *(v38 + 8) = 0;
  v39 = v30[18];
  *(a9 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v40 = a9 + v30[19];
  *v40 = sub_213F47E1C;
  *(v40 + 1) = 0;
  v40[16] = 0;
  v41 = v56;
  if (v57)
  {
    v41 = 20.0;
  }

  v42 = v58;
  if (v59)
  {
    v42 = 8.0;
  }

  *a9 = v41;
  a9[1] = v42;
  v43 = v61;
  if (v62)
  {
    v43 = 30.0;
  }

  if (v60)
  {
    a10 = 2.0;
  }

  a9[2] = v43;
  a9[3] = a10;
  v45 = *(v14 + 48);
  if (v45(v27, 1, v37) == 1)
  {
    v46 = v63;
    (*(v14 + 104))(v63, *MEMORY[0x277CDFA88], v37);
    v47 = v46;
    if (v45(v27, 1, v37) != 1)
    {
      sub_213DE36FC(v27, &qword_27C8F7B58, &unk_213F52120);
    }
  }

  else
  {
    v47 = v63;
    (*(v14 + 32))(v63, v27, v37);
  }

  result = (*(v14 + 32))(a9 + v30[12], v47, v37);
  v49 = (a9 + v30[13]);
  v50 = v55;
  *v49 = sub_213F49A50;
  v49[1] = v50;
  return result;
}

uint64_t sub_213F499E4@<X0>(uint64_t a1@<X8>)
{
  sub_213DBC9EC();

  result = sub_213F4E310();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_213F49A50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_213F499E4(a1);
}

void sub_213F49AC0()
{
  sub_213F4D3B0();
  if (v0 <= 0x3F)
  {
    sub_213DE22E8();
    if (v1 <= 0x3F)
    {
      sub_213F49D50(319, &qword_281182798, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_213F49F50(319, &qword_2811827B0, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_213F49CEC(319, &qword_2811827E0, &qword_27C8F7B50, &qword_213F653D0, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_213F49CEC(319, &qword_2811834F8, &qword_27C8FC9E0, "Ď", MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_213F49D50(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_213F49DB4();
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

void sub_213F49CEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_213F49D50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_213F49DB4()
{
  if (!qword_2811834E8)
  {
    type metadata accessor for LowPowerMode();
    sub_213F4ACE4(&qword_281188118, type metadata accessor for LowPowerMode);
    v0 = sub_213F4CF50();
    if (!v1)
    {
      atomic_store(v0, &qword_2811834E8);
    }
  }
}

uint64_t type metadata accessor for LowPowerMode()
{
  result = qword_281188108;
  if (!qword_281188108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_213F49E9C()
{
  sub_213F49F50(319, &qword_281183548, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_213F49F50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_213F49FA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_213F4A000(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_213F4A064()
{
  result = qword_281183258;
  if (!qword_281183258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9C0, &qword_213F65458);
    sub_213F4A0F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183258);
  }

  return result;
}

unint64_t sub_213F4A0F0()
{
  result = qword_2811827F8;
  if (!qword_2811827F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9E8, &qword_213F655D0);
    sub_213F4A174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811827F8);
  }

  return result;
}

unint64_t sub_213F4A174()
{
  result = qword_281182B18;
  if (!qword_281182B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9F0, &qword_213F655D8);
    sub_213F4A200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B18);
  }

  return result;
}

unint64_t sub_213F4A200()
{
  result = qword_281182F78;
  if (!qword_281182F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9F8, &qword_213F655E0);
    sub_213F4A2B8();
    sub_213DE3AE4(&qword_281182880, &qword_27C8FC9A8, &qword_213F65440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F78);
  }

  return result;
}

unint64_t sub_213F4A2B8()
{
  result = qword_2811831D0;
  if (!qword_2811831D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FCA00, &qword_213F655E8);
    sub_213DE3AE4(&qword_2811826D8, &qword_27C8FCA08, &qword_213F655F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831D0);
  }

  return result;
}

unint64_t sub_213F4A370()
{
  result = qword_27C8FCA10;
  if (!qword_27C8FCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FCA10);
  }

  return result;
}

unint64_t sub_213F4A3C4()
{
  result = qword_27C8FCA18;
  if (!qword_27C8FCA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9D8, &qword_213F65478);
    sub_213F4A47C();
    sub_213DE3AE4(&qword_27C8FCA30, &qword_27C8FCA38, &qword_213F655F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FCA18);
  }

  return result;
}

unint64_t sub_213F4A47C()
{
  result = qword_27C8FCA20;
  if (!qword_27C8FCA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9D0, &qword_213F65470);
    sub_213DE3AE4(&qword_27C8FCA28, &qword_27C8FC9C8, &qword_213F65468);
    sub_213DE3AE4(&qword_2811828B8, &qword_27C8FC9B0, &qword_213F65448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FCA20);
  }

  return result;
}

uint64_t sub_213F4A57C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_213F4CD20();

  *a2 = v5;
  return result;
}

uint64_t sub_213F4A5FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_213F4CD30();
}

uint64_t sub_213F4A670@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a6;
  v30 = a5;
  v27 = a3;
  v28 = a2;
  v26 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA58, &qword_213F65740);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - v11;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v20 = sub_213F4D040();
  v22 = *(v20 - 8);
  result = v20 - 8;
  if (*(v22 + 64) == v9)
  {
    (*(v8 + 16))(v12, v26, v7);
    v28(v12);
    (*(v8 + 8))(v12, v7);
    v23 = v30;
    sub_213DBFEEC(v17, a4, v30);
    v24 = *(v13 + 8);
    v24(v17, a4);
    sub_213DBFEEC(v19, a4, v23);
    return (v24)(v19, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_213F4A8B4(double *a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v8);
  if ((*&v8 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = v8;
  }

  if ((~*&v8 & 0x7FF0000000000000) != 0)
  {
    v4 = v8;
  }

  if (v8 >= *a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = *a1;
  }

  if ((*&v9 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a1[1];
  }

  else
  {
    v6 = v9;
  }

  if ((~*&v9 & 0x7FF0000000000000) != 0)
  {
    v6 = v9;
  }

  if (v9 >= a1[1])
  {
    v7 = v6;
  }

  else
  {
    v7 = a1[1];
  }

  *a1 = v5;
  a1[1] = v7;
  return result;
}

uint64_t sub_213F4A934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  return sub_213F4A670(a1, *(v2 + 48), *(v2 + 56), *(v2 + 24), *(v2 + 40), a2);
}

uint64_t sub_213F4A944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for MapsDesignMarquee() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA58, &qword_213F65740) - 8);
  v11 = v2 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_213F45F9C(a1, (v2 + v8), v11, v5, v6, a2);
}

void sub_213F4AA50(double *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(type metadata accessor for MapsDesignMarquee() - 8) + 80);

  sub_213F47BAC(a1);
}

unint64_t sub_213F4AADC()
{
  result = qword_281185328[0];
  if (!qword_281185328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281185328);
  }

  return result;
}

uint64_t sub_213F4AB3C(uint64_t a1, _BYTE *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(type metadata accessor for MapsDesignMarquee() - 8) + 80);

  return sub_213F479F4(a1, a2);
}

double sub_213F4ABD8@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(sub_213F4D160() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  type metadata accessor for CGRect(0);
  sub_213F4D170();
  result = *&v5;
  *a1 = v5;
  return result;
}

uint64_t sub_213F4AC78(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for MapsDesignMarquee();
  v6 = v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  return sub_213F44440(a1, v5);
}

uint64_t sub_213F4ACE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213F4AD34()
{
  result = qword_281188808;
  if (!qword_281188808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281188808);
  }

  return result;
}

unint64_t sub_213F4AD98()
{
  result = qword_27C8FCA70;
  if (!qword_27C8FCA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9E0, "Ď");
    sub_213F4ACE4(&unk_281182358, type metadata accessor for CGSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FCA70);
  }

  return result;
}

uint64_t static Material.mapsDesignMaterial(_:)(uint64_t a1, uint64_t a2)
{
  sub_213E621D4();
  v4 = sub_213F4F600();
  if (!v4)
  {
    v4 = [objc_opt_self() mainBundle];
  }

  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_213F4EE10();
}

uint64_t sub_213F4AF28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t static String.mapsDesignLocalized(_:)(uint64_t a1)
{
  v2 = sub_213F4CB60();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_213F4F210();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v8 = qword_281182518;
  sub_213F4CB50();
  return sub_213F4F260();
}

id sub_213F4B0C4()
{
  sub_213E621D4();
  result = sub_213F4F600();
  if (!result)
  {
    result = [objc_opt_self() mainBundle];
  }

  qword_281182518 = result;
  return result;
}

uint64_t sub_213F4B150()
{
  v0 = sub_213F4DA00();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4D9F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA78, &qword_213F65840);
  sub_213F4B250();
  sub_213F4E5F0();
  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_213F4B250()
{
  result = qword_27C8FCA80;
  if (!qword_27C8FCA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FCA78, &qword_213F65840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FCA80);
  }

  return result;
}

id static UIFont.withStyleAndWeight(_:_:)(uint64_t a1, double a2)
{
  v3 = [swift_getObjCClassFromMetadata() preferredFontForTextStyle_];
  v4 = [v3 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA88, &qword_213F65848);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F55C80;
  v6 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA90, &qword_213F65850);
  v7 = swift_initStackObject();
  v8 = MEMORY[0x277D74430];
  *(v7 + 16) = xmmword_213F55C80;
  v9 = *v8;
  *(v7 + 32) = *v8;
  *(v7 + 40) = a2;
  v10 = v6;
  v11 = v9;
  v12 = sub_213F4B6C0(v7);
  swift_setDeallocating();
  sub_213DE36FC(v7 + 32, &qword_27C8FCA98, &qword_213F65858);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCAA0, &qword_213F65860);
  *(inited + 40) = v12;
  sub_213F4B7B0(inited, &qword_27C8FCAB0, &qword_213F65870, &qword_27C8FCAA8, &qword_213F65868);
  swift_setDeallocating();
  sub_213DE36FC(inited + 32, &qword_27C8FCAA8, &qword_213F65868);
  type metadata accessor for AttributeName(0);
  sub_213F4B8C8();
  v13 = sub_213F4F190();

  v14 = [v4 fontDescriptorByAddingAttributes_];

  [v3 pointSize];
  v16 = [objc_opt_self() fontWithDescriptor:v14 size:v15];

  return v16;
}

unint64_t sub_213F4B508(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_213F4F250();
  sub_213F4F880();
  sub_213F4F2C0();
  v4 = sub_213F4F8C0();

  return sub_213F4B598(a1, v4);
}

unint64_t sub_213F4B598(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_213F4F250();
      v9 = v8;
      if (v7 == sub_213F4F250() && v9 == v10)
      {
        break;
      }

      v12 = sub_213F4F830();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_213F4B6C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCAB8, &qword_213F65878);
    v3 = sub_213F4F7F0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_213F4B508(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_213F4B7B0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_213F4F7F0();
    v10 = a1 + 32;

    while (1)
    {
      sub_213DE3164(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_213F4B508(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_213E150C8(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

unint64_t sub_213F4B8C8()
{
  result = qword_281182390;
  if (!qword_281182390)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182390);
  }

  return result;
}

uint64_t VariableBlurView.init(blurRadius:reversed:)@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = a3;
  *(a2 + 24) = a1;
  return result;
}

uint64_t sub_213F4B970(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_213EA9188(0, v1, 0);
    v4 = (a1 + 56);
    v2 = v17;
    do
    {
      v9 = *(v4 - 3);
      v10 = *(v4 - 2);
      v11 = *(v4 - 1);
      v12 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCAD0, &unk_213F65A18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA890, &qword_213F5D620);
      swift_dynamicCast();
      v6 = *(v17 + 16);
      v5 = *(v17 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_213EA9188((v5 > 1), v6 + 1, 1);
      }

      *(v17 + 16) = v6 + 1;
      v7 = (v17 + 32 * v6);
      v7[4] = v13;
      v7[5] = v14;
      v7[6] = v15;
      v7[7] = v16;
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_213F4BAAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_213EA9168(0, v1, 0);
    v2 = v17;
    v4 = a1 + 32;
    do
    {
      sub_213F4C88C(v4, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCAD8, &qword_213F65A28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF70, &qword_213F5E2B0);
      swift_dynamicCast();
      v17 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_213EA9168((v5 > 1), v6 + 1, 1);
        v2 = v17;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 56 * v6;
      v8 = v13;
      v9 = v14;
      v10 = v15;
      *(v7 + 80) = v16;
      *(v7 + 48) = v9;
      *(v7 + 64) = v10;
      *(v7 + 32) = v8;
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_213F4BBF0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_213F4F7E0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_213EA91C8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x216052B30](i, a1);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_213EA91C8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_213E150C8(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_213EA91C8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_213E150C8(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id VariableBlurView.makeUIView(context:)()
{
  v1 = sub_213F4D7F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v15 = *v0;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v10 = sub_213F4BF94(v9);
  if (v7 == 1)
  {
    v15 = *&v6;
  }

  else
  {

    sub_213F4F520();
    v11 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213E053BC(v6, 0);
    (*(v2 + 8))(v5, v1);
  }

  v12 = [objc_opt_self() _effectWithVariableBlurRadius_imageMask_scale_];

  v13 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  return v13;
}

uint64_t sub_213F4BF94(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v2 setScale_];
  [v2 setPreferredRange_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithBounds:v2 format:{0.0, 0.0, 100.0, 100.0}];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = vdupq_n_s64(0x4059000000000000uLL);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_213F4C83C;
  *(v5 + 24) = v4;
  v12[4] = sub_213F4C84C;
  v12[5] = v5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_213F4C5A4;
  v12[3] = &block_descriptor_3;
  v6 = _Block_copy(v12);

  v7 = [v3 imageWithActions_];

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9 = [v7 CGImage];

    v10 = objc_allocWithZone(MEMORY[0x277D755B8]);
    if (v9)
    {
      v11 = [v10 initWithCGImage_];

      v2 = v9;
    }

    else
    {
      v11 = [v10 init];
    }

    return v11;
  }

  return result;
}

void sub_213F4C1EC(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v8 = 0;
  v9 = 0;
  v32 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v10 = 0.0;
  v11 = MEMORY[0x277D84F90];
  v12 = 1.0 == 0.0;
  if (1.0 <= 0.0)
  {
    goto LABEL_5;
  }

  while (!__OFADD__(v9++, 1))
  {
    v14 = v9 * 0.0333333333 + 0.0;
    if (a2)
    {
LABEL_4:
      v15 = v10 * (v10 * v10) + v10 * (v10 * ((1.0 - v10) * 3.0)) * 0.5 + (1.0 - v10) * ((1.0 - v10) * (1.0 - v10)) * 0.0 + v10 * ((1.0 - v10) * ((1.0 - v10) * 3.0)) * 0.5;
      goto LABEL_11;
    }

    while (1)
    {
      v15 = 1.0 - (v10 * (v10 * v10) + v10 * (v10 * ((1.0 - v10) * 3.0)) * 0.5 + (1.0 - v10) * ((1.0 - v10) * (1.0 - v10)) * 0.0 + v10 * ((1.0 - v10) * ((1.0 - v10) * 3.0)) * 0.5);
LABEL_11:
      v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v18 = [objc_opt_self() blackColor];
      v19 = [v18 colorWithAlphaComponent_];

      v20 = [v19 CGColor];
      MEMORY[0x2160527D0]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_213F4F400();
      }

      sub_213F4F420();
      v11 = v33;
      v21 = v17;
      MEMORY[0x2160527D0]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_213F4F400();
      }

      sub_213F4F420();

      v10 = v14;
      v12 = v14 == 1.0;
      if (v14 < 1.0)
      {
        break;
      }

LABEL_5:
      v16 = !v12;
      if ((v16 | v8))
      {
        v24 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
        [v24 setBounds_];
        sub_213F4BBF0(v11);

        v25 = sub_213F4F3E0();

        [v24 setColors_];

        sub_213DE48BC();
        v26 = sub_213F4F3E0();

        [v24 setLocations_];

        v31 = [a1 CGContext];
        [v24 renderInContext_];

        return;
      }

      v14 = 1.0;
      v8 = 1;
      if (a2)
      {
        goto LABEL_4;
      }
    }
  }

  __break(1u);
}

void sub_213F4C5A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_213F4C5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4C7E8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213F4C658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4C7E8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213F4C6BC()
{
  sub_213F4C7E8();
  sub_213F4DB60();
  __break(1u);
}

unint64_t sub_213F4C6E8()
{
  result = qword_27C8FCAC0;
  if (!qword_27C8FCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FCAC0);
  }

  return result;
}

uint64_t sub_213F4C748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_213F4C790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_213F4C7E8()
{
  result = qword_27C8FCAC8;
  if (!qword_27C8FCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FCAC8);
  }

  return result;
}

uint64_t sub_213F4C84C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_213F4C88C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCAD8, &qword_213F65A28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}