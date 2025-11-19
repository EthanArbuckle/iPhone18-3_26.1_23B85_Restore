uint64_t sub_252376DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  else
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_252376E28@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2523723DC(a1, v6, a2);
}

uint64_t sub_252376EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252376EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252376F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252373DA8(a1, v6, a2);
}

uint64_t sub_252376FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252377048(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523770B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for HAPControlSolver.Source();
  v42 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v41 = (v42 + 16) & ~v42;
  v43 = v0;
  v2 = v0 + v41;
  v3 = sub_25268DA10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = v1[5];
  v7 = sub_25268E530();
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);
  v8(v2 + v1[6], v7);

  v9 = v1[9];
  v10 = sub_25268ED50();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  v12 = v1[12];
  v13 = sub_25268E2F0();
  v39 = *(*(v13 - 8) + 8);
  v39(v2 + v12, v13);

  v14 = v1[19];
  v15 = sub_25268FEB0();
  (*(*(v15 - 8) + 8))(v2 + v14, v15);
  v16 = v1[20];
  v17 = sub_25268F1A0();
  (*(*(v17 - 8) + 8))(v2 + v16, v17);
  v18 = v1[21];
  v19 = sub_25268EAF0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v2 + v18, v19);
  }

  v21 = v1[22];
  if (!(*(v4 + 48))(v2 + v21, 1, v3))
  {
    v5(v2 + v21, v3);
  }

  v22 = v1[23];
  v23 = sub_25268E710();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v2 + v22, 1, v23))
  {
    (*(v24 + 8))(v2 + v22, v23);
  }

  v25 = v2 + v1[24];
  v26 = type metadata accessor for MatterControlSolver.Source(0);
  if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
  {
    (*(v24 + 8))(v25, v23);
    v27 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
    v28 = sub_25268E310();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }

    v30 = v26[6];
    v31 = sub_25268F130();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v25 + v30, 1, v31))
    {
      (*(v32 + 8))(v25 + v30, v31);
    }

    v33 = v26[8];
    v34 = sub_25268F8E0();
    (*(*(v34 - 8) + 8))(v25 + v33, v34);
    v35 = v26[11];
    v36 = sub_25268EDA0();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v25 + v35, 1, v36))
    {
      (*(v37 + 8))(v25 + v35, v36);
    }

    v39(v25 + v26[13], v13);
  }

  return MEMORY[0x2821FE8E8](v43, v41 + v40, v42 | 7);
}

uint64_t sub_2523777AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252373AA8(a1, v6, a2);
}

uint64_t sub_25237782C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25237789C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v21 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v11, &qword_27F4DB218);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_252372288(v11, &qword_27F4DB218);
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v17 = __swift_project_value_buffer(v16, qword_27F4DB8A0);
    return sub_252379504(v17, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    sub_25237956C(v11, v15, type metadata accessor for AccessoryControl.IncrementalState);
    sub_252377B68(v15, a2, v8);
    sub_2523794A4(v15, type metadata accessor for AccessoryControl.IncrementalState);
    v19 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
    v20 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v20) = 0;
    sub_2523795D4(v8, a3);

    *(a3 + v20) = 0;
  }

  return result;
}

uint64_t sub_252377B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_25268ED70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6);
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D15BB8])
  {
    (*(v7 + 96))(v9, v6);
    v10 = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
    v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228) - 8);
    v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v13 = swift_allocObject();
    v30 = xmmword_252694E90;
    *(v13 + 16) = xmmword_252694E90;
    v14 = v13 + v12;
    v15 = (v14 + v11[14]);
    v16 = *MEMORY[0x277D16140];
    v17 = sub_25268F4D0();
    (*(*(v17 - 8) + 104))(v14, v16, v17);
    v15[3] = MEMORY[0x277D839F8];
    *v15 = v10;
    v18 = sub_25256E63C(v13);
    swift_setDeallocating();
    sub_252372288(v14, &qword_27F4DB228);
    swift_deallocClassInstance();
    v19 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v20 = *(v19 + 24);
    v21 = sub_25268F140();
    (*(*(v21 - 8) + 56))(a3 + v20, 1, 1, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v22 = sub_25268DA10();
    v23 = *(v22 - 8);
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    (*(v23 + 16))(v25 + v24, a2, v22);
    v26 = sub_25240C1FC(v25);
    swift_setDeallocating();
    (*(v23 + 8))(v25 + v24, v22);
    swift_deallocClassInstance();
    v27 = sub_2523F75C4(v18);

    *a3 = v27;
    a3[1] = 0;
    *(a3 + *(v19 + 28)) = v26;
    return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    v29 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    return (*(*(v29 - 8) + 56))(a3, 1, 1, v29);
  }
}

uint64_t sub_252377FC4(uint64_t a1, uint64_t a2)
{
  v172 = a1;
  v163 = type metadata accessor for AccessoryControlGroup(0);
  v165 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v166 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HAPControlSolver.Source();
  v157 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v158 = v5;
  v159 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_25268DA10();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v170 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for AccessoryControl(0);
  MEMORY[0x28223BE20](v160);
  v164 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_25268F970();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v148 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_25268ED70();
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v146 = (&v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v153 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v171 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_25268E530();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_25268E2E0();
  v136 = *(v137 - 8);
  v12 = MEMORY[0x28223BE20](v137);
  v135 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v131 = &v123 - v14;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v15 = MEMORY[0x28223BE20](v130);
  v169 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v167 = (&v123 - v17);
  v18 = sub_25268EEA0();
  v174 = *(v18 - 8);
  *&v175 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v168 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v173 = &v123 - v21;
  v141 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v141);
  v156 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for AccessoryControl.StatusProvider();
  v23 = MEMORY[0x28223BE20](v129);
  v128 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v176 = (&v123 - v25);
  v26 = sub_25268F4D0();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v123 - v31;
  v33 = sub_25268F9E0();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v123 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = a2;
  sub_252379504(a2, v39, type metadata accessor for AccessoryControl.ValueDestination);
  v40 = *(v27 + 104);
  v133 = *MEMORY[0x277D16140];
  v134 = v27 + 104;
  v132 = v40;
  v40(v29);
  v177 = v4;
  v41 = *(v4 + 76);
  sub_25268FD80();
  v42 = v34;
  v43 = *(v27 + 8);
  v138 = v29;
  v140 = v26;
  v139 = v27 + 8;
  v43(v29, v26);
  if ((*(v42 + 48))(v32, 1, v33) == 1)
  {
    sub_252372288(v32, &qword_27F4DB208);
    sub_2523794A4(v39, type metadata accessor for AccessoryControl.ValueDestination);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v124 = v43;
    v155 = v39;
    v126 = v42;
    v45 = *(v42 + 32);
    v127 = v33;
    v45(v36, v32, v33);
    v46 = v172;
    v47 = sub_25268FD70();
    v48 = v128;
    *v128 = v47;
    swift_storeEnumTagMultiPayload();
    v49 = (v46 + *(v177 + 44));
    v50 = v49[1];
    v154 = v36;
    v125 = v41;
    if (v50)
    {
      v51 = *v49;

      sub_2523794A4(v48, type metadata accessor for AccessoryControl.StatusProvider);
      v52 = v176;
      *v176 = v51;
      v52[1] = v50;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_25237956C(v48, v176, type metadata accessor for AccessoryControl.StatusProvider);
    }

    v129 = 0x408F400000000000;
    (*(v174 + 104))(v173, *MEMORY[0x277D15CE0], v175);
    LODWORD(v142) = *(v142 + *(type metadata accessor for AccessoryControlSolver.Context() + 20));
    v53 = v131;
    sub_25268E250();
    v128 = sub_25268E2D0();
    v123 = v54;
    v55 = *(v136 + 8);
    v56 = v137;
    v55(v53, v137);
    v57 = v135;
    sub_25268E250();
    v58 = v46;
    v59 = type metadata accessor for IconDescriptor();
    v60 = v167;
    sub_25268E2C0();
    v55(v57, v56);
    v61 = v123;
    *v60 = v128;
    v60[1] = v61;
    *(v60 + *(v59 + 24)) = 0;
    sub_25268E260();
    v136 = sub_25268E2D0();
    v128 = v62;
    v55(v53, v56);
    sub_25268E260();
    v63 = (v60 + *(v130 + 28));
    sub_25268E2C0();
    v55(v57, v56);
    v64 = v128;
    *v63 = v136;
    v63[1] = v64;
    v65 = *(v59 + 24);
    v66 = v58;
    *(v63 + v65) = 0;
    LOBYTE(v180[0]) = v142;
    v67 = sub_2523F5EC0(v58, v180);
    v69 = v68;
    sub_25237153C(v60, v169, &qword_27F4DAD88);
    v70 = sub_25268E510();
    (*(v174 + 16))(v168, v173, v175);
    v71 = v144;
    v72 = v143;
    v73 = v145;
    (*(v144 + 104))(v143, *MEMORY[0x277D15720], v145);
    sub_252376EA8(&qword_27F4DADD8, MEMORY[0x277D158E0]);
    v74 = v66;
    sub_252692D40();
    sub_252692D40();
    if (v180[0] != v178 || v180[1] != v179)
    {
      v75 = sub_2526933B0();
      v76 = 0x406F400000000000;
      if (v75)
      {
        v76 = 0x408F400000000000;
      }

      v129 = v76;
    }

    (*(v71 + 8))(v72, v73);

    v77 = v141;
    v78 = v156;
    sub_252379504(v176, &v156[*(v141 + 56)], type metadata accessor for AccessoryControl.StatusProvider);
    v79 = sub_252692340();
    sub_252372288(v167, &qword_27F4DAD88);
    v80 = v174;
    v81 = v175;
    (*(v174 + 8))(v173, v175);
    sub_252376EF0(v169, v78);
    *(v78 + v77[5]) = v69;
    *(v78 + v77[6]) = v67;
    *(v78 + v77[12]) = v70;
    *(v78 + v77[13]) = v79;
    (*(v80 + 32))(v78 + v77[7], v168, v81);
    *(v78 + v77[8]) = 0;
    *(v78 + v77[9]) = 0x4059000000000000;
    *(v78 + v77[10]) = 0x3FF0000000000000;
    v82 = v78 + v77[11];
    *v82 = v129;
    *(v82 + 8) = 0;
    v83 = v138;
    v84 = v140;
    v132(v138, v133, v140);
    v85 = v74;
    v86 = sub_25268FEA0();
    LOBYTE(v79) = v87;
    v124(v83, v84);
    v88 = *&v86;
    if (v79)
    {
      v88 = 0.0;
    }

    v89 = v146;
    *v146 = v88;
    v90 = v147;
    v91 = v149;
    (*(v147 + 104))(v89, *MEMORY[0x277D15BB8], v149);
    v92 = v148;
    sub_25268F980();
    v93 = sub_25268F960();
    (*(v150 + 8))(v92, v151);
    v94 = v171;
    (*(v90 + 32))(v171, v89, v91);
    v95 = v153;
    *(v94 + *(v153 + 20)) = v93 & 1;
    v96 = v94;
    sub_25268F9B0();
    v97 = v160;
    v98 = v164;
    v99 = &v164[*(v160 + 20)];
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
    v101 = (v99 + *(v100 + 48));
    v174 = *(v100 + 64);
    sub_252379504(v78, v99, type metadata accessor for AccessoryControl.IncrementalConfig);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
    v103 = *(v102 + 40);
    sub_252379504(v96, v101 + v103, type metadata accessor for AccessoryControl.IncrementalState);
    (*(v152 + 56))(v101 + v103, 0, 1, v95);
    sub_252379504(v155, v101 + *(v102 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v104 = v159;
    sub_252379504(v85, v159, type metadata accessor for HAPControlSolver.Source);
    v105 = (*(v157 + 80) + 16) & ~*(v157 + 80);
    v106 = swift_allocObject();
    sub_25237956C(v104, v106 + v105, type metadata accessor for HAPControlSolver.Source);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB008);
    v107 = swift_allocObject();
    v175 = xmmword_252694E90;
    *(v107 + 16) = xmmword_252694E90;
    *(v107 + 32) = sub_252379424;
    *(v107 + 40) = v106;
    *v101 = v107;
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
    (*(*(v108 - 8) + 56))(v99 + v174, 1, 1, v108);
    type metadata accessor for AccessoryControl.State(0);
    swift_storeEnumTagMultiPayload();
    v109 = v161;
    v110 = v162;
    (*(v161 + 32))(v98, v170, v162);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v111 = v97[7];
    v112 = v97[9];
    *(v98 + v112) = 16;
    v113 = (v98 + v111);
    *(v98 + v97[6]) = 0;
    *v113 = 0;
    v113[1] = 0;
    *(v98 + v97[8]) = 1028;
    *(v98 + v112) = 16;
    *(v98 + v97[10]) = 1;
    v114 = v166;
    (*(v109 + 16))(v166, v85, v110);
    swift_storeEnumTagMultiPayload();
    v115 = v163;
    sub_252379504(v98, v114 + *(v163 + 20), type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v116 = (v85 + *(v177 + 28));
    v117 = *v116;
    v118 = v116[1];
    v119 = (v114 + *(v115 + 28));
    v120 = (v114 + *(v115 + 24));
    *v120 = v117;
    v120[1] = v118;
    *v119 = v117;
    v119[1] = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
    v121 = (*(v165 + 80) + 32) & ~*(v165 + 80);
    v122 = swift_allocObject();
    *(v122 + 16) = v175;
    sub_25237956C(v114, v122 + v121, type metadata accessor for AccessoryControlGroup);
    swift_bridgeObjectRetain_n();
    sub_2523794A4(v171, type metadata accessor for AccessoryControl.IncrementalState);
    sub_2523794A4(v78, type metadata accessor for AccessoryControl.IncrementalConfig);
    sub_2523794A4(v176, type metadata accessor for AccessoryControl.StatusProvider);
    (*(v126 + 8))(v154, v127);
    sub_2523794A4(v155, type metadata accessor for AccessoryControl.ValueDestination);
    sub_2523794A4(v98, type metadata accessor for AccessoryControl);
    return v122;
  }
}

uint64_t sub_252379424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25237789C(a1, v6, a2);
}

uint64_t sub_2523794A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252379504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25237956C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523795D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252379654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v21 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v11, &qword_27F4DB218);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_252372288(v11, &qword_27F4DB218);
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v17 = __swift_project_value_buffer(v16, qword_27F4DB8A0);
    return sub_25237EA00(v17, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    sub_25237EA68(v11, v15, type metadata accessor for AccessoryControl.IncrementalState);
    sub_252379930(v15, a2, v8);
    sub_25237E9A0(v15, type metadata accessor for AccessoryControl.IncrementalState);
    v19 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
    v20 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v20) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210);

    *(a3 + v20) = 0;
  }

  return result;
}

uint64_t sub_252379930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = a3;
  v5 = sub_25268F4D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25268ED70();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v12, a1, v9);
  if ((*(v10 + 88))(v12, v9) == *MEMORY[0x277D15BB8])
  {
    (*(v10 + 96))(v12, v9);
    v13 = *v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB238);
    v14 = *(v6 + 80);
    v45 = a2;
    v15 = (v14 + 32) & ~v14;
    v16 = swift_allocObject();
    v46 = xmmword_252694E90;
    *(v16 + 16) = xmmword_252694E90;
    v17 = *MEMORY[0x277D160B0];
    v18 = *(v6 + 104);
    v18(v16 + v15, *MEMORY[0x277D160B0], v5);
    v19 = sub_25240BD30(v16);
    swift_setDeallocating();
    v20 = *(v6 + 8);
    v47 = v6 + 8;
    v48 = v20;
    v20((v16 + v15), v5);
    swift_deallocClassInstance();
    LOBYTE(v16) = HAPControlSolver.Source.has(characteristicKinds:)(v19);

    if (v16)
    {
      v21 = v17;
    }

    else
    {
      v21 = *MEMORY[0x277D16330];
    }

    v22 = v8;
    v44 = v8;
    v23 = v5;
    v18(v22, v21, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228);
    v25 = *(*(v24 - 8) + 72);
    v26 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_252694EA0;
    v28 = v27 + v26;
    v29 = v28 + *(v24 + 48);
    v18(v28, *MEMORY[0x277D16128], v5);
    *(v29 + 24) = MEMORY[0x277D839F8];
    *v29 = v13;
    v30 = v28 + v25 + *(v24 + 48);
    (*(v6 + 16))();
    *(v30 + 24) = MEMORY[0x277D839B0];
    *v30 = v13 > 0.0;
    v31 = sub_25256E63C(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v32 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v33 = *(v32 + 24);
    v34 = sub_25268F140();
    v35 = v49;
    (*(*(v34 - 8) + 56))(v49 + v33, 1, 1, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v36 = sub_25268DA10();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v46;
    (*(v37 + 16))(v39 + v38, v45, v36);
    v40 = sub_25240C1FC(v39);
    swift_setDeallocating();
    (*(v37 + 8))(v39 + v38, v36);
    swift_deallocClassInstance();
    v41 = sub_2523F75C4(v31);

    *v35 = v41;
    v48(v44, v23);
    v35[1] = 0;
    *(v35 + *(v32 + 28)) = v40;
    return (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    v43 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    return (*(*(v43 - 8) + 56))(v49, 1, 1, v43);
  }
}

uint64_t sub_252379F3C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v37 = a2;
  v33 = a3;
  v4 = sub_25268F4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v32) = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB238);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v36 = xmmword_252694E90;
  *(v8 + 16) = xmmword_252694E90;
  v9 = *MEMORY[0x277D160B0];
  v10 = *(v5 + 104);
  v10(v8 + v7, *MEMORY[0x277D160B0], v4);
  v11 = sub_25240BD30(v8);
  swift_setDeallocating();
  v34 = *(v5 + 8);
  v12 = v4;
  v34(v8 + v7, v4);
  swift_deallocClassInstance();
  LOBYTE(v8) = HAPControlSolver.Source.has(characteristicKinds:)(v11);

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = *MEMORY[0x277D16330];
  }

  v14 = v35;
  v10(v35, v13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
  v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228) - 8);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v36;
  v18 = v17 + v16;
  v19 = v17 + v16 + v15[14];
  (*(v5 + 16))(v18, v14, v12);
  *(v19 + 24) = MEMORY[0x277D839B0];
  *v19 = BYTE4(v32);
  v20 = sub_25256E63C(v17);
  swift_setDeallocating();
  sub_252372288(v18, &qword_27F4DB228);
  swift_deallocClassInstance();
  v21 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v22 = *(v21 + 24);
  v23 = sub_25268F140();
  v24 = v33;
  (*(*(v23 - 8) + 56))(v33 + v22, 1, 1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
  v25 = sub_25268DA10();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v36;
  (*(v26 + 16))(v28 + v27, v37, v25);
  v29 = sub_25240C1FC(v28);
  swift_setDeallocating();
  (*(v26 + 8))(v28 + v27, v25);
  swift_deallocClassInstance();
  v30 = sub_2523F75C4(v20);

  *v24 = v30;
  v34(v35, v12);
  v24[1] = 0;
  *(v24 + *(v21 + 28)) = v29;
  return (*(*(v21 - 8) + 56))(v24, 0, 1, v21);
}

uint64_t sub_25237A3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-v7 - 8];
  v9 = *(a1 + 32);
  if (v9 == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v11 = __swift_project_value_buffer(v10, qword_27F4DB8A0);
    return sub_25237EA00(v11, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v13 = *(a1 + 24);
    v14 = *(a1 + 16);
    v15 = *(a1 + 8);
    v19[0] = *a1 & 1;
    v20 = v15;
    v21 = v14 & 1;
    v22 = v13;
    v23 = v9;
    sub_252379F3C(v19, a2, v8);
    v16 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
    v17 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v17) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210);

    *(a3 + v17) = 0;
  }

  return result;
}

uint64_t sub_25237A580@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 4) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v14 = __swift_project_value_buffer(v13, qword_27F4DB8A0);
    return sub_25237EA00(v14, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v39 = a2;
    v16 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
    v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228) - 8);
    v18 = *(*v17 + 80);
    v40 = v8;
    v19 = (v18 + 32) & ~v18;
    v20 = swift_allocObject();
    v38 = xmmword_252694E90;
    *(v20 + 16) = xmmword_252694E90;
    v21 = v20 + v19;
    v22 = v21 + v17[14];
    v23 = *MEMORY[0x277D161A8];
    v24 = sub_25268F4D0();
    (*(*(v24 - 8) + 104))(v21, v23, v24);
    *(v22 + 24) = MEMORY[0x277D839B0];
    *v22 = v16 & 1;
    v25 = sub_25256E63C(v20);
    swift_setDeallocating();
    sub_252372288(v21, &qword_27F4DB228);
    swift_deallocClassInstance();
    v26 = *(v9 + 24);
    v27 = sub_25268F140();
    (*(*(v27 - 8) + 56))(v12 + v26, 1, 1, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v28 = sub_25268DA10();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v38;
    (*(v29 + 16))(v31 + v30, v39, v28);
    v32 = sub_25240C1FC(v31);
    swift_setDeallocating();
    (*(v29 + 8))(v31 + v30, v28);
    swift_deallocClassInstance();
    v33 = sub_2523F75C4(v25);

    *v12 = v33;
    v12[1] = 0;
    *(v12 + *(v9 + 28)) = v32;
    v34 = v12;
    v35 = v40;
    sub_25237EA68(v34, v40, type metadata accessor for AccessoryControl.HAPWriteSpecification);
    v36 = *(v10 + 56);
    v36(v35, 0, 1, v9);
    v36(a3, 1, 1, v9);
    v37 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v37) = 0;
    sub_252377048(v35, a3, &qword_27F4DB210);

    *(a3 + v37) = 0;
  }

  return result;
}

uint64_t sub_25237AA40(uint64_t a1, uint64_t a2)
{
  v512 = a1;
  v443 = type metadata accessor for AccessoryControlGroup(0);
  v444 = *(v443 - 8);
  MEMORY[0x28223BE20](v443);
  v445 = &v398 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v505 = type metadata accessor for AccessoryControl(0);
  v498 = *(v505 - 8);
  v4 = MEMORY[0x28223BE20](v505);
  v417 = &v398 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v411 = &v398 - v7;
  MEMORY[0x28223BE20](v6);
  v472 = &v398 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v9 - 8);
  v400 = &v398 - v10;
  v453 = type metadata accessor for ControlTextModifier.Config(0);
  v11 = MEMORY[0x28223BE20](v453);
  v496 = &v398 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v451 = &v398 - v13;
  v455 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  v14 = MEMORY[0x28223BE20](v455);
  v470 = &v398 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v471 = &v398 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v424 = &v398 - v19;
  MEMORY[0x28223BE20](v18);
  v427 = &v398 - v20;
  v494 = sub_25268DA10();
  v493 = *(v494 - 8);
  MEMORY[0x28223BE20](v494);
  v486 = &v398 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  v439 = *(v485 - 8);
  v22 = MEMORY[0x28223BE20](v485);
  v440 = (&v398 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v452 = (&v398 - v24);
  v511 = type metadata accessor for HAPControlSolver.Source();
  v482 = *(v511 - 1);
  MEMORY[0x28223BE20](v511);
  v483 = v25;
  v484 = &v398 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
  MEMORY[0x28223BE20](v437);
  v465 = &v398 - v26;
  v436 = sub_25268F970();
  v435 = *(v436 - 8);
  MEMORY[0x28223BE20](v436);
  v432 = &v398 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v433 = sub_25268ED70();
  v430 = *(v433 - 8);
  MEMORY[0x28223BE20](v433);
  v429 = (&v398 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v434 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v431 = *(v434 - 8);
  MEMORY[0x28223BE20](v434);
  v463 = &v398 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = sub_25268E530();
  v426 = *(v428 - 8);
  v30 = MEMORY[0x28223BE20](v428);
  v416 = &v398 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v409 = &v398 - v32;
  v480 = sub_25268E2E0();
  v479 = *(v480 - 8);
  v33 = MEMORY[0x28223BE20](v480);
  v478 = &v398 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v477 = &v398 - v35;
  v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v399 = *(v490 - 8);
  v36 = MEMORY[0x28223BE20](v490);
  v467 = &v398 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v420 = (&v398 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v450 = &v398 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v449 = (&v398 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v410 = &v398 - v45;
  MEMORY[0x28223BE20](v44);
  v407 = (&v398 - v46);
  v476 = type metadata accessor for AccessoryControl.StatusProvider();
  v47 = MEMORY[0x28223BE20](v476);
  v495 = &v398 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v402 = &v398 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v446 = (&v398 - v52);
  v53 = MEMORY[0x28223BE20](v51);
  v412 = &v398 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v448 = (&v398 - v56);
  v57 = MEMORY[0x28223BE20](v55);
  v398 = &v398 - v58;
  MEMORY[0x28223BE20](v57);
  v406 = (&v398 - v59);
  v461 = sub_25268EEA0();
  v460 = *(v461 - 1);
  v60 = MEMORY[0x28223BE20](v461);
  v447 = &v398 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v60);
  v473 = &v398 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v408 = &v398 - v65;
  MEMORY[0x28223BE20](v64);
  v414 = &v398 - v66;
  v405 = sub_252690030();
  v404 = *(v405 - 8);
  MEMORY[0x28223BE20](v405);
  v403 = &v398 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  MEMORY[0x28223BE20](v68 - 8);
  v418 = &v398 - v69;
  v442 = sub_252690050();
  v441 = *(v442 - 8);
  v70 = MEMORY[0x28223BE20](v442);
  v401 = &v398 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v413 = &v398 - v72;
  v423 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  v73 = MEMORY[0x28223BE20](v423);
  v422 = &v398 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v462 = &v398 - v75;
  v509 = sub_25268F9E0();
  v506 = *(v509 - 8);
  v76 = MEMORY[0x28223BE20](v509);
  v492 = &v398 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x28223BE20](v76);
  v419 = &v398 - v79;
  MEMORY[0x28223BE20](v78);
  v487 = &v398 - v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  v82 = MEMORY[0x28223BE20](v81 - 8);
  v454 = &v398 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x28223BE20](v82);
  v469 = &v398 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v468 = &v398 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v489 = &v398 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v481 = &v398 - v91;
  MEMORY[0x28223BE20](v90);
  v501 = &v398 - v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  v94 = MEMORY[0x28223BE20](v93 - 8);
  v466 = &v398 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = MEMORY[0x28223BE20](v94);
  v459 = &v398 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v458 = &v398 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v508 = &v398 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v497 = &v398 - v103;
  MEMORY[0x28223BE20](v102);
  v504 = &v398 - v104;
  v105 = sub_25268F4D0();
  v106 = *(v105 - 8);
  v107 = MEMORY[0x28223BE20](v105);
  v109 = &v398 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v107);
  v503 = &v398 - v110;
  v111 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v111 - 8);
  v425 = a2;
  v507 = &v398 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237EA00(a2, v507, type metadata accessor for AccessoryControl.ValueDestination);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB238);
  v113 = (*(v106 + 80) + 32) & ~*(v106 + 80);
  v114 = swift_allocObject();
  v502 = xmmword_252694E90;
  *(v114 + 16) = xmmword_252694E90;
  v115 = *MEMORY[0x277D160B0];
  v116 = v106 + 104;
  v117 = *(v106 + 104);
  (v117)(v114 + v113, *MEMORY[0x277D160B0], v105);
  v118 = sub_25240BD30(v114);
  swift_setDeallocating();
  v119 = *(v106 + 8);
  v510 = v106 + 8;
  v119(v114 + v113, v105);
  swift_deallocClassInstance();
  v120 = v512;
  LOBYTE(v114) = HAPControlSolver.Source.has(characteristicKinds:)(v118);

  v121 = *MEMORY[0x277D16330];
  v421 = v115;
  if (v114)
  {
    v122 = v115;
  }

  else
  {
    v122 = v121;
  }

  (v117)(v503, v122, v105);
  v123 = v511[19];
  sub_25268FD80();
  v415 = *MEMORY[0x277D16128];
  v117(v109);
  v124 = v497;
  sub_25268FD80();
  v119(v109, v105);
  v125 = *MEMORY[0x277D161A8];
  v457 = v116;
  v456 = v117;
  (v117)(v109, v125, v105);
  v126 = v458;
  v491 = v123;
  sub_25268FD80();
  v474 = v109;
  v500 = v105;
  v499 = v119;
  v119(v109, v105);
  v127 = v506;
  v128 = v501;
  v129 = v498 + 56;
  v488 = *(v498 + 56);
  (v488)(v501, 1, 1, v505);
  v130 = v509;
  sub_25237153C(v124, v126, &qword_27F4DB208);
  v131 = *(v127 + 48);
  v132 = v131(v126, 1, v130);
  v475 = v129;
  v464 = v131;
  if (v132 == 1)
  {
    sub_252372288(v126, &qword_27F4DB208);
    v133 = v459;
    sub_25237153C(v504, v459, &qword_27F4DB208);
    if (v131(v133, 1, v130) == 1)
    {
      sub_252372288(v459, &qword_27F4DB208);
      v134 = v505;
      v135 = v489;
      v136 = v467;
      v137 = v488;
    }

    else
    {
      (*(v127 + 32))(v419, v459, v130);
      v144 = v402;
      swift_storeEnumTagMultiPayload();
      v145 = (v120 + v511[11]);
      v146 = v145[1];
      v438 = v127 + 48;
      if (v146)
      {
        v147 = *v145;

        sub_25237E9A0(v144, type metadata accessor for AccessoryControl.StatusProvider);
        v148 = v446;
        *v446 = v147;
        v148[1] = v146;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_25237EA68(v144, v446, type metadata accessor for AccessoryControl.StatusProvider);
      }

      swift_storeEnumTagMultiPayload();
      v197 = v477;
      sub_25268E250();
      v487 = sub_25268E2D0();
      v199 = v198;
      v200 = *(v479 + 8);
      v201 = v480;
      v200(v197, v480);
      v202 = v478;
      sub_25268E250();
      v203 = type metadata accessor for IconDescriptor();
      v204 = v420;
      sub_25268E2C0();
      v200(v202, v201);
      *v204 = v487;
      v204[1] = v199;
      *(v204 + *(v203 + 24)) = 0;
      sub_25268E260();
      v487 = sub_25268E2D0();
      v206 = v205;
      v200(v197, v201);
      sub_25268E260();
      v207 = (v204 + *(v490 + 28));
      sub_25268E2C0();
      v200(v202, v201);
      *v207 = v487;
      v207[1] = v206;
      *(v207 + *(v203 + 24)) = 0;
      v208 = v511;
      v209 = sub_25268E510();
      v210 = v204;
      v211 = v424;
      sub_25237153C(v210, v424, &qword_27F4DAD88);
      v212 = v455;
      sub_25237EA00(v451, v211 + *(v455 + 24), type metadata accessor for ControlTextModifier.Config);
      v213 = (v512 + v208[7]);
      v215 = *v213;
      v214 = v213[1];
      sub_25237EA00(v446, v211 + v212[11], type metadata accessor for AccessoryControl.StatusProvider);
      v216 = v211 + v212[7];
      *v216 = 0u;
      *(v216 + 16) = 0u;
      *(v216 + 32) = -1;
      v217 = v211 + v212[8];
      *v217 = 0u;
      *(v217 + 16) = 0u;
      *(v217 + 32) = -1;
      v487 = v212[12];
      *(v211 + v212[5]) = v209;
      v218 = (v211 + v212[10]);
      *v218 = v215;
      v218[1] = v214;
      v219 = *v216;
      v220 = *(v216 + 8);
      v221 = *(v216 + 16);
      v222 = *(v216 + 24);
      v223 = *(v216 + 32);

      sub_252376DA8(v219, v220, v221, v222, v223);
      *v216 = 0u;
      *(v216 + 16) = 0u;
      *(v216 + 32) = -1;
      v224 = v512;
      sub_252376DA8(*v217, *(v217 + 8), *(v217 + 16), *(v217 + 24), *(v217 + 32));
      *v217 = 0u;
      *(v217 + 16) = 0u;
      *(v217 + 32) = -1;
      *(v211 + v487) = 0;
      *(v211 + v212[9]) = 0;
      if (*(v224 + v511[10]) == 1)
      {
        v225 = v474;
        v226 = v419;
        sub_25268F9A0();
        v227 = sub_25268FE70();
        v499(v225, v500);
        sub_252372288(v420, &qword_27F4DAD88);
        sub_25237E9A0(v451, type metadata accessor for ControlTextModifier.Config);
        sub_25237E9A0(v446, type metadata accessor for AccessoryControl.StatusProvider);
        v473 = 0;
        v228 = v227 & 1;
        v229 = 1;
        v134 = v505;
      }

      else
      {
        sub_252372288(v420, &qword_27F4DAD88);
        sub_25237E9A0(v451, type metadata accessor for ControlTextModifier.Config);
        sub_25237E9A0(v446, type metadata accessor for AccessoryControl.StatusProvider);
        v228 = 0;
        v229 = 0;
        v473 = 1;
        v134 = v505;
        v226 = v419;
      }

      v487 = type metadata accessor for AccessoryControl.BinaryViewConfig;
      sub_25237EA68(v424, v427, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v230 = v485;
      v231 = v452;
      sub_25237EA00(v507, v452 + *(v485 + 36), type metadata accessor for AccessoryControl.ValueDestination);
      v232 = v224;
      v233 = v484;
      sub_25237EA00(v224, v484, type metadata accessor for HAPControlSolver.Source);
      v234 = (*(v482 + 80) + 16) & ~*(v482 + 80);
      v235 = swift_allocObject();
      sub_25237EA68(v233, v235 + v234, type metadata accessor for HAPControlSolver.Source);
      v236 = (v231 + *(v230 + 40));
      *v236 = v228;
      v236[1] = 0;
      v236[2] = v229;
      v236[3] = 0;
      v236[4] = v473;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB018);
      v237 = swift_allocObject();
      *(v237 + 16) = v502;
      *(v237 + 32) = sub_25237EAD0;
      *(v237 + 40) = v235;
      *v231 = v237;
      v238 = v486;
      sub_25268F9B0();
      (*(v506 + 8))(v226, v509);
      v239 = v481;
      v240 = &v481[v134[5]];
      v241 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);
      sub_25237EA68(v427, v240, v487);
      sub_2523714D4(v231, v240 + v241, &qword_27F4DAD80);
      type metadata accessor for AccessoryControl.State(0);
      swift_storeEnumTagMultiPayload();
      v242 = (v232 + v511[14]);
      v243 = *v242;
      v244 = v242[1];
      (*(v493 + 32))(v239, v238, v494);
      type metadata accessor for AccessoryControl.ElementIdentifier();
      swift_storeEnumTagMultiPayload();
      v245 = (v239 + v134[7]);
      v246 = v134[9];
      *(v239 + v246) = 16;
      *(v239 + v134[6]) = 0;
      *v245 = v243;
      v245[1] = v244;
      *(v239 + v134[8]) = 1027;
      *(v239 + v246) = 16;
      *(v239 + v134[10]) = 1;
      v137 = v488;
      (v488)(v239, 0, 1, v134);

      v128 = v501;
      sub_252377048(v239, v501, &qword_27F4DB120);
      v136 = v467;
      v135 = v489;
    }

    goto LABEL_40;
  }

  v459 = 0x408F400000000000;
  (*(v127 + 32))(v487, v126, v130);
  v138 = v418;
  sub_25268F9D0();
  v139 = v441;
  v140 = v442;
  v141 = (*(v441 + 48))(v138, 1, v442);
  v142 = MEMORY[0x277D15CE8];
  v438 = v127 + 48;
  if (v141 == 1)
  {
    sub_252372288(v138, &qword_27F4DB230);
    v143 = v460;
  }

  else
  {
    v149 = v413;
    (*(v139 + 32))(v413, v138, v140);
    v150 = v401;
    (*(v139 + 16))(v401, v149, v140);
    v151 = (*(v139 + 88))(v150, v140);
    v143 = v460;
    if (v151 == *MEMORY[0x277D16CD0])
    {
      (*(v139 + 96))(v150, v140);
      (*(v404 + 32))(v403, v150, v405);
      (*(v143 + 13))(v414, *v142, v461);
      sub_252690000();
      v153 = v152;
      sub_25268FFF0();
      v155 = v154;
      sub_252690020();
      v157 = v156;
      v158 = v398;
      swift_storeEnumTagMultiPayload();
      v159 = (v120 + v511[11]);
      v160 = v159[1];
      if (v160)
      {
        v161 = *v159;

        sub_25237E9A0(v158, type metadata accessor for AccessoryControl.StatusProvider);
        v162 = v406;
        *v406 = v161;
        v162[1] = v160;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_25237EA68(v158, v406, type metadata accessor for AccessoryControl.StatusProvider);
      }

      LODWORD(v473) = *(v425 + *(type metadata accessor for AccessoryControlSolver.Context() + 20));
      v247 = v477;
      sub_25268E250();
      v459 = sub_25268E2D0();
      v249 = v248;
      v250 = *(v479 + 8);
      v251 = v480;
      v250(v247, v480);
      v252 = v478;
      sub_25268E250();
      v253 = type metadata accessor for IconDescriptor();
      v254 = v407;
      sub_25268E2C0();
      v250(v252, v251);
      *v254 = v459;
      v254[1] = v249;
      *(v254 + *(v253 + 24)) = 0;
      sub_25268E260();
      v459 = sub_25268E2D0();
      v256 = v255;
      v250(v247, v251);
      sub_25268E260();
      v257 = (v254 + *(v490 + 28));
      sub_25268E2C0();
      v250(v252, v251);
      v180 = v512;
      *v257 = v459;
      v257[1] = v256;
      *(v257 + *(v253 + 24)) = 0;
      LOBYTE(v515) = v473;
      v458 = sub_2523F5EC0(v180, &v515);
      v451 = v258;
      sub_25237153C(v254, v410, &qword_27F4DAD88);
      v182 = sub_25268E510();
      v183 = v460;
      v184 = v461;
      (*(v460 + 2))(v408, v414, v461);
      v259 = v426;
      v260 = v428;
      (*(v426 + 104))(v409, *MEMORY[0x277D15720], v428);
      sub_252376EA8(&qword_27F4DADD8, MEMORY[0x277D158E0]);
      sub_252692D40();
      sub_252692D40();
      v196 = 0x408F400000000000;
      if ((v515 != v513 || v516 != v514) && (sub_2526933B0() & 1) == 0)
      {
        v196 = 0x406F400000000000;
      }

      (*(v259 + 8))(v409, v260);

      v190 = v423;
      v191 = v422;
      v261 = v406;
      sub_25237EA00(v406, &v422[*(v423 + 56)], type metadata accessor for AccessoryControl.StatusProvider);
      v193 = sub_252692340();
      sub_252372288(v407, &qword_27F4DAD88);
      sub_25237E9A0(v261, type metadata accessor for AccessoryControl.StatusProvider);
      (*(v183 + 1))(v414, v184);
      (*(v404 + 8))(v403, v405);
      (*(v441 + 8))(v413, v442);
      v194 = v410;
      v195 = v408;
      goto LABEL_35;
    }

    v163 = *(v139 + 8);
    v163(v149, v140);
    v163(v150, v140);
  }

  (*(v143 + 13))(v473, *v142, v461);
  v164 = v412;
  swift_storeEnumTagMultiPayload();
  v165 = (v120 + v511[11]);
  v166 = v165[1];
  if (v166)
  {
    v167 = *v165;

    sub_25237E9A0(v164, type metadata accessor for AccessoryControl.StatusProvider);
    v168 = v448;
    *v448 = v167;
    v168[1] = v166;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_25237EA68(v164, v448, type metadata accessor for AccessoryControl.StatusProvider);
  }

  LODWORD(v458) = *(v425 + *(type metadata accessor for AccessoryControlSolver.Context() + 20));
  v169 = v477;
  sub_25268E250();
  v451 = sub_25268E2D0();
  v171 = v170;
  v172 = *(v479 + 8);
  v173 = v480;
  v172(v169, v480);
  v174 = v478;
  sub_25268E250();
  v175 = type metadata accessor for IconDescriptor();
  v176 = v449;
  sub_25268E2C0();
  v172(v174, v173);
  *v176 = v451;
  v176[1] = v171;
  *(v176 + *(v175 + 24)) = 0;
  sub_25268E260();
  v451 = sub_25268E2D0();
  v178 = v177;
  v172(v169, v173);
  sub_25268E260();
  v179 = (v176 + *(v490 + 28));
  sub_25268E2C0();
  v172(v174, v173);
  v180 = v512;
  *v179 = v451;
  v179[1] = v178;
  *(v179 + *(v175 + 24)) = 0;
  LOBYTE(v515) = v458;
  v458 = sub_2523F5EC0(v180, &v515);
  v451 = v181;
  sub_25237153C(v176, v450, &qword_27F4DAD88);
  v182 = sub_25268E510();
  v183 = v460;
  v184 = v461;
  (*(v460 + 2))(v447, v473, v461);
  v185 = v426;
  v186 = v416;
  v187 = v428;
  (*(v426 + 104))(v416, *MEMORY[0x277D15720], v428);
  sub_252376EA8(&qword_27F4DADD8, MEMORY[0x277D158E0]);
  sub_252692D40();
  sub_252692D40();
  if (v515 != v513 || v516 != v514)
  {
    v188 = sub_2526933B0();
    v189 = 0x406F400000000000;
    if (v188)
    {
      v189 = 0x408F400000000000;
    }

    v459 = v189;
  }

  (*(v185 + 8))(v186, v187);

  v190 = v423;
  v191 = v422;
  v192 = v448;
  sub_25237EA00(v448, &v422[*(v423 + 56)], type metadata accessor for AccessoryControl.StatusProvider);
  v193 = sub_252692340();
  sub_252372288(v449, &qword_27F4DAD88);
  sub_25237E9A0(v192, type metadata accessor for AccessoryControl.StatusProvider);
  (*(v183 + 1))(v473, v184);
  v157 = 1.0;
  v153 = 0;
  v155 = 0x4059000000000000;
  v194 = v450;
  v195 = v447;
  v196 = v459;
