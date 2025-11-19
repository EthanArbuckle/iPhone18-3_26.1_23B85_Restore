uint64_t sub_25262576C(uint64_t a1, int a2)
{
  v3 = v2;
  v62 = *&a1;
  v63 = a2 & 1;
  v64 = a2;
  v46 = sub_252692A70();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_252692F80();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4068);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v39 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4070);
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v50 = &v39 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4078);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v39 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4080);
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v60 = &v39 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D38);
  MEMORY[0x28223BE20](v59);
  v58 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v39 - v15;
  v16 = sub_252692FA0();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252692F60();
  MEMORY[0x28223BE20](v19);
  v20 = sub_252692AB0();
  MEMORY[0x28223BE20](v20 - 8);
  v3[4] = 0.0;
  v65 = sub_25242D500();
  v54 = "lowerRange upperRange ";
  sub_252692AA0();
  v66 = MEMORY[0x277D84F90];
  sub_252666040(&qword_27F4DED10, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DED18);
  v21 = v11;
  sub_252400FC8(&qword_27F4DED20, &qword_27F4DED18);
  v22 = v3;
  sub_252693190();
  (*(v55 + 104))(v18, *MEMORY[0x277D85260], v56);
  v23 = v62;
  *(v3 + 5) = sub_252692FD0();
  v24 = *(*v3 + 120);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D30);
  v26 = v57;
  (*(*(v25 - 8) + 56))(v57, 1, 1, v25);
  sub_25237153C(v26, v58, &qword_27F4E0D38);
  v27 = v60;
  sub_252690660();
  sub_252372288(v26, &qword_27F4E0D38);
  (*(v61 + 32))(v22 + v24, v27, v21);
  v22[2] = v23;
  v28 = v64;
  *(v22 + 24) = v63;
  if (v28)
  {
    return v22;
  }

  swift_beginAccess();
  v29 = v51;
  sub_252690670();
  swift_endAccess();
  sub_252400FC8(&qword_27F4E4088, &qword_27F4E4068);
  v30 = v50;
  v31 = v53;
  sub_2526906C0();
  result = (*(v52 + 8))(v29, v31);
  if ((~*&v23 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v23 < 9.22337204e18)
  {
    v33 = v42;
    *v42 = v23;
    (*(v44 + 104))(v33, *MEMORY[0x277D85178], v46);
    v34 = v47;
    sub_252692F90();
    v66 = *(v22 + 5);
    sub_252400FC8(&qword_27F4E4090, &qword_27F4E4070);
    sub_252666040(&qword_27F4DED08, sub_25242D500);
    v35 = v39;
    v36 = v41;
    sub_2526906D0();
    (*(v48 + 8))(v34, v49);
    (*(v40 + 8))(v30, v36);
    sub_252400FC8(&qword_27F4E4098, &qword_27F4E4078);
    v37 = v45;
    v38 = sub_2526906E0();
    (*(v43 + 8))(v35, v37);
    *(v22 + 4) = v38;

    return v22;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_252626140(uint64_t a1, int a2)
{
  v3 = v2;
  v62 = *&a1;
  v63 = a2 & 1;
  v64 = a2;
  v46 = sub_252692A70();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_252692F80();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E40A0);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v39 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E40A8);
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v50 = &v39 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E40B0);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v39 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E40B8);
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v60 = &v39 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1900);
  MEMORY[0x28223BE20](v59);
  v58 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v39 - v15;
  v16 = sub_252692FA0();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252692F60();
  MEMORY[0x28223BE20](v19);
  v20 = sub_252692AB0();
  MEMORY[0x28223BE20](v20 - 8);
  v3[4] = 0.0;
  v65 = sub_25242D500();
  v54 = "lowerRange upperRange ";
  sub_252692AA0();
  v66 = MEMORY[0x277D84F90];
  sub_252666040(&qword_27F4DED10, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DED18);
  v21 = v11;
  sub_252400FC8(&qword_27F4DED20, &qword_27F4DED18);
  v22 = v3;
  sub_252693190();
  (*(v55 + 104))(v18, *MEMORY[0x277D85260], v56);
  v23 = v62;
  *(v3 + 5) = sub_252692FD0();
  v24 = *(*v3 + 120);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1908);
  v26 = v57;
  (*(*(v25 - 8) + 56))(v57, 1, 1, v25);
  sub_25237153C(v26, v58, &qword_27F4E1900);
  v27 = v60;
  sub_252690660();
  sub_252372288(v26, &qword_27F4E1900);
  (*(v61 + 32))(v22 + v24, v27, v21);
  v22[2] = v23;
  v28 = v64;
  *(v22 + 24) = v63;
  if (v28)
  {
    return v22;
  }

  swift_beginAccess();
  v29 = v51;
  sub_252690670();
  swift_endAccess();
  sub_252400FC8(&qword_27F4E40C0, &qword_27F4E40A0);
  v30 = v50;
  v31 = v53;
  sub_2526906C0();
  result = (*(v52 + 8))(v29, v31);
  if ((~*&v23 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v23 < 9.22337204e18)
  {
    v33 = v42;
    *v42 = v23;
    (*(v44 + 104))(v33, *MEMORY[0x277D85178], v46);
    v34 = v47;
    sub_252692F90();
    v66 = *(v22 + 5);
    sub_252400FC8(&qword_27F4E40C8, &qword_27F4E40A8);
    sub_252666040(&qword_27F4DED08, sub_25242D500);
    v35 = v39;
    v36 = v41;
    sub_2526906D0();
    (*(v48 + 8))(v34, v49);
    (*(v40 + 8))(v30, v36);
    sub_252400FC8(&qword_27F4E40D0, &qword_27F4E40B0);
    v37 = v45;
    v38 = sub_2526906E0();
    (*(v43 + 8))(v35, v37);
    *(v22 + 4) = v38;

    return v22;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_252626B98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E19D8);
  sub_252665FB8(a1 + *(v5 + 36), v4, type metadata accessor for AccessoryControl.ColorState);
  v6 = type metadata accessor for AccessoryControl.ColorState(0);
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658);
  return sub_2526926B0();
}

uint64_t sub_252626CA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D30);
  sub_252665FB8(a1 + *(v5 + 36), v4, type metadata accessor for AccessoryControl.ThermostatState);
  v6 = type metadata accessor for AccessoryControl.ThermostatState(0);
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20);
  return sub_2526926B0();
}

uint64_t sub_252626DA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1908);
  sub_252665FB8(a1 + *(v5 + 36), v4, type metadata accessor for AccessoryControl.IncrementalState);
  v6 = type metadata accessor for AccessoryControl.IncrementalState(0);
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810);
  return sub_2526926B0();
}

double sub_252626EB0()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ControlModuleView();
  v6 = v0 + *(v5 + 36);
  v17 = *(v6 + 64);
  v7 = *(v6 + 48);
  v16[2] = *(v6 + 32);
  v16[3] = v7;
  v8 = *(v6 + 16);
  v16[0] = *v6;
  v16[1] = v8;
  if ((v17 & 0x100) != 0)
  {
    v9 = *(v6 + 48);
    v13[2] = *(v6 + 32);
    v14 = v9;
    v15 = *(v6 + 64);
    v10 = *(v6 + 16);
    v13[0] = *v6;
    v13[1] = v10;
  }

  else
  {

    sub_252692F00();
    v11 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v16, &qword_27F4DC120);
    (*(v2 + 8))(v4, v1);
  }

  result = *(v0 + *(v5 + 32));
  if ((BYTE1(v14) & 1) == 0)
  {
    return result + -80.0;
  }

  return result;
}

uint64_t sub_252627080@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39B0);
  MEMORY[0x28223BE20](v74);
  v75 = &v70 - v2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39B8);
  MEMORY[0x28223BE20](v83);
  v77 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = &v70 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39C0);
  MEMORY[0x28223BE20](v80);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v70 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39C8);
  MEMORY[0x28223BE20](v82);
  v81 = &v70 - v9;
  v10 = sub_2526910F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Device.ControlModule(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  v20 = type metadata accessor for ControlRowSolver(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (&v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_252626EB0();
  v25 = v24;
  v26 = type metadata accessor for ControlModuleView();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DD8);
  MEMORY[0x2530A4210](v27);
  v72 = v26;
  v28 = *(v26 + 36);
  v79 = v1;
  v29 = (v1 + v28);
  v104 = *(v1 + v28 + 64);
  v30 = *(v1 + v28 + 48);
  v103[2] = *(v1 + v28 + 32);
  v103[3] = v30;
  v31 = *(v1 + v28 + 16);
  v103[0] = *(v1 + v28);
  v103[1] = v31;
  if ((v104 & 0x100) != 0)
  {
    v32 = v29[3];
    v100 = v29[2];
    v101 = v32;
    v102 = *(v29 + 64);
    v33 = v29[1];
    v98 = *v29;
    v99 = v33;
    v34 = v10;
  }

  else
  {

    sub_252692F00();
    v35 = v22;
    v36 = v10;
    v37 = sub_2526919C0();
    v70 = v19;
    v38 = v13;
    v39 = v11;
    v40 = v37;
    v41 = v35;
    sub_252690570();

    v11 = v39;
    v13 = v38;
    v19 = v70;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v103, &qword_27F4DC120);
    (*(v11 + 8))(v13, v36);
    v34 = v36;
    v22 = v41;
  }

  LOBYTE(v96[0]) = BYTE1(v101);
  sub_252627B18(v96, v19);
  sub_252665DD8(v16, type metadata accessor for Device.ControlModule);
  v97 = *(v29 + 32);
  v42 = v29[3];
  v96[2] = v29[2];
  v96[3] = v42;
  v43 = v29[1];
  v96[0] = *v29;
  v96[1] = v43;
  if ((v97 & 0x100) != 0)
  {
    v44 = v29[3];
    v93 = v29[2];
    v94 = v44;
    v95 = *(v29 + 64);
    v45 = v29[1];
    v91 = *v29;
    v92 = v45;
  }

  else
  {

    sub_252692F00();
    v46 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v96, &qword_27F4DC120);
    (*(v11 + 8))(v13, v34);
  }

  LOBYTE(v89[0]) = BYTE1(v94);
  sub_2526662C0(v19, v89, sub_252627F5C, 0, v22, v23, v25);
  v90 = *(v29 + 32);
  v47 = v29[3];
  v89[2] = v29[2];
  v89[3] = v47;
  v48 = v29[1];
  v89[0] = *v29;
  v89[1] = v48;
  if ((v90 & 0x100) == 0)
  {

    sub_252692F00();
    v60 = v11;
    v61 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v89, &qword_27F4DC120);
    (*(v60 + 8))(v13, v34);
    if ((BYTE1(v87) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v62 = sub_2526911D0();
    MEMORY[0x28223BE20](v62);
    v55 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39D0);
    sub_252636488(&qword_27F4E39D8, &qword_27F4E39D0, &unk_2526AA620, sub_252636458);
    v63 = v75;
    sub_2526925B0();
    sub_252692920();
    sub_252400FC8(&qword_27F4E3A68, &qword_27F4E39B0);
    v64 = v77;
    sub_252692140();
    sub_252372288(v63, &qword_27F4E39B0);
    v65 = sub_25263680C();
    v66 = v76;
    v67 = v83;
    sub_25268A710(v64, v83, v65);
    sub_252372288(v64, &qword_27F4E39B8);
    sub_25268A710(v66, v67, v65);
    sub_252400FC8(&qword_27F4E3A78, &qword_27F4E39C0);
    v57 = v81;
    sub_252688380(v64, v80, v67);
    sub_252372288(v64, &qword_27F4E39B8);
    v58 = v66;
    v59 = &qword_27F4E39B8;
    goto LABEL_12;
  }

  v49 = v29[3];
  v86 = v29[2];
  v87 = v49;
  v88 = *(v29 + 64);
  v50 = v29[1];
  v84 = *v29;
  v85 = v50;
  if (BYTE1(v49))
  {
    goto LABEL_11;
  }

LABEL_9:
  v51 = sub_252692900();
  MEMORY[0x28223BE20](v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A88);
  sub_252636984();
  v52 = v71;
  sub_252691C00();
  v53 = sub_252400FC8(&qword_27F4E3A78, &qword_27F4E39C0);
  v54 = v73;
  v55 = v22;
  v56 = v80;
  sub_25268A710(v52, v80, v53);
  sub_252372288(v52, &qword_27F4E39C0);
  sub_25268A710(v54, v56, v53);
  sub_25263680C();
  v57 = v81;
  sub_252688288(v52, v56);
  sub_252372288(v52, &qword_27F4E39C0);
  v58 = v54;
  v59 = &qword_27F4E39C0;
LABEL_12:
  sub_252372288(v58, v59);
  v68 = sub_2526368C4();
  sub_25268A710(v57, v82, v68);
  sub_252372288(v57, &qword_27F4E39C8);
  return sub_252665DD8(v55, type metadata accessor for ControlRowSolver);
}

uint64_t sub_252627B18@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Device.ControlGroup(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = v33 - v13;
  MEMORY[0x28223BE20](v15);
  v38 = v33 - v16;
  v17 = type metadata accessor for Device.ControlModule(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 1)
  {
    return sub_252665FB8(v2, a2, type metadata accessor for Device.ControlModule);
  }

  sub_252665FB8(v2, v19, type metadata accessor for Device.ControlModule);
  v35 = v19;
  v20 = *(v19 + 2);
  v21 = *(v20 + 16);
  if (v21)
  {
    v34 = a2;
    v39 = MEMORY[0x277D84F90];
    sub_252370650(0, v21, 0);
    v22 = v39;
    v23 = *(v9 + 80);
    v33[1] = v20;
    v37 = (v23 + 32) & ~v23;
    v24 = v20 + v37;
    v36 = *(v9 + 72);
    do
    {
      sub_252665FB8(v24, v14, type metadata accessor for Device.ControlGroup);
      sub_252665FB8(v14, v11, type metadata accessor for Device.ControlGroup);
      sub_252665FB8(v14, v7, type metadata accessor for Device.ControlGroup.LayoutType);
      sub_252665DD8(v14, type metadata accessor for Device.ControlGroup);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        sub_252665DD8(v11, type metadata accessor for Device.ControlGroup.LayoutType);
        sub_252665E38(v7, v11, type metadata accessor for Device.Control);
      }

      else
      {
        v25 = *v7;
        sub_252665DD8(v11, type metadata accessor for Device.ControlGroup.LayoutType);
        *v11 = v25;
      }

      v26 = v38;
      v27 = v5;
      swift_storeEnumTagMultiPayload();
      sub_252665E38(v11, v26, type metadata accessor for Device.ControlGroup);
      v39 = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_252370650(v28 > 1, v29 + 1, 1);
        v26 = v38;
        v22 = v39;
      }

      *(v22 + 16) = v29 + 1;
      v30 = v36;
      sub_252665E38(v26, v22 + v37 + v29 * v36, type metadata accessor for Device.ControlGroup);
      v24 += v30;
      --v21;
      v5 = v27;
    }

    while (v21);

    a2 = v34;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v32 = v35;
  *(v35 + 2) = v22;
  return sub_252665E38(v32, a2, type metadata accessor for Device.ControlModule);
}

uint64_t sub_252627F5C()
{
  type metadata accessor for Device.Control(0);
  Device.Control.Kind.primitive.getter(&v3);
  if (v3 > 8u)
  {

    v1 = 0;
  }

  else
  {
    v0 = sub_2526933B0();

    v1 = v0 ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_252628118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = type metadata accessor for ControlRowSolver(0);
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ControlModuleView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A88);
  v24 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v26 = sub_252667440();
  sub_252665FB8(a2, v10, type metadata accessor for ControlModuleView);
  sub_252665FB8(a1, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlRowSolver);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = (v9 + *(v23 + 80) + v17) & ~*(v23 + 80);
  v19 = swift_allocObject();
  sub_252665E38(v10, v19 + v17, type metadata accessor for ControlModuleView);
  sub_252665E38(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for ControlRowSolver);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AA0);
  sub_252400FC8(&qword_27F4E3AB0, &qword_27F4E3AA8);
  sub_252400FC8(&qword_27F4E3A98, &qword_27F4E3AA0);
  sub_252636B8C();
  sub_2526927B0();
  v20 = sub_252636984();
  sub_25268A710(v13, v11, v20);
  v21 = *(v24 + 8);
  v21(v13, v11);
  sub_25268A710(v16, v11, v20);
  return (v21)(v16, v11);
}

uint64_t sub_2526284F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AA0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  v14 = *a1;
  v13 = a1[1];
  sub_2526911C0();
  v17[4] = a2;
  v17[5] = v14;
  v17[6] = v13;
  v17[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39E8);
  sub_252636458();
  sub_2526927E0();
  v15 = sub_252400FC8(&qword_27F4E3A98, &qword_27F4E3AA0);
  sub_25268A710(v9, v7, v15);
  sub_252372288(v9, &qword_27F4E3AA0);
  sub_25268A710(v12, v7, v15);
  return sub_252372288(v12, &qword_27F4E3AA0);
}

uint64_t sub_252628698(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_252628804(a2, a3, a4, v10);
  v14 = sub_252636458();
  sub_25268A710(v10, v7, v14);
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_25268A710(v13, v7, v14);
  return (v15)(v13, v7);
}

uint64_t sub_252628804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v34 = a1;
  v38 = a4;
  v8 = type metadata accessor for ControlModuleView();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = type metadata accessor for ControlRowSolver(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39E8);
  v37 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v35 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v36 = &v32 - v17;
  v18 = *a3;
  v19 = sub_252666BCC();
  if (v18 / v19 > 1.0)
  {
    v20 = v18 / v19;
  }

  else
  {
    v20 = 1.0;
  }

  v39 = a2;
  sub_252665FB8(a3, &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlRowSolver);
  sub_252665FB8(v5, &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlModuleView);
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v33 + 80) + v23 + 8) & ~*(v33 + 80);
  v25 = swift_allocObject();
  sub_252665E38(v13, v25 + v21, type metadata accessor for ControlRowSolver);
  v26 = (v25 + v22);
  *v26 = v34;
  v26[1] = a2;
  *(v25 + v23) = v20;
  sub_252665E38(&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for ControlModuleView);
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39F8);
  sub_252400FC8(&qword_27F4E3AC8, &qword_27F4E3AC0);
  sub_252636504();
  sub_252666040(&qword_27F4E3AD0, type metadata accessor for DisplayControlGroup);
  v27 = v35;
  sub_2526927B0();
  v28 = sub_252636458();
  v29 = v36;
  sub_25268A710(v27, v14, v28);
  v30 = *(v37 + 8);
  v30(v27, v14);
  sub_25268A710(v29, v14, v28);
  return (v30)(v29, v14);
}

uint64_t sub_252628C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v25 = a3;
  v4 = type metadata accessor for ControlRowSolver(0);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for ControlModuleView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v26 = sub_252667440();
  sub_252665FB8(v23, v9, type metadata accessor for ControlModuleView);
  sub_252665FB8(a1, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlRowSolver);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = (v8 + *(v24 + 80) + v17) & ~*(v24 + 80);
  v19 = swift_allocObject();
  sub_252665E38(v9, v19 + v17, type metadata accessor for ControlModuleView);
  sub_252665E38(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for ControlRowSolver);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39E8);
  sub_252400FC8(&qword_27F4E3AB0, &qword_27F4E3AA8);
  sub_252636458();
  sub_252636B8C();
  sub_2526927B0();
  v20 = sub_252636488(&qword_27F4E39D8, &qword_27F4E39D0, &unk_2526AA620, sub_252636458);
  sub_25268A710(v13, v10, v20);
  v21 = *(v11 + 8);
  v21(v13, v10);
  sub_25268A710(v16, v10, v20);
  return (v21)(v16, v10);
}

uint64_t sub_252629030(uint64_t *a1, uint64_t a2, double *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_252628804(*a1, a1[1], a3, v8);
  v12 = sub_252636458();
  sub_25268A710(v8, v5, v12);
  v13 = *(v6 + 8);
  v13(v8, v5);
  sub_25268A710(v11, v5, v12);
  return (v13)(v11, v5);
}

uint64_t sub_25262918C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v36 = a5;
  v37 = a6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A08);
  MEMORY[0x28223BE20](v35);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39F8);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v20 = sub_252666DCC(a1);
  v21 = sub_252667440();
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = 32;
    while (*(v21 + v24) != a3)
    {
      ++v23;
      v24 += 16;
      if (v22 == v23)
      {
        goto LABEL_5;
      }
    }

    v33 = *(sub_252667440() + 16);

    v26 = v23 == 0;
    if (v33 - 1 == v23 && *(a4 + 16) == 1)
    {
      sub_252666BCC();
      goto LABEL_9;
    }
  }

  else
  {
LABEL_5:

    v26 = 0;
  }

  v27 = ceil(v20 / a7);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return result;
  }

LABEL_9:
  v28 = sub_25257C73C(a1, a4);
  v30 = v26 & *(v36 + *(type metadata accessor for ControlModuleView() + 28)) & ~v29;
  if (v28)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  sub_252629474(a1, a2, v31, v13);
  sub_252636590();
  sub_252691F20();
  sub_252372288(v13, &qword_27F4E3A08);
  v32 = sub_252636504();
  sub_25268A710(v16, v14, v32);
  sub_252372288(v16, &qword_27F4E39F8);
  sub_25268A710(v19, v14, v32);
  return sub_252372288(v19, &qword_27F4E39F8);
}

uint64_t sub_252629474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v227 = a2;
  LODWORD(v215) = a3;
  v229 = a1;
  v226 = a4;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AD8);
  MEMORY[0x28223BE20](v186);
  v190 = &v178 - v4;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AE0);
  MEMORY[0x28223BE20](v187);
  v182 = &v178 - v5;
  v193 = type metadata accessor for AccessoryControl.ElementIdentifier();
  v179 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v180 = v6;
  v181 = &v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v194 = &v178 - v8;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AE8);
  MEMORY[0x28223BE20](v185);
  v200 = &v178 - v9;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AF0);
  MEMORY[0x28223BE20](v195);
  v188 = &v178 - v10;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AF8);
  MEMORY[0x28223BE20](v219);
  v196 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v209 = &v178 - v13;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A58);
  MEMORY[0x28223BE20](v225);
  v210 = &v178 - v14;
  v15 = type metadata accessor for DisplayControl(0);
  MEMORY[0x28223BE20](v15 - 8);
  v218 = &v178 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B00);
  MEMORY[0x28223BE20](v17 - 8);
  v191 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v208 = (&v178 - v20);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A48);
  MEMORY[0x28223BE20](v212);
  v22 = &v178 - v21;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B08);
  MEMORY[0x28223BE20](v222);
  v224 = &v178 - v23;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B10);
  MEMORY[0x28223BE20](v202);
  v211 = &v178 - v24;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A18);
  MEMORY[0x28223BE20](v223);
  v213 = &v178 - v25;
  v26 = sub_2526910F0();
  v198 = *(v26 - 8);
  v199 = v26;
  MEMORY[0x28223BE20](v26);
  v197 = &v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for ControlModuleView();
  v205 = *(v217 - 8);
  v28 = *(v205 + 64);
  MEMORY[0x28223BE20](v217);
  v206 = &v178 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DisplayControlGroup(0);
  v204 = *(v29 - 8);
  v30 = *(v204 + 64);
  MEMORY[0x28223BE20](v29);
  v31 = type metadata accessor for ControlRowSolver(0);
  v203 = *(v31 - 8);
  v32 = *(v203 + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v178 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B18);
  MEMORY[0x28223BE20](v34 - 8);
  v183 = &v178 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v207 = (&v178 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A38);
  MEMORY[0x28223BE20](v38 - 8);
  v214 = &v178 - v39;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A28);
  MEMORY[0x28223BE20](v201);
  v184 = &v178 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v189 = &v178 - v42;
  v43 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v43);
  v45 = (&v178 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A08);
  MEMORY[0x28223BE20](v221);
  v220 = &v178 - v46;
  v216 = v29;
  sub_252665FB8(v229 + *(v29 + 24), v45, type metadata accessor for DisplayControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v192 = &v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = *v45;
    *v22 = sub_2526912E0();
    *(v22 + 1) = 0x4024000000000000;
    v218 = v22;
    v22[16] = 0;
    v69 = sub_2526912E0();
    v70 = v208;
    *v208 = v69;
    v70[1] = 0x4049000000000000;
    *(v70 + 16) = 0;
    v214 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E90) + 44);
    v237 = v68;
    sub_252665FB8(v227, &v178 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlRowSolver);
    sub_252665FB8(v229, &v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisplayControlGroup);
    v71 = v206;
    sub_252665FB8(v228, v206, type metadata accessor for ControlModuleView);
    v72 = (*(v203 + 80) + 16) & ~*(v203 + 80);
    v73 = (v32 + *(v204 + 80) + v72) & ~*(v204 + 80);
    v74 = (v30 + *(v205 + 80) + v73) & ~*(v205 + 80);
    v75 = swift_allocObject();
    sub_252665E38(v33, v75 + v72, type metadata accessor for ControlRowSolver);
    sub_252665E38(v192, v75 + v73, type metadata accessor for DisplayControlGroup);
    sub_252665E38(v71, v75 + v74, type metadata accessor for ControlModuleView);
    *(v75 + v74 + v28) = v215 & 1;
    v215 = v68;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E98);
    sub_25268DA10();
    sub_252400FC8(&qword_27F4E3EA0, &qword_27F4E3E98);
    sub_252639494();
    sub_252666040(&qword_27F4E3EC0, type metadata accessor for DisplayControl);
    sub_2526927B0();
    v76 = v229;
    v77 = sub_252666DCC(v229);
    v78 = (v76 + *(v216 + 28));
    v80 = *v78;
    v79 = v78[1];
    v81 = v228 + *(v217 + 36);
    v254 = *(v81 + 32);
    v82 = *(v81 + 3);
    v252 = *(v81 + 2);
    v253 = v82;
    v83 = *(v81 + 1);
    v250 = *v81;
    v251 = v83;
    if ((v254 & 0x100) != 0)
    {
      v84 = *(v81 + 3);
      v247 = *(v81 + 2);
      v248 = v84;
      v249 = v81[64];
      v85 = *(v81 + 1);
      v245 = *v81;
      v246 = v85;
    }

    else
    {

      sub_25237153C(&v250, &v237, &qword_27F4DC120);
      sub_252692F00();
      v131 = sub_2526919C0();
      sub_252690570();

      v132 = v197;
      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(&v250, &qword_27F4DC120);
      (*(v198 + 8))(v132, v199);
    }

    v133 = v191;
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3EC8);
    v103 = v218;
    v135 = &v218[*(v134 + 44)];
    v232 = v247;
    v233 = v248;
    v234 = v249;
    v230 = v245;
    v231 = v246;
    v136 = v208;
    sub_25237153C(v208, v133, &qword_27F4E3B00);
    sub_25237153C(v133, v135, &qword_27F4E3B00);
    v137 = (v135 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3ED0) + 48));
    *&v235 = v80;
    *(&v235 + 1) = v79;
    *v236 = v77;
    *(v236 + 8) = v230;
    *(&v236[1] + 8) = v231;
    *(&v236[2] + 8) = v232;
    *(&v236[3] + 8) = v233;
    BYTE8(v236[4]) = v234;
    v138 = v236[0];
    *v137 = v235;
    v137[1] = v138;
    v139 = v236[1];
    v140 = v236[2];
    v141 = v236[3];
    *(v137 + 73) = *(&v236[3] + 9);
    v137[3] = v140;
    v137[4] = v141;
    v137[2] = v139;
    sub_2526393EC(&v235, &v237);
    sub_252372288(v136, &qword_27F4E3B00);
    v237 = v80;
    v238 = v79;
    v239 = v77;
    v241 = v231;
    v242 = v232;
    v243 = v233;
    v244 = v234;
    v240 = v230;
    sub_252639424(&v237);
    sub_252372288(v133, &qword_27F4E3B00);

    v127 = &qword_27F4E3A48;
    sub_25237153C(v103, v211, &qword_27F4E3A48);
    swift_storeEnumTagMultiPayload();
    sub_252636700();
    sub_252400FC8(&qword_27F4E3A40, &qword_27F4E3A48);
    v142 = v213;
    sub_252691470();
    sub_25237153C(v142, v224, &qword_27F4E3A18);
    swift_storeEnumTagMultiPayload();
    sub_252636648();
    sub_252400FC8(&qword_27F4E3A50, &qword_27F4E3A58);
    v129 = v220;
    sub_252691470();
    v130 = v142;