LABEL_35:
  sub_2523714D4(v194, v191, &qword_27F4DAD88);
  *(v191 + v190[5]) = v451;
  *(v191 + v190[6]) = v458;
  *(v191 + v190[12]) = v182;
  *(v191 + v190[13]) = v193;
  (*(v183 + 4))(v191 + v190[7], v195, v184);
  *(v191 + v190[8]) = v153;
  *(v191 + v190[9]) = v155;
  *(v191 + v190[10]) = v157;
  v262 = v191 + v190[11];
  *v262 = v196;
  *(v262 + 8) = 0;
  sub_25237EA68(v191, v462, type metadata accessor for AccessoryControl.IncrementalConfig);
  v263 = sub_25268FE70();
  if (v263 != 2 && (v263 & 1) == 0 || (v264 = v474, v265 = v500, v456(v474, v415, v500), v266 = sub_25268FEA0(), v268 = v267, v499(v264, v265), (v268 & 1) != 0))
  {
    v266 = 0;
  }

  v269 = v429;
  *v429 = v266;
  v270 = v430;
  v271 = v433;
  (*(v430 + 104))(v269, *MEMORY[0x277D15BB8], v433);
  v272 = v432;
  sub_25268F980();
  v273 = sub_25268F960();
  (*(v435 + 8))(v272, v436);
  v274 = v463;
  (*(v270 + 32))(v463, v269, v271);
  v275 = v434;
  *(v274 + *(v434 + 20)) = v273 & 1;
  v276 = v437;
  v277 = *(v437 + 40);
  v278 = v465;
  sub_25237EA00(v274, v465 + v277, type metadata accessor for AccessoryControl.IncrementalState);
  (*(v431 + 56))(v278 + v277, 0, 1, v275);
  v279 = *(v276 + 36);
  v473 = type metadata accessor for AccessoryControl.ValueDestination;
  v280 = v278;
  sub_25237EA00(v507, v278 + v279, type metadata accessor for AccessoryControl.ValueDestination);
  v461 = type metadata accessor for HAPControlSolver.Source;
  v281 = v484;
  sub_25237EA00(v180, v484, type metadata accessor for HAPControlSolver.Source);
  v282 = (*(v482 + 80) + 16) & ~*(v482 + 80);
  v283 = swift_allocObject();
  v460 = type metadata accessor for HAPControlSolver.Source;
  sub_25237EA68(v281, v283 + v282, type metadata accessor for HAPControlSolver.Source);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB008);
  v284 = swift_allocObject();
  *(v284 + 16) = v502;
  *(v284 + 32) = sub_25237E8A8;
  *(v284 + 40) = v283;
  *v280 = v284;
  v285 = v474;
  v286 = v500;
  v456(v474, v421, v500);
  LOBYTE(v283) = sub_25268FE70();
  v499(v285, v286);
  v287 = v283 == 2;
  v288 = v283 != 2;
  v289 = v283 & 1;
  v290 = v485;
  v291 = v452;
  sub_25237EA00(v507, v452 + *(v485 + 36), v473);
  sub_25237EA00(v512, v281, v461);
  v292 = swift_allocObject();
  sub_25237EA68(v281, v292 + v282, v460);
  v293 = (v291 + *(v290 + 40));
  *v293 = v289;
  v293[1] = 0;
  v293[2] = v288;
  v293[3] = 0;
  v293[4] = v287;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB018);
  v294 = swift_allocObject();
  *(v294 + 16) = v502;
  *(v294 + 32) = sub_25237E928;
  *(v294 + 40) = v292;
  *v291 = v294;
  v295 = v486;
  v296 = v487;
  sub_25268F9B0();
  sub_25237E9A0(v463, type metadata accessor for AccessoryControl.IncrementalState);
  (*(v506 + 8))(v296, v509);
  v134 = v505;
  v297 = v481;
  v298 = &v481[*(v505 + 20)];
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
  v300 = *(v299 + 48);
  v301 = *(v299 + 64);
  sub_25237EA68(v462, v298, type metadata accessor for AccessoryControl.IncrementalConfig);
  sub_2523714D4(v465, v298 + v300, &qword_27F4DAD78);
  sub_2523714D4(v291, v298 + v301, &qword_27F4DAD80);
  (*(v439 + 56))(v298 + v301, 0, 1, v290);
  type metadata accessor for AccessoryControl.State(0);
  swift_storeEnumTagMultiPayload();
  v302 = (v512 + v511[14]);
  v303 = *v302;
  v304 = v302[1];
  (*(v493 + 32))(v297, v295, v494);
  type metadata accessor for AccessoryControl.ElementIdentifier();
  swift_storeEnumTagMultiPayload();
  v305 = (v297 + v134[7]);
  v306 = v134[9];
  *(v297 + v306) = 16;
  *(v297 + v134[6]) = 0;
  *v305 = v303;
  v305[1] = v304;
  *(v297 + v134[8]) = 1028;
  *(v297 + v306) = 16;
  *(v297 + v134[10]) = 1;
  v137 = v488;
  (v488)(v297, 0, 1, v134);

  v128 = v501;
  sub_252377048(v297, v501, &qword_27F4DB120);
  v135 = v489;
  v136 = v467;
LABEL_40:
  v307 = v135;
  v137();
  v308 = v466;
  sub_25237153C(v508, v466, &qword_27F4DB208);
  v309 = v509;
  if (v464(v308, 1, v509) == 1)
  {
    sub_252372288(v308, &qword_27F4DB208);
    v310 = *(v498 + 48);
    v311 = v128;
    v312 = v310(v128, 1, v134);
  }

  else
  {
    (*(v506 + 32))(v492, v308, v309);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v313 = v477;
    sub_25268E250();
    v487 = sub_25268E2D0();
    v315 = v314;
    v316 = *(v479 + 8);
    v317 = v480;
    v316(v313, v480);
    v318 = v136;
    v319 = v478;
    sub_25268E250();
    v320 = type metadata accessor for IconDescriptor();
    sub_25268E2C0();
    v316(v319, v317);
    *v318 = v487;
    v318[1] = v315;
    *(v318 + *(v320 + 24)) = 0;
    sub_25268E260();
    v487 = sub_25268E2D0();
    v322 = v321;
    v316(v313, v317);
    sub_25268E260();
    v323 = (v318 + *(v490 + 28));
    sub_25268E2C0();
    v316(v319, v317);
    *v323 = v487;
    v323[1] = v322;
    v480 = v320;
    *(v323 + *(v320 + 24)) = 0;
    v324 = v511;
    v325 = sub_25268E510();
    v326 = v470;
    sub_25237153C(v318, v470, &qword_27F4DAD88);
    v327 = v455;
    sub_25237EA00(v496, v326 + *(v455 + 24), type metadata accessor for ControlTextModifier.Config);
    v328 = (v512 + v324[7]);
    v329 = *v328;
    v330 = v328[1];
    sub_25237EA00(v495, v326 + v327[11], type metadata accessor for AccessoryControl.StatusProvider);
    v331 = v326 + v327[7];
    *v331 = 0u;
    *(v331 + 16) = 0u;
    *(v331 + 32) = -1;
    v332 = v326 + v327[8];
    *v332 = 0u;
    *(v332 + 16) = 0u;
    *(v332 + 32) = -1;
    v487 = v327[12];
    *(v326 + v327[5]) = v325;
    v333 = (v326 + v327[10]);
    *v333 = v329;
    v333[1] = v330;
    v334 = *v331;
    v335 = *(v331 + 8);
    v336 = *(v331 + 16);
    v337 = *(v331 + 24);
    LOBYTE(v320) = *(v331 + 32);

    sub_252376DA8(v334, v335, v336, v337, v320);
    *v331 = 0u;
    *(v331 + 16) = 0u;
    *(v331 + 32) = -1;
    v338 = v512;
    sub_252376DA8(*v332, *(v332 + 8), *(v332 + 16), *(v332 + 24), *(v332 + 32));
    *v332 = 0u;
    *(v332 + 16) = 0u;
    *(v332 + 32) = -1;
    *(v326 + v487) = 0;
    *(v326 + v327[9]) = 0;
    if (*(v338 + v511[10]) == 1)
    {
      v339 = v318;
      v340 = v474;
      sub_25268F9A0();
      v341 = sub_25268FE70();
      v499(v340, v500);
      sub_252372288(v339, &qword_27F4DAD88);
      sub_25237E9A0(v496, type metadata accessor for ControlTextModifier.Config);
      sub_25237E9A0(v495, type metadata accessor for AccessoryControl.StatusProvider);
      v496 = 0;
      v342 = v341 & 1;
      v343 = 1;
    }

    else
    {
      sub_252372288(v318, &qword_27F4DAD88);
      sub_25237E9A0(v496, type metadata accessor for ControlTextModifier.Config);
      sub_25237E9A0(v495, type metadata accessor for AccessoryControl.StatusProvider);
      v342 = 0;
      v343 = 0;
      v496 = 1;
    }

    v134 = v505;
    v344 = v440;
    v345 = v471;
    sub_25237EA68(v470, v471, type metadata accessor for AccessoryControl.BinaryViewConfig);
    v346 = v485;
    sub_25237EA00(v507, v344 + *(v485 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v347 = v484;
    sub_25237EA00(v338, v484, type metadata accessor for HAPControlSolver.Source);
    v348 = (*(v482 + 80) + 16) & ~*(v482 + 80);
    v349 = swift_allocObject();
    sub_25237EA68(v347, v349 + v348, type metadata accessor for HAPControlSolver.Source);
    v350 = (v344 + *(v346 + 40));
    *v350 = v342;
    v350[1] = 0;
    v350[2] = v343;
    v350[3] = 0;
    v350[4] = v496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB018);
    v351 = swift_allocObject();
    *(v351 + 16) = v502;
    *(v351 + 32) = sub_25237E828;
    *(v351 + 40) = v349;
    *v344 = v351;
    v352 = v486;
    sub_25268F9B0();
    v353 = v481;
    v354 = &v481[v134[5]];
    v355 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);
    sub_25237EA00(v345, v354, type metadata accessor for AccessoryControl.BinaryViewConfig);
    sub_25237153C(v344, v354 + v355, &qword_27F4DAD80);
    type metadata accessor for AccessoryControl.State(0);
    swift_storeEnumTagMultiPayload();
    v356 = (v338 + v511[14]);
    v357 = *v356;
    v358 = v356[1];
    (*(v493 + 32))(v353, v352, v494);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v359 = (v353 + v134[7]);
    v360 = v134[9];
    *(v353 + v360) = 16;
    *(v353 + v134[6]) = 0;
    *v359 = v357;
    v359[1] = v358;
    *(v353 + v134[8]) = 1028;
    *(v353 + v360) = 16;
    *(v353 + v134[10]) = 1;
    (v488)(v353, 0, 1, v134);

    v307 = v489;
    sub_252377048(v353, v489, &qword_27F4DB120);
    v310 = *(v498 + 48);
    if (!v310(v307, 1, v134))
    {
      v498 = 0x80000002526ADC30;
      v361 = v400;
      v362 = &v400[*(v490 + 28)];
      v363 = v480;
      v364 = *(v480 + 20);
      v365 = *MEMORY[0x277D16578];
      v366 = sub_25268F910();
      (*(*(v366 - 8) + 104))(&v362[v364], v365, v366);
      *v362 = 0xD000000000000014;
      *(v362 + 1) = v498;
      v362[*(v363 + 24)] = 0;
      sub_25237EA00(v362, v361, type metadata accessor for IconDescriptor);
      (*(v399 + 56))(v361, 0, 1, v490);
      sub_2523CA540(v361);
    }

    sub_252372288(v344, &qword_27F4DAD80);
    sub_25237E9A0(v471, type metadata accessor for AccessoryControl.BinaryViewConfig);
    (*(v506 + 8))(v492, v509);
    v311 = v501;
    v312 = v310(v501, 1, v134);
  }

  v367 = v469;
  if (!v312)
  {
    *(v311 + v134[6]) = 0;
  }

  v368 = v310(v307, 1, v134);
  v369 = v512;
  if (!v368)
  {
    *(v307 + v134[6]) = 1;
  }

  if (!v310(v307, 1, v134))
  {
    *(v307 + v134[8]) = 0;
  }

  v370 = v468;
  sub_25237153C(v307, v468, &qword_27F4DB120);
  v371 = v310(v370, 1, v134);
  v372 = v472;
  if (v371 == 1)
  {
    v367 = v370;
  }

  else
  {
    sub_25237EA68(v370, v472, type metadata accessor for AccessoryControl);
    sub_25237153C(v311, v367, &qword_27F4DB120);
    if (v310(v367, 1, v134) != 1)
    {
      v385 = v411;
      sub_25237EA68(v367, v411, type metadata accessor for AccessoryControl);
      v386 = v445;
      (*(v493 + 16))(v445, v369, v494);
      type metadata accessor for AccessoryControl.ElementIdentifier();
      swift_storeEnumTagMultiPayload();
      v387 = v369;
      v388 = v443;
      v389 = v386 + *(v443 + 20);
      v390 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0) + 48);
      sub_25237EA00(v385, v389, type metadata accessor for AccessoryControl);
      sub_25237EA00(v372, v389 + v390, type metadata accessor for AccessoryControl);
      type metadata accessor for AccessoryControlGroup.Layout(0);
      swift_storeEnumTagMultiPayload();
      v391 = (v387 + v511[7]);
      v392 = *v391;
      v393 = v391[1];
      v394 = (v386 + *(v388 + 28));
      v395 = (v386 + *(v388 + 24));
      *v395 = v392;
      v395[1] = v393;
      *v394 = 0;
      v394[1] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
      v396 = (*(v444 + 80) + 32) & ~*(v444 + 80);
      v374 = swift_allocObject();
      *(v374 + 16) = v502;
      sub_25237EA68(v386, v374 + v396, type metadata accessor for AccessoryControlGroup);

      sub_25237E9A0(v385, type metadata accessor for AccessoryControl);
      v384 = v372;
      goto LABEL_62;
    }

    sub_25237E9A0(v372, type metadata accessor for AccessoryControl);
  }

  sub_252372288(v367, &qword_27F4DB120);
  v373 = v454;
  sub_25237153C(v311, v454, &qword_27F4DB120);
  if (v310(v373, 1, v134) != 1)
  {
    v375 = v417;
    sub_25237EA68(v373, v417, type metadata accessor for AccessoryControl);
    v376 = v445;
    (*(v493 + 16))(v445, v369, v494);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v377 = v443;
    sub_25237EA00(v375, v376 + *(v443 + 20), type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v378 = (v369 + v511[7]);
    v379 = *v378;
    v380 = v378[1];
    v381 = (v376 + *(v377 + 28));
    v382 = (v376 + *(v377 + 24));
    *v382 = v379;
    v382[1] = v380;
    *v381 = 0;
    v381[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
    v383 = (*(v444 + 80) + 32) & ~*(v444 + 80);
    v374 = swift_allocObject();
    *(v374 + 16) = v502;
    sub_25237EA68(v376, v374 + v383, type metadata accessor for AccessoryControlGroup);

    v384 = v375;
LABEL_62:
    sub_25237E9A0(v384, type metadata accessor for AccessoryControl);
    goto LABEL_63;
  }

  sub_252372288(v373, &qword_27F4DB120);
  v374 = MEMORY[0x277D84F90];
LABEL_63:
  sub_252372288(v508, &qword_27F4DB208);
  sub_252372288(v497, &qword_27F4DB208);
  sub_252372288(v504, &qword_27F4DB208);
  v499(v503, v500);
  sub_25237E9A0(v507, type metadata accessor for AccessoryControl.ValueDestination);
  sub_252372288(v307, &qword_27F4DB120);
  sub_252372288(v311, &qword_27F4DB120);
  return v374;
}

uint64_t sub_25237E828@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25237A580(a1, v6, a2);
}

uint64_t sub_25237E8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252379654(a1, v6, a2);
}

uint64_t sub_25237E9A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25237EA00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25237EA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25237EAE8()
{
  result = qword_27F4DB200;
  if (!qword_27F4DB200)
  {
    type metadata accessor for HAPControlSolver.Source();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB200);
  }

  return result;
}

uint64_t sub_25237EB40(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_25268E530();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HAPControlSolver.Source();
  (*(v6 + 16))(v8, a2 + *(v9 + 20), v5);
  v10 = (*(v6 + 88))(v8, v5);
  if (v10 == *MEMORY[0x277D15698])
  {
    v11 = sub_2523806B4(a2, a3);
    return sub_2523C5BA8(v11);
  }

  else if (v10 == *MEMORY[0x277D15640])
  {
    v13 = sub_25239F980(a2, a3);
    return sub_2523C5BA8(v13);
  }

  else if (v10 == *MEMORY[0x277D15850])
  {
    v14 = sub_2523AD6A0(a2, a3);
    return sub_2523C5BA8(v14);
  }

  else
  {
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_25237ECDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + *(type metadata accessor for HAPControlSolver.Source() + 68));
  v5[2] = a2;
  return sub_252569248(MEMORY[0x277D84F90], sub_25237ED4C, v5, v3);
}

uint64_t sub_25237ED78@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v32 - v7);
  if (*(a1 + 4) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v10 = __swift_project_value_buffer(v9, qword_27F4DB8A0);
    return sub_252380264(v10, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v12 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
    v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228) - 8);
    v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v15 = swift_allocObject();
    v32 = xmmword_252694E90;
    *(v15 + 16) = xmmword_252694E90;
    v16 = v15 + v14;
    v17 = v16 + v13[14];
    v18 = *MEMORY[0x277D16158];
    v19 = sub_25268F4D0();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    *(v17 + 24) = MEMORY[0x277D839B0];
    *v17 = v12 & 1;
    v20 = sub_25256E63C(v15);
    swift_setDeallocating();
    sub_252372288(v16, &qword_27F4DB228);
    swift_deallocClassInstance();
    v21 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v22 = *(v21 + 24);
    v23 = sub_25268F140();
    (*(*(v23 - 8) + 56))(v8 + v22, 1, 1, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v24 = sub_25268DA10();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    (*(v25 + 16))(v27 + v26, a2, v24);
    v28 = sub_25240C1FC(v27);
    swift_setDeallocating();
    (*(v25 + 8))(v27 + v26, v24);
    swift_deallocClassInstance();
    v29 = sub_2523F75C4(v20);

    *v8 = v29;
    v8[1] = 0;
    *(v8 + *(v21 + 28)) = v28;
    v30 = *(*(v21 - 8) + 56);
    v30(v8, 0, 1, v21);
    v30(a3, 1, 1, v21);
    v31 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v31) = 0;
    sub_2523795D4(v8, a3);

    *(a3 + v31) = 0;
  }

  return result;
}

uint64_t sub_25237F1A8(uint64_t a1, uint64_t a2)
{
  v123 = a2;
  v3 = type metadata accessor for HAPControlSolver.Source();
  v124 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v125 = v4;
  v126 = v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268DA10();
  v129 = *(v5 - 8);
  v130 = v5;
  MEMORY[0x28223BE20](v5);
  v127 = v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for AccessoryControl(0);
  MEMORY[0x28223BE20](v128);
  v131 = v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_25268E2E0();
  v116 = *(v120 - 8);
  v8 = MEMORY[0x28223BE20](v120);
  v119 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v118 = v107 - v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  MEMORY[0x28223BE20](v117);
  v132 = v107 - v11;
  v115 = type metadata accessor for ControlTextModifier.Config(0);
  MEMORY[0x28223BE20](v115);
  *&v136 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for AccessoryControl.StatusProvider();
  v13 = MEMORY[0x28223BE20](v114);
  v113 = (v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v135 = v107 - v15;
  v121 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  v16 = MEMORY[0x28223BE20](v121);
  v133 = v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v134 = v107 - v18;
  v19 = sub_25268F4D0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v107 - v24;
  v26 = sub_25268F9E0();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 104))(v22, *MEMORY[0x277D16158], v19);
  v137 = v3;
  v30 = *(v3 + 76);
  sub_25268FD80();
  v31 = v26;
  v32 = v27;
  v33 = *(v20 + 8);
  v110 = v22;
  v112 = v19;
  v111 = v20 + 8;
  v33(v22, v19);
  if ((*(v32 + 48))(v25, 1, v31) == 1)
  {
    sub_252372288(v25, &qword_27F4DB208);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v107[0] = v33;
    v35 = *(v32 + 32);
    v122 = v29;
    v109 = v31;
    v35(v29, v25, v31);
    v36 = sub_25268FD20();
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v39 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB240);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252694E90;
      *(inited + 32) = v39;
      v38 = sub_25240C050(inited);
      swift_setDeallocating();
    }

    v41 = v132;
    v42 = sub_25268FD70();
    v43 = v113;
    *v113 = v38;
    *(v43 + 8) = v42;
    swift_storeEnumTagMultiPayload();
    v44 = (a1 + v137[11]);
    v45 = v44[1];
    v108 = v32;
    v107[1] = v30;
    v46 = v116;
    if (v45)
    {
      v47 = *v44;

      sub_252380204(v43, type metadata accessor for AccessoryControl.StatusProvider);
      v48 = v135;
      *v135 = v47;
      *(v48 + 8) = v45;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_25238011C(v43, v135, type metadata accessor for AccessoryControl.StatusProvider);
    }

    swift_storeEnumTagMultiPayload();
    v49 = v118;
    sub_25268E250();
    v116 = sub_25268E2D0();
    v115 = v50;
    v51 = *(v46 + 8);
    v52 = v120;
    v51(v49, v120);
    v53 = v119;
    sub_25268E250();
    v54 = a1;
    v55 = type metadata accessor for IconDescriptor();
    sub_25268E2C0();
    v51(v53, v52);
    v56 = v115;
    *v41 = v116;
    v41[1] = v56;
    *(v41 + *(v55 + 24)) = 0;
    sub_25268E260();
    v116 = sub_25268E2D0();
    v115 = v57;
    v51(v49, v52);
    sub_25268E260();
    v58 = (v41 + *(v117 + 28));
    sub_25268E2C0();
    v51(v53, v52);
    v59 = v115;
    *v58 = v116;
    v58[1] = v59;
    *(v58 + *(v55 + 24)) = 0;
    v60 = v137;
    v61 = sub_25268E510();
    v62 = v41;
    v63 = v133;
    sub_2523800AC(v62, v133);
    v64 = v121;
    sub_252380264(v136, v63 + *(v121 + 24), type metadata accessor for ControlTextModifier.Config);
    v65 = (v54 + v60[7]);
    v67 = *v65;
    v66 = v65[1];
    sub_252380264(v135, v63 + v64[11], type metadata accessor for AccessoryControl.StatusProvider);
    v68 = v63 + v64[7];
    *v68 = 0u;
    *(v68 + 16) = 0u;
    *(v68 + 32) = -1;
    v69 = v64[8];
    v120 = v54;
    v70 = v63 + v69;
    *v70 = 0u;
    *(v70 + 16) = 0u;
    *(v70 + 32) = -1;
    v117 = v64[12];
    *(v63 + v64[5]) = v61;
    v71 = (v63 + v64[10]);
    v119 = v67;
    *v71 = v67;
    v71[1] = v66;
    v73 = *v68;
    v72 = *(v68 + 8);
    v74 = *(v68 + 16);
    v75 = *(v68 + 24);
    v76 = *(v68 + 32);
    v118 = v66;
    swift_bridgeObjectRetain_n();
    sub_252376DA8(v73, v72, v74, v75, v76);
    *v68 = 0u;
    *(v68 + 16) = 0u;
    *(v68 + 32) = -1;
    sub_252376DA8(*v70, *(v70 + 8), *(v70 + 16), *(v70 + 24), *(v70 + 32));
    *v70 = 0u;
    *(v70 + 16) = 0u;
    *(v70 + 32) = -1;
    v77 = v120;
    *(v63 + v117) = 0;
    *(v63 + v64[9]) = 0;
    if (*(v77 + v137[10]) == 1)
    {
      v78 = v110;
      sub_25268F9A0();
      v79 = sub_25268FE70();
      (v107[0])(v78, v112);
      sub_252372288(v132, &qword_27F4DAD88);
      sub_252380204(v136, type metadata accessor for ControlTextModifier.Config);
      sub_252380204(v135, type metadata accessor for AccessoryControl.StatusProvider);
      v135 = v79 & 1;
      *&v136 = 0;
      v132 = 1;
    }

    else
    {
      sub_252372288(v132, &qword_27F4DAD88);
      sub_252380204(v136, type metadata accessor for ControlTextModifier.Config);
      sub_252380204(v135, type metadata accessor for AccessoryControl.StatusProvider);
      v132 = 0;
      v135 = 0;
      *&v136 = 1;
    }

    v80 = v134;
    sub_25238011C(v133, v134, type metadata accessor for AccessoryControl.BinaryViewConfig);
    v81 = v127;
    sub_25268F9B0();
    v82 = v128;
    v83 = v131;
    v84 = &v131[*(v128 + 20)];
    v85 = (v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48));
    sub_252380264(v80, v84, type metadata accessor for AccessoryControl.BinaryViewConfig);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
    sub_252380264(v123, v85 + *(v86 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v87 = v126;
    sub_252380264(v77, v126, type metadata accessor for HAPControlSolver.Source);
    v88 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v89 = swift_allocObject();
    sub_25238011C(v87, v89 + v88, type metadata accessor for HAPControlSolver.Source);
    v90 = (v85 + *(v86 + 40));
    *v90 = v135;
    v90[1] = 0;
    v90[2] = v132;
    v90[3] = 0;
    v90[4] = v136;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB018);
    v91 = swift_allocObject();
    v136 = xmmword_252694E90;
    *(v91 + 16) = xmmword_252694E90;
    *(v91 + 32) = sub_252380184;
    *(v91 + 40) = v89;
    *v85 = v91;
    type metadata accessor for AccessoryControl.State(0);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v86) = *(v77 + v137[13]);
    v92 = (v77 + v137[14]);
    v94 = *v92;
    v93 = v92[1];
    v95 = v129;
    v96 = v81;
    v97 = v130;
    (*(v129 + 32))(v83, v96, v130);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v98 = (v83 + v82[7]);
    v99 = v82[9];
    *(v83 + v99) = 16;
    *(v83 + v82[6]) = v86;
    *v98 = v94;
    v98[1] = v93;
    *(v83 + v82[8]) = 1027;
    *(v83 + v99) = 16;
    *(v83 + v82[10]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
    v100 = (type metadata accessor for AccessoryControlGroup(0) - 8);
    v101 = (*(*v100 + 80) + 32) & ~*(*v100 + 80);
    v102 = swift_allocObject();
    *(v102 + 16) = v136;
    v103 = v102 + v101;
    (*(v95 + 16))(v103, v77, v97);
    swift_storeEnumTagMultiPayload();
    sub_252380264(v83, v103 + v100[7], type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v104 = (v103 + v100[9]);
    v105 = (v103 + v100[8]);
    v106 = v118;
    *v105 = v119;
    v105[1] = v106;
    *v104 = 0;
    v104[1] = 0;

    sub_252380204(v134, type metadata accessor for AccessoryControl.BinaryViewConfig);
    (*(v108 + 8))(v122, v109);
    sub_252380204(v83, type metadata accessor for AccessoryControl);
    return v102;
  }
}

uint64_t sub_2523800AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25238011C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252380184@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25237ED78(a1, v6, a2);
}

uint64_t sub_252380204(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252380264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523802CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v14 = *(a3 + v7 + 32);
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        v11 = v14;
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_25236FFB0(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_25236FFB0((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_15:

    return v8;
  }

  return result;
}

void sub_252380428(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Device.Control(0);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_252386124(a3 + v14 + v15 * v12, v11, type metadata accessor for Device.Control);
      v16 = a1(v11);
      if (v3)
      {
        sub_25238618C(v11, type metadata accessor for Device.Control);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_2523861EC(v11, v23, type metadata accessor for Device.Control);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25237060C(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_25237060C(v18 > 1, v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_2523861EC(v23, v13 + v14 + v19 * v15, type metadata accessor for Device.Control);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_25238618C(v11, type metadata accessor for Device.Control);
      }

      if (v22 == ++v12)
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

size_t sub_2523806B4(uint64_t a1, const char *a2)
{
  v4 = type metadata accessor for AccessoryControlGroup(0);
  v140 = *(v4 - 8);
  v141 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v132 = &v124[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v139 = &v124[-v8];
  v9 = MEMORY[0x28223BE20](v7);
  v130 = &v124[-v10];
  MEMORY[0x28223BE20](v9);
  v131 = &v124[-v11];
  v136 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig();
  v12 = MEMORY[0x28223BE20](v136);
  v138 = &v124[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v129 = &v124[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v135 = &v124[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v134 = &v124[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v124[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v144 = &v124[-v24];
  MEMORY[0x28223BE20](v23);
  v26 = &v124[-v25];
  v145 = type metadata accessor for AccessoryControl(0);
  v147 = *(v145 - 8);
  v27 = MEMORY[0x28223BE20](v145);
  v137 = &v124[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v27);
  v128 = &v124[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v133 = &v124[-v32];
  MEMORY[0x28223BE20](v31);
  v146 = &v124[-v33];
  v34 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v124[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v143 = a2;
  sub_252386124(a2, v36, type metadata accessor for AccessoryControl.ValueDestination);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB238);
  v37 = sub_25268F4D0();
  v38 = *(v37 - 8);
  v39 = *(v38 + 72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_252694EA0;
  v42 = v41 + v40;
  v43 = *(v38 + 104);
  v43(v42, *MEMORY[0x277D16330], v37);
  v44 = v42 + v39;
  v45 = a1;
  v43(v44, *MEMORY[0x277D16288], v37);
  v46 = sub_25240BD30(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  LOBYTE(v37) = HAPControlSolver.Source.has(characteristicKinds:)(v46);

  if ((v37 & 1) == 0)
  {
    v56 = v36;
LABEL_12:
    sub_25238618C(v56, type metadata accessor for AccessoryControl.ValueDestination);
    return MEMORY[0x277D84F90];
  }

  v142 = v36;
  v127 = type metadata accessor for HAPControlSolver.Source();
  v47 = sub_25268FE90();
  v48 = sub_2523857FC();
  v49 = sub_25268FDD0();
  v50 = 4;
  if (v51)
  {
    v52 = v142;
    v54 = v145;
    v53 = v146;
    v55 = v147;
  }

  else
  {
    v52 = v142;
    v54 = v145;
    v53 = v146;
    v55 = v147;
    if (v47 != 2)
    {
      if (v47)
      {
        if (v49 <= 2)
        {
          v50 = 3 - v49;
        }
      }

      else
      {
        v50 = 0;
      }
    }
  }

  LOBYTE(v148) = v50;
  sub_252381784(v45, v52, v48, &v148, v26);
  v59 = *(v55 + 48);
  v57 = v55 + 48;
  v58 = v59;
  if (v59(v26, 1, v54) == 1)
  {

    sub_252372288(v26, &qword_27F4DB120);
    v56 = v52;
    goto LABEL_12;
  }

  sub_2523861EC(v26, v53, type metadata accessor for AccessoryControl);
  v62 = v144;
  v125 = v50;
  sub_252384448(v45, v143, v48, v50, v52, v144);

  sub_25237153C(v62, v22, &qword_27F4DB120);
  v126 = v58;
  v63 = v58(v22, 1, v54);
  v147 = v57;
  if (v63 == 1)
  {
    sub_252372288(v22, &qword_27F4DB120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
    v64 = *(v140 + 80);
    v140 = *(v140 + 72);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_252694E90;
    v65 = v60 + ((v64 + 32) & ~v64);
    v66 = sub_25268DA10();
    (*(*(v66 - 8) + 16))(v65, v45, v66);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v67 = v141;
    v68 = v146;
    sub_252386124(v146, v65 + v141[5], type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v69 = (v45 + *(v127 + 28));
    v71 = *v69;
    v70 = v69[1];
    v72 = (v65 + v67[7]);
    v73 = (v65 + v67[6]);
    *v73 = v71;
    v73[1] = v70;
    *v72 = 0;
    v72[1] = 0;
  }

  else
  {
    v74 = v133;
    sub_2523861EC(v22, v133, type metadata accessor for AccessoryControl);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
    v64 = *(v140 + 80);
    v140 = *(v140 + 72);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_252694E90;
    v75 = v60 + ((v64 + 32) & ~v64);
    v76 = sub_25268DA10();
    (*(*(v76 - 8) + 16))(v75, v45, v76);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v77 = v45;
    v78 = v141;
    v79 = v75 + v141[5];
    v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0) + 48);
    v68 = v146;
    sub_252386124(v146, v79, type metadata accessor for AccessoryControl);
    v67 = v78;
    v45 = v77;
    sub_252386124(v74, v79 + v80, type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v81 = (v77 + *(v127 + 28));
    v71 = *v81;
    v70 = v81[1];
    v82 = (v75 + v67[7]);
    v83 = (v75 + v67[6]);
    *v83 = v71;
    v83[1] = v70;
    *v82 = 0;
    v82[1] = 0;

    sub_25238618C(v74, type metadata accessor for AccessoryControl);
  }

  if (v143[*(type metadata accessor for AccessoryControlSolver.Context() + 20)] > 1u)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
    v84 = ((v64 + 32) & ~v64);
    v85 = &v84[v140];
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_252694E90;
    v86 = v45;
    v143 = v84;
    v87 = sub_25268DA10();
    (*(*(v87 - 8) + 16))(&v84[v60], v45, v87);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    sub_252386124(v68, &v84[v60 + v67[5]], type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v88 = &v84[v60 + v67[7]];
    v89 = &v84[v60 + v67[6]];
    *v89 = v71;
    *(v89 + 1) = v70;
    *v88 = 0;
    *(v88 + 1) = 0;
    LOBYTE(v148) = v125;

    v90 = v134;
    v91 = v142;
    sub_2523A54CC(v86, &v148, v142, v134);
    v92 = v126(v90, 1, v145);
    v141 = v70;
    if (v92 == 1)
    {
      sub_252372288(v90, &qword_27F4DB120);
    }

    else
    {
      v93 = v128;
      sub_2523861EC(v90, v128, type metadata accessor for AccessoryControl);
      v94 = *MEMORY[0x277D15D98];
      v95 = sub_25268F0E0();
      v96 = v129;
      (*(*(v95 - 8) + 104))(v129, v94, v95);
      v97 = v136;
      *(v96 + *(v136 + 20)) = 0;
      *(v96 + *(v97 + 24)) = 2;
      v98 = v131;
      sub_252386124(v93, v131, type metadata accessor for AccessoryControl.ElementIdentifier);
      v99 = &v98[v67[5]];
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0);
      v134 = v85;
      v101 = *(v100 + 48);
      sub_252386124(v93, v99, type metadata accessor for AccessoryControl);
      sub_252386124(v96, v99 + v101, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
      swift_storeEnumTagMultiPayload();
      v148 = v71;
      v149 = v70;

      MEMORY[0x2530A4800](0x696C436F7475612FLL, 0xEC0000006574616DLL);
      v102 = v149;
      v103 = &v98[v67[7]];
      v104 = &v98[v67[6]];
      *v104 = v148;
      v104[1] = v102;
      *v103 = 0;
      v103[1] = 0;
      v105 = v130;
      sub_252386124(v98, v130, type metadata accessor for AccessoryControlGroup);
      v60 = sub_2523687E4(1uLL, 2, 1, v60);
      sub_25238618C(v96, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
      v106 = v93;
      v91 = v142;
      sub_25238618C(v106, type metadata accessor for AccessoryControl);
      *(v60 + 16) = 2;
      sub_2523861EC(v105, v134 + v60, type metadata accessor for AccessoryControlGroup);
      sub_25238618C(v98, type metadata accessor for AccessoryControlGroup);
    }

    v107 = v135;
    v108 = v144;
    sub_25237153C(v144, v135, &qword_27F4DB120);
    if (v126(v107, 1, v145) == 1)
    {
      sub_252372288(v108, &qword_27F4DB120);
      sub_25238618C(v146, type metadata accessor for AccessoryControl);
      sub_25238618C(v91, type metadata accessor for AccessoryControl.ValueDestination);
      sub_252372288(v107, &qword_27F4DB120);
    }

    else
    {
      v109 = v137;
      sub_2523861EC(v107, v137, type metadata accessor for AccessoryControl);
      v110 = *MEMORY[0x277D15DA0];
      v111 = sub_25268F0E0();
      v112 = v138;
      (*(*(v111 - 8) + 104))(v138, v110, v111);
      v113 = v136;
      v112[*(v136 + 20)] = 0;
      v112[*(v113 + 24)] = 2;
      v114 = v139;
      sub_252386124(v109, v139, type metadata accessor for AccessoryControl.ElementIdentifier);
      v115 = &v114[v67[5]];
      v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0) + 48);
      sub_252386124(v109, v115, type metadata accessor for AccessoryControl);
      sub_252386124(v112, v115 + v116, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
      swift_storeEnumTagMultiPayload();
      v148 = v71;
      v149 = v141;

      MEMORY[0x2530A4800](0x65646F6D2FLL, 0xE500000000000000);
      v117 = v149;
      v118 = &v114[v67[7]];
      v119 = &v114[v67[6]];
      *v119 = v148;
      v119[1] = v117;
      *v118 = 0;
      v118[1] = 0;
      v120 = v114;
      v121 = v132;
      sub_252386124(v120, v132, type metadata accessor for AccessoryControlGroup);
      v123 = *(v60 + 16);
      v122 = *(v60 + 24);
      if (v123 >= v122 >> 1)
      {
        v60 = sub_2523687E4(v122 > 1, v123 + 1, 1, v60);
      }

      sub_25238618C(v138, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
      sub_25238618C(v137, type metadata accessor for AccessoryControl);
      sub_252372288(v144, &qword_27F4DB120);
      sub_25238618C(v146, type metadata accessor for AccessoryControl);
      sub_25238618C(v91, type metadata accessor for AccessoryControl.ValueDestination);
      *(v60 + 16) = v123 + 1;
      sub_2523861EC(v121, &v143[v60 + v123 * v140], type metadata accessor for AccessoryControlGroup);
      sub_25238618C(v139, type metadata accessor for AccessoryControlGroup);
    }
  }

  else
  {
    sub_252372288(v144, &qword_27F4DB120);
    sub_25238618C(v68, type metadata accessor for AccessoryControl);
    sub_25238618C(v142, type metadata accessor for AccessoryControl.ValueDestination);
  }

  return v60;
}

uint64_t sub_252381784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unsigned __int8 *a4@<X4>, uint64_t a5@<X8>)
{
  v187 = a4;
  v188 = a5;
  v181 = a3;
  v174 = a2;
  v6 = type metadata accessor for AccessoryControl(0);
  v189 = *(v6 - 8);
  v190 = v6;
  MEMORY[0x28223BE20](v6);
  v182 = &v146[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v185 = type metadata accessor for HAPControlSolver.Source();
  v171 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v172 = v8;
  v173 = &v146[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_25268DA10();
  v175 = *(v9 - 8);
  v176 = v9;
  MEMORY[0x28223BE20](v9);
  v184 = &v146[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v162 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v158 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v152 = &v146[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB248);
  v12 = MEMORY[0x28223BE20](v155);
  v157 = &v146[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v154 = &v146[-v15];
  MEMORY[0x28223BE20](v14);
  v159 = &v146[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v17 - 8);
  v163 = &v146[-v18];
  v19 = sub_252690490();
  v165 = *(v19 - 8);
  v166 = v19;
  MEMORY[0x28223BE20](v19);
  v164 = &v146[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD50);
  MEMORY[0x28223BE20](v21 - 8);
  v170 = &v146[-v22];
  v23 = type metadata accessor for MatterControlSolver.Source(0);
  v168 = *(v23 - 8);
  v169 = v23;
  MEMORY[0x28223BE20](v23);
  v167 = &v146[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_25268E060();
  v179 = *(v25 - 8);
  v180 = v25;
  MEMORY[0x28223BE20](v25);
  v178 = &v146[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v183 = &v146[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x28223BE20](v28);
  v151 = &v146[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v161 = &v146[-v33];
  MEMORY[0x28223BE20](v32);
  v186 = &v146[-v34];
  v177 = sub_25268F4D0();
  v35 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v37 = &v146[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v153 = &v146[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v39);
  v42 = &v146[-v41];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB260);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v146[-v44];
  v46 = sub_252690030();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v49 = &v146[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = *v187;
  sub_252382E30(a1, v45);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_252372288(v45, &qword_27F4DB260);
    return (*(v189 + 56))(v188, 1, 1, v190);
  }

  v149 = v47;
  (*(v47 + 32))(v49, v45, v46);
  sub_252690000();
  v53 = v52;
  sub_25268FFF0();
  v55 = v54;
  sub_252690020();
  v57 = v56;
  v147 = v50;
  LOBYTE(v201) = v50;
  v187 = v42;
  v160 = a1;
  sub_252383C40(&v201, v42);
  v58 = 3;
  v59 = v181;
  if (!sub_2525F82E0(3u, v181))
  {
    if (sub_2525F82E0(1u, v59))
    {
      v58 = 2;
    }

    else
    {
      v58 = sub_2525F82E0(2u, v59);
    }
  }

  v148 = v49;
  v150 = v46;
  v60 = v177;
  (*(v35 + 104))(v37, *MEMORY[0x277D16280], v177);
  v61 = v160;
  v181 = sub_25268FEA0();
  v63 = v62;
  (*(v35 + 8))(v37, v60);
  v177 = sub_25268FD50();
  v65 = v64;
  v66 = sub_25268FDE0();
  if (v67)
  {
    v68 = 3;
  }

  else
  {
    if (v66 >= 4)
    {
      v145 = v66;
      type metadata accessor for HMCharacteristicValueCurrentHeaterCoolerState(0);
      *&v201 = v145;
      result = sub_2526933C0();
      __break(1u);
      return result;
    }

    v68 = 0x1020000u >> (8 * v66);
  }

  v156 = v68;
  v69 = v190;
  v215 = 1;
  v213 = v63 & 1;
  v211 = v65 & 1;
  v208 = 1;
  v71 = v178;
  v70 = v179;
  v72 = v180;
  (*(v179 + 104))(v178, *MEMORY[0x277D15280], v180);
  sub_2523860DC(&qword_27F4DB268, MEMORY[0x277D15298]);
  v73 = sub_25268DB80();
  (*(v70 + 8))(v71, v72);
  v74 = v189;
  v75 = v183;
  if (v73)
  {
    v76 = v170;
    sub_25237153C(v61 + *(v185 + 96), v170, &qword_27F4DAD50);
    if ((*(v168 + 48))(v76, 1, v169) == 1)
    {
      sub_252372288(v76, &qword_27F4DAD50);
    }

    else
    {
      LODWORD(v185) = v58;
      v77 = v167;
      sub_2523861EC(v76, v167, type metadata accessor for MatterControlSolver.Source);
      v78 = v163;
      sub_25268F8B0();
      v79 = v78;
      v80 = v165;
      v81 = v78;
      v82 = v166;
      if ((*(v165 + 48))(v81, 1, v166) == 1)
      {
        sub_25238618C(v77, type metadata accessor for MatterControlSolver.Source);
        sub_252372288(v79, &qword_27F4DB250);
      }

      else
      {
        v83 = v164;
        (*(v80 + 32))(v164, v79, v82);
        if (sub_252690260())
        {
          v179 = *(v74 + 56);
          v180 = v74 + 56;
          (v179)(v161, 1, 1, v69);
          v84 = *(v158 + 48);
          v85 = v187;
          v86 = v162;
          if (!v84(v187, 1, v162))
          {
            LOBYTE(v199[0]) = v147;
            HAPControlSolver.Source.runningState(currentMode:)(v199, &v201);
            v85[*(v86 + 44)] = v201;
          }

          v87 = v155;
          v88 = *(v155 + 48);
          v89 = v61;
          v90 = v153;
          sub_25237153C(v85, v153, &qword_27F4DB258);
          *&v191 = v53;
          *(&v191 + 1) = v55;
          *&v192 = v57;
          BYTE8(v192) = v185;
          *(&v192 + 9) = v216[0];
          HIDWORD(v192) = *(v216 + 3);
          *&v193 = 1;
          BYTE8(v193) = v215;
          *(&v193 + 9) = *v214;
          HIDWORD(v193) = *&v214[3];
          *&v194 = v181;
          BYTE8(v194) = v213;
          HIDWORD(v194) = *&v212[3];
          *(&v194 + 9) = *v212;
          *&v195 = v177;
          BYTE8(v195) = v211;
          BYTE9(v195) = v156;
          *(&v195 + 10) = v209;
          HIWORD(v195) = v210;
          v196 = 0;
          v197 = 0;
          LOBYTE(v198) = v208;
          HIBYTE(v198) = 2;
          v205 = v195;
          v206 = 0u;
          v207 = v198;
          v201 = v191;
          v202 = v192;
          v203 = v193;
          v204 = v194;
          sub_252385F5C(&v191, v199);
          v91 = v159;
          StaticThermostatClusterGroup.thermostatControlState(for:config:source:)(v159, &v159[v88], v90, &v201, v89);
          v92 = v87;
          v93 = v90;
          v94 = v162;
          sub_252372288(v93, &qword_27F4DB258);
          v199[4] = v205;
          v199[5] = v206;
          v200 = v207;
          v199[0] = v201;
          v199[1] = v202;
          v199[2] = v203;
          v199[3] = v204;
          sub_252385F08(v199);
          v95 = v154;
          sub_25237153C(v91, v154, &qword_27F4DB248);
          v96 = &v95[*(v87 + 48)];
          v97 = *(v96 + 5);
          v205 = *(v96 + 4);
          v206 = v97;
          v207 = *(v96 + 48);
          v98 = *(v96 + 1);
          v201 = *v96;
          v202 = v98;
          v99 = *(v96 + 3);
          v203 = *(v96 + 2);
          v204 = v99;
          sub_252385F08(&v201);
          if (v84(v95, 1, v94) == 1)
          {
            sub_252372288(v91, &qword_27F4DB248);
            (*(v165 + 8))(v164, v166);
            sub_25238618C(v167, type metadata accessor for MatterControlSolver.Source);
            sub_252372288(v95, &qword_27F4DB258);
            v100 = v186;
            v75 = v183;
            v101 = v161;
          }

          else
          {
            v122 = v152;
            sub_2523861EC(v95, v152, type metadata accessor for AccessoryControl.ThermostatState);
            v123 = v160;
            (*(v175 + 16))(v184, v160, v176);
            v124 = v91;
            v125 = v190;
            v126 = v151;
            v127 = v92;
            v128 = &v151[v190[5]];
            v129 = &v128[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270) + 48)];
            v130 = v124;
            v131 = v157;
            sub_25237153C(v130, v157, &qword_27F4DB248);
            v132 = &v131[*(v127 + 48)];
            v133 = *(v132 + 5);
            *(v128 + 4) = *(v132 + 4);
            *(v128 + 5) = v133;
            *(v128 + 48) = *(v132 + 48);
            v134 = *(v132 + 1);
            *v128 = *v132;
            *(v128 + 1) = v134;
            v135 = *(v132 + 3);
            *(v128 + 2) = *(v132 + 2);
            *(v128 + 3) = v135;
            v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
            v137 = *(v136 + 40);
            sub_252386124(v122, v129 + v137, type metadata accessor for AccessoryControl.ThermostatState);
            (*(v158 + 56))(v129 + v137, 0, 1, v162);
            sub_252386124(v174, v129 + *(v136 + 36), type metadata accessor for AccessoryControl.ValueDestination);
            v138 = v123;
            v139 = v173;
            sub_252386124(v138, v173, type metadata accessor for HAPControlSolver.Source);
            v140 = (*(v171 + 80) + 16) & ~*(v171 + 80);
            v141 = swift_allocObject();
            sub_2523861EC(v139, v141 + v140, type metadata accessor for HAPControlSolver.Source);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB030);
            v142 = swift_allocObject();
            *(v142 + 16) = xmmword_252694E90;
            *(v142 + 32) = sub_252385FB8;
            *(v142 + 40) = v141;
            sub_25238618C(v122, type metadata accessor for AccessoryControl.ThermostatState);
            sub_252372288(v159, &qword_27F4DB248);
            v101 = v161;
            sub_252372288(v161, &qword_27F4DB120);
            (*(v165 + 8))(v164, v166);
            sub_25238618C(v167, type metadata accessor for MatterControlSolver.Source);
            *v129 = v142;
            v74 = v189;
            type metadata accessor for AccessoryControl.State(0);
            swift_storeEnumTagMultiPayload();
            (*(v175 + 32))(v126, v184, v176);
            type metadata accessor for AccessoryControl.ElementIdentifier();
            swift_storeEnumTagMultiPayload();
            v143 = (v126 + v125[7]);
            v144 = v125[9];
            *(v126 + v144) = 16;
            *(v126 + v125[6]) = 0;
            *v143 = 0;
            v143[1] = 0;
            *(v126 + v125[8]) = 1028;
            *(v126 + v144) = 16;
            *(v126 + v125[10]) = 1;
            sub_252372288(v157, &qword_27F4DB258);
            (v179)(v126, 0, 1, v125);
            sub_2523714D4(v126, v101, &qword_27F4DB120);
            v100 = v186;
            v75 = v183;
          }

          sub_2523714D4(v101, v100, &qword_27F4DB120);
          v69 = v190;
          v61 = v160;
          LOBYTE(v58) = v185;
          goto LABEL_24;
        }

        (*(v80 + 8))(v83, v82);
        sub_25238618C(v167, type metadata accessor for MatterControlSolver.Source);
      }

      LOBYTE(v58) = v185;
    }
  }

  v100 = v186;
  (*(v74 + 56))(v186, 1, 1, v69);
LABEL_24:
  sub_25237153C(v100, v75, &qword_27F4DB120);
  if ((*(v74 + 48))(v75, 1, v69) == 1)
  {
    sub_252372288(v75, &qword_27F4DB120);
    v103 = v175;
    v102 = v176;
    (*(v175 + 16))(v184, v61, v176);
    v104 = v69[5];
    v105 = v61;
    v106 = v182;
    v107 = &v182[v104];
    v108 = &v107[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270) + 48)];
    v109 = v215;
    v110 = v213;
    v111 = v211;
    v112 = v208;
    *v107 = v53;
    *(v107 + 1) = v55;
    *(v107 + 2) = v57;
    v107[24] = v58;
    *(v107 + 7) = *(v216 + 3);
    *(v107 + 25) = v216[0];
    *(v107 + 4) = 1;
    v107[40] = v109;
    *(v107 + 41) = *v214;
    *(v107 + 11) = *&v214[3];
    *(v107 + 6) = v181;
    v107[56] = v110;
    *(v107 + 15) = *&v212[3];
    *(v107 + 57) = *v212;
    *(v107 + 8) = v177;
    v107[72] = v111;
    v107[73] = v156;
    *(v107 + 74) = v209;
    *(v107 + 39) = v210;
    *(v107 + 10) = 0;
    *(v107 + 11) = 0;
    v107[96] = v112;
    v107[97] = 2;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
    v114 = v187;
    sub_25237153C(v187, v108 + *(v113 + 40), &qword_27F4DB258);
    sub_252386124(v174, v108 + *(v113 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v115 = v173;
    sub_252386124(v105, v173, type metadata accessor for HAPControlSolver.Source);
    v116 = (*(v171 + 80) + 16) & ~*(v171 + 80);
    v117 = swift_allocObject();
    sub_2523861EC(v115, v117 + v116, type metadata accessor for HAPControlSolver.Source);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB030);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_252694E90;
    *(v118 + 32) = sub_252385EF0;
    *(v118 + 40) = v117;
    sub_252372288(v186, &qword_27F4DB120);
    (*(v149 + 8))(v148, v150);
    *v108 = v118;
    v74 = v189;
    v69 = v190;
    type metadata accessor for AccessoryControl.State(0);
    swift_storeEnumTagMultiPayload();
    (*(v103 + 32))(v106, v184, v102);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v119 = &v106[v69[7]];
    v120 = v69[9];
    v106[v120] = 16;
    v106[v69[6]] = 0;
    *v119 = 0;
    v119[1] = 0;
    *&v106[v69[8]] = 1028;
    v106[v120] = 16;
    v106[v69[10]] = 1;
    sub_252372288(v114, &qword_27F4DB258);
  }

  else
  {
    sub_252372288(v100, &qword_27F4DB120);
    (*(v149 + 8))(v148, v150);
    *&v201 = v53;
    *(&v201 + 1) = v55;
    *&v202 = v57;
    BYTE8(v202) = v58;
    *(&v202 + 9) = v216[0];
    HIDWORD(v202) = *(v216 + 3);
    *&v203 = 1;
    BYTE8(v203) = v215;
    *(&v203 + 9) = *v214;
    HIDWORD(v203) = *&v214[3];
    *&v204 = v181;
    BYTE8(v204) = v213;
    HIDWORD(v204) = *&v212[3];
    *(&v204 + 9) = *v212;
    *&v205 = v177;
    BYTE8(v205) = v211;
    BYTE9(v205) = v156;
    *(&v205 + 10) = v209;
    HIWORD(v205) = v210;
    v206 = 0uLL;
    LOBYTE(v207) = v208;
    HIBYTE(v207) = 2;
    sub_252385F08(&v201);
    sub_252372288(v187, &qword_27F4DB258);
    v106 = v182;
    sub_2523861EC(v75, v182, type metadata accessor for AccessoryControl);
  }

  v121 = v188;
  sub_2523861EC(v106, v188, type metadata accessor for AccessoryControl);
  return (*(v74 + 56))(v121, 0, 1, v69);
}

uint64_t sub_252382E30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB280);
  MEMORY[0x28223BE20](v3 - 8);
  v102 = v87 - v4;
  v104 = sub_25268F4D0();
  v5 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v7 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v98 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v87 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v87 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v87 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v99 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v101 = v87 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v103 = v87 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v87 - v26;
  v28 = sub_252690030();
  v107 = *(v28 - 8);
  v108 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v97 = v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v100 = v87 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v87 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = v87 - v36;
  type metadata accessor for HAPControlSolver.Source();
  v106 = a1;
  v38 = sub_25268FDD0();
  if ((v39 & 1) != 0 || v38 != 2)
  {
    v44 = sub_25268FDD0();
    if ((v45 & 1) == 0 && v44 == 1)
    {
      v46 = v104;
      (*(v5 + 104))(v7, *MEMORY[0x277D16180], v104);
      sub_25268FD80();
      (*(v5 + 8))(v7, v46);
      v47 = sub_25268F9E0();
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v16, 1, v47) == 1)
      {
        sub_252372288(v16, &qword_27F4DB208);
        v49 = sub_252690050();
        v27 = v103;
        (*(*(v49 - 8) + 56))(v103, 1, 1, v49);
        goto LABEL_9;
      }

      v27 = v103;
      sub_25268F9D0();
      (*(v48 + 8))(v16, v47);
      v63 = sub_252690050();
      v64 = *(v63 - 8);
      v71 = (*(v64 + 48))(v27, 1, v63);
      v50 = v105;
      v52 = v107;
      v51 = v108;
      if (v71 == 1)
      {
        goto LABEL_19;
      }

      if ((*(v64 + 88))(v27, v63) == *MEMORY[0x277D16CD0])
      {
        (*(v64 + 96))(v27, v63);
        v66 = *(v52 + 32);
        v66(v35, v27, v51);
        v67 = v50;
        v68 = v35;
        goto LABEL_28;
      }

LABEL_30:
      (*(v64 + 8))(v27, v63);
      goto LABEL_21;
    }

    v53 = sub_25268FDD0();
    if ((v54 & 1) != 0 || v53)
    {
      v69 = sub_252690040();
      (*(*(v69 - 8) + 56))(v102, 1, 1, v69);
      v50 = v105;
      sub_25268FFE0();
      v70 = 0;
LABEL_25:
      v52 = v107;
      v51 = v108;
      return (*(v52 + 56))(v50, v70, 1, v51);
    }

    v55 = *MEMORY[0x277D16170];
    v56 = v104;
    v103 = *(v5 + 104);
    (v103)(v7, v55, v104);
    sub_25268FD80();
    v57 = *(v5 + 8);
    v57(v7, v56);
    v58 = sub_25268F9E0();
    v59 = *(v58 - 8);
    v60 = *(v59 + 48);
    if (v60(v13, 1, v58) == 1)
    {
      sub_252372288(v13, &qword_27F4DB208);
      v61 = sub_252690050();
      v62 = v101;
      (*(*(v61 - 8) + 56))(v101, 1, 1, v61);
    }

    else
    {
      v94 = v60;
      v95 = v57;
      v73 = v101;
      sub_25268F9D0();
      v62 = v73;
      v93 = *(v59 + 8);
      v93(v13, v58);
      v74 = sub_252690050();
      v96 = *(v74 - 8);
      v92 = *(v96 + 48);
      if (v92(v62, 1, v74) != 1)
      {
        v76 = *(v96 + 88);
        v90 = v96 + 88;
        v89 = v76;
        v77 = v76(v62, v74);
        if (v77 == *MEMORY[0x277D16CD0])
        {
          v88 = v77;
          v78 = *(v96 + 96);
          v91 = v74;
          v87[1] = v96 + 96;
          v87[0] = v78;
          v78(v62, v74);
          v101 = *(v107 + 32);
          (v101)(v100, v62, v108);
          (v103)(v7, *MEMORY[0x277D16180], v104);
          v79 = v98;
          sub_25268FD80();
          v95(v7, v104);
          if (v94(v79, 1, v58) == 1)
          {
            v52 = v107;
            v51 = v108;
            (*(v107 + 8))(v100, v108);
            sub_252372288(v79, &qword_27F4DB208);
            v80 = v99;
            (*(v96 + 56))(v99, 1, 1, v91);
            v50 = v105;
          }

          else
          {
            v81 = v96;
            v80 = v99;
            sub_25268F9D0();
            v93(v79, v58);
            v82 = v92(v80, 1, v91);
            v50 = v105;
            if (v82 != 1)
            {
              v83 = v89(v80, v91);
              v52 = v107;
              v51 = v108;
              v84 = v100;
              if (v83 == v88)
              {
                (v87[0])(v80, v91);
                v85 = v97;
                (v101)(v97, v80, v51);
                sub_25268FFF0();
                sub_25268FFF0();
                sub_252690000();
                sub_252690000();
                sub_252690020();
                sub_252690020();
                sub_252690010();
                sub_25268FFE0();
                v86 = *(v52 + 8);
                v86(v85, v51);
                v86(v84, v51);
                v70 = 0;
                return (*(v52 + 56))(v50, v70, 1, v51);
              }

              (*(v107 + 8))(v100, v108);
              (*(v81 + 8))(v80, v91);
              goto LABEL_21;
            }

            v52 = v107;
            v51 = v108;
            (*(v107 + 8))(v100, v108);
          }

          v72 = v80;
          goto LABEL_20;
        }

        (*(v96 + 8))(v62, v74);
        goto LABEL_24;
      }
    }

    sub_252372288(v62, &qword_27F4DB230);
LABEL_24:
    v70 = 1;
    v50 = v105;
    goto LABEL_25;
  }

  v40 = v104;
  (*(v5 + 104))(v7, *MEMORY[0x277D16170], v104);
  sub_25268FD80();
  (*(v5 + 8))(v7, v40);
  v41 = sub_25268F9E0();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v18, 1, v41) != 1)
  {
    sub_25268F9D0();
    (*(v42 + 8))(v18, v41);
    v63 = sub_252690050();
    v64 = *(v63 - 8);
    v65 = (*(v64 + 48))(v27, 1, v63);
    v50 = v105;
    v52 = v107;
    v51 = v108;
    if (v65 == 1)
    {
      goto LABEL_19;
    }

    if ((*(v64 + 88))(v27, v63) == *MEMORY[0x277D16CD0])
    {
      (*(v64 + 96))(v27, v63);
      v66 = *(v52 + 32);
      v66(v37, v27, v51);
      v67 = v50;
      v68 = v37;
LABEL_28:
      v66(v67, v68, v51);
      v70 = 0;
      return (*(v52 + 56))(v50, v70, 1, v51);
    }

    goto LABEL_30;
  }

  sub_252372288(v18, &qword_27F4DB208);
  v43 = sub_252690050();
  (*(*(v43 - 8) + 56))(v27, 1, 1, v43);
LABEL_9:
  v50 = v105;
  v52 = v107;
  v51 = v108;
LABEL_19:
  v72 = v27;
LABEL_20:
  sub_252372288(v72, &qword_27F4DB230);
LABEL_21:
  v70 = 1;
  return (*(v52 + 56))(v50, v70, 1, v51);
}

uint64_t sub_252383C40@<X0>(unsigned __int8 *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 == 4)
  {
    goto LABEL_2;
  }

  type metadata accessor for HAPControlSolver.Source();
  v9 = sub_25268FD50();
  v11 = v10;
  v12 = COERCE_DOUBLE(sub_25268FD30());
  v14 = v13;
  v15 = COERCE_DOUBLE(sub_25268FD10());
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if ((v14 & 1) == 0)
      {
        *(a2 + 33) = 514;
        v17 = type metadata accessor for AccessoryControl.ThermostatState(0);
        v21 = v17[8];
        v22 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
        (*(*(v22 - 8) + 56))(a2 + v21, 1, 1, v22);
        v23 = a2 + v17[9];
        *v23 = xmmword_252695260;
        *(v23 + 16) = 0;
        *(a2 + v17[11]) = 3;
        *a2 = v9;
        *(a2 + 8) = v11 & 1;
        *(a2 + v17[10]) = 2;
LABEL_11:
        *(a2 + 16) = v12;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        goto LABEL_18;
      }
    }

    else if ((v14 & 1) == 0 && (v16 & 1) == 0)
    {
      if (v15 >= v12)
      {
        v27 = v12;
      }

      else
      {
        v27 = v15;
      }

      *(a2 + 33) = 514;
      v28 = v15;
      v17 = type metadata accessor for AccessoryControl.ThermostatState(0);
      v29 = v17[8];
      v30 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
      (*(*(v30 - 8) + 56))(a2 + v29, 1, 1, v30);
      v31 = a2 + v17[9];
      *v31 = xmmword_252695260;
      *(v31 + 16) = 0;
      *(a2 + v17[11]) = 3;
      *a2 = v9;
      *(a2 + 8) = v11 & 1;
      *(a2 + v17[10]) = 3;
      *(a2 + 16) = v27;
      *(a2 + 24) = v28;
      *(a2 + 32) = 1;
      goto LABEL_18;
    }

LABEL_2:
    v4 = type metadata accessor for AccessoryControl.ThermostatState(0);
    v5 = *(*(v4 - 8) + 56);
    v6 = v4;
    v7 = a2;
    v8 = 1;
    goto LABEL_19;
  }

  if (v3)
  {
    if ((v16 & 1) == 0)
    {
      *(a2 + 33) = 514;
      v12 = v15;
      v17 = type metadata accessor for AccessoryControl.ThermostatState(0);
      v24 = v17[8];
      v25 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
      (*(*(v25 - 8) + 56))(a2 + v24, 1, 1, v25);
      v26 = a2 + v17[9];
      *v26 = xmmword_252695260;
      *(v26 + 16) = 0;
      *(a2 + v17[11]) = 3;
      *a2 = v9;
      *(a2 + 8) = v11 & 1;
      *(a2 + v17[10]) = 1;
      goto LABEL_11;
    }

    goto LABEL_2;
  }

  *(a2 + 33) = 514;
  v17 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v18 = v17[8];
  v19 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  (*(*(v19 - 8) + 56))(a2 + v18, 1, 1, v19);
  v20 = a2 + v17[9];
  *v20 = xmmword_252695260;
  *(v20 + 16) = 0;
  *(a2 + v17[11]) = 3;
  *a2 = v9;
  *(a2 + 8) = v11 & 1;
  *(a2 + v17[10]) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
LABEL_18:
  v5 = *(*(v17 - 1) + 56);
  v7 = a2;
  v8 = 0;
  v6 = v17;
LABEL_19:

  return v5(v7, v8, 1, v6);
}

uint64_t sub_252383FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v31 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v11, &qword_27F4DB258);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_252372288(v11, &qword_27F4DB258);
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v17 = __swift_project_value_buffer(v16, qword_27F4DB8A0);
    return sub_252386124(v17, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    sub_2523861EC(v11, v15, type metadata accessor for AccessoryControl.ThermostatState);
    v19 = sub_2523852D0(v15);
    v20 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v21 = *(v20 + 24);
    v22 = sub_25268F140();
    (*(*(v22 - 8) + 56))(v8 + v21, 1, 1, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v23 = sub_25268DA10();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_252694E90;
    (*(v24 + 16))(v26 + v25, a2, v23);
    v27 = sub_25240C1FC(v26);
    swift_setDeallocating();
    (*(v24 + 8))(v26 + v25, v23);
    swift_deallocClassInstance();
    v28 = sub_2523F75C4(v19);

    *v8 = v28;
    v8[1] = 0;
    *(v8 + *(v20 + 28)) = v27;
    v29 = *(*(v20 - 8) + 56);
    v29(v8, 0, 1, v20);
    sub_25238618C(v15, type metadata accessor for AccessoryControl.ThermostatState);
    v29(a3, 1, 1, v20);
    v30 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v30) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210);

    *(a3 + v30) = 0;
  }

  return result;
}

uint64_t sub_252384448@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v96 = a5;
  v93 = a4;
  v105 = a3;
  v88 = a2;
  v102 = a6;
  v7 = type metadata accessor for HAPControlSolver.Source();
  v94 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v95 = v8;
  v98 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25268DA10();
  v99 = *(v9 - 8);
  v100 = v9;
  MEMORY[0x28223BE20](v9);
  v101 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v92);
  v104 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v90 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v89 = &v84 - v16;
  MEMORY[0x28223BE20](v15);
  v103 = &v84 - v17;
  v18 = sub_25268F4D0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v84 - v23;
  v25 = sub_25268F9E0();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v21, *MEMORY[0x277D16288], v18);
  v91 = v7;
  sub_25268FD80();
  v29 = v21;
  v30 = v26;
  (*(v19 + 8))(v29, v18);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_252372288(v24, &qword_27F4DB208);
    v31 = type metadata accessor for AccessoryControl(0);
    return (*(*(v31 - 8) + 56))(v102, 1, 1, v31);
  }

  (*(v26 + 32))(v28, v24, v25);
  v97 = a1;
  v33 = sub_25268FDE0();
  v34 = v102;
  if ((v35 & 1) != 0 || v33 < 2)
  {
    v36 = sub_2526922D0();
  }

  else if (v33 == 2)
  {
    v36 = sub_252692340();
  }

  else
  {
    if (v33 != 3)
    {
      v83 = v33;
      type metadata accessor for HMCharacteristicValueCurrentHeaterCoolerState(0);
      v106 = v83;
      result = sub_2526933C0();
      __break(1u);
      return result;
    }

    v36 = sub_2526922B0();
  }

  v37 = v36;
  v38 = v88[*(type metadata accessor for AccessoryControlSolver.Context() + 20)] - 1 > 1;
  v86 = v30;
  v87 = v25;
  v85 = v28;
  v84 = v37;
  if (v38)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
    v40 = v89;
    (*(*(v46 - 8) + 56))(v89, 1, 1, v46);
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
    v40 = v89;
    v41 = &v89[*(v39 + 28)];
    v42 = type metadata accessor for IconDescriptor();
    v43 = *(v42 + 20);
    v44 = *MEMORY[0x277D16578];
    v45 = sub_25268F910();
    (*(*(v45 - 8) + 104))(&v41[v43], v44, v45);
    *v41 = 0xD000000000000018;
    *(v41 + 1) = 0x80000002526ADCD0;
    v41[*(v42 + 24)] = 0;
    sub_252386124(v41, v40, type metadata accessor for IconDescriptor);
    (*(*(v39 - 8) + 56))(v40, 0, 1, v39);
  }

  v47 = v105;
  sub_2523714D4(v40, v103, &qword_27F4DADB8);
  v48 = *(v47 + 2);
  v49 = MEMORY[0x277D84F90];
  if (v48)
  {
    v106 = MEMORY[0x277D84F90];
    sub_25236FF90(0, v48, 0);
    v49 = v106;
    v50 = (v47 + 32);
    v51 = "fan.oscillation.fill";
    v105 = "HFServiceThermostatModeOff";
    do
    {
      v53 = *v50++;
      v52 = v53;
      if (v53 > 1)
      {
        if (v52 == 2)
        {
          v54 = sub_252692C40();
          v56 = 1;
        }

        else
        {
          v54 = sub_252692C40();
          v56 = 0;
        }
      }

      else if (v52)
      {
        v54 = sub_252692C40();
        v56 = 2;
      }

      else
      {
        v54 = sub_252692C40();
        v56 = 100;
      }

      v106 = v49;
      v58 = *(v49 + 16);
      v57 = *(v49 + 24);
      if (v58 >= v57 >> 1)
      {
        v88 = v51;
        v89 = v54;
        v60 = v55;
        sub_25236FF90((v57 > 1), v58 + 1, 1);
        v51 = v88;
        v54 = v89;
        v55 = v60;
        v49 = v106;
      }

      *(v49 + 16) = v58 + 1;
      v59 = (v49 + 32 * v58);
      v59[4] = v56;
      v59[5] = v54;
      v59[6] = v55;
      v59[7] = 0;
      --v48;
    }

    while (v48);
    v34 = v102;
  }

  v61 = *(v97 + *(v91 + 40));
  v62 = sub_252692330();
  v63 = v90;
  sub_25237153C(v103, v90, &qword_27F4DADB8);
  v64 = v92;
  type metadata accessor for AccessoryControl.StatusProvider();
  v65 = v104;
  swift_storeEnumTagMultiPayload();
  v66 = v64[6];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  (*(*(v67 - 8) + 56))(v65 + v66, 1, 1, v67);
  v68 = v65 + v64[11];
  *v65 = v49;
  *(v65 + 8) = v61;
  *(v65 + v64[8]) = v84;
  *(v65 + v64[9]) = v62;
  sub_252377048(v63, v65 + v66, &qword_27F4DADB8);
  v69 = 0;
  *v68 = 100;
  *(v68 + 8) = 0;
  *(v65 + v64[7]) = 0;
  if (v93 != 4)
  {
    if (v93 > 1u)
    {
      v69 = v93 == 2;
    }

    else if (v93)
    {
      v69 = 2;
    }

    else
    {
      v69 = 100;
    }
  }

  LODWORD(v105) = v93 == 4;
  v70 = v85;
  v71 = v69;
  sub_25268F9B0();
  v72 = type metadata accessor for AccessoryControl(0);
  v73 = v34 + v72[5];
  v74 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48));
  sub_252386124(v104, v73, type metadata accessor for AccessoryControl.PickerViewConfig);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  sub_252386124(v96, v74 + *(v75 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  v76 = v98;
  sub_252386124(v97, v98, type metadata accessor for HAPControlSolver.Source);
  v77 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v78 = swift_allocObject();
  sub_2523861EC(v76, v78 + v77, type metadata accessor for HAPControlSolver.Source);
  v79 = v74 + *(v75 + 40);
  *v79 = v71;
  v79[8] = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB020);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_252694E90;
  *(v80 + 32) = sub_25238577C;
  *(v80 + 40) = v78;
  sub_252372288(v103, &qword_27F4DADB8);
  (*(v86 + 8))(v70, v87);
  *v74 = v80;
  type metadata accessor for AccessoryControl.State(0);
  swift_storeEnumTagMultiPayload();
  (*(v99 + 32))(v34, v101, v100);
  type metadata accessor for AccessoryControl.ElementIdentifier();
  swift_storeEnumTagMultiPayload();
  v81 = (v34 + v72[7]);
  v82 = v72[9];
  *(v34 + v82) = 16;
  *(v34 + v72[6]) = 0;
  *v81 = 0;
  v81[1] = 0;
  *(v34 + v72[8]) = 1028;
  *(v34 + v82) = 15;
  *(v34 + v72[10]) = 1;
  sub_25238618C(v104, type metadata accessor for AccessoryControl.PickerViewConfig);
  return (*(*(v72 - 1) + 56))(v34, 0, 1, v72);
}