LABEL_17:
    sub_252372288(v130, &qword_27F4E3A18);
    sub_252372288(v103, v127);
    v143 = v221;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v192 = &v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = *v45;
    v49 = sub_2526912E0();
    v50 = v214;
    *v214 = v49;
    *(v50 + 8) = 0x4024000000000000;
    *(v50 + 16) = 0;
    v51 = sub_2526911D0();
    v52 = v207;
    *v207 = v51;
    v52[1] = 0x4034000000000000;
    *(v52 + 16) = 0;
    v210 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3ED8) + 44);
    v237 = v48;
    sub_252665FB8(v227, &v178 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlRowSolver);
    sub_252665FB8(v229, &v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisplayControlGroup);
    v53 = v206;
    sub_252665FB8(v228, v206, type metadata accessor for ControlModuleView);
    v54 = (*(v203 + 80) + 16) & ~*(v203 + 80);
    v55 = (v32 + *(v204 + 80) + v54) & ~*(v204 + 80);
    v56 = (v30 + *(v205 + 80) + v55) & ~*(v205 + 80);
    v57 = swift_allocObject();
    sub_252665E38(v33, v57 + v54, type metadata accessor for ControlRowSolver);
    sub_252665E38(v192, v57 + v55, type metadata accessor for DisplayControlGroup);
    sub_252665E38(v53, v57 + v56, type metadata accessor for ControlModuleView);
    *(v57 + v56 + v28) = v215 & 1;
    v218 = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E98);
    sub_25268DA10();
    sub_252400FC8(&qword_27F4E3EA0, &qword_27F4E3E98);
    sub_252639494();
    sub_252666040(&qword_27F4E3EC0, type metadata accessor for DisplayControl);
    sub_2526927B0();
    v58 = v229;
    v59 = sub_252666DCC(v229);
    v60 = (v58 + *(v216 + 28));
    v62 = *v60;
    v61 = v60[1];
    v63 = v228 + *(v217 + 36);
    v254 = *(v63 + 32);
    v64 = *(v63 + 3);
    v252 = *(v63 + 2);
    v253 = v64;
    v65 = *(v63 + 1);
    v250 = *v63;
    v251 = v65;
    if ((v254 & 0x100) != 0)
    {
      v66 = *(v63 + 3);
      v247 = *(v63 + 2);
      v248 = v66;
      v249 = v63[64];
      v67 = *(v63 + 1);
      v245 = *v63;
      v246 = v67;
    }

    else
    {

      sub_25237153C(&v250, &v237, &qword_27F4DC120);
      sub_252692F00();
      v101 = sub_2526919C0();
      sub_252690570();

      v102 = v197;
      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(&v250, &qword_27F4DC120);
      (*(v198 + 8))(v102, v199);
    }

    v103 = v189;
    v104 = v183;
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3EE0);
    v106 = v214 + *(v105 + 44);
    v232 = v247;
    v233 = v248;
    v234 = v249;
    v230 = v245;
    v231 = v246;
    v107 = v207;
    sub_25237153C(v207, v104, &qword_27F4E3B18);
    sub_25237153C(v104, v106, &qword_27F4E3B18);
    v108 = (v106 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3EE8) + 48));
    *&v235 = v62;
    *(&v235 + 1) = v61;
    *v236 = v59;
    *(v236 + 8) = v230;
    *(&v236[1] + 8) = v231;
    *(&v236[2] + 8) = v232;
    *(&v236[3] + 8) = v233;
    BYTE8(v236[4]) = v234;
    v109 = v236[0];
    *v108 = v235;
    v108[1] = v109;
    v110 = v236[1];
    v111 = v236[2];
    v112 = v236[3];
    *(v108 + 73) = *(&v236[3] + 9);
    v108[3] = v111;
    v108[4] = v112;
    v108[2] = v110;
    sub_2526393EC(&v235, &v237);
    sub_252372288(v107, &qword_27F4E3B18);
    v237 = v62;
    v238 = v61;
    v239 = v59;
    v241 = v231;
    v242 = v232;
    v243 = v233;
    v244 = v234;
    v240 = v230;
    sub_252639424(&v237);
    sub_252372288(v104, &qword_27F4E3B18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4F8);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_252694EA0;
    LOBYTE(v106) = sub_252691A50();
    *(v113 + 32) = v106;
    v114 = sub_252691A70();
    *(v113 + 33) = v114;
    v115 = sub_252691A60();
    sub_252691A60();
    if (sub_252691A60() != v106)
    {
      v115 = sub_252691A60();
    }

    sub_252691A60();
    if (sub_252691A60() != v114)
    {
      v115 = sub_252691A60();
    }

    v116 = v201;
    v117 = v184;
    sub_252690760();
    v119 = v118;
    v121 = v120;
    v123 = v122;
    v125 = v124;
    sub_2523714D4(v214, v117, &qword_27F4E3A38);
    v126 = v117 + *(v116 + 36);
    *v126 = v115;
    *(v126 + 8) = v119;
    *(v126 + 16) = v121;
    *(v126 + 24) = v123;
    *(v126 + 32) = v125;
    *(v126 + 40) = 0;
    v127 = &qword_27F4E3A28;
    sub_2523714D4(v117, v103, &qword_27F4E3A28);
    sub_25237153C(v103, v211, &qword_27F4E3A28);
    swift_storeEnumTagMultiPayload();
    sub_252636700();
    sub_252400FC8(&qword_27F4E3A40, &qword_27F4E3A48);
    v128 = v213;
    sub_252691470();
    sub_25237153C(v128, v224, &qword_27F4E3A18);
    swift_storeEnumTagMultiPayload();
    sub_252636648();
    sub_252400FC8(&qword_27F4E3A50, &qword_27F4E3A58);
    v129 = v220;
    sub_252691470();
    v130 = v128;
    goto LABEL_17;
  }

  v86 = v218;
  sub_252665E38(v45, v218, type metadata accessor for DisplayControl);
  v87 = sub_2526912E0();
  v88 = v210;
  *v210 = v87;
  *(v88 + 8) = 0x4024000000000000;
  *(v88 + 16) = 0;
  v89 = sub_252667110(v86);
  v90 = v200;
  v91 = v228;
  sub_25262BB98(v228, v86, v215 & 1, v200);
  v92 = sub_25268DA10();
  v93 = v194;
  (*(*(v92 - 8) + 16))(v194, v86, v92);
  swift_storeEnumTagMultiPayload();
  if (byte_27F4FB500 == 1)
  {
    v94 = sub_252692520();
    v95 = v181;
    sub_252665FB8(v93, v181, type metadata accessor for AccessoryControl.ElementIdentifier);
    v96 = (*(v179 + 80) + 16) & ~*(v179 + 80);
    v97 = swift_allocObject();
    sub_252665E38(v95, v97 + v96, type metadata accessor for AccessoryControl.ElementIdentifier);
    v98 = v182;
    sub_25237153C(v90, v182, &qword_27F4E3AE8);
    v99 = (v98 + *(v187 + 36));
    *v99 = v94;
    v99[1] = sub_252639454;
    v99[2] = v97;
    sub_25237153C(v98, v190, &qword_27F4E3AE0);
    swift_storeEnumTagMultiPayload();
    sub_252636CF0();
    sub_252636DA8();
    v100 = v188;
    v90 = v200;
    sub_252691470();
    sub_252372288(v98, &qword_27F4E3AE0);
  }

  else
  {
    sub_25237153C(v90, v190, &qword_27F4E3AE8);
    swift_storeEnumTagMultiPayload();
    sub_252636CF0();
    sub_252636DA8();
    v100 = v188;
    sub_252691470();
  }

  sub_252665DD8(v93, type metadata accessor for AccessoryControl.ElementIdentifier);
  sub_252372288(v90, &qword_27F4E3AE8);
  v144 = sub_252691A20();
  sub_252690760();
  v145 = v100 + *(v195 + 36);
  *v145 = v144;
  *(v145 + 8) = v146;
  *(v145 + 16) = v147;
  *(v145 + 24) = v148;
  *(v145 + 32) = v149;
  *(v145 + 40) = 0;
  v150 = v218;
  sub_252635B24(v218);
  sub_2526392D4();
  v151 = v209;
  sub_252692070();

  sub_252372288(v100, &qword_27F4E3AF0);
  v152 = *(v150 + *(type metadata accessor for Device.Control(0) + 44));
  KeyPath = swift_getKeyPath();
  v154 = swift_allocObject();
  *(v154 + 16) = (v152 & 1) == 0;
  v155 = (v151 + *(v219 + 36));
  *v155 = KeyPath;
  v155[1] = sub_25247D5D8;
  v155[2] = v154;
  v156 = (v229 + *(v216 + 28));
  v157 = v156[1];
  v229 = *v156;
  v158 = v91 + *(v217 + 36);
  v159 = *(v158 + 3);
  v252 = *(v158 + 2);
  v253 = v159;
  v254 = *(v158 + 32);
  v160 = *(v158 + 1);
  v250 = *v158;
  v251 = v160;
  if ((v254 & 0x100) != 0)
  {
    v161 = *(v158 + 3);
    v247 = *(v158 + 2);
    v248 = v161;
    v249 = v158[64];
    v162 = *(v158 + 1);
    v245 = *v158;
    v246 = v162;
  }

  else
  {

    sub_25237153C(&v250, &v237, &qword_27F4DC120);
    sub_252692F00();
    v163 = sub_2526919C0();
    sub_252690570();

    v164 = v197;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v250, &qword_27F4DC120);
    (*(v198 + 8))(v164, v199);
  }

  v143 = v221;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E80);
  v167 = v209;
  v166 = v210;
  v168 = v210 + *(v165 + 44);
  v232 = v247;
  v233 = v248;
  v234 = v249;
  v230 = v245;
  v231 = v246;
  v169 = v196;
  sub_25237153C(v209, v196, &qword_27F4E3AF8);
  sub_25237153C(v169, v168, &qword_27F4E3AF8);
  v170 = (v168 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E88) + 48));
  v171 = v229;
  *&v235 = v229;
  *(&v235 + 1) = v157;
  *v236 = v89;
  *(v236 + 8) = v230;
  *(&v236[1] + 8) = v231;
  *(&v236[2] + 8) = v232;
  *(&v236[3] + 8) = v233;
  BYTE8(v236[4]) = v234;
  v172 = v236[0];
  *v170 = v235;
  v170[1] = v172;
  v173 = v236[1];
  v174 = v236[2];
  v175 = v236[3];
  *(v170 + 73) = *(&v236[3] + 9);
  v170[3] = v174;
  v170[4] = v175;
  v170[2] = v173;
  sub_2526393EC(&v235, &v237);
  sub_252372288(v167, &qword_27F4E3AF8);
  v237 = v171;
  v238 = v157;
  v239 = v89;
  v241 = v231;
  v242 = v232;
  v243 = v233;
  v244 = v234;
  v240 = v230;
  sub_252639424(&v237);
  sub_252372288(v169, &qword_27F4E3AF8);
  sub_25237153C(v166, v224, &qword_27F4E3A58);
  swift_storeEnumTagMultiPayload();
  sub_252636648();
  sub_252400FC8(&qword_27F4E3A50, &qword_27F4E3A58);
  v129 = v220;
  sub_252691470();
  sub_252372288(v166, &qword_27F4E3A58);
  sub_252665DD8(v218, type metadata accessor for DisplayControl);
LABEL_23:
  v176 = sub_252636590();
  sub_25268A710(v129, v143, v176);
  return sub_252372288(v129, &qword_27F4E3A08);
}

uint64_t sub_25262B1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v68 = a3;
  v69 = a7;
  v59 = a6;
  v60 = a2;
  v57 = a5;
  LODWORD(v62) = a4;
  v70 = a8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AD8);
  MEMORY[0x28223BE20](v64);
  v67 = &v55 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AE0);
  MEMORY[0x28223BE20](v66);
  v58 = &v55 - v11;
  v61 = type metadata accessor for AccessoryControl.ElementIdentifier();
  v55 = *(v61 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v61);
  v56 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AE8);
  MEMORY[0x28223BE20](v63);
  v17 = &v55 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AF0);
  MEMORY[0x28223BE20](v65);
  v19 = &v55 - v18;
  v20 = type metadata accessor for DisplayControl(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = a1;
  sub_252667110(a1);
  v27 = type metadata accessor for DisplayControlGroup(0);
  sub_252665FB8(v60 + *(v27 + 24), v26, type metadata accessor for DisplayControlGroup.LayoutType);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_252665E38(v26, v23, type metadata accessor for DisplayControl);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB158);
    v29 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_252694E90;
    sub_252665E38(v23, v28 + v29, type metadata accessor for DisplayControl);
  }

  else
  {
    v28 = *v26;
  }

  v30 = v71;
  v31 = sub_25257CD60(v71, v28);
  v33 = v32;

  sub_25262BB98(v68, v30, (v31 == 0) & ~v33 & v62, v17);
  v34 = sub_25268DA10();
  (*(*(v34 - 8) + 16))(v15, v30, v34);
  swift_storeEnumTagMultiPayload();
  if (byte_27F4FB500 == 1)
  {
    v62 = sub_252692520();
    v35 = v56;
    sub_252665FB8(v15, v56, type metadata accessor for AccessoryControl.ElementIdentifier);
    v36 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v37 = swift_allocObject();
    sub_252665E38(v35, v37 + v36, type metadata accessor for AccessoryControl.ElementIdentifier);
    v38 = v58;
    sub_25237153C(v17, v58, &qword_27F4E3AE8);
    v39 = v67;
    v40 = (v38 + *(v66 + 36));
    v41 = v59;
    *v40 = v62;
    v40[1] = v41;
    v40[2] = v37;
    sub_25237153C(v38, v39, &qword_27F4E3AE0);
    swift_storeEnumTagMultiPayload();
    sub_252636CF0();
    sub_252636DA8();
    sub_252691470();
    sub_252372288(v38, &qword_27F4E3AE0);
  }

  else
  {
    sub_25237153C(v17, v67, &qword_27F4E3AE8);
    swift_storeEnumTagMultiPayload();
    sub_252636CF0();
    sub_252636DA8();
    sub_252691470();
  }

  sub_252665DD8(v15, type metadata accessor for AccessoryControl.ElementIdentifier);
  sub_252372288(v17, &qword_27F4E3AE8);
  v42 = sub_252691A20();
  sub_252690760();
  v43 = &v19[*(v65 + 36)];
  *v43 = v42;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  v48 = v71;
  sub_252635B24(v71);
  sub_2526392D4();
  v49 = v70;
  sub_252692070();

  sub_252372288(v19, &qword_27F4E3AF0);
  v50 = *(v48 + *(type metadata accessor for Device.Control(0) + 44));
  KeyPath = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = (v50 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AF8);
  v54 = (v49 + *(result + 36));
  *v54 = KeyPath;
  v54[1] = a9;
  v54[2] = v52;
  return result;
}

__n128 sub_25262B928@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8))
  {
    v3 = *(v1 + 24);

    if (v3 == 1)
    {
      v4 = sub_252692360();
    }

    else
    {
      v4 = sub_252692330();
    }

    *&v33 = v4;
    v5 = sub_252691CD0();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    KeyPath = swift_getKeyPath();
    type metadata accessor for AnimationModel();
    sub_252666040(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    v13 = sub_252690DF0();
    v15 = v14;
    v32 = v9 & 1;
    sub_252692920();
    sub_252690D70();
    *&v21 = v5;
    *(&v21 + 1) = v7;
    LOBYTE(v22) = v9 & 1;
    *(&v22 + 1) = v11;
    *&v23 = KeyPath;
    BYTE8(v23) = 1;
    v24.n128_u64[0] = v13;
    v24.n128_u64[1] = v15;
    CGPointMake(&v21);
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = v24;
  }

  else
  {
    sub_252666020(&v33);
  }

  v16 = v42;
  *(a1 + 128) = v41;
  *(a1 + 144) = v16;
  *(a1 + 160) = v43;
  v17 = v38;
  *(a1 + 64) = v37;
  *(a1 + 80) = v17;
  v18 = v40;
  *(a1 + 96) = v39;
  *(a1 + 112) = v18;
  v19 = v34;
  *a1 = v33;
  *(a1 + 16) = v19;
  result = v36;
  *(a1 + 32) = v35;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25262BB98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v68 = a4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E40);
  MEMORY[0x28223BE20](v67);
  v57 = &v53 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E30);
  MEMORY[0x28223BE20](v60);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v53 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3EF0);
  MEMORY[0x28223BE20](v66);
  v64 = &v53 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3EF8);
  MEMORY[0x28223BE20](v62);
  v63 = &v53 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B48);
  MEMORY[0x28223BE20](v69);
  v59 = &v53 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B58);
  MEMORY[0x28223BE20](v61);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v58 = &v53 - v15;
  v16 = sub_2526910F0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a1 + *(type metadata accessor for ControlModuleView() + 36);
  v82 = *(v21 + 32);
  v22 = *(v21 + 3);
  v81[2] = *(v21 + 2);
  v81[3] = v22;
  v23 = *(v21 + 1);
  v81[0] = *v21;
  v81[1] = v23;
  if ((v82 & 0x100) != 0)
  {
    v24 = *(v21 + 2);
    v79 = *(v21 + 3);
    LOBYTE(v80) = v21[64];
    v25 = *v21;
    v77 = *(v21 + 1);
    v78 = v24;
    v76 = v25;
    if (BYTE1(v79))
    {
      goto LABEL_5;
    }
  }

  else
  {

    sub_252692F00();
    v26 = sub_2526919C0();
    v53 = a2;
    v27 = v26;
    sub_252690570();

    a2 = v53;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v81, &qword_27F4DC120);
    (*(v17 + 8))(v19, v16);
    if (BYTE1(v79))
    {
      goto LABEL_5;
    }
  }

  LOBYTE(v71) = *(a2 + *(type metadata accessor for DisplayControl(0) + 20));
  Device.Control.viewType(with:)(&v71, &v76);
  if (v76 - 6 < 6 || v76 == 15)
  {
    v32 = v58;
    sub_25262C654(a2, v65 & 1, v58);
    v33 = &qword_27F4E3B58;
    sub_25237153C(v32, v63, &qword_27F4E3B58);
    swift_storeEnumTagMultiPayload();
    sub_252636F44();
    sub_252639130();
    v34 = v59;
    sub_252691470();
    sub_25237153C(v34, v64, &qword_27F4E3B48);
    swift_storeEnumTagMultiPayload();
    sub_252636EB8();
    sub_2526391BC();
    sub_252691470();
    sub_252372288(v34, &qword_27F4E3B48);
    v35 = v32;
    goto LABEL_14;
  }

LABEL_5:
  v80 = *(v21 + 32);
  v28 = *(v21 + 2);
  v79 = *(v21 + 3);
  v29 = *v21;
  v77 = *(v21 + 1);
  v78 = v28;
  v76 = v29;
  if ((v80 & 0x100) != 0)
  {
    v30 = *(v21 + 3);
    v73 = *(v21 + 2);
    v74 = v30;
    v75 = v21[64];
    v31 = *v21;
    v72 = *(v21 + 1);
    v71 = v31;
  }

  else
  {

    sub_252692F00();
    v36 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v76, &qword_27F4DC120);
    (*(v17 + 8))(v19, v16);
  }

  if (BYTE1(v74) != 1 || (v37 = *(type metadata accessor for DisplayControl(0) + 20), v70 = *(a2 + v37), Device.Control.viewType(with:)(&v70, &v71), v71 > 0xFu) || ((1 << v71) & 0xE3D1) == 0)
  {
    v46 = v65 & 1;
    v47 = v57;
    sub_25262C654(a2, v65 & 1, v57);
    v48 = *v20;
    v49 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E50) + 36);
    *v49 = v46;
    *(v49 + 8) = v48;
    sub_252692920();
    sub_2526909C0();
    v50 = (v47 + *(v67 + 36));
    v51 = v72;
    *v50 = v71;
    v50[1] = v51;
    v50[2] = v73;
    sub_25237153C(v47, v64, &qword_27F4E3E40);
    swift_storeEnumTagMultiPayload();
    sub_252636EB8();
    sub_2526391BC();
    sub_252691470();
    v35 = v47;
    v45 = &qword_27F4E3E40;
    return sub_252372288(v35, v45);
  }

  v38 = v54;
  sub_25262C654(a2, v65 & 1, v54);
  v70 = *(a2 + v37);
  Device.Control.viewType(with:)(&v70, &v71);
  v39 = v63;
  sub_252626EB0();
  sub_252692920();
  sub_2526909C0();
  v40 = v55;
  sub_2523714D4(v38, v55, &qword_27F4E3B58);
  v41 = (v40 + *(v60 + 36));
  v42 = v72;
  *v41 = v71;
  v41[1] = v42;
  v41[2] = v73;
  v33 = &qword_27F4E3E30;
  v43 = v56;
  sub_2523714D4(v40, v56, &qword_27F4E3E30);
  sub_25237153C(v43, v39, &qword_27F4E3E30);
  swift_storeEnumTagMultiPayload();
  sub_252636F44();
  sub_252639130();
  v44 = v59;
  sub_252691470();
  sub_25237153C(v44, v64, &qword_27F4E3B48);
  swift_storeEnumTagMultiPayload();
  sub_252636EB8();
  sub_2526391BC();
  sub_252691470();
  sub_252372288(v44, &qword_27F4E3B48);
  v35 = v43;
LABEL_14:
  v45 = v33;
  return sub_252372288(v35, v45);
}