uint64_t sub_252384FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v24 - v7);
  if (*(a1 + 8) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v10 = __swift_project_value_buffer(v9, qword_27F4DB8A0);
    return sub_252386124(v10, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v12 = sub_252385C78(*a1);
    v13 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v14 = *(v13 + 24);
    v15 = sub_25268F140();
    (*(*(v15 - 8) + 56))(v8 + v14, 1, 1, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v16 = sub_25268DA10();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_252694E90;
    (*(v17 + 16))(v19 + v18, a2, v16);
    v20 = sub_25240C1FC(v19);
    swift_setDeallocating();
    (*(v17 + 8))(v19 + v18, v16);
    swift_deallocClassInstance();
    v21 = sub_2523F75C4(v12);

    *v8 = v21;
    v8[1] = 0;
    *(v8 + *(v13 + 28)) = v20;
    v22 = *(*(v13 - 8) + 56);
    v22(v8, 0, 1, v13);
    v22(a3, 1, 1, v13);
    v23 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v23) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210);

    *(a3 + v23) = 0;
  }

  return result;
}

unint64_t sub_2523852D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!*(a1 + 32))
  {
    v15 = *(a1 + *(type metadata accessor for AccessoryControl.ThermostatState(0) + 40));
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_11;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
      v22 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228) - 8);
      v23 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_252694E90;
      v19 = v18 + v23;
      v20 = (v19 + v22[14]);
      v21 = MEMORY[0x277D16180];
    }

    else
    {
      if (!v15)
      {
        goto LABEL_11;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
      v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228) - 8);
      v17 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_252694E90;
      v19 = v18 + v17;
      v20 = (v19 + v16[14]);
      v21 = MEMORY[0x277D16170];
    }

    v24 = *v21;
    v25 = sub_25268F4D0();
    (*(*(v25 - 8) + 104))(v19, v24, v25);
    v20[3] = MEMORY[0x277D839F8];
    *v20 = v1;
    v14 = sub_25256E63C(v18);
    swift_setDeallocating();
    sub_252372288(v19, &qword_27F4DB228);
    goto LABEL_10;
  }

  if (*(a1 + 32) == 1)
  {
    v2 = *(a1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228);
    v4 = *(*(v3 - 8) + 72);
    v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_252694EA0;
    v7 = v6 + v5;
    v8 = (v7 + *(v3 + 48));
    v9 = *MEMORY[0x277D16180];
    v10 = sub_25268F4D0();
    v11 = *(*(v10 - 8) + 104);
    (v11)(v7, v9, v10);
    v12 = MEMORY[0x277D839F8];
    v8[3] = MEMORY[0x277D839F8];
    *v8 = v1;
    v13 = (v7 + v4 + *(v3 + 48));
    v11();
    v13[3] = v12;
    *v13 = v2;
    v14 = sub_25256E63C(v6);
    swift_setDeallocating();
    swift_arrayDestroy();
LABEL_10:
    swift_deallocClassInstance();
    return v14;
  }

LABEL_11:
  v27 = MEMORY[0x277D84F90];

  return sub_25256E63C(v27);
}

uint64_t sub_2523856F0(_BYTE *a1)
{
  if (*a1 > 1u)
  {
    v2 = *a1 == 2;
  }

  else
  {
    if (!*a1)
    {
      return 1;
    }

    v2 = 2;
  }

  v3 = sub_25268FF90();
  v4 = *(v3 + 16);
  v5 = 32;
  do
  {
    v6 = v4-- != 0;
    v1 = v6;
    if (!v6)
    {
      break;
    }

    v7 = *(v3 + v5);
    v5 += 8;
  }

  while (v7 != v2);

  return v1;
}

uint64_t sub_25238577C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252384FD0(a1, v6, a2);
}

uint64_t sub_2523857FC()
{
  v0 = sub_25268F4D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-v8];
  v10 = sub_25268FFD0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v1 + 104))(v3, *MEMORY[0x277D16288], v0);
  type metadata accessor for HAPControlSolver.Source();
  sub_25268FD80();
  (*(v1 + 8))(v3, v0);
  v14 = sub_25268F9E0();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v6, 1, v14) == 1)
  {
    sub_252372288(v6, &qword_27F4DB208);
    v16 = sub_252690050();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
LABEL_4:
    sub_252372288(v9, &qword_27F4DB230);
    return MEMORY[0x277D84F90];
  }

  sub_25268F9D0();
  (*(v15 + 8))(v6, v14);
  v17 = sub_252690050();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    goto LABEL_4;
  }

  if ((*(v18 + 88))(v9, v17) != *MEMORY[0x277D16CC8])
  {
    (*(v18 + 8))(v9, v17);
    return MEMORY[0x277D84F90];
  }

  (*(v18 + 96))(v9, v17);
  v20 = (*(v11 + 32))(v13, v9, v10);
  MEMORY[0x28223BE20](v20);
  *&v22[-16] = v13;
  v21 = sub_2523802CC(sub_252386064, &v22[-32], &unk_286483890);
  (*(v11 + 8))(v13, v10);
  return v21;
}

unint64_t sub_252385C78(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  if (a1 == 100)
  {
    *(v5 + 16) = xmmword_252694E90;
    v6 = v5 + v4;
    v7 = v6 + *(v2 + 48);
    v8 = *MEMORY[0x277D16330];
    v9 = sub_25268F4D0();
    (*(*(v9 - 8) + 104))(v6, v8, v9);
    *(v7 + 24) = MEMORY[0x277D839B0];
    *v7 = 0;
    v10 = sub_25256E63C(v5);
    swift_setDeallocating();
    sub_252372288(v6, &qword_27F4DB228);
  }

  else
  {
    *(v5 + 16) = xmmword_252694EA0;
    v11 = v5 + v4;
    v12 = (v11 + *(v2 + 48));
    v13 = *MEMORY[0x277D16288];
    v14 = sub_25268F4D0();
    v15 = *(*(v14 - 8) + 104);
    (v15)(v11, v13, v14);
    v12[3] = MEMORY[0x277D83B88];
    *v12 = a1;
    v16 = v11 + v3 + *(v2 + 48);
    v15();
    *(v16 + 24) = MEMORY[0x277D839B0];
    *v16 = 1;
    v10 = sub_25256E63C(v5);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
  return v10;
}

uint64_t sub_252385FD0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2523860DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252386124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25238618C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2523861EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252386254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v31 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252386634(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2523866A4(v11);
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v17 = __swift_project_value_buffer(v16, qword_27F4DB8A0);
    return sub_25238670C(v17, a3);
  }

  else
  {
    sub_252386770(v11, v15);
    v19 = sub_2523852D0(v15);
    v20 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v21 = *(v20 + 24);
    v22 = sub_25268F140();
    (*(*(v22 - 8) + 56))(v8 + v21, 1, 1, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v23 = sub_25268DA10();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_252694E90;
    (*(v24 + 16))(v26 + v25, a2, v23);
    v27 = sub_25240C1FC(v26);
    swift_setDeallocating();
    (*(v24 + 8))(v26 + v25, v23);
    swift_deallocClassInstance();
    v28 = sub_2523F75C4(v19);

    *v8 = v28;
    v8[1] = 0;
    *(v8 + *(v20 + 28)) = v27;
    v29 = *(*(v20 - 8) + 56);
    v29(v8, 0, 1, v20);
    sub_2523867D4(v15);
    v29(a3, 1, 1, v20);
    v30 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v30) = 0;
    sub_2523795D4(v8, a3);

    *(a3 + v30) = 0;
  }

  return result;
}

uint64_t sub_252386634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2523866A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25238670C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252386770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ThermostatState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2523867D4(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControl.ThermostatState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252386834(void *a1, const char *a2)
{
  v4 = type metadata accessor for AccessoryControlModule(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB288);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2[*(type metadata accessor for AccessoryControlSolver.Context() + 20)])
  {
    v15 = sub_2523806B4(a1, a2);
    v16 = sub_25268DA10();
    (*(*(v16 - 8) + 16))(v7, a1, v16);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v17 = &v7[v4[5]];
    v18 = &v7[v4[7]];
    *v18 = 0;
    *(v18 + 1) = 0;
    *&v7[v4[6]] = v15;
    type metadata accessor for AccessoryControlModule.Layout(0);
    swift_storeEnumTagMultiPayload();
    *v17 = 0;
    *(v17 + 1) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD60);
    v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_252694E90;
    sub_2523871E4(v7, v20 + v19, type metadata accessor for AccessoryControlModule);
  }

  else
  {
    sub_252386CC4(a1, a2, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_252372288(v10, &qword_27F4DB288);
      return MEMORY[0x277D84F90];
    }

    else
    {
      sub_2523871E4(v10, v14, type metadata accessor for AccessoryControlModule.Layout.Thermostat);
      v21 = sub_25268DA10();
      (*(*(v21 - 8) + 16))(v7, a1, v21);
      type metadata accessor for AccessoryControl.ElementIdentifier();
      swift_storeEnumTagMultiPayload();
      v22 = (a1 + *(type metadata accessor for HAPControlSolver.Source() + 28));
      v24 = *v22;
      v23 = v22[1];
      v25 = &v7[v4[5]];
      v26 = &v7[v4[7]];
      *v26 = 0;
      *(v26 + 1) = 0;
      v27 = v4[6];
      *&v7[v27] = MEMORY[0x277D84F90];
      type metadata accessor for AccessoryControlModule.Layout(0);
      swift_storeEnumTagMultiPayload();
      *v25 = v24;
      *(v25 + 1) = v23;

      sub_2523872B4(&v7[v27], type metadata accessor for AccessoryControlModule.Layout);
      sub_25238724C(v14, &v7[v27], type metadata accessor for AccessoryControlModule.Layout.Thermostat);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD60);
      v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_252694E90;
      sub_2523871E4(v7, v20 + v28, type metadata accessor for AccessoryControlModule);
      sub_2523872B4(v14, type metadata accessor for AccessoryControlModule.Layout.Thermostat);
    }
  }

  return v20;
}

uint64_t sub_252386CC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  v37 = type metadata accessor for AccessoryControl(0);
  v8 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  sub_25238724C(a2, v12, type metadata accessor for AccessoryControl.ValueDestination);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB238);
  v13 = sub_25268F4D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_252694EA0;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, *MEMORY[0x277D16330], v13);
  v19(v18 + v15, *MEMORY[0x277D16288], v13);
  v20 = sub_25240BD30(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  LOBYTE(v13) = HAPControlSolver.Source.has(characteristicKinds:)(v20);

  if (v13)
  {
    v21 = v39;
    type metadata accessor for HAPControlSolver.Source();
    v22 = sub_25268FE90();
    v23 = sub_2523857FC();
    v24 = sub_25268FDD0();
    v25 = 4;
    if (v26)
    {
      v27 = v38;
    }

    else
    {
      v27 = v38;
      if (v22 != 2)
      {
        if (v22)
        {
          if (v24 <= 2)
          {
            v25 = 3 - v24;
          }
        }

        else
        {
          v25 = 0;
        }
      }
    }

    v41 = v25;
    sub_252381784(a1, v12, v23, &v41, v7);
    if ((*(v8 + 48))(v7, 1, v37) != 1)
    {
      v32 = v36;
      sub_2523871E4(v7, v36, type metadata accessor for AccessoryControl);
      sub_25238724C(v32, v21, type metadata accessor for AccessoryControl);
      v33 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
      sub_252384448(a1, v27, v23, v25, v12, v21 + *(v33 + 20));

      v40 = v25;
      sub_2523A74C0(a1, &v40, v12, (v21 + *(v33 + 24)));
      sub_2523872B4(v32, type metadata accessor for AccessoryControl);
      sub_2523872B4(v12, type metadata accessor for AccessoryControl.ValueDestination);
      v29 = *(*(v33 - 8) + 56);
      v30 = v21;
      v31 = 0;
      v28 = v33;
      return v29(v30, v31, 1, v28);
    }

    sub_2523872B4(v12, type metadata accessor for AccessoryControl.ValueDestination);

    sub_252372288(v7, &qword_27F4DB120);
    v28 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
    v29 = *(*(v28 - 8) + 56);
    v30 = v21;
  }

  else
  {
    sub_2523872B4(v12, type metadata accessor for AccessoryControl.ValueDestination);
    v28 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
    v29 = *(*(v28 - 8) + 56);
    v30 = v39;
  }

  v31 = 1;
  return v29(v30, v31, 1, v28);
}