uint64_t sub_25262C654@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v947) = a2;
  v971 = a3;
  v810 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F00);
  MEMORY[0x28223BE20](v810);
  v809 = &v765 - v4;
  v805 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F08);
  MEMORY[0x28223BE20](v805);
  v804 = &v765 - v5;
  v807 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E00);
  MEMORY[0x28223BE20](v807);
  v806 = &v765 - v6;
  v970 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3DF0);
  MEMORY[0x28223BE20](v970);
  v808 = &v765 - v7;
  v800 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F10);
  MEMORY[0x28223BE20](v800);
  v801 = &v765 - v8;
  v859 = type metadata accessor for MenuPickerControlView();
  MEMORY[0x28223BE20](v859);
  v795 = &v765 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v799 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F18);
  v797 = *(v799 - 8);
  MEMORY[0x28223BE20](v799);
  v796 = &v765 - v10;
  v798 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E10);
  MEMORY[0x28223BE20](v798);
  v802 = &v765 - v11;
  v782 = type metadata accessor for StatusDetailsButtonControlView();
  MEMORY[0x28223BE20](v782);
  v781 = &v765 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F20);
  MEMORY[0x28223BE20](v13 - 8);
  v794 = &v765 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420);
  v792 = *(v15 - 8);
  v793 = v15;
  MEMORY[0x28223BE20](v15);
  v780 = &v765 - v16;
  v901 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3DD0);
  MEMORY[0x28223BE20](v901);
  v803 = &v765 - v17;
  v878 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F28);
  MEMORY[0x28223BE20](v878);
  v903 = &v765 - v18;
  v929 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3DA0);
  MEMORY[0x28223BE20](v929);
  v902 = &v765 - v19;
  v877 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3DB0);
  MEMORY[0x28223BE20](v877);
  v849 = &v765 - v20;
  v926 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F30);
  MEMORY[0x28223BE20](v926);
  v928 = &v765 - v21;
  v844 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F38);
  MEMORY[0x28223BE20](v844);
  v845 = &v765 - v22;
  v927 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D78);
  MEMORY[0x28223BE20](v927);
  v846 = &v765 - v23;
  v957 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D68);
  MEMORY[0x28223BE20](v957);
  v930 = &v765 - v24;
  v843 = type metadata accessor for AlarmAndTimerControlView(0);
  MEMORY[0x28223BE20](v843);
  v842 = (&v765 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v848 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F40);
  v847 = *(v848 - 8);
  MEMORY[0x28223BE20](v848);
  v898 = &v765 - v26;
  v27 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig(0);
  MEMORY[0x28223BE20](v27 - 8);
  v897 = &v765 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v872 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F48);
  MEMORY[0x28223BE20](v872);
  v871 = &v765 - v29;
  v940 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D30);
  MEMORY[0x28223BE20](v940);
  v873 = &v765 - v30;
  v868 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F50);
  MEMORY[0x28223BE20](v868);
  v869 = &v765 - v31;
  v934 = type metadata accessor for ColorControl(0);
  MEMORY[0x28223BE20](v934);
  v864 = &v765 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F58);
  v866 = *(v867 - 8);
  MEMORY[0x28223BE20](v867);
  v865 = &v765 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F60);
  MEMORY[0x28223BE20](v34 - 8);
  v862 = &v765 - v35;
  v861 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658);
  v860 = *(v861 - 8);
  MEMORY[0x28223BE20](v861);
  v933 = &v765 - v36;
  v863 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D40);
  MEMORY[0x28223BE20](v863);
  v870 = &v765 - v37;
  v839 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F68);
  MEMORY[0x28223BE20](v839);
  v840 = &v765 - v38;
  v895 = type metadata accessor for WheelPickerControlView();
  MEMORY[0x28223BE20](v895);
  v835 = &v765 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v838 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F70);
  v837 = *(v838 - 8);
  MEMORY[0x28223BE20](v838);
  v836 = &v765 - v40;
  v900 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D10);
  MEMORY[0x28223BE20](v900);
  v841 = &v765 - v41;
  v952 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F78);
  MEMORY[0x28223BE20](v952);
  v955 = &v765 - v42;
  v935 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F80);
  MEMORY[0x28223BE20](v935);
  v938 = &v765 - v43;
  v875 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F88);
  MEMORY[0x28223BE20](v875);
  v876 = &v765 - v44;
  v937 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3CE0);
  MEMORY[0x28223BE20](v937);
  v899 = &v765 - v45;
  v954 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3CD0);
  MEMORY[0x28223BE20](v954);
  v939 = &v765 - v46;
  v966 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3CC0);
  MEMORY[0x28223BE20](v966);
  v956 = &v765 - v47;
  v767 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C70);
  MEMORY[0x28223BE20](v767);
  v766 = &v765 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v768 = &v765 - v50;
  v778 = type metadata accessor for ThermostatControlView();
  MEMORY[0x28223BE20](v778);
  v779 = &v765 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F90);
  MEMORY[0x28223BE20](v52 - 8);
  v790 = &v765 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20);
  v787 = *(v54 - 8);
  v788 = v54;
  MEMORY[0x28223BE20](v54);
  v777 = &v765 - v55;
  v874 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3CF0);
  MEMORY[0x28223BE20](v874);
  v791 = &v765 - v56;
  v916 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F98);
  MEMORY[0x28223BE20](v916);
  v915 = &v765 - v57;
  v924 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C58);
  MEMORY[0x28223BE20](v924);
  v917 = &v765 - v58;
  v913 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FA0);
  MEMORY[0x28223BE20](v913);
  v912 = &v765 - v59;
  v932 = type metadata accessor for ButtonControlView();
  MEMORY[0x28223BE20](v932);
  v858 = &v765 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v911 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FA8);
  v853 = *(v911 - 8);
  MEMORY[0x28223BE20](v911);
  v852 = &v765 - v61;
  v905 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FB0);
  MEMORY[0x28223BE20](v905);
  v909 = &v765 - v62;
  v931 = type metadata accessor for StatusButtonControlView();
  MEMORY[0x28223BE20](v931);
  v904 = (&v765 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v906 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FB8);
  v851 = *(v906 - 8);
  MEMORY[0x28223BE20](v906);
  v850 = &v765 - v64;
  v907 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C78);
  MEMORY[0x28223BE20](v907);
  v908 = &v765 - v65;
  v910 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C68);
  MEMORY[0x28223BE20](v910);
  v914 = &v765 - v66;
  v920 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FC0);
  MEMORY[0x28223BE20](v920);
  v922 = &v765 - v67;
  v775 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FC8);
  MEMORY[0x28223BE20](v775);
  v774 = &v765 - v68;
  v921 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3CB0);
  MEMORY[0x28223BE20](v921);
  v776 = &v765 - v69;
  v953 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C48);
  MEMORY[0x28223BE20](v953);
  v923 = &v765 - v70;
  v896 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FD0);
  v833 = *(v896 - 8);
  MEMORY[0x28223BE20](v896);
  v886 = &v765 - v71;
  v892 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FD8);
  MEMORY[0x28223BE20](v892);
  v893 = &v765 - v72;
  v944 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3BF8);
  MEMORY[0x28223BE20](v944);
  v894 = &v765 - v73;
  v854 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FE0);
  MEMORY[0x28223BE20](v854);
  v857 = &v765 - v74;
  v925 = type metadata accessor for VerticalPickerControlView();
  MEMORY[0x28223BE20](v925);
  v771 = &v765 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v830 = &v765 - v77;
  v856 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FE8);
  v855 = *(v856 - 8);
  MEMORY[0x28223BE20](v856);
  v772 = &v765 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v832 = &v765 - v80;
  v918 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C08);
  MEMORY[0x28223BE20](v918);
  v773 = &v765 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v834 = &v765 - v83;
  v84 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v84 - 8);
  v919 = &v765 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v885 = &v765 - v87;
  MEMORY[0x28223BE20](v88);
  v770 = &v765 - v89;
  MEMORY[0x28223BE20](v90);
  v789 = &v765 - v91;
  MEMORY[0x28223BE20](v92);
  v823 = &v765 - v93;
  MEMORY[0x28223BE20](v94);
  v887 = &v765 - v95;
  v829 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FF0);
  MEMORY[0x28223BE20](v829);
  v786 = &v765 - v96;
  v826 = type metadata accessor for SliderControlView();
  MEMORY[0x28223BE20](v826);
  v824 = &v765 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FF8);
  v827 = *(v98 - 8);
  v828 = v98;
  MEMORY[0x28223BE20](v98);
  v825 = &v765 - v99;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4000);
  MEMORY[0x28223BE20](v100 - 8);
  v817 = &v765 - v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810);
  v815 = *(v102 - 8);
  v816 = v102;
  MEMORY[0x28223BE20](v102);
  v820 = &v765 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v104);
  v882 = &v765 - v105;
  v891 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3BD0);
  MEMORY[0x28223BE20](v891);
  v831 = &v765 - v106;
  v107 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v107 - 8);
  v884 = &v765 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v968 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4008);
  MEMORY[0x28223BE20](v968);
  v967 = &v765 - v109;
  v962 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4010);
  MEMORY[0x28223BE20](v962);
  v964 = &v765 - v110;
  v949 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4018);
  MEMORY[0x28223BE20](v949);
  v950 = &v765 - v111;
  v936 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4020);
  MEMORY[0x28223BE20](v936);
  v942 = &v765 - v112;
  v888 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4028);
  MEMORY[0x28223BE20](v888);
  v889 = &v765 - v113;
  v941 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B98);
  MEMORY[0x28223BE20](v941);
  v890 = &v765 - v114;
  v948 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B88);
  MEMORY[0x28223BE20](v948);
  v943 = &v765 - v115;
  v963 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B78);
  MEMORY[0x28223BE20](v963);
  v951 = (&v765 - v116);
  v969 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B68);
  MEMORY[0x28223BE20](v969);
  v965 = &v765 - v117;
  v821 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4030);
  MEMORY[0x28223BE20](v821);
  v785 = &v765 - v118;
  v959 = sub_2526910F0();
  v960 = *(v959 - 8);
  MEMORY[0x28223BE20](v959);
  v958 = &v765 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v880 = type metadata accessor for SwitchControlView(0);
  MEMORY[0x28223BE20](v880);
  v879 = &v765 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v784 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4038);
  v819 = *(v784 - 8);
  MEMORY[0x28223BE20](v784);
  v818 = &v765 - v121;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4040);
  MEMORY[0x28223BE20](v122 - 8);
  v783 = &v765 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v124);
  v814 = &v765 - v125;
  MEMORY[0x28223BE20](v126);
  v813 = &v765 - v127;
  MEMORY[0x28223BE20](v128);
  v130 = &v765 - v129;
  MEMORY[0x28223BE20](v131);
  v811 = &v765 - v132;
  MEMORY[0x28223BE20](v133);
  v812 = &v765 - v134;
  MEMORY[0x28223BE20](v135);
  v137 = &v765 - v136;
  MEMORY[0x28223BE20](v138);
  v769 = &v765 - v139;
  MEMORY[0x28223BE20](v140);
  v142 = &v765 - v141;
  MEMORY[0x28223BE20](v143);
  v145 = &v765 - v144;
  MEMORY[0x28223BE20](v146);
  v148 = &v765 - v147;
  v883 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3BA8);
  MEMORY[0x28223BE20](v883);
  v822 = &v765 - v149;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4048);
  v151 = v150 - 8;
  MEMORY[0x28223BE20](v150);
  v153 = &v765 - v152;
  v154 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v154 - 8);
  v881 = &v765 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v156);
  v945 = &v765 - v157;
  v946 = *(type metadata accessor for DisplayControl(0) + 20);
  LOBYTE(v983) = *(a1 + v946);
  v158 = a1;
  Device.Control.viewType(with:)(&v983, v994);
  LOBYTE(a1) = v994[0];
  v159 = *(type metadata accessor for Device.Control(0) + 20);
  v160 = &v153[*(v151 + 56)];
  *v153 = a1;
  v161 = v160;
  v961 = v158;
  sub_252665FB8(v158 + v159, v160, type metadata accessor for Device.Control.Kind);
  switch(*v153)
  {
    case 1:
    case 2:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_205;
      }

      goto LABEL_3;
    case 3:
      type metadata accessor for Device.Control.Kind(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
LABEL_3:
        sub_252393F68(*v161, *(v161 + 8), *(v161 + 16), *(v161 + 24), *(v161 + 32));
        v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428);
        sub_252665E38(v161 + *(v162 + 48), v945, type metadata accessor for AccessoryControl.BinaryViewConfig);
        v163 = type metadata accessor for ControlModuleView();
        v164 = v972;
        sub_252604038(v961, v137);
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
        if ((*(*(v165 - 8) + 48))(v137, 1, v165) == 1)
        {
          sub_252372288(v137, &qword_27F4E4040);
          goto LABEL_223;
        }

        sub_252605008(&v983);
        sub_252372288(v137, &qword_27F4DAE18);
        if (!*(&v983 + 1))
        {
          goto LABEL_223;
        }

        v166 = *&v984[8];
        v167 = *v984;
        v168 = *&v984[24];
        v169 = *&v984[16];
        v170 = *&v984[32];
        v961 = *(&v983 + 1);
        v957 = v983;
        v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1198);
        MEMORY[0x2530A4210](&v973);
        v952 = v167;
        v954 = v166;
        v956 = v169;
        v955 = v168;
        v946 = v170;
        if (*&v975[0] == 1)
        {
          sub_252393F68(v973, *(&v973 + 1), v974, *(&v974 + 1), 1);
        }

        else
        {
          v194 = v974;
          sub_252393F68(v973, *(&v973 + 1), v974, *(&v974 + 1), *&v975[0]);
          if (v194 != 1)
          {
            goto LABEL_75;
          }
        }

        v944 = v163;
        *&v983 = v957;
        *(&v983 + 1) = v961;
        *v984 = v167;
        *&v984[8] = v166;
        *&v984[16] = v169;
        *&v984[24] = v168;
        *&v984[32] = v170;
        MEMORY[0x2530A4210](&v973, v171);
        v195 = *&v975[0];
        if (*&v975[0] == 1)
        {
          sub_252393F68(v973, *(&v973 + 1), v974, *(&v974 + 1), 1);
          v196 = v858;
LABEL_77:
          v947 = *v164;
          v367 = v932;
          v368 = v196 + *(v932 + 32);
          *v368 = swift_getKeyPath();
          v368[8] = 0;
          v369 = v196 + v367[9];
          __asm { FMOV            V0.2D, #1.0 }

          v973 = _Q0;
          v375 = v957;

          v376 = v961;

          v377 = v954;
          v378 = v955;
          sub_25239F750(v167, v954, v956, v955, v170);
          type metadata accessor for CGSize(0);
          sub_2526924D0();
          v379 = *v984;
          *v369 = v983;
          *(v369 + 2) = v379;
          v380 = v196 + v367[10];
          LOBYTE(v973) = 0;
          sub_2526924D0();
          v381 = *(&v983 + 1);
          *v380 = v983;
          *(v380 + 1) = v381;
          *v196 = v947;
          v196[1] = v375;
          v196[2] = v376;
          v196[3] = v167;
          v382 = v956;
          v196[4] = v377;
          v196[5] = v382;
          v196[6] = v378;
          v196[7] = v170;
          sub_252665E38(v945, v196 + v367[6], type metadata accessor for AccessoryControl.BinaryViewConfig);
          *(v196 + v367[7]) = 0;
          v383 = v972 + *(v944 + 36);
          LOWORD(v985) = *(v383 + 32);
          v384 = *(v383 + 3);
          *&v984[16] = *(v383 + 2);
          *&v984[32] = v384;
          v385 = *v383;
          *v984 = *(v383 + 1);
          v983 = v385;
          if (BYTE1(v985))
          {
            v386 = *(v383 + 3);
            v975[0] = *(v383 + 2);
            v975[1] = v386;
            LOBYTE(v976) = v383[64];
            v387 = *v383;
            v974 = *(v383 + 1);
            v973 = v387;
          }

          else
          {

            sub_252692F00();
            v388 = sub_2526919C0();
            sub_252690570();

            v389 = v958;
            sub_2526910E0();
            swift_getAtKeyPath();
            sub_252372288(&v983, &qword_27F4DC120);
            (*(v960 + 8))(v389, v959);
          }

          v390 = v911;
          if (v973 != 1)
          {
            LOWORD(v976) = *(v383 + 32);
            v391 = *(v383 + 3);
            v975[0] = *(v383 + 2);
            v975[1] = v391;
            v392 = *v383;
            v974 = *(v383 + 1);
            v973 = v392;
            if (BYTE1(v976))
            {
              v393 = *(v383 + 3);
              v991 = *(v383 + 2);
              v992 = v393;
              LOBYTE(v993) = v383[64];
              v394 = *(v383 + 1);
              v989 = *v383;
              v990 = v394;
            }

            else
            {

              sub_252692F00();
              v519 = sub_2526919C0();
              sub_252690570();

              v520 = v958;
              sub_2526910E0();
              swift_getAtKeyPath();
              sub_252372288(&v973, &qword_27F4DC120);
              (*(v960 + 8))(v520, v959);
            }
          }

          v972 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C90);
          v521 = sub_252666040(&qword_27F4E3C98, type metadata accessor for ButtonControlView);
          v522 = sub_252637DB4();
          v523 = v852;
          v524 = v932;
          sub_252691D70();
          sub_252665DD8(v196, type metadata accessor for ButtonControlView);
          v525 = v853;
          (*(v853 + 16))(v909, v523, v390);
          swift_storeEnumTagMultiPayload();
          v526 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C80);
          v527 = v390;
          v528 = sub_252666040(&qword_27F4E2028, type metadata accessor for StatusButtonControlView);
          v529 = sub_252637CCC();
          *&v973 = v931;
          *(&v973 + 1) = v526;
          *&v974 = v528;
          *(&v974 + 1) = v529;
          swift_getOpaqueTypeConformance2();
          *&v973 = v524;
          *(&v973 + 1) = v972;
          *&v974 = v521;
          *(&v974 + 1) = v522;
          swift_getOpaqueTypeConformance2();
          v530 = v908;
          sub_252691470();
          (*(v525 + 8))(v523, v527);
LABEL_143:
          sub_25237153C(v530, v912, &qword_27F4E3C78);
          swift_storeEnumTagMultiPayload();
          sub_252637B34();
          v544 = v914;
          sub_252691470();
          sub_2526516F4(v957, v961, v952, v954, v956, v955, v946);
          sub_252372288(v530, &qword_27F4E3C78);
          sub_25237153C(v544, v915, &qword_27F4E3C68);
          swift_storeEnumTagMultiPayload();
          sub_252637AA8();
          v545 = v917;
          sub_252691470();
          sub_25237153C(v545, v922, &qword_27F4E3C58);
          swift_storeEnumTagMultiPayload();
          sub_2526384F0(&qword_27F4E3C50, &qword_27F4E3C58, &unk_2526AA760, sub_252637AA8);
          sub_252637E9C();
          v546 = v923;
          sub_252691470();
          sub_252372288(v545, &qword_27F4E3C58);
          sub_25237153C(v546, v950, &qword_27F4E3C48);
          swift_storeEnumTagMultiPayload();
          sub_2526370E8();
          sub_2526379F0();
          v547 = v951;
          sub_252691470();
          sub_252372288(v546, &qword_27F4E3C48);
          sub_25237153C(v547, v964, &qword_27F4E3B78);
          swift_storeEnumTagMultiPayload();
          sub_25263705C();
          sub_252637F28();
          v548 = v965;
          sub_252691470();
          sub_252372288(v547, &qword_27F4E3B78);
          sub_25237153C(v548, v967, &qword_27F4E3B68);
          swift_storeEnumTagMultiPayload();
          sub_252636FD0();
          sub_252638E18();
          sub_252691470();
          sub_252372288(v548, &qword_27F4E3B68);
          return sub_252372288(v544, &qword_27F4E3C68);
        }

        v352 = v973;
        v354 = *(&v974 + 1);
        v353 = v974;

        v355 = v353;
        v167 = v952;
        v164 = v972;
        sub_252393F68(v352, *(&v352 + 1), v355, v354, v195);
        v196 = v858;
        if (!v195)
        {
          goto LABEL_77;
        }

        v166 = v954;
        v168 = v955;
        v163 = v944;
LABEL_75:
        v356 = v168;
        v357 = v904;
        v358 = v169;
        v359 = v957;
        *v904 = *v164;
        v357[1] = v359;
        v360 = v961;
        v357[2] = v961;
        v357[3] = v167;
        v357[4] = v166;
        v357[5] = v358;
        v357[6] = v356;
        v357[7] = v170;
        v361 = v931;
        sub_252665E38(v945, v357 + *(v931 + 24), type metadata accessor for AccessoryControl.BinaryViewConfig);
        *(v357 + *(v361 + 28)) = v947 & 1;
        v362 = v164 + *(v163 + 36);
        LOWORD(v985) = *(v362 + 32);
        v363 = *(v362 + 3);
        *&v984[16] = *(v362 + 2);
        *&v984[32] = v363;
        v364 = *v362;
        *v984 = *(v362 + 1);
        v983 = v364;
        if (BYTE1(v985))
        {
          v365 = *(v362 + 3);
          v975[0] = *(v362 + 2);
          v975[1] = v365;
          LOBYTE(v976) = v362[64];
          v366 = *v362;
          v974 = *(v362 + 1);
          v973 = v366;

          sub_25239F750(v167, v166, v956, v955, v170);
        }

        else
        {
          sub_252651774(v359, v360, v167, v166, v956, v955, v170);
          sub_25237153C(&v983, &v973, &qword_27F4DC120);
          sub_252692F00();
          v395 = sub_2526919C0();
          sub_252690570();

          v396 = v958;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v983, &qword_27F4DC120);
          (*(v960 + 8))(v396, v959);
        }

        if (v973 != 1)
        {
          LOWORD(v976) = *(v362 + 32);
          v397 = *(v362 + 3);
          v975[0] = *(v362 + 2);
          v975[1] = v397;
          v398 = *v362;
          v974 = *(v362 + 1);
          v973 = v398;
          if (BYTE1(v976))
          {
            v399 = *(v362 + 3);
            v991 = *(v362 + 2);
            v992 = v399;
            LOBYTE(v993) = v362[64];
            v400 = *(v362 + 1);
            v989 = *v362;
            v990 = v400;
          }

          else
          {

            sub_252692F00();
            v531 = sub_2526919C0();
            sub_252690570();

            v532 = v958;
            sub_2526910E0();
            swift_getAtKeyPath();
            sub_252372288(&v973, &qword_27F4DC120);
            (*(v960 + 8))(v532, v959);
          }
        }

        v533 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C80);
        v534 = sub_252666040(&qword_27F4E2028, type metadata accessor for StatusButtonControlView);
        v535 = sub_252637CCC();
        v536 = v850;
        v537 = v931;
        v538 = v904;
        sub_252691D70();
        sub_252665DD8(v538, type metadata accessor for StatusButtonControlView);
        v539 = v851;
        v540 = v906;
        (*(v851 + 16))(v909, v536, v906);
        swift_storeEnumTagMultiPayload();
        *&v973 = v537;
        *(&v973 + 1) = v533;
        *&v974 = v534;
        *(&v974 + 1) = v535;
        swift_getOpaqueTypeConformance2();
        v541 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C90);
        v542 = sub_252666040(&qword_27F4E3C98, type metadata accessor for ButtonControlView);
        v543 = sub_252637DB4();
        *&v973 = v932;
        *(&v973 + 1) = v541;
        *&v974 = v542;
        *(&v974 + 1) = v543;
        swift_getOpaqueTypeConformance2();
        v530 = v908;
        sub_252691470();
        (*(v539 + 8))(v536, v540);
        goto LABEL_143;
      }

      if (EnumCaseMultiPayload != 2)
      {
LABEL_205:
        sub_252665DD8(v161, type metadata accessor for Device.Control.Kind);
LABEL_223:
        result = sub_252693260();
        __break(1u);
        return result;
      }

      v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0);
      v313 = v789;
      sub_252665E38(v161 + *(v312 + 48), v789, type metadata accessor for AccessoryControl.PickerViewConfig);
      v314 = type metadata accessor for ControlModuleView();
      v315 = v769;
      v316 = v961;
      sub_252604038(v961, v769);
      v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
      if ((*(*(v317 - 8) + 48))(v315, 1, v317) == 1)
      {
        sub_252372288(v315, &qword_27F4E4040);
        goto LABEL_223;
      }

      sub_252606404(&v983);
      sub_252372288(v315, &qword_27F4DAE18);
      v318 = *(&v983 + 1);
      v319 = v770;
      if (!*(&v983 + 1))
      {
        goto LABEL_223;
      }

      v320 = v983;
      v321 = *v984;
      v322 = v984[8];
      sub_252665FB8(v313, v770, type metadata accessor for AccessoryControl.PickerViewConfig);
      LOBYTE(v983) = *(v316 + v946);

      Device.Control.viewType(with:)(&v983, &v979);
      v323 = 0;
      if (v979 > 0xFu)
      {
        v324 = v771;
      }

      else
      {
        v324 = v771;
        if (((1 << v979) & 0x2011) != 0)
        {
          v325 = 0x4044000000000000;
        }

        else
        {
          if (((1 << v979) & 0x8C00) == 0)
          {
            goto LABEL_165;
          }

          v325 = 0x4059000000000000;
        }

        v323 = v325;
      }

LABEL_165:
      v961 = v320;
      *v324 = v320;
      *(v324 + 8) = v318;
      v955 = v321;
      *(v324 + 16) = v321;
      *(v324 + 24) = v322 & 1;
      v686 = v925;
      sub_252665E38(v319, v324 + *(v925 + 20), type metadata accessor for AccessoryControl.PickerViewConfig);
      *(v324 + v686[6]) = v323;
      v687 = v324 + v686[7];
      *v687 = swift_getKeyPath();
      *(v687 + 8) = 0;
      v688 = v324 + v686[8];
      *&v973 = 0;
      BYTE8(v973) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBBE8);
      sub_2526924D0();
      v689 = BYTE8(v983);
      v690 = *v984;
      *v688 = v983;
      *(v688 + 8) = v689;
      *(v688 + 16) = v690;
      v691 = v324 + v686[9];
      *&v973 = 0;
      BYTE8(v973) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0F00);
      sub_2526924D0();
      v692 = BYTE8(v983);
      v693 = *v984;
      *v691 = v983;
      *(v691 + 8) = v692;
      *(v691 + 16) = v693;
      v694 = v972 + *(v314 + 36);
      v695 = *(v694 + 3);
      *&v984[16] = *(v694 + 2);
      *&v984[32] = v695;
      LOWORD(v985) = *(v694 + 32);
      v696 = *v694;
      *v984 = *(v694 + 1);
      v983 = v696;
      if (BYTE1(v985))
      {
        v697 = *(v694 + 3);
        v975[0] = *(v694 + 2);
        v975[1] = v697;
        LOBYTE(v976) = v694[64];
        v698 = *v694;
        v974 = *(v694 + 1);
        v973 = v698;
      }

      else
      {

        sub_252692F00();
        v699 = sub_2526919C0();
        sub_252690570();

        v700 = v958;
        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v983, &qword_27F4DC120);
        (*(v960 + 8))(v700, v959);
      }

      v957 = v318;
      LODWORD(v956) = v322;
      if (v973 != 1)
      {
        LOWORD(v976) = *(v694 + 32);
        v701 = *(v694 + 3);
        v975[0] = *(v694 + 2);
        v975[1] = v701;
        v702 = *v694;
        v974 = *(v694 + 1);
        v973 = v702;
        if (BYTE1(v976))
        {
          v703 = *(v694 + 3);
          v991 = *(v694 + 2);
          v992 = v703;
          LOBYTE(v993) = v694[64];
          v704 = *(v694 + 1);
          v989 = *v694;
          v990 = v704;
        }

        else
        {

          sub_252692F00();
          v726 = sub_2526919C0();
          sub_252690570();

          v727 = v958;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v973, &qword_27F4DC120);
          (*(v960 + 8))(v727, v959);
        }
      }

      v728 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C10);
      v729 = sub_252666040(&qword_27F4E3C18, type metadata accessor for VerticalPickerControlView);
      v730 = sub_2526377FC();
      v731 = v772;
      v732 = v925;
      sub_252691D70();
      sub_252665DD8(v324, type metadata accessor for VerticalPickerControlView);
      v733 = v855;
      v734 = v856;
      (*(v855 + 16))(v857, v731, v856);
      swift_storeEnumTagMultiPayload();
      *&v973 = v732;
      *(&v973 + 1) = v728;
      *&v974 = v729;
      *(&v974 + 1) = v730;
      swift_getOpaqueTypeConformance2();
      v735 = v773;
      sub_252691470();
      sub_252651638(v961, v957);
      (*(v733 + 8))(v731, v734);
      sub_25237153C(v735, v774, &qword_27F4E3C08);
      swift_storeEnumTagMultiPayload();
      sub_2526376E4();
      v736 = v776;
      sub_252691470();
      sub_25237153C(v736, v922, &qword_27F4E3CB0);
      swift_storeEnumTagMultiPayload();
      sub_2526384F0(&qword_27F4E3C50, &qword_27F4E3C58, &unk_2526AA760, sub_252637AA8);
      sub_252637E9C();
      v737 = v923;
      sub_252691470();
      sub_252372288(v736, &qword_27F4E3CB0);
      sub_25237153C(v737, v950, &qword_27F4E3C48);
      swift_storeEnumTagMultiPayload();
      sub_2526370E8();
      sub_2526379F0();
      v738 = v951;
      sub_252691470();
      sub_252372288(v737, &qword_27F4E3C48);
      sub_25237153C(v738, v964, &qword_27F4E3B78);
      swift_storeEnumTagMultiPayload();
      sub_25263705C();
      sub_252637F28();
      v739 = v965;
      sub_252691470();
      sub_252372288(v738, &qword_27F4E3B78);
      sub_25237153C(v739, v967, &qword_27F4E3B68);
      swift_storeEnumTagMultiPayload();
      sub_252636FD0();
      sub_252638E18();
      sub_252691470();
      sub_252372288(v739, &qword_27F4E3B68);
      sub_252372288(v735, &qword_27F4E3C08);
      v576 = type metadata accessor for AccessoryControl.PickerViewConfig;
      v577 = v789;
      return sub_252665DD8(v577, v576);
    case 4:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_223;
      }

      v276 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8) + 48);
      v945 = v161;
      v277 = v884;
      sub_252665E38(v161 + v276, v884, type metadata accessor for AccessoryControl.IncrementalConfig);
      v278 = type metadata accessor for ControlModuleView();
      v279 = v972;
      sub_252604038(v961, v145);
      v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
      if ((*(*(v280 - 8) + 48))(v145, 1, v280) == 1)
      {
        sub_252372288(v145, &qword_27F4E4040);
        v281 = v817;
        (*(v815 + 56))(v817, 1, 1, v816);
      }

      else
      {
        v281 = v817;
        sub_252605974(v817);
        sub_252372288(v145, &qword_27F4DAE18);
        v282 = (*(v815 + 48))(v281, 1, v816);
        v283 = v824;
        if (v282 != 1)
        {
          v284 = v882;
          sub_2523714D4(v281, v882, &qword_27F4E1810);
          v285 = *v279;
          v286 = v820;
          sub_25237153C(v284, v820, &qword_27F4E1810);
          LOBYTE(v983) = *(v961 + v946);
          Device.Control.viewType(with:)(&v983, &v979);
          v287 = 0;
          v288 = v826;
          if (v979 > 0xFu)
          {
            v289 = v947;
            goto LABEL_133;
          }

          v289 = v947;
          if (((1 << v979) & 0x2011) != 0)
          {
            v290 = 0x4044000000000000;
          }

          else
          {
            if (((1 << v979) & 0x8C00) == 0)
            {
LABEL_133:
              sub_252665FB8(v277, v283 + *(v826 + 32), type metadata accessor for AccessoryControl.IncrementalConfig);
              *v283 = v285;
              sub_2523714D4(v286, v283 + v288[5], &qword_27F4E1810);
              *(v283 + v288[6]) = v287;
              *(v283 + v288[7]) = v289 & 1;
              v497 = v283 + v288[9];
              *&v973 = 0;
              BYTE8(v973) = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBBE8);
              sub_2526924D0();
              v498 = BYTE8(v983);
              v499 = *v984;
              *v497 = v983;
              v497[8] = v498;
              *(v497 + 2) = v499;
              v500 = v283 + v288[10];
              *&v973 = 0;
              BYTE8(v973) = 1;
              sub_2526924D0();
              v501 = BYTE8(v983);
              v502 = *v984;
              *v500 = v983;
              v500[8] = v501;
              *(v500 + 2) = v502;
              v503 = v283 + v288[11];
              LOBYTE(v973) = 0;
              sub_2526924D0();
              v504 = *(&v983 + 1);
              *v503 = v983;
              *(v503 + 1) = v504;
              v505 = v288[12];
              *&v973 = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1840);
              sub_2526924D0();
              *(v283 + v505) = v983;
              v506 = v283 + v288[13];
              *v506 = swift_getKeyPath();
              v506[8] = 0;
              v507 = v279 + *(v278 + 36);
              LOWORD(v985) = *(v507 + 32);
              v508 = *(v507 + 3);
              *&v984[16] = *(v507 + 2);
              *&v984[32] = v508;
              v509 = *v507;
              *v984 = *(v507 + 1);
              v983 = v509;
              if (BYTE1(v985))
              {
                v510 = *(v507 + 3);
                v975[0] = *(v507 + 2);
                v975[1] = v510;
                LOBYTE(v976) = v507[64];
                v511 = *v507;
                v974 = *(v507 + 1);
                v973 = v511;
              }

              else
              {

                sub_252692F00();
                v512 = sub_2526919C0();
                sub_252690570();

                v513 = v958;
                sub_2526910E0();
                swift_getAtKeyPath();
                sub_252372288(&v983, &qword_27F4DC120);
                (*(v960 + 8))(v513, v959);
              }

              v514 = v786;
              if (v973 != 1)
              {
                LOWORD(v976) = *(v507 + 32);
                v515 = *(v507 + 3);
                v975[0] = *(v507 + 2);
                v975[1] = v515;
                v516 = *v507;
                v974 = *(v507 + 1);
                v973 = v516;
                if (BYTE1(v976))
                {
                  v517 = *(v507 + 3);
                  v991 = *(v507 + 2);
                  v992 = v517;
                  LOBYTE(v993) = v507[64];
                  v518 = *(v507 + 1);
                  v989 = *v507;
                  v990 = v518;
                }

                else
                {

                  sub_252692F00();
                  v660 = sub_2526919C0();
                  sub_252690570();

                  v661 = v958;
                  sub_2526910E0();
                  swift_getAtKeyPath();
                  sub_252372288(&v973, &qword_27F4DC120);
                  (*(v960 + 8))(v661, v959);
                }
              }

              v662 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3BD8);
              v663 = sub_252666040(&qword_27F4E3BE0, type metadata accessor for SliderControlView);
              v664 = sub_252637518();
              v665 = v825;
              sub_252691D70();
              sub_252665DD8(v283, type metadata accessor for SliderControlView);
              v667 = v827;
              v666 = v828;
              (*(v827 + 16))(v514, v665, v828);
              swift_storeEnumTagMultiPayload();
              *&v973 = v288;
              *(&v973 + 1) = v662;
              *&v974 = v663;
              *(&v974 + 1) = v664;
              swift_getOpaqueTypeConformance2();
              v668 = v831;
              sub_252691470();
              (*(v667 + 8))(v665, v666);
              sub_252372288(v882, &qword_27F4E1810);
              sub_25237153C(v668, v889, &qword_27F4E3BD0);
              swift_storeEnumTagMultiPayload();
              sub_252637200();
              sub_252637400();
              v669 = v890;
              sub_252691470();
              sub_25237153C(v669, v942, &qword_27F4E3B98);
              swift_storeEnumTagMultiPayload();
              sub_252637174();
              sub_252637600();
              v670 = v943;
              sub_252691470();
              sub_252372288(v669, &qword_27F4E3B98);
              sub_25237153C(v670, v950, &qword_27F4E3B88);
              swift_storeEnumTagMultiPayload();
              sub_2526370E8();
              sub_2526379F0();
              v671 = v951;
              sub_252691470();
              sub_252372288(v670, &qword_27F4E3B88);
              sub_25237153C(v671, v964, &qword_27F4E3B78);
              swift_storeEnumTagMultiPayload();
              sub_25263705C();
              sub_252637F28();
              v672 = v965;
              sub_252691470();
              sub_252372288(v671, &qword_27F4E3B78);
              sub_25237153C(v672, v967, &qword_27F4E3B68);
              swift_storeEnumTagMultiPayload();
              sub_252636FD0();
              sub_252638E18();
              sub_252691470();
              sub_252372288(v672, &qword_27F4E3B68);
              sub_252372288(v668, &qword_27F4E3BD0);
              sub_252665DD8(v884, type metadata accessor for AccessoryControl.IncrementalConfig);
              v673 = &qword_27F4DB218;
              return sub_252372288(v945, v673);
            }

            v290 = 0x4059000000000000;
          }

          v287 = v290;
          goto LABEL_133;
        }
      }

      sub_252372288(v281, &qword_27F4E4000);
      goto LABEL_223;
    case 5:
    case 6:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_223;
      }

      v172 = v161 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8) + 48);
      v979 = *v172;
      *&v980 = *(v172 + 16);
      sub_252372288(v161, &qword_27F4DB2A0);
      v173 = type metadata accessor for ControlModuleView();
      v174 = v972;
      v175 = v961;
      sub_252604038(v961, v130);
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
      if ((*(*(v176 - 8) + 48))(v130, 1, v176) == 1)
      {
        sub_252372288(v130, &qword_27F4E4040);
        v177 = v862;
        (*(v860 + 56))(v862, 1, 1, v861);
      }

      else
      {
        v177 = v862;
        sub_252609030(v862);
        sub_252372288(v130, &qword_27F4DAE18);
        v178 = (*(v860 + 48))(v177, 1, v861);
        v179 = v864;
        if (v178 != 1)
        {
          v180 = v177;
          v181 = v933;
          sub_2523714D4(v180, v933, &qword_27F4DE658);
          LOBYTE(v973) = *(v175 + v946);
          Device.Control.viewType(with:)(&v973, &v983);
          v182 = v983 == 6;
          v183 = v934;
          sub_25237153C(v181, v179 + *(v934 + 28), &qword_27F4DE658);
          v184 = *v174;
          *v179 = swift_getKeyPath();
          *(v179 + 8) = 0;
          *(v179 + 16) = swift_getKeyPath();
          *(v179 + 24) = 0;
          KeyPath = swift_getKeyPath();
          v994[0] = 0;
          *(v179 + 32) = KeyPath;
          *(v179 + 97) = 0;
          v186 = v179 + v183[12];
          LOBYTE(v973) = 0;
          sub_2526924D0();
          v187 = *(&v983 + 1);
          *v186 = v983;
          *(v186 + 8) = v187;
          v188 = v179 + v183[8];
          *v188 = v979;
          *(v188 + 16) = v980;
          *(v179 + v183[9]) = v182;
          *(v179 + v183[10]) = v184;
          *(v179 + v183[11]) = v947 & 1;
          v189 = v174 + *(v173 + 36);
          v190 = *(v189 + 3);
          *&v984[16] = *(v189 + 2);
          *&v984[32] = v190;
          LOWORD(v985) = *(v189 + 32);
          v191 = *(v189 + 1);
          v983 = *v189;
          *v984 = v191;
          if (BYTE1(v985))
          {
            v192 = *(v189 + 3);
            v975[0] = *(v189 + 2);
            v975[1] = v192;
            LOBYTE(v976) = v189[64];
            v193 = *v189;
            v974 = *(v189 + 1);
            v973 = v193;
          }

          else
          {

            sub_252692F00();
            v326 = sub_2526919C0();
            sub_252690570();

            v327 = v958;
            sub_2526910E0();
            swift_getAtKeyPath();
            sub_252372288(&v983, &qword_27F4DC120);
            (*(v960 + 8))(v327, v959);
          }

          if (v973 != 1)
          {
            LOWORD(v976) = *(v189 + 32);
            v328 = *(v189 + 3);
            v975[0] = *(v189 + 2);
            v975[1] = v328;
            v329 = *v189;
            v974 = *(v189 + 1);
            v973 = v329;
            if (BYTE1(v976))
            {
              v330 = *(v189 + 3);
              v991 = *(v189 + 2);
              v992 = v330;
              LOBYTE(v993) = v189[64];
              v331 = *(v189 + 1);
              v989 = *v189;
              v990 = v331;
            }

            else
            {

              sub_252692F00();
              v438 = sub_2526919C0();
              sub_252690570();

              v439 = v958;
              sub_2526910E0();
              swift_getAtKeyPath();
              sub_252372288(&v973, &qword_27F4DC120);
              (*(v960 + 8))(v439, v959);
            }
          }

          v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D48);
          v441 = sub_252666040(&qword_27F4E3D50, type metadata accessor for ColorControl);
          v442 = sub_25263868C();
          v443 = v865;
          v444 = v934;
          sub_252691D70();
          sub_252665DD8(v179, type metadata accessor for ColorControl);
          v445 = v866;
          v446 = v867;
          (*(v866 + 16))(v869, v443, v867);
          swift_storeEnumTagMultiPayload();
          *&v973 = v444;
          *(&v973 + 1) = v440;
          *&v974 = v441;
          *(&v974 + 1) = v442;
          swift_getOpaqueTypeConformance2();
          v447 = v870;
          sub_252691470();
          (*(v445 + 8))(v443, v446);
          sub_252372288(v933, &qword_27F4DE658);
          sub_25237153C(v447, v871, &qword_27F4E3D40);
          swift_storeEnumTagMultiPayload();
          sub_252638574();
          v448 = v873;
          sub_252691470();
          sub_25237153C(v448, v938, &qword_27F4E3D30);
          swift_storeEnumTagMultiPayload();
          sub_25263806C();
          sub_2526384F0(&qword_27F4E3D28, &qword_27F4E3D30, &unk_2526AA7D0, sub_252638574);
          v449 = v939;
          sub_252691470();
          sub_252372288(v448, &qword_27F4E3D30);
          sub_25237153C(v449, v955, &qword_27F4E3CD0);
          swift_storeEnumTagMultiPayload();
          sub_252637FB4();
          sub_252638774();
          v450 = v956;
          sub_252691470();
          sub_252372288(v449, &qword_27F4E3CD0);
          sub_25237153C(v450, v964, &qword_27F4E3CC0);
          swift_storeEnumTagMultiPayload();
          sub_25263705C();
          sub_252637F28();
          v451 = v965;
          sub_252691470();
          sub_252372288(v450, &qword_27F4E3CC0);
          sub_25237153C(v451, v967, &qword_27F4E3B68);
          swift_storeEnumTagMultiPayload();
          sub_252636FD0();
          sub_252638E18();
          sub_252691470();
          sub_252372288(v451, &qword_27F4E3B68);
          return sub_252372288(v447, &qword_27F4E3D40);
        }
      }

      sub_252372288(v177, &qword_27F4E3F60);
      goto LABEL_223;
    case 7:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_223;
      }

      v231 = *v161;
      v232 = *(v161 + 8);
      v233 = *(v161 + 16);
      v234 = v972;
      v235 = *v972;
      v988 = 0;
      *&v979 = v235;
      BYTE8(v979) = v947 & 1;
      *&v980 = v231;
      *(&v980 + 1) = v232;
      LOBYTE(v981[0]) = v233;
      *(&v981[0] + 1) = sub_2525312C8;
      *&v981[1] = 0;
      BYTE8(v981[1]) = 0;
      v236 = v234 + *(type metadata accessor for ControlModuleView() + 36);
      LOWORD(v985) = *(v236 + 32);
      v237 = *(v236 + 3);
      *&v984[16] = *(v236 + 2);
      *&v984[32] = v237;
      v238 = *v236;
      *v984 = *(v236 + 1);
      v983 = v238;
      if (BYTE1(v985))
      {
        v239 = *(v236 + 3);
        v975[0] = *(v236 + 2);
        v975[1] = v239;
        LOBYTE(v976) = v236[64];
        v240 = *v236;
        v974 = *(v236 + 1);
        v973 = v240;
      }

      else
      {

        sub_252692F00();
        v411 = sub_2526919C0();
        sub_252690570();

        v412 = v958;
        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v983, &qword_27F4DC120);
        (*(v960 + 8))(v412, v959);
      }

      if (v973 != 1)
      {
        LOWORD(v976) = *(v236 + 32);
        v413 = *(v236 + 3);
        v975[0] = *(v236 + 2);
        v975[1] = v413;
        v414 = *v236;
        v974 = *(v236 + 1);
        v973 = v414;
        if (BYTE1(v976))
        {
          v415 = *(v236 + 3);
          v991 = *(v236 + 2);
          v992 = v415;
          LOBYTE(v993) = v236[64];
          v416 = *(v236 + 1);
          v989 = *v236;
          v990 = v416;
        }

        else
        {

          sub_252692F00();
          v595 = sub_2526919C0();
          sub_252690570();

          v596 = v958;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v973, &qword_27F4DC120);
          (*(v960 + 8))(v596, v959);
        }
      }

      v597 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C28);
      v598 = sub_2526378E4();
      v599 = sub_252637938();
      v600 = v886;
      sub_252691D70();
      v973 = v979;
      v974 = v980;
      v975[0] = v981[0];
      *(v975 + 9) = *(v981 + 9);
      sub_2526517F0(&v973);
      v601 = v833;
      v602 = v600;
      v603 = v896;
      (*(v833 + 16))(v893, v602, v896);
      swift_storeEnumTagMultiPayload();
      sub_2526376E4();
      *&v989 = &type metadata for MediaPlayerView;
      *(&v989 + 1) = v597;
      *&v990 = v598;
      *(&v990 + 1) = v599;
      swift_getOpaqueTypeConformance2();
      v604 = v894;
      sub_252691470();
      sub_25237153C(v604, v942, &qword_27F4E3BF8);
      swift_storeEnumTagMultiPayload();
      sub_252637174();
      sub_252637600();
      v605 = v943;
      sub_252691470();
      sub_252372288(v604, &qword_27F4E3BF8);
      sub_25237153C(v605, v950, &qword_27F4E3B88);
      swift_storeEnumTagMultiPayload();
      sub_2526370E8();
      sub_2526379F0();
      v606 = v951;
      sub_252691470();
      sub_252372288(v605, &qword_27F4E3B88);
      sub_25237153C(v606, v964, &qword_27F4E3B78);
      swift_storeEnumTagMultiPayload();
      sub_25263705C();
      sub_252637F28();
      v607 = v965;
      sub_252691470();
      sub_252372288(v606, &qword_27F4E3B78);
      sub_25237153C(v607, v967, &qword_27F4E3B68);
      swift_storeEnumTagMultiPayload();
      sub_252636FD0();
      sub_252638E18();
      sub_252691470();
      sub_252372288(v607, &qword_27F4E3B68);
      return (*(v601 + 8))(v886, v603);
    case 8:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_223;
      }

      v301 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0) + 48);
      v945 = v161;
      v302 = (v161 + v301);
      v303 = v302[5];
      v985 = v302[4];
      v986 = v303;
      LOWORD(v987[0]) = *(v302 + 48);
      v304 = v302[1];
      v983 = *v302;
      *v984 = v304;
      v305 = v302[2];
      *&v984[32] = v302[3];
      *&v984[16] = v305;
      v306 = type metadata accessor for ControlModuleView();
      v307 = v972;
      v308 = v812;
      sub_252604038(v961, v812);
      v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
      if ((*(*(v309 - 8) + 48))(v308, 1, v309) == 1)
      {
        sub_252385F08(&v983);
        sub_252372288(v308, &qword_27F4E4040);
        v310 = v790;
        (*(v787 + 56))(v790, 1, 1, v788);
      }

      else
      {
        v310 = v790;
        sub_2526086C8(v790);
        sub_252372288(v308, &qword_27F4DAE18);
        if ((*(v787 + 48))(v310, 1, v788) != 1)
        {
          v961 = v306;
          v608 = v310;
          v609 = v777;
          sub_2523714D4(v608, v777, &qword_27F4E0C20);
          v610 = v779;
          sub_25237153C(v609, v779, &qword_27F4E0C20);
          v953 = *v307;
          v611 = v778;
          v612 = v610 + *(v778 + 32);
          *v612 = swift_getKeyPath();
          *(v612 + 8) = 0;
          v613 = v610 + v611[9];
          v614 = swift_getKeyPath();
          v988 = 0;
          *v613 = v614;
          *(v613 + 65) = 0;
          v615 = (v610 + v611[10]);
          type metadata accessor for AccessoryControlLegacyViewModel();
          sub_252666040(&qword_27F4E0C50, type metadata accessor for AccessoryControlLegacyViewModel);
          *v615 = sub_252690DF0();
          v615[1] = v616;
          v617 = (v610 + v611[11]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C60);
          swift_allocObject();
          *&v989 = sub_25262576C(0x406F400000000000, 0);
          sub_2526924D0();
          v618 = *(&v973 + 1);
          *v617 = v973;
          v617[1] = v618;
          v619 = v610 + v611[12];
          v620 = _s9KnobStateOMa(0);
          v951 = *(*(v620 - 8) + 56);
          v621 = v768;
          (v951)(v768, 1, 1, v620);
          sub_25237153C(v621, v766, &qword_27F4E0C70);
          sub_2526924D0();
          sub_252372288(v621, &qword_27F4E0C70);
          v622 = v610 + v611[5];
          v623 = v986;
          *(v622 + 64) = v985;
          *(v622 + 80) = v623;
          *(v622 + 96) = v987[0];
          v624 = *v984;
          *v622 = v983;
          *(v622 + 16) = v624;
          v625 = *&v984[32];
          *(v622 + 32) = *&v984[16];
          *(v622 + 48) = v625;
          (v951)(v621, 1, 1, v620);
          sub_252372288(v619, &qword_27F4E0C28);
          *(v619 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28) + 28)) = 0;
          sub_2523714D4(v621, v619, &qword_27F4E0C70);
          v626 = v610 + v611[13];
          *v626 = 0;
          *(v626 + 8) = 0;
          *(v610 + v611[6]) = v953;
          *(v610 + v611[7]) = v947 & 1;
          v627 = v972 + *(v961 + 36);
          v628 = *(v627 + 3);
          v975[0] = *(v627 + 2);
          v975[1] = v628;
          LOWORD(v976) = *(v627 + 32);
          v629 = *v627;
          v974 = *(v627 + 1);
          v973 = v629;
          if (BYTE1(v976))
          {
            v630 = *(v627 + 3);
            v991 = *(v627 + 2);
            v992 = v630;
            LOBYTE(v993) = v627[64];
            v631 = *(v627 + 1);
            v989 = *v627;
            v990 = v631;
          }

          else
          {

            sub_252692F00();
            v720 = sub_2526919C0();
            sub_252690570();

            v721 = v958;
            sub_2526910E0();
            swift_getAtKeyPath();
            sub_252372288(&v973, &qword_27F4DC120);
            (*(v960 + 8))(v721, v959);
          }

          v428 = v876;
          v429 = v791;
          if (v989 != 1)
          {
            v993 = *(v627 + 32);
            v722 = *(v627 + 3);
            v991 = *(v627 + 2);
            v992 = v722;
            v723 = *(v627 + 1);
            v989 = *v627;
            v990 = v723;
            if ((v993 & 0x100) != 0)
            {
              v724 = *(v627 + 3);
              v981[0] = *(v627 + 2);
              v981[1] = v724;
              v982 = v627[64];
              v725 = *v627;
              v980 = *(v627 + 1);
              v979 = v725;
            }

            else
            {

              sub_252692F00();
              v756 = sub_2526919C0();
              sub_252690570();

              v757 = v958;
              sub_2526910E0();
              swift_getAtKeyPath();
              sub_252372288(&v989, &qword_27F4DC120);
              (*(v960 + 8))(v757, v959);
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3CF8);
          sub_252666040(&qword_27F4E2190, type metadata accessor for ThermostatControlView);
          sub_252638208();
          v758 = v779;
          sub_252691D70();
          sub_252372288(v777, &qword_27F4E0C20);
          sub_252665DD8(v758, type metadata accessor for ThermostatControlView);
          v759 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4060);
          (*(*(v759 - 8) + 56))(v429, 0, 1, v759);
LABEL_199:
          sub_25237153C(v429, v428, &qword_27F4E3CF0);
          swift_storeEnumTagMultiPayload();
          sub_2526380F8();
          sub_2526382F0();
          v760 = v429;
          v761 = v899;
          sub_252691470();
          sub_25237153C(v761, v938, &qword_27F4E3CE0);
          swift_storeEnumTagMultiPayload();
          sub_25263806C();
          sub_2526384F0(&qword_27F4E3D28, &qword_27F4E3D30, &unk_2526AA7D0, sub_252638574);
          v762 = v939;
          sub_252691470();
          sub_252372288(v761, &qword_27F4E3CE0);
          sub_25237153C(v762, v955, &qword_27F4E3CD0);
          swift_storeEnumTagMultiPayload();
          sub_252637FB4();
          sub_252638774();
          v763 = v956;
          sub_252691470();
          sub_252372288(v762, &qword_27F4E3CD0);
          sub_25237153C(v763, v964, &qword_27F4E3CC0);
          swift_storeEnumTagMultiPayload();
          sub_25263705C();
          sub_252637F28();
          v764 = v965;
          sub_252691470();
          sub_252372288(v763, &qword_27F4E3CC0);
          sub_25237153C(v764, v967, &qword_27F4E3B68);
          swift_storeEnumTagMultiPayload();
          sub_252636FD0();
          sub_252638E18();
          sub_252691470();
          sub_252372288(v764, &qword_27F4E3B68);
          sub_252372288(v760, &qword_27F4E3CF0);
          v673 = &qword_27F4DB258;
          return sub_252372288(v945, v673);
        }

        sub_252385F08(&v983);
      }

      v428 = v876;
      v429 = v791;
      sub_252372288(v310, &qword_27F4E3F90);
      v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4060);
      (*(*(v430 - 8) + 56))(v429, 1, 1, v430);
      goto LABEL_199;
    case 9:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_223;
      }

      v221 = v161;
      v222 = v897;
      sub_252665E38(v221, v897, type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
      v223 = v843;
      v224 = v842;
      sub_252665FB8(v222, v842 + *(v843 + 20), type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
      sub_25268DFB0();
      sub_25268DF80();
      sub_252666040(&qword_27F4DCFA0, MEMORY[0x277D151C0]);
      *v224 = sub_252690AD0();
      v224[1] = v225;
      v226 = v972 + *(type metadata accessor for ControlModuleView() + 36);
      LOWORD(v985) = *(v226 + 32);
      v227 = *(v226 + 3);
      *&v984[16] = *(v226 + 2);
      *&v984[32] = v227;
      v228 = *v226;
      *v984 = *(v226 + 1);
      v983 = v228;
      if (BYTE1(v985))
      {
        v229 = *(v226 + 3);
        v975[0] = *(v226 + 2);
        v975[1] = v229;
        LOBYTE(v976) = v226[64];
        v230 = *v226;
        v974 = *(v226 + 1);
        v973 = v230;
      }

      else
      {

        sub_252692F00();
        v405 = sub_2526919C0();
        sub_252690570();

        v406 = v958;
        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v983, &qword_27F4DC120);
        (*(v960 + 8))(v406, v959);
      }

      if (v973 != 1)
      {
        LOWORD(v976) = *(v226 + 32);
        v407 = *(v226 + 3);
        v975[0] = *(v226 + 2);
        v975[1] = v407;
        v408 = *v226;
        v974 = *(v226 + 1);
        v973 = v408;
        if (BYTE1(v976))
        {
          v409 = *(v226 + 3);
          v991 = *(v226 + 2);
          v992 = v409;
          LOBYTE(v993) = v226[64];
          v410 = *(v226 + 1);
          v989 = *v226;
          v990 = v410;
        }

        else
        {

          sub_252692F00();
          v563 = sub_2526919C0();
          sub_252690570();

          v564 = v958;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v973, &qword_27F4DC120);
          (*(v960 + 8))(v564, v959);
        }
      }

      v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D80);
      v566 = sub_252666040(&qword_27F4E3D88, type metadata accessor for AlarmAndTimerControlView);
      v567 = sub_252638918();
      v568 = v898;
      sub_252691D70();
      sub_252665DD8(v224, type metadata accessor for AlarmAndTimerControlView);
      v569 = v847;
      v570 = v568;
      v571 = v848;
      (*(v847 + 16))(v845, v570, v848);
      swift_storeEnumTagMultiPayload();
      *&v973 = v223;
      *(&v973 + 1) = v565;
      *&v974 = v566;
      *(&v974 + 1) = v567;
      swift_getOpaqueTypeConformance2();
      v572 = v846;
      sub_252691470();
      sub_25237153C(v572, v928, &qword_27F4E3D78);
      swift_storeEnumTagMultiPayload();
      sub_252638800();
      sub_252638A00();
      v573 = v930;
      sub_252691470();
      sub_252372288(v572, &qword_27F4E3D78);
      sub_25237153C(v573, v955, &qword_27F4E3D68);
      swift_storeEnumTagMultiPayload();
      sub_252637FB4();
      sub_252638774();
      v574 = v956;
      sub_252691470();
      sub_252372288(v573, &qword_27F4E3D68);
      sub_25237153C(v574, v964, &qword_27F4E3CC0);
      swift_storeEnumTagMultiPayload();
      sub_25263705C();
      sub_252637F28();
      v575 = v965;
      sub_252691470();
      sub_252372288(v574, &qword_27F4E3CC0);
      sub_25237153C(v575, v967, &qword_27F4E3B68);
      swift_storeEnumTagMultiPayload();
      sub_252636FD0();
      sub_252638E18();
      sub_252691470();
      sub_252372288(v575, &qword_27F4E3B68);
      (*(v569 + 8))(v898, v571);
      v576 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig;
      v577 = v897;
      return sub_252665DD8(v577, v576);
    case 0xA:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_223;
      }

      v291 = *(v161 + 32);
      v292 = *(v161 + 40);
      v293 = *(v161 + 48);
      v294 = *(v161 + 56);
      v295 = *(v161 + 64);
      sub_2523E2E24(*v161, *(v161 + 8));
      v296 = type metadata accessor for ControlModuleView();
      v297 = v972;
      v298 = v813;
      sub_252604038(v961, v813);
      v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
      if ((*(*(v299 - 8) + 48))(v298, 1, v299) == 1)
      {

        sub_252372288(v298, &qword_27F4E4040);
        v300 = v903;
      }

      else
      {
        v953 = v293;
        LODWORD(v961) = v292;
        sub_252609970(&v983);
        sub_252372288(v298, &qword_27F4DAE18);
        v417 = *(&v983 + 1);
        v300 = v903;
        if (*(&v983 + 1))
        {
          v418 = v983;
          v945 = v294;
          v419 = *v984;
          v944 = v295;
          v420 = *&v984[16];
          v951 = *v297;
          LOBYTE(v973) = 0;

          sub_2523E165C(v419, *(&v419 + 1));
          sub_2526924D0();
          LODWORD(v943) = v983;
          v421 = *(&v983 + 1);
          v422 = swift_getKeyPath();
          v988 = 0;
          *&v983 = v951;
          v950 = v418;
          *(&v983 + 1) = v418;
          v951 = v417;
          *v984 = v417;
          v949 = v419;
          *&v984[8] = v419;
          v948 = *(&v419 + 1);
          v947 = v420;
          *&v984[24] = v420;
          v946 = *(&v420 + 1);
          *&v984[40] = v291;
          LOBYTE(v985) = v961;
          *(&v985 + 1) = v953;
          *&v986 = v945;
          *(&v986 + 1) = v944;
          LOBYTE(v987[0]) = v943;
          *(&v987[0] + 1) = v421;
          *&v987[1] = v422;
          BYTE8(v987[1]) = 0;
          v423 = v972 + *(v296 + 36);
          v424 = *(v423 + 3);
          v991 = *(v423 + 2);
          v992 = v424;
          v993 = *(v423 + 32);
          v425 = *(v423 + 1);
          v989 = *v423;
          v990 = v425;
          if ((v993 & 0x100) != 0)
          {
            v426 = *(v423 + 3);
            v975[0] = *(v423 + 2);
            v975[1] = v426;
            LOBYTE(v976) = v423[64];
            v427 = *v423;
            v974 = *(v423 + 1);
            v973 = v427;
          }

          else
          {

            sub_252692F00();
            v708 = sub_2526919C0();
            sub_252690570();

            v709 = v958;
            sub_2526910E0();
            swift_getAtKeyPath();
            sub_252372288(&v989, &qword_27F4DC120);
            (*(v960 + 8))(v709, v959);
          }

          v300 = v903;
          if (v973 != 1)
          {
            LOWORD(v976) = *(v423 + 32);
            v710 = *(v423 + 3);
            v975[0] = *(v423 + 2);
            v975[1] = v710;
            v711 = *v423;
            v974 = *(v423 + 1);
            v973 = v711;
            if (BYTE1(v976))
            {
              v712 = *(v423 + 3);
              v981[0] = *(v423 + 2);
              v981[1] = v712;
              v982 = v423[64];
              v713 = *v423;
              v980 = *(v423 + 1);
              v979 = v713;
            }

            else
            {

              sub_252692F00();
              v740 = sub_2526919C0();
              sub_252690570();

              v741 = v958;
              sub_2526910E0();
              swift_getAtKeyPath();
              sub_252372288(&v973, &qword_27F4DC120);
              (*(v960 + 8))(v741, v959);
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3DB8);
          sub_25254E10C();
          sub_252638B68();
          v706 = v849;
          sub_252691D70();
          sub_25265167C(v950, v951, v949, v948);
          v976 = v985;
          v977 = v986;
          v978[0] = v987[0];
          *(v978 + 9) = *(v987 + 9);
          v973 = v983;
          v974 = *v984;
          v975[0] = *&v984[16];
          v975[1] = *&v984[32];
          sub_2524ABEBC(&v973);
          v742 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4058);
          (*(*(v742 - 8) + 56))(v706, 0, 1, v742);
          v707 = v967;
LABEL_190:
          sub_25237153C(v706, v300, &qword_27F4E3DB0);
          swift_storeEnumTagMultiPayload();
          sub_252638A8C();
          sub_252638C20();
          v743 = v902;
          sub_252691470();
          sub_25237153C(v743, v928, &qword_27F4E3DA0);
          swift_storeEnumTagMultiPayload();
          sub_252638800();
          sub_252638A00();
          v744 = v930;
          sub_252691470();
          sub_252372288(v743, &qword_27F4E3DA0);
          sub_25237153C(v744, v955, &qword_27F4E3D68);
          swift_storeEnumTagMultiPayload();
          sub_252637FB4();
          sub_252638774();
          v745 = v956;
          sub_252691470();
          sub_252372288(v744, &qword_27F4E3D68);
          sub_25237153C(v745, v964, &qword_27F4E3CC0);
          swift_storeEnumTagMultiPayload();
          sub_25263705C();
          sub_252637F28();
          v746 = v965;
          sub_252691470();
          sub_252372288(v745, &qword_27F4E3CC0);
          sub_25237153C(v746, v707, &qword_27F4E3B68);
          swift_storeEnumTagMultiPayload();
          sub_252636FD0();
          sub_252638E18();
          sub_252691470();
          sub_252372288(v746, &qword_27F4E3B68);
          return sub_252372288(v706, &qword_27F4E3DB0);
        }
      }

      v705 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4058);
      v706 = v849;
      (*(*(v705 - 8) + 56))(v849, 1, 1, v705);
      v707 = v967;
      goto LABEL_190;
    case 0xB:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_223;
      }

      v197 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98) + 48);
      v945 = v161;
      v198 = (v161 + v197);
      v199 = *v198;
      v201 = *(v198 + 1);
      v200 = *(v198 + 2);
      v202 = *(v198 + 3);
      v203 = *(v198 + 4);
      v204 = type metadata accessor for ControlModuleView();
      v205 = v814;
      sub_252604038(v961, v814);
      v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
      if ((*(*(v206 - 8) + 48))(v205, 1, v206) == 1)
      {

        sub_252372288(v205, &qword_27F4E4040);
        v207 = v794;
        (*(v792 + 56))(v794, 1, 1, v793);
      }

      else
      {
        v207 = v794;
        sub_25260A248(v794);
        sub_252372288(v205, &qword_27F4DAE18);
        if ((*(v792 + 48))(v207, 1, v793) != 1)
        {
          v549 = v780;
          sub_2523714D4(v207, v780, &qword_27F4DF420);
          v961 = v201;
          v550 = *v972;
          v551 = v782;
          v552 = v199;
          v553 = v781;
          sub_25237153C(v549, &v781[*(v782 + 20)], &qword_27F4DF420);
          *v553 = v550;
          v554 = v553 + v551[6];
          *v554 = v552;
          *(v554 + 1) = v961;
          *(v554 + 2) = v200;
          *(v554 + 3) = v202;
          *(v554 + 4) = v203;
          v555 = v553 + v551[7];
          LOBYTE(v973) = 0;
          sub_2526924D0();
          v556 = *(&v983 + 1);
          *v555 = v983;
          *(v555 + 1) = v556;
          v557 = v553 + v551[8];
          *v557 = swift_getKeyPath();
          v557[8] = 0;
          v558 = v972 + *(v204 + 36);
          LOWORD(v985) = *(v558 + 32);
          v559 = *(v558 + 3);
          *&v984[16] = *(v558 + 2);
          *&v984[32] = v559;
          v560 = *v558;
          *v984 = *(v558 + 1);
          v983 = v560;
          if (BYTE1(v985))
          {
            v561 = *(v558 + 3);
            v975[0] = *(v558 + 2);
            v975[1] = v561;
            LOBYTE(v976) = v558[64];
            v562 = *v558;
            v974 = *(v558 + 1);
            v973 = v562;
          }

          else
          {

            sub_252692F00();
            v714 = sub_2526919C0();
            sub_252690570();

            v715 = v958;
            sub_2526910E0();
            swift_getAtKeyPath();
            sub_252372288(&v983, &qword_27F4DC120);
            (*(v960 + 8))(v715, v959);
          }

          v401 = v967;
          v402 = v903;
          v404 = v803;
          if (v973 != 1)
          {
            LOWORD(v976) = *(v558 + 32);
            v716 = *(v558 + 3);
            v975[0] = *(v558 + 2);
            v975[1] = v716;
            v717 = *v558;
            v974 = *(v558 + 1);
            v973 = v717;
            if (BYTE1(v976))
            {
              v718 = *(v558 + 3);
              v991 = *(v558 + 2);
              v992 = v718;
              LOBYTE(v993) = v558[64];
              v719 = *(v558 + 1);
              v989 = *v558;
              v990 = v719;
            }

            else
            {

              sub_252692F00();
              v747 = sub_2526919C0();
              sub_252690570();

              v748 = v958;
              sub_2526910E0();
              swift_getAtKeyPath();
              sub_252372288(&v973, &qword_27F4DC120);
              (*(v960 + 8))(v748, v959);
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3DD8);
          sub_252666040(&qword_27F4E1FC0, type metadata accessor for StatusDetailsButtonControlView);
          sub_252638D30();
          v749 = v781;
          sub_252691D70();
          sub_252665DD8(v749, type metadata accessor for StatusDetailsButtonControlView);
          sub_252372288(v780, &qword_27F4DF420);
          v750 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4050);
          (*(*(v750 - 8) + 56))(v404, 0, 1, v750);
LABEL_196:
          sub_25237153C(v404, v402, &qword_27F4E3DD0);
          swift_storeEnumTagMultiPayload();
          sub_252638A8C();
          sub_252638C20();
          v751 = v404;
          v752 = v902;
          sub_252691470();
          sub_25237153C(v752, v928, &qword_27F4E3DA0);
          swift_storeEnumTagMultiPayload();
          sub_252638800();
          sub_252638A00();
          v753 = v930;
          sub_252691470();
          sub_252372288(v752, &qword_27F4E3DA0);
          sub_25237153C(v753, v955, &qword_27F4E3D68);
          swift_storeEnumTagMultiPayload();
          sub_252637FB4();
          sub_252638774();
          v754 = v956;
          sub_252691470();
          sub_252372288(v753, &qword_27F4E3D68);
          sub_25237153C(v754, v964, &qword_27F4E3CC0);
          swift_storeEnumTagMultiPayload();
          sub_25263705C();
          sub_252637F28();
          v755 = v965;
          sub_252691470();
          sub_252372288(v754, &qword_27F4E3CC0);
          sub_25237153C(v755, v401, &qword_27F4E3B68);
          swift_storeEnumTagMultiPayload();
          sub_252636FD0();
          sub_252638E18();
          sub_252691470();
          sub_252372288(v755, &qword_27F4E3B68);
          sub_252372288(v751, &qword_27F4E3DD0);
          v673 = &qword_27F4DB440;
          return sub_252372288(v945, v673);
        }
      }

      v401 = v967;
      v402 = v903;
      sub_252372288(v207, &qword_27F4E3F20);
      v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4050);
      v404 = v803;
      (*(*(v403 - 8) + 56))(v803, 1, 1, v403);
      goto LABEL_196;
    case 0xC:
      goto LABEL_223;
    case 0xD:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_223;
      }

      v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0);
      v209 = v887;
      sub_252665E38(v161 + *(v208 + 48), v887, type metadata accessor for AccessoryControl.PickerViewConfig);
      v210 = type metadata accessor for ControlModuleView();
      v211 = v961;
      sub_252604038(v961, v142);
      v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
      if ((*(*(v212 - 8) + 48))(v142, 1, v212) == 1)
      {
        sub_252372288(v142, &qword_27F4E4040);
        goto LABEL_223;
      }

      sub_252606404(&v983);
      sub_252372288(v142, &qword_27F4DAE18);
      v213 = *(&v983 + 1);
      if (!*(&v983 + 1))
      {
        goto LABEL_223;
      }

      v214 = v983;
      v215 = *v984;
      v216 = v984[8];
      v217 = v823;
      sub_252665FB8(v209, v823, type metadata accessor for AccessoryControl.PickerViewConfig);
      LOBYTE(v983) = *(v211 + v946);

      Device.Control.viewType(with:)(&v983, &v979);
      v218 = 0;
      if (v979 > 0xFu)
      {
        v219 = v830;
      }

      else
      {
        v219 = v830;
        if (((1 << v979) & 0x2011) != 0)
        {
          v220 = 0x4044000000000000;
        }

        else
        {
          if (((1 << v979) & 0x8C00) == 0)
          {
            goto LABEL_117;
          }

          v220 = 0x4059000000000000;
        }

        v218 = v220;
      }