uint64_t sub_2523871E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25238724C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523872B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252387324(uint64_t a1, uint64_t a2)
{
  v176 = type metadata accessor for AccessoryControlGroup(0);
  v177 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v178 = v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HAPControlSolver.Source();
  v165 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v166 = v6;
  v167 = v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_25268DA10();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v169 = v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for AccessoryControl(0);
  v170 = *(v171 - 8);
  v8 = MEMORY[0x28223BE20](v171);
  v162 = v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v175 = v155 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v11 - 8);
  v163 = v155 - v12;
  v164 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v164);
  v174 = v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v168 = v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v181 = v155 - v17;
  v180 = type metadata accessor for AccessoryControl.StatusProvider();
  v18 = MEMORY[0x28223BE20](v180);
  v179 = v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v182 = (v155 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v21 - 8);
  v184 = v155 - v22;
  v23 = sub_25268F4D0();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = v155 - v28;
  v30 = sub_25268F9E0();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v186 = v155 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v33 - 8);
  v187 = v155 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25238CB54(a2, v187, type metadata accessor for AccessoryControl.ValueDestination);
  v35 = *(v24 + 104);
  v35(v26, *MEMORY[0x277D162C8], v23);
  v183 = v5;
  v36 = *(v5 + 76);
  v185 = a1;
  sub_25268FD80();
  v37 = v31;
  v38 = *(v24 + 8);
  *&v188 = v23;
  v38(v26, v23);
  if ((*(v37 + 48))(v29, 1, v30) == 1)
  {
    sub_252372288(v29, &qword_27F4DB208);
LABEL_7:
    sub_25238CAF4(v187, type metadata accessor for AccessoryControl.ValueDestination);
    return MEMORY[0x277D84F90];
  }

  (*(v37 + 32))(v186, v29, v30);
  v39 = v188;
  v35(v26, *MEMORY[0x277D16330], v188);
  v40 = v185;
  v41 = sub_25268FE70();
  v38(v26, v39);
  if (v41 == 2)
  {
    (*(v37 + 8))(v186, v30);
    goto LABEL_7;
  }

  v161 = v37;
  v42 = sub_25268FE40();
  if (v43)
  {
    (*(v161 + 8))(v186, v30);
    goto LABEL_7;
  }

  v45 = v42;
  v158 = v30;
  sub_252388800(v40, v184);
  v160 = v41;
  v46 = v36;
  v47 = sub_25268FE40();
  v49 = v48;
  v50 = sub_25268FD60();
  v52 = v51;
  v159 = v46;
  v53 = sub_25268FDA0();
  v54 = v179;
  *v179 = v41 & 1;
  v55 = v54;
  *(v54 + 1) = v47;
  v54[16] = v49 & 1;
  *(v54 + 3) = v50;
  v54[32] = v52 & 1;
  *(v54 + 5) = v53;
  v54[48] = v56 & 1;
  swift_storeEnumTagMultiPayload();
  v57 = (v40 + *(v183 + 44));
  v58 = v57[1];
  if (v58)
  {
    v59 = *v57;

    sub_25238CAF4(v55, type metadata accessor for AccessoryControl.StatusProvider);
    v60 = v182;
    *v182 = v59;
    v60[1] = v58;
    v61 = v60;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v61 = v182;
    sub_25238CC34(v55, v182, type metadata accessor for AccessoryControl.StatusProvider);
  }

  v179 = v45;
  sub_252388D98(v40, v184, v160 & 1, v61, v187, v45, v181);
  v62 = sub_252692C40();
  v64 = v63;
  v65 = sub_252692C40();
  v67 = v66;
  v68 = sub_252692C40();
  v70 = v69;
  v157 = sub_252692C40();
  v156 = v71;
  v72 = sub_25238BA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEA0);
  inited = swift_initStackObject();
  v74 = 0;
  *(inited + 16) = xmmword_2526952C0;
  *(inited + 32) = 0;
  v75 = inited + 32;
  *(inited + 40) = v62;
  *(inited + 48) = v64;
  *(inited + 56) = xmmword_2526952D0;
  *(inited + 72) = v65;
  *(inited + 80) = v67;
  *(inited + 88) = xmmword_2526952E0;
  *(inited + 104) = v68;
  *(inited + 112) = v70;
  v76 = v72 + 56;
  v155[1] = inited;
  *(inited + 120) = 0;
  v77 = MEMORY[0x277D84F90];
  do
  {
    if (v74 <= 3)
    {
      v78 = 3;
    }

    else
    {
      v78 = v74;
    }

    while (1)
    {
      if (v74 == v78)
      {
        __break(1u);
        goto LABEL_43;
      }

      v79 = v74++;
      if (*(v72 + 16))
      {
        v80 = v75 + 32 * v79;
        v188 = *v80;
        v82 = *(v80 + 16);
        v81 = *(v80 + 24);
        sub_252693460();
        v83 = v188;
        MEMORY[0x2530A4FE0](v188);
        v84 = sub_2526934C0();
        v85 = -1 << *(v72 + 32);
        v86 = v84 & ~v85;
        if ((*(v76 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86))
        {
          break;
        }
      }

LABEL_15:
      if (v74 == 3)
      {
        goto LABEL_28;
      }
    }

    v87 = ~v85;
    while (*(*(v72 + 48) + 8 * v86) != v83)
    {
      v86 = (v86 + 1) & v87;
      if (((*(v76 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v189 = v77;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25236FF90(0, *(v77 + 2) + 1, 1);
      v77 = v189;
    }

    v90 = *(v77 + 2);
    v89 = *(v77 + 3);
    if (v90 >= v89 >> 1)
    {
      sub_25236FF90((v89 > 1), v90 + 1, 1);
      v77 = v189;
    }

    *(v77 + 2) = v90 + 1;
    v91 = &v77[32 * v90];
    *(v91 + 2) = v188;
    *(v91 + 6) = v82;
    *(v91 + 7) = v81;
  }

  while (v74 != 3);
LABEL_28:

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_29;
  }

LABEL_43:
  v77 = sub_252368918(0, *(v77 + 2) + 1, 1, v77);
LABEL_29:
  v92 = v174;
  v93 = v164;
  v94 = v163;
  v95 = v157;
  v96 = v156;
  v98 = *(v77 + 2);
  v97 = *(v77 + 3);
  if (v98 >= v97 >> 1)
  {
    v77 = sub_252368918((v97 > 1), v98 + 1, 1, v77);
  }

  *(v77 + 2) = v98 + 1;
  v99 = &v77[32 * v98];
  *(v99 + 4) = 100;
  *(v99 + 5) = v95;
  *(v99 + 6) = v96;
  *(v99 + 7) = 0;
  v100 = sub_25268FE50();
  if ((v101 & 1) != 0 || v100 != 2) && ((v102 = sub_25268FE50(), (v103) || v102 != 3))
  {
    v104 = v92;
    v105 = sub_2526922D0();
  }

  else
  {
    v104 = v92;
    v105 = sub_2526922C0();
  }

  v106 = v105;
  v107 = sub_252692330();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v109 = *(*(v108 - 8) + 56);
  v109(v94, 1, 1, v108);
  swift_storeEnumTagMultiPayload();
  v110 = v93[6];
  v109(v104 + v110, 1, 1, v108);
  v111 = v104 + v93[11];
  *v104 = v77;
  *(v104 + 8) = 1;
  *(v104 + v93[8]) = v106;
  *(v104 + v93[9]) = v107;
  sub_252377048(v94, v104 + v110, &qword_27F4DADB8);
  v112 = 100;
  *v111 = 100;
  *(v111 + 8) = 0;
  *(v104 + v93[7]) = 0;
  if (v160)
  {
    v112 = v179;
  }

  *&v188 = v112;
  v113 = v169;
  sub_25268F9B0();
  v114 = v171;
  v115 = v175;
  v116 = &v175[*(v171 + 20)];
  v117 = (v116 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48));
  sub_25238CB54(v104, v116, type metadata accessor for AccessoryControl.PickerViewConfig);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  sub_25238CB54(v187, v117 + *(v118 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  v119 = v167;
  sub_25238CB54(v185, v167, type metadata accessor for HAPControlSolver.Source);
  v120 = (*(v165 + 80) + 16) & ~*(v165 + 80);
  v121 = swift_allocObject();
  sub_25238CC34(v119, v121 + v120, type metadata accessor for HAPControlSolver.Source);
  v122 = v117 + *(v118 + 40);
  *v122 = v188;
  v122[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB020);
  v123 = swift_allocObject();
  v188 = xmmword_252694E90;
  *(v123 + 16) = xmmword_252694E90;
  *(v123 + 32) = sub_25238CA74;
  *(v123 + 40) = v121;
  *v117 = v123;
  type metadata accessor for AccessoryControl.State(0);
  swift_storeEnumTagMultiPayload();
  v124 = v172 + 32;
  v125 = v173;
  (*(v172 + 32))(v115, v113, v173);
  type metadata accessor for AccessoryControl.ElementIdentifier();
  swift_storeEnumTagMultiPayload();
  v126 = (v115 + v114[7]);
  v127 = v114[9];
  *(v115 + v127) = 16;
  *(v115 + v114[6]) = 0;
  *v126 = 0;
  v126[1] = 0;
  *(v115 + v114[8]) = 1028;
  *(v115 + v127) = 14;
  *(v115 + v114[10]) = 1;
  v128 = v181;
  v129 = v168;
  sub_25237153C(v181, v168, &qword_27F4DB120);
  v130 = (v124 - 16);
  if ((*(v170 + 48))(v129, 1, v114) == 1)
  {
    sub_252372288(v129, &qword_27F4DB120);
    v131 = v178;
    v132 = v185;
    (*v130)(v178, v185, v125);
    swift_storeEnumTagMultiPayload();
    v133 = v176;
    sub_25238CB54(v115, v131 + *(v176 + 20), type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v134 = (v132 + *(v183 + 28));
    v135 = *v134;
    v136 = v134[1];
    v137 = (v131 + *(v133 + 28));
    v138 = (v131 + *(v133 + 24));
    *v138 = v135;
    v138[1] = v136;
    *v137 = 0;
    v137[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
    v139 = (*(v177 + 80) + 32) & ~*(v177 + 80);
    v140 = swift_allocObject();
    *(v140 + 16) = v188;
    sub_25238CC34(v131, v140 + v139, type metadata accessor for AccessoryControlGroup);

    sub_252372288(v128, &qword_27F4DB120);
    sub_25238CAF4(v182, type metadata accessor for AccessoryControl.StatusProvider);
    sub_252372288(v184, &qword_27F4DB290);
    (*(v161 + 8))(v186, v158);
    sub_25238CAF4(v187, type metadata accessor for AccessoryControl.ValueDestination);
    sub_25238CAF4(v115, type metadata accessor for AccessoryControl);
    sub_25238CAF4(v104, type metadata accessor for AccessoryControl.PickerViewConfig);
    return v140;
  }

  else
  {
    v141 = v129;
    v142 = v162;
    sub_25238CC34(v141, v162, type metadata accessor for AccessoryControl);
    v143 = v178;
    v144 = v185;
    (*v130)(v178, v185, v125);
    swift_storeEnumTagMultiPayload();
    v145 = v176;
    v146 = v143 + *(v176 + 20);
    v147 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0) + 48);
    sub_25238CB54(v142, v146, type metadata accessor for AccessoryControl);
    sub_25238CB54(v115, v146 + v147, type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v148 = (v144 + *(v183 + 28));
    v149 = *v148;
    v150 = v148[1];
    v151 = (v143 + *(v145 + 28));
    v152 = (v143 + *(v145 + 24));
    *v152 = v149;
    v152[1] = v150;
    *v151 = 0;
    v151[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
    v153 = (*(v177 + 80) + 32) & ~*(v177 + 80);
    v154 = swift_allocObject();
    *(v154 + 16) = v188;
    sub_25238CC34(v143, v154 + v153, type metadata accessor for AccessoryControlGroup);

    sub_25238CAF4(v142, type metadata accessor for AccessoryControl);
    sub_252372288(v128, &qword_27F4DB120);
    sub_25238CAF4(v182, type metadata accessor for AccessoryControl.StatusProvider);
    sub_252372288(v184, &qword_27F4DB290);
    (*(v161 + 8))(v186, v158);
    sub_25238CAF4(v187, type metadata accessor for AccessoryControl.ValueDestination);
    sub_25238CAF4(v115, type metadata accessor for AccessoryControl);
    sub_25238CAF4(v104, type metadata accessor for AccessoryControl.PickerViewConfig);
    return v154;
  }
}

uint64_t sub_252388800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v41 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v38 - v3;
  v4 = sub_25268F4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v39 = &v38 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = *(v5 + 104);
  v18(v7, *MEMORY[0x277D16228], v4);
  type metadata accessor for HAPControlSolver.Source();
  sub_25268FD80();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v18(v7, *MEMORY[0x277D161E8], v4);
  v43 = v15;
  v20 = v39;
  sub_25268FD80();
  v19(v7, v4);
  sub_25237153C(v17, v20, &qword_27F4DB208);
  v21 = sub_25268F9E0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v20, 1, v21) == 1)
  {
    v24 = v41;
    sub_252372288(v20, &qword_27F4DB208);
    v25 = sub_25268DA10();
    v26 = *(v25 - 8);
    v27 = v42;
    v38 = *(v26 + 56);
    v39 = v25;
    v38(v42, 1, 1);
    v28 = v40;
    sub_25237153C(v43, v40, &qword_27F4DB208);
    if (v23(v28, 1, v21) == 1)
    {
      sub_252372288(v43, &qword_27F4DB208);
      sub_252372288(v17, &qword_27F4DB208);
      sub_252372288(v40, &qword_27F4DB208);
      v29 = 1;
    }

    else
    {
      v36 = v40;
      sub_25268F9B0();
      sub_252372288(v43, &qword_27F4DB208);
      sub_252372288(v17, &qword_27F4DB208);
      (*(v22 + 8))(v36, v21);
      v29 = 0;
    }

    v37 = v39;
    (v38)(v24, v29, 1, v39);
    result = (*(v26 + 48))(v27, 1, v37);
    if (result != 1)
    {
      return sub_252372288(v27, &qword_27F4DB290);
    }
  }

  else
  {
    v30 = v42;
    sub_25268F9B0();
    sub_252372288(v43, &qword_27F4DB208);
    sub_252372288(v17, &qword_27F4DB208);
    (*(v22 + 8))(v20, v21);
    v31 = sub_25268DA10();
    v32 = *(v31 - 8);
    v33 = *(v32 + 56);
    v33(v30, 0, 1, v31);
    v34 = v41;
    (*(v32 + 32))(v41, v30, v31);
    return (v33)(v34, 0, 1, v31);
  }

  return result;
}

uint64_t sub_252388D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v338 = a6;
  v367 = a5;
  v360 = a4;
  LODWORD(v352) = a3;
  v372 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v333 = &v303 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v315 = &v303 - v12;
  v13 = type metadata accessor for AccessoryControl.State(0);
  v14 = MEMORY[0x28223BE20](v13);
  v334 = &v303 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v311 = &v303 - v16;
  v327 = sub_25268F970();
  v326 = *(v327 - 8);
  v17 = MEMORY[0x28223BE20](v327);
  v325 = &v303 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v314 = &v303 - v19;
  v20 = sub_25268ED70();
  v340 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v331 = (&v303 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v320 = (&v303 - v23);
  v24 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v363 = *(v24 - 8);
  v364 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v332 = &v303 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v310 = &v303 - v27;
  v28 = sub_25268F4D0();
  v368 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v341 = &v303 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v330 = &v303 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v370 = &v303 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v316 = &v303 - v36;
  MEMORY[0x28223BE20](v35);
  v323 = &v303 - v37;
  v342 = sub_25268F9E0();
  v343 = *(v342 - 8);
  v38 = MEMORY[0x28223BE20](v342);
  v321 = &v303 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v324 = &v303 - v40;
  v41 = type metadata accessor for HAPControlSolver.Source();
  v361 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v362 = v42;
  v365 = &v303 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = sub_25268E530();
  v357 = *(v358 - 8);
  v43 = MEMORY[0x28223BE20](v358);
  v329 = &v303 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v328 = &v303 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v313 = &v303 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v312 = &v303 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v339 = &v303 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v336 = &v303 - v54;
  MEMORY[0x28223BE20](v53);
  v335 = &v303 - v55;
  v366 = sub_25268E2E0();
  v356 = *(v366 - 8);
  v56 = MEMORY[0x28223BE20](v366);
  v355 = &v303 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v353 = &v303 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v60 = MEMORY[0x28223BE20](v59);
  v346 = &v303 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v60);
  v345 = (&v303 - v63);
  v64 = MEMORY[0x28223BE20](v62);
  v319 = &v303 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v318 = (&v303 - v67);
  v68 = MEMORY[0x28223BE20](v66);
  v350 = (&v303 - v69);
  MEMORY[0x28223BE20](v68);
  v349 = (&v303 - v70);
  v71 = sub_25268EEA0();
  v373 = *(v71 - 8);
  v374 = v71;
  v72 = MEMORY[0x28223BE20](v71);
  v344 = &v303 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x28223BE20](v72);
  v317 = &v303 - v75;
  MEMORY[0x28223BE20](v74);
  v348 = &v303 - v76;
  v359 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  v77 = MEMORY[0x28223BE20](v359);
  v369 = &v303 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x28223BE20](v77);
  v322 = &v303 - v80;
  MEMORY[0x28223BE20](v79);
  v337 = &v303 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  MEMORY[0x28223BE20](v82 - 8);
  v84 = &v303 - v83;
  v85 = sub_25268DA10();
  v377 = *(v85 - 8);
  v86 = MEMORY[0x28223BE20](v85);
  v347 = &v303 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x28223BE20](v86);
  v90 = &v303 - v89;
  v91 = MEMORY[0x28223BE20](v88);
  v351 = &v303 - v92;
  MEMORY[0x28223BE20](v91);
  v375 = &v303 - v93;
  v376 = a1;
  v371 = v41;
  v94 = sub_25268FE50();
  if ((v95 & 1) != 0 || v94 != 2)
  {
    v97 = sub_25268FE50();
    if (v98)
    {
      v354 = 0;
      goto LABEL_8;
    }

    v96 = v97 == 3;
  }

  else
  {
    v96 = 1;
  }

  v354 = v96;
LABEL_8:
  v99 = v377;
  sub_25237153C(v372, v84, &qword_27F4DB290);
  if ((*(v99 + 48))(v84, 1, v85) == 1)
  {
    sub_252372288(v84, &qword_27F4DB290);
    v100 = type metadata accessor for AccessoryControl(0);
    return (*(*(v100 - 8) + 56))(a7, 1, 1, v100);
  }

  v308 = v13;
  v309 = a7;
  v102 = *(v99 + 32);
  v307 = v99 + 32;
  v306 = v102;
  v102(v375, v84, v85);
  v372 = v85;
  v305 = v59;
  if ((v352 & 1) == 0)
  {
    (*(v373 + 104))(v348, *MEMORY[0x277D15CE8], v374);
    v106 = v353;
    sub_25268E250();
    v107 = sub_25268E2D0();
    v370 = v108;
    v371 = v107;
    v109 = *(v356 + 8);
    v110 = v366;
    v109(v106, v366);
    v111 = v355;
    sub_25268E250();
    v112 = type metadata accessor for IconDescriptor();
    v113 = v349;
    sub_25268E2C0();
    v109(v111, v110);
    v114 = v370;
    *v113 = v371;
    v113[1] = v114;
    *(v113 + *(v112 + 24)) = 0;
    sub_25268E260();
    v115 = sub_25268E2D0();
    v370 = v116;
    v371 = v115;
    v109(v106, v110);
    sub_25268E260();
    v117 = (v113 + *(v305 + 28));
    sub_25268E2C0();
    v109(v111, v110);
    v118 = v370;
    *v117 = v371;
    v117[1] = v118;
    *(v117 + *(v112 + 24)) = 0;
    sub_25237153C(v113, v350, &qword_27F4DAD88);
    v119 = *MEMORY[0x277D157D8];
    v120 = v357;
    v121 = *(v357 + 104);
    v122 = v335;
    v123 = v358;
    v121(v335, v119, v358);
    v371 = sub_25268E510();
    v124 = *(v120 + 8);
    v124(v122, v123);
    v125 = v336;
    v121(v336, v119, v123);
    v126 = sub_25268E510();
    v124(v125, v123);
    if (v354)
    {
      v127 = v339;
      v121(v339, v119, v123);
      v128 = sub_25268E510();
      v124(v127, v123);
      v129 = sub_252692330();
    }

    else
    {
      v130 = [objc_opt_self() systemGray2Color];
      v128 = sub_252692240();
      v129 = sub_252692360();
    }

    v131 = v129;
    sub_252372288(v349, &qword_27F4DAD88);
    v132 = v359;
    v133 = v337;
    (*(v373 + 32))(&v337[*(v359 + 28)], v348, v374);
    sub_25238CB54(v360, v133 + v132[14], type metadata accessor for AccessoryControl.StatusProvider);
    sub_2523714D4(v350, v133, &qword_27F4DAD88);
    *(v133 + v132[5]) = v371;
    *(v133 + v132[6]) = v126;
    *(v133 + v132[12]) = v128;
    *(v133 + v132[13]) = v131;
    *(v133 + v132[8]) = 0;
    *(v133 + v132[9]) = 0x4059000000000000;
    *(v133 + v132[10]) = 0x3FF0000000000000;
    v134 = v133 + v132[11];
    *v134 = 0x406F400000000000;
    *(v134 + 8) = 0;
    v135 = v377;
    v136 = v372;
    (*(v377 + 16))(v351, v375, v372);
    v137 = type metadata accessor for AccessoryControl(0);
    v138 = v309;
    v139 = v309 + v137[5];
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
    v141 = (v139 + *(v140 + 48));
    v374 = *(v140 + 64);
    sub_25238CB54(v133, v139, type metadata accessor for AccessoryControl.IncrementalConfig);
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
    (*(v363 + 56))(v141 + *(v142 + 40), 1, 1, v364);
    sub_25238CB54(v367, v141 + *(v142 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v143 = v365;
    sub_25238CB54(v376, v365, type metadata accessor for HAPControlSolver.Source);
    v144 = (*(v361 + 80) + 16) & ~*(v361 + 80);
    v145 = swift_allocObject();
    sub_25238CC34(v143, v145 + v144, type metadata accessor for HAPControlSolver.Source);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB008);
    v146 = swift_allocObject();
    *(v146 + 16) = xmmword_252694E90;
    *(v146 + 32) = sub_25238CC9C;
    *(v146 + 40) = v145;
    sub_25238CAF4(v133, type metadata accessor for AccessoryControl.IncrementalConfig);
    (*(v135 + 8))(v375, v136);
    *v141 = v146;
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
    (*(*(v147 - 8) + 56))(v139 + v374, 1, 1, v147);
    swift_storeEnumTagMultiPayload();
    v306(v138, v351, v136);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v148 = (v138 + v137[7]);
    v149 = v137[9];
    *(v138 + v149) = 16;
    *(v138 + v137[6]) = 0;
    *v148 = 0;
    v148[1] = 0;
    *(v138 + v137[8]) = 1028;
    *(v138 + v149) = 12;
    *(v138 + v137[10]) = 0;
    v150 = *(*(v137 - 1) + 56);
    v151 = v138;
    return v150(v151, 0, 1, v137);
  }

  v103 = *(v368 + 104);
  v304 = v20;
  if (v338)
  {
    v104 = v103;
    if (v338 == 1)
    {
      v105 = MEMORY[0x277D161E8];
    }

    else
    {
      v105 = MEMORY[0x277D16228];
    }

    v152 = *v105;
    v161 = v366;
    v162 = v341;
    goto LABEL_25;
  }

  v351 = v90;
  v152 = *MEMORY[0x277D16228];
  v153 = v341;
  v154 = v28;
  v103(v341, v152, v28);
  v155 = v323;
  sub_25268FD80();
  v157 = (v368 + 8);
  v156 = *(v368 + 8);
  v352 = v154;
  v350 = v156;
  (v156)(v153, v154);
  v158 = v343;
  v159 = v342;
  v349 = *(v343 + 48);
  if ((v349)(v155, 1, v342) == 1)
  {
    v104 = v103;
    v160 = v155;
LABEL_24:
    sub_252372288(v160, &qword_27F4DB208);
    v161 = v366;
    v28 = v352;
    v162 = v153;
LABEL_25:
    v104(v162, v152, v28);
    sub_25268FD80();
    v168 = v152;
    v169 = *(v368 + 8);
    v169(v162, v28);
    v104(v162, v168, v28);
    v368 = sub_25268FEA0();
    LODWORD(v366) = v170;
    v169(v162, v28);
    (*(v373 + 104))(v344, *MEMORY[0x277D15CE8], v374);
    v171 = v353;
    sub_25268E250();
    v352 = sub_25268E2D0();
    v351 = v172;
    v173 = *(v356 + 8);
    v173(v171, v161);
    v174 = v355;
    sub_25268E250();
    v175 = type metadata accessor for IconDescriptor();
    v176 = v345;
    sub_25268E2C0();
    v173(v174, v161);
    v177 = v351;
    *v176 = v352;
    v176[1] = v177;
    *(v176 + *(v175 + 24)) = 0;
    sub_25268E260();
    v356 = sub_25268E2D0();
    v352 = v178;
    v173(v171, v161);
    sub_25268E260();
    v179 = (v176 + *(v305 + 28));
    sub_25268E2C0();
    v173(v174, v161);
    v180 = v352;
    *v179 = v356;
    v179[1] = v180;
    *(v179 + *(v175 + 24)) = 0;
    sub_25237153C(v176, v346, &qword_27F4DAD88);
    v181 = *MEMORY[0x277D157D8];
    v182 = v357;
    v183 = *(v357 + 104);
    v184 = v328;
    v185 = v358;
    v183(v328, v181, v358);
    v186 = sub_25268E510();
    v187 = *(v182 + 8);
    v187(v184, v185);
    v188 = v329;
    v183(v329, v181, v185);
    v189 = sub_25268E510();
    v187(v188, v185);
    if (v354)
    {
      v190 = v339;
      v183(v339, v181, v185);
      v191 = sub_25268E510();
      v187(v190, v185);
      v192 = sub_252692330();
    }

    else
    {
      v193 = [objc_opt_self() systemGray2Color];
      v191 = sub_252692240();
      v192 = sub_252692360();
    }

    v194 = v192;
    v195 = v367;
    v196 = v333;
    sub_252372288(v345, &qword_27F4DAD88);
    v197 = v359;
    v198 = v369;
    (*(v373 + 32))(v369 + *(v359 + 28), v344, v374);
    sub_25238CB54(v360, v198 + v197[14], type metadata accessor for AccessoryControl.StatusProvider);
    sub_2523714D4(v346, v198, &qword_27F4DAD88);
    *(v198 + v197[5]) = v186;
    *(v198 + v197[6]) = v189;
    *(v198 + v197[12]) = v191;
    *(v198 + v197[13]) = v194;
    *(v198 + v197[8]) = 0;
    *(v198 + v197[9]) = 0x4059000000000000;
    *(v198 + v197[10]) = 0x3FF0000000000000;
    v199 = v198 + v197[11];
    *v199 = 0x406F400000000000;
    *(v199 + 8) = 0;
    v200 = *&v368;
    if (v366)
    {
      v200 = 0.0;
    }

    v201 = v331;
    *v331 = v200;
    v202 = v340;
    (*(v340 + 104))(v201, *MEMORY[0x277D15BB8], v304);
    v203 = v330;
    sub_25237153C(v370, v330, &qword_27F4DB208);
    v204 = v343;
    v205 = v342;
    if ((*(v343 + 48))(v203, 1, v342) == 1)
    {
      sub_252372288(v203, &qword_27F4DB208);
      v206 = 0;
    }

    else
    {
      v207 = v325;
      sub_25268F980();
      (*(v204 + 8))(v203, v205);
      v206 = sub_25268F960();
      (*(v326 + 8))(v207, v327);
    }

    v208 = v376;
    v209 = v372;
    v210 = v364;
    v211 = v334;
    v212 = v332;
    (*(v202 + 32))(v332, v201, v304);
    *(v212 + *(v210 + 20)) = v206 & 1;
    (*(v377 + 16))(v347, v375, v209);
    sub_25238CB54(v369, v211, type metadata accessor for AccessoryControl.IncrementalConfig);
    v213 = 1;
    if (*(v208 + v371[10]) == 1)
    {
      sub_25238CB54(v212, v196, type metadata accessor for AccessoryControl.IncrementalState);
      v213 = 0;
    }

    (*(v363 + 56))(v196, v213, 1, v210);
    v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
    v215 = v212;
    v216 = (v211 + *(v214 + 48));
    v217 = *(v214 + 64);
    v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
    sub_25238CB54(v195, v216 + *(v218 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v219 = v365;
    sub_25238CB54(v208, v365, type metadata accessor for HAPControlSolver.Source);
    v220 = (*(v361 + 80) + 16) & ~*(v361 + 80);
    v221 = swift_allocObject();
    sub_25238CC34(v219, v221 + v220, type metadata accessor for HAPControlSolver.Source);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB008);
    v222 = swift_allocObject();
    *(v222 + 16) = xmmword_252694E90;
    *(v222 + 32) = sub_25238CC9C;
    *(v222 + 40) = v221;
    sub_25238CAF4(v215, type metadata accessor for AccessoryControl.IncrementalState);
    sub_25238CAF4(v369, type metadata accessor for AccessoryControl.IncrementalConfig);
    sub_252372288(v370, &qword_27F4DB208);
    v223 = v372;
    (*(v377 + 8))(v375, v372);
    *v216 = v222;
    sub_2523714D4(v196, v216 + *(v218 + 40), &qword_27F4DB218);
    v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
    (*(*(v224 - 8) + 56))(v211 + v217, 1, 1, v224);
    swift_storeEnumTagMultiPayload();
    v225 = v309;
    v306(v309, v347, v223);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v137 = type metadata accessor for AccessoryControl(0);
    v226 = (v225 + v137[7]);
    v227 = v137[9];
    *(v225 + v227) = 16;
    sub_25238CC34(v211, v225 + v137[5], type metadata accessor for AccessoryControl.State);
    *(v225 + v137[6]) = 0;
    *v226 = 0;
    v226[1] = 0;
    *(v225 + v137[8]) = 1028;
    *(v225 + v227) = 12;
    *(v225 + v137[10]) = 1;
    v150 = *(*(v137 - 1) + 56);
    v151 = v225;
    return v150(v151, 0, 1, v137);
  }

  v163 = *(v158 + 32);
  v337 = (v158 + 32);
  v336 = v163;
  (v163)(v324, v155, v159);
  LODWORD(v338) = *MEMORY[0x277D161E8];
  v348 = v157;
  v164 = v352;
  (v103)(v153);
  v165 = v316;
  sub_25268FD80();
  v166 = v165;
  v167 = v350;
  (v350)(v153, v164);
  if ((v349)(v166, 1, v159) == 1)
  {
    v104 = v103;
    (*(v343 + 8))(v324, v159);
    v160 = v166;
    goto LABEL_24;
  }

  (v336)(v321, v166, v159);
  v228 = v352;
  v103(v153, v152, v352);
  v229 = COERCE_DOUBLE(sub_25268FEA0());
  v231 = v230;
  v167(v153, v228);
  v232 = 0.0;
  if (v231)
  {
    v233 = 0.0;
  }

  else
  {
    v233 = v229;
  }

  v103(v153, v338, v228);
  v234 = COERCE_DOUBLE(sub_25268FEA0());
  v236 = v235;
  v167(v153, v228);
  if ((v236 & 1) == 0)
  {
    v232 = v234;
  }

  (*(v373 + 104))(v317, *MEMORY[0x277D15CF0], v374);
  v237 = v353;
  sub_25268E250();
  v238 = sub_25268E2D0();
  v369 = v239;
  v370 = v238;
  v240 = *(v356 + 8);
  v241 = v366;
  v240(v237, v366);
  v242 = v355;
  sub_25268E250();
  v243 = type metadata accessor for IconDescriptor();
  v244 = v318;
  sub_25268E2C0();
  v240(v242, v241);
  v245 = v369;
  *v244 = v370;
  v244[1] = v245;
  *(v244 + *(v243 + 24)) = 0;
  sub_25268E260();
  v246 = sub_25268E2D0();
  v369 = v247;
  v370 = v246;
  v240(v237, v241);
  sub_25268E260();
  v248 = (v244 + *(v305 + 28));
  sub_25268E2C0();
  v240(v242, v241);
  v249 = v369;
  *v248 = v370;
  v248[1] = v249;
  *(v248 + *(v243 + 24)) = 0;
  sub_25237153C(v244, v319, &qword_27F4DAD88);
  v250 = *MEMORY[0x277D157D8];
  v251 = v357;
  v252 = *(v357 + 104);
  v253 = v312;
  v254 = v358;
  v252(v312, v250, v358);
  v255 = sub_25268E510();
  v256 = *(v251 + 8);
  v256(v253, v254);
  v257 = v313;
  v252(v313, v250, v254);
  v258 = sub_25268E510();
  v256(v257, v254);
  if (v354)
  {
    v259 = v339;
    v252(v339, v250, v254);
    v260 = sub_25268E510();
    v256(v259, v254);
    v261 = sub_252692330();
  }

  else
  {
    v262 = [objc_opt_self() systemGray2Color];
    v260 = sub_252692240();
    v261 = sub_252692360();
  }

  v263 = v261;
  v264 = v304;
  v265 = v311;
  sub_252372288(v318, &qword_27F4DAD88);
  v266 = v359;
  v267 = v322;
  (*(v373 + 32))(v322 + *(v359 + 28), v317, v374);
  sub_25238CB54(v360, v267 + v266[14], type metadata accessor for AccessoryControl.StatusProvider);
  sub_2523714D4(v319, v267, &qword_27F4DAD88);
  *(v267 + v266[5]) = v255;
  *(v267 + v266[6]) = v258;
  *(v267 + v266[12]) = v260;
  *(v267 + v266[13]) = v263;
  *(v267 + v266[8]) = 0;
  *(v267 + v266[9]) = 0x4059000000000000;
  *(v267 + v266[10]) = 0x3FF0000000000000;
  v268 = v267 + v266[11];
  *v268 = 0x406F400000000000;
  *(v268 + 8) = 0;
  v269 = v320;
  *v320 = v232;
  v269[1] = v233;
  v270 = v340;
  (*(v340 + 104))();
  v271 = v314;
  v272 = v324;
  sub_25268F980();
  v273 = sub_25268F960();
  v274 = *(v326 + 8);
  v275 = v271;
  v276 = v327;
  v274(v275, v327);
  if (v273)
  {
    v277 = 1;
  }

  else
  {
    v278 = v325;
    sub_25268F980();
    v277 = sub_25268F960();
    v274(v278, v276);
  }

  v279 = v372;
  v280 = v364;
  v281 = v310;
  (*(v270 + 32))(v310, v320, v264);
  *(v281 + *(v280 + 20)) = v277 & 1;
  (*(v377 + 16))(v351, v375, v279);
  sub_25238CB54(v322, v265, type metadata accessor for AccessoryControl.IncrementalConfig);
  v282 = 1;
  if (*(v376 + v371[10]) == 1)
  {
    sub_25238CB54(v281, v315, type metadata accessor for AccessoryControl.IncrementalState);
    v282 = 0;
  }

  v283 = v315;
  (*(v363 + 56))(v315, v282, 1, v280);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
  v285 = (v265 + *(v284 + 48));
  v374 = *(v284 + 64);
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
  sub_25238CB54(v367, v285 + *(v286 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  v287 = v376;
  v288 = v365;
  sub_25238CB54(v376, v365, type metadata accessor for HAPControlSolver.Source);
  v289 = (*(v361 + 80) + 16) & ~*(v361 + 80);
  v290 = swift_allocObject();
  sub_25238CC34(v288, v290 + v289, type metadata accessor for HAPControlSolver.Source);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB008);
  v291 = swift_allocObject();
  *(v291 + 16) = xmmword_252694E90;
  *(v291 + 32) = sub_25238CBBC;
  *(v291 + 40) = v290;
  sub_25238CAF4(v281, type metadata accessor for AccessoryControl.IncrementalState);
  sub_25238CAF4(v322, type metadata accessor for AccessoryControl.IncrementalConfig);
  v292 = *(v343 + 8);
  v293 = v342;
  v292(v321, v342);
  v292(v272, v293);
  v294 = v372;
  (*(v377 + 8))(v375, v372);
  *v285 = v291;
  sub_2523714D4(v283, v285 + *(v286 + 40), &qword_27F4DB218);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  (*(*(v295 - 8) + 56))(v265 + v374, 1, 1, v295);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v291) = *(v287 + v371[13]);
  v296 = (v287 + v371[14]);
  v298 = *v296;
  v297 = v296[1];
  v299 = v309;
  v306(v309, v351, v294);
  type metadata accessor for AccessoryControl.ElementIdentifier();
  swift_storeEnumTagMultiPayload();
  v300 = type metadata accessor for AccessoryControl(0);
  v301 = (v299 + v300[7]);
  v302 = v300[9];
  *(v299 + v302) = 16;
  sub_25238CC34(v265, v299 + v300[5], type metadata accessor for AccessoryControl.State);
  *(v299 + v300[6]) = v291;
  *v301 = v298;
  v301[1] = v297;
  *(v299 + v300[8]) = 1028;
  *(v299 + v302) = 12;
  *(v299 + v300[10]) = 1;
  (*(*(v300 - 1) + 56))(v299, 0, 1, v300);
}

uint64_t sub_25238B604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v31 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v11, &qword_27F4DB218);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_252372288(v11, &qword_27F4DB218);
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v17 = __swift_project_value_buffer(v16, qword_27F4DB8A0);
    return sub_25238CB54(v17, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    sub_25238CC34(v11, v15, type metadata accessor for AccessoryControl.IncrementalState);
    v19 = sub_25238C2EC(v15);
    v20 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v21 = *(v20 + 24);
    v22 = sub_25268F140();
    (*(*(v22 - 8) + 56))(v8 + v21, 1, 1, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v23 = sub_25268DA10();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_252694E90;
    (*(v24 + 16))(v26 + v25, a2, v23);
    v27 = sub_25240C1FC(v26);
    swift_setDeallocating();
    (*(v24 + 8))(v26 + v25, v23);
    swift_deallocClassInstance();
    v28 = sub_2523F75C4(v19);

    *v8 = v28;
    v8[1] = 0;
    *(v8 + *(v20 + 28)) = v27;
    v29 = *(*(v20 - 8) + 56);
    v29(v8, 0, 1, v20);
    sub_25238CAF4(v15, type metadata accessor for AccessoryControl.IncrementalState);
    v29(a3, 1, 1, v20);
    v30 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v30) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210);

    *(a3 + v30) = 0;
  }

  return result;
}

uint64_t sub_25238BA54()
{
  v0 = sub_25268FFD0();
  v34 = *(v0 - 8);
  v35 = v0;
  MEMORY[0x28223BE20](v0);
  v33 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_25268F4D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_252690050();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  (*(v3 + 104))(v5, *MEMORY[0x277D162C8], v2);
  type metadata accessor for HAPControlSolver.Source();
  sub_25268FD80();
  (*(v3 + 8))(v5, v2);
  v19 = sub_25268F9E0();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v8, 1, v19) == 1)
  {
    sub_252372288(v8, &qword_27F4DB208);
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_4:
    sub_252372288(v11, &qword_27F4DB230);
    return sub_25240C064(&unk_2864838E0);
  }

  sub_25268F9D0();
  (*(v20 + 8))(v8, v19);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  (*(v13 + 32))(v18, v11, v12);
  (*(v13 + 16))(v16, v18, v12);
  if ((*(v13 + 88))(v16, v12) != *MEMORY[0x277D16CC8])
  {
    v30 = *(v13 + 8);
    v30(v18, v12);
    v30(v16, v12);
    return sub_25240C064(&unk_2864838E0);
  }

  (*(v13 + 96))(v16, v12);
  (*(v34 + 32))(v33, v16, v35);
  v22 = sub_25268FF90();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = (v22 + 32);
    v25 = MEMORY[0x277D84F90];
    do
    {
      v27 = *v24++;
      v26 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_252368C50(0, *(v25 + 2) + 1, 1, v25);
      }

      v29 = *(v25 + 2);
      v28 = *(v25 + 3);
      if (v29 >= v28 >> 1)
      {
        v25 = sub_252368C50((v28 > 1), v29 + 1, 1, v25);
      }

      *(v25 + 2) = v29 + 1;
      *&v25[8 * v29 + 32] = v26;
      --v23;
    }

    while (v23);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v31 = sub_2526245D8(v25);

  (*(v34 + 8))(v33, v35);
  (*(v13 + 8))(v18, v12);
  return v31;
}

uint64_t sub_25238BFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v24 - v7);
  if (*(a1 + 8) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v10 = __swift_project_value_buffer(v9, qword_27F4DB8A0);
    return sub_25238CB54(v10, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v12 = sub_25238C7F8(*a1);
    v13 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v14 = *(v13 + 24);
    v15 = sub_25268F140();
    (*(*(v15 - 8) + 56))(v8 + v14, 1, 1, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v16 = sub_25268DA10();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_252694E90;
    (*(v17 + 16))(v19 + v18, a2, v16);
    v20 = sub_25240C1FC(v19);
    swift_setDeallocating();
    (*(v17 + 8))(v19 + v18, v16);
    swift_deallocClassInstance();
    v21 = sub_2523F75C4(v12);

    *v8 = v21;
    v8[1] = 0;
    *(v8 + *(v13 + 28)) = v20;
    v22 = *(*(v13 - 8) + 56);
    v22(v8, 0, 1, v13);
    v22(a3, 1, 1, v13);
    v23 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v23) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210);

    *(a3 + v23) = 0;
  }

  return result;
}

unint64_t sub_25238C2EC(uint64_t a1)
{
  v2 = sub_25268ED70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D15BB8])
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    type metadata accessor for HAPControlSolver.Source();
    v8 = sub_25268FE40();
    if ((v9 & 1) == 0)
    {
      if (v8 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
        v31 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228) - 8);
        v32 = (*(*v31 + 80) + 32) & ~*(*v31 + 80);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_252694E90;
        v13 = v12 + v32;
        v14 = (v13 + v31[14]);
        v15 = MEMORY[0x277D16228];
        goto LABEL_10;
      }

      if (v8 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
        v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228) - 8);
        v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_252694E90;
        v13 = v12 + v11;
        v14 = (v13 + v10[14]);
        v15 = MEMORY[0x277D161E8];