LABEL_117:
      v956 = v214;
      *v219 = v214;
      *(v219 + 8) = v213;
      v961 = v213;
      v955 = v215;
      *(v219 + 16) = v215;
      *(v219 + 24) = v216 & 1;
      v459 = v925;
      sub_252665E38(v217, v219 + *(v925 + 20), type metadata accessor for AccessoryControl.PickerViewConfig);
      *(v219 + v459[6]) = v218;
      v460 = v219 + v459[7];
      *v460 = swift_getKeyPath();
      *(v460 + 8) = 0;
      v461 = v219 + v459[8];
      *&v973 = 0;
      BYTE8(v973) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBBE8);
      sub_2526924D0();
      v462 = BYTE8(v983);
      v463 = *v984;
      *v461 = v983;
      *(v461 + 8) = v462;
      *(v461 + 16) = v463;
      v464 = v219 + v459[9];
      *&v973 = 0;
      BYTE8(v973) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0F00);
      sub_2526924D0();
      v465 = BYTE8(v983);
      v466 = *v984;
      *v464 = v983;
      *(v464 + 8) = v465;
      *(v464 + 16) = v466;
      v467 = v972 + *(v210 + 36);
      v468 = *(v467 + 3);
      *&v984[16] = *(v467 + 2);
      *&v984[32] = v468;
      LOWORD(v985) = *(v467 + 32);
      v469 = *v467;
      *v984 = *(v467 + 1);
      v983 = v469;
      if (BYTE1(v985))
      {
        v470 = *(v467 + 3);
        v975[0] = *(v467 + 2);
        v975[1] = v470;
        LOBYTE(v976) = v467[64];
        v471 = *v467;
        v974 = *(v467 + 1);
        v973 = v471;
      }

      else
      {

        sub_252692F00();
        v472 = sub_2526919C0();
        sub_252690570();

        v473 = v958;
        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v983, &qword_27F4DC120);
        (*(v960 + 8))(v473, v959);
      }

      LODWORD(v957) = v216;
      if (v973 != 1)
      {
        LOWORD(v976) = *(v467 + 32);
        v474 = *(v467 + 3);
        v975[0] = *(v467 + 2);
        v975[1] = v474;
        v475 = *v467;
        v974 = *(v467 + 1);
        v973 = v475;
        if (BYTE1(v976))
        {
          v476 = *(v467 + 3);
          v991 = *(v467 + 2);
          v992 = v476;
          LOBYTE(v993) = v467[64];
          v477 = *(v467 + 1);
          v989 = *v467;
          v990 = v477;
        }

        else
        {

          sub_252692F00();
          v578 = sub_2526919C0();
          sub_252690570();

          v579 = v958;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v973, &qword_27F4DC120);
          (*(v960 + 8))(v579, v959);
        }
      }

      v580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C10);
      v581 = sub_252666040(&qword_27F4E3C18, type metadata accessor for VerticalPickerControlView);
      v582 = sub_2526377FC();
      v583 = v832;
      v584 = v925;
      sub_252691D70();
      sub_252665DD8(v219, type metadata accessor for VerticalPickerControlView);
      v585 = v855;
      v586 = v856;
      (*(v855 + 16))(v857, v583, v856);
      swift_storeEnumTagMultiPayload();
      *&v973 = v584;
      *(&v973 + 1) = v580;
      *&v974 = v581;
      *(&v974 + 1) = v582;
      swift_getOpaqueTypeConformance2();
      v587 = v834;
      sub_252691470();
      sub_252651638(v956, v961);
      (*(v585 + 8))(v583, v586);
      sub_25237153C(v587, v893, &qword_27F4E3C08);
      swift_storeEnumTagMultiPayload();
      sub_2526376E4();
      v588 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C28);
      v589 = sub_2526378E4();
      v590 = sub_252637938();
      *&v973 = &type metadata for MediaPlayerView;
      *(&v973 + 1) = v588;
      *&v974 = v589;
      *(&v974 + 1) = v590;
      swift_getOpaqueTypeConformance2();
      v591 = v894;
      sub_252691470();
      sub_25237153C(v591, v942, &qword_27F4E3BF8);
      swift_storeEnumTagMultiPayload();
      sub_252637174();
      sub_252637600();
      v592 = v943;
      sub_252691470();
      sub_252372288(v591, &qword_27F4E3BF8);
      sub_25237153C(v592, v950, &qword_27F4E3B88);
      swift_storeEnumTagMultiPayload();
      sub_2526370E8();
      sub_2526379F0();
      v593 = v951;
      sub_252691470();
      sub_252372288(v592, &qword_27F4E3B88);
      sub_25237153C(v593, v964, &qword_27F4E3B78);
      swift_storeEnumTagMultiPayload();
      sub_25263705C();
      sub_252637F28();
      v594 = v965;
      sub_252691470();
      sub_252372288(v593, &qword_27F4E3B78);
      sub_25237153C(v594, v967, &qword_27F4E3B68);
      swift_storeEnumTagMultiPayload();
      sub_252636FD0();
      sub_252638E18();
      sub_252691470();
      sub_252372288(v594, &qword_27F4E3B68);
      sub_252372288(v587, &qword_27F4E3C08);
      v576 = type metadata accessor for AccessoryControl.PickerViewConfig;
      v577 = v887;
      return sub_252665DD8(v577, v576);
    case 0xE:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_223;
      }

      v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0);
      v242 = v885;
      sub_252665E38(v161 + *(v241 + 48), v885, type metadata accessor for AccessoryControl.PickerViewConfig);
      v243 = type metadata accessor for ControlModuleView();
      v244 = v972;
      v245 = v811;
      sub_252604038(v961, v811);
      v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
      v247 = (*(*(v246 - 8) + 48))(v245, 1, v246);
      v248 = v835;
      if (v247 == 1)
      {
        sub_252372288(v245, &qword_27F4E4040);
        goto LABEL_223;
      }

      sub_252606404(&v983);
      sub_252372288(v245, &qword_27F4DAE18);
      v249 = *(&v983 + 1);
      if (!*(&v983 + 1))
      {
        goto LABEL_223;
      }

      v250 = v983;
      v251 = *v984;
      v252 = v984[8];
      sub_252665FB8(v242, v248, type metadata accessor for AccessoryControl.PickerViewConfig);
      v253 = swift_getKeyPath();
      LOBYTE(v979) = 0;
      v254 = v895;
      v255 = v248 + *(v895 + 20);
      *v255 = v250;
      *(v255 + 8) = v249;
      *(v255 + 16) = v251;
      *(v255 + 24) = v252 & 1;
      v256 = v248 + *(v254 + 24);
      *v256 = v253;
      *(v256 + 65) = 0;
      v257 = v244 + *(v243 + 36);
      v258 = *(v257 + 3);
      *&v984[16] = *(v257 + 2);
      *&v984[32] = v258;
      LOWORD(v985) = *(v257 + 32);
      v259 = *v257;
      *v984 = *(v257 + 1);
      v983 = v259;
      LODWORD(v961) = v252;
      v953 = v250;
      v951 = v251;
      if (BYTE1(v985))
      {
        v260 = *(v257 + 3);
        v975[0] = *(v257 + 2);
        v975[1] = v260;
        LOBYTE(v976) = v257[64];
        v261 = *v257;
        v974 = *(v257 + 1);
        v973 = v261;
      }

      else
      {
        sub_2526515F8(v250, v249);
        sub_25237153C(&v983, &v973, &qword_27F4DC120);
        sub_252692F00();
        v431 = sub_2526919C0();
        sub_252690570();

        v432 = v958;
        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v983, &qword_27F4DC120);
        (*(v960 + 8))(v432, v959);
      }

      if (v973 == 1)
      {
        v433 = v249;
      }

      else
      {
        LOWORD(v976) = *(v257 + 32);
        v434 = *(v257 + 3);
        v975[0] = *(v257 + 2);
        v975[1] = v434;
        v435 = *v257;
        v974 = *(v257 + 1);
        v973 = v435;
        if (BYTE1(v976))
        {
          v436 = *(v257 + 3);
          v991 = *(v257 + 2);
          v992 = v436;
          LOBYTE(v993) = v257[64];
          v437 = *(v257 + 1);
          v989 = *v257;
          v990 = v437;
        }

        else
        {

          sub_252692F00();
          v632 = sub_2526919C0();
          sub_252690570();

          v633 = v958;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v973, &qword_27F4DC120);
          (*(v960 + 8))(v633, v959);
        }

        v433 = v249;
      }

      v634 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D18);
      v635 = sub_252666040(&qword_27F4E1FF8, type metadata accessor for WheelPickerControlView);
      v636 = sub_252638408();
      v637 = v836;
      v638 = v895;
      sub_252691D70();
      sub_252665DD8(v248, type metadata accessor for WheelPickerControlView);
      v639 = v837;
      v640 = v838;
      (*(v837 + 16))(v840, v637, v838);
      swift_storeEnumTagMultiPayload();
      *&v973 = v638;
      *(&v973 + 1) = v634;
      *&v974 = v635;
      *(&v974 + 1) = v636;
      swift_getOpaqueTypeConformance2();
      v641 = v841;
      sub_252691470();
      sub_252651638(v953, v433);
      (*(v639 + 8))(v637, v640);
      sub_25237153C(v641, v876, &qword_27F4E3D10);
      swift_storeEnumTagMultiPayload();
      sub_2526380F8();
      sub_2526382F0();
      v642 = v899;
      sub_252691470();
      sub_25237153C(v642, v938, &qword_27F4E3CE0);
      swift_storeEnumTagMultiPayload();
      sub_25263806C();
      sub_2526384F0(&qword_27F4E3D28, &qword_27F4E3D30, &unk_2526AA7D0, sub_252638574);
      v643 = v939;
      sub_252691470();
      sub_252372288(v642, &qword_27F4E3CE0);
      sub_25237153C(v643, v955, &qword_27F4E3CD0);
      swift_storeEnumTagMultiPayload();
      sub_252637FB4();
      sub_252638774();
      v644 = v956;
      sub_252691470();
      sub_252372288(v643, &qword_27F4E3CD0);
      sub_25237153C(v644, v964, &qword_27F4E3CC0);
      swift_storeEnumTagMultiPayload();
      sub_25263705C();
      sub_252637F28();
      v645 = v965;
      sub_252691470();
      sub_252372288(v644, &qword_27F4E3CC0);
      sub_25237153C(v645, v967, &qword_27F4E3B68);
      swift_storeEnumTagMultiPayload();
      sub_252636FD0();
      sub_252638E18();
      sub_252691470();
      sub_252372288(v645, &qword_27F4E3B68);
      sub_252372288(v641, &qword_27F4E3D10);
      v576 = type metadata accessor for AccessoryControl.PickerViewConfig;
      v577 = v885;
      return sub_252665DD8(v577, v576);
    case 0xF:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_223;
      }

      v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0);
      sub_252665E38(v161 + *(v332 + 48), v919, type metadata accessor for AccessoryControl.PickerViewConfig);
      v333 = type metadata accessor for ControlModuleView();
      v334 = v972;
      v335 = v783;
      sub_252604038(v961, v783);
      v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
      v337 = (*(*(v336 - 8) + 48))(v335, 1, v336);
      v338 = v795;
      if (v337 == 1)
      {
        sub_252372288(v335, &qword_27F4E4040);
        goto LABEL_223;
      }

      sub_252606404(&v983);
      sub_252372288(v335, &qword_27F4DAE18);
      v339 = *(&v983 + 1);
      if (!*(&v983 + 1))
      {
        goto LABEL_223;
      }

      v340 = v983;
      v341 = *v984;
      v342 = v984[8];
      sub_252665FB8(v919, v338, type metadata accessor for AccessoryControl.PickerViewConfig);
      v343 = swift_getKeyPath();
      LOBYTE(v979) = 0;
      v344 = v859;
      v345 = v338 + *(v859 + 20);
      *v345 = v340;
      *(v345 + 8) = v339;
      *(v345 + 16) = v341;
      *(v345 + 24) = v342 & 1;
      v346 = v338 + *(v344 + 24);
      *v346 = v343;
      *(v346 + 65) = 0;
      v347 = v334 + *(v333 + 36);
      v348 = *(v347 + 3);
      *&v984[16] = *(v347 + 2);
      *&v984[32] = v348;
      LOWORD(v985) = *(v347 + 32);
      v349 = *v347;
      *v984 = *(v347 + 1);
      v983 = v349;
      v964 = v340;
      v963 = v341;
      if (BYTE1(v985))
      {
        v350 = *(v347 + 3);
        v975[0] = *(v347 + 2);
        v975[1] = v350;
        LOBYTE(v976) = v347[64];
        v351 = *v347;
        v974 = *(v347 + 1);
        v973 = v351;
      }

      else
      {
        sub_2526515F8(v340, v339);
        sub_25237153C(&v983, &v973, &qword_27F4DC120);
        sub_252692F00();
        v453 = sub_2526919C0();
        sub_252690570();

        v454 = v958;
        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v983, &qword_27F4DC120);
        (*(v960 + 8))(v454, v959);
      }

      v966 = v339;
      LODWORD(v965) = v342;
      if (v973 != 1)
      {
        LOWORD(v976) = *(v347 + 32);
        v455 = *(v347 + 3);
        v975[0] = *(v347 + 2);
        v975[1] = v455;
        v456 = *v347;
        v974 = *(v347 + 1);
        v973 = v456;
        if (BYTE1(v976))
        {
          v457 = *(v347 + 3);
          v991 = *(v347 + 2);
          v992 = v457;
          LOBYTE(v993) = v347[64];
          v458 = *(v347 + 1);
          v989 = *v347;
          v990 = v458;
        }

        else
        {

          sub_252692F00();
          v674 = sub_2526919C0();
          sub_252690570();

          v675 = v958;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v973, &qword_27F4DC120);
          (*(v960 + 8))(v675, v959);
        }
      }

      v676 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E18);
      v677 = sub_252666040(&qword_27F4E2168, type metadata accessor for MenuPickerControlView);
      v678 = sub_252639048();
      v679 = v796;
      v680 = v859;
      sub_252691D70();
      sub_252665DD8(v338, type metadata accessor for MenuPickerControlView);
      v681 = v797;
      v682 = v799;
      (*(v797 + 16))(v801, v679, v799);
      swift_storeEnumTagMultiPayload();
      *&v973 = v680;
      *(&v973 + 1) = v676;
      *&v974 = v677;
      *(&v974 + 1) = v678;
      swift_getOpaqueTypeConformance2();
      v683 = v802;
      sub_252691470();
      sub_252651638(v964, v966);
      (*(v681 + 8))(v679, v682);
      sub_25237153C(v683, v804, &qword_27F4E3E10);
      swift_storeEnumTagMultiPayload();
      sub_252638F30();
      v684 = v806;
      sub_252691470();
      sub_25237153C(v684, v809, &qword_27F4E3E00);
      swift_storeEnumTagMultiPayload();
      sub_252638EA4();
      v685 = v808;
      sub_252691470();
      sub_252372288(v684, &qword_27F4E3E00);
      sub_25237153C(v685, v967, &qword_27F4E3DF0);
      swift_storeEnumTagMultiPayload();
      sub_252636FD0();
      sub_252638E18();
      sub_252691470();
      sub_252372288(v685, &qword_27F4E3DF0);
      sub_252372288(v683, &qword_27F4E3E10);
      v576 = type metadata accessor for AccessoryControl.PickerViewConfig;
      v577 = v919;
      return sub_252665DD8(v577, v576);
    default:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_223;
      }

      sub_252393F68(*v161, *(v161 + 8), *(v161 + 16), *(v161 + 24), *(v161 + 32));
      v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428);
      v263 = v881;
      sub_252665E38(v161 + *(v262 + 48), v881, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v264 = type metadata accessor for ControlModuleView();
      v265 = v972;
      v266 = v961;
      sub_252604038(v961, v148);
      v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
      if ((*(*(v267 - 8) + 48))(v148, 1, v267) == 1)
      {
        sub_252372288(v148, &qword_27F4E4040);
        goto LABEL_223;
      }

      v957 = sub_25260463C();
      v269 = v268;
      v271 = v270;
      sub_252372288(v148, &qword_27F4DAE18);
      if (!v269)
      {
        goto LABEL_223;
      }

      v272 = *v265;
      LOBYTE(v983) = *(v266 + v946);
      Device.Control.viewType(with:)(&v983, &v979);
      v273 = 0;
      if (v979 > 0xFu)
      {
        v274 = v947;
      }

      else
      {
        v274 = v947;
        if (((1 << v979) & 0x2011) != 0)
        {
          v275 = 0x4044000000000000;
        }

        else
        {
          if (((1 << v979) & 0x8C00) == 0)
          {
            goto LABEL_125;
          }

          v275 = 0x4059000000000000;
        }

        v273 = v275;
      }

LABEL_125:
      v478 = v880;
      v479 = v879;
      sub_252665FB8(v263, &v879[*(v880 + 36)], type metadata accessor for AccessoryControl.BinaryViewConfig);
      *v479 = swift_getKeyPath();
      v479[8] = 0;
      v480 = v957;
      *(v479 + 2) = v272;
      *(v479 + 3) = v480;
      *(v479 + 4) = v269;
      v479[40] = v271;
      *(v479 + 6) = v273;
      v479[56] = v274 & 1;
      v481 = &v479[*(v478 + 40)];
      *&v973 = 0;
      BYTE8(v973) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBBE8);
      sub_2526924D0();
      v482 = BYTE8(v983);
      v483 = *v984;
      *v481 = v983;
      v481[8] = v482;
      *(v481 + 2) = v483;
      v484 = v265 + *(v264 + 36);
      v485 = *(v484 + 3);
      *&v984[16] = *(v484 + 2);
      *&v984[32] = v485;
      LOWORD(v985) = *(v484 + 32);
      v486 = *v484;
      *v984 = *(v484 + 1);
      v983 = v486;
      if (BYTE1(v985))
      {
        v487 = *(v484 + 3);
        v975[0] = *(v484 + 2);
        v975[1] = v487;
        LOBYTE(v976) = v484[64];
        v488 = *v484;
        v974 = *(v484 + 1);
        v973 = v488;
      }

      else
      {

        sub_252692F00();
        v489 = sub_2526919C0();
        sub_252690570();

        v490 = v958;
        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v983, &qword_27F4DC120);
        (*(v960 + 8))(v490, v959);
      }

      v492 = v784;
      v491 = v785;
      if (v973 != 1)
      {
        LOWORD(v976) = *(v484 + 32);
        v493 = *(v484 + 3);
        v975[0] = *(v484 + 2);
        v975[1] = v493;
        v494 = *v484;
        v974 = *(v484 + 1);
        v973 = v494;
        if (BYTE1(v976))
        {
          v495 = *(v484 + 3);
          v991 = *(v484 + 2);
          v992 = v495;
          LOBYTE(v993) = v484[64];
          v496 = *(v484 + 1);
          v989 = *v484;
          v990 = v496;
        }

        else
        {

          sub_252692F00();
          v646 = sub_2526919C0();
          sub_252690570();

          v647 = v958;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v973, &qword_27F4DC120);
          (*(v960 + 8))(v647, v959);
        }
      }

      v648 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3BB0);
      v649 = sub_252666040(&qword_27F4E3BB8, type metadata accessor for SwitchControlView);
      v650 = sub_252637318();
      v651 = v818;
      v652 = v880;
      v653 = v879;
      sub_252691D70();
      sub_252665DD8(v653, type metadata accessor for SwitchControlView);
      v654 = v819;
      (*(v819 + 16))(v491, v651, v492);
      swift_storeEnumTagMultiPayload();
      *&v973 = v652;
      *(&v973 + 1) = v648;
      *&v974 = v649;
      *(&v974 + 1) = v650;
      swift_getOpaqueTypeConformance2();
      v655 = v822;
      sub_252691470();

      (*(v654 + 8))(v651, v492);
      sub_25237153C(v655, v889, &qword_27F4E3BA8);
      swift_storeEnumTagMultiPayload();
      sub_252637200();
      sub_252637400();
      v656 = v890;
      sub_252691470();
      sub_25237153C(v656, v942, &qword_27F4E3B98);
      swift_storeEnumTagMultiPayload();
      sub_252637174();
      sub_252637600();
      v657 = v943;
      sub_252691470();
      sub_252372288(v656, &qword_27F4E3B98);
      sub_25237153C(v657, v950, &qword_27F4E3B88);
      swift_storeEnumTagMultiPayload();
      sub_2526370E8();
      sub_2526379F0();
      v658 = v951;
      sub_252691470();
      sub_252372288(v657, &qword_27F4E3B88);
      sub_25237153C(v658, v964, &qword_27F4E3B78);
      swift_storeEnumTagMultiPayload();
      sub_25263705C();
      sub_252637F28();
      v659 = v965;
      sub_252691470();
      sub_252372288(v658, &qword_27F4E3B78);
      sub_25237153C(v659, v967, &qword_27F4E3B68);
      swift_storeEnumTagMultiPayload();
      sub_252636FD0();
      sub_252638E18();
      sub_252691470();
      sub_252372288(v659, &qword_27F4E3B68);
      sub_252372288(v655, &qword_27F4E3BA8);
      v576 = type metadata accessor for AccessoryControl.BinaryViewConfig;
      v577 = v881;
      return sub_252665DD8(v577, v576);
  }
}

uint64_t sub_252635B24(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_252694E90;
  v3 = sub_252636A34();
  v29 = 0xD000000000000010;
  v30 = 0x80000002526B1EE0;
  MEMORY[0x2530A4800](v3);

  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x80000002526B1EE0;
  v4 = (a1 + *(type metadata accessor for Device.Control(0) + 32));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);

    if (v7 >= v8 >> 1)
    {
      v2 = sub_25236880C((v8 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 16) = v7 + 1;
    v9 = v2 + 16 * v7;
    *(v9 + 32) = v6;
    *(v9 + 40) = v5;
  }

  Device.Control.Kind.primitive.getter(&v29);
  if (v29 > 4u)
  {
    if (v29 > 6u)
    {
      if (v29 == 7)
      {
        v12 = 0x72656B636970;
      }

      else
      {
        if (v29 != 8)
        {
          v10 = 0xE700000000000000;
          v11 = 0x79616C7265766FLL;
          goto LABEL_25;
        }

        v12 = 0x737574617473;
      }

      v11 = v12 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
      v10 = 0xEC0000006E6F7474;
      goto LABEL_25;
    }

    if (v29 == 5)
    {
      v10 = 0xEA00000000007461;
      v11 = 0x74736F6D72656874;
    }

    else
    {
      v10 = 0xEF7372656D695464;
      v11 = 0x6E41736D72616C61;
    }
  }

  else if (v29 <= 1u)
  {
    if (v29)
    {
      v10 = 0xEB000000006C6174;
      v11 = 0x6E656D6572636E69;
    }

    else
    {
      v10 = 0xE600000000000000;
      v11 = 0x7972616E6962;
    }
  }

  else if (v29 == 2)
  {
    v10 = 0xE600000000000000;
    v11 = 0x72656B636970;
  }

  else if (v29 == 3)
  {
    v10 = 0xE500000000000000;
    v11 = 0x726F6C6F63;
  }

  else
  {
    v10 = 0xED00006B63616279;
    v11 = 0x616C50616964656DLL;
  }

LABEL_25:
  v14 = *(v2 + 16);
  v13 = *(v2 + 24);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_25236880C((v13 > 1), v14 + 1, 1, v2);
  }

  *(v2 + 16) = v14 + 1;
  v15 = v2 + 16 * v14;
  *(v15 + 32) = v11;
  *(v15 + 40) = v10;
  LOBYTE(v29) = *(a1 + *(type metadata accessor for DisplayControl(0) + 20));
  Device.Control.viewType(with:)(&v29, &v28);
  v16 = ControlViewType.description.getter();
  v19 = *(v2 + 16);
  v18 = *(v2 + 24);
  if (v19 >= v18 >> 1)
  {
    v25 = v16;
    v26 = v17;
    v27 = sub_25236880C((v18 > 1), v19 + 1, 1, v2);
    v17 = v26;
    v2 = v27;
    v16 = v25;
  }

  *(v2 + 16) = v19 + 1;
  v20 = v2 + 16 * v19;
  *(v20 + 32) = v16;
  *(v20 + 40) = v17;
  v29 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB570);
  sub_252400FC8(&qword_27F4DB578, &qword_27F4DB570);
  v21 = sub_252692B40();
  v23 = v22;

  v29 = v21;
  v30 = v23;
  return sub_252692D10();
}

uint64_t sub_252635F34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v9 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00) + 28);
  v11 = *MEMORY[0x277CDF3C0];
  v12 = sub_252690850();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = KeyPath;
  return sub_252665FB8(a1, a4, a3);
}

uint64_t sub_252636014@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v12 = *a1;
  v13 = v3;
  v14[0] = a1[2];
  *(v14 + 9) = *(a1 + 41);
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C28) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00) + 28);
  v7 = *MEMORY[0x277CDF3C0];
  v8 = sub_252690850();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = KeyPath;
  v9 = v13;
  *a2 = v12;
  a2[1] = v9;
  a2[2] = v14[0];
  *(a2 + 41) = *(v14 + 9);
  return sub_252651844(&v12, &v11);
}

uint64_t sub_252636118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3CF8) + 36);
  v5 = *MEMORY[0x277CDF3C0];
  v6 = sub_252690850();
  v7 = *(v6 - 8);
  (*(v7 + 104))(a2 + v4, v5, v6);
  (*(v7 + 56))(a2 + v4, 0, 1, v6);
  return sub_252665FB8(a1, a2, type metadata accessor for ThermostatControlView);
}

uint64_t sub_252636254@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[5];
  v20 = a1[4];
  v21 = v3;
  v22[0] = a1[6];
  *(v22 + 9) = *(a1 + 105);
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  v5 = a1[3];
  v18 = a1[2];
  v19 = v5;
  KeyPath = swift_getKeyPath();
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3DB8) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00) + 28);
  v9 = *MEMORY[0x277CDF3C0];
  v10 = sub_252690850();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = KeyPath;
  v11 = v21;
  a2[4] = v20;
  a2[5] = v11;
  a2[6] = v22[0];
  *(a2 + 105) = *(v22 + 9);
  v12 = v17;
  *a2 = v16;
  a2[1] = v12;
  v13 = v19;
  a2[2] = v18;
  a2[3] = v13;
  return sub_2524ABD4C(&v16, &v15);
}

uint64_t sub_252636488(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252636504()
{
  result = qword_27F4E39F0;
  if (!qword_27F4E39F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E39F8);
    sub_252636590();
    sub_2526367B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E39F0);
  }

  return result;
}

unint64_t sub_252636590()
{
  result = qword_27F4E3A00;
  if (!qword_27F4E3A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3A08);
    sub_252636648();
    sub_252400FC8(&qword_27F4E3A50, &qword_27F4E3A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3A00);
  }

  return result;
}

unint64_t sub_252636648()
{
  result = qword_27F4E3A10;
  if (!qword_27F4E3A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3A18);
    sub_252636700();
    sub_252400FC8(&qword_27F4E3A40, &qword_27F4E3A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3A10);
  }

  return result;
}

unint64_t sub_252636700()
{
  result = qword_27F4E3A20;
  if (!qword_27F4E3A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3A28);
    sub_252400FC8(&qword_27F4E3A30, &qword_27F4E3A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3A20);
  }

  return result;
}

unint64_t sub_2526367B8()
{
  result = qword_27F4E3A60;
  if (!qword_27F4E3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3A60);
  }

  return result;
}

unint64_t sub_25263680C()
{
  result = qword_27F4E3A70;
  if (!qword_27F4E3A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E39B8);
    sub_252400FC8(&qword_27F4E3A68, &qword_27F4E39B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3A70);
  }

  return result;
}

unint64_t sub_2526368C4()
{
  result = qword_27F4E3A80;
  if (!qword_27F4E3A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E39C8);
    sub_252400FC8(&qword_27F4E3A78, &qword_27F4E39C0);
    sub_25263680C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3A80);
  }

  return result;
}

unint64_t sub_252636984()
{
  result = qword_27F4E3A90;
  if (!qword_27F4E3A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3A88);
    sub_252400FC8(&qword_27F4E3A98, &qword_27F4E3AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3A90);
  }

  return result;
}

uint64_t sub_252636A34()
{
  v0 = type metadata accessor for Device.ControlModule(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ControlModuleView();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DD8);
  MEMORY[0x2530A4210](v3);
  v4 = v2[4];
  if (v4)
  {
    v5 = v2[3];

    sub_252665DD8(v2, type metadata accessor for Device.ControlModule);
  }

  else
  {
    v5 = *v2;
    v4 = v2[1];

    sub_252665DD8(v2, type metadata accessor for Device.ControlModule);
    if (!v4)
    {
      return 0;
    }
  }

  v7[0] = 0x2D656C75646F4D2ELL;
  v7[1] = 0xE800000000000000;
  MEMORY[0x2530A4800](v5, v4);

  return v7[0];
}

unint64_t sub_252636B8C()
{
  result = qword_27F4E3AB8;
  if (!qword_27F4E3AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3AB8);
  }

  return result;
}

uint64_t sub_252636BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ControlRowSolver(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for ControlModuleView() - 8);
  v10 = *(v2 + v7);
  v11 = *(v2 + v7 + 8);
  v12 = *(v2 + v8);
  v13 = v2 + ((v8 + *(v9 + 80) + 8) & ~*(v9 + 80));

  return sub_25262918C(a1, v2 + v6, v10, v11, v13, a2, v12);
}

unint64_t sub_252636CF0()
{
  result = qword_27F4E3B20;
  if (!qword_27F4E3B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3AE0);
    sub_252636DA8();
    sub_252400FC8(&qword_27F4E3E58, &qword_27F4E3E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B20);
  }

  return result;
}

unint64_t sub_252636DA8()
{
  result = qword_27F4E3B28;
  if (!qword_27F4E3B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3AE8);
    sub_252636E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B28);
  }

  return result;
}

unint64_t sub_252636E2C()
{
  result = qword_27F4E3B30;
  if (!qword_27F4E3B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3B38);
    sub_252636EB8();
    sub_2526391BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B30);
  }

  return result;
}

unint64_t sub_252636EB8()
{
  result = qword_27F4E3B40;
  if (!qword_27F4E3B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3B48);
    sub_252636F44();
    sub_252639130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B40);
  }

  return result;
}

unint64_t sub_252636F44()
{
  result = qword_27F4E3B50;
  if (!qword_27F4E3B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3B58);
    sub_252636FD0();
    sub_252638E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B50);
  }

  return result;
}

unint64_t sub_252636FD0()
{
  result = qword_27F4E3B60;
  if (!qword_27F4E3B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3B68);
    sub_25263705C();
    sub_252637F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B60);
  }

  return result;
}

unint64_t sub_25263705C()
{
  result = qword_27F4E3B70;
  if (!qword_27F4E3B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3B78);
    sub_2526370E8();
    sub_2526379F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B70);
  }

  return result;
}

unint64_t sub_2526370E8()
{
  result = qword_27F4E3B80;
  if (!qword_27F4E3B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3B88);
    sub_252637174();
    sub_252637600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B80);
  }

  return result;
}

unint64_t sub_252637174()
{
  result = qword_27F4E3B90;
  if (!qword_27F4E3B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3B98);
    sub_252637200();
    sub_252637400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B90);
  }

  return result;
}

unint64_t sub_252637200()
{
  result = qword_27F4E3BA0;
  if (!qword_27F4E3BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3BA8);
    type metadata accessor for SwitchControlView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3BB0);
    sub_252666040(&qword_27F4E3BB8, type metadata accessor for SwitchControlView);
    sub_252637318();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3BA0);
  }

  return result;
}

unint64_t sub_252637318()
{
  result = qword_27F4E3BC0;
  if (!qword_27F4E3BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3BB0);
    sub_252666040(&qword_27F4E3BB8, type metadata accessor for SwitchControlView);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3BC0);
  }

  return result;
}

unint64_t sub_252637400()
{
  result = qword_27F4E3BC8;
  if (!qword_27F4E3BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3BD0);
    type metadata accessor for SliderControlView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3BD8);
    sub_252666040(&qword_27F4E3BE0, type metadata accessor for SliderControlView);
    sub_252637518();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3BC8);
  }

  return result;
}

unint64_t sub_252637518()
{
  result = qword_27F4E3BE8;
  if (!qword_27F4E3BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3BD8);
    sub_252666040(&qword_27F4E3BE0, type metadata accessor for SliderControlView);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3BE8);
  }

  return result;
}

unint64_t sub_252637600()
{
  result = qword_27F4E3BF0;
  if (!qword_27F4E3BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3BF8);
    sub_2526376E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C28);
    sub_2526378E4();
    sub_252637938();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3BF0);
  }

  return result;
}

unint64_t sub_2526376E4()
{
  result = qword_27F4E3C00;
  if (!qword_27F4E3C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C08);
    type metadata accessor for VerticalPickerControlView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C10);
    sub_252666040(&qword_27F4E3C18, type metadata accessor for VerticalPickerControlView);
    sub_2526377FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C00);
  }

  return result;
}

unint64_t sub_2526377FC()
{
  result = qword_27F4E3C20;
  if (!qword_27F4E3C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C10);
    sub_252666040(&qword_27F4E3C18, type metadata accessor for VerticalPickerControlView);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C20);
  }

  return result;
}

unint64_t sub_2526378E4()
{
  result = qword_27F4E3C30;
  if (!qword_27F4E3C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C30);
  }

  return result;
}

unint64_t sub_252637938()
{
  result = qword_27F4E3C38;
  if (!qword_27F4E3C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C28);
    sub_2526378E4();
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C38);
  }

  return result;
}

unint64_t sub_2526379F0()
{
  result = qword_27F4E3C40;
  if (!qword_27F4E3C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C48);
    sub_2526384F0(&qword_27F4E3C50, &qword_27F4E3C58, &unk_2526AA760, sub_252637AA8);
    sub_252637E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C40);
  }

  return result;
}

unint64_t sub_252637AA8()
{
  result = qword_27F4E3C60;
  if (!qword_27F4E3C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C68);
    sub_252637B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C60);
  }

  return result;
}

unint64_t sub_252637B34()
{
  result = qword_27F4E3C70;
  if (!qword_27F4E3C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C78);
    type metadata accessor for StatusButtonControlView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C80);
    sub_252666040(&qword_27F4E2028, type metadata accessor for StatusButtonControlView);
    sub_252637CCC();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for ButtonControlView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C90);
    sub_252666040(&qword_27F4E3C98, type metadata accessor for ButtonControlView);
    sub_252637DB4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C70);
  }

  return result;
}

unint64_t sub_252637CCC()
{
  result = qword_27F4E3C88;
  if (!qword_27F4E3C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C80);
    sub_252666040(&qword_27F4E2028, type metadata accessor for StatusButtonControlView);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C88);
  }

  return result;
}

unint64_t sub_252637DB4()
{
  result = qword_27F4E3CA0;
  if (!qword_27F4E3CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C90);
    sub_252666040(&qword_27F4E3C98, type metadata accessor for ButtonControlView);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3CA0);
  }

  return result;
}

unint64_t sub_252637E9C()
{
  result = qword_27F4E3CA8;
  if (!qword_27F4E3CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3CB0);
    sub_2526376E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3CA8);
  }

  return result;
}

unint64_t sub_252637F28()
{
  result = qword_27F4E3CB8;
  if (!qword_27F4E3CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3CC0);
    sub_252637FB4();
    sub_252638774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3CB8);
  }

  return result;
}

unint64_t sub_252637FB4()
{
  result = qword_27F4E3CC8;
  if (!qword_27F4E3CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3CD0);
    sub_25263806C();
    sub_2526384F0(&qword_27F4E3D28, &qword_27F4E3D30, &unk_2526AA7D0, sub_252638574);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3CC8);
  }

  return result;
}

unint64_t sub_25263806C()
{
  result = qword_27F4E3CD8;
  if (!qword_27F4E3CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3CE0);
    sub_2526380F8();
    sub_2526382F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3CD8);
  }

  return result;
}

unint64_t sub_2526380F8()
{
  result = qword_27F4E3CE8;
  if (!qword_27F4E3CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3CF0);
    type metadata accessor for ThermostatControlView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3CF8);
    sub_252666040(&qword_27F4E2190, type metadata accessor for ThermostatControlView);
    sub_252638208();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3CE8);
  }

  return result;
}

unint64_t sub_252638208()
{
  result = qword_27F4E3D00;
  if (!qword_27F4E3D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3CF8);
    sub_252666040(&qword_27F4E2190, type metadata accessor for ThermostatControlView);
    sub_252400FC8(&qword_27F4DF8A0, &qword_27F4DF8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D00);
  }

  return result;
}

unint64_t sub_2526382F0()
{
  result = qword_27F4E3D08;
  if (!qword_27F4E3D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D10);
    type metadata accessor for WheelPickerControlView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D18);
    sub_252666040(&qword_27F4E1FF8, type metadata accessor for WheelPickerControlView);
    sub_252638408();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D08);
  }

  return result;
}

unint64_t sub_252638408()
{
  result = qword_27F4E3D20;
  if (!qword_27F4E3D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D18);
    sub_252666040(&qword_27F4E1FF8, type metadata accessor for WheelPickerControlView);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D20);
  }

  return result;
}

uint64_t sub_2526384F0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252638574()
{
  result = qword_27F4E3D38;
  if (!qword_27F4E3D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D40);
    type metadata accessor for ColorControl(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D48);
    sub_252666040(&qword_27F4E3D50, type metadata accessor for ColorControl);
    sub_25263868C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D38);
  }

  return result;
}

unint64_t sub_25263868C()
{
  result = qword_27F4E3D58;
  if (!qword_27F4E3D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D48);
    sub_252666040(&qword_27F4E3D50, type metadata accessor for ColorControl);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D58);
  }

  return result;
}

unint64_t sub_252638774()
{
  result = qword_27F4E3D60;
  if (!qword_27F4E3D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D68);
    sub_252638800();
    sub_252638A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D60);
  }

  return result;
}

unint64_t sub_252638800()
{
  result = qword_27F4E3D70;
  if (!qword_27F4E3D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D78);
    type metadata accessor for AlarmAndTimerControlView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D80);
    sub_252666040(&qword_27F4E3D88, type metadata accessor for AlarmAndTimerControlView);
    sub_252638918();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D70);
  }

  return result;
}

unint64_t sub_252638918()
{
  result = qword_27F4E3D90;
  if (!qword_27F4E3D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D80);
    sub_252666040(&qword_27F4E3D88, type metadata accessor for AlarmAndTimerControlView);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D90);
  }

  return result;
}

unint64_t sub_252638A00()
{
  result = qword_27F4E3D98;
  if (!qword_27F4E3D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DA0);
    sub_252638A8C();
    sub_252638C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D98);
  }

  return result;
}

unint64_t sub_252638A8C()
{
  result = qword_27F4E3DA8;
  if (!qword_27F4E3DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DB8);
    sub_25254E10C();
    sub_252638B68();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3DA8);
  }

  return result;
}

unint64_t sub_252638B68()
{
  result = qword_27F4E3DC0;
  if (!qword_27F4E3DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DB8);
    sub_25254E10C();
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3DC0);
  }

  return result;
}

unint64_t sub_252638C20()
{
  result = qword_27F4E3DC8;
  if (!qword_27F4E3DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DD0);
    type metadata accessor for StatusDetailsButtonControlView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DD8);
    sub_252666040(&qword_27F4E1FC0, type metadata accessor for StatusDetailsButtonControlView);
    sub_252638D30();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3DC8);
  }

  return result;
}

unint64_t sub_252638D30()
{
  result = qword_27F4E3DE0;
  if (!qword_27F4E3DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DD8);
    sub_252666040(&qword_27F4E1FC0, type metadata accessor for StatusDetailsButtonControlView);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3DE0);
  }

  return result;
}

unint64_t sub_252638E18()
{
  result = qword_27F4E3DE8;
  if (!qword_27F4E3DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DF0);
    sub_252638EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3DE8);
  }

  return result;
}

unint64_t sub_252638EA4()
{
  result = qword_27F4E3DF8;
  if (!qword_27F4E3DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E00);
    sub_252638F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3DF8);
  }

  return result;
}

unint64_t sub_252638F30()
{
  result = qword_27F4E3E08;
  if (!qword_27F4E3E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E10);
    type metadata accessor for MenuPickerControlView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E18);
    sub_252666040(&qword_27F4E2168, type metadata accessor for MenuPickerControlView);
    sub_252639048();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3E08);
  }

  return result;
}

unint64_t sub_252639048()
{
  result = qword_27F4E3E20;
  if (!qword_27F4E3E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E18);
    sub_252666040(&qword_27F4E2168, type metadata accessor for MenuPickerControlView);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3E20);
  }

  return result;
}

unint64_t sub_252639130()
{
  result = qword_27F4E3E28;
  if (!qword_27F4E3E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E30);
    sub_252636F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3E28);
  }

  return result;
}

unint64_t sub_2526391BC()
{
  result = qword_27F4E3E38;
  if (!qword_27F4E3E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E40);
    sub_252639248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3E38);
  }

  return result;
}

unint64_t sub_252639248()
{
  result = qword_27F4E3E48;
  if (!qword_27F4E3E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E50);
    sub_252636F44();
    sub_252497E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3E48);
  }

  return result;
}

unint64_t sub_2526392D4()
{
  result = qword_27F4E3E68;
  if (!qword_27F4E3E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3AF0);
    sub_252639360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3E68);
  }

  return result;
}

unint64_t sub_252639360()
{
  result = qword_27F4E3E70;
  if (!qword_27F4E3E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E78);
    sub_252636CF0();
    sub_252636DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3E70);
  }

  return result;
}

unint64_t sub_252639494()
{
  result = qword_27F4E3EA8;
  if (!qword_27F4E3EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3AF8);
    sub_25263954C();
    sub_252400FC8(&qword_27F4DF0F8, &qword_27F4DF100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3EA8);
  }

  return result;
}

unint64_t sub_25263954C()
{
  result = qword_27F4E3EB0;
  if (!qword_27F4E3EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3EB8);
    sub_2526392D4();
    sub_252666040(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3EB0);
  }

  return result;
}

uint64_t sub_2526512D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(type metadata accessor for ControlRowSolver(0) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(type metadata accessor for DisplayControlGroup(0) - 8);
  v17 = (v14 + v15 + *(v16 + 80)) & ~*(v16 + 80);
  v18 = *(v16 + 64);
  v19 = *(type metadata accessor for ControlModuleView() - 8);
  v20 = (v17 + v18 + *(v19 + 80)) & ~*(v19 + 80);
  return sub_25262B1D4(a1, v6 + v17, (v6 + v20), *(v6 + v20 + *(v19 + 64)), a2, a3, a4, a6, a5);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(type metadata accessor for AccessoryControl.ElementIdentifier() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
    }
  }

  else
  {
    v6 = sub_25268DA10();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252651578@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for AccessoryControl.ElementIdentifier() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252683B20(a1, v6, a2);
}

uint64_t sub_2526515F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_252651638(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_25265167C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    sub_2523E2E24(a3, a4);
  }
}

void sub_2526516F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_252393F68(a3, a4, a5, a6, a7);
  }
}

void sub_252651774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_25239F750(a3, a4, a5, a6, a7);
  }
}

uint64_t sub_252665CE0(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ControlModuleView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for ControlRowSolver(0) - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8);
}

uint64_t sub_252665DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252665E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_252665EC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
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

uint64_t sub_252665F20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_252665FB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_252666020(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_252666040(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252666088()
{
  result = qword_27F4E4110;
  if (!qword_27F4E4110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E4118);
    sub_25266610C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E4110);
  }

  return result;
}

unint64_t sub_25266610C()
{
  result = qword_27F4E4120;
  if (!qword_27F4E4120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E4128);
    sub_252666198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E4120);
  }

  return result;
}

unint64_t sub_252666198()
{
  result = qword_27F4E4130;
  if (!qword_27F4E4130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E4138);
    sub_2524CB52C();
    sub_25242F0F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E4130);
  }

  return result;
}

uint64_t sub_25266622C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_2526662C0@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, double *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v53 = a4;
  v52 = a3;
  v51 = a1;
  v54 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v54);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v56);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v57);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Device.ControlGroup(0);
  v55 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a2;
  v20 = type metadata accessor for ControlRowSolver(0);
  v48 = v20[8];
  *(a5 + v48) = 4;
  v49 = v20[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252694EA0;
  v22 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v23 = objc_opt_self();
  v24 = *MEMORY[0x277D74420];
  v25 = v22;
  v26 = v51;
  v27 = [v23 systemFontOfSize:17.0 weight:v24];
  v28 = sub_25266B2EC();
  *(inited + 40) = v27;
  v29 = *MEMORY[0x277D740D0];
  *(inited + 64) = v28;
  *(inited + 72) = v29;
  *(inited + 104) = MEMORY[0x277D839F8];
  *(inited + 80) = 0x3FE0000000000000;
  v30 = v29;
  v31 = sub_25256F764(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2C48);
  swift_arrayDestroy();
  *(a5 + v49) = v31;
  *a5 = a6;
  a5[1] = a7;
  result = sub_25266AAD0(v26, a5 + v20[5], type metadata accessor for Device.ControlModule);
  *(a5 + v20[6]) = v50;
  v33 = (a5 + v20[7]);
  v34 = v53;
  *v33 = v52;
  v33[1] = v34;
  v35 = *(v26 + 16);
  if (*(v35 + 16) != 3)
  {
    return sub_25266AA08(v26, type metadata accessor for Device.ControlModule);
  }

  v36 = 0;
  v53 = v12 + 10;
  v52 = v12 + 2;
  while (1)
  {
    if (v36 == 3)
    {
      result = sub_25266AA08(v26, type metadata accessor for Device.ControlModule);
      *(a5 + v48) = 1;
      return result;
    }

    if (v36 >= *(v35 + 16))
    {
      break;
    }

    sub_25266AAD0(v35 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v36, v19, type metadata accessor for Device.ControlGroup);
    sub_25266AAD0(v19, v14, type metadata accessor for Device.ControlGroup.LayoutType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_25266AA08(v19, type metadata accessor for Device.ControlGroup);
      v45 = type metadata accessor for Device.ControlGroup.LayoutType;
      v46 = v14;
LABEL_30:
      sub_25266AA08(v46, v45);
      return sub_25266AA08(v26, type metadata accessor for Device.ControlModule);
    }

    sub_25266AB38(v14, v16, type metadata accessor for Device.Control);
    sub_25266AAD0(&v16[*(v57 + 20)], v12, type metadata accessor for Device.Control.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0);

          sub_252372288(v12, &qword_27F4DB258);
          goto LABEL_23;
        }
      }

      else if (EnumCaseMultiPayload == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98);

        sub_252372288(v12, &qword_27F4DB440);
        goto LABEL_23;
      }

LABEL_22:
      sub_25266AA08(v12, type metadata accessor for Device.Control.Kind);
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0);
        sub_25266AA08(v12 + *(v39 + 48), type metadata accessor for AccessoryControl.PickerViewConfig);
        goto LABEL_23;
      }

      if (EnumCaseMultiPayload == 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8);

        sub_252372288(v12, &qword_27F4DB2A0);
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_252393F68(*v12, v12[1], v12[2], v12[3], v12[4]);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428);
      sub_25266AA08(v12 + *(v38 + 48), type metadata accessor for AccessoryControl.BinaryViewConfig);

      sub_25266AA08(v19, type metadata accessor for Device.ControlGroup);
      goto LABEL_24;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8);
    sub_25266AA08(v12 + *(v40 + 48), type metadata accessor for AccessoryControl.IncrementalConfig);
    sub_252372288(v12, &qword_27F4DB218);