LABEL_10:
        v33 = *v15;
        v34 = sub_25268F4D0();
        (*(*(v34 - 8) + 104))(v13, v33, v34);
        v14[3] = MEMORY[0x277D839F8];
        *v14 = v7;
        v29 = sub_25256E63C(v12);
        swift_setDeallocating();
        sub_252372288(v13, &qword_27F4DB228);
        goto LABEL_11;
      }
    }

    return sub_25256E63C(MEMORY[0x277D84F90]);
  }

  if (v6 == *MEMORY[0x277D15BB0])
  {
    (*(v3 + 96))(v5, v2);
    v17 = *v5;
    v16 = v5[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228);
    v19 = *(*(v18 - 8) + 72);
    v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_252694EA0;
    v22 = v21 + v20;
    v23 = (v22 + *(v18 + 48));
    v24 = *MEMORY[0x277D161E8];
    v25 = sub_25268F4D0();
    v26 = *(*(v25 - 8) + 104);
    (v26)(v22, v24, v25);
    v27 = MEMORY[0x277D839F8];
    v23[3] = MEMORY[0x277D839F8];
    *v23 = v17;
    v28 = (v22 + v19 + *(v18 + 48));
    v26();
    v28[3] = v27;
    *v28 = v16;
    v29 = sub_25256E63C(v21);
    swift_setDeallocating();
    swift_arrayDestroy();
LABEL_11:
    swift_deallocClassInstance();
    return v29;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

unint64_t sub_25238C7F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  if (a1 == 100)
  {
    *(v5 + 16) = xmmword_252694E90;
    v6 = v5 + v4;
    v7 = v6 + *(v2 + 48);
    v8 = *MEMORY[0x277D16330];
    v9 = sub_25268F4D0();
    (*(*(v9 - 8) + 104))(v6, v8, v9);
    *(v7 + 24) = MEMORY[0x277D839B0];
    *v7 = 0;
    v10 = sub_25256E63C(v5);
    swift_setDeallocating();
    sub_252372288(v6, &qword_27F4DB228);
  }

  else
  {
    *(v5 + 16) = xmmword_252694EA0;
    v11 = v5 + v4;
    v12 = (v11 + *(v2 + 48));
    v13 = *MEMORY[0x277D162C8];
    v14 = sub_25268F4D0();
    v15 = *(*(v14 - 8) + 104);
    (v15)(v11, v13, v14);
    v12[3] = MEMORY[0x277D83B88];
    *v12 = a1;
    v16 = v11 + v3 + *(v2 + 48);
    v15();
    *(v16 + 24) = MEMORY[0x277D839B0];
    *v16 = 1;
    v10 = sub_25256E63C(v5);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
  return v10;
}

uint64_t sub_25238CA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25238BFEC(a1, v6, a2);
}

uint64_t sub_25238CAF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25238CB54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25238CC34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25238CCF8(uint64_t a1, uint64_t a2)
{
  v399 = a1;
  v345 = type metadata accessor for AccessoryControlGroup(0);
  v346 = *(v345 - 8);
  MEMORY[0x28223BE20](v345);
  v348 = &v301 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = type metadata accessor for AccessoryControl(0);
  v378 = *(v379 - 8);
  v4 = MEMORY[0x28223BE20](v379);
  v320 = &v301 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v349 = &v301 - v7;
  MEMORY[0x28223BE20](v6);
  v350 = &v301 - v8;
  v341 = type metadata accessor for ControlTextModifier.Config(0);
  MEMORY[0x28223BE20](v341);
  v389 = &v301 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  v10 = MEMORY[0x28223BE20](v342);
  v375 = &v301 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v381 = &v301 - v12;
  v385 = sub_25268DA10();
  v384 = *(v385 - 8);
  MEMORY[0x28223BE20](v385);
  v361 = &v301 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  v319 = *(v360 - 8);
  v14 = MEMORY[0x28223BE20](v360);
  v380 = (&v301 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v318 = (&v301 - v16);
  v17 = type metadata accessor for HAPControlSolver.Source();
  v357 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v358 = v18;
  v359 = &v301 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
  MEMORY[0x28223BE20](v317);
  v340 = (&v301 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v344 = &v301 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v347 = &v301 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v343 = &v301 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v390 = &v301 - v28;
  MEMORY[0x28223BE20](v27);
  v386 = &v301 - v29;
  v315 = sub_25268F970();
  v314 = *(v315 - 8);
  MEMORY[0x28223BE20](v315);
  v313 = &v301 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = sub_25268ED70();
  *&v367 = *(v368 - 8);
  MEMORY[0x28223BE20](v368);
  v366 = (&v301 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v339 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v316 = *(v339 - 8);
  MEMORY[0x28223BE20](v339);
  v377 = &v301 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = sub_25268E530();
  v335 = *(v336 - 8);
  v33 = MEMORY[0x28223BE20](v336);
  v324 = &v301 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v304 = &v301 - v35;
  v373 = sub_25268E2E0();
  v372 = *(v373 - 8);
  v36 = MEMORY[0x28223BE20](v373);
  v371 = &v301 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v370 = &v301 - v38;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v39 = MEMORY[0x28223BE20](v369);
  v374 = (&v301 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x28223BE20](v39);
  v323 = &v301 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v362 = (&v301 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v311 = &v301 - v46;
  MEMORY[0x28223BE20](v45);
  v309 = (&v301 - v47);
  v365 = sub_25268EEA0();
  v364 = *(v365 - 8);
  v48 = MEMORY[0x28223BE20](v365);
  v322 = &v301 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v387 = &v301 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v310 = &v301 - v53;
  MEMORY[0x28223BE20](v52);
  v312 = &v301 - v54;
  v308 = sub_25268FFD0();
  v307 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v306 = &v301 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  MEMORY[0x28223BE20](v56 - 8);
  v328 = &v301 - v57;
  v353 = sub_252690050();
  v352 = *(v353 - 8);
  v58 = MEMORY[0x28223BE20](v353);
  v305 = &v301 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v351 = &v301 - v60;
  v332 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  v61 = MEMORY[0x28223BE20](v332);
  v331 = &v301 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v383 = &v301 - v63;
  v327 = type metadata accessor for AccessoryControl.StatusProvider();
  v64 = MEMORY[0x28223BE20](v327);
  v326 = &v301 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v395 = (&v301 - v66);
  v67 = sub_25268F9E0();
  v396 = *(v67 - 8);
  v397 = v67;
  v68 = MEMORY[0x28223BE20](v67);
  v338 = &v301 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v393 = &v301 - v70;
  v71 = sub_25268F4D0();
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v74 = &v301 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  v76 = MEMORY[0x28223BE20](v75 - 8);
  v337 = &v301 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x28223BE20](v76);
  v333 = &v301 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v325 = &v301 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v84 = &v301 - v83;
  MEMORY[0x28223BE20](v82);
  v86 = &v301 - v85;
  v87 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v87 - 8);
  v376 = a2;
  v392 = &v301 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252394074(a2, v392, type metadata accessor for AccessoryControl.ValueDestination);
  v89 = *(v72 + 104);
  v321 = *MEMORY[0x277D160A8];
  (v89)(v74);
  v398 = v17;
  v90 = *(v17 + 76);
  v91 = v399;
  v394 = v86;
  sub_25268FD80();
  v92 = *(v72 + 8);
  v92(v74, v71);
  v363 = *MEMORY[0x277D160B0];
  v334 = v72 + 104;
  v388 = v89;
  (v89)(v74);
  v354 = v90;
  v93 = v91;
  v94 = v84;
  sub_25268FD80();
  v95 = v396;
  v355 = v74;
  v356 = v71;
  v382 = v72 + 8;
  *&v391 = v92;
  v92(v74, v71);
  v96 = v397;
  v97 = v95 + 48;
  v98 = *(v95 + 48);
  if (v98(v94, 1, v397) == 1)
  {
    sub_252372288(v94, &qword_27F4DB208);
    sub_252372288(v394, &qword_27F4DB208);
    sub_252394C40(v392, type metadata accessor for AccessoryControl.ValueDestination);
    return MEMORY[0x277D84F90];
  }

  v100 = *(v95 + 32);
  v303 = v95 + 32;
  v302 = v100;
  v100(v393, v94, v96);
  v101 = v326;
  swift_storeEnumTagMultiPayload();
  v102 = (v93 + v398[11]);
  v103 = v102[1];
  if (v103)
  {
    v104 = *v102;

    sub_252394C40(v101, type metadata accessor for AccessoryControl.StatusProvider);
    v105 = v395;
    *v395 = v104;
    v105[1] = v103;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_2523942D4(v101, v395, type metadata accessor for AccessoryControl.StatusProvider);
  }

  v106 = v365;
  v107 = v351;
  v108 = v325;
  v327 = 0x408F400000000000;
  sub_25237153C(v394, v325, &qword_27F4DB208);
  v109 = v98(v108, 1, v96);
  v330 = v97;
  v329 = v98;
  if (v109 == 1)
  {
    sub_252372288(v108, &qword_27F4DB208);
    v110 = v328;
    (*(v352 + 56))(v328, 1, 1, v353);
LABEL_9:
    sub_252372288(v110, &qword_27F4DB230);
    goto LABEL_10;
  }

  v110 = v328;
  sub_25268F9D0();
  (*(v396 + 8))(v108, v96);
  v111 = v352;
  v112 = v353;
  if ((*(v352 + 48))(v110, 1, v353) == 1)
  {
    goto LABEL_9;
  }

  (*(v111 + 32))(v107, v110, v112);
  v154 = v305;
  (*(v111 + 16))(v305, v107, v112);
  if ((*(v111 + 88))(v154, v112) == *MEMORY[0x277D16CC8])
  {
    (*(v111 + 96))(v154, v112);
    (*(v307 + 32))(v306, v154, v308);
    (*(v364 + 104))(v312, *MEMORY[0x277D15CE8], v106);
    v387 = sub_25268FFB0();
    v362 = sub_25268FFA0();
    v324 = sub_25268FFC0();
    LODWORD(v328) = *(v376 + *(type metadata accessor for AccessoryControlSolver.Context() + 20));
    v155 = v399;
    v156 = v370;
    sub_25268E250();
    v326 = sub_25268E2D0();
    v325 = v157;
    v158 = *(v372 + 8);
    v159 = v373;
    v158(v156, v373);
    v160 = v371;
    sub_25268E250();
    v161 = type metadata accessor for IconDescriptor();
    v162 = v309;
    sub_25268E2C0();
    v158(v160, v159);
    v163 = v325;
    *v162 = v326;
    v162[1] = v163;
    *(v162 + *(v161 + 24)) = 0;
    sub_25268E260();
    v326 = sub_25268E2D0();
    v325 = v164;
    v158(v156, v159);
    sub_25268E260();
    v165 = (v162 + *(v369 + 28));
    sub_25268E2C0();
    v158(v160, v159);
    v125 = v364;
    v166 = v155;
    v145 = v365;
    v167 = v325;
    *v165 = v326;
    v165[1] = v167;
    *(v165 + *(v161 + 24)) = 0;
    LOBYTE(v402) = v328;
    v328 = sub_2523F5EC0(v166, &v402);
    v326 = v168;
    sub_25237153C(v162, v311, &qword_27F4DAD88);
    v325 = sub_25268E510();
    (*(v125 + 16))(v310, v312, v145);
    v169 = v335;
    v170 = v304;
    v171 = v336;
    (*(v335 + 104))(v304, *MEMORY[0x277D15720], v336);
    sub_252394D50(&qword_27F4DADD8, MEMORY[0x277D158E0]);
    sub_252692D40();
    sub_252692D40();
    if (v402 != v400 || v403 != v401)
    {
      v172 = sub_2526933B0();
      v173 = 0x406F400000000000;
      if (v172)
      {
        v173 = 0x408F400000000000;
      }

      v327 = v173;
    }

    v140 = v387;
    v141 = v362;
    v139 = v324;
    (*(v169 + 8))(v170, v171);

    v136 = v332;
    v137 = v331;
    sub_252394074(v395, &v331[*(v332 + 56)], type metadata accessor for AccessoryControl.StatusProvider);
    v138 = sub_252692340();
    sub_252372288(v309, &qword_27F4DAD88);
    (*(v125 + 8))(v312, v145);
    (*(v307 + 8))(v306, v308);
    (*(v352 + 8))(v351, v353);
    v144 = v356;
    v146 = v355;
    v142 = v311;
    v143 = v310;
    goto LABEL_16;
  }

  v300 = *(v111 + 8);
  v300(v107, v112);
  v300(v154, v112);
LABEL_10:
  (*(v364 + 104))(v387, *MEMORY[0x277D15CE8], v106);
  LODWORD(v353) = *(v376 + *(type metadata accessor for AccessoryControlSolver.Context() + 20));
  v113 = v399;
  v114 = v370;
  sub_25268E250();
  v352 = sub_25268E2D0();
  v351 = v115;
  v116 = *(v372 + 8);
  v117 = v373;
  v116(v114, v373);
  v118 = v371;
  sub_25268E250();
  v119 = type metadata accessor for IconDescriptor();
  v120 = v362;
  sub_25268E2C0();
  v116(v118, v117);
  v121 = v351;
  *v120 = v352;
  v120[1] = v121;
  *(v120 + *(v119 + 24)) = 0;
  sub_25268E260();
  v352 = sub_25268E2D0();
  v351 = v122;
  v116(v114, v117);
  sub_25268E260();
  v123 = (v120 + *(v369 + 28));
  sub_25268E2C0();
  v116(v118, v117);
  v124 = v113;
  v125 = v364;
  v126 = v351;
  *v123 = v352;
  v123[1] = v126;
  *(v123 + *(v119 + 24)) = 0;
  v127 = v365;
  LOBYTE(v402) = v353;
  v328 = sub_2523F5EC0(v124, &v402);
  v326 = v128;
  v129 = v323;
  sub_25237153C(v120, v323, &qword_27F4DAD88);
  v325 = sub_25268E510();
  v130 = v322;
  (*(v125 + 16))(v322, v387, v127);
  v131 = v335;
  v132 = v324;
  v133 = v336;
  (*(v335 + 104))(v324, *MEMORY[0x277D15720], v336);
  sub_252394D50(&qword_27F4DADD8, MEMORY[0x277D158E0]);
  sub_252692D40();
  sub_252692D40();
  if (v402 != v400 || v403 != v401)
  {
    v134 = sub_2526933B0();
    v135 = 0x406F400000000000;
    if (v134)
    {
      v135 = 0x408F400000000000;
    }

    v327 = v135;
  }

  (*(v131 + 8))(v132, v133);

  v136 = v332;
  v137 = v331;
  sub_252394074(v395, &v331[*(v332 + 56)], type metadata accessor for AccessoryControl.StatusProvider);
  v138 = sub_252692340();
  sub_252372288(v362, &qword_27F4DAD88);
  (*(v125 + 8))(v387, v127);
  v139 = 1.0;
  v140 = 0.0;
  v141 = 100.0;
  v142 = v129;
  v143 = v130;
  v144 = v356;
  v145 = v127;
  v146 = v355;
LABEL_16:
  sub_2523714D4(v142, v137, &qword_27F4DAD88);
  *(v137 + v136[5]) = v326;
  *(v137 + v136[6]) = v328;
  *(v137 + v136[12]) = v325;
  *(v137 + v136[13]) = v138;
  (*(v125 + 32))(v137 + v136[7], v143, v145);
  *(v137 + v136[8]) = v140;
  *(v137 + v136[9]) = v141;
  *(v137 + v136[10]) = v139;
  v147 = v137 + v136[11];
  *v147 = v327;
  *(v147 + 8) = 0;
  sub_2523942D4(v137, v383, type metadata accessor for AccessoryControl.IncrementalConfig);
  (v388)(v146, v363, v144);
  v148 = sub_25268FE70();
  (v391)(v146, v144);
  if (v148 == 2 || (v148 & 1) != 0)
  {
    (v388)(v146, v321, v144);
    v149 = sub_25268FEA0();
    v151 = v150;
    (v391)(v146, v144);
    v152 = v394;
    v153 = v397;
    if (v151)
    {
      v149 = 0;
    }
  }

  else
  {
    v149 = 0;
    v152 = v394;
    v153 = v397;
  }

  v174 = v377;
  *v366 = v149;
  (*(v367 + 104))();
  v175 = v333;
  sub_25237153C(v152, v333, &qword_27F4DB208);
  if (v329(v175, 1, v153) == 1)
  {
    sub_252372288(v175, &qword_27F4DB208);
    v176 = 0;
  }

  else
  {
    v177 = v313;
    sub_25268F980();
    (*(v396 + 8))(v175, v153);
    v176 = sub_25268F960();
    (*(v314 + 8))(v177, v315);
  }

  v178 = v339;
  (*(v367 + 32))(v174, v366, v368);
  *(v174 + *(v178 + 20)) = v176 & 1;
  (v388)(v146, v363, v144);
  v179 = v399;
  v180 = sub_25268FE70();
  (v391)(v146, v144);
  v181 = v180 == 2;
  v182 = v180 != 2;
  v183 = v180 & 1;
  v184 = v337;
  sub_25237153C(v152, v337, &qword_27F4DB208);
  if (v329(v184, 1, v153) == 1)
  {
    sub_252393F68(v183, 0, v182, 0, v181);
    sub_252372288(v184, &qword_27F4DB208);
    v185 = 1;
    v186 = v386;
    v187 = v374;
    v188 = v379;
  }

  else
  {
    v388 = v181;
    v302(v338, v184, v153);
    v189 = v317;
    v190 = *(v317 + 40);
    v387 = v183;
    v191 = v340;
    sub_252394074(v174, v340 + v190, type metadata accessor for AccessoryControl.IncrementalState);
    (*(v316 + 56))(v191 + v190, 0, 1, v178);
    v192 = v392;
    sub_252394074(v392, v191 + *(v189 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v368 = v182;
    v193 = v359;
    sub_252394074(v179, v359, type metadata accessor for HAPControlSolver.Source);
    v194 = (*(v357 + 80) + 16) & ~*(v357 + 80);
    v195 = swift_allocObject();
    sub_2523942D4(v193, v195 + v194, type metadata accessor for HAPControlSolver.Source);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB008);
    v196 = swift_allocObject();
    v367 = xmmword_252694E90;
    *(v196 + 16) = xmmword_252694E90;
    *(v196 + 32) = sub_252393F80;
    *(v196 + 40) = v195;
    *v191 = v196;
    v197 = v360;
    v198 = v318;
    sub_252394074(v192, v318 + *(v360 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v199 = v379;
    sub_252394074(v399, v193, type metadata accessor for HAPControlSolver.Source);
    v179 = v399;
    v200 = swift_allocObject();
    v201 = v200 + v194;
    v202 = v199;
    sub_2523942D4(v193, v201, type metadata accessor for HAPControlSolver.Source);
    v203 = v197;
    v204 = (v198 + *(v197 + 40));
    *v204 = v387;
    v204[1] = 0;
    v204[2] = v368;
    v204[3] = 0;
    v204[4] = v388;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB018);
    v205 = swift_allocObject();
    *(v205 + 16) = v367;
    *(v205 + 32) = sub_252394D98;
    *(v205 + 40) = v200;
    *v198 = v205;
    v206 = v361;
    v207 = v338;
    sub_25268F9B0();
    (*(v396 + 8))(v207, v397);
    v208 = v386;
    v209 = v386 + v202[5];
    v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
    v211 = *(v210 + 48);
    v212 = *(v210 + 64);
    sub_252394074(v383, v209, type metadata accessor for AccessoryControl.IncrementalConfig);
    sub_2523714D4(v340, v209 + v211, &qword_27F4DAD78);
    sub_2523714D4(v198, v209 + v212, &qword_27F4DAD80);
    (*(v319 + 56))(v209 + v212, 0, 1, v203);
    type metadata accessor for AccessoryControl.State(0);
    swift_storeEnumTagMultiPayload();
    (*(v384 + 32))(v208, v206, v385);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v188 = v202;
    v186 = v208;
    v185 = 0;
    v213 = (v208 + v202[7]);
    v214 = v202[9];
    *(v208 + v214) = 16;
    *(v208 + v202[6]) = 0;
    *v213 = 0;
    v213[1] = 0;
    *(v208 + v202[8]) = 1028;
    *(v208 + v214) = 16;
    *(v208 + v202[10]) = 1;
    v187 = v374;
  }

  (*(v378 + 56))(v186, v185, 1, v188);
  swift_storeEnumTagMultiPayload();
  v215 = v370;
  sub_25268E250();
  v388 = sub_25268E2D0();
  v387 = v216;
  v217 = *(v372 + 8);
  v218 = v373;
  v217(v215, v373);
  v219 = v371;
  sub_25268E250();
  v220 = type metadata accessor for IconDescriptor();
  sub_25268E2C0();
  v217(v219, v218);
  v221 = v387;
  *v187 = v388;
  v187[1] = v221;
  *(v187 + *(v220 + 24)) = 0;
  sub_25268E260();
  v388 = sub_25268E2D0();
  v387 = v222;
  v217(v215, v218);
  sub_25268E260();
  v223 = (v187 + *(v369 + 28));
  sub_25268E2C0();
  v217(v219, v218);
  v224 = v387;
  *v223 = v388;
  v223[1] = v224;
  *(v223 + *(v220 + 24)) = 0;
  v225 = v398;
  v226 = sub_25268E510();
  v227 = v375;
  sub_25237153C(v187, v375, &qword_27F4DAD88);
  v228 = v342;
  sub_252394074(v389, v227 + *(v342 + 24), type metadata accessor for ControlTextModifier.Config);
  v229 = (v179 + v225[7]);
  v230 = *v229;
  v231 = v229[1];
  sub_252394074(v395, v227 + v228[11], type metadata accessor for AccessoryControl.StatusProvider);
  v232 = v227 + v228[7];
  *v232 = 0u;
  *(v232 + 16) = 0u;
  *(v232 + 32) = -1;
  v233 = v227 + v228[8];
  *v233 = 0u;
  *(v233 + 16) = 0u;
  *(v233 + 32) = -1;
  v373 = v228[12];
  *(v227 + v228[5]) = v226;
  v234 = (v227 + v228[10]);
  v387 = v230;
  *v234 = v230;
  v234[1] = v231;
  v235 = *v232;
  v236 = *(v232 + 8);
  v237 = *(v232 + 16);
  v238 = *(v232 + 24);
  LOBYTE(v223) = *(v232 + 32);
  v388 = v231;

  sub_252376DA8(v235, v236, v237, v238, v223);
  *v232 = 0u;
  *(v232 + 16) = 0u;
  *(v232 + 32) = -1;
  sub_252376DA8(*v233, *(v233 + 8), *(v233 + 16), *(v233 + 24), *(v233 + 32));
  *v233 = 0u;
  *(v233 + 16) = 0u;
  *(v233 + 32) = -1;
  *(v227 + v373) = 0;
  *(v227 + v228[9]) = 0;
  v239 = v399;
  if (*(v399 + v398[10]) == 1)
  {
    v240 = v355;
    sub_25268F9A0();
    v241 = sub_25268FE70();
    (v391)(v240, v356);
    sub_252372288(v374, &qword_27F4DAD88);
    sub_252394C40(v389, type metadata accessor for ControlTextModifier.Config);
    v242 = 0;
    v243 = v241 & 1;
    v244 = 1;
  }

  else
  {
    sub_252372288(v374, &qword_27F4DAD88);
    sub_252394C40(v389, type metadata accessor for ControlTextModifier.Config);
    v243 = 0;
    v244 = 0;
    v242 = 1;
  }

  v245 = v350;
  v246 = v381;
  v247 = v392;
  sub_2523942D4(v375, v381, type metadata accessor for AccessoryControl.BinaryViewConfig);
  v248 = v360;
  v249 = v380;
  sub_252394074(v247, v380 + *(v360 + 36), type metadata accessor for AccessoryControl.ValueDestination);
  v250 = v239;
  v251 = v359;
  sub_252394074(v250, v359, type metadata accessor for HAPControlSolver.Source);
  v252 = (*(v357 + 80) + 16) & ~*(v357 + 80);
  v253 = swift_allocObject();
  sub_2523942D4(v251, v253 + v252, type metadata accessor for HAPControlSolver.Source);
  v254 = (v249 + *(v248 + 40));
  *v254 = v243;
  v254[1] = 0;
  v254[2] = v244;
  v254[3] = 0;
  v254[4] = v242;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB018);
  v255 = swift_allocObject();
  v391 = xmmword_252694E90;
  *(v255 + 16) = xmmword_252694E90;
  *(v255 + 32) = sub_252393F7C;
  *(v255 + 40) = v253;
  *v249 = v255;
  v256 = v361;
  sub_25268F9B0();
  v257 = v379;
  v258 = &v245[*(v379 + 20)];
  v259 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);
  sub_252394074(v246, v258, type metadata accessor for AccessoryControl.BinaryViewConfig);
  sub_25237153C(v249, v258 + v259, &qword_27F4DAD80);
  type metadata accessor for AccessoryControl.State(0);
  swift_storeEnumTagMultiPayload();
  v260 = v399;
  LOBYTE(v259) = *(v399 + v398[13]);
  v261 = (v399 + v398[14]);
  v263 = *v261;
  v262 = v261[1];
  (*(v384 + 32))(v245, v256, v385);
  type metadata accessor for AccessoryControl.ElementIdentifier();
  swift_storeEnumTagMultiPayload();
  v264 = &v245[v257[7]];
  v265 = v257[9];
  v245[v265] = 16;
  v245[v257[6]] = v259;
  *v264 = v263;
  *(v264 + 1) = v262;
  *&v245[v257[8]] = 1027;
  v245[v265] = 16;
  v245[v257[10]] = 1;

  v266 = v260;
  sub_252390B44(v260, v376, v390);
  v267 = v386;
  v268 = v343;
  sub_25237153C(v386, v343, &qword_27F4DB120);
  v269 = *(v378 + 48);
  v270 = v245;
  if (v269(v268, 1, v257) == 1)
  {
    v271 = v245;
    v272 = v349;
    sub_252394074(v271, v349, type metadata accessor for AccessoryControl);
    v273 = v269(v268, 1, v257);
    v274 = v347;
    if (v273 != 1)
    {
      sub_252372288(v268, &qword_27F4DB120);
    }
  }

  else
  {
    v272 = v349;
    sub_2523942D4(v268, v349, type metadata accessor for AccessoryControl);
    v274 = v347;
  }

  sub_25237153C(v390, v274, &qword_27F4DB120);
  *(v272 + v257[6]) = 0;
  if (!v269(v274, 1, v257))
  {
    *(v274 + v257[6]) = 1;
  }

  v275 = v344;
  sub_25237153C(v274, v344, &qword_27F4DB120);
  v276 = v269(v275, 1, v257);
  v277 = (v384 + 16);
  if (v276 == 1)
  {
    sub_252372288(v275, &qword_27F4DB120);
    v278 = v348;
    (*v277)(v348, v266, v385);
    swift_storeEnumTagMultiPayload();
    v279 = v345;
    sub_252394074(v272, v278 + *(v345 + 20), type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v280 = (v278 + *(v279 + 28));
    v281 = (v278 + *(v279 + 24));
    v282 = v387;
    v283 = v388;
    *v281 = v387;
    v281[1] = v283;
    *v280 = v282;
    v280[1] = v283;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
    v284 = (*(v346 + 80) + 32) & ~*(v346 + 80);
    v285 = swift_allocObject();
    *(v285 + 16) = v391;
    sub_2523942D4(v278, v285 + v284, type metadata accessor for AccessoryControlGroup);
    swift_bridgeObjectRetain_n();
    sub_252394C40(v272, type metadata accessor for AccessoryControl);
    sub_252372288(v390, &qword_27F4DB120);
    sub_252372288(v380, &qword_27F4DAD80);
    sub_252394C40(v381, type metadata accessor for AccessoryControl.BinaryViewConfig);
    sub_252394C40(v377, type metadata accessor for AccessoryControl.IncrementalState);
    sub_252394C40(v383, type metadata accessor for AccessoryControl.IncrementalConfig);
    sub_252394C40(v395, type metadata accessor for AccessoryControl.StatusProvider);
    (*(v396 + 8))(v393, v397);
    sub_252372288(v394, &qword_27F4DB208);
    sub_252394C40(v392, type metadata accessor for AccessoryControl.ValueDestination);
    sub_252394C40(v270, type metadata accessor for AccessoryControl);
    v286 = v386;
  }

  else
  {
    v287 = v266;
    v288 = v270;
    v289 = v272;
    v290 = v320;
    sub_2523942D4(v275, v320, type metadata accessor for AccessoryControl);
    v291 = v348;
    (*v277)(v348, v287, v385);
    swift_storeEnumTagMultiPayload();
    v292 = v345;
    v293 = v291 + *(v345 + 20);
    v294 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0) + 48);
    sub_252394074(v289, v293, type metadata accessor for AccessoryControl);
    sub_252394074(v290, v293 + v294, type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v295 = (v291 + *(v292 + 28));
    v296 = (v291 + *(v292 + 24));
    v297 = v387;
    v298 = v388;
    *v296 = v387;
    v296[1] = v298;
    *v295 = v297;
    v295[1] = v298;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
    v299 = (*(v346 + 80) + 32) & ~*(v346 + 80);
    v285 = swift_allocObject();
    *(v285 + 16) = v391;
    sub_2523942D4(v291, v285 + v299, type metadata accessor for AccessoryControlGroup);
    swift_bridgeObjectRetain_n();
    sub_252394C40(v290, type metadata accessor for AccessoryControl);
    sub_252394C40(v289, type metadata accessor for AccessoryControl);
    sub_252372288(v390, &qword_27F4DB120);
    sub_252372288(v380, &qword_27F4DAD80);
    sub_252394C40(v381, type metadata accessor for AccessoryControl.BinaryViewConfig);
    sub_252394C40(v377, type metadata accessor for AccessoryControl.IncrementalState);
    sub_252394C40(v383, type metadata accessor for AccessoryControl.IncrementalConfig);
    sub_252394C40(v395, type metadata accessor for AccessoryControl.StatusProvider);
    (*(v396 + 8))(v393, v397);
    sub_252372288(v394, &qword_27F4DB208);
    sub_252394C40(v392, type metadata accessor for AccessoryControl.ValueDestination);
    sub_252394C40(v288, type metadata accessor for AccessoryControl);
    v286 = v267;
  }

  sub_252372288(v286, &qword_27F4DB120);
  sub_252372288(v274, &qword_27F4DB120);
  return v285;
}

uint64_t sub_25238FEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v21 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v11, &qword_27F4DB218);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_252372288(v11, &qword_27F4DB218);
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v17 = __swift_project_value_buffer(v16, qword_27F4DB8A0);
    return sub_252394074(v17, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    sub_2523942D4(v11, v15, type metadata accessor for AccessoryControl.IncrementalState);
    sub_2523901CC(v15, a2, v8);
    sub_252394C40(v15, type metadata accessor for AccessoryControl.IncrementalState);
    v19 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
    v20 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v20) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210);

    *(a3 + v20) = 0;
  }

  return result;
}

uint64_t sub_2523901CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_25268ED70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6);
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D15BB8])
  {
    (*(v7 + 96))(v9, v6);
    v10 = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228);
    v12 = *(*(v11 - 8) + 72);
    v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_252694EA0;
    v15 = v14 + v13;
    v16 = v15 + *(v11 + 48);
    v17 = *MEMORY[0x277D160A8];
    v18 = sub_25268F4D0();
    v19 = *(*(v18 - 8) + 104);
    v34 = a2;
    (v19)(v15, v17, v18);
    *(v16 + 24) = MEMORY[0x277D839F8];
    *v16 = v10;
    v20 = v15 + v12 + *(v11 + 48);
    v19();
    *(v20 + 24) = MEMORY[0x277D839B0];
    *v20 = v10 > 0.0;
    v21 = sub_25256E63C(v14);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v22 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v23 = *(v22 + 24);
    v24 = sub_25268F140();
    (*(*(v24 - 8) + 56))(a3 + v23, 1, 1, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v25 = sub_25268DA10();
    v26 = *(v25 - 8);
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_252694E90;
    (*(v26 + 16))(v28 + v27, v34, v25);
    v29 = sub_25240C1FC(v28);
    swift_setDeallocating();
    (*(v26 + 8))(v28 + v27, v25);
    swift_deallocClassInstance();
    v30 = sub_2523F75C4(v21);

    *a3 = v30;
    a3[1] = 0;
    *(a3 + *(v22 + 28)) = v29;
    return (*(*(v22 - 8) + 56))(a3, 0, 1, v22);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    v32 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    return (*(*(v32 - 8) + 56))(a3, 1, 1, v32);
  }
}

uint64_t sub_252390670@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252694E90;
  v9 = v8 + v7;
  v10 = v9 + v6[14];
  v11 = *MEMORY[0x277D160B0];
  v12 = sub_25268F4D0();
  (*(*(v12 - 8) + 104))(v9, v11, v12);
  *(v10 + 24) = MEMORY[0x277D839B0];
  *v10 = v5;
  v13 = sub_25256E63C(v8);
  swift_setDeallocating();
  sub_252372288(v9, &qword_27F4DB228);
  swift_deallocClassInstance();
  v14 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v15 = *(v14 + 24);
  v16 = sub_25268F140();
  (*(*(v16 - 8) + 56))(a3 + v15, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
  v17 = sub_25268DA10();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_252694E90;
  (*(v18 + 16))(v20 + v19, a2, v17);
  v21 = sub_25240C1FC(v20);
  swift_setDeallocating();
  (*(v18 + 8))(v20 + v19, v17);
  swift_deallocClassInstance();
  v22 = sub_2523F75C4(v13);

  *a3 = v22;
  a3[1] = 0;
  *(a3 + *(v14 + 28)) = v21;
  v23 = *(*(v14 - 8) + 56);

  return v23(a3, 0, 1, v14);
}