LABEL_23:
    v41 = sub_2526933B0();

    sub_25266AA08(v19, type metadata accessor for Device.ControlGroup);
    if ((v41 & 1) == 0)
    {
      v45 = type metadata accessor for Device.Control;
      v46 = v16;
      goto LABEL_30;
    }

LABEL_24:
    v42 = &v16[*(v57 + 36)];
    v43 = *v42;
    v44 = v42[1];
    result = sub_25266AA08(v16, type metadata accessor for Device.Control);
    ++v36;
    if (v44 >= 3 && v43 < 5)
    {
      return sub_25266AA08(v26, type metadata accessor for Device.ControlModule);
    }
  }

  __break(1u);
  return result;
}

int64_t sub_252666BCC()
{
  v1 = v0;
  v2 = sub_252667440();
  swift_getKeyPath();
  v3 = *(v2 + 16);
  if (!v3)
  {

    v4 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_19;
  }

  v25 = MEMORY[0x277D84F90];
  sub_25237078C(0, v3, 0);
  v4 = v25;
  v5 = v2 + 40;
  do
  {

    swift_getAtKeyPath();

    v7 = *(v25 + 16);
    v6 = *(v25 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_25237078C((v6 > 1), v7 + 1, 1);
    }

    *(v25 + 16) = v7 + 1;
    *(v25 + 8 * v7 + 32) = v24;
    v5 += 16;
    --v3;
  }

  while (v3);

  v8 = *(v25 + 16);
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = *(v4 + 32);
  v10 = v8 - 1;
  if (v8 != 1)
  {
    if (v8 >= 5)
    {
      v11 = v10 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v12 = vdupq_n_s64(v9);
      v13 = (v4 + 56);
      v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
      v15 = v12;
      do
      {
        v12 = vbslq_s8(vcgtq_s64(v12, v13[-1]), v12, v13[-1]);
        v15 = vbslq_s8(vcgtq_s64(v15, *v13), v15, *v13);
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      v16 = vbslq_s8(vcgtq_s64(v12, v15), v12, v15);
      v17 = vextq_s8(v16, v16, 8uLL).u64[0];
      v9 = vbsl_s8(vcgtd_s64(v16.i64[0], v17), *v16.i8, v17);
      if (v10 == (v10 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v11 = 1;
    }

    v18 = v8 - v11;
    v19 = (v4 + 8 * v11 + 32);
    do
    {
      v21 = *v19++;
      v20 = v21;
      if (v9 <= v21)
      {
        v9 = v20;
      }

      --v18;
    }

    while (v18);
  }

LABEL_19:

  v22 = type metadata accessor for ControlRowSolver(0);
  if (*(v1 + *(v22 + 32)) >= v9)
  {
    return v9;
  }

  else
  {
    return *(v1 + *(v22 + 32));
  }
}

double sub_252666DCC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Device.Control(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v2;
  v18 = type metadata accessor for DisplayControlGroup(0);
  sub_25266AAD0(a1 + *(v18 + 24), v16, type metadata accessor for DisplayControlGroup.LayoutType);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();
  sub_25266AA08(v16, type metadata accessor for DisplayControlGroup.LayoutType);
  if (v2 == 1)
  {
    sub_25266ABC0();
  }

  else
  {
    sub_25266AF38();
  }

  v20 = v19;
  if (sub_2526698F4())
  {
    v20 = v17;
  }

  sub_252669BA4();
  sub_25266AAD0(a1, v13, type metadata accessor for Device.ControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_25266AA08(v13, type metadata accessor for Device.ControlGroup.LayoutType);
  if (EnumCaseMultiPayload == 1)
  {
    sub_25266AAD0(a1, v10, type metadata accessor for Device.ControlGroup.LayoutType);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      sub_25266AB38(v10, v7, type metadata accessor for Device.Control);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8);
      v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_252694E90;
      sub_25266AB38(v7, v24 + v23, type metadata accessor for Device.Control);
      v22 = v24;
    }

    else
    {
      v22 = *v10;
    }

    v25 = *(v22 + 16);

    if (v25 == 1)
    {
      return v17;
    }
  }

  return v20;
}

double sub_252667110(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(type metadata accessor for DisplayControl(0) + 20);
  LOBYTE(v28) = *(a1 + v10);
  Device.Control.viewType(with:)(&v28, &v29);
  v11 = dbl_2526AAFB8[SLOBYTE(v29)];
  LOBYTE(v28) = *(a1 + v10);
  Device.Control.viewType(with:)(&v28, &v29);
  if (LOBYTE(v29) != 14)
  {
    return v11;
  }

  v12 = type metadata accessor for Device.Control(0);
  sub_25266AAD0(a1 + *(v12 + 20), v6, type metadata accessor for Device.Control.Kind);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v24 = type metadata accessor for Device.Control.Kind;
    v25 = v6;
LABEL_12:
    sub_25266AA08(v25, v24);
    return v11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0);
  v14 = sub_25266AB38(&v6[*(v13 + 48)], v9, type metadata accessor for AccessoryControl.PickerViewConfig);
  if (v9[*(v7 + 28)] != 1)
  {
    v24 = type metadata accessor for AccessoryControl.PickerViewConfig;
    v25 = v9;
    goto LABEL_12;
  }

  v29 = v11;
  v15 = *v9;
  v16 = *(*v9 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v28 = MEMORY[0x277D84F90];
    sub_25236FF70(0, v16, 0);
    v17 = v28;
    v18 = (v15 + 48);
    do
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v28 = v17;
      v21 = *(v17 + 16);
      v22 = *(v17 + 24);

      if (v21 >= v22 >> 1)
      {
        v14 = sub_25236FF70((v22 > 1), v21 + 1, 1);
        v17 = v28;
      }

      *(v17 + 16) = v21 + 1;
      v23 = v17 + 16 * v21;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v18 += 4;
      --v16;
    }

    while (v16);
  }

  MEMORY[0x28223BE20](v14);
  *&v27[-32] = v2;
  *&v27[-24] = 0x4072C00000000000;
  *&v27[-16] = &v29;
  *&v27[-8] = 0x4040000000000000;
  sub_25266622C(sub_25266AA68, &v27[-48], v17);

  sub_25266AA08(v9, type metadata accessor for AccessoryControl.PickerViewConfig);
  return v29;
}

uint64_t sub_252667440()
{
  result = type metadata accessor for ControlRowSolver(0);
  v2 = *(v0 + *(result + 20) + 16);
  v3 = *(v2 + 16);
  v4 = *(v0 + *(result + 32));
  if (v4 >= v3)
  {
    v12 = *(type metadata accessor for Device.ControlGroup(0) - 8);
    v10 = v2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));

    v9 = v2;
    v11 = v3;
  }

  else
  {
    if (v4 < 0)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v5 = (2 * v4) | 1;
    v6 = *(type metadata accessor for Device.ControlGroup(0) - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    sub_25266A260(v2, v2 + v7, 0, v5, &qword_27F4DAEE0, &unk_2526A8FF0, type metadata accessor for Device.ControlGroup);
    v9 = v8;
    v10 = v8 + v7;
    v11 = *(v8 + 16);
  }

  v13 = MEMORY[0x277D84F90];
  if (v11)
  {
    v14 = (2 * v11) | 1;
    v32 = v2;
    v33 = v3 - 1;
    while (1)
    {
      sub_25266790C(v9, v10, v14, v35);
      v15 = v35[0];
      if (!v35[0])
      {
        swift_unknownObjectRelease();

        return MEMORY[0x277D84F90];
      }

      v16 = v35[3];
      v17 = v35[4];
      v18 = *(v35[0] + 16);
      if (v18)
      {

        v34 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_252369BD4(0, *(v13 + 2) + 1, 1, v13);
        }

        v19 = *(v13 + 2);
        v20 = 16 * v19;
        v21 = 40;
        do
        {
          v22 = *(v15 + v21);
          v23 = *(v13 + 3);

          if (v19 >= v23 >> 1)
          {
            v13 = sub_252369BD4((v23 > 1), v19 + 1, 1, v13);
          }

          *(v13 + 2) = v19 + 1;
          v24 = &v13[v20];
          *(v24 + 4) = v19;
          *(v24 + 5) = v22;
          v20 += 16;
          v21 += 16;
          ++v19;
          --v18;
        }

        while (v18);

        v2 = v32;
        v17 = v34;
      }

      swift_unknownObjectRetain();
      result = swift_unknownObjectRelease();
      v25 = v17 >> 1;
      v26 = (v17 >> 1) - v16;
      if (__OFSUB__(v17 >> 1, v16))
      {
        break;
      }

      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_30;
      }

      v27 = __OFSUB__(v28, 1);
      v29 = v28 - 1;
      if (v27)
      {
        goto LABEL_31;
      }

      if (v33 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v33;
      }

      if (v30 < v25)
      {

        swift_unknownObjectRelease_n();
        type metadata accessor for Device.ControlGroup(0);
        goto LABEL_26;
      }

      swift_unknownObjectRelease_n();

      if (*(v2 + 16) <= v30)
      {
        goto LABEL_32;
      }

      v31 = *(type metadata accessor for Device.ControlGroup(0) - 8);
      v10 = v2 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v14 = 2 * v30 + 3;

      v9 = v2;
      if (v25 == v14 >> 1)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_26:
  swift_unknownObjectRelease();
  return v13;
}

void sub_2526677FC(double a1, double a2, uint64_t a3, uint64_t a4, double *a5)
{
  v8 = sub_252692BA0();
  type metadata accessor for ControlRowSolver(0);
  type metadata accessor for Key(0);
  sub_25266B750(&qword_27F4DAD40, type metadata accessor for Key);
  v9 = sub_252692AF0();
  [v8 sizeWithAttributes_];
  v11 = v10;

  if (v11 <= a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = a1;
  }

  v13 = v12 + a2;
  if (*a5 > v13)
  {
    v13 = *a5;
  }

  *a5 = v13;
}

void sub_25266790C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v102 = a2;
  v94 = a1;
  v8 = type metadata accessor for Device.ControlGroup(0);
  v92 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Device.Control(0);
  v108 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v109);
  v110 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v90 - v14;
  v111 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v111);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v101 = a3;
  if (a3 >> 1 == v17)
  {
    goto LABEL_60;
  }

  v91 = a3 >> 1;
  if (qword_27F4DAB58 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v25 = off_27F4E3940;
    v98 = *(off_27F4E3940 + 2);
    if (!v98)
    {
      break;
    }

    v26 = 0;
    v27 = 0;
    v99 = off_27F4E3940 + 32;
    v106 = xmmword_252694E90;
    v100 = a4;
    v97 = v17;
    v96 = off_27F4E3940;
    while (v26 < v25[2])
    {
      MEMORY[0x28223BE20](v16);
      v95 = v28;
      *(&v90 - 16) = v28;
      *(&v90 - 1) = v5;
      sub_252371DB8(sub_25266B88C, (&v90 - 4), v102, v29, v101);
      v31 = v30;
      v32 = *(v30 + 16);
      if (!v32)
      {

        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        a4 = v100;
        goto LABEL_60;
      }

      v105 = v27;
      v104 = v26 + 1;
      v112 = type metadata accessor for DisplayControlGroup(0);
      v33 = *(v112 - 8);
      v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v103 = v31;
      v35 = v31 + v34;
      v36 = *(v33 + 72);
      v37 = 0.0;
      v38 = 0.0;
      v39 = v110;
      do
      {
        v50 = *v5;
        v51 = v5[1];
        sub_25266AAD0(v35 + *(v112 + 24), v19, type metadata accessor for DisplayControlGroup.LayoutType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_25266AA08(v19, type metadata accessor for DisplayControlGroup.LayoutType);
        if (EnumCaseMultiPayload == 1)
        {
          sub_25266ABC0();
        }

        else
        {
          sub_25266AF38();
        }

        v42 = v53;
        v55 = v54;
        if (sub_2526698F4())
        {
          v42 = v50;
        }

        if (sub_252669BA4())
        {
          v55 = v51;
        }

        sub_25266AAD0(v35, v15, type metadata accessor for Device.ControlGroup.LayoutType);
        v56 = swift_getEnumCaseMultiPayload();
        sub_25266AA08(v15, type metadata accessor for Device.ControlGroup.LayoutType);
        if (v56 == 1)
        {
          sub_25266AAD0(v35, v39, type metadata accessor for Device.ControlGroup.LayoutType);
          if (swift_getEnumCaseMultiPayload() < 2)
          {
            v40 = *v39;
          }

          else
          {
            v57 = v39;
            v58 = v107;
            sub_25266AB38(v57, v107, type metadata accessor for Device.Control);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8);
            v59 = (*(v108 + 80) + 32) & ~*(v108 + 80);
            v60 = swift_allocObject();
            *(v60 + 16) = v106;
            v61 = v58;
            v39 = v110;
            sub_25266AB38(v61, v60 + v59, type metadata accessor for Device.Control);
            v40 = v60;
          }

          v41 = *(v40 + 16);

          if (v41 == 1)
          {
            v42 = v50;
          }
        }

        v43 = type metadata accessor for ControlRowSolver(0);
        if (v42 > v38)
        {
          v44 = v42;
        }

        else
        {
          v44 = v38;
        }

        v45 = 40.0;
        if (v37 == 0.0)
        {
          v46 = 0.0;
        }

        else
        {
          v46 = 40.0;
        }

        v47 = v37 + v46 + v55;
        if (v55 > v37)
        {
          v48 = v55;
        }

        else
        {
          v48 = v37;
        }

        if (v38 == 0.0)
        {
          v45 = 0.0;
        }

        v49 = v38 + v45 + v42;
        if (*(v5 + *(v43 + 24)))
        {
          v37 = v47;
        }

        else
        {
          v37 = v48;
        }

        if (*(v5 + *(v43 + 24)))
        {
          v38 = v44;
        }

        else
        {
          v38 = v49;
        }

        v35 += v36;
        --v32;
      }

      while (v32);
      v62 = v43;

      if (*(v5 + *(v62 + 24)))
      {
        v63 = v37 == 0.0 || v37 > v5[1];
      }

      else
      {
        v63 = v38 == 0.0 || v38 > *v5;
      }

      a4 = v100;
      v17 = v97;
      v27 = v105;
      v25 = v96;
      v26 = v104;
      if (!v63)
      {
        MEMORY[0x28223BE20](v16);
        *(&v90 - 16) = v95;
        *(&v90 - 1) = v5;
        v22 = v102;
        v23 = v77;
        v24 = v101;
        sub_252371DB8(sub_25266B2B0, (&v90 - 4), v102, v77, v101);
        v79 = v78;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB150);
        v20 = swift_allocObject();
        *(v20 + 16) = v106;
        *(v20 + 32) = 0;
        *(v20 + 40) = v79;
        v21 = swift_unknownObjectRetain();
        goto LABEL_60;
      }

      if (v104 == v98)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_66:
    v89 = v17;
    v16 = swift_once();
    v17 = v89;
  }

LABEL_49:
  if (__OFSUB__(v91, v17))
  {
    __break(1u);
    goto LABEL_68;
  }

  if (v91 - v17 != 1)
  {
LABEL_59:
    v80 = sub_252668E88(1, v94, v102, v17, v101);
    v82 = v81;
    v84 = v83;
    v86 = v85;
    swift_unknownObjectRetain();
    sub_25266790C(v113, v80, v82, v84, v86);
    v20 = v113[0];
    v21 = v113[1];
    v22 = v113[2];
    v23 = v113[3];
    v24 = v113[4];
    swift_unknownObjectRelease();
LABEL_60:
    *a4 = v20;
    a4[1] = v21;
    a4[2] = v22;
    a4[3] = v23;
    a4[4] = v24;
    return;
  }

  if (v91 <= v17)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v64 = v17;
  v65 = v93;
  sub_25266AAD0(v102 + *(v92 + 72) * v17, v93, type metadata accessor for Device.ControlGroup);
  LOBYTE(v113[0]) = *(v5 + *(type metadata accessor for ControlRowSolver(0) + 24));
  v66 = sub_252668754(v65, v113);
  if (!v66)
  {
    sub_25266AA08(v65, type metadata accessor for Device.ControlGroup);
    v17 = v64;
    goto LABEL_59;
  }

  v67 = v66;
  v68 = *(v66 + 16);
  if (!v68)
  {

    v72 = v93;
LABEL_62:
    v87 = sub_252668928(v70, v67, v72);

    MEMORY[0x28223BE20](v88);
    *(&v90 - 2) = v5;
    v20 = sub_25236352C(sub_25266B2D0, (&v90 - 4), v87);

    sub_25266AA08(v72, type metadata accessor for Device.ControlGroup);
    if (*(v20 + 16) == 2)
    {
      v21 = swift_unknownObjectRetain();
      v22 = v102;
      v23 = v64;
      v24 = v101;
    }

    else
    {

      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
    }

    goto LABEL_60;
  }

  v69 = (*(v108 + 80) + 32) & ~*(v108 + 80);
  sub_25266A260(v66, v66 + v69, 0, v68 | 1, &qword_27F4DAEE8, &unk_2526AACD0, type metadata accessor for Device.Control);
  v71 = *(v67 + 16);
  if (v71 >= v68 >> 1)
  {
    v72 = v93;
    if (v68 != 1)
    {
      v73 = v67 + v69;
      v74 = v70;
      sub_25266A260(v67, v73, v68 >> 1, (2 * v71) | 1, &qword_27F4DAEE8, &unk_2526AACD0, type metadata accessor for Device.Control);
      v76 = v75;

      v72 = v93;
      v70 = v74;
      v67 = v76;
    }

    goto LABEL_62;
  }

LABEL_69:
  __break(1u);
}

uint64_t sub_25266838C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v37 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4150);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v34 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  v9 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DisplayControlGroup(0);
  v35 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Device.ControlGroup(0);
  MEMORY[0x28223BE20](v32);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  sub_25266AAD0(a1, &v32 - v17, type metadata accessor for Device.ControlGroup);
  v19 = a3 + *(type metadata accessor for ControlRowSolver(0) + 28);
  v21 = *v19;
  v20 = *(v19 + 8);
  v22 = v37;
  sub_25266AAD0(v18, v15, type metadata accessor for Device.ControlGroup);
  v38 = v22;
  sub_25235E21C(v21);
  sub_252668F1C(v15, &v38, v21, v20, v8);
  if ((*(v9 + 48))(v8, 1, v34) == 1)
  {
    sub_25266AA08(v18, type metadata accessor for Device.ControlGroup);
    sub_252372288(v8, &qword_27F4E4150);
    v23 = 1;
    v24 = v36;
  }

  else
  {
    v25 = v33;
    sub_25266AB38(v8, v33, type metadata accessor for DisplayControlGroup.LayoutType);
    sub_25266AAD0(v18, v13, type metadata accessor for Device.ControlGroup);
    v13[v11[5]] = v22;
    sub_25266AB38(v25, &v13[v11[6]], type metadata accessor for DisplayControlGroup.LayoutType);
    v26 = &v18[*(v32 + 20)];
    v28 = *v26;
    v27 = *(v26 + 1);

    sub_25266AA08(v18, type metadata accessor for Device.ControlGroup);
    v29 = &v13[v11[7]];
    *v29 = v28;
    *(v29 + 1) = v27;
    v30 = v36;
    sub_25266AB38(v13, v36, type metadata accessor for DisplayControlGroup);
    v23 = 0;
    v24 = v30;
  }

  return (*(v35 + 56))(v24, v23, 1, v11);
}

uint64_t sub_252668754(uint64_t a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v20 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4148);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = *a2;
  v15 = *(v14 + 56);
  sub_25266AAD0(a1, &v20 - v11, type metadata accessor for Device.ControlGroup.LayoutType);
  v12[v15] = v13;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_5:
      sub_252372288(v12, &qword_27F4E4148);
      return 0;
    }

    sub_25266AAD0(v12, v9, type metadata accessor for Device.ControlGroup.LayoutType);
    v17 = *v9;
    if (v13)
    {
LABEL_4:

      goto LABEL_5;
    }
  }

  else
  {
    sub_25266AAD0(v12, v6, type metadata accessor for Device.ControlGroup.LayoutType);
    v17 = *v6;
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  v19 = v17;
  sub_25266AA08(v12, type metadata accessor for Device.ControlGroup.LayoutType);
  return v19;
}

uint64_t sub_252668928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25266AAD0(a3, v11, type metadata accessor for Device.ControlGroup.LayoutType);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_25266AB38(v11, v8, type metadata accessor for Device.Control);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
    v22 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v23 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252694E90;
    sub_25266AAD0(v8, v15 + v23, type metadata accessor for Device.Control);
    swift_storeEnumTagMultiPayload();
    v24 = (v15 + v23 + v22[7]);
    v25 = (v15 + v23 + v22[8]);
    *v24 = 0;
    v24[1] = 0;
    *v25 = 0;
    v25[1] = 0;
    sub_25266AA08(v8, type metadata accessor for Device.Control);
  }

  else
  {
    sub_25266AA08(v11, type metadata accessor for Device.ControlGroup.LayoutType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
    v12 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v13 = *(*v12 + 72);
    v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252694EA0;
    v16 = (v15 + v14);
    *v16 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = (v16 + v12[7]);
    v18 = (v16 + v12[8]);
    *v17 = 0;
    v17[1] = 0;
    v19 = (v16 + v13);
    *v18 = 0;
    v18[1] = 0;
    *v19 = a2;
    swift_storeEnumTagMultiPayload();
    v20 = (v19 + v12[7]);
    v21 = (v19 + v12[8]);
    *v20 = 0;
    v20[1] = 0;
    *v21 = 0;
    v21[1] = 0;
  }

  return v15;
}

uint64_t sub_252668D54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0);
  v4 = *(type metadata accessor for Device.ControlGroup(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252694E90;
  sub_25266AAD0(a1, v6 + v5, type metadata accessor for Device.ControlGroup);
  sub_25266790C(&v9, v6, v6 + v5, 0, 3);

  v8 = v9;
  if (v9)
  {
    result = swift_unknownObjectRelease();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  *a2 = v8;
  return result;
}

uint64_t sub_252668E88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a5 >> 1;
  v6 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6 - result;
  if (__OFSUB__(v6, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 < 1)
  {
    v7 = 0;
  }

  else if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = a5 >> 1;
    if (v6 < v7)
    {
LABEL_10:
      if (v8 >= a4)
      {
        if (v5 >= a4)
        {
          if (v5 >= v8)
          {
            if ((v8 & 0x8000000000000000) == 0)
            {
              return a2;
            }

            goto LABEL_21;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  v8 = a4 + v7;
  if (!__OFADD__(a4, v7))
  {
    goto LABEL_10;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_252668F1C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v84 = a4;
  v85 = a3;
  v83 = a5;
  v87 = type metadata accessor for Device.Control(0);
  v78 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v77 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v76 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v76 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - v15;
  v86 = type metadata accessor for DisplayControl(0);
  v17 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v76 - v21;
  v23 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = (&v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *a2;
  v81 = a1;
  sub_25266AAD0(a1, v25, type metadata accessor for Device.ControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v46 = *v25;
    v30 = v85;
    if (v85)
    {
      sub_252380428(v85, v84, v46);
      v46 = v47;
    }

    v48 = *(v46 + 16);
    if (v48)
    {
      v88 = MEMORY[0x277D84F90];
      sub_2523707AC(0, v48, 0);
      v33 = v88;
      v49 = *(v78 + 80);
      v77 = v46;
      v50 = v46 + ((v49 + 32) & ~v49);
      v51 = *(v78 + 72);
      do
      {
        sub_25266AAD0(v50, v13, type metadata accessor for Device.Control);
        v52 = &v13[*(v87 + 36)];
        v53 = *v52;
        v54 = v52[1];
        if (v27 <= v53)
        {
          v55 = v53;
        }

        else
        {
          v55 = v27;
        }

        if (v53 == 4)
        {
          v56 = v27;
        }

        else
        {
          v56 = v55;
        }

        if (v54 >= v27 || v54 == 4)
        {
          v58 = v56;
        }

        else
        {
          v58 = v54;
        }

        sub_25266AB38(v13, v19, type metadata accessor for Device.Control);
        v19[*(v86 + 20)] = v58;
        v88 = v33;
        v60 = *(v33 + 16);
        v59 = *(v33 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_2523707AC(v59 > 1, v60 + 1, 1);
          v33 = v88;
        }

        *(v33 + 16) = v60 + 1;
        sub_25266AB38(v19, v33 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v60, type metadata accessor for DisplayControl);
        v50 += v51;
        --v48;
      }

      while (v48);
      goto LABEL_22;
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_25266AB38(v25, v10, type metadata accessor for Device.Control);
    v61 = v85;
    if (v85)
    {
      v62 = v85(v10);
      sub_25247CDCC(v61);
      sub_25266AA08(v81, type metadata accessor for Device.ControlGroup);
      if ((v62 & 1) == 0)
      {
        sub_25266AA08(v10, type metadata accessor for Device.Control);
        return (*(v80 + 56))(v83, 1, 1, v82);
      }
    }

    else
    {
      sub_25266AA08(v81, type metadata accessor for Device.ControlGroup);
    }

    v66 = v77;
    sub_25266AB38(v10, v77, type metadata accessor for Device.Control);
    v67 = (v66 + *(v87 + 36));
    v68 = *v67;
    v69 = v67[1];
    if (v27 <= v68)
    {
      v70 = v68;
    }

    else
    {
      v70 = v27;
    }

    if (v68 == 4)
    {
      v71 = v27;
    }

    else
    {
      v71 = v70;
    }

    if (v69 >= v27 || v69 == 4)
    {
      v73 = v71;
    }

    else
    {
      v73 = v69;
    }

    v74 = v66;
    v64 = v79;
    sub_25266AB38(v74, v79, type metadata accessor for Device.Control);
    *(v64 + *(v86 + 20)) = v73;
    v65 = v82;
    goto LABEL_62;
  }

  v29 = *v25;
  v30 = v85;
  if (v85)
  {
    sub_252380428(v85, v84, v29);
    v29 = v31;
  }

  v32 = *(v29 + 16);
  if (!v32)
  {
LABEL_46:
    sub_25266AA08(v81, type metadata accessor for Device.ControlGroup);

    sub_25247CDCC(v30);
    return (*(v80 + 56))(v83, 1, 1, v82);
  }

  v88 = MEMORY[0x277D84F90];
  sub_2523707AC(0, v32, 0);
  v33 = v88;
  v34 = *(v78 + 80);
  v77 = v29;
  v35 = v29 + ((v34 + 32) & ~v34);
  v36 = *(v78 + 72);
  do
  {
    sub_25266AAD0(v35, v16, type metadata accessor for Device.Control);
    v37 = &v16[*(v87 + 36)];
    v38 = *v37;
    v39 = v37[1];
    if (v27 <= v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = v27;
    }

    if (v38 == 4)
    {
      v41 = v27;
    }

    else
    {
      v41 = v40;
    }

    if (v39 >= v27 || v39 == 4)
    {
      v43 = v41;
    }

    else
    {
      v43 = v39;
    }

    sub_25266AB38(v16, v22, type metadata accessor for Device.Control);
    v22[*(v86 + 20)] = v43;
    v88 = v33;
    v45 = *(v33 + 16);
    v44 = *(v33 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_2523707AC(v44 > 1, v45 + 1, 1);
      v33 = v88;
    }

    *(v33 + 16) = v45 + 1;
    sub_25266AB38(v22, v33 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v45, type metadata accessor for DisplayControl);
    v35 += v36;
    --v32;
  }

  while (v32);
LABEL_22:
  sub_25266AA08(v81, type metadata accessor for Device.ControlGroup);

  sub_25247CDCC(v85);
  v64 = v79;
  *v79 = v33;
  v65 = v82;
LABEL_62:
  swift_storeEnumTagMultiPayload();
  v75 = v83;
  sub_25266AB38(v64, v83, type metadata accessor for DisplayControlGroup.LayoutType);
  return (*(v80 + 56))(v75, 0, 1, v65);
}

uint64_t sub_25266971C(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DisplayControl(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25266AAD0(v2, v9, type metadata accessor for DisplayControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v11 = *v9;
    v12 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *v9;
    v12 = 1;
LABEL_5:
    MEMORY[0x2530A4FE0](v12);
    sub_2523DBDF0(a1, v11);
  }

  sub_25266AB38(v9, v6, type metadata accessor for DisplayControl);
  MEMORY[0x2530A4FE0](2);
  Device.Control.hash(into:)(a1);
  MEMORY[0x2530A4FE0](v6[*(v4 + 20)]);
  return sub_25266AA08(v6, type metadata accessor for DisplayControl);
}

uint64_t sub_2526698F4()
{
  v1 = type metadata accessor for DisplayControl(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-v6];
  v8 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DisplayControlGroup(0);
  sub_25266AAD0(v0 + *(v11 + 24), v10, type metadata accessor for DisplayControlGroup.LayoutType);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    sub_25266AB38(v10, v7, type metadata accessor for DisplayControl);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB158);
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_252694E90;
    result = sub_25266AB38(v7, v13 + v15, type metadata accessor for DisplayControl);
    v14 = *(v13 + 16);
    if (!v14)
    {
LABEL_10:

      return 0;
    }
  }

  else
  {
    v13 = *v10;
    v14 = *(v13 + 16);
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  v16 = 0;
  while (v16 < *(v13 + 16))
  {
    sub_25266AAD0(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, v4, type metadata accessor for DisplayControl);
    v18 = v4[*(v1 + 20)];
    Device.Control.viewType(with:)(&v18, &v19);
    result = sub_25266AA08(v4, type metadata accessor for DisplayControl);
    if (v19 - 6 < 6 || v19 == 15)
    {

      return 1;
    }

    if (v14 == ++v16)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252669BA4()
{
  v1 = type metadata accessor for DisplayControl(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-v6];
  v8 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DisplayControlGroup(0);
  sub_25266AAD0(v0 + *(v11 + 24), v10, type metadata accessor for DisplayControlGroup.LayoutType);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    sub_25266AB38(v10, v7, type metadata accessor for DisplayControl);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB158);
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_252694E90;
    result = sub_25266AB38(v7, v13 + v15, type metadata accessor for DisplayControl);
    v14 = *(v13 + 16);
    if (!v14)
    {
LABEL_12:

      return 0;
    }
  }

  else
  {
    v13 = *v10;
    v14 = *(v13 + 16);
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  v16 = 0;
  while (v16 < *(v13 + 16))
  {
    sub_25266AAD0(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, v4, type metadata accessor for DisplayControl);
    v18 = v4[*(v1 + 20)];
    Device.Control.viewType(with:)(&v18, &v19);
    result = sub_25266AA08(v4, type metadata accessor for DisplayControl);
    if (v19 <= 0xFu && (((1 << v19) & 0x63D1) != 0 || v19 == 15))
    {

      return 1;
    }

    if (v14 == ++v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252669E70(__int128 *a1)
{
  Device.ControlGroup.LayoutType.hash(into:)(a1);
  v3 = type metadata accessor for Device.ControlGroup(0);
  if (*(v1 + *(v3 + 20) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  if (*(v1 + *(v3 + 24) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  v4 = type metadata accessor for DisplayControlGroup(0);
  MEMORY[0x2530A4FE0](*(v1 + *(v4 + 20)));
  sub_25266971C(a1);
  if (!*(v1 + *(v4 + 28) + 8))
  {
    return sub_252693480();
  }

  sub_252693480();

  return sub_252692C80();
}

uint64_t sub_252669FD4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_252693460();
  a3(v5);
  return sub_2526934C0();
}

uint64_t sub_25266A038(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_252693460();
  a4(v6);
  return sub_2526934C0();
}

uint64_t sub_25266A080(uint64_t a1)
{
  sub_252693460();
  Device.Control.hash(into:)(v4);
  MEMORY[0x2530A4FE0](*(v1 + *(a1 + 20)));
  return sub_2526934C0();
}

uint64_t sub_25266A114(uint64_t a1, uint64_t a2)
{
  sub_252693460();
  Device.Control.hash(into:)(v5);
  MEMORY[0x2530A4FE0](*(v2 + *(a2 + 20)));
  return sub_2526934C0();
}

void *sub_25266A1B8(void *result, unint64_t a2)
{
  v3 = result;
  v4 = a2 - result;
  if (a2 < result)
  {
    if ((result - a2) < 0)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v4 = a2 - result;
LABEL_5:
    v5 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      if (v4 != -1)
      {
        v6 = sub_2525EEDC4(v4 + 1, 0);
        if (sub_25266A404(&v7, (v6 + 4), v5, v3, a2) == v5)
        {
          return v6;
        }

        __break(1u);
      }

      return MEMORY[0x277D84F90];
    }

    __break(1u);
    goto LABEL_12;
  }

  if ((a2 - result) >= 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_25266A260(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size_0(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_25266A404(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25266A4A8(uint64_t a1, uint64_t a2)
{
  if ((_s22HomeAccessoryControlUI6DeviceV0C5GroupV10LayoutTypeO2eeoiySbAG_AGtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Device.ControlGroup(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2526933B0();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    v18 = *v14 == *v16 && v15 == v17;
    if (!v18 && (sub_2526933B0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v19 = type metadata accessor for DisplayControlGroup(0);
  if (*(a1 + *(v19 + 20)) == *(a2 + *(v19 + 20)))
  {
    v20 = v19;
    if (sub_25266A600(a1 + *(v19 + 24), a2 + *(v19 + 24)))
    {
      v21 = *(v20 + 28);
      v22 = (a1 + v21);
      v23 = *(a1 + v21 + 8);
      v24 = (a2 + v21);
      v25 = v24[1];
      if (v23)
      {
        if (v25 && (*v22 == *v24 && v23 == v25 || (sub_2526933B0() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v25)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_25266A600(uint64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for DisplayControl(0);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v27 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v27 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4140);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v19 = *(v18 + 56);
  sub_25266AAD0(a1, &v27 - v16, type metadata accessor for DisplayControlGroup.LayoutType);
  sub_25266AAD0(a2, &v17[v19], type metadata accessor for DisplayControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25266AAD0(v17, v14, type metadata accessor for DisplayControlGroup.LayoutType);
    v21 = *v14;
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_25266AAD0(v17, v8, type metadata accessor for DisplayControlGroup.LayoutType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_25266AB38(&v17[v19], v5, type metadata accessor for DisplayControl);
      if (static Device.Control.== infix(_:_:)(v8, v5))
      {
        v23 = *(v28 + 20);
        v24 = v8[v23];
        v25 = v5[v23];
        sub_25266AA08(v5, type metadata accessor for DisplayControl);
        if (v24 == v25)
        {
          sub_25266AA08(v8, type metadata accessor for DisplayControl);
          sub_25266AA08(v17, type metadata accessor for DisplayControlGroup.LayoutType);
          return 1;
        }
      }

      else
      {
        sub_25266AA08(v5, type metadata accessor for DisplayControl);
      }

      sub_25266AA08(v8, type metadata accessor for DisplayControl);
      sub_25266AA08(v17, type metadata accessor for DisplayControlGroup.LayoutType);
      return 0;
    }

    sub_25266AA08(v8, type metadata accessor for DisplayControl);
LABEL_12:
    sub_252372288(v17, &qword_27F4E4140);
    return 0;
  }

  sub_25266AAD0(v17, v11, type metadata accessor for DisplayControlGroup.LayoutType);
  v21 = *v11;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:

    goto LABEL_12;
  }

LABEL_4:
  v22 = sub_2523E7FBC(v21, *&v17[v19]);

  sub_25266AA08(v17, type metadata accessor for DisplayControlGroup.LayoutType);
  return v22;
}

uint64_t sub_25266AA08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25266AAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25266AB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25266ABC0()
{
  v1 = type metadata accessor for DisplayControl(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v25[-v6];
  v8 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DisplayControlGroup(0);
  sub_25266AAD0(v0 + *(v11 + 24), v10, type metadata accessor for DisplayControlGroup.LayoutType);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_25266AB38(v10, v7, type metadata accessor for DisplayControl);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB158);
    v24 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_252694E90;
    sub_25266AB38(v7, v12 + v24, type metadata accessor for DisplayControl);
    v13 = *(v12 + 16);
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v12 = *v10;
  v13 = *(v12 + 16);
  if (!v13)
  {
  }

LABEL_3:
  v14 = 0;
  v15 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v16 = *(v2 + 72);
  v17 = 0.0;
  v18 = 0.0;
  do
  {
    sub_25266AAD0(v15, v4, type metadata accessor for DisplayControl);
    v26 = v4[*(v1 + 20)];
    Device.Control.viewType(with:)(&v26, &v27);
    result = sub_25266AA08(v4, type metadata accessor for DisplayControl);
    v20 = 343.0;
    v21 = 123.0;
    if (v27 > 6u)
    {
      if (v27 < 0xDu)
      {
        goto LABEL_5;
      }

      if (v27 == 13)
      {
        goto LABEL_20;
      }

      if (v27 != 14)
      {
        goto LABEL_5;
      }

      v22 = 0x4069000000000000;
      goto LABEL_19;
    }

    if (v27 > 2u)
    {
      if (v27 <= 4u && v27 != 3)
      {
        goto LABEL_20;
      }

      v22 = 0x404C800000000000;
      goto LABEL_19;
    }

    if (v27)
    {
      if (v27 == 1)
      {
        v22 = 0x405C400000000000;
      }

      else
      {
        v22 = 0x4053C00000000000;
      }

LABEL_19:
      v21 = *&v22;
      v20 = *&v22;
    }

LABEL_20:
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_29;
    }

    if (v17 < v20)
    {
      v17 = v20;
    }

    v18 = v18 + v21;
LABEL_5:
    v15 += v16;
    --v13;
  }

  while (v13);

  if (!__OFSUB__(v14, 1))
  {
    return result;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_25266AF38()
{
  v1 = type metadata accessor for DisplayControl(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v25[-v6];
  v8 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DisplayControlGroup(0);
  sub_25266AAD0(v0 + *(v11 + 24), v10, type metadata accessor for DisplayControlGroup.LayoutType);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_25266AB38(v10, v7, type metadata accessor for DisplayControl);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB158);
    v24 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_252694E90;
    sub_25266AB38(v7, v12 + v24, type metadata accessor for DisplayControl);
    v13 = *(v12 + 16);
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v12 = *v10;
  v13 = *(v12 + 16);
  if (!v13)
  {
  }

LABEL_3:
  v14 = 0;
  v15 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v16 = *(v2 + 72);
  v17 = 0.0;
  v18 = 0.0;
  do
  {
    sub_25266AAD0(v15, v4, type metadata accessor for DisplayControl);
    v26 = v4[*(v1 + 20)];
    Device.Control.viewType(with:)(&v26, &v27);
    result = sub_25266AA08(v4, type metadata accessor for DisplayControl);
    v20 = 343.0;
    v21 = 123.0;
    if (v27 > 6u)
    {
      if (v27 < 0xDu)
      {
        goto LABEL_5;
      }

      if (v27 == 13)
      {
        goto LABEL_20;
      }

      if (v27 != 14)
      {
        goto LABEL_5;
      }

      v22 = 0x4069000000000000;
      goto LABEL_19;
    }

    if (v27 > 2u)
    {
      if (v27 <= 4u && v27 != 3)
      {
        goto LABEL_20;
      }

      v22 = 0x404C800000000000;
      goto LABEL_19;
    }

    if (v27)
    {
      if (v27 == 1)
      {
        v22 = 0x405C400000000000;
      }

      else
      {
        v22 = 0x4053C00000000000;
      }

LABEL_19:
      v21 = *&v22;
      v20 = *&v22;
    }

LABEL_20:
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_29;
    }

    if (v17 < v21)
    {
      v17 = v21;
    }

    v18 = v18 + v20;
LABEL_5:
    v15 += v16;
    --v13;
  }

  while (v13);

  if (!__OFSUB__(v14, 1))
  {
    return result;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_25266B2EC()
{
  result = qword_27F4E0D88;
  if (!qword_27F4E0D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4E0D88);
  }

  return result;
}

void sub_25266B338()
{
  sub_25266B3AC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DisplayControl(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25266B3AC()
{
  if (!qword_27F4E4170)
  {
    type metadata accessor for DisplayControl(255);
    v0 = sub_252692DD0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E4170);
    }
  }
}

void sub_25266B42C()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Device.ControlModule(319);
    if (v1 <= 0x3F)
    {
      sub_252475AC0();
      if (v2 <= 0x3F)
      {
        sub_25266B4F0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25266B4F0()
{
  if (!qword_27F4E4188)
  {
    type metadata accessor for Key(255);
    sub_25266B750(&qword_27F4DAD40, type metadata accessor for Key);
    v0 = sub_252692B10();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E4188);
    }
  }
}

uint64_t sub_25266B5B8()
{
  result = type metadata accessor for Device.Control(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25266B654()
{
  type metadata accessor for Device.ControlGroup(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DisplayControlGroup.LayoutType(319);
    if (v1 <= 0x3F)
    {
      sub_252404218();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25266B750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25266B8A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v1;
}

uint64_t sub_25266B918()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v1;
}

uint64_t sub_25266B98C(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4248);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4240);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v34 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D28);
  MEMORY[0x28223BE20](v35);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4238);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4230);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  v20 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_device;
  v34 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_device;
  v21 = type metadata accessor for Device();
  (*(*(v21 - 8) + 56))(v2 + v20, 1, 1, v21);
  v22 = (v2 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlModules);
  v22[1] = 0;
  v22[2] = 0;
  *v22 = 0;
  *(v2 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_userHasInteractedWithControls) = 0;
  v23 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__decorationButtons;
  *&v44 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4208);
  sub_252690660();
  (*(v17 + 32))(v2 + v23, v19, v16);
  v24 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__bottomViewController;
  v44 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4218);
  sub_252690660();
  (*(v13 + 32))(v2 + v24, v15, v12);
  *(v2 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_allowsSwipeDownDismissal) = 1;
  v25 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlViewFrames;
  *(v2 + v25) = sub_25256ED10(MEMORY[0x277D84F90]);
  v26 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__overrideHeaderConfig;
  v27 = type metadata accessor for AccessoryControlsHeaderConfig(0);
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  sub_25237153C(v11, v8, &qword_27F4E0D28);
  v28 = v36;
  sub_252690660();
  sub_252372288(v11, &qword_27F4E0D28);
  (*(v37 + 32))(v2 + v26, v28, v38);
  v29 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__presentedError;
  v44 = xmmword_2526952D0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB00);
  v30 = v39;
  sub_252690660();
  (*(v40 + 32))(v2 + v29, v30, v41);
  v31 = v34;
  swift_beginAccess();
  v32 = v42;
  sub_25266D7FC(v42, v2 + v31);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v44 = v43;

  sub_252690690();
  sub_252372288(v32, &qword_27F4E0D60);
  return v2;
}

uint64_t sub_25266BF18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();
}

uint64_t sub_25266BF90@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Device();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D28);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v17 = type metadata accessor for AccessoryControlsHeaderConfig(0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) != 1)
  {
    return sub_25266D794(v16, a1, type metadata accessor for AccessoryControlsHeaderConfig);
  }

  sub_252372288(v16, &qword_27F4E0D28);
  v18 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_device;
  swift_beginAccess();
  sub_25237153C(v2 + v18, v6, &qword_27F4E0D60);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_252372288(v6, &qword_27F4E0D60);
    v19 = *(v17 + 24);
    v20 = type metadata accessor for AccessoryControlsHeaderConfig.Image(0);
    result = (*(*(v20 - 8) + 56))(a1 + v19, 1, 1, v20);
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0;
  }

  else
  {
    sub_25266D794(v6, v13, type metadata accessor for Device);
    sub_25266D6D4(v13, v10);
    sub_252430364(v10, a1);
    return sub_25266D738(v13);
  }

  return result;
}

__n128 sub_25266C2DC@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  result = v6;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_25266C368(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  v5 = swift_allocObject();
  v24[0] = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBAD0);
  if (swift_dynamicCast())
  {
    sub_25235E1A4(&v25, v5 + 16);
    v7 = sub_252692E30();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_252692E00();
    v9 = a1;

    v10 = sub_252692DF0();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v5;
    v11[5] = v8;
    v11[6] = a1;

    sub_2525738C0(0, 0, v4, &unk_2526AB1C0, v11);
  }

  *&v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_252372288(&v25, &qword_27F4DBAD8);
  swift_deallocUninitializedObject();
  v22[0] = a1;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBAE0);
  if (swift_dynamicCast())
  {
    sub_25235E1A4(&v25, v24);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    sub_25268D770();
    if (v15)
    {

      sub_2523C3820(v24, v22);
      v16 = v23;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      v18 = MEMORY[0x28223BE20](v17);
      v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v20, v18);
      sub_252408DE0(v20, v16, &v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      sub_25266CCEC(&v25, a1);
      sub_252408FAC(&v25);
      return __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    *&v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_252372288(&v25, &qword_27F4DBAE8);
  }

  if (qword_27F4DA9A0 != -1)
  {
    swift_once();
  }

  v25 = xmmword_27F4FB380;
  v26 = *algn_27F4FB390;
  v27 = xmmword_27F4FB3A0;
  v28 = unk_27F4FB3B0;
  return sub_25266CCEC(&v25, a1);
}

uint64_t sub_25266C788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[33] = a4;
  sub_252692E00();
  v6[36] = sub_252692DF0();
  v8 = sub_252692DE0();
  v6[37] = v8;
  v6[38] = v7;

  return MEMORY[0x2822009F8](sub_25266C824, v8, v7);
}

uint64_t sub_25266C824()
{
  v1 = *(v0 + 264);
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  *v4 = v0;
  v4[1] = sub_25266C8F0;

  return MEMORY[0x282170990](v2, v3);
}

uint64_t sub_25266C8F0()
{
  v1 = *v0;

  swift_endAccess();
  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return MEMORY[0x2822009F8](sub_25266CA1C, v3, v2);
}

uint64_t sub_25266CA1C()
{
  v1 = *(v0 + 264);

  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  sub_25268D770();
  v7 = v6;
  (*(v4 + 8))(v5, v2);
  if (v7)
  {

    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      goto LABEL_9;
    }

    v8 = *(v0 + 280);
    v9 = *(v0 + 264);
    swift_beginAccess();
    v10 = *(v9 + 40);
    v11 = __swift_project_boxed_opaque_existential_1((v9 + 16), v10);
    v12 = *(v10 - 8);
    v13 = swift_task_alloc();
    (*(v12 + 16))(v13, v11, v10);
    sub_252408DE0(v13, v10, (v0 + 80));

    sub_25266CCEC(v0 + 80, v8);
    sub_252408FAC(v0 + 80);
  }

  else
  {

    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      goto LABEL_9;
    }

    if (qword_27F4DA9A0 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 280);
    v16 = xmmword_27F4FB3A0;
    v15 = unk_27F4FB3B0;
    v17 = *algn_27F4FB390;
    *(v0 + 16) = xmmword_27F4FB380;
    *(v0 + 32) = v17;
    *(v0 + 48) = v16;
    *(v0 + 64) = v15;
    sub_25266CCEC(v0 + 16, v14);
  }

LABEL_9:
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_25266CCEC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v25 = *a1;
  v26 = v4;
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v6 = sub_2526905A0();
  __swift_project_value_buffer(v6, qword_27F4E4B18);
  sub_252408F74(a1, v24);
  v7 = a2;
  v8 = sub_252690580();
  v9 = sub_252692F10();
  sub_252408FAC(a1);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v24[0] = v11;
    *v10 = 136446722;
    if (*(a1 + 8))
    {
      v12 = *a1;
      v13 = *(a1 + 8);
    }

    else
    {
      v12 = 1819047278;
      v13 = 0xE400000000000000;
    }

    v14 = sub_2525BDA90(v12, v13, v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (*(a1 + 24))
    {
      v15 = *(a1 + 16);
      v16 = *(a1 + 24);
    }

    else
    {
      v15 = 1819047278;
      v16 = 0xE400000000000000;
    }

    v17 = sub_2525BDA90(v15, v16, v24);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    v23 = a2;
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBAF8);
    v19 = sub_252692C00();
    v21 = sub_2525BDA90(v19, v20, v24);

    *(v10 + 24) = v21;
    _os_log_impl(&dword_252309000, v8, v9, "Presenting error titled: %{public}s, description: %s, original: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v11, -1, -1);
    MEMORY[0x2530A5A40](v10, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v24[0] = v25;
  v24[1] = v26;
  v24[2] = v27;
  v24[3] = v28;
  sub_252408F74(a1, &v23);

  return sub_252690690();
}

uint64_t sub_25266CFA0()
{
  sub_252372288(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_device, &qword_27F4E0D60);
  sub_25260B03C(*(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlModules), *(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlModules + 8));
  v1 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__decorationButtons;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4230);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__bottomViewController;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4238);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__overrideHeaderConfig;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4240);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__presentedError;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4248);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryControlLegacyViewModel()
{
  result = qword_27F4E41E8;
  if (!qword_27F4E41E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25266D1C8()
{
  sub_25266D3C8();
  if (v0 <= 0x3F)
  {
    sub_2524896C0(319, &qword_27F4E4200, &qword_27F4E4208);
    if (v1 <= 0x3F)
    {
      sub_2524896C0(319, &qword_27F4E4210, &qword_27F4E4218);
      if (v2 <= 0x3F)
      {
        sub_2524896C0(319, &qword_27F4E4220, &qword_27F4E0D28);
        if (v3 <= 0x3F)
        {
          sub_2524896C0(319, &qword_27F4E4228, &qword_27F4DBB00);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_25266D3C8()
{
  if (!qword_27F4E41F8)
  {
    type metadata accessor for Device();
    v0 = sub_252693130();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E41F8);
    }
  }
}

uint64_t sub_25266D420@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccessoryControlLegacyViewModel();
  result = sub_252690630();
  *a1 = result;
  return result;
}

uint64_t sub_25266D460()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();
}

uint64_t sub_25266D4DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D28);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_25237153C(a1, &v9 - v6, &qword_27F4E0D28);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25237153C(v7, v4, &qword_27F4E0D28);

  sub_252690690();
  return sub_252372288(v7, &qword_27F4E0D28);
}

uint64_t sub_25266D60C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2523E233C;

  return sub_25266C788(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25266D6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25266D738(uint64_t a1)
{
  v2 = type metadata accessor for Device();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25266D794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25266D7FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

__n128 sub_25266D894@<Q0>(uint64_t a1@<X8>)
{
  sub_252431FB4();
  sub_252691100();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_25266D8FC()
{
  sub_2526928D0();
  if (sub_2526928F0())
  {

    return MEMORY[0x282131288]();
  }

  else
  {
    sub_2526928E0();
    if (sub_2526928F0())
    {

      return MEMORY[0x282131290]();
    }

    else
    {
      sub_2526928B0();
      if (sub_2526928F0())
      {

        return MEMORY[0x282131278]();
      }

      else
      {
        sub_2526928C0();
        if (sub_2526928F0())
        {

          return MEMORY[0x282131280]();
        }

        else
        {

          return MEMORY[0x282131298]();
        }
      }
    }
  }
}

uint64_t static AccessoryControlDecorationButton.Config.control(control:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v75 = a2;
  v79 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4040);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v65 - v6;
  v7 = type metadata accessor for IconDescriptor();
  MEMORY[0x28223BE20](v7 - 8);
  v71 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430);
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - v13;
  v15 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  MEMORY[0x28223BE20](v73);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v20);
  v70 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v65 - v26;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18);
  v74 = a1;
  MEMORY[0x2530A4210]();
  v78 = v20;
  sub_2526763B0(&v27[*(v20 + 20)], v17, type metadata accessor for Device.Control.Kind);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v28 = swift_projectBox();
    sub_25237153C(v28, v14, &qword_27F4DB430);
    sub_252676A88(&v14[*(v12 + 48)], v19, type metadata accessor for AccessoryControl.DecorationControlConfig);
    sub_252676418(v14, type metadata accessor for Device.Control.Kind);

    sub_25261239C(v11);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
    if ((*(*(v29 - 8) + 48))(v11, 1, v29) == 1)
    {
      sub_252372288(v11, &qword_27F4DADB8);
      v30 = 0;
      v31 = 0xE000000000000000;
    }

    else
    {
      v41 = v71;
      sub_2526763B0(v11, v71, type metadata accessor for IconDescriptor);
      sub_252372288(v11, &qword_27F4DAD88);
      v30 = *v41;
      v31 = v41[1];

      sub_252676418(v41, type metadata accessor for IconDescriptor);
    }

    v65 = v30;
    v66 = v31;
    v42 = sub_25268F0D0();
    v68 = v43;
    v69 = v42;
    LODWORD(v71) = v27[*(v78 + 44)];
    v44 = &v27[*(v78 + 32)];
    v45 = *(v44 + 1);
    v78 = *v44;
    v70 = v45;

    v67 = sub_252685F88(v30, v31);
    v47 = v46;
    v48 = v76;
    sub_25237153C(v74, v76, &qword_27F4DAE18);
    v49 = v72;
    v50 = *(*(v72 - 8) + 56);
    v50(v48, 0, 1, v72);
    LODWORD(v74) = (v19[*(v73 + 24)] & 1) == 0;

    v51 = v79;
    sub_25268DA00();
    sub_252676418(v19, type metadata accessor for AccessoryControl.DecorationControlConfig);
    sub_252676418(v27, type metadata accessor for Device.Control);
    v52 = type metadata accessor for AccessoryControlDecorationButton.Config(0);
    v53 = (v51 + v52[10]);
    v54 = (v51 + v52[12]);
    v55 = v52[14];
    v50(v51 + v55, 1, 1, v49);
    v56 = (v51 + v52[5]);
    v57 = v66;
    *v56 = v65;
    v56[1] = v57;
    v58 = (v51 + v52[6]);
    v59 = v68;
    *v58 = v69;
    v58[1] = v59;
    v60 = (v51 + v52[7]);
    v61 = v77;
    *v60 = v75;
    v60[1] = v61;
    *(v51 + v52[8]) = 0;
    *(v51 + v52[9]) = v71;
    v62 = v70;
    *v53 = v78;
    v53[1] = v62;
    *(v51 + v52[11]) = 0;
    *v54 = v67;
    v54[1] = v47;
    *(v51 + v52[13]) = 0;

    sub_2526766DC(v48, v51 + v55);
    *(v51 + v52[15]) = v74;
    return (*(*(v52 - 1) + 56))(v51, 0, 1, v52);
  }

  else
  {
    sub_252676418(v17, type metadata accessor for Device.Control.Kind);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v32 = sub_2526905A0();
    __swift_project_value_buffer(v32, qword_27F4E4B18);
    sub_2526763B0(v27, v24, type metadata accessor for Device.Control);
    v33 = sub_252690580();
    v34 = sub_252692EF0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v80 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_2525BDA90(0x6769666E6F43, 0xE600000000000000, &v80);
      *(v35 + 12) = 2080;
      sub_2526763B0(v24, v70, type metadata accessor for Device.Control);
      v37 = sub_252692C00();
      v39 = v38;
      sub_252676418(v24, type metadata accessor for Device.Control);
      v40 = sub_2525BDA90(v37, v39, &v80);

      *(v35 + 14) = v40;
      _os_log_impl(&dword_252309000, v33, v34, "Tried to create %s from non-overlay control %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v36, -1, -1);
      MEMORY[0x2530A5A40](v35, -1, -1);
    }

    else
    {

      sub_252676418(v24, type metadata accessor for Device.Control);
    }

    sub_252676418(v27, type metadata accessor for Device.Control);
    v64 = type metadata accessor for AccessoryControlDecorationButton.Config(0);
    return (*(*(v64 - 8) + 56))(v79, 1, 1, v64);
  }
}

uint64_t sub_25266E31C@<X0>(_BYTE *a1@<X8>)
{
  sub_252679870();
  result = sub_252691100();
  *a1 = v3;
  return result;
}