uint64_t sub_2523909A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-v7 - 8];
  v9 = *(a1 + 32);
  if (v9 == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v11 = __swift_project_value_buffer(v10, qword_27F4DB8A0);
    return sub_252394074(v11, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v13 = *(a1 + 24);
    v14 = *(a1 + 16);
    v15 = *(a1 + 8);
    v19[0] = *a1 & 1;
    v20 = v15;
    v21 = v14 & 1;
    v22 = v13;
    v23 = v9;
    sub_252390670(v19, a2, v8);
    v16 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
    v17 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v17) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210);

    *(a3 + v17) = 0;
  }

  return result;
}

uint64_t sub_252390B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v250 = a2;
  v266 = a3;
  v262 = sub_25268DA10();
  v267 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v258 = &v220 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControlSolver.Context();
  v248 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v249 = v6;
  v251 = &v220 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HAPControlSolver.Source();
  v245 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v246 = v8;
  v247 = &v220 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298);
  MEMORY[0x28223BE20](v244);
  v269 = (&v220 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v10 - 8);
  v261 = &v220 - v11;
  v275 = sub_25268ED20();
  v268 = *(v275 - 8);
  v12 = MEMORY[0x28223BE20](v275);
  v231 = (&v220 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v220 = &v220 - v15;
  MEMORY[0x28223BE20](v14);
  v222 = &v220 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v252 = &v220 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v273 = &v220 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  MEMORY[0x28223BE20](v21 - 8);
  v253 = &v220 - v22;
  v226 = sub_25268FFD0();
  v225 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v224 = &v220 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  v24 = MEMORY[0x28223BE20](v230);
  v241 = &v220 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v229 = &v220 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v221 = &v220 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v223 = &v220 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v232 = (&v220 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v233 = &v220 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v239 = &v220 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v234 = &v220 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v240 = &v220 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v237 = &v220 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v254 = &v220 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v228 = (&v220 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v272 = &v220 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v271 = (&v220 - v51);
  MEMORY[0x28223BE20](v50);
  v270 = (&v220 - v52);
  v53 = sub_25268F4D0();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v56 = &v220 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  v58 = MEMORY[0x28223BE20](v57 - 8);
  v236 = &v220 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v227 = &v220 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v235 = &v220 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v259 = &v220 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v243 = &v220 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v263 = &v220 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v276 = &v220 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v74 = &v220 - v73;
  MEMORY[0x28223BE20](v72);
  v76 = &v220 - v75;
  v77 = *(v54 + 104);
  v77(v56, *MEMORY[0x277D162D8], v53);
  v278 = v7;
  sub_25268FD80();
  v78 = v54 + 8;
  v79 = *(v54 + 8);
  v277 = v78;
  v79(v56, v53);
  v77(v56, *MEMORY[0x277D160B8], v53);
  v274 = v74;
  sub_25268FD80();
  v79(v56, v53);
  v77(v56, *MEMORY[0x277D16168], v53);
  v80 = a1;
  v81 = v276;
  sub_25268FD80();
  v79(v56, v53);
  v82 = v81;
  v83 = sub_25268F9E0();
  v84 = *(v83 - 8);
  v85 = *(v84 + 48);
  LODWORD(v277) = v85(v81, 1, v83);
  v86 = v85(v76, 1, v83) != 1 && v85(v274, 1, v83) != 1;
  v87 = v278[20];
  v264 = v80;
  v238 = v87;
  v265 = sub_25268F160();
  v88 = v273;
  v89 = v263;
  if (!v86 && v277 == 1)
  {
    sub_252372288(v82, &qword_27F4DB208);
    sub_252372288(v76, &qword_27F4DB208);
    v90 = type metadata accessor for AccessoryControl(0);
    (*(*(v90 - 8) + 56))(v266, 1, 1, v90);
LABEL_86:
    v172 = v274;
    return sub_252372288(v172, &qword_27F4DB208);
  }

  v255 = v76;
  v91 = v264;
  v92 = sub_252393574();
  v93 = *(v268 + 56);
  v257 = v268 + 56;
  v256 = v93;
  v93(v270, 1, 1, v275);
  v94 = *(v91 + v278[18]);
  v293 = 1;
  v292 = 1;
  v260 = v277 != 1;
  v242 = v94;
  if (v277 == 1)
  {

LABEL_13:
    LODWORD(v253) = 0;
    LODWORD(v263) = 0;
    LODWORD(v226) = 1;
    goto LABEL_14;
  }

  sub_25237153C(v82, v89, &qword_27F4DB208);
  v95 = v85(v89, 1, v83);

  if (v95 == 1)
  {
    sub_252372288(v89, &qword_27F4DB208);
    v96 = sub_252690050();
    v97 = v253;
    (*(*(v96 - 8) + 56))(v253, 1, 1, v96);
LABEL_12:
    sub_252372288(v97, &qword_27F4DB230);
    goto LABEL_13;
  }

  v98 = v89;
  v97 = v253;
  sub_25268F9D0();
  (*(v84 + 8))(v98, v83);
  v99 = sub_252690050();
  v100 = *(v99 - 8);
  if ((*(v100 + 48))(v97, 1, v99) == 1)
  {
    goto LABEL_12;
  }

  if ((*(v100 + 88))(v97, v99) != *MEMORY[0x277D16CC8])
  {
    (*(v100 + 8))(v97, v99);
    goto LABEL_13;
  }

  (*(v100 + 96))(v97, v99);
  v141 = v225;
  v142 = v224;
  v143 = v97;
  v144 = v226;
  (*(v225 + 32))(v224, v143, v226);
  v145 = sub_25268FFA0();
  v146 = 0xFFFFLL;
  if (v145 < 0xFFFF)
  {
    v146 = v145;
  }

  LODWORD(v263) = v146 & ~(v146 >> 63);
  v292 = 0;
  v147 = sub_25268FFB0();
  (*(v141 + 8))(v142, v144);
  LODWORD(v226) = 0;
  v148 = 0xFFFFLL;
  if (v147 < 0xFFFF)
  {
    v148 = v147;
  }

  v82 = v276;
  LODWORD(v253) = v148 & ~(v148 >> 63);
  v293 = 0;
LABEL_14:
  v101 = v272;
  v102 = v259;
  if (v86)
  {
    v103 = v255;
    v102 = v243;
  }

  else
  {
    v103 = v82;
  }

  sub_25237153C(v103, v102, &qword_27F4DB208);
  if (v85(v102, 1, v83) == 1)
  {
    sub_252372288(v102, &qword_27F4DB208);
    v104 = 1;
  }

  else
  {
    sub_25268F9B0();
    (*(v84 + 8))(v102, v83);
    v104 = 0;
  }

  (*(v267 + 56))(v88, v104, 1, v262);
  v105 = v275;
  v106 = v256;
  v256(v271, 1, 1, v275);
  v106(v101, 1, 1, v105);
  LODWORD(v243) = v86;
  if (v86)
  {
    v107 = v235;
    sub_25237153C(v255, v235, &qword_27F4DB208);
    if (v85(v107, 1, v83) == 1)
    {
      v108 = v107;
LABEL_23:
      sub_252372288(v108, &qword_27F4DB208);
      goto LABEL_25;
    }

    v109 = sub_25268F950();
    v111 = v110;
    v112 = *(v84 + 8);
    v112(v107, v83);
    if ((v111 & 1) == 0)
    {
      v149 = v227;
      sub_25237153C(v274, v227, &qword_27F4DB208);
      if (v85(v149, 1, v83) == 1)
      {
        v108 = v149;
        goto LABEL_23;
      }

      v151 = sub_25268F950();
      v153 = v152;
      v112(v149, v83);
      if ((v153 & 1) == 0)
      {
        v154 = v271;
        sub_252372288(v271, &qword_27F4DB2A8);
        *&v155.f64[0] = v109;
        *&v155.f64[1] = v151;
        *v154 = vdivq_f64(v155, xmmword_252695320);
        v156 = v275;
        (*(v268 + 104))(v154, *MEMORY[0x277D15B38], v275);
        v256(v154, 0, 1, v156);
      }
    }
  }

LABEL_25:
  v113 = v270;
  v114 = v272;
  if (v277 != 1)
  {
    v115 = v236;
    sub_25237153C(v276, v236, &qword_27F4DB208);
    if (v85(v115, 1, v83) == 1)
    {
      sub_252372288(v115, &qword_27F4DB208);
    }

    else
    {
      v116 = sub_25268F9C0();
      v118 = v117;
      (*(v84 + 8))(v115, v83);
      if ((v118 & 1) == 0)
      {
        sub_252372288(v114, &qword_27F4DB2A8);
        v119 = 0xFFFFLL;
        if (v116 < 0xFFFF)
        {
          v119 = v116;
        }

        v120 = v228;
        *v228 = v119 & ~(v119 >> 63);
        v121 = v275;
        (*(v268 + 104))(v120, *MEMORY[0x277D15B28], v275);
        v256(v120, 0, 1, v121);
        sub_2523714D4(v120, v114, &qword_27F4DB2A8);
      }
    }
  }

  LODWORD(v259) = v265 & 1;
  v122 = v254;
  sub_25237153C(v114, v254, &qword_27F4DB2A8);
  v123 = *(v268 + 48);
  v124 = v275;
  v125 = v123(v122, 1, v275);
  sub_252372288(v122, &qword_27F4DB2A8);
  v126 = v125 == 1;
  v127 = v124;
  v128 = v271;
  if (!v126)
  {
    v129 = v237;
    sub_25237153C(v271, v237, &qword_27F4DB2A8);
    if (v123(v129, 1, v124) == 1)
    {
      sub_252372288(v113, &qword_27F4DB2A8);
      sub_252372288(v129, &qword_27F4DB2A8);
      v130 = v114;
LABEL_44:
      v140 = v113;
LABEL_64:
      sub_25237153C(v130, v140, &qword_27F4DB2A8);
      goto LABEL_65;
    }

    sub_252372288(v129, &qword_27F4DB2A8);
  }

  v131 = v240;
  sub_25237153C(v114, v240, &qword_27F4DB2A8);
  v132 = v123(v131, 1, v124);
  sub_252372288(v131, &qword_27F4DB2A8);
  if (v132 == 1)
  {
    v133 = v234;
    sub_25237153C(v128, v234, &qword_27F4DB2A8);
    if (v123(v133, 1, v124) != 1)
    {
      sub_252372288(v113, &qword_27F4DB2A8);
      sub_252372288(v133, &qword_27F4DB2A8);
      v130 = v128;
      goto LABEL_44;
    }

    sub_252372288(v133, &qword_27F4DB2A8);
  }

  v134 = v239;
  sub_25237153C(v114, v239, &qword_27F4DB2A8);
  v135 = v123(v134, 1, v124);
  sub_252372288(v134, &qword_27F4DB2A8);
  if (v135 != 1)
  {
    v136 = v233;
    sub_25237153C(v128, v233, &qword_27F4DB2A8);
    v137 = v123(v136, 1, v124);
    sub_252372288(v136, &qword_27F4DB2A8);
    if (v137 != 1)
    {
      v138 = v232;
      sub_25237153C(v114, v232, &qword_27F4DB2A8);
      if (v123(v138, 1, v124) == 1)
      {
        sub_252372288(v113, &qword_27F4DB2A8);
        v139 = v138;
LABEL_57:
        sub_252372288(v139, &qword_27F4DB2A8);
LABEL_62:
        v130 = v114;
LABEL_63:
        v140 = v113;
        goto LABEL_64;
      }

      v150 = v268;
      if ((*(v268 + 88))(v138, v127) != *MEMORY[0x277D15B28])
      {
        sub_252372288(v113, &qword_27F4DB2A8);
        (*(v150 + 8))(v138, v127);
        goto LABEL_62;
      }

      (*(v150 + 96))(v138, v127);
      if (v226 || v253 < *v138)
      {
        v139 = v113;
        goto LABEL_57;
      }

      v214 = v114;
      v215 = v223;
      sub_25237153C(v214, v223, &qword_27F4DB2A8);
      if (v123(v215, 1, v127) != 1)
      {
        v216 = *(v150 + 32);
        v217 = v222;
        v216(v222, v215, v127);
        v215 = v221;
        sub_25237153C(v128, v221, &qword_27F4DB2A8);
        if (v123(v215, 1, v127) != 1)
        {
          v218 = v220;
          v216(v220, v215, v127);
          LODWORD(v254) = sub_25248B14C(v218);
          v219 = *(v268 + 8);
          v219(v218, v127);
          sub_252372288(v113, &qword_27F4DB2A8);
          if (v254)
          {
            v216(v113, v222, v127);
            v256(v113, 0, 1, v127);
            goto LABEL_65;
          }

          v219(v222, v127);
          goto LABEL_92;
        }

        (*(v150 + 8))(v217, v127);
      }

      sub_252372288(v113, &qword_27F4DB2A8);
      sub_252372288(v215, &qword_27F4DB2A8);
LABEL_92:
      v130 = v128;
      goto LABEL_63;
    }
  }

LABEL_65:
  v157 = v264;
  if ((v265 & 1) == 0 || (sub_25268F150() & 1) == 0)
  {
LABEL_78:
    v177 = v241;
    sub_25237153C(v113, v241, &qword_27F4DB2A8);
    v178 = v261;
    v256(v261, 1, 1, v127);
    v179 = type metadata accessor for AccessoryControl.ColorState(0);
    v180 = v178 + *(v179 + 20);
    sub_252377048(v177, v178, &qword_27F4DB2A8);
    *v180 = v92;
    *(v180 + 8) = 0;
    v181 = *(*(v179 - 8) + 56);
    v181(v178, 0, 1, v179);
    if ((*(v157 + v278[10]) & 1) == 0)
    {
      sub_252372288(v178, &qword_27F4DB2A0);
      v181(v178, 1, 1, v179);
    }

    v182 = v244;
    v183 = v269;
    sub_25237153C(v178, v269 + *(v244 + 40), &qword_27F4DB2A0);
    v184 = v183 + *(v182 + 36);
    v185 = v250;
    sub_252394074(v250, v184, type metadata accessor for AccessoryControl.ValueDestination);
    v280 = v259;
    v281 = v260;
    v186 = v243;
    v282 = v243;
    v187 = v253;
    v283 = v253;
    v188 = v293;
    v284 = v293;
    v285 = v263;
    v189 = v292;
    v286 = v292;
    v287 = v290;
    v288 = v291;
    v190 = v242;
    v289 = v242;
    v191 = v247;
    sub_252394074(v157, v247, type metadata accessor for HAPControlSolver.Source);
    v192 = v251;
    sub_252394074(v185, v251, type metadata accessor for AccessoryControlSolver.Context);
    v193 = (*(v245 + 80) + 40) & ~*(v245 + 80);
    v194 = (v246 + *(v248 + 80) + v193) & ~*(v248 + 80);
    v195 = swift_allocObject();
    *(v195 + 16) = v259;
    *(v195 + 17) = v260;
    *(v195 + 18) = v186;
    *(v195 + 20) = v187;
    LODWORD(v278) = v188;
    *(v195 + 22) = v188 & 1;
    *(v195 + 24) = v263;
    LODWORD(v277) = v189;
    *(v195 + 26) = v189 & 1;
    *(v195 + 32) = v190;
    sub_2523942D4(v191, v195 + v193, type metadata accessor for HAPControlSolver.Source);
    sub_2523942D4(v192, v195 + v194, type metadata accessor for AccessoryControlSolver.Context);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB028);
    v196 = swift_allocObject();
    *(v196 + 16) = xmmword_252694E90;
    *(v196 + 32) = sub_2523940DC;
    *(v196 + 40) = v195;
    *v269 = v196;
    v197 = v273;
    v198 = v252;
    sub_25237153C(v273, v252, &qword_27F4DB290);
    v199 = v267;
    v200 = *(v267 + 48);
    v201 = v262;
    if (v200(v198, 1, v262) == 1)
    {
      sub_252394224(&v280, v279);
      sub_25268DA00();
      sub_252372288(v272, &qword_27F4DB2A8);
      sub_252372288(v271, &qword_27F4DB2A8);
      sub_252372288(v197, &qword_27F4DB290);
      sub_252372288(v270, &qword_27F4DB2A8);
      if (v200(v198, 1, v201) != 1)
      {
        sub_252372288(v198, &qword_27F4DB290);
      }

      v202 = v267;
      v203 = v258;
      v204 = v255;
      v205 = v278;
      v206 = v277;
    }

    else
    {
      sub_252394224(&v280, v279);
      sub_252372288(v272, &qword_27F4DB2A8);
      sub_252372288(v271, &qword_27F4DB2A8);
      sub_252372288(v197, &qword_27F4DB290);
      sub_252372288(v270, &qword_27F4DB2A8);
      v203 = v258;
      (*(v199 + 32))(v258, v198, v201);
      v205 = v293;
      v206 = v292;
      v202 = v199;
      v204 = v255;
    }

    v207 = type metadata accessor for AccessoryControl(0);
    v208 = v266;
    v209 = v266 + v207[5];
    v210 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0) + 48);
    *v209 = v259;
    *(v209 + 1) = v260;
    *(v209 + 2) = v243;
    *(v209 + 4) = v253;
    *(v209 + 6) = v205;
    *(v209 + 8) = v263;
    *(v209 + 10) = v206;
    *(v209 + 11) = v290;
    *(v209 + 15) = v291;
    *(v209 + 16) = v242;
    sub_2523714D4(v269, v209 + v210, &qword_27F4DB298);
    type metadata accessor for AccessoryControl.State(0);
    swift_storeEnumTagMultiPayload();
    (*(v202 + 32))(v208, v203, v201);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v211 = (v208 + v207[7]);
    v212 = v207[9];
    *(v208 + v212) = 16;
    *(v208 + v207[6]) = 0;
    *v211 = 0;
    v211[1] = 0;
    *(v208 + v207[8]) = 1028;
    *(v208 + v212) = 16;
    *(v208 + v207[10]) = 1;
    sub_252372288(v261, &qword_27F4DB2A0);
    sub_252372288(v276, &qword_27F4DB208);
    sub_252372288(v204, &qword_27F4DB208);
    (*(*(v207 - 1) + 56))(v208, 0, 1, v207);
    goto LABEL_86;
  }

  if (v277 != 1)
  {
    v158 = v229;
    sub_2523714D4(v113, v229, &qword_27F4DB2A8);
    if (v123(v158, 1, v127) == 1)
    {
      v159 = v231;
      *v231 = 370;
      v160 = v268;
      (*(v268 + 104))(v159, *MEMORY[0x277D15B28], v127);
      if (v123(v158, 1, v127) != 1)
      {
        sub_252372288(v158, &qword_27F4DB2A8);
      }
    }

    else
    {
      v160 = v268;
      v159 = v231;
      (*(v268 + 32))(v231, v158, v127);
    }

    v173 = swift_allocBox();
    v175 = v174;
    (*(v160 + 32))(v174, v159, v127);
    v176 = v256;
    v256(v175, 0, 1, v127);
    *v113 = v173;
    (*(v160 + 104))(v113, *MEMORY[0x277D15B30], v127);
    v176(v113, 0, 1, v127);
    goto LABEL_78;
  }

  v280 = v259;
  v281 = v260;
  v282 = v243;
  v283 = v253;
  v284 = v293;
  v285 = v263;
  v286 = v292;
  v287 = v290;
  v288 = v291;
  v289 = v242;
  sub_252394280(&v280);
  v161 = v276;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v162 = sub_2526905A0();
  __swift_project_value_buffer(v162, qword_27F4E4B18);
  v163 = sub_252690580();
  v164 = sub_252692EF0();
  v165 = os_log_type_enabled(v163, v164);
  v167 = v273;
  v166 = v274;
  if (v165)
  {
    v168 = v161;
    v169 = swift_slowAlloc();
    *v169 = 0;
    _os_log_impl(&dword_252309000, v163, v164, "Service says natural light is enabled, but doesn't support Color Temperature values. This should not be possible and is not supported", v169, 2u);
    v170 = v169;
    v161 = v168;
    MEMORY[0x2530A5A40](v170, -1, -1);
  }

  sub_252372288(v272, &qword_27F4DB2A8);
  sub_252372288(v128, &qword_27F4DB2A8);
  sub_252372288(v167, &qword_27F4DB290);
  sub_252372288(v113, &qword_27F4DB2A8);
  sub_252372288(v161, &qword_27F4DB208);
  sub_252372288(v255, &qword_27F4DB208);
  v171 = type metadata accessor for AccessoryControl(0);
  (*(*(v171 - 8) + 56))(v266, 1, 1, v171);
  v172 = v166;
  return sub_252372288(v172, &qword_27F4DB208);
}

uint64_t sub_252392EA8@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v35 - v7 + 16;
  v9 = sub_25268ED20();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v11);
  v15 = v35 - v14 + 16;
  v16 = *a2;
  v36 = MEMORY[0x277D84FA0];
  if (v16 == 1)
  {
    type metadata accessor for HAPControlSolver.Source();
    v17 = sub_25268F180();
    sub_2525C8718(v17);
  }

  sub_25237153C(a1, v8, &qword_27F4DB2A8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_252372288(v8, &qword_27F4DB2A8);
    v18 = 0;
  }

  else
  {
    v19 = *(v10 + 32);
    v19(v15, v8, v9);
    v19(v13, v15, v9);
    v18 = (*(v10 + 88))(v13, v9) == *MEMORY[0x277D15B30];
    (*(v10 + 8))(v13, v9);
  }

  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v20 = sub_2526905A0();
  __swift_project_value_buffer(v20, qword_27F4E4B18);
  v21 = sub_252690580();
  v22 = sub_252692F10();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35[0] = v24;
    *v23 = 67240450;
    *(v23 + 4) = v18;
    *(v23 + 8) = 2082;
    swift_beginAccess();
    sub_25268F520();
    sub_252394D50(&qword_27F4DB2C0, MEMORY[0x277D163C8]);

    v25 = sub_252692E80();
    v27 = v26;

    v28 = sub_2525BDA90(v25, v27, v35);

    *(v23 + 10) = v28;
    _os_log_impl(&dword_252309000, v21, v22, "Setting natural light on (%{BOOL,public}d for profiles (%{public}s)", v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x2530A5A40](v24, -1, -1);
    MEMORY[0x2530A5A40](v23, -1, -1);
  }

  swift_beginAccess();
  if (*(v36 + 16))
  {
    *a3 = v18;
    v29 = *MEMORY[0x277D15F70];
    v30 = sub_25268F140();
    v31 = *(v30 - 8);
    (*(v31 + 104))(a3, v29, v30);
    (*(v31 + 56))(a3, 0, 1, v30);
  }

  else
  {
    v32 = sub_25268F140();
    (*(*(v32 - 8) + 56))(a3, 1, 1, v32);
  }
}

uint64_t sub_252393398(double a1, double a2)
{
  v4 = sub_25268F4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 104);
  v8(v7, *MEMORY[0x277D162D8], v4);
  v9 = MEMORY[0x277D839F8];
  v14 = MEMORY[0x277D839F8];
  *v13 = a1 * 360.0;
  sub_2524A6950(v13, v7);
  v8(v7, *MEMORY[0x277D160B8], v4);
  v14 = v9;
  *v13 = a2 * 100.0;
  sub_2524A6950(v13, v7);
  v8(v7, *MEMORY[0x277D16168], v4);
  v10 = sub_25268F4C0();
  v14 = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v10 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D16300], v10);
  return sub_2524A6950(v13, v7);
}

double sub_252393574()
{
  v0 = sub_25268F4D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 104);
  v4(v3, *MEMORY[0x277D160B0], v0);
  type metadata accessor for HAPControlSolver.Source();
  v5 = sub_25268FE70();
  v6 = *(v1 + 8);
  v6(v3, v0);
  v4(v3, *MEMORY[0x277D160A8], v0);
  v7 = COERCE_DOUBLE(sub_25268FEA0());
  v9 = v8;
  v6(v3, v0);
  result = 0.0;
  if ((v9 & 1) == 0)
  {
    if ((v5 & 1) == 0)
    {
      return result;
    }

    result = v7;
    return result / 100.0;
  }

  if (v5)
  {
    return result / 100.0;
  }

  return result;
}

uint64_t sub_2523936F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v65 = a6;
  v71 = a5;
  v72 = a1;
  v68 = a4;
  v67 = a3;
  v66 = a2;
  v73 = a7;
  v64 = sub_25268F4D0();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - v9;
  v11 = sub_25268ED20();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v70 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v69 = (&v62 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v62 - v20;
  v22 = type metadata accessor for AccessoryControl.ColorState(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(v72, v21, &qword_27F4DB2A0);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_252372288(v21, &qword_27F4DB2A0);
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v27 = __swift_project_value_buffer(v26, qword_27F4DB8A0);
    return sub_252394074(v27, v73, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    sub_2523942D4(v21, v25, type metadata accessor for AccessoryControl.ColorState);
    v29 = MEMORY[0x277D84F90];
    v80 = sub_25256E63C(MEMORY[0x277D84F90]);
    v79 = sub_25256E63C(v29);
    sub_25237153C(v25, v10, &qword_27F4DB2A8);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_252372288(v10, &qword_27F4DB2A8);
      v30 = v71;
      v31 = v68;
      v32 = v67;
      v33 = v66;
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      v33 = v66;
      *&v76 = v66;
      v32 = v67;
      DWORD2(v76) = v67;
      v31 = v68;
      v77 = v68;
      v30 = v71;
      sub_25239433C(v14, v71, &v76, &v80);
      (*(v12 + 8))(v14, v11);
    }

    if (*(v65 + *(type metadata accessor for AccessoryControlSolver.Context() + 20)) != 2)
    {
      v34 = &v25[*(v22 + 20)];
      if ((v34[8] & 1) == 0)
      {
        v35 = *v34;
        v36 = *MEMORY[0x277D160A8];
        v37 = v63;
        v68 = *(v63 + 104);
        v38 = v62;
        v39 = v64;
        v68(v62, v36, v64);
        v78 = MEMORY[0x277D839F8];
        *&v76 = v35 * 100.0;
        sub_25235E20C(&v76, v75);
        v40 = v80;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = v40;
        v72 = v25;
        sub_25256D5C4(v75, v38, isUniquelyReferenced_nonNull_native);
        v42 = *(v37 + 8);
        v42(v38, v39);
        v80 = v74;
        v68(v38, *MEMORY[0x277D160B0], v39);
        v78 = MEMORY[0x277D839B0];
        LOBYTE(v76) = v35 > 0.0;
        sub_25235E20C(&v76, v75);
        v43 = v80;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v74 = v43;
        v30 = v71;
        sub_25256D5C4(v75, v38, v44);
        v25 = v72;
        v42(v38, v39);
        v80 = v74;
      }
    }

    v45 = v79;
    v46 = v80;
    *&v76 = v33;
    DWORD2(v76) = v32;
    v77 = v31;
    v47 = v25;
    v48 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v49 = v69;
    sub_252392EA8(v47, &v76, v69 + *(v48 + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v50 = v30;
    v51 = sub_25268DA10();
    v52 = *(v51 - 8);
    v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_252694E90;
    (*(v52 + 16))(v54 + v53, v50, v51);
    v55 = sub_25240C1FC(v54);
    swift_setDeallocating();
    (*(v52 + 8))(v54 + v53, v51);
    swift_deallocClassInstance();
    v56 = sub_2523F75C4(v46);

    *v49 = v56;
    v57 = sub_2523F75C4(v45);

    sub_252394C40(v47, type metadata accessor for AccessoryControl.ColorState);
    v49[1] = v57;
    *(v49 + *(v48 + 28)) = v55;
    v58 = *(*(v48 - 8) + 56);
    v58(v49, 0, 1, v48);
    v59 = v70;
    sub_2523714D4(v49, v70, &qword_27F4DB210);
    v60 = v73;
    v58(v73, 1, 1, v48);
    v61 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(v60 + v61) = 0;
    sub_252377048(v59, v60, &qword_27F4DB210);

    *(v60 + v61) = 0;
  }

  return result;
}

uint64_t sub_252393F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

uint64_t sub_252393F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25238FEF0(a1, v6, a2);
}

uint64_t sub_252394074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523940DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AccessoryControlSolver.Context() - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 20);
  v11 = *(v2 + 24);
  v12 = *(v2 + 26);
  v13 = *(v2 + 32);
  v18 = *(v2 + 22);
  v14 = 0x10000;
  if (!*(v2 + 18))
  {
    v14 = 0;
  }

  v15 = 256;
  if (!*(v2 + 17))
  {
    v15 = 0;
  }

  v16 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2523936F8(a1, v15 | v9 | v14 | (v10 << 32) | (v18 << 48), v11 | (v12 << 16), v13, v2 + v6, v16, a2);
}

uint64_t sub_2523942D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25239433C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v67 = a4;
  v68 = a2;
  v6 = type metadata accessor for HAPControlSolver.Source();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_25268F4D0();
  v9 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25268ED20();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v65 - v17);
  v74 = *a3;
  v75 = *(a3 + 2);
  if (BYTE2(v74) != 1)
  {
    if (BYTE1(v74))
    {
      v23 = LightbulbColor.toTemperature.getter();
      v24 = 0x27F4DA000;
      if ((v23 & 0x10000) == 0)
      {
        v25 = v23;
        (*(v9 + 104))(v11, *MEMORY[0x277D16168], v66);
        v71 = MEMORY[0x277D84C58];
        LOWORD(v69) = v25;
        sub_2524A6950(&v69, v11);
      }
    }

    else
    {
      v24 = 0x27F4DA000uLL;
      if (qword_27F4DABD0 != -1)
      {
        swift_once();
      }

      v29 = sub_2526905A0();
      __swift_project_value_buffer(v29, qword_27F4E4B18);
      v30 = sub_252690580();
      v31 = sub_252692EF0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_252309000, v30, v31, "Accessory does not support any Color attributes!", v32, 2u);
        MEMORY[0x2530A5A40](v32, -1, -1);
      }
    }

    goto LABEL_36;
  }

  if (!BYTE1(v74))
  {
    v26 = LightbulbColor.toHSV.getter();
    v24 = 0x27F4DA000;
    if ((v28 & 1) == 0)
    {
      sub_252393398(*&v26, v27);
    }

    goto LABEL_36;
  }

  v65 = *(v13 + 16);
  v65(&v65 - v17, a1, v12);
  v19 = (*(v13 + 88))(v18, v12);
  if (v19 == *MEMORY[0x277D15B40])
  {
    v20 = LightbulbColor.toHSV.getter();
    if ((v22 & 1) == 0)
    {
      sub_252393398(*&v20, v21);
    }

LABEL_33:
    (*(v13 + 8))(v18, v12);
    goto LABEL_35;
  }

  if (v19 == *MEMORY[0x277D15B38])
  {
    (*(v13 + 96))(v18, v12);
    v33 = *v18;
    v34 = v18[1];
  }

  else
  {
    if (v19 != *MEMORY[0x277D15B28])
    {
      if (v19 != *MEMORY[0x277D15B30])
      {
        sub_2526933A0();
        __break(1u);
        return;
      }

      goto LABEL_33;
    }

    (*(v13 + 96))(v18, v12);
    v35 = *v18;
    if ((BYTE6(v74) & 1) != 0 || (BYTE10(v74) & 1) != 0 || (v35 >= WORD2(v74) ? (v36 = WORD4(v74) >= v35) : (v36 = 0), v36))
    {
      (*(v9 + 104))(v11, *MEMORY[0x277D16168], v66);
      v71 = MEMORY[0x277D84C58];
      LOWORD(v69) = v35;
      sub_2524A6950(&v69, v11);
      goto LABEL_35;
    }

    *&v37 = COERCE_DOUBLE(LightbulbColor.toHSV.getter());
    if (v39)
    {
      v24 = 0x27F4DA000uLL;
      if (qword_27F4DABD0 != -1)
      {
        swift_once();
      }

      v40 = sub_2526905A0();
      __swift_project_value_buffer(v40, qword_27F4E4B18);
      v65(v16, a1, v12);
      v41 = sub_252690580();
      v42 = sub_252692EF0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v69 = v44;
        *v43 = 136446210;
        v45 = LightbulbColor.description.getter();
        v47 = v46;
        (*(v13 + 8))(v16, v12);
        v48 = sub_2525BDA90(v45, v47, &v69);

        *(v43 + 4) = v48;
        _os_log_impl(&dword_252309000, v41, v42, "Couldn't convert color temperature to Hue/Saturation %{public}s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        v49 = v44;
        v24 = 0x27F4DA000;
        MEMORY[0x2530A5A40](v49, -1, -1);
        MEMORY[0x2530A5A40](v43, -1, -1);
      }

      else
      {

        (*(v13 + 8))(v16, v12);
      }

      goto LABEL_36;
    }

    v33 = *&v37;
    v34 = v38;
  }

  sub_252393398(v33, v34);
LABEL_35:
  v24 = 0x27F4DA000uLL;
LABEL_36:
  if (*(v24 + 3024) != -1)
  {
    swift_once();
  }

  v50 = sub_2526905A0();
  __swift_project_value_buffer(v50, qword_27F4E4B18);
  sub_252394074(v68, v8, type metadata accessor for HAPControlSolver.Source);

  sub_252394224(&v74, &v69);
  v51 = sub_252690580();
  v52 = sub_252692F10();

  sub_252394280(&v74);
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v73 = v54;
    *v53 = 136446722;
    sub_252394D50(&qword_27F4DAF28, MEMORY[0x277D16348]);
    v55 = sub_252692B00();
    v57 = sub_2525BDA90(v55, v56, &v73);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2082;
    sub_25268DA10();
    sub_252394D50(&qword_27F4DB2B8, MEMORY[0x277CC95F0]);
    v58 = sub_252693370();
    v60 = v59;
    sub_252394C40(v8, type metadata accessor for HAPControlSolver.Source);
    v61 = sub_2525BDA90(v58, v60, &v73);

    *(v53 + 14) = v61;
    *(v53 + 22) = 2082;
    v69 = v74;
    v70 = v75;
    sub_252394224(&v74, v72);
    v62 = sub_252692C20();
    v64 = sub_2525BDA90(v62, v63, &v73);

    *(v53 + 24) = v64;
    _os_log_impl(&dword_252309000, v51, v52, "Setting Light characteristics (%{public}s) for service (%{public}s) colorConfig: (%{public}s)", v53, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v54, -1, -1);
    MEMORY[0x2530A5A40](v53, -1, -1);
  }

  else
  {

    sub_252394C40(v8, type metadata accessor for HAPControlSolver.Source);
  }
}

uint64_t sub_252394C40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_252394D50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252394DAC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v32 - v7);
  if (*(a1 + 4) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v10 = __swift_project_value_buffer(v9, qword_27F4DB8A0);
    return sub_252380264(v10, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v12 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
    v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228) - 8);
    v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v15 = swift_allocObject();
    v32 = xmmword_252694E90;
    *(v15 + 16) = xmmword_252694E90;
    v16 = v15 + v14;
    v17 = v16 + v13[14];
    v18 = *MEMORY[0x277D162A0];
    v19 = sub_25268F4D0();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    *(v17 + 24) = MEMORY[0x277D839B0];
    *v17 = v12 & 1;
    v20 = sub_25256E63C(v15);
    swift_setDeallocating();
    sub_252372288(v16, &qword_27F4DB228);
    swift_deallocClassInstance();
    v21 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v22 = *(v21 + 24);
    v23 = sub_25268F140();
    (*(*(v23 - 8) + 56))(v8 + v22, 1, 1, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v24 = sub_25268DA10();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    (*(v25 + 16))(v27 + v26, a2, v24);
    v28 = sub_25240C1FC(v27);
    swift_setDeallocating();
    (*(v25 + 8))(v27 + v26, v24);
    swift_deallocClassInstance();
    v29 = sub_2523F75C4(v20);

    *v8 = v29;
    v8[1] = 0;
    *(v8 + *(v21 + 28)) = v28;
    v30 = *(*(v21 - 8) + 56);
    v30(v8, 0, 1, v21);
    v30(a3, 1, 1, v21);
    v31 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v31) = 0;
    sub_2523795D4(v8, a3);

    *(a3 + v31) = 0;
  }

  return result;
}

uint64_t sub_2523951DC(uint64_t a1, uint64_t a2)
{
  v114 = a2;
  v3 = type metadata accessor for HAPControlSolver.Source();
  v115 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v116 = v4;
  v117 = v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for AccessoryControl(0);
  MEMORY[0x28223BE20](v119);
  v120 = v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_25268E2E0();
  v110 = *(v111 - 8);
  v6 = MEMORY[0x28223BE20](v111);
  v109 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v108 = v99 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  MEMORY[0x28223BE20](v107);
  v121 = v99 - v9;
  v126 = type metadata accessor for ControlTextModifier.Config(0);
  MEMORY[0x28223BE20](v126);
  *&v124 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for AccessoryControl.StatusProvider();
  v11 = MEMORY[0x28223BE20](v106);
  v105 = (v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v123 = v99 - v13;
  v112 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  v14 = MEMORY[0x28223BE20](v112);
  v122 = v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v118 = v99 - v16;
  v17 = sub_25268F4D0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v99 - v22;
  v24 = sub_25268F9E0();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 104))(v20, *MEMORY[0x277D162A0], v17);
  v125 = v3;
  v28 = *(v3 + 76);
  sub_25268FD80();
  v29 = v24;
  v30 = v25;
  v31 = *(v18 + 8);
  v102 = v20;
  v104 = v17;
  v103 = v18 + 8;
  v31(v20, v17);
  if ((*(v30 + 48))(v23, 1, v29) == 1)
  {
    sub_252372288(v23, &qword_27F4DB208);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v33 = *(v30 + 32);
    v113 = v27;
    v101 = v29;
    v33(v27, v23, v29);
    v34 = sub_25268FE00();
    v35 = a1;
    v99[1] = v28;
    if (v36)
    {
      v37 = 0;
    }

    else
    {
      v38 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252694E90;
      *(inited + 32) = v38;
      v37 = sub_25240C0B4(inited);
      swift_setDeallocating();
    }

    v40 = v125;
    v41 = v105;
    *v105 = v37;
    swift_storeEnumTagMultiPayload();
    v42 = (a1 + v40[11]);
    v43 = v42[1];
    v100 = v30;
    v99[0] = v31;
    if (v43)
    {
      v44 = *v42;

      sub_252380204(v41, type metadata accessor for AccessoryControl.StatusProvider);
      v45 = v123;
      *v123 = v44;
      *(v45 + 8) = v43;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_25238011C(v41, v123, type metadata accessor for AccessoryControl.StatusProvider);
    }

    swift_storeEnumTagMultiPayload();
    v46 = v108;
    sub_25268E250();
    v106 = sub_25268E2D0();
    v48 = v47;
    v126 = v35;
    v49 = *(v110 + 8);
    v50 = v111;
    v49(v46, v111);
    v51 = v109;
    sub_25268E250();
    v52 = type metadata accessor for IconDescriptor();
    v53 = v121;
    sub_25268E2C0();
    v49(v51, v50);
    *v53 = v106;
    v53[1] = v48;
    *(v53 + *(v52 + 24)) = 0;
    sub_25268E260();
    v110 = sub_25268E2D0();
    v55 = v54;
    v49(v46, v50);
    sub_25268E260();
    v56 = (v53 + *(v107 + 28));
    sub_25268E2C0();
    v49(v51, v50);
    *v56 = v110;
    v56[1] = v55;
    *(v56 + *(v52 + 24)) = 0;
    v57 = v125;
    v58 = sub_25268E510();
    v59 = v122;
    sub_2523800AC(v53, v122);
    v60 = v112;
    sub_252380264(v124, v59 + *(v112 + 24), type metadata accessor for ControlTextModifier.Config);
    v61 = (v126 + v57[7]);
    v62 = *v61;
    v63 = v61[1];
    sub_252380264(v123, v59 + v60[11], type metadata accessor for AccessoryControl.StatusProvider);
    v64 = v59 + v60[7];
    *v64 = 0u;
    *(v64 + 16) = 0u;
    *(v64 + 32) = -1;
    v65 = v59 + v60[8];
    *v65 = 0u;
    *(v65 + 16) = 0u;
    *(v65 + 32) = -1;
    v109 = v60[12];
    *(v59 + v60[5]) = v58;
    v66 = (v59 + v60[10]);
    v111 = v62;
    *v66 = v62;
    v66[1] = v63;
    v67 = *v64;
    v68 = *(v64 + 8);
    v69 = *(v64 + 16);
    v70 = *(v64 + 24);
    LOBYTE(v52) = *(v64 + 32);
    v110 = v63;
    swift_bridgeObjectRetain_n();
    sub_252376DA8(v67, v68, v69, v70, v52);
    *v64 = 0u;
    *(v64 + 16) = 0u;
    *(v64 + 32) = -1;
    v71 = v126;
    sub_252376DA8(*v65, *(v65 + 8), *(v65 + 16), *(v65 + 24), *(v65 + 32));
    *v65 = 0u;
    *(v65 + 16) = 0u;
    *(v65 + 32) = -1;
    *&v109[v59] = 0;
    *(v59 + v60[9]) = 0;
    if (*(v71 + v125[10]) == 1)
    {
      v72 = v102;
      sub_25268F9A0();
      v73 = sub_25268FE70();
      (v99[0])(v72, v104);
      sub_252372288(v121, &qword_27F4DAD88);
      sub_252380204(v124, type metadata accessor for ControlTextModifier.Config);
      sub_252380204(v123, type metadata accessor for AccessoryControl.StatusProvider);
      v123 = v73 & 1;
      *&v124 = 0;
      v121 = 1;
    }

    else
    {
      sub_252372288(v121, &qword_27F4DAD88);
      sub_252380204(v124, type metadata accessor for ControlTextModifier.Config);
      sub_252380204(v123, type metadata accessor for AccessoryControl.StatusProvider);
      v121 = 0;
      v123 = 0;
      *&v124 = 1;
    }

    v74 = v118;
    sub_25238011C(v122, v118, type metadata accessor for AccessoryControl.BinaryViewConfig);
    v75 = v120;
    sub_25268F9B0();
    v126 = type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v76 = v119;
    v77 = v75 + *(v119 + 20);
    v78 = (v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48));
    sub_252380264(v74, v77, type metadata accessor for AccessoryControl.BinaryViewConfig);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
    sub_252380264(v114, v78 + *(v79 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v80 = v117;
    sub_252380264(v71, v117, type metadata accessor for HAPControlSolver.Source);
    v81 = (*(v115 + 80) + 16) & ~*(v115 + 80);
    v82 = swift_allocObject();
    sub_25238011C(v80, v82 + v81, type metadata accessor for HAPControlSolver.Source);
    v83 = (v78 + *(v79 + 40));
    *v83 = v123;
    v83[1] = 0;
    v83[2] = v121;
    v83[3] = 0;
    v83[4] = v124;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB018);
    v84 = swift_allocObject();
    v124 = xmmword_252694E90;
    *(v84 + 16) = xmmword_252694E90;
    *(v84 + 32) = sub_252396008;
    *(v84 + 40) = v82;
    *v78 = v84;
    type metadata accessor for AccessoryControl.State(0);
    swift_storeEnumTagMultiPayload();
    v85 = *(v71 + v125[13]);
    v86 = (v71 + v125[14]);
    v87 = *v86;
    v88 = v86[1];
    v89 = (v75 + v76[7]);
    v90 = v76[9];
    *(v75 + v90) = 16;
    *(v75 + v76[6]) = v85;
    *v89 = v87;
    v89[1] = v88;
    *(v75 + v76[8]) = 1027;
    *(v75 + v90) = 16;
    *(v75 + v76[10]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
    v91 = (type metadata accessor for AccessoryControlGroup(0) - 8);
    v92 = (*(*v91 + 80) + 32) & ~*(*v91 + 80);
    v93 = swift_allocObject();
    *(v93 + 16) = v124;
    v94 = v93 + v92;
    v95 = sub_25268DA10();
    (*(*(v95 - 8) + 16))(v94, v71, v95);
    swift_storeEnumTagMultiPayload();
    sub_252380264(v75, v94 + v91[7], type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v96 = (v94 + v91[9]);
    v97 = (v94 + v91[8]);
    v98 = v110;
    *v97 = v111;
    v97[1] = v98;
    *v96 = 0;
    v96[1] = 0;

    sub_252380204(v74, type metadata accessor for AccessoryControl.BinaryViewConfig);
    (*(v100 + 8))(v113, v101);
    sub_252380204(v75, type metadata accessor for AccessoryControl);
    return v93;
  }
}

uint64_t sub_252396008@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252394DAC(a1, v6, a2);
}

uint64_t sub_252396098@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 4) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v14 = __swift_project_value_buffer(v13, qword_27F4DB8A0);
    return sub_252397528(v14, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v16 = *a1;
    v38 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
    v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228) - 8);
    v18 = *(*v17 + 80);
    v37 = a2;
    v19 = (v18 + 32) & ~v18;
    v20 = swift_allocObject();
    v36 = xmmword_252694E90;
    *(v20 + 16) = xmmword_252694E90;
    v21 = v20 + v19;
    v22 = v21 + v17[14];
    v23 = *MEMORY[0x277D160B0];
    v24 = sub_25268F4D0();
    (*(*(v24 - 8) + 104))(v21, v23, v24);
    *(v22 + 24) = MEMORY[0x277D839B0];
    *v22 = v16 & 1;
    v25 = sub_25256E63C(v20);
    swift_setDeallocating();
    sub_252372288(v21, &qword_27F4DB228);
    swift_deallocClassInstance();
    v26 = *(v9 + 24);
    v27 = sub_25268F140();
    (*(*(v27 - 8) + 56))(v12 + v26, 1, 1, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v28 = sub_25268DA10();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    (*(v29 + 16))(v31 + v30, v37, v28);
    v32 = sub_25240C1FC(v31);
    swift_setDeallocating();
    (*(v29 + 8))(v31 + v30, v28);
    swift_deallocClassInstance();
    v33 = sub_2523F75C4(v25);

    *v12 = v33;
    v12[1] = 0;
    *(v12 + *(v9 + 28)) = v32;
    sub_252397590(v12, v8, type metadata accessor for AccessoryControl.HAPWriteSpecification);
    v34 = *(v38 + 56);
    v34(v8, 0, 1, v9);
    v34(a3, 1, 1, v9);
    v35 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v35) = 0;
    sub_2523795D4(v8, a3);

    *(a3 + v35) = 0;
  }

  return result;
}

uint64_t sub_252396548(uint64_t a1, uint64_t a2)
{
  v128 = a2;
  v135 = type metadata accessor for AccessoryControlGroup(0);
  v137 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v138 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_25268DA10();
  v132 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v130 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for AccessoryControl(0);
  MEMORY[0x28223BE20](v131);
  v136 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HAPControlSolver.Source();
  v124 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v126 = v7;
  v127 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  MEMORY[0x28223BE20](v125);
  v133 = (&v107 - v8);
  v122 = sub_25268E2E0();
  v121 = *(v122 - 8);
  v9 = MEMORY[0x28223BE20](v122);
  v120 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v119 = &v107 - v11;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  MEMORY[0x28223BE20](v118);
  v140 = (&v107 - v12);
  v117 = type metadata accessor for ControlTextModifier.Config(0);
  MEMORY[0x28223BE20](v117);
  *&v143 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for AccessoryControl.StatusProvider();
  v14 = MEMORY[0x28223BE20](v116);
  v115 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v142 = (&v107 - v16);
  v123 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  v17 = MEMORY[0x28223BE20](v123);
  v141 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v107 - v19;
  v21 = sub_25268F4D0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v107 - v26;
  v28 = sub_25268F9E0();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 104))(v24, *MEMORY[0x277D160B0], v21);
  v144 = v6;
  v32 = *(v6 + 76);
  v33 = a1;
  v111 = v32;
  sub_25268FD80();
  v34 = v28;
  v35 = v29;
  v36 = *(v22 + 8);
  v112 = v24;
  v114 = v21;
  v113 = v22 + 8;
  v36(v24, v21);
  if ((*(v35 + 48))(v27, 1, v34) == 1)
  {
    sub_252372288(v27, &qword_27F4DB208);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v107 = v36;
    v129 = v20;
    v38 = *(v35 + 32);
    v139 = v31;
    v110 = v34;
    v38(v31, v27, v34);
    v39 = v115;
    swift_storeEnumTagMultiPayload();
    v40 = (v33 + v144[11]);
    v41 = v40[1];
    v109 = v35;
    if (v41)
    {
      v42 = *v40;

      sub_252380204(v39, type metadata accessor for AccessoryControl.StatusProvider);
      v43 = v142;
      *v142 = v42;
      v43[1] = v41;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_252397590(v39, v142, type metadata accessor for AccessoryControl.StatusProvider);
    }

    v44 = v140;
    swift_storeEnumTagMultiPayload();
    v45 = v119;
    sub_25268E250();
    v117 = sub_25268E2D0();
    v116 = v46;
    v47 = *(v121 + 8);
    v48 = v122;
    v47(v45, v122);
    v49 = v120;
    sub_25268E250();
    v50 = type metadata accessor for IconDescriptor();
    sub_25268E2C0();
    v47(v49, v48);
    v51 = v116;
    *v44 = v117;
    v44[1] = v51;
    *(v44 + *(v50 + 24)) = 0;
    sub_25268E260();
    v121 = sub_25268E2D0();
    v117 = v52;
    v47(v45, v48);
    sub_25268E260();
    v53 = (v44 + *(v118 + 28));
    sub_25268E2C0();
    v47(v49, v48);
    v54 = v117;
    *v53 = v121;
    v53[1] = v54;
    *(v53 + *(v50 + 24)) = 0;
    v55 = v144;
    v56 = v33;
    v108 = v33;
    v57 = sub_25268E510();
    v58 = v44;
    v59 = v141;
    sub_25237153C(v58, v141, &qword_27F4DAD88);
    v60 = v123;
    sub_252397528(v143, v59 + *(v123 + 24), type metadata accessor for ControlTextModifier.Config);
    v61 = (v56 + v55[7]);
    v63 = *v61;
    v62 = v61[1];
    sub_252397528(v142, v59 + v60[11], type metadata accessor for AccessoryControl.StatusProvider);
    v64 = v59 + v60[7];
    *v64 = 0u;
    *(v64 + 16) = 0u;
    *(v64 + 32) = -1;
    v65 = v59 + v60[8];
    *v65 = 0u;
    *(v65 + 16) = 0u;
    *(v65 + 32) = -1;
    v120 = v60[12];
    *(v59 + v60[5]) = v57;
    v66 = (v59 + v60[10]);
    v122 = v63;
    *v66 = v63;
    v66[1] = v62;
    v68 = *v64;
    v67 = *(v64 + 8);
    v69 = *(v64 + 16);
    v70 = *(v64 + 24);
    LOBYTE(v49) = *(v64 + 32);
    v121 = v62;
    swift_bridgeObjectRetain_n();
    sub_252376DA8(v68, v67, v69, v70, v49);
    *v64 = 0u;
    *(v64 + 16) = 0u;
    *(v64 + 32) = -1;
    sub_252376DA8(*v65, *(v65 + 8), *(v65 + 16), *(v65 + 24), *(v65 + 32));
    *v65 = 0u;
    *(v65 + 16) = 0u;
    *(v65 + 32) = -1;
    *&v120[v59] = 0;
    v71 = v108;
    *(v59 + v60[9]) = 0;
    if (*(v71 + v144[10]) == 1)
    {
      v72 = v112;
      sub_25268F9A0();
      v73 = sub_25268FE70();
      v107(v72, v114);
      sub_252372288(v140, &qword_27F4DAD88);
      sub_252380204(v143, type metadata accessor for ControlTextModifier.Config);
      sub_252380204(v142, type metadata accessor for AccessoryControl.StatusProvider);
      *&v143 = 0;
      v74 = v73 & 1;
      v75 = 1;
    }

    else
    {
      sub_252372288(v140, &qword_27F4DAD88);
      sub_252380204(v143, type metadata accessor for ControlTextModifier.Config);
      sub_252380204(v142, type metadata accessor for AccessoryControl.StatusProvider);
      v74 = 0;
      v75 = 0;
      *&v143 = 1;
    }

    v76 = v136;
    v77 = v129;
    sub_252397590(v141, v129, type metadata accessor for AccessoryControl.BinaryViewConfig);
    v78 = v125;
    v79 = v133;
    sub_252397528(v128, v133 + *(v125 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v80 = v127;
    sub_252397528(v71, v127, type metadata accessor for HAPControlSolver.Source);
    v81 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v82 = swift_allocObject();
    sub_252397590(v80, v82 + v81, type metadata accessor for HAPControlSolver.Source);
    v83 = (v79 + *(v78 + 40));
    *v83 = v74;
    v83[1] = 0;
    v83[2] = v75;
    v83[3] = 0;
    v83[4] = v143;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB018);
    v84 = swift_allocObject();
    v143 = xmmword_252694E90;
    *(v84 + 16) = xmmword_252694E90;
    *(v84 + 32) = sub_2523974A8;
    *(v84 + 40) = v82;
    *v79 = v84;
    v85 = v79;
    v86 = v130;
    sub_25268F9B0();
    v87 = v131;
    v88 = v76 + *(v131 + 20);
    v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);
    sub_252397528(v77, v88, type metadata accessor for AccessoryControl.BinaryViewConfig);
    v90 = v85;
    sub_25237153C(v85, v88 + v89, &qword_27F4DAD80);
    type metadata accessor for AccessoryControl.State(0);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v81) = *(v71 + v144[13]);
    v91 = (v71 + v144[14]);
    v93 = *v91;
    v92 = v91[1];
    v94 = v132;
    v95 = v86;
    v96 = v134;
    (*(v132 + 32))(v76, v95, v134);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v97 = v87[7];
    v98 = v87[9];
    *(v76 + v98) = 16;
    v99 = (v76 + v97);
    *(v76 + v87[6]) = v81;
    *v99 = v93;
    v99[1] = v92;
    *(v76 + v87[8]) = 1027;
    *(v76 + v98) = 16;
    *(v76 + v87[10]) = 1;
    v100 = v138;
    (*(v94 + 16))(v138, v71, v96);
    swift_storeEnumTagMultiPayload();
    v101 = v135;
    sub_252397528(v76, v100 + *(v135 + 20), type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v102 = (v100 + *(v101 + 28));
    v103 = (v100 + *(v101 + 24));
    v104 = v121;
    *v103 = v122;
    v103[1] = v104;
    *v102 = 0;
    v102[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
    v105 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v106 = swift_allocObject();
    *(v106 + 16) = v143;
    sub_252397590(v100, v106 + v105, type metadata accessor for AccessoryControlGroup);

    sub_252372288(v90, &qword_27F4DAD80);
    sub_252380204(v129, type metadata accessor for AccessoryControl.BinaryViewConfig);
    (*(v109 + 8))(v139, v110);
    sub_252380204(v76, type metadata accessor for AccessoryControl);
    return v106;
  }
}

uint64_t sub_2523974A8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HAPControlSolver.Source() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252396098(a1, v6, a2);
}

uint64_t sub_252397528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252397590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252397608()
{
  v0 = sub_25268FFD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  v7 = sub_252690050();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - v12;
  sub_25268F9D0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_252372288(v6, &qword_27F4DB230);
    return sub_25240C08C(&unk_286483948);
  }

  (*(v8 + 32))(v13, v6, v7);
  (*(v8 + 16))(v11, v13, v7);
  if ((*(v8 + 88))(v11, v7) != *MEMORY[0x277D16CC8])
  {
    v22 = *(v8 + 8);
    v22(v13, v7);
    v22(v11, v7);
    return sub_25240C08C(&unk_286483948);
  }

  (*(v8 + 96))(v11, v7);
  v26 = v1;
  v27 = v0;
  (*(v1 + 32))(v3, v11, v0);
  v14 = sub_25268FF90();
  v15 = *(v14 + 16);
  v25[1] = v14;
  if (v15)
  {
    v16 = (v14 + 32);
    v17 = MEMORY[0x277D84F90];
    do
    {
      v19 = *v16++;
      v18 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_252368CA0(0, *(v17 + 2) + 1, 1, v17);
      }

      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      if (v21 >= v20 >> 1)
      {
        v17 = sub_252368CA0((v20 > 1), v21 + 1, 1, v17);
      }

      *(v17 + 2) = v21 + 1;
      *&v17[8 * v21 + 32] = v18;
      --v15;
    }

    while (v15);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v24 = sub_252624730(v17);

  (*(v26 + 8))(v3, v27);
  (*(v8 + 8))(v13, v7);
  return v24;
}

uint64_t sub_2523979D4()
{
  type metadata accessor for HAPControlSolver.Source();
  v0 = sub_25268FE20();
  if ((v1 & 1) != 0 || v0 != 4)
  {
    v3 = sub_25268FE20();
    if ((v4 & 1) != 0 || v3 != 3)
    {
    }

    else
    {
      v5 = [objc_opt_self() systemGray2Color];

      return sub_252692240();
    }
  }

  else
  {

    return sub_2526922A0();
  }
}

uint64_t sub_252397AA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v32 - v7);
  if (*(a1 + 8) == 1)
  {
    if (qword_27F4DA998 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for AccessoryControl.WriteSpecification(0);
    v10 = __swift_project_value_buffer(v9, qword_27F4DB8A0);
    return sub_252398E44(v10, a3, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  else
  {
    v12 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB220);
    v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228) - 8);
    v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v15 = swift_allocObject();
    v32 = xmmword_252694E90;
    *(v15 + 16) = xmmword_252694E90;
    v16 = v15 + v14;
    v17 = (v16 + v13[14]);
    v18 = *MEMORY[0x277D162B0];
    v19 = sub_25268F4D0();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    v17[3] = MEMORY[0x277D83B88];
    *v17 = v12;
    v20 = sub_25256E63C(v15);
    swift_setDeallocating();
    sub_252372288(v16, &qword_27F4DB228);
    swift_deallocClassInstance();
    v21 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
    v22 = *(v21 + 24);
    v23 = sub_25268F140();
    (*(*(v23 - 8) + 56))(v8 + v22, 1, 1, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF58);
    v24 = sub_25268DA10();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    (*(v25 + 16))(v27 + v26, a2, v24);
    v28 = sub_25240C1FC(v27);
    swift_setDeallocating();
    (*(v25 + 8))(v27 + v26, v24);
    swift_deallocClassInstance();
    v29 = sub_2523F75C4(v20);

    *v8 = v29;
    v8[1] = 0;
    *(v8 + *(v21 + 28)) = v28;
    v30 = *(*(v21 - 8) + 56);
    v30(v8, 0, 1, v21);
    v30(a3, 1, 1, v21);
    v31 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
    *(a3 + v31) = 0;
    sub_252377048(v8, a3, &qword_27F4DB210);

    *(a3 + v31) = 0;
  }

  return result;
}

uint64_t sub_252397EE4(uint64_t a1, uint64_t a2)
{
  *&v132 = a2;
  v130 = a1;
  v2 = type metadata accessor for HAPControlSolver.Source();
  v118 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v119 = v3;
  v120 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_25268DA10();
  v121 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v127 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for AccessoryControl(0);
  MEMORY[0x28223BE20](v122);
  v124 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for AccessoryControl.StatusProvider();
  v6 = MEMORY[0x28223BE20](v115);
  v114 = (&v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v117 = (&v109 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v9 - 8);
  v126 = &v109 - v10;
  v116 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v116);
  v123 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25268F4D0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v109 - v17;
  v19 = sub_25268F9E0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252398E44(v132, v25, type metadata accessor for AccessoryControl.ValueDestination);
  (*(v13 + 104))(v15, *MEMORY[0x277D162B0], v12);
  v129 = v2;
  *&v125 = *(v2 + 76);
  sub_25268FD80();
  (*(v13 + 8))(v15, v12);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_252372288(v18, &qword_27F4DB208);
    sub_252398DE4(v25, type metadata accessor for AccessoryControl.ValueDestination);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v113 = v25;
    v110 = v20;
    v111 = v19;
    (*(v20 + 32))(v22, v18, v19);
    v109 = v22;
    v27 = sub_252397608();
    v28 = sub_25268E510();
    v29 = sub_252692C40();
    v31 = v30;
    v32 = sub_252692C40();
    v34 = v33;
    v35 = sub_252692C40();
    v37 = v36;
    v38 = sub_252692C40();
    v134[0] = 0;
    v134[1] = v29;
    v131 = v134;
    v134[2] = v31;
    v134[3] = v28;
    v134[4] = 1;
    v134[5] = v32;
    v134[6] = v34;
    v134[7] = v28;
    v134[8] = 2;
    v134[9] = v35;
    v134[10] = v37;
    v134[11] = v28;
    v134[12] = 3;
    v134[13] = v38;
    v39 = v27 + 56;
    v134[14] = v40;
    v134[15] = 0;
    v112 = v28;
    result = swift_retain_n();
    v41 = 0;
    v42 = MEMORY[0x277D84F90];
    do
    {
      if (v41 <= 4)
      {
        v43 = 4;
      }

      else
      {
        v43 = v41;
      }

      while (1)
      {
        if (v41 == v43)
        {
          __break(1u);
          return result;
        }

        v44 = v41++;
        if (*(v27 + 16))
        {
          v45 = &v131[4 * v44];
          v132 = *v45;
          v47 = v45[2];
          v46 = v45[3];
          sub_252693460();
          v48 = v132;
          MEMORY[0x2530A4FE0](v132);
          result = sub_2526934C0();
          v49 = -1 << *(v27 + 32);
          v50 = result & ~v49;
          if ((*(v39 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
          {
            break;
          }
        }

LABEL_7:
        if (v41 == 4)
        {
          goto LABEL_20;
        }
      }

      v51 = ~v49;
      while (*(*(v27 + 48) + 8 * v50) != v48)
      {
        v50 = (v50 + 1) & v51;
        if (((*(v39 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v133 = v42;
      if ((result & 1) == 0)
      {
        result = sub_25236FF90(0, *(v42 + 16) + 1, 1);
        v42 = v133;
      }

      v53 = *(v42 + 16);
      v52 = *(v42 + 24);
      if (v53 >= v52 >> 1)
      {
        result = sub_25236FF90((v52 > 1), v53 + 1, 1);
        v42 = v133;
      }

      *(v42 + 16) = v53 + 1;
      v54 = v42 + 32 * v53;
      *(v54 + 32) = v132;
      *(v54 + 48) = v47;
      *(v54 + 56) = v46;
    }

    while (v41 != 4);
LABEL_20:

    swift_arrayDestroy();
    *&v132 = sub_2523979D4();
    v55 = sub_25268FE20();
    if (v56)
    {
      v57 = 0;
    }

    else
    {
      v58 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252694E90;
      *(inited + 32) = v58;
      v57 = sub_25240C0A0(inited);
      swift_setDeallocating();
    }

    v131 = sub_252692330();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
    v61 = v126;
    v62 = (v126 + *(v60 + 28));
    v63 = type metadata accessor for IconDescriptor();
    v64 = *(v63 + 20);
    v65 = *MEMORY[0x277D16588];
    v66 = sub_25268F910();
    (*(*(v66 - 8) + 104))(&v62[v64], v65, v66);
    *v62 = 0xD000000000000015;
    *(v62 + 1) = 0x80000002526ADE80;
    v62[*(v63 + 24)] = 0;
    sub_252398E44(v62, v61, type metadata accessor for IconDescriptor);
    v67 = *(*(v60 - 8) + 56);
    v67(v61, 0, 1, v60);
    v68 = v114;
    *v114 = v57;
    swift_storeEnumTagMultiPayload();
    v69 = v130;
    v70 = (v130 + *(v129 + 44));
    v71 = v70[1];
    if (v71)
    {
      v72 = *v70;

      sub_252398DE4(v68, type metadata accessor for AccessoryControl.StatusProvider);
      v73 = v117;
      *v117 = v72;
      v73[1] = v71;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v74 = v68;
      v73 = v117;
      sub_252398CFC(v74, v117, type metadata accessor for AccessoryControl.StatusProvider);
    }

    v75 = v116;
    v76 = *(v116 + 24);
    v77 = v123;
    v67(&v123[v76], 1, 1, v60);
    v78 = v77 + v75[11];
    *v77 = v42;
    *(v77 + 8) = 1;
    v79 = v131;
    *(v77 + v75[8]) = v132;
    *(v77 + v75[9]) = v79;
    sub_252377048(v126, v77 + v76, &qword_27F4DADB8);
    sub_252398CFC(v73, v77 + v75[10], type metadata accessor for AccessoryControl.StatusProvider);
    *v78 = 3;
    *(v78 + 8) = 0;
    *(v77 + v75[7]) = 0;
    v80 = sub_25268FE10();
    if (v81)
    {
      v82 = 3;
    }

    else
    {
      v82 = v80;
    }

    *&v125 = v82;
    v83 = v121;
    v84 = *(v121 + 16);
    v131 = (v121 + 16);
    *&v132 = v84;
    v84(v127, v69, v128);
    v85 = v122;
    v86 = v124;
    v87 = &v124[*(v122 + 20)];
    v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);
    v126 = v87;
    v89 = (v87 + v88);
    sub_252398E44(v77, v87, type metadata accessor for AccessoryControl.PickerViewConfig);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
    sub_252398E44(v113, v89 + *(v90 + 36), type metadata accessor for AccessoryControl.ValueDestination);
    v91 = v120;
    sub_252398E44(v69, v120, type metadata accessor for HAPControlSolver.Source);
    v92 = (*(v118 + 80) + 16) & ~*(v118 + 80);
    v93 = swift_allocObject();
    sub_252398CFC(v91, v93 + v92, type metadata accessor for HAPControlSolver.Source);
    v94 = v89 + *(v90 + 40);
    *v94 = v125;
    v94[8] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB020);
    v95 = swift_allocObject();
    v125 = xmmword_252694E90;
    *(v95 + 16) = xmmword_252694E90;
    *(v95 + 32) = sub_252398D64;
    *(v95 + 40) = v93;
    *v89 = v95;
    type metadata accessor for AccessoryControl.State(0);
    swift_storeEnumTagMultiPayload();
    v96 = v128;
    (*(v83 + 32))(v86, v127, v128);
    type metadata accessor for AccessoryControl.ElementIdentifier();
    swift_storeEnumTagMultiPayload();
    v97 = (v86 + v85[7]);
    v98 = v85[9];
    *(v86 + v98) = 16;
    *(v86 + v85[6]) = 0;
    *v97 = 0;
    v97[1] = 0;
    *(v86 + v85[8]) = 1028;
    *(v86 + v98) = 14;
    *(v86 + v85[10]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98);
    v99 = (type metadata accessor for AccessoryControlGroup(0) - 8);
    v100 = (*(*v99 + 80) + 32) & ~*(*v99 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = v125;
    v102 = v101 + v100;
    v103 = v130;
    (v132)(v102, v130, v96);
    swift_storeEnumTagMultiPayload();
    sub_252398E44(v86, v102 + v99[7], type metadata accessor for AccessoryControl);
    type metadata accessor for AccessoryControlGroup.Layout(0);
    swift_storeEnumTagMultiPayload();
    v104 = (v103 + *(v129 + 28));
    v106 = *v104;
    v105 = v104[1];
    v107 = (v102 + v99[9]);
    v108 = (v102 + v99[8]);
    *v108 = v106;
    v108[1] = v105;
    *v107 = 0;
    v107[1] = 0;

    (*(v110 + 8))(v109, v111);
    sub_252398DE4(v113, type metadata accessor for AccessoryControl.ValueDestination);
    sub_252398DE4(v86, type metadata accessor for AccessoryControl);
    sub_252398DE4(v77, type metadata accessor for AccessoryControl.PickerViewConfig);
    return v101;
  }
}