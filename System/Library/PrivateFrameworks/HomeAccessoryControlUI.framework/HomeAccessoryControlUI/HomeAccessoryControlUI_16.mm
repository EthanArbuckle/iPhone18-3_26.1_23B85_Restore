uint64_t sub_2524CD4CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25268DA10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268DF30();
  v6 = sub_25268DF20();
  sub_252690210();
  sub_252690410();
  v7 = sub_25268DEF0();

  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  return result;
}

uint64_t ThermostatAutomationSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v2 = type metadata accessor for ThermostatAutomationSettingsView(0);
  v62 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v63 = v3;
  v64 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2526904A0();
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA40);
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA48);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v56 = &v48 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA50);
  MEMORY[0x28223BE20](v55);
  v60 = &v48 - v14;
  v66 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA58);
  sub_252400FC8(&qword_27F4DFA60, &qword_27F4DFA58);
  sub_252690C40();
  v15 = v1;
  v67 = sub_252692C40();
  v68 = v16;
  v17 = sub_252400FC8(&qword_27F4DFA68, &qword_27F4DFA38);
  v18 = sub_252404480();
  v54 = v12;
  v50 = v17;
  v49 = v18;
  sub_252691F40();

  v19 = *(v7 + 8);
  v53 = v6;
  v19(v9, v6);
  v20 = v52;
  v21 = v52[13];
  v22 = v51;
  v21(v51, *MEMORY[0x277D16E30], v4);
  sub_2524D9B8C(&qword_27F4DFA70, MEMORY[0x277D16E40]);
  v23 = v15;
  sub_252692D40();
  sub_252692D40();
  v24 = v20[1];
  v25 = v24(v22, v4);
  if (v67 == v71)
  {
    v26 = 1;
  }

  else
  {
    v21(v22, *MEMORY[0x277D16E20], v4);
    sub_252692D40();
    sub_252692D40();
    v25 = v24(v22, v4);
    v26 = v67 == v71;
  }

  LODWORD(v51) = v26;
  v52 = &v48;
  MEMORY[0x28223BE20](v25);
  *(&v48 - 2) = v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA78);
  v67 = v53;
  v68 = MEMORY[0x277D837D0];
  v69 = v50;
  v70 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFA80);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFA88);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFA90);
  v31 = v58;
  v67 = v58;
  v68 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v67 = v30;
  v68 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDE80);
  v35 = sub_252400FC8(&qword_27F4DDE98, &qword_27F4DDE80);
  v67 = v34;
  v68 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  v67 = v28;
  v68 = v29;
  v69 = v33;
  v70 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v56;
  v38 = v54;
  sub_252691D70();
  (*(v57 + 8))(v38, v31);
  v39 = v64;
  sub_2524DB118(v23, v64, type metadata accessor for ThermostatAutomationSettingsView);
  v40 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v41 = swift_allocObject();
  sub_2524DB180(v39, v41 + v40, type metadata accessor for ThermostatAutomationSettingsView);
  v42 = v60;
  (*(v59 + 32))(v60, v37, v61);
  v43 = (v42 + *(v55 + 36));
  *v43 = sub_2524D9BDC;
  v43[1] = v41;
  v43[2] = 0;
  v43[3] = 0;
  sub_2524DB118(v23, v39, type metadata accessor for ThermostatAutomationSettingsView);
  v44 = swift_allocObject();
  sub_2524DB180(v39, v44 + v40, type metadata accessor for ThermostatAutomationSettingsView);
  v45 = v65;
  sub_2523714D4(v42, v65, &qword_27F4DFA50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA8);
  v47 = (v45 + *(result + 36));
  *v47 = 0;
  v47[1] = 0;
  v47[2] = sub_2524D9E8C;
  v47[3] = v44;
  return result;
}

uint64_t sub_2524CDF18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD88);
  sub_252400FC8(&qword_27F4DFD90, &qword_27F4DFD88);
  return sub_252691BF0();
}

uint64_t sub_2524CDFBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD98);
  v90 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v89 = &v83 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDA0);
  MEMORY[0x28223BE20](v95);
  v96 = &v83 - v5;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDA8);
  MEMORY[0x28223BE20](v97);
  v93 = &v83 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB68);
  MEMORY[0x28223BE20](v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDB0);
  v99 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v87 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v83 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDB8);
  v98 = *(v88 - 1);
  MEMORY[0x28223BE20](v88);
  v86 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v83 - v13;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDC0);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v94 = &v83 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDC8);
  MEMORY[0x28223BE20](v16 - 8);
  v112 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v109 = &v83 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDD0);
  v102 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v111 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF8F8);
  MEMORY[0x28223BE20](v24);
  v26 = &v83 - v25;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDD8);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v108 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v83 - v29;
  sub_2524CF068(a1, v26);
  sub_2524DBAE8();
  v107 = v30;
  sub_252692820();
  v113 = a1;
  sub_2524CFA00(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDE0);
  sub_2524DBB74();
  v110 = v23;
  sub_252692820();
  if (sub_2524CFBF0())
  {
    v85 = v3;
    v31 = type metadata accessor for ThermostatAutomationSettingsView(0);
    MEMORY[0x28223BE20](v31);
    if (v32)
    {
      v114 = sub_252692C40();
      v115 = v33;
      LOBYTE(v116) = 0;
      v117 = MEMORY[0x277D84F90];
      sub_252692070();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDF8);
      sub_2524DBC2C();
      sub_252474348();
      v34 = v10;
      sub_252692820();
      v35 = sub_252692C40();
      v98 = v36;
      v124 = v35;
      v125 = v36;
      v37 = a1 + *(v31 + 40);
      v38 = *v37;
      v39 = *(v37 + 8);
      v122 = v38;
      v123 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
      v40 = sub_252692500();
      v88 = &v83;
      LODWORD(v86) = v116;
      MEMORY[0x28223BE20](v40);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE18);
      v91 = sub_2524DBD24();
      v93 = sub_252404480();
      v82 = sub_252400FC8(&qword_27F4DFE28, &qword_27F4DFE18);
      v41 = v92;
      v42 = v89;
      sub_252692130();

      (*(v99 + 8))(v34, v41);
      v43 = v90;
      v44 = v85;
      (*(v90 + 16))(v96, v42, v85);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DFE30, &qword_27F4DFDA8);
      v114 = v41;
      v115 = MEMORY[0x277D837D0];
      v116 = v87;
      v117 = MEMORY[0x277CE0BD8];
      v118 = v91;
      v119 = v93;
      v120 = v82;
      v121 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v45 = v94;
      sub_252691470();
      (*(v43 + 8))(v42, v44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE38);
      sub_2524DBDC4();
      v84 = v14;
      v48 = sub_252692810();
      MEMORY[0x28223BE20](v48);
      v114 = sub_252692C40();
      v115 = v49;
      LOBYTE(v116) = 0;
      v117 = MEMORY[0x277D84F90];
      sub_252692070();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDF8);
      sub_2524DBC2C();
      sub_252474348();
      v50 = v10;
      v83 = v10;
      sub_252692820();
      v51 = *(v98 + 16);
      v52 = v86;
      v53 = v88;
      v51(v86, v14, v88);
      v54 = v99;
      v55 = *(v99 + 16);
      v56 = v87;
      v57 = v50;
      v58 = v92;
      v55(v87, v57, v92);
      v59 = v93;
      v51(v93, v52, v53);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE50);
      v61 = v59;
      v55((v59 + *(v60 + 48)), v56, v58);
      v62 = *(v54 + 8);
      v99 = v54 + 8;
      v91 = v62;
      v62(v56, v58);
      v63 = *(v98 + 8);
      v98 += 8;
      v63(v52, v53);
      sub_25237153C(v61, v96, &qword_27F4DFDA8);
      swift_storeEnumTagMultiPayload();
      v95 = sub_252400FC8(&qword_27F4DFE30, &qword_27F4DFDA8);
      v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFE18);
      v65 = sub_2524DBD24();
      v66 = sub_252404480();
      v67 = sub_252400FC8(&qword_27F4DFE28, &qword_27F4DFE18);
      v114 = v58;
      v115 = MEMORY[0x277D837D0];
      v116 = v64;
      v117 = MEMORY[0x277CE0BD8];
      v118 = v65;
      v119 = v66;
      v120 = v67;
      v121 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v45 = v94;
      sub_252691470();
      sub_252372288(v93, &qword_27F4DFDA8);
      v91(v83, v58);
      v63(v84, v53);
    }

    v47 = v109;
    sub_2523714D4(v45, v109, &qword_27F4DFDC0);
    v46 = 0;
  }

  else
  {
    v46 = 1;
    v47 = v109;
  }

  (*(v103 + 56))(v47, v46, 1, v104);
  v68 = v100;
  v69 = *(v100 + 16);
  v70 = v108;
  v71 = v101;
  v69(v108, v107, v101);
  v72 = v102;
  v73 = *(v102 + 16);
  v74 = v105;
  v73(v111, v110, v105);
  sub_25231C148(v47, v112);
  v75 = v106;
  v69(v106, v70, v71);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE10);
  v77 = v111;
  v73(&v75[*(v76 + 48)], v111, v74);
  v78 = v112;
  sub_25231C148(v112, &v75[*(v76 + 64)]);
  sub_25231C1B8(v109);
  v79 = *(v72 + 8);
  v79(v110, v74);
  v80 = *(v68 + 8);
  v80(v107, v71);
  sub_25231C1B8(v78);
  v79(v77, v74);
  return (v80)(v108, v71);
}

uint64_t sub_2524CF068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB68);
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  if (*(a1 + *(type metadata accessor for ThermostatAutomationSettingsView(0) + 56)))
  {
    v12 = sub_252692C40();
    v13 = v7;
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    sub_252692070();

    sub_2523714D4(v6, a2, &qword_27F4DDB68);
    return (*(v11 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v9 = *(v11 + 56);

    return v9(a2, 1, 1, v4);
  }
}

uint64_t sub_2524CF234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE08);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-v6];
  sub_2524CF458();
  v16 = a1;
  sub_252692600();
  sub_252400FC8(&qword_27F4DFE00, &qword_27F4DFE08);
  sub_252692070();
  (*(v5 + 8))(v7, v4);
  v8 = (a1 + *(type metadata accessor for ThermostatAutomationSettingsView(0) + 48));
  v9 = *v8;
  v10 = *(v8 + 1);
  v18 = v9;
  v19 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  sub_2526924E0();
  LOBYTE(v4) = v17;
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = (v4 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDE0);
  v14 = (a2 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_25247D5D8;
  v14[2] = v12;
  return result;
}

uint64_t sub_2524CF458()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_252690490();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  sub_2524CCA98(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_252372288(v2, &qword_27F4DB250);
    v21 = 0;
    sub_2526926F0();
  }

  else
  {
    v20 = *(v4 + 32);
    v20(v9, v2, v3);
    type metadata accessor for ThermostatAutomationSettingsView(0);
    v19 = v4 + 16;
    v18 = *(v4 + 16);
    v18(v6, v9, v3);
    v17 = sub_252692E00();
    v10 = sub_252692DF0();
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    *(v12 + 16) = v10;
    *(v12 + 24) = v13;
    v20((v12 + v11), v6, v3);
    v18(v6, v9, v3);
    v14 = sub_252692DF0();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = MEMORY[0x277D85700];
    v20((v15 + v11), v6, v3);
    sub_2526926E0();
    (*(v4 + 8))(v9, v3);
  }

  return v22;
}

uint64_t sub_2524CF894@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ThermostatAutomationSettingsView(0);
  sub_252692C40();
  sub_252404480();
  v2 = sub_252691D50();
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  sub_2526924E0();
  if (v15 == 1)
  {
    sub_252692360();
  }

  else
  {
    sub_252692380();
  }

  v7 = sub_252691CC0();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_2524228D8(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_2524CFA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = (a1 + *(type metadata accessor for ThermostatAutomationSettingsView(0) + 48));
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v14) = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  sub_2526924E0();
  v14 = sub_252692C40();
  v15 = v11;
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  sub_252692070();

  sub_2523714D4(v7, a2, &qword_27F4DDB68);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_2524CFBF0()
{
  v1 = sub_252690460();
  v24 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_25268DD80();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_252690490();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2524CCA98(v12);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v16, v12, v13);
    if (*(v0 + *(type metadata accessor for ThermostatAutomationSettingsView(0) + 56)))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
      sub_2526907E0();
      if (!v26)
      {
        (*(v14 + 8))(v16, v13);
        (*(v25 + 56))(v6, 1, 1, v7);
        goto LABEL_9;
      }

      sub_25268DED0();

      sub_25268DEA0();

      v19 = v25;
      if ((*(v25 + 48))(v6, 1, v7) == 1)
      {
        (*(v14 + 8))(v16, v13);
LABEL_9:
        v17 = &qword_27F4DFE70;
        v18 = v6;
        goto LABEL_10;
      }

      (*(v19 + 32))(v9, v6, v7);
      sub_252690480();
      v21 = sub_252690440();
      (*(v24 + 8))(v3, v1);
      if (v21)
      {
        v20 = sub_25268DD60();
      }

      else
      {
        v20 = 0;
      }

      (*(v19 + 8))(v9, v7);
    }

    else
    {
      v20 = sub_2526903B0();
    }

    (*(v14 + 8))(v16, v13);
    return v20 & 1;
  }

  v17 = &qword_27F4DB250;
  v18 = v12;
LABEL_10:
  sub_252372288(v18, v17);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_2524D0054(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatAutomationSettingsView.PresetOptionView(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2524CCA98(v4 + *(v5 + 20));
  v6 = type metadata accessor for ThermostatAutomationSettingsView(0);
  v7 = v6[15];
  v8 = *(a1 + v6[14]);
  v9 = v2[7];
  v10 = sub_2526904A0();
  (*(*(v10 - 8) + 16))(v4 + v9, a1 + v7, v10);
  v11 = (a1 + v6[8]);
  v12 = *(v11 + 32);
  v13 = *(v11 + 5);
  v14 = v11[1];
  v21 = *v11;
  v22 = v14;
  v23 = v12;
  v24 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE58);
  sub_2526924E0();
  LOBYTE(v7) = v27;
  sub_25268E1B0();
  v19 = v26;
  v20 = v25;
  sub_25268E1A0();
  sub_2524D9B8C(&qword_27F4DFA20, MEMORY[0x277D15458]);
  *v4 = sub_252690AD0();
  v4[1] = v15;
  *(v4 + v2[6]) = v8;
  v16 = v4 + v2[8];
  v17 = v19;
  *v16 = v20;
  *(v16 + 1) = v17;
  v16[32] = v7;
  sub_2524D9B8C(&qword_27F4DFE48, type metadata accessor for ThermostatAutomationSettingsView.PresetOptionView);
  sub_252692070();
  return sub_2524DC010(v4);
}

uint64_t sub_2524D0274()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE08);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[0] = sub_252692C40();
  v6[1] = v4;
  sub_2524D0410();
  sub_252404480();
  sub_252692610();
  sub_252400FC8(&qword_27F4DFE00, &qword_27F4DFE08);
  sub_252692070();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2524D0410()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_252690490();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  sub_2524CCA98(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_252372288(v2, &qword_27F4DB250);
    v24 = 0;
    sub_2526926F0();
  }

  else
  {
    v23 = *(v4 + 32);
    v23(v9, v2, v3);
    v21 = *(v4 + 16);
    v21(v6, v9, v3);
    v20 = sub_252692E00();
    v19 = sub_252692DF0();
    v10 = *(v4 + 80);
    v11 = v9;
    v22 = v9;
    v12 = (v10 + 32) & ~v10;
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    *(v13 + 16) = v19;
    *(v13 + 24) = v14;
    v23((v13 + v12), v6, v3);
    v21(v6, v11, v3);
    v15 = sub_252692DF0();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = MEMORY[0x277D85700];
    v23((v16 + v12), v6, v3);
    sub_2526926E0();
    (*(v4 + 8))(v22, v3);
  }

  return v25;
}

uint64_t sub_2524D0720()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE08);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[0] = sub_252692C40();
  v6[1] = v4;
  sub_2524D08BC();
  sub_252404480();
  sub_252692610();
  sub_252400FC8(&qword_27F4DFE00, &qword_27F4DFE08);
  sub_252692070();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2524D08BC()
{
  v1 = type metadata accessor for ThermostatAutomationSettingsView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v31 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_25268DD80();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  sub_2526907E0();
  if (!v33)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_5;
  }

  v30 = v2;
  sub_25268DED0();

  sub_25268DEA0();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_5:
    sub_252372288(v6, &qword_27F4DFE70);
    v32 = 0;
    sub_2526926F0();
    return v33;
  }

  v14 = *(v8 + 32);
  v26 = v0;
  v27 = v14;
  v28 = v8 + 32;
  v29 = v13;
  v14(v13, v6, v7);
  v25 = type metadata accessor for ThermostatAutomationSettingsView;
  v15 = v31;
  sub_2524DB118(v0, v31, type metadata accessor for ThermostatAutomationSettingsView);
  (*(v8 + 16))(v10, v13, v7);
  v24 = sub_252692E00();
  v16 = sub_252692DF0();
  v17 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v30 = v17 + v3;
  v18 = (v17 + v3 + *(v8 + 80)) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  sub_2524DB180(v15, v19 + v17, type metadata accessor for ThermostatAutomationSettingsView);
  v27(v19 + v18, v10, v7);
  sub_2524DB118(v26, v15, v25);
  v21 = sub_252692DF0();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = MEMORY[0x277D85700];
  sub_2524DB180(v15, v22 + v17, type metadata accessor for ThermostatAutomationSettingsView);
  sub_2526926E0();
  (*(v8 + 8))(v29, v7);
  return v33;
}

uint64_t sub_2524D0CF8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a1;
  v45 = a2;
  v44 = sub_252690D00();
  v42 = *(v44 - 1);
  MEMORY[0x28223BE20](v44);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE60);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v35 - v6;
  v7 = type metadata accessor for ThermostatAutomationSettingsView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD438);
  v48 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v46 = &v35 - v13;
  v49 = sub_252692C40();
  v50 = v14;
  sub_2524DB118(a1, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ThermostatAutomationSettingsView);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_2524DB180(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ThermostatAutomationSettingsView);
  sub_252404480();
  sub_252692580();
  v49 = sub_252692C40();
  v50 = v17;
  sub_2524DB118(v37, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ThermostatAutomationSettingsView);
  v18 = swift_allocObject();
  sub_2524DB180(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15, type metadata accessor for ThermostatAutomationSettingsView);
  sub_252692580();
  v19 = v39;
  sub_252690CF0();
  sub_252400FC8(&qword_27F4DD448, &qword_27F4DD438);
  v20 = v47;
  v21 = v38;
  sub_252691F70();
  (*(v42 + 8))(v19, v44);
  v22 = v48;
  v44 = *(v48 + 8);
  v44(v11, v21);
  v23 = *(v22 + 16);
  v48 = v22 + 16;
  v36 = v11;
  v23(v11, v46, v21);
  v25 = v40;
  v24 = v41;
  v26 = *(v41 + 16);
  v27 = v43;
  v26(v40, v20, v43);
  v28 = v45;
  v23(v45, v11, v21);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE68);
  v26(&v28[*(v29 + 48)], v25, v27);
  v30 = *(v24 + 8);
  v30(v47, v27);
  v31 = v21;
  v32 = v21;
  v33 = v44;
  v44(v46, v32);
  v30(v25, v27);
  return v33(v36, v31);
}

uint64_t sub_2524D1268(int a1)
{
  v2 = v1;
  v41 = a1;
  v3 = type metadata accessor for ThermostatAutomationSettingsView(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36[-v9];
  v11 = sub_25268DD80();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  sub_2526907E0();
  if (!v43[0])
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_252372288(v10, &qword_27F4DFE70);
  }

  sub_25268DED0();

  sub_25268DEA0();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_252372288(v10, &qword_27F4DFE70);
  }

  (*(v12 + 32))(v14, v10, v11);
  v15 = sub_25268DD70();
  v16 = v41;
  if ((v15 ^ v41))
  {
    if (qword_27F4DABD8 != -1)
    {
      swift_once();
    }

    v17 = sub_2526905A0();
    __swift_project_value_buffer(v17, qword_27F4E4B30);
    v18 = sub_252690580();
    v19 = sub_252692F10();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43[0] = v38;
      *v20 = 136315650;
      *(v20 + 4) = sub_2525BDA90(0xD00000000000003DLL, 0x80000002526B0150, v43);
      v37 = v19;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_2525BDA90(0xD00000000000001BLL, 0x80000002526B02A0, v43);
      *(v20 + 22) = 2080;
      if (v41)
      {
        v21 = 1702195828;
      }

      else
      {
        v21 = 0x65736C6166;
      }

      if (v41)
      {
        v22 = 0xE400000000000000;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      v23 = sub_2525BDA90(v21, v22, v43);

      *(v20 + 24) = v23;
      v24 = v38;
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v24, -1, -1);
      v25 = v20;
      v16 = v41;
      MEMORY[0x2530A5A40](v25, -1, -1);
    }

    v26 = sub_252692E30();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    v27 = v40;
    sub_2524DB118(v2, v40, type metadata accessor for ThermostatAutomationSettingsView);
    sub_252692E00();
    v28 = sub_252692DF0();
    v29 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    *(v30 + 16) = v28;
    *(v30 + 24) = v31;
    sub_2524DB180(v27, v30 + v29, type metadata accessor for ThermostatAutomationSettingsView);
    *(v30 + v29 + v4) = v16 & 1;
    sub_2525738C0(0, 0, v7, &unk_2526A2678, v30);
  }

  else
  {
    v33 = v1 + *(v3 + 36);
    v34 = *v33;
    v35 = *(v33 + 8);
    LOBYTE(v43[0]) = v34;
    v43[1] = v35;
    v42 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE78);
    sub_2526924F0();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2524D1834@<X0>(uint64_t a1@<X8>)
{
  result = sub_252692C40();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_2524D1884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v25 = a1;
  v30 = a3;
  v26 = sub_252691140();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA90);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA80);
  v11 = *(v10 - 8);
  v28 = v10;
  v29 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA40);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFA38);
  v16 = sub_252400FC8(&qword_27F4DFA68, &qword_27F4DFA38);
  v17 = sub_252404480();
  v32 = v15;
  v33 = MEMORY[0x277D837D0];
  v34 = v16;
  v35 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2526920B0();
  v19 = v26;
  (*(v3 + 104))(v5, *MEMORY[0x277CDDDC0], v26);
  v32 = v14;
  v33 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  sub_2526920C0();
  (*(v3 + 8))(v5, v19);
  (*(v7 + 8))(v9, v6);
  v31 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA88);
  v32 = v6;
  v33 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDE80);
  v22 = sub_252400FC8(&qword_27F4DDE98, &qword_27F4DDE80);
  v32 = v21;
  v33 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v28;
  sub_2526921B0();
  return (*(v29 + 8))(v13, v23);
}

uint64_t sub_2524D1CA0(uint64_t a1)
{
  v2 = sub_252691550();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDE80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_252691540();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDE88);
  sub_252400FC8(&qword_27F4DDE90, &qword_27F4DDE88);
  sub_252690900();
  v7 = sub_252400FC8(&qword_27F4DDE98, &qword_27F4DDE80);
  MEMORY[0x2530A30F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2524D1E8C(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatAutomationSettingsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_252690740();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252690730();
  sub_2524DB118(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ThermostatAutomationSettingsView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_2524DB180(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ThermostatAutomationSettingsView);
  return MEMORY[0x2530A40D0](v7, sub_2524DBAC8, v9);
}

uint64_t sub_2524D2008(uint64_t a1)
{
  v2 = sub_2526909E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for ThermostatAutomationSettingsView(0) + 64));
  if (*v6)
  {
    (*v6)();
  }

  sub_2524D465C(&qword_27F4DEF70, MEMORY[0x277CDD848], v5);
  sub_2526909D0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2524D2128(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatAutomationSettingsView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20[-v8];
  v10 = sub_2524D2364();
  v11 = a1 + *(v3 + 56);
  v12 = *v11;
  v13 = *(v11 + 8);
  v20[16] = v12;
  v21 = v13;
  v20[15] = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  sub_2526924F0();
  v14 = sub_252692E30();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_2524DB118(a1, v6, type metadata accessor for ThermostatAutomationSettingsView);
  sub_252692E00();
  v15 = sub_252692DF0();
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_2524DB180(v6, v17 + v16, type metadata accessor for ThermostatAutomationSettingsView);
  sub_252573ED4(0, 0, v9, &unk_2526A2598, v17);
}

uint64_t sub_2524D2364()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v9 - v2;
  if (*(v0 + *(type metadata accessor for ThermostatAutomationSettingsView(0) + 56)))
  {
    goto LABEL_2;
  }

  sub_2524CCA98(v3);
  v5 = sub_252690490();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_252372288(v3, &qword_27F4DB250);
  }

  else
  {
    v7 = sub_2526903B0();
    (*(v6 + 8))(v3, v5);
    if (v7)
    {
LABEL_2:
      v4 = 1;
      return v4 & 1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  sub_2526907E0();
  if (v9[1])
  {
    sub_25268DED0();

    v4 = sub_25268DEC0();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_2524D2510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_252692E00();
  v4[5] = sub_252692DF0();
  v6 = sub_252692DE0();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_2524D25A8, v6, v5);
}

uint64_t sub_2524D25A8()
{
  type metadata accessor for ThermostatAutomationSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  sub_2526907E0();
  v1 = *(v0 + 16);
  *(v0 + 64) = v1;
  if (v1)
  {
    v5 = (*MEMORY[0x277D15090] + MEMORY[0x277D15090]);
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_2524D26D8;

    return v5();
  }

  else
  {

    **(v0 + 24) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2524D26D8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_2524D281C, v3, v2);
}

uint64_t sub_2524D281C()
{

  **(v0 + 24) = *(v0 + 64) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2524D2890(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatAutomationSettingsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_252692E30();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_2524DB118(a1, v5, type metadata accessor for ThermostatAutomationSettingsView);
  sub_252692E00();
  v10 = sub_252692DF0();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_2524DB180(v5, v12 + v11, type metadata accessor for ThermostatAutomationSettingsView);
  sub_252573ED4(0, 0, v8, &unk_2526A2580, v12);
}

uint64_t sub_2524D2A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_252692E00();
  v4[5] = sub_252692DF0();
  v6 = sub_252692DE0();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_2524D2B08, v6, v5);
}

uint64_t sub_2524D2B08()
{
  type metadata accessor for ThermostatAutomationSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  sub_2526907E0();
  v1 = *(v0 + 16);
  *(v0 + 64) = v1;
  if (v1)
  {
    sub_25268DEE0();
    sub_2524D9B8C(&qword_27F4DFD80, MEMORY[0x277D15148]);
    v3 = sub_252692DE0();

    return MEMORY[0x2822009F8](sub_2524D2C44, v3, v2);
  }

  else
  {

    **(v0 + 24) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2524D2C44()
{
  sub_25268DC20();

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_2524DCA48, v1, v2);
}

uint64_t sub_2524D2CB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for ThermostatAutomationSettingsView.PresetOptionView(0);
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = v4;
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC20);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v40 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC28);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v41 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_252690490();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_25237153C(v2 + *(v3 + 20), v11, &qword_27F4DB250);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_252372288(v11, &qword_27F4DB250);
LABEL_3:
    v19 = 1;
    v20 = v46;
    return (*(v44 + 56))(v20, v19, 1, v45);
  }

  v36 = *(v13 + 32);
  v36(v18, v11, v12);
  if (*(v2 + *(v3 + 24)))
  {
    v21 = 0xED00007473616365;
  }

  else
  {
    v21 = 0x80000002526ADAE0;
  }

  if ((*(v2 + *(v3 + 24)) & 1) != 0 || 0x80000002526ADAE0 != v21)
  {
    v22 = sub_2526933B0();

    if ((v22 & 1) == 0)
    {
      (*(v13 + 8))(v18, v12);
      goto LABEL_3;
    }
  }

  else
  {
  }

  v23 = sub_252690230();
  if (v23)
  {
    v47 = v23;
    swift_getKeyPath();
    v24 = v2;
    v25 = v39;
    sub_2524DB118(v24, v39, type metadata accessor for ThermostatAutomationSettingsView.PresetOptionView);
    (*(v13 + 16))(v15, v18, v12);
    v26 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v27 = (v38 + *(v13 + 80) + v26) & ~*(v13 + 80);
    v28 = swift_allocObject();
    sub_2524DB180(v25, v28 + v26, type metadata accessor for ThermostatAutomationSettingsView.PresetOptionView);
    v36((v28 + v27), v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC38);
    sub_252400FC8(&qword_27F4DFC40, &qword_27F4DFC30);
    sub_2524D9B8C(&qword_27F4DFC48, MEMORY[0x277D15FB0]);
    sub_2524DB2CC();
    v29 = v40;
    sub_252692790();
    (*(v13 + 8))(v18, v12);
    v31 = v41;
    v30 = v42;
    v32 = v43;
    (*(v42 + 32))(v41, v29, v43);
    v33 = 0;
  }

  else
  {
    (*(v13 + 8))(v18, v12);
    v33 = 1;
    v30 = v42;
    v32 = v43;
    v31 = v41;
  }

  (*(v30 + 56))(v31, v33, 1, v32);
  v34 = v46;
  sub_2523714D4(v31, v46, &qword_27F4DFC28);
  v20 = v34;
  v19 = 0;
  return (*(v44 + 56))(v20, v19, 1, v45);
}

uint64_t sub_2524D3324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v131 = a3;
  v153 = a1;
  v154 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  MEMORY[0x28223BE20](v5 - 8);
  v140 = &v107 - v6;
  v146 = sub_2526904A0();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v144 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25268F260();
  v9 = *(v8 - 8);
  v151 = v8;
  v152 = v9;
  MEMORY[0x28223BE20](v8);
  v137 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v136 = &v107 - v12;
  MEMORY[0x28223BE20](v13);
  v150 = &v107 - v14;
  v147 = type metadata accessor for ThermostatPresetsDetailView();
  MEMORY[0x28223BE20](v147);
  v132 = (&v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC70);
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v107 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v107 - v18;
  v20 = sub_252690490();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v139 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v149 = &v107 - v24;
  v138 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v107 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC78);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v107 - v30;
  v32 = sub_25268F9F0();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v135 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v134 = &v107 - v36;
  MEMORY[0x28223BE20](v37);
  v148 = &v107 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v107 - v40;
  v42 = type metadata accessor for ThermostatAutomationSettingsView.PresetOptionView(0);
  v43 = *(v42 + 20);
  v133 = a2;
  sub_25237153C(a2 + v43, v19, &qword_27F4DB250);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_252372288(v19, &qword_27F4DB250);
    (*(v33 + 56))(v31, 1, 1, v32);
LABEL_4:
    sub_252372288(v31, &qword_27F4DFC78);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC60);
    return (*(*(v45 - 8) + 56))(v154, 1, 1, v45);
  }

  v44 = *(v21 + 32);
  v129 = v21 + 32;
  v128 = v44;
  v44(v28, v19, v20);
  sub_2526900D0();
  v130 = *(v21 + 8);
  v130(v28, v20);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    goto LABEL_4;
  }

  v47 = v33;
  v119 = v33;
  v48 = *(v33 + 32);
  v120 = v21 + 8;
  v125 = v32;
  v49 = v48(v41, v31, v32);
  v122 = &v107;
  v50 = MEMORY[0x28223BE20](v49);
  v121 = &v107 - 6;
  v51 = v153;
  *(&v107 - 4) = v131;
  *(&v107 - 3) = v51;
  v123 = v41;
  *(&v107 - 2) = v41;
  v52 = *(v21 + 16);
  v126 = v21 + 16;
  v127 = v52;
  (v52)(v149, v50);
  v124 = v20;
  v53 = *(v152 + 16);
  v111 = v152 + 16;
  v112 = v53;
  v53(v150, v51, v151);
  v54 = *(v47 + 16);
  v118 = v47 + 16;
  v131 = v54;
  v54(v148, v41, v32);
  v55 = v133 + *(v42 + 32);
  v57 = *(v55 + 8);
  v117 = *v55;
  v56 = v117;
  v116 = v57;
  v58 = *(v55 + 24);
  v115 = *(v55 + 16);
  v110 = v58;
  v59 = *MEMORY[0x277D16E38];
  v60 = *(v145 + 104);
  v114 = *(v55 + 32);
  v60(v144, v59, v146);
  KeyPath = swift_getKeyPath();
  v62 = v132;
  *v132 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  swift_storeEnumTagMultiPayload();
  v63 = v147;
  v64 = (v62 + *(v147 + 20));
  sub_25268E1B0();
  sub_252420508(v56, v57);
  *&v155 = sub_25268E1A0();
  sub_2526924D0();
  v65 = *(&v158 + 1);
  *v64 = v158;
  v64[1] = v65;
  v66 = v63[6];
  sub_25268DF30();
  *(v62 + v66) = sub_25268DF20();
  v67 = v21;
  v68 = v63;
  v69 = v63[7];
  v70 = *(v67 + 56);
  v71 = v124;
  v70(v62 + v69, 1, 1, v124);
  v107 = v67 + 56;
  v133 = v63[9];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA28);
  sub_2526907D0();
  v72 = v62 + v63[12];
  LOBYTE(v155) = 0;
  sub_2526924D0();
  v73 = *(&v158 + 1);
  *v72 = v158;
  *(v72 + 1) = v73;
  v74 = v62 + v63[13];
  LOBYTE(v155) = 0;
  sub_2526924D0();
  v75 = *(&v158 + 1);
  *v74 = v158;
  *(v74 + 1) = v75;
  v76 = v62 + v63[14];
  v157 = 0;
  v155 = 0u;
  v156 = 0u;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA30);
  sub_2526924D0();
  v77 = v160;
  v78 = v161;
  v79 = v159;
  *v76 = v158;
  *(v76 + 1) = v79;
  v76[32] = v77;
  *(v76 + 5) = v78;
  v80 = v62 + v63[15];
  LOBYTE(v155) = 0;
  sub_2526924D0();
  v81 = *(&v158 + 1);
  *v80 = v158;
  *(v80 + 1) = v81;
  v108 = (v62 + v63[17]);
  sub_252372288(v62 + v69, &qword_27F4DB250);
  v127(v62 + v69, v149, v71);
  v70(v62 + v69, 0, 1, v71);
  v82 = v136;
  v83 = v151;
  v84 = v112;
  v112(v136, v150, v151);
  v84(v137, v82, v83);
  sub_2526924D0();
  v85 = *(v152 + 8);
  v152 += 8;
  v137 = v85;
  (v85)(v82, v83);
  v86 = v134;
  v87 = v125;
  v88 = v131;
  v131(v134, v148, v125);
  v88(v135, v86, v87);
  sub_2526924D0();
  v136 = *(v119 + 8);
  (v136)(v86, v87);
  sub_2524DB444(*v76, *(v76 + 1));

  *&v158 = v117;
  *(&v158 + 1) = v116;
  *&v159 = v115;
  *(&v159 + 1) = v110;
  v160 = v114;
  sub_2526924D0();
  v89 = v145;
  v90 = v62 + v68[16];
  v91 = v144;
  v92 = v146;
  (*(v145 + 16))(v90, v144, v146);
  v93 = v108;
  *v108 = 0;
  v93[1] = 0;
  v94 = v149;
  sub_252690400();
  v95 = v139;
  v96 = v124;
  v127(v139, v94, v124);
  v97 = (*(v107 + 24) + 16) & ~*(v107 + 24);
  v98 = swift_allocObject();
  v128(v98 + v97, v95, v96);
  v99 = v140;
  sub_2526907D0();
  (*(v89 + 8))(v91, v92);
  v100 = v125;
  v101 = v136;
  (v136)(v148, v125);
  (v137)(v150, v151);
  v130(v94, v96);
  sub_2524D9B14(v99, v62 + v133);
  type metadata accessor for ThermostatAutomationSettingsView.PresetNavigationLabelView(0);
  sub_2524D9B8C(&qword_27F4DFC80, type metadata accessor for ThermostatAutomationSettingsView.PresetNavigationLabelView);
  sub_2524D9B8C(&qword_27F4DFC88, type metadata accessor for ThermostatPresetsDetailView);
  v102 = v141;
  sub_252690AC0();
  *&v158 = 0;
  *(&v158 + 1) = 0xE000000000000000;
  sub_252693210();
  MEMORY[0x2530A4800](0xD00000000000003DLL, 0x80000002526AFE40);
  v103 = sub_25268F1C0();
  MEMORY[0x2530A4800](v103);

  sub_252400FC8(&qword_27F4DFC68, &qword_27F4DFC70);
  v104 = v154;
  v105 = v143;
  sub_252692070();

  (*(v142 + 8))(v102, v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC60);
  (*(*(v106 - 8) + 56))(v104, 0, 1, v106);
  return v101(v123, v100);
}

uint64_t sub_2524D4334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ThermostatAutomationSettingsView.PresetNavigationLabelView(0);
  v9 = v8[5];
  v10 = sub_252690490();
  (*(*(v10 - 8) + 16))(a4 + v9, a1, v10);
  v11 = v8[6];
  v12 = sub_25268F260();
  (*(*(v12 - 8) + 16))(a4 + v11, a2, v12);
  v13 = v8[7];
  v14 = sub_25268F9F0();
  (*(*(v14 - 8) + 16))(a4 + v13, a3, v14);
  v15 = v8[8];
  v16 = *MEMORY[0x277D16E38];
  v17 = sub_2526904A0();
  (*(*(v17 - 8) + 104))(a4 + v15, v16, v17);
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAB0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ThermostatAutomationSettingsView.PresetNavigationLabelView.init(thermostatCluster:preset:presetType:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAB0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for ThermostatAutomationSettingsView.PresetNavigationLabelView(0);
  v11 = v10[5];
  v12 = sub_252690490();
  (*(*(v12 - 8) + 32))(a5 + v11, a1, v12);
  v13 = v10[6];
  v14 = sub_25268F260();
  (*(*(v14 - 8) + 32))(a5 + v13, a2, v14);
  v15 = v10[7];
  v16 = sub_25268F9F0();
  (*(*(v16 - 8) + 32))(a5 + v15, a3, v16);
  v17 = v10[8];
  v18 = sub_2526904A0();
  v19 = *(*(v18 - 8) + 32);

  return v19(a5 + v17, a4, v18);
}

uint64_t sub_2524D465C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_2526910F0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_25237153C(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_252692F00();
    v17 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t ThermostatAutomationSettingsView.PresetNavigationLabelView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2526911D0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAB8);
  return sub_2524D48B8(v1, a1 + *(v3 + 44));
}

uint64_t sub_2524D48B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFCE0);
  MEMORY[0x28223BE20](v108);
  v107 = (&v84 - v3);
  v106 = sub_252690B80();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v102 = &v84 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v7 - 8);
  v95 = &v84 - v8;
  v96 = sub_252691BD0();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2526904A0();
  v91 = *(v10 - 8);
  v92 = v10;
  MEMORY[0x28223BE20](v10);
  v90 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB68);
  MEMORY[0x28223BE20](v12 - 8);
  v100 = &v84 - v13;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFCE8);
  MEMORY[0x28223BE20](v97);
  v105 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = &v84 - v16;
  MEMORY[0x28223BE20](v17);
  v101 = &v84 - v18;
  v88 = sub_2526923E0();
  v19 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25268FEF0();
  v84 = v22;
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFCF0);
  MEMORY[0x28223BE20](v26 - 8);
  v98 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v110 = &v84 - v29;
  v89 = type metadata accessor for ThermostatAutomationSettingsView.PresetNavigationLabelView(0);
  v111 = *(v89 + 24);
  v112 = a1;
  sub_25268F1E0();
  sub_25268FEE0();
  v85 = *(v23 + 8);
  v85(v25, v22);
  v87 = v23 + 8;
  sub_2526923D0();
  v30 = v88;
  (*(v19 + 104))(v21, *MEMORY[0x277CE0FE0], v88);
  v86 = sub_252692420();

  (*(v19 + 8))(v21, v30);
  sub_252692920();
  sub_2526909C0();
  LOBYTE(v122[0]) = 1;
  *&v121[3] = *&v121[27];
  *&v121[11] = *&v121[35];
  *&v121[19] = *&v121[43];
  sub_25268F1E0();
  v31 = sub_25268FEC0();
  v32 = v84;
  v33 = v85;
  v85(v25, v84);
  KeyPath = swift_getKeyPath();
  LOBYTE(v21) = sub_252691A70();
  sub_252690760();
  *(v116 + 2) = *v121;
  LOBYTE(v113) = 0;
  v115 = v86;
  LOWORD(v116[0]) = 1;
  *(&v116[1] + 2) = *&v121[8];
  *(&v116[2] + 2) = *&v121[16];
  *&v116[3] = *&v121[23];
  *(&v116[3] + 1) = KeyPath;
  *&v117 = v31;
  BYTE8(v117) = v21;
  *&v118 = v35;
  *(&v118 + 1) = v36;
  *&v119 = v37;
  *(&v119 + 1) = v38;
  v120 = 0;
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_252693210();

  *&v122[0] = 0xD000000000000026;
  *(&v122[0] + 1) = 0x80000002526AFEE0;
  sub_25268F1E0();
  v39 = sub_25268FEE0();
  v41 = v40;
  v33(v25, v32);
  MEMORY[0x2530A4800](v39, v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFCF8);
  sub_2524DB5AC();
  sub_252692070();

  v122[5] = v117;
  v122[6] = v118;
  v122[7] = v119;
  v122[1] = v116[0];
  v122[2] = v116[1];
  v122[3] = v116[2];
  v122[4] = v116[3];
  v123 = v120;
  v122[0] = v115;
  sub_252372288(v122, &qword_27F4DFCF8);
  v42 = v90;
  v44 = v91;
  v43 = v92;
  (*(v91 + 104))(v90, *MEMORY[0x277D16E20], v92);
  sub_2524D9B8C(&qword_27F4DFA70, MEMORY[0x277D16E40]);
  sub_252692D40();
  sub_252692D40();
  (*(v44 + 8))(v42, v43);
  if (v115 == v113)
  {
    sub_25268F1B0();
  }

  else
  {
    sub_25268F1C0();
  }

  v45 = [objc_opt_self() labelColor];
  sub_252692240();
  v46 = sub_252691CC0();
  v48 = v47;
  v50 = v49;

  v52 = v93;
  v51 = v94;
  v53 = v96;
  (*(v94 + 104))(v93, *MEMORY[0x277CE0AC0], v96);
  v54 = sub_252691B00();
  v55 = v95;
  (*(*(v54 - 8) + 56))(v95, 1, 1, v54);
  sub_252691B60();
  sub_252372288(v55, &qword_27F4DBD40);
  (*(v51 + 8))(v52, v53);
  sub_252691B30();
  sub_252691B90();

  v56 = sub_252691D00();
  v58 = v57;
  v60 = v59;
  v62 = v61;

  sub_2524228D8(v46, v48, v50 & 1);

  *&v115 = v56;
  *(&v115 + 1) = v58;
  LOBYTE(v46) = v60 & 1;
  LOBYTE(v116[0]) = v60 & 1;
  *(&v116[0] + 1) = v62;
  v113 = 0;
  v114 = 0xE000000000000000;
  sub_252693210();

  v113 = 0xD000000000000027;
  v114 = 0x80000002526AFF10;
  v63 = v112;
  v64 = sub_25268F1C0();
  MEMORY[0x2530A4800](v64);

  v65 = v100;
  sub_252692070();

  sub_2524228D8(v56, v58, v46);

  v66 = v102;
  sub_2524D465C(&qword_27F4DFAB0, MEMORY[0x277CDFA28], v102);
  v68 = v103;
  v67 = v104;
  v69 = v106;
  (*(v104 + 104))(v103, *MEMORY[0x277CDF988], v106);
  sub_2524D9B8C(&qword_27F4DFD08, MEMORY[0x277CDFA28]);
  v70 = sub_252692B50();
  v71 = *(v67 + 8);
  v71(v68, v69);
  v71(v66, v69);
  v72 = v99;
  v99[*(v97 + 36)] = (v70 & 1) == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD10);
  v73 = sub_2526911D0();
  v74 = v107;
  *v107 = v73;
  *(v74 + 8) = 0x4020000000000000;
  *(v74 + 16) = 0;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD18);
  sub_2524D5688(v63, v74 + *(v75 + 44));
  sub_252400FC8(&qword_27F4DFD20, &qword_27F4DFCE0);
  sub_252692070();
  sub_252372288(v74, &qword_27F4DFCE0);
  sub_2523714D4(v65, v72, &qword_27F4DDB68);
  v76 = v72;
  v77 = v101;
  sub_2523714D4(v76, v101, &qword_27F4DFCE8);
  v78 = v110;
  v79 = v98;
  sub_25237153C(v110, v98, &qword_27F4DFCF0);
  v80 = v105;
  sub_25237153C(v77, v105, &qword_27F4DFCE8);
  v81 = v109;
  sub_25237153C(v79, v109, &qword_27F4DFCF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD28);
  sub_25237153C(v80, v81 + *(v82 + 48), &qword_27F4DFCE8);
  sub_252372288(v77, &qword_27F4DFCE8);
  sub_252372288(v78, &qword_27F4DFCF0);
  sub_252372288(v80, &qword_27F4DFCE8);
  return sub_252372288(v79, &qword_27F4DFCF0);
}

uint64_t sub_2524D5688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD30);
  MEMORY[0x28223BE20](v137);
  v121 = v111 - v3;
  v118 = sub_25268F290();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for ThermostatAutomationSettingsView.SetpointIconView(0);
  v136 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v116 = (v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD38);
  MEMORY[0x28223BE20](v6 - 8);
  v120 = v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v119 = v111 - v9;
  MEMORY[0x28223BE20](v10);
  v126 = v111 - v11;
  MEMORY[0x28223BE20](v12);
  v125 = v111 - v13;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD40);
  MEMORY[0x28223BE20](v139);
  v141 = v111 - v14;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB68);
  MEMORY[0x28223BE20](v140);
  v114 = v111 - v15;
  v135 = sub_2526900B0();
  v146 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v112 = v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD48);
  MEMORY[0x28223BE20](v131);
  v134 = v111 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD50);
  v19 = *(v18 - 8);
  v144 = v18;
  v145 = v19;
  MEMORY[0x28223BE20](v18);
  v138 = v111 - v20;
  v130 = sub_2526902B0();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v127 = v111 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD58);
  MEMORY[0x28223BE20](v24 - 8);
  v133 = v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v132 = v111 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = v111 - v29;
  v31 = sub_2526904A0();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ThermostatAutomationSettingsView.PresetNavigationLabelView(0);
  v36 = *(v35 + 20);
  v149 = *(v35 + 24);
  v37 = sub_2526903D0();
  v38 = *MEMORY[0x277D16E20];
  v148 = a1;
  if ((v37 & 1) != 0 || ((*(v32 + 104))(v34, v38, v31), sub_2524D9B8C(&qword_27F4DFA70, MEMORY[0x277D16E40]), sub_252692D40(), sub_252692D40(), (*(v32 + 8))(v34, v31), v150 == v154))
  {
    sub_2526900E0();
    v39 = *(v32 + 104);
    v124 = v38;
    v123 = v39;
    v39(v34, v38, v31);
    sub_2524D9B8C(&qword_27F4DFA70, MEMORY[0x277D16E40]);
    sub_252692D40();
    sub_252692D40();
    v41 = *(v32 + 8);
    v40 = v32 + 8;
    v122 = v41;
    v41(v34, v31);
    v142 = v30;
    if (v150 == v154 && (v111[2] = v36, v42 = v127, sub_2526902C0(), v43 = *MEMORY[0x277D16D50], v44 = v129, v45 = *(v129 + 104), v111[1] = v40, v46 = v128, v47 = v130, v45(v128, v43, v130), sub_2524D9B8C(&qword_27F4DFD78, MEMORY[0x277D16D60]), v113 = sub_252692B70(), v48 = *(v44 + 8), v48(v46, v47), v48(v42, v47), v30 = v142, (v113 & 1) == 0))
    {
      v113 = 1;
    }

    else
    {
      v113 = sub_252690240();
    }

    v123(v34, v124, v31);
    sub_252692D40();
    sub_252692D40();
    v122(v34, v31);
    if (v150 == v154 && (v50 = v127, sub_2526902C0(), v51 = v129, v52 = v128, v53 = v130, (*(v129 + 104))(v128, *MEMORY[0x277D16D48], v130), sub_2524D9B8C(&qword_27F4DFD78, MEMORY[0x277D16D60]), v54 = sub_252692B70(), v55 = *(v51 + 8), v55(v52, v53), v55(v50, v53), (v54 & 1) == 0))
    {
      LODWORD(v130) = 1;
    }

    else
    {
      LODWORD(v130) = sub_252690250();
    }

    v56 = v143;
    v57 = v136;
    v58 = v135;
    v59 = v132;
    v60 = v146;
    (*(v146 + 104))(v132, *MEMORY[0x277D16D00], v135);
    (*(v60 + 56))(v59, 0, 1, v58);
    v61 = *(v131 + 48);
    v62 = v134;
    sub_25237153C(v30, v134, &qword_27F4DFD58);
    sub_25237153C(v59, v62 + v61, &qword_27F4DFD58);
    v63 = *(v60 + 48);
    v64 = v63(v62, 1, v58);
    v65 = v133;
    if (v64 == 1)
    {
      sub_252372288(v59, &qword_27F4DFD58);
      if (v63(v62 + v61, 1, v58) == 1)
      {
        sub_252372288(v62, &qword_27F4DFD58);
LABEL_24:
        sub_252692C40();
        sub_2526922D0();
        v103 = sub_252691CC0();
        v105 = v104;
        v107 = v106;
        v109 = v108;

        v150 = v103;
        v151 = v105;
        v152 = v107 & 1;
        v153 = v109;
        v79 = v114;
        sub_252692070();
        sub_2524228D8(v103, v105, v107 & 1);

        v92 = &qword_27F4DDB68;
        sub_25237153C(v79, v141, &qword_27F4DDB68);
        swift_storeEnumTagMultiPayload();
        sub_252474348();
        sub_252400FC8(&qword_27F4DFD68, &qword_27F4DFD30);
        v97 = v138;
        sub_252691470();
LABEL_25:
        sub_252372288(v79, v92);
        sub_252372288(v142, &qword_27F4DFD58);
        sub_2523714D4(v97, v147, &qword_27F4DFD50);
        v49 = 0;
        return (*(v145 + 56))(v147, v49, 1, v144);
      }
    }

    else
    {
      sub_25237153C(v62, v133, &qword_27F4DFD58);
      if (v63(v62 + v61, 1, v58) != 1)
      {
        v98 = v146;
        v99 = v112;
        (*(v146 + 32))(v112, v62 + v61, v58);
        sub_2524D9B8C(&qword_27F4DFD70, MEMORY[0x277D16D08]);
        v100 = sub_252692B70();
        v101 = v58;
        v102 = *(v98 + 8);
        v102(v99, v101);
        sub_252372288(v59, &qword_27F4DFD58);
        v102(v65, v101);
        v56 = v143;
        sub_252372288(v62, &qword_27F4DFD58);
        if (v100)
        {
          goto LABEL_24;
        }

LABEL_18:
        v66 = MEMORY[0x277D16048];
        if (v130)
        {
          sub_25268F240();
          v67 = v117;
          v68 = v115;
          v69 = v118;
          (*(v117 + 104))(v115, *v66, v118);
          v70 = sub_25268F2D0();
          v72 = v71;
          (*(v67 + 8))(v68, v69);
          v73 = *(v56 + 20);
          v74 = *MEMORY[0x277D16CE8];
          v75 = sub_252690080();
          v76 = v116;
          (*(*(v75 - 8) + 104))(v116 + v73, v74, v75);
          *v76 = v70;
          v76[1] = v72;
          sub_2524DB180(v76, v125, type metadata accessor for ThermostatAutomationSettingsView.SetpointIconView);
        }

        v77 = *(v57 + 56);
        v78 = 1;
        v79 = v125;
        v77();
        if (v113)
        {
          sub_25268F230();
          v80 = *v66;
          v81 = v117;
          v82 = v115;
          v83 = v118;
          (*(v117 + 104))(v115, v80, v118);
          v84 = sub_25268F2D0();
          v86 = v85;
          (*(v81 + 8))(v82, v83);
          v87 = *(v56 + 20);
          v88 = *MEMORY[0x277D16CE0];
          v89 = sub_252690080();
          v90 = v116;
          (*(*(v89 - 8) + 104))(v116 + v87, v88, v89);
          *v90 = v84;
          v90[1] = v86;
          sub_2524DB180(v90, v126, type metadata accessor for ThermostatAutomationSettingsView.SetpointIconView);
          v78 = 0;
        }

        v91 = v126;
        (v77)(v126, v78, 1, v56);
        v92 = &qword_27F4DFD38;
        v93 = v119;
        sub_25237153C(v79, v119, &qword_27F4DFD38);
        v94 = v120;
        sub_25237153C(v91, v120, &qword_27F4DFD38);
        v95 = v121;
        sub_25237153C(v93, v121, &qword_27F4DFD38);
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD60);
        sub_25237153C(v94, v95 + *(v96 + 48), &qword_27F4DFD38);
        sub_252372288(v94, &qword_27F4DFD38);
        sub_252372288(v93, &qword_27F4DFD38);
        sub_25237153C(v95, v141, &qword_27F4DFD30);
        swift_storeEnumTagMultiPayload();
        sub_252474348();
        sub_252400FC8(&qword_27F4DFD68, &qword_27F4DFD30);
        v97 = v138;
        sub_252691470();
        sub_252372288(v95, &qword_27F4DFD30);
        sub_252372288(v91, &qword_27F4DFD38);
        goto LABEL_25;
      }

      sub_252372288(v59, &qword_27F4DFD58);
      (*(v146 + 8))(v65, v58);
    }

    sub_252372288(v62, &qword_27F4DFD48);
    goto LABEL_18;
  }

  v49 = 1;
  return (*(v145 + 56))(v147, v49, 1, v144);
}

uint64_t sub_2524D6998@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2526911D0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAB8);
  return sub_2524D48B8(v1, a1 + *(v3 + 44));
}

uint64_t ThermostatAutomationSettingsView.SetpointIconView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252694EA0;
  v7 = sub_2526919E0();
  *(inited + 32) = v7;
  v8 = sub_252691A00();
  *(inited + 33) = v8;
  v9 = sub_2526919F0();
  sub_2526919F0();
  if (sub_2526919F0() != v7)
  {
    v9 = sub_2526919F0();
  }

  sub_2526919F0();
  if (sub_2526919F0() != v8)
  {
    v9 = sub_2526919F0();
  }

  *v5 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAD0);
  sub_2524D6B98(v1, &v5[*(v10 + 44)]);
  v11 = sub_2526922D0();
  KeyPath = swift_getKeyPath();
  sub_2523714D4(v5, a1, &qword_27F4DFAC0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAD8);
  v14 = (a1 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = v11;
  return result;
}

uint64_t sub_2524D6B98@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  *v15 = sub_2526911D0();
  *(v15 + 1) = 0x4000000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFCA0);
  sub_2524D6DDC(a1, &v15[*(v16 + 44)]);
  *v9 = sub_2526912E0();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFCA8);
  sub_2524D7318(a1, &v9[*(v17 + 44)]);
  sub_25237153C(v15, v12, &qword_27F4DFC98);
  sub_25237153C(v9, v6, &qword_27F4DFC90);
  sub_25237153C(v12, a2, &qword_27F4DFC98);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFCB0);
  sub_25237153C(v6, a2 + *(v18 + 48), &qword_27F4DFC90);
  sub_252372288(v9, &qword_27F4DFC90);
  sub_252372288(v15, &qword_27F4DFC98);
  sub_252372288(v6, &qword_27F4DFC90);
  return sub_252372288(v12, &qword_27F4DFC98);
}

uint64_t sub_2524D6DDC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v38 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB68);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v36 = &v31 - v5;
  v6 = sub_252690080();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFCC0);
  MEMORY[0x28223BE20](v10 - 8);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v34 = &v31 - v13;
  v33 = *(type metadata accessor for ThermostatAutomationSettingsView.SetpointIconView(0) + 20);
  v14 = *MEMORY[0x277D16CE0];
  v15 = *(v7 + 104);
  v15(v9, v14, v6);
  sub_2524D9B8C(&qword_27F4DFCC8, MEMORY[0x277D16CF0]);
  sub_252692D40();
  sub_252692D40();
  v16 = *(v7 + 8);
  v16(v9, v6);
  v39 = sub_2526923D0();
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_252693210();

  v41 = 0xD00000000000002CLL;
  v42 = 0x80000002526AFE80;
  v15(v9, v14, v6);
  v17 = v32;
  sub_252692D40();
  sub_252692D40();
  v16(v9, v6);
  if (v46 == v45)
  {
    v18 = 0x6B616C66776F6E73;
  }

  else
  {
    v18 = 0x656D616C66;
  }

  if (v46 == v45)
  {
    v19 = 0xE900000000000065;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x2530A4800](v18, v19);

  v20 = v34;
  sub_252692070();

  v22 = *v17;
  v21 = v17[1];
  v41 = v22;
  v42 = v21;
  v43 = 0;
  v44 = MEMORY[0x277D84F90];
  v39 = 0;
  v40 = 0xE000000000000000;

  sub_252693210();

  v39 = 0xD000000000000027;
  v40 = 0x80000002526AFEB0;
  MEMORY[0x2530A4800](v22, v21);
  v23 = v36;
  sub_252692070();

  v24 = v35;
  sub_25237153C(v20, v35, &qword_27F4DFCC0);
  v25 = v23;
  v26 = v23;
  v27 = v37;
  sub_25237153C(v25, v37, &qword_27F4DDB68);
  v28 = v38;
  sub_25237153C(v24, v38, &qword_27F4DFCC0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFCD8);
  sub_25237153C(v27, v28 + *(v29 + 48), &qword_27F4DDB68);
  sub_252372288(v26, &qword_27F4DDB68);
  sub_252372288(v20, &qword_27F4DFCC0);
  sub_252372288(v27, &qword_27F4DDB68);
  return sub_252372288(v24, &qword_27F4DFCC0);
}

uint64_t sub_2524D7318@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v49 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB68);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v39 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFCB8) - 8;
  MEMORY[0x28223BE20](v47);
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = &v39 - v6;
  MEMORY[0x28223BE20](v7);
  v46 = &v39 - v8;
  v9 = sub_252690080();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFCC0);
  MEMORY[0x28223BE20](v13 - 8);
  v43 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v42 = &v39 - v16;
  v41 = *(type metadata accessor for ThermostatAutomationSettingsView.SetpointIconView(0) + 20);
  v17 = *MEMORY[0x277D16CE0];
  v18 = *(v10 + 104);
  v18(v12, v17, v9);
  sub_2524D9B8C(&qword_27F4DFCC8, MEMORY[0x277D16CF0]);
  sub_252692D40();
  sub_252692D40();
  v19 = *(v10 + 8);
  v19(v12, v9);
  v50 = sub_2526923D0();
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  sub_252693210();

  *&v54 = 0xD00000000000002CLL;
  *(&v54 + 1) = 0x80000002526AFE80;
  v18(v12, v17, v9);
  v20 = v40;
  sub_252692D40();
  sub_252692D40();
  v19(v12, v9);
  if (v53 == v52)
  {
    v21 = 0x6B616C66776F6E73;
  }

  else
  {
    v21 = 0x656D616C66;
  }

  if (v53 == v52)
  {
    v22 = 0xE900000000000065;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x2530A4800](v21, v22);

  v23 = v42;
  sub_252692070();

  v24 = v20[1];
  *&v54 = *v20;
  v25 = v54;
  *(&v54 + 1) = v24;
  LOBYTE(v55) = 0;
  *(&v55 + 1) = MEMORY[0x277D84F90];
  v50 = 0;
  v51 = 0xE000000000000000;

  sub_252693210();

  v50 = 0xD000000000000027;
  v51 = 0x80000002526AFEB0;
  MEMORY[0x2530A4800](v25, v24);
  v26 = v44;
  sub_252692070();

  sub_252692920();
  sub_252690D70();
  v27 = v26;
  v28 = v45;
  sub_2523714D4(v27, v45, &qword_27F4DDB68);
  v29 = (v28 + *(v47 + 44));
  v30 = v59;
  v29[4] = v58;
  v29[5] = v30;
  v29[6] = v60;
  v31 = v55;
  *v29 = v54;
  v29[1] = v31;
  v32 = v57;
  v29[2] = v56;
  v29[3] = v32;
  v33 = v46;
  sub_2523714D4(v28, v46, &qword_27F4DFCB8);
  v34 = v43;
  sub_25237153C(v23, v43, &qword_27F4DFCC0);
  v35 = v48;
  sub_25237153C(v33, v48, &qword_27F4DFCB8);
  v36 = v49;
  sub_25237153C(v34, v49, &qword_27F4DFCC0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFCD0);
  sub_25237153C(v35, v36 + *(v37 + 48), &qword_27F4DFCB8);
  sub_252372288(v33, &qword_27F4DFCB8);
  sub_252372288(v23, &qword_27F4DFCC0);
  sub_252372288(v35, &qword_27F4DFCB8);
  return sub_252372288(v34, &qword_27F4DFCC0);
}

uint64_t sub_2524D79C8@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ThermostatAutomationSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE78);
  sub_2526924E0();
  if (v3 == 2)
  {
    result = sub_25268DD70();
  }

  else
  {
    sub_2526924E0();
    result = v3 == 1;
  }

  *a1 = result & 1;
  return result;
}

uint64_t sub_2524D7A90(char *a1)
{
  v1 = *a1;
  type metadata accessor for ThermostatAutomationSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE78);
  sub_2526924F0();
  if (v1)
  {
    return sub_2524D1268(1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  return sub_2526924F0();
}

uint64_t sub_2524D7B9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 64) = a4;
  sub_252692E00();
  *(v5 + 24) = sub_252692DF0();
  v7 = sub_252692DE0();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x2822009F8](sub_2524D7C38, v7, v6);
}

uint64_t sub_2524D7C38()
{
  v14 = v0;
  if (qword_27F4DABD8 != -1)
  {
    swift_once();
  }

  v1 = sub_2526905A0();
  __swift_project_value_buffer(v1, qword_27F4E4B30);
  v2 = sub_252690580();
  v3 = sub_252692F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 64);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_2525BDA90(0xD00000000000003DLL, 0x80000002526B0150, &v13);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_2525BDA90(0xD00000000000001FLL, 0x80000002526B0480, &v13);
    *(v5 + 22) = 2080;
    if (v4)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v4)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = sub_2525BDA90(v7, v8, &v13);

    *(v5 + 24) = v9;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v6, -1, -1);
    MEMORY[0x2530A5A40](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_2524D7E84;
  v11 = *(v0 + 64);

  return MEMORY[0x282170F40](v11);
}

uint64_t sub_2524D7E84()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_2524D8024;
  }

  else
  {
    v5 = sub_2524D7FC0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2524D7FC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2524D8024()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2524D8088(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 64) = a4;
  sub_252692E00();
  *(v5 + 24) = sub_252692DF0();
  v7 = sub_252692DE0();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x2822009F8](sub_2524D8124, v7, v6);
}

uint64_t sub_2524D8124()
{
  v14 = v0;
  if (qword_27F4DABD8 != -1)
  {
    swift_once();
  }

  v1 = sub_2526905A0();
  __swift_project_value_buffer(v1, qword_27F4E4B30);
  v2 = sub_252690580();
  v3 = sub_252692F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 64);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_2525BDA90(0xD00000000000003DLL, 0x80000002526B0150, &v13);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_2525BDA90(0xD00000000000001FLL, 0x80000002526B0480, &v13);
    *(v5 + 22) = 2080;
    if (v4)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v4)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = sub_2525BDA90(v7, v8, &v13);

    *(v5 + 24) = v9;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v6, -1, -1);
    MEMORY[0x2530A5A40](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_2524D8370;
  v11 = *(v0 + 64);

  return MEMORY[0x282170F10](v11);
}

uint64_t sub_2524D8370()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_2524DCA4C;
  }

  else
  {
    v5 = sub_2524DCA50;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2524D84AC@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t (*a2)(uint64_t)@<X4>, uint64_t (*a3)(uint64_t)@<X5>, _BYTE *a4@<X8>)
{
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20]();
  v11 = &v14 - v10;
  v12 = a2(v9);
  LOBYTE(a3) = a3(v12);
  result = (*(v8 + 8))(v11, v7);
  *a4 = a3 & 1;
  return result;
}

uint64_t sub_2524D85A8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_252690490();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  LOBYTE(a1) = *a1;
  v15 = sub_252692E30();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v10 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v9);
  sub_252692E00();
  v16 = sub_252692DF0();
  v17 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  *(v18 + 32) = a1;
  (*(v10 + 32))(v18 + v17, &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  sub_2524DD2F0(0, 0, v14, a6, v18);
}

uint64_t sub_2524D879C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 64) = a4;
  sub_252692E00();
  *(v5 + 24) = sub_252692DF0();
  v7 = sub_252692DE0();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x2822009F8](sub_2524D8838, v7, v6);
}

uint64_t sub_2524D8838()
{
  v14 = v0;
  if (qword_27F4DABD8 != -1)
  {
    swift_once();
  }

  v1 = sub_2526905A0();
  __swift_project_value_buffer(v1, qword_27F4E4B30);
  v2 = sub_252690580();
  v3 = sub_252692F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 64);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_2525BDA90(0xD00000000000003DLL, 0x80000002526B0150, &v13);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_2525BDA90(0xD00000000000001ELL, 0x80000002526B0190, &v13);
    *(v5 + 22) = 2080;
    if (v4)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v4)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = sub_2525BDA90(v7, v8, &v13);

    *(v5 + 24) = v9;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v6, -1, -1);
    MEMORY[0x2530A5A40](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_2524D8370;
  v11 = *(v0 + 64);

  return MEMORY[0x282170F20](v11);
}

uint64_t sub_2524D8A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 97) = a5;
  *(v5 + 40) = a4;
  sub_252692E00();
  *(v5 + 48) = sub_252692DF0();
  v7 = sub_252692DE0();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return MEMORY[0x2822009F8](sub_2524D8B20, v7, v6);
}

uint64_t sub_2524D8B20()
{
  *(v0 + 72) = type metadata accessor for ThermostatAutomationSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  sub_2526907E0();
  v1 = *(v0 + 32);
  *(v0 + 80) = v1;
  if (v1)
  {
    v2 = sub_25268DDA0();
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_2524D8C8C;
    v4 = *(v0 + 97);

    return MEMORY[0x28216E478](v4, v2 & 1);
  }

  else
  {

    v5 = (*(v0 + 40) + *(*(v0 + 72) + 36));
    v6 = *v5;
    v7 = *(v5 + 1);
    *(v0 + 16) = v6;
    *(v0 + 24) = v7;
    *(v0 + 96) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE78);
    sub_2526924F0();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2524D8C8C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2524D8DD0, v3, v2);
}

uint64_t sub_2524D8DD0()
{

  v1 = (*(v0 + 40) + *(*(v0 + 72) + 36));
  v2 = *v1;
  v3 = *(v1 + 1);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 96) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE78);
  sub_2526924F0();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2524D8E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v46 = a3;
  swift_getWitnessTable();
  sub_2526915A0();
  v5 = *(a2 + 16);
  swift_getTupleTypeMetadata3();
  v6 = sub_252692A00();
  WitnessTable = swift_getWitnessTable();
  v38 = v6;
  v7 = sub_2526925C0();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v35 - v11;
  v41 = v5;
  swift_getTupleTypeMetadata2();
  sub_252692A00();
  swift_getWitnessTable();
  v12 = sub_252692630();
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = sub_252691480();
  v44 = *(v18 - 8);
  v45 = v18;
  MEMORY[0x28223BE20](v18);
  v43 = &v35 - v20;
  if (*v3 == 1)
  {
    v21 = sub_2526912F0();
    MEMORY[0x28223BE20](v21);
    v22 = *(a2 + 24);
    *(&v35 - 4) = v41;
    *(&v35 - 3) = v22;
    *(&v35 - 2) = v42;
    *(&v35 - 1) = v3;
    sub_252692620();
    v23 = swift_getWitnessTable();
    sub_25268A710(v14, v12, v23);
    v24 = *(v36 + 8);
    v24(v14, v12);
    sub_25268A710(v17, v12, v23);
    swift_getWitnessTable();
    v25 = v43;
    sub_252688288(v14, v12);
    v24(v14, v12);
    v24(v17, v12);
  }

  else
  {
    MEMORY[0x28223BE20](v19);
    v26 = *(a2 + 24);
    *(&v35 - 4) = v41;
    *(&v35 - 3) = v26;
    *(&v35 - 2) = v42;
    *(&v35 - 1) = v3;
    sub_2526911D0();
    sub_2526925B0();
    v27 = swift_getWitnessTable();
    v28 = v39;
    sub_25268A710(v9, v7, v27);
    v29 = *(v40 + 8);
    v29(v9, v7);
    sub_25268A710(v28, v7, v27);
    swift_getWitnessTable();
    v25 = v43;
    sub_252688380(v9, v12, v7);
    v29(v9, v7);
    v29(v28, v7);
  }

  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v47 = v30;
  v48 = v31;
  v32 = v45;
  v33 = swift_getWitnessTable();
  sub_25268A710(v25, v32, v33);
  return (*(v44 + 8))(v25, v32);
}

uint64_t sub_2524D9464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a4;
  v27 = a1;
  v28 = a2;
  v29 = a5;
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for StackedLabelViewModifier();
  swift_getWitnessTable();
  v13 = sub_2526915A0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  WitnessTable = swift_getWitnessTable();
  sub_25268A710(v27, v13, WitnessTable);
  v21 = v28 + *(v12 + 36);
  v22 = v26;
  sub_25268A710(v21, a3, v26);
  (*(v14 + 16))(v16, v19, v13);
  v33[0] = v16;
  (*(v6 + 16))(v8, v11, a3);
  v33[1] = v8;
  v32[0] = v13;
  v32[1] = a3;
  v30 = WitnessTable;
  v31 = v22;
  sub_2524CC4E8(v33, 2uLL, v32);
  v23 = *(v6 + 8);
  v23(v11, a3);
  v24 = *(v14 + 8);
  v24(v19, v13);
  v23(v8, a3);
  return (v24)(v16, v13);
}

uint64_t sub_2524D9724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a4;
  v28 = a1;
  v29 = a2;
  v30 = a5;
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for StackedLabelViewModifier();
  swift_getWitnessTable();
  v13 = sub_2526915A0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  WitnessTable = swift_getWitnessTable();
  sub_25268A710(v28, v13, WitnessTable);
  v21 = v29 + *(v12 + 36);
  v22 = v27;
  sub_25268A710(v21, a3, v27);
  (*(v14 + 16))(v16, v19, v13);
  v35 = 0;
  v36 = 1;
  v37[0] = v16;
  v37[1] = &v35;
  (*(v6 + 16))(v8, v11, a3);
  v37[2] = v8;
  v34[0] = v13;
  v34[1] = MEMORY[0x277CE1180];
  v34[2] = a3;
  v31 = WitnessTable;
  v32 = MEMORY[0x277CE1170];
  v33 = v22;
  sub_2524CC4E8(v37, 3uLL, v34);
  v23 = *(v6 + 8);
  v23(v11, a3);
  v24 = *(v14 + 8);
  v24(v19, v13);
  v23(v8, a3);
  return (v24)(v16, v13);
}

uint64_t sub_2524D9A34(uint64_t a1)
{
  v2 = sub_252690B80();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_252690EC0();
}

uint64_t sub_2524D9B14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2524D9B8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for ThermostatAutomationSettingsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2526909E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + v1[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  if (*(v5 + v1[8] + 8))
  {
  }

  v9 = v1[13];
  v10 = sub_25268E350();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[15];
  v12 = sub_2526904A0();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  if (*(v5 + v1[16]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2524D9EA4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ThermostatAutomationSettingsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2524D9F38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252690ED0();
  *a1 = result;
  return result;
}

unint64_t sub_2524D9F94()
{
  result = qword_27F4DFAE0;
  if (!qword_27F4DFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFAE0);
  }

  return result;
}

void sub_2524DA074()
{
  sub_2524DAF84(319, &qword_27F4DEFD8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2524DA2C4();
    if (v1 <= 0x3F)
    {
      sub_25268DF30();
      if (v2 <= 0x3F)
      {
        sub_2524DA358(319, &qword_27F4DFB00, &qword_27F4DFA28, &unk_2526A1F70, MEMORY[0x277CDF338]);
        if (v3 <= 0x3F)
        {
          sub_2524DA358(319, &qword_27F4DFB08, &qword_27F4DFA30, &unk_2526A6A70, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_2524DAFE8(319, &qword_27F4DFB10, &type metadata for ThermostatAutomationSettingsView.ToggleState, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_2524DAFE8(319, &qword_27F4DE678, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_25268E350();
                if (v7 <= 0x3F)
                {
                  sub_2526904A0();
                  if (v8 <= 0x3F)
                  {
                    sub_2524DA358(319, &qword_27F4DDD98, &qword_27F4DB010, &unk_25269E300, MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
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
  }
}

void sub_2524DA2C4()
{
  if (!qword_27F4DFAF8)
  {
    sub_25268E1B0();
    sub_2524D9B8C(&qword_27F4DFA20, MEMORY[0x277D15458]);
    v0 = sub_252690B00();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DFAF8);
    }
  }
}

void sub_2524DA358(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2524DA3E4()
{
  sub_2524DAF84(319, &qword_27F4DFB30, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_252690490();
    if (v1 <= 0x3F)
    {
      sub_25268F260();
      if (v2 <= 0x3F)
      {
        sub_25268F9F0();
        if (v3 <= 0x3F)
        {
          sub_2526904A0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2524DA528()
{
  result = sub_252690080();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2524DA5A4()
{
  result = qword_27F4DFB48;
  if (!qword_27F4DFB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFAA8);
    sub_2524DA630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFB48);
  }

  return result;
}

unint64_t sub_2524DA630()
{
  result = qword_27F4DFB50;
  if (!qword_27F4DFB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFA50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFA40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFA78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFA38);
    sub_252400FC8(&qword_27F4DFA68, &qword_27F4DFA38);
    sub_252404480();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFA80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFA88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFA90);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDE80);
    sub_252400FC8(&qword_27F4DDE98, &qword_27F4DDE80);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFB50);
  }

  return result;
}

unint64_t sub_2524DA8DC()
{
  result = qword_27F4DFB68;
  if (!qword_27F4DFB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFAD8);
    sub_252400FC8(qword_27F4DFB70, &qword_27F4DFAC0);
    sub_252400FC8(&qword_27F4DC108, &qword_27F4DC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFB68);
  }

  return result;
}

uint64_t sub_2524DA9C0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2524DAA40(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_2524DABCC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

void sub_2524DAE74()
{
  sub_2524DA2C4();
  if (v0 <= 0x3F)
  {
    sub_2524DAF84(319, &qword_27F4DFC08, MEMORY[0x277D16E18], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2526904A0();
      if (v2 <= 0x3F)
      {
        sub_2524DAFE8(319, &qword_27F4DFC10, &type metadata for LocationDevice, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2524DAF84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2524DAFE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2524DB04C()
{
  result = qword_27F4DFC18;
  if (!qword_27F4DFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFC18);
  }

  return result;
}

uint64_t sub_2524DB118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2524DB180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2524DB1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ThermostatAutomationSettingsView.PresetOptionView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_252690490() - 8);
  v9 = (v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));

  return sub_2524D3324(a1, v2 + v6, v9, a2);
}

unint64_t sub_2524DB2CC()
{
  result = qword_27F4DFC50;
  if (!qword_27F4DFC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFC38);
    sub_2524DB350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFC50);
  }

  return result;
}

unint64_t sub_2524DB350()
{
  result = qword_27F4DFC58;
  if (!qword_27F4DFC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFC60);
    sub_252400FC8(&qword_27F4DFC68, &qword_27F4DFC70);
    sub_2524D9B8C(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFC58);
  }

  return result;
}

uint64_t sub_2524DB444(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t objectdestroyTm_16()
{
  v1 = sub_252690490();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2524DB528(uint64_t (*a1)(uint64_t))
{
  v2 = *(sub_252690490() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2524DB5AC()
{
  result = qword_27F4DFD00;
  if (!qword_27F4DFD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFCF8);
    sub_2524C17E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFD00);
  }

  return result;
}

uint64_t sub_2524DB638(uint64_t a1)
{
  v4 = *(type metadata accessor for ThermostatAutomationSettingsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_252401074;

  return sub_2524D2A70(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_76Tm()
{
  v1 = type metadata accessor for ThermostatAutomationSettingsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2526909E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + v1[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  if (*(v5 + v1[8] + 8))
  {
  }

  v9 = v1[13];
  v10 = sub_25268E350();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[15];
  v12 = sub_2526904A0();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  if (*(v5 + v1[16]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2524DB9C8(uint64_t a1)
{
  v4 = *(type metadata accessor for ThermostatAutomationSettingsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_252401074;

  return sub_2524D2510(a1, v6, v7, v1 + v5);
}

unint64_t sub_2524DBAE8()
{
  result = qword_27F4DF908;
  if (!qword_27F4DF908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF8F8);
    sub_252474348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DF908);
  }

  return result;
}

unint64_t sub_2524DBB74()
{
  result = qword_27F4DFDE8;
  if (!qword_27F4DFDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFDE0);
    sub_2524DBC2C();
    sub_252400FC8(&qword_27F4DF0F8, &qword_27F4DF100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFDE8);
  }

  return result;
}

unint64_t sub_2524DBC2C()
{
  result = qword_27F4DFDF0;
  if (!qword_27F4DFDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFDF8);
    sub_252400FC8(&qword_27F4DFE00, &qword_27F4DFE08);
    sub_2524D9B8C(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFDF0);
  }

  return result;
}

unint64_t sub_2524DBD24()
{
  result = qword_27F4DFE20;
  if (!qword_27F4DFE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFDB0);
    sub_2524DBC2C();
    sub_252474348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFE20);
  }

  return result;
}

unint64_t sub_2524DBDC4()
{
  result = qword_27F4DFE40;
  if (!qword_27F4DFE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFE38);
    sub_2524D9B8C(&qword_27F4DFE48, type metadata accessor for ThermostatAutomationSettingsView.PresetOptionView);
    sub_2524D9B8C(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFE40);
  }

  return result;
}

uint64_t sub_2524DBF18(uint64_t a1)
{
  v4 = *(sub_252690490() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_252401074;

  return sub_2524D879C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2524DC010(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatAutomationSettingsView.PresetOptionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2524DC0E0(uint64_t a1)
{
  v4 = *(type metadata accessor for ThermostatAutomationSettingsView(0) - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2523E233C;

  return sub_2524D8A84(a1, v5, v6, v7, v8);
}

uint64_t sub_2524DC1F8@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ThermostatAutomationSettingsView(0);
  sub_25268DD80();

  return sub_2524D79C8(a1);
}

uint64_t sub_2524DC2D0(char *a1)
{
  type metadata accessor for ThermostatAutomationSettingsView(0);

  return sub_2524D7A90(a1);
}

uint64_t sub_2524DC4BC@<X0>(_BYTE *a1@<X8>)
{
  sub_252690490();
  result = sub_2526903B0();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_89Tm()
{
  v1 = sub_252690490();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2524DC608(uint64_t a1)
{
  v4 = *(sub_252690490() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2523E233C;

  return sub_2524D7B9C(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_95Tm()
{
  v1 = sub_252690490();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2524DC7C4(uint64_t a1)
{
  v4 = *(sub_252690490() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_252401074;

  return sub_2524D8088(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_2524DC8BC()
{
  result = qword_27F4DFE80;
  if (!qword_27F4DFE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFE88);
    sub_2524DC940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFE80);
  }

  return result;
}

unint64_t sub_2524DC940()
{
  result = qword_27F4DFE90;
  if (!qword_27F4DFE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFC28);
    sub_2524DC9C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFE90);
  }

  return result;
}

unint64_t sub_2524DC9C4()
{
  result = qword_27F4DFE98;
  if (!qword_27F4DFE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFC20);
    sub_2524DB2CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DFE98);
  }

  return result;
}

uint64_t ThermostatPresetsDetailView.init(thermostatCluster:preset:presetType:locationDevice:context:updatePresetBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v83 = a7;
  v80 = a6;
  v78 = a5;
  v84 = a3;
  v85 = a2;
  v89 = a1;
  v87 = sub_252690490();
  v10 = *(v87 - 8);
  v79 = v10[8];
  MEMORY[0x28223BE20](v87);
  v76 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  MEMORY[0x28223BE20](v12 - 8);
  v77 = v64 - v13;
  v82 = sub_25268F9F0();
  v88 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v73 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v72 = v64 - v16;
  v81 = sub_25268F260();
  v86 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v68 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v64 - v19;
  v74 = *(a4 + 32);
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for ThermostatPresetsDetailView();
  v22 = (a8 + v21[5]);
  sub_25268E1B0();
  v23 = a4[1];
  v70 = *a4;
  v69 = v23;
  *&v90 = sub_25268E1A0();
  sub_2526924D0();
  v24 = *(&v93 + 1);
  *v22 = v93;
  v22[1] = v24;
  v25 = v21[6];
  sub_25268DF30();
  *(a8 + v25) = sub_25268DF20();
  v26 = v21[7];
  v67 = v10;
  v27 = v10[7];
  v27(a8 + v26, 1, 1, v87);
  v75 = v21[9];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA28);
  sub_2526907D0();
  v28 = a8 + v21[12];
  LOBYTE(v90) = 0;
  sub_2526924D0();
  v29 = *(&v93 + 1);
  *v28 = v93;
  *(v28 + 1) = v29;
  v30 = a8 + v21[13];
  LOBYTE(v90) = 0;
  sub_2526924D0();
  v31 = *(&v93 + 1);
  *v30 = v93;
  *(v30 + 1) = v31;
  v32 = a8 + v21[14];
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA30);
  sub_2526924D0();
  v33 = v95;
  v34 = v96;
  v35 = v94;
  *v32 = v93;
  *(v32 + 1) = v35;
  v32[32] = v33;
  *(v32 + 5) = v34;
  v36 = a8 + v21[15];
  LOBYTE(v90) = 0;
  sub_2526924D0();
  v37 = *(&v93 + 1);
  *v36 = v93;
  *(v36 + 1) = v37;
  v64[0] = a8 + v21[17];
  sub_252372288(a8 + v26, &qword_27F4DB250);
  v38 = v10[2];
  v64[1] = v10 + 2;
  v65 = v38;
  v39 = v87;
  v38(a8 + v26, v89, v87);
  v27(a8 + v26, 0, 1, v39);
  v40 = v86;
  v41 = *(v86 + 16);
  v42 = v81;
  v41(v20, v85, v81);
  v41(v68, v20, v42);
  sub_2526924D0();
  v43 = *(v40 + 8);
  v86 = v40 + 8;
  v68 = v43;
  (v43)(v20, v42);
  v44 = v88;
  v45 = *(v88 + 16);
  v46 = v72;
  v47 = v82;
  v45(v72, v84, v82);
  v45(v73, v46, v47);
  sub_2526924D0();
  v48 = *(v44 + 8);
  v88 = v44 + 8;
  v73 = v48;
  (v48)(v46, v47);
  sub_2524DB444(*v32, *(v32 + 1));

  v93 = v70;
  v94 = v69;
  v95 = v74;
  sub_2526924D0();
  v49 = v21[16];
  v50 = sub_2526904A0();
  v51 = *(v50 - 8);
  v52 = v78;
  (*(v51 + 16))(a8 + v49, v78, v50);
  v53 = v80;
  v54 = v64[0];
  v55 = v83;
  *v64[0] = v80;
  *(v54 + 8) = v55;
  sub_25235E21C(v53);
  v56 = v89;
  sub_252690400();
  v57 = v76;
  v58 = v87;
  v65(v76, v56, v87);
  v59 = v67;
  v60 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v61 = swift_allocObject();
  (v59[4])(v61 + v60, v57, v58);
  v62 = v77;
  sub_2526907D0();
  sub_25247CDCC(v53);
  (*(v51 + 8))(v52, v50);
  (v73)(v84, v82);
  (v68)(v85, v81);
  (v59[1])(v89, v58);
  return sub_2524D9B14(v62, a8 + v75);
}

uint64_t type metadata accessor for ThermostatPresetsDetailView()
{
  result = qword_27F4DFF08;
  if (!qword_27F4DFF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2524DD2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25237153C(a3, v22 - v9, &qword_27F4DB930);
  v11 = sub_252692E30();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_252372288(v10, &qword_27F4DB930);
  }

  else
  {
    sub_252692E20();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_252692DE0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_252692C30() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_252372288(a3, &qword_27F4DB930);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_252372288(a3, &qword_27F4DB930);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2524DD59C()
{
  v0 = sub_25268DA10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThermostatPresetsDetailView();
  sub_25268E330();
  v4 = sub_25268DF10();
  if (*(v4 + 16) && (v5 = sub_252367880(v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = *(v1 + 8);

    v8(v3, v0);

    return v7;
  }

  else
  {

    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

uint64_t sub_2524DD6E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25268F890();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v67[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADF0);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v67[-v6];
  v7 = sub_25268F610();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x28223BE20](v7);
  v73 = &v67[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_25268EE60();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9);
  v70 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_25268DA10();
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x28223BE20](v11);
  v79 = &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v67[-v14];
  v16 = sub_25268E350();
  v80 = *(v16 - 8);
  v81 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v67[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v85 = &v67[-v20];
  v21 = sub_2526904A0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v67[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for ThermostatPresetsDetailView();
  (*(v22 + 104))(v24, *MEMORY[0x277D16E20], v21);
  sub_2524F831C(&qword_27F4DFA70, MEMORY[0x277D16E40]);
  sub_252692D40();
  sub_252692D40();
  (*(v22 + 8))(v24, v21);
  v26 = *(v25 + 28);
  if (v86[0] == v87)
  {
    return sub_25237153C(v1 + v26, a1, &qword_27F4DB250);
  }

  v28 = a1;
  sub_25237153C(v1 + v26, v15, &qword_27F4DB250);
  v29 = sub_252690490();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v15, 1, v29) == 1)
  {
    sub_252372288(v15, &qword_27F4DB250);
    if (qword_27F4DABD8 != -1)
    {
      swift_once();
    }

    v31 = sub_2526905A0();
    __swift_project_value_buffer(v31, qword_27F4E4B30);
    v32 = sub_252690580();
    v33 = sub_252692EF0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v86[0] = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_2525BDA90(0xD000000000000038, 0x80000002526B07E0, v86);
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_2525BDA90(0xD000000000000011, 0x80000002526B0D70, v86);
      _os_log_impl(&dword_252309000, v32, v33, "%s - %s: No cluster path provided.", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v35, -1, -1);
      MEMORY[0x2530A5A40](v34, -1, -1);
    }

    return (*(v30 + 56))(v28, 1, 1, v29);
  }

  sub_252690400();
  (*(v30 + 8))(v15, v29);
  v36 = v80;
  v37 = v81;
  (*(v80 + 32))(v85, v18, v81);
  v69 = sub_25268E340();
  v38 = v79;
  sub_25268E330();
  v68 = sub_25268E320();
  v39 = (v1 + *(v25 + 20));
  v41 = *v39;
  v40 = v39[1];
  v86[0] = v41;
  v86[1] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0370);
  sub_2526924E0();
  v42 = v87;
  v43 = sub_25268E170();

  if (*(v43 + 16))
  {
    v44 = sub_252367880(v38);
    v45 = v38;
    if (v46)
    {
      v47 = v77;
      v48 = v78;
      (*(v77 + 16))(v84, *(v43 + 56) + *(v77 + 72) * v44, v78);
      v49 = 0;
      goto LABEL_15;
    }

    v49 = 1;
  }

  else
  {
    v49 = 1;
    v45 = v38;
  }

  v47 = v77;
  v48 = v78;
LABEL_15:

  v50 = v84;
  (*(v47 + 56))(v84, v49, 1, v48);
  if ((*(v47 + 48))(v50, 1, v48))
  {
    (*(v82 + 8))(v45, v83);
    (*(v36 + 8))(v85, v37);
    sub_252372288(v50, &qword_27F4DADF0);
  }

  else
  {
    v51 = v50;
    v52 = v76;
    (*(v47 + 16))(v76, v51, v48);
    sub_252372288(v51, &qword_27F4DADF0);
    v53 = v47;
    v54 = sub_25268F870();
    (*(v53 + 8))(v52, v48);
    if (*(v54 + 16))
    {
      v55 = sub_252372350(v69);
      if (v56)
      {
        v58 = v73;
        v57 = v74;
        v59 = v75;
        (*(v74 + 16))(v73, *(v54 + 56) + *(v74 + 72) * v55, v75);

        v60 = sub_25268F600();
        (*(v57 + 8))(v58, v59);
        if (*(v60 + 16))
        {
          v61 = sub_252367690(v68);
          if (v62)
          {
            v64 = v70;
            v63 = v71;
            v65 = v36;
            v66 = v72;
            (*(v71 + 16))(v70, *(v60 + 56) + *(v71 + 72) * v61, v72);

            sub_25268ED40();
            (*(v63 + 8))(v64, v66);
            (*(v82 + 8))(v45, v83);
            return (*(v65 + 8))(v85, v37);
          }
        }
      }
    }

    (*(v82 + 8))(v45, v83);
    (*(v36 + 8))(v85, v37);
  }

  return (*(v30 + 56))(v28, 1, 1, v29);
}

uint64_t sub_2524DE114@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25268DA10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268DF30();
  v6 = sub_25268DF20();
  sub_252690210();
  sub_252690410();
  v7 = sub_25268DEF0();

  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  return result;
}

uint64_t ThermostatPresetsDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_252690490();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2524DD6E0(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_252372288(v9, &qword_27F4DB250);
    return (*(v4 + 56))(a1, 1, 1, v3);
  }

  else
  {
    v15 = (*(v11 + 32))(v13, v9, v10);
    MEMORY[0x28223BE20](v15);
    *(&v16 - 2) = v13;
    *(&v16 - 1) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEA8);
    sub_2524F5350();
    sub_252690C40();
    (*(v4 + 32))(a1, v6, v3);
    (*(v4 + 56))(a1, 0, 1, v3);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_2524DE504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a3;
  v5 = sub_252690490();
  v80 = *(v5 - 8);
  v81 = v5;
  MEMORY[0x28223BE20](v5);
  v76 = v6;
  v78 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ThermostatPresetsDetailView();
  v75 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v74 = v8;
  v79 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2526904A0();
  v62 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v64 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_25268F260();
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFED8);
  v65 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v60 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEC8);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v17 = &v60 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF78);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v60 - v18;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEC0);
  MEMORY[0x28223BE20](v68);
  v72 = &v60 - v19;
  v77 = a1;
  v84 = a1;
  v85 = a2;
  v83 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF80);
  v20 = v62;
  sub_252400FC8(&qword_27F4DFF88, &qword_27F4DFF80);
  sub_252691BF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  sub_2526924E0();
  v21 = sub_25268F1C0();
  v23 = v22;
  (*(v63 + 8))(v12, v66);
  v86 = v21;
  v87 = v23;
  v24 = sub_252400FC8(&qword_27F4DFEE0, &qword_27F4DFED8);
  v25 = sub_252404480();
  v66 = v17;
  v63 = v24;
  v61 = v25;
  sub_252691F40();

  v26 = *(v65 + 8);
  v65 = v13;
  v26(v15, v13);
  v27 = *(v20 + 104);
  v28 = v64;
  v27(v64, *MEMORY[0x277D16E30], v9);
  sub_2524F831C(&qword_27F4DFA70, MEMORY[0x277D16E40]);
  v29 = v83;
  sub_252692D40();
  v30 = v28;
  sub_252692D40();
  v31 = *(v20 + 8);
  v32 = v31(v30, v9);
  if (v86 == v90)
  {
    v33 = 1;
  }

  else
  {
    v27(v30, *MEMORY[0x277D16E20], v9);
    sub_252692D40();
    sub_252692D40();
    v32 = v31(v30, v9);
    v33 = v86 == v90;
  }

  LODWORD(v62) = v33;
  v34 = v29;
  v64 = &v60;
  MEMORY[0x28223BE20](v32);
  *(&v60 - 2) = v29;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFED0);
  v86 = v65;
  v87 = MEMORY[0x277D837D0];
  v88 = v63;
  v89 = v61;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFEE8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFA88);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFEF0);
  v39 = v69;
  v86 = v69;
  v87 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v86 = v38;
  v87 = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDE80);
  v43 = sub_252400FC8(&qword_27F4DDE98, &qword_27F4DDE80);
  v86 = v42;
  v87 = v43;
  v44 = swift_getOpaqueTypeConformance2();
  v86 = v36;
  v87 = v37;
  v88 = v41;
  v89 = v44;
  swift_getOpaqueTypeConformance2();
  v45 = v70;
  v46 = v66;
  sub_252691D70();
  (*(v67 + 8))(v46, v39);
  v47 = v79;
  sub_2524F5D04(v34, v79);
  v49 = v80;
  v48 = v81;
  v50 = v78;
  (*(v80 + 16))(v78, v77, v81);
  v51 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v52 = (v51 + v74 + *(v49 + 80)) & ~*(v49 + 80);
  v53 = swift_allocObject();
  sub_2524F5D68(v47, v53 + v51);
  (*(v49 + 32))(v53 + v52, v50, v48);
  v54 = v72;
  (*(v71 + 32))(v72, v45, v73);
  v55 = (v54 + *(v68 + 36));
  *v55 = sub_2524F5DCC;
  v55[1] = v53;
  v55[2] = 0;
  v55[3] = 0;
  sub_2524F5D04(v83, v47);
  v56 = swift_allocObject();
  sub_2524F5D68(v47, v56 + v51);
  v57 = v82;
  sub_2523714D4(v54, v82, &qword_27F4DFEC0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEA8);
  v59 = (v57 + *(result + 36));
  *v59 = 0;
  v59[1] = 0;
  v59[2] = sub_2524F5E98;
  v59[3] = v56;
  return result;
}

uint64_t sub_2524DEFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v179 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF98);
  v176 = *(v5 - 8);
  v177 = v5;
  MEMORY[0x28223BE20](v5);
  v155 = &v132 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFFA0);
  MEMORY[0x28223BE20](v7 - 8);
  v178 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v181 = &v132 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFFA8);
  v173 = *(v11 - 8);
  v174 = v11;
  MEMORY[0x28223BE20](v11);
  v141 = &v132 - v12;
  v140 = sub_2526902B0();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v137 = &v132 - v15;
  v170 = sub_2526900B0();
  v180 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v134 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD48);
  MEMORY[0x28223BE20](v168);
  v169 = &v132 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFFB0);
  MEMORY[0x28223BE20](v18 - 8);
  v175 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v172 = &v132 - v21;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFFB8);
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v154 = &v132 - v22;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFFC0);
  v149 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v133 = &v132 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFFC8);
  MEMORY[0x28223BE20](v24 - 8);
  v152 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v150 = &v132 - v27;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF8F8);
  MEMORY[0x28223BE20](v159);
  v158 = &v132 - v28;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFFD0);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v164 = &v132 - v31;
  v184 = sub_2526904A0();
  v188 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v185 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFFD8);
  MEMORY[0x28223BE20](v33 - 8);
  v171 = &v132 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v187 = &v132 - v36;
  v37 = sub_25268F260();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD58);
  MEMORY[0x28223BE20](v41 - 8);
  v153 = &v132 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v165 = &v132 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = &v132 - v46;
  v48 = type metadata accessor for ThermostatPresetsDetailView();
  v52 = *(v48 + 40);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  sub_2526924E0();
  v186 = v47;
  sub_2526900E0();
  v50 = *(v38 + 8);
  v50(v40, v37);
  v136 = v52;
  v135 = v49;
  v51 = v184;
  sub_2526924E0();
  v157 = a1;
  LODWORD(v52) = sub_2526903D0();
  v143 = v40;
  v53 = v40;
  v54 = v185;
  v145 = v37;
  v144 = v38 + 8;
  v142 = v50;
  v50(v53, v37);
  v55 = v188;
  v56 = *(v48 + 64);
  v57 = *(v188 + 104);
  v162 = *MEMORY[0x277D16E20];
  v163 = v188 + 104;
  v161 = v57;
  (v57)(v54);
  sub_2524F831C(&qword_27F4DFFE0, MEMORY[0x277D16E40]);
  LOBYTE(v48) = sub_252692B70();
  v160 = *(v55 + 8);
  v188 = v55 + 8;
  v58 = v160(v54, v51);
  v182 = v52;
  v183 = a2;
  v156 = v56;
  if (v48)
  {
    v59 = 1;
    v60 = v170;
    v61 = v187;
    v62 = v169;
  }

  else
  {
    MEMORY[0x28223BE20](v58);
    *(&v132 - 2) = a2;
    v63 = v158;
    sub_2524E0D90(v158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFFE8);
    sub_2524F651C();
    sub_2524F7E68(&qword_27F4DF908, &qword_27F4DF8F8, &unk_2526A1C00, sub_252474348);
    v64 = v164;
    v65 = sub_252692820();
    if (v182)
    {
      MEMORY[0x28223BE20](v65);
      *(&v132 - 2) = a2;
      sub_2524E1AA8(v186, a2, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0038);
      sub_2524F7E68(&qword_27F4E0040, &qword_27F4E0038, &unk_2526A29D8, sub_2524F668C);
      v66 = v133;
      sub_252692820();
      v67 = v149;
      v68 = v150;
      v69 = v151;
      (*(v149 + 32))(v150, v66, v151);
      v70 = 0;
      v60 = v170;
      v62 = v169;
    }

    else
    {
      v70 = 1;
      v60 = v170;
      v62 = v169;
      v69 = v151;
      v68 = v150;
      v67 = v149;
    }

    (*(v67 + 56))(v68, v70, 1, v69);
    v71 = v147;
    v52 = *(v147 + 16);
    v72 = v146;
    v73 = v148;
    (v52)(v146, v64, v148);
    v74 = v152;
    sub_25237153C(v68, v152, &qword_27F4DFFC8);
    v75 = v154;
    (v52)(v154, v72, v73);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0018);
    sub_25237153C(v74, v75 + *(v76 + 48), &qword_27F4DFFC8);
    sub_252372288(v68, &qword_27F4DFFC8);
    v77 = *(v71 + 8);
    v77(v164, v73);
    sub_252372288(v74, &qword_27F4DFFC8);
    v77(v72, v73);
    v61 = v187;
    sub_2523714D4(v75, v187, &qword_27F4DFFB8);
    v59 = 0;
    LOBYTE(v52) = v182;
  }

  (*(v166 + 56))(v61, v59, 1, v167);
  v78 = v180;
  v79 = v165;
  (*(v180 + 104))(v165, *MEMORY[0x277D16D00], v60);
  (*(v78 + 56))(v79, 0, 1, v60);
  v80 = *(v168 + 48);
  sub_25237153C(v186, v62, &qword_27F4DFD58);
  sub_25237153C(v79, v62 + v80, &qword_27F4DFD58);
  v81 = *(v78 + 48);
  if (v81(v62, 1, v60) == 1)
  {
    sub_252372288(v79, &qword_27F4DFD58);
    if (v81(v62 + v80, 1, v60) == 1)
    {
      sub_252372288(v62, &qword_27F4DFD58);
      v82 = 1;
LABEL_19:
      v105 = v172;
      v104 = v173;
      v106 = v174;
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  v83 = v153;
  sub_25237153C(v62, v153, &qword_27F4DFD58);
  if (v81(v62 + v80, 1, v60) == 1)
  {
    sub_252372288(v79, &qword_27F4DFD58);
    (*(v180 + 8))(v83, v60);
LABEL_12:
    sub_252372288(v62, &qword_27F4DFD48);
    goto LABEL_13;
  }

  v99 = v83;
  v100 = v180;
  v101 = v62 + v80;
  v102 = v134;
  (*(v180 + 32))(v134, v101, v60);
  sub_2524F831C(&qword_27F4DFD70, MEMORY[0x277D16D08]);
  v103 = sub_252692B70();
  v52 = *(v100 + 8);
  v52(v102, v60);
  sub_252372288(v79, &qword_27F4DFD58);
  v52(v99, v60);
  LOBYTE(v52) = v182;
  sub_252372288(v62, &qword_27F4DFD58);
  if (v103)
  {
    goto LABEL_18;
  }

LABEL_13:
  v84 = v184;
  v85 = v185;
  v86 = v162;
  v87 = v161;
  v161(v185, v162, v184);
  sub_2524F831C(&qword_27F4DFA70, MEMORY[0x277D16E40]);
  sub_252692D40();
  sub_252692D40();
  v88 = v160;
  v160(v85, v84);
  if (!((v190 == v189) | v52 & 1))
  {
LABEL_18:
    v82 = 1;
    goto LABEL_19;
  }

  v89 = v184;
  v90 = v185;
  v87(v185, v86, v184);
  sub_252692D40();
  sub_252692D40();
  v88(v90, v89);
  if (v190 == v189 && (v91 = v137, sub_2526902C0(), v92 = v139, v93 = v138, v94 = v140, (*(v139 + 104))(v138, *MEMORY[0x277D16D50], v140), sub_2524F831C(&qword_27F4DFD78, MEMORY[0x277D16D60]), v95 = sub_252692B70(), v96 = *(v92 + 8), v96(v93, v94), v96(v91, v94), (v95 & 1) == 0))
  {
    v98 = 1;
  }

  else
  {
    v97 = v143;
    sub_2526924E0();
    v98 = sub_252690240();
    v142(v97, v145);
  }

  v107 = v184;
  v108 = v185;
  v161(v185, v162, v184);
  sub_252692D40();
  sub_252692D40();
  v160(v108, v107);
  if (v190 == v189 && (v109 = v137, sub_2526902C0(), v110 = v139, v111 = v138, v112 = v140, (*(v139 + 104))(v138, *MEMORY[0x277D16D48], v140), sub_2524F831C(&qword_27F4DFD78, MEMORY[0x277D16D60]), v113 = sub_252692B70(), v114 = *(v110 + 8), v114(v111, v112), v115 = (v114)(v109, v112), (v113 & 1) == 0))
  {
    v118 = 1;
    v105 = v172;
    v119 = v158;
    v116 = v183;
  }

  else
  {
    v116 = v183;
    v117 = v143;
    sub_2526924E0();
    v118 = sub_252690250();
    v115 = (v142)(v117, v145);
    v105 = v172;
    v119 = v158;
  }

  MEMORY[0x28223BE20](v115);
  *(&v132 - 32) = v118 & 1;
  *(&v132 - 3) = v116;
  *(&v132 - 16) = v98 & 1;
  sub_2524E2E20(v98 & 1, v118 & 1, v119);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0028);
  sub_252400FC8(&qword_27F4E0030, &qword_27F4E0028);
  sub_2524F7E68(&qword_27F4DF908, &qword_27F4DF8F8, &unk_2526A1C00, sub_252474348);
  v120 = v141;
  sub_252692820();
  v104 = v173;
  v121 = v174;
  (*(v173 + 32))(v105, v120, v174);
  v106 = v121;
  v82 = 0;
  LOBYTE(v52) = v182;
LABEL_26:
  v122 = 1;
  (*(v104 + 56))(v105, v82, 1, v106);
  if (v52)
  {
    v123 = v155;
    sub_2524E3140(v155);
    sub_2523714D4(v123, v181, &qword_27F4DFF98);
    v122 = 0;
  }

  v124 = v181;
  (*(v176 + 56))(v181, v122, 1, v177);
  v125 = v171;
  sub_25237153C(v187, v171, &qword_27F4DFFD8);
  v126 = v175;
  sub_25237153C(v105, v175, &qword_27F4DFFB0);
  v127 = v105;
  v128 = v178;
  sub_25237153C(v124, v178, &qword_27F4DFFA0);
  v129 = v179;
  sub_25237153C(v125, v179, &qword_27F4DFFD8);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0020);
  sub_25237153C(v126, v129 + *(v130 + 48), &qword_27F4DFFB0);
  sub_25237153C(v128, v129 + *(v130 + 64), &qword_27F4DFFA0);
  sub_252372288(v124, &qword_27F4DFFA0);
  sub_252372288(v127, &qword_27F4DFFB0);
  sub_252372288(v187, &qword_27F4DFFD8);
  sub_252372288(v128, &qword_27F4DFFA0);
  sub_252372288(v126, &qword_27F4DFFB0);
  sub_252372288(v125, &qword_27F4DFFD8);
  return sub_252372288(v186, &qword_27F4DFD58);
}

uint64_t sub_2524E07EC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0360);
  MEMORY[0x28223BE20](v28);
  v29 = &v24 - v1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0368);
  MEMORY[0x28223BE20](v26);
  v25 = &v24 - v2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0000);
  MEMORY[0x28223BE20](v31);
  v27 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0010);
  MEMORY[0x28223BE20](v4);
  v24 = &v24 - v5;
  v6 = sub_25268FEF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25268F260();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThermostatPresetsDetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  sub_2526924E0();
  sub_25268F1E0();
  (*(v11 + 8))(v13, v10);
  v14 = v7;
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 == *MEMORY[0x277D16BA8])
  {
    v16 = v24;
    sub_2524E9AA8(v24);
    sub_25237153C(v16, v25, &qword_27F4E0010);
    swift_storeEnumTagMultiPayload();
    sub_2524F7E68(&qword_27F4E0008, &qword_27F4E0010, &unk_2526A29A0, sub_2524DBC2C);
    v17 = v27;
    sub_252691470();
    sub_25237153C(v17, v29, &qword_27F4E0000);
    swift_storeEnumTagMultiPayload();
    sub_2524F65A8();
    sub_252691470();
    sub_252372288(v17, &qword_27F4E0000);
    return sub_252372288(v16, &qword_27F4E0010);
  }

  else
  {
    v19 = v25;
    v20 = v24;
    v21 = v27;
    v22 = v29;
    if (v15 == *MEMORY[0x277D16BB0])
    {
      v23 = v24;
      sub_2524E9650(v24);
      sub_25237153C(v20, v19, &qword_27F4E0010);
      swift_storeEnumTagMultiPayload();
      sub_2524F7E68(&qword_27F4E0008, &qword_27F4E0010, &unk_2526A29A0, sub_2524DBC2C);
      sub_252691470();
      sub_25237153C(v21, v22, &qword_27F4E0000);
      swift_storeEnumTagMultiPayload();
      sub_2524F65A8();
      sub_252691470();
      sub_252372288(v21, &qword_27F4E0000);
      return sub_252372288(v23, &qword_27F4E0010);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_2524F65A8();
      sub_252691470();
      return (*(v14 + 8))(v9, v6);
    }
  }
}

uint64_t sub_2524E0D90@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB68);
  v16 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - v3;
  v5 = sub_2524E0F6C();
  if (v6)
  {
    v17 = v5;
    v18 = v6;
    sub_252404480();
    v7 = sub_252691D50();
    v9 = v8;
    v17 = v7;
    v18 = v8;
    v11 = v10 & 1;
    v19 = v10 & 1;
    v20 = v12;
    sub_252692070();
    sub_2524228D8(v7, v9, v11);

    sub_2523714D4(v4, a1, &qword_27F4DDB68);
    return (*(v16 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v14 = *(v16 + 56);

    return v14(a1, 1, 1, v2);
  }
}

uint64_t sub_2524E0F6C()
{
  v0 = sub_25268FEF0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v13[-v5];
  v7 = sub_25268F260();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ThermostatPresetsDetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  sub_2526924E0();
  sub_25268F1E0();
  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277D16BB0], v0);
  sub_2524F831C(&qword_27F4E0070, MEMORY[0x277D16BB8]);
  sub_252692D40();
  sub_252692D40();
  v11 = *(v1 + 8);
  v11(v3, v0);
  v11(v6, v0);
  result = 0;
  if (v13[15] == v13[14])
  {
    return sub_252692C40();
  }

  return result;
}

uint64_t sub_2524E11F8@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0058);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = &v50 - v2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0078);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = &v50 - v3;
  v4 = type metadata accessor for ThermostatPresetsDetailView();
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x28223BE20](v4);
  v55 = v6;
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0080);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v50 - v10;
  v11 = sub_25268F260();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x28223BE20](v11);
  v50 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_252690190();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  v65 = v1;
  sub_2524DD6E0(&v50 - v21);
  v23 = sub_252690490();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v22, 1, v23) != 1)
  {
    sub_2526901A0();
    v26 = v22;
    v27 = *(v24 + 8);
    v27(v26, v23);
    v28 = sub_252690140();
    (*(v14 + 8))(v16, v13);
    if ((v28 & 1) == 0)
    {
      goto LABEL_6;
    }

    v29 = v65;
    sub_2524DD6E0(v19);
    if (v25(v19, 1, v23) != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
      v34 = v50;
      sub_2526924E0();
      v53 = sub_2526902E0();
      (*(v51 + 8))(v34, v52);
      v27(v19, v23);
      v35 = v56;
      sub_2524F5D04(v29, v56);
      sub_252692E00();
      v36 = sub_252692DF0();
      v37 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v38 = swift_allocObject();
      v39 = MEMORY[0x277D85700];
      *(v38 + 16) = v36;
      *(v38 + 24) = v39;
      sub_2524F5D68(v35, v38 + v37);
      sub_2524F5D04(v29, v35);
      v40 = sub_252692DF0();
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *(v41 + 24) = v39;
      sub_2524F5D68(v35, v41 + v37);
      sub_2526900B0();
      v42 = v58;
      v43 = sub_2526926E0();
      MEMORY[0x28223BE20](v43);
      sub_25237153C(v42, v57, &qword_27F4E0080);
      v67 = sub_252692C40();
      v68 = v44;
      v69 = 0;
      v70 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0088);
      sub_2524F831C(&qword_27F4E0090, MEMORY[0x277D16D08]);
      sub_252400FC8(&qword_27F4E0098, &qword_27F4E0088);
      v45 = v59;
      sub_2526925D0();

      v46 = sub_252400FC8(&qword_27F4E0060, &qword_27F4E0058);
      v47 = v60;
      v48 = v63;
      sub_252692160();
      (*(v61 + 8))(v45, v48);
      v67 = v48;
      v68 = v46;
      swift_getOpaqueTypeConformance2();
      v31 = v66;
      v49 = v64;
      sub_252692070();
      (*(v62 + 8))(v47, v49);
      sub_252372288(v42, &qword_27F4E0080);
      v30 = 0;
      goto LABEL_7;
    }

    v22 = v19;
  }

  sub_252372288(v22, &qword_27F4DB250);
LABEL_6:
  v30 = 1;
  v31 = v66;
LABEL_7:
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0050);
  return (*(*(v32 - 8) + 56))(v31, v30, 1, v32);
}

uint64_t sub_2524E1AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v57 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB68);
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0068);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v48 - v7;
  v8 = sub_25268D7D0();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x28223BE20](v8);
  v48 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v48 - v11;
  v12 = sub_2526900B0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD48);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD58);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v48 - v25;
  (*(v13 + 104))(&v48 - v25, *MEMORY[0x277D16D00], v12, v24);
  (*(v13 + 56))(v26, 0, 1, v12);
  v27 = *(v17 + 56);
  sub_25237153C(a1, v19, &qword_27F4DFD58);
  sub_25237153C(v26, &v19[v27], &qword_27F4DFD58);
  v28 = *(v13 + 48);
  if (v28(v19, 1, v12) == 1)
  {
    sub_252372288(v26, &qword_27F4DFD58);
    if (v28(&v19[v27], 1, v12) == 1)
    {
      sub_252372288(v19, &qword_27F4DFD58);
LABEL_8:
      v33 = v51;
      sub_2524E2160(0, 0, v51);
      v35 = v53;
      v34 = v54;
      if ((*(v53 + 48))(v33, 1, v54) != 1)
      {
        v39 = v49;
        (*(v35 + 32))(v49, v33, v34);
        (*(v35 + 16))(v48, v39, v34);
        v40 = sub_252691D40();
        v42 = v41;
        v58 = v40;
        v59 = v41;
        v44 = v43 & 1;
        v60 = v43 & 1;
        v61 = v45;
        v46 = v50;
        sub_252692070();
        sub_2524228D8(v40, v42, v44);

        (*(v35 + 8))(v39, v34);
        v47 = v57;
        sub_2523714D4(v46, v57, &qword_27F4DDB68);
        v37 = v47;
        v36 = 0;
        return (*(v55 + 56))(v37, v36, 1, v56);
      }

      v29 = &qword_27F4E0068;
      v30 = v33;
      goto LABEL_10;
    }

LABEL_6:
    v29 = &qword_27F4DFD48;
    v30 = v19;
LABEL_10:
    sub_252372288(v30, v29);
    goto LABEL_11;
  }

  sub_25237153C(v19, v22, &qword_27F4DFD58);
  if (v28(&v19[v27], 1, v12) == 1)
  {
    sub_252372288(v26, &qword_27F4DFD58);
    (*(v13 + 8))(v22, v12);
    goto LABEL_6;
  }

  (*(v13 + 32))(v15, &v19[v27], v12);
  sub_2524F831C(&qword_27F4DFD70, MEMORY[0x277D16D08]);
  v31 = sub_252692B70();
  v32 = *(v13 + 8);
  v32(v15, v12);
  sub_252372288(v26, &qword_27F4DFD58);
  v32(v22, v12);
  sub_252372288(v19, &qword_27F4DFD58);
  if (v31)
  {
    goto LABEL_8;
  }

LABEL_11:
  v36 = 1;
  v37 = v57;
  return (*(v55 + 56))(v37, v36, 1, v56);
}

uint64_t sub_2524E2160@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v46 = a1;
  v47 = a2;
  v50 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0068);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v40 - v6;
  v7 = sub_25268D810();
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25268FEF0();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25268F260();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_25268D7D0();
  v16 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v41 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v40 = &v40 - v19;
  MEMORY[0x28223BE20](v20);
  v42 = &v40 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  sub_25268D790();
  type metadata accessor for ThermostatPresetsDetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  sub_2526924E0();
  sub_25268F1E0();
  v25 = v48;
  (*(v13 + 8))(v15, v12);
  v26 = (*(v25 + 88))(v11, v9);
  if (v26 == *MEMORY[0x277D16BA0] || v26 == *MEMORY[0x277D16B98])
  {
    sub_2524EEDB8(v46 & 1, v47 & 1);
    sub_25268D800();
    v29 = v42;
    sub_25268D7E0();
    v30 = v44;
    sub_2524EF6B8(v44);
    v31 = v43;
    sub_25237153C(v30, v43, &qword_27F4E0068);
    v32 = v49;
    if ((*(v16 + 48))(v31, 1, v49) == 1)
    {
      sub_252372288(v30, &qword_27F4E0068);
      (*(v16 + 8))(v24, v32);
      sub_252372288(v31, &qword_27F4E0068);
      v33 = v50;
      (*(v16 + 32))(v50, v29, v32);
      return (*(v16 + 56))(v33, 0, 1, v32);
    }

    else
    {
      v34 = v40;
      (*(v16 + 32))(v40, v31, v32);
      v35 = v41;
      sub_25268D7A0();
      v36 = v50;
      sub_25268D7A0();
      v37 = *(v16 + 8);
      v37(v35, v32);
      v37(v34, v32);
      sub_252372288(v30, &qword_27F4E0068);
      v37(v29, v32);
      v37(v24, v32);
      return (*(v16 + 56))(v36, 0, 1, v32);
    }
  }

  else if (v26 == *MEMORY[0x277D16BA8] || v26 == *MEMORY[0x277D16BB0])
  {
    sub_2524EEDB8(v46 & 1, v47 & 1);
    sub_25268D800();
    v38 = v50;
    sub_25268D7E0();
    v39 = v49;
    (*(v16 + 8))(v24, v49);
    return (*(v16 + 56))(v38, 0, 1, v39);
  }

  else
  {
    v27 = v49;
    (*(v16 + 8))(v24, v49);
    (*(v16 + 56))(v50, 1, 1, v27);
    return (*(v25 + 8))(v11, v9);
  }
}

uint64_t sub_2524E27D0@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v51 = a2;
  v53 = a4;
  v5 = sub_25268F260();
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E00F0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E00F8);
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0100);
  MEMORY[0x28223BE20](v14 - 8);
  v50 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = &v45 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - v22;
  v52 = v11;
  v45 = v5;
  v46 = v8;
  if (a1)
  {
    type metadata accessor for ThermostatPresetsDetailView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    v24 = v51;
    sub_2526924E0();
    sub_25268F240();
    v26 = v25;
    (*(v48 + 8))(v7, v5);
    *v10 = sub_2526911D0();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0110);
    sub_2524E4D14(v24, 1, &v10[*(v27 + 44)], v26);
    v28 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0118) + 36)];
    *v28 = xmmword_2526A26F0;
    *(v28 + 1) = xmmword_2526A2700;
    v28[32] = 0;
    v29 = sub_2526912D0();
    v30 = &v10[*(v8 + 36)];
    *v30 = v29;
    v30[1] = sub_25241A688;
    v30[2] = 0;
    sub_2524F704C();
    sub_252692070();
    sub_252372288(v10, &qword_27F4E00F0);
    sub_2523714D4(v13, v23, &qword_27F4E00F8);
    v31 = *(v54 + 56);
    v31(v23, 0, 1, v11);
  }

  else
  {
    v31 = *(v54 + 56);
    v31(&v45 - v22, 1, 1, v11);
  }

  v32 = 1;
  if (v47)
  {
    type metadata accessor for ThermostatPresetsDetailView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    v33 = v51;
    sub_2526924E0();
    sub_25268F230();
    v35 = v34;
    (*(v48 + 8))(v7, v45);
    *v10 = sub_2526911D0();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0110);
    sub_2524E4D14(v33, 0, &v10[*(v36 + 44)], v35);
    v37 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0118) + 36)];
    *v37 = xmmword_2526A26F0;
    *(v37 + 1) = xmmword_2526A2700;
    v37[32] = 0;
    v38 = sub_2526912D0();
    v39 = &v10[*(v46 + 36)];
    *v39 = v38;
    v39[1] = sub_25241A688;
    v39[2] = 0;
    sub_2524F704C();
    sub_252692070();
    sub_252372288(v10, &qword_27F4E00F0);
    sub_2523714D4(v13, v20, &qword_27F4E00F8);
    v32 = 0;
  }

  v31(v20, v32, 1, v52);
  v40 = v49;
  sub_25237153C(v23, v49, &qword_27F4E0100);
  v41 = v50;
  sub_25237153C(v20, v50, &qword_27F4E0100);
  v42 = v53;
  sub_25237153C(v40, v53, &qword_27F4E0100);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0108);
  sub_25237153C(v41, v42 + *(v43 + 48), &qword_27F4E0100);
  sub_252372288(v20, &qword_27F4E0100);
  sub_252372288(v23, &qword_27F4E0100);
  sub_252372288(v41, &qword_27F4E0100);
  return sub_252372288(v40, &qword_27F4E0100);
}

uint64_t sub_2524E2E20@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB68);
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0068);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_25268D7D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  sub_2524E2160(a1, a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_252372288(v10, &qword_27F4E0068);
    v18 = 1;
    v19 = v28;
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    (*(v12 + 16))(v14, v17, v11);
    v20 = sub_252691D40();
    v22 = v21;
    v30 = v20;
    v31 = v21;
    v24 = v23 & 1;
    v32 = v23 & 1;
    v33 = v25;
    sub_252692070();
    sub_2524228D8(v20, v22, v24);

    (*(v12 + 8))(v17, v11);
    v26 = v28;
    sub_2523714D4(v7, v28, &qword_27F4DDB68);
    v18 = 0;
    v19 = v26;
  }

  return (*(v5 + 56))(v19, v18, 1, v29);
}

uint64_t sub_2524E3140@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0220);
  MEMORY[0x28223BE20](v37);
  v39 = &v33 - v1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0228);
  MEMORY[0x28223BE20](v49);
  v40 = &v33 - v2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0230);
  MEMORY[0x28223BE20](v38);
  v35 = &v33 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0238);
  MEMORY[0x28223BE20](v42);
  v41 = &v33 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0240);
  MEMORY[0x28223BE20](v46);
  v47 = &v33 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0248);
  MEMORY[0x28223BE20](v44);
  v7 = &v33 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0250);
  MEMORY[0x28223BE20](v48);
  v45 = &v33 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0258);
  MEMORY[0x28223BE20](v43);
  v36 = &v33 - v9;
  v10 = sub_25268FEF0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25268F260();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThermostatPresetsDetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  sub_2526924E0();
  sub_25268F1E0();
  (*(v15 + 8))(v17, v14);
  v34 = v11;
  v18 = v11;
  v19 = v10;
  v20 = (*(v18 + 88))(v13, v10);
  if (v20 == *MEMORY[0x277D16BA0])
  {
    v21 = v41;
    sub_2524EA5F8(v41);
    v22 = &qword_27F4E0238;
    sub_25237153C(v21, v7, &qword_27F4E0238);
    swift_storeEnumTagMultiPayload();
    sub_2524F7E68(&qword_27F4E0298, &qword_27F4E0258, &unk_2526A2C60, sub_2524F7EE4);
    sub_2524F7F94();
    v23 = v45;
    sub_252691470();
    sub_25237153C(v23, v47, &qword_27F4E0250);
    swift_storeEnumTagMultiPayload();
    sub_2524F7DB0();
    sub_2524F8044();
    sub_252691470();
    sub_252372288(v23, &qword_27F4E0250);
    v24 = v21;
LABEL_5:
    v28 = v22;
    return sub_252372288(v24, v28);
  }

  v25 = v45;
  v26 = v47;
  if (v20 == *MEMORY[0x277D16B98])
  {
    v27 = v36;
    sub_2524E9F0C(v36);
    v22 = &qword_27F4E0258;
    sub_25237153C(v27, v7, &qword_27F4E0258);
    swift_storeEnumTagMultiPayload();
    sub_2524F7E68(&qword_27F4E0298, &qword_27F4E0258, &unk_2526A2C60, sub_2524F7EE4);
    sub_2524F7F94();
    sub_252691470();
    sub_25237153C(v25, v26, &qword_27F4E0250);
    swift_storeEnumTagMultiPayload();
    sub_2524F7DB0();
    sub_2524F8044();
    sub_252691470();
    sub_252372288(v25, &qword_27F4E0250);
    v24 = v27;
    goto LABEL_5;
  }

  if (v20 != *MEMORY[0x277D16BA8])
  {
    swift_storeEnumTagMultiPayload();
    sub_2524F7E68(&qword_27F4E0260, &qword_27F4E0230, &unk_2526A2C38, sub_2524F7C94);
    v32 = v40;
    sub_252691470();
    sub_25237153C(v32, v26, &qword_27F4E0228);
    swift_storeEnumTagMultiPayload();
    sub_2524F7DB0();
    sub_2524F8044();
    sub_252691470();
    sub_252372288(v32, &qword_27F4E0228);
    return (*(v34 + 8))(v13, v19);
  }

  v30 = v35;
  sub_2524EBD64(v35);
  sub_25237153C(v30, v39, &qword_27F4E0230);
  swift_storeEnumTagMultiPayload();
  sub_2524F7E68(&qword_27F4E0260, &qword_27F4E0230, &unk_2526A2C38, sub_2524F7C94);
  v31 = v40;
  sub_252691470();
  sub_25237153C(v31, v26, &qword_27F4E0228);
  swift_storeEnumTagMultiPayload();
  sub_2524F7DB0();
  sub_2524F8044();
  sub_252691470();
  sub_252372288(v31, &qword_27F4E0228);
  v24 = v30;
  v28 = &qword_27F4E0230;
  return sub_252372288(v24, v28);
}

uint64_t sub_2524E3A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v25 = a1;
  v30 = a3;
  v26 = sub_252691140();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEE8);
  v11 = *(v10 - 8);
  v28 = v10;
  v29 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEC8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DFED8);
  v16 = sub_252400FC8(&qword_27F4DFEE0, &qword_27F4DFED8);
  v17 = sub_252404480();
  v32 = v15;
  v33 = MEMORY[0x277D837D0];
  v34 = v16;
  v35 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2526920B0();
  v19 = v26;
  (*(v3 + 104))(v5, *MEMORY[0x277CDDDC0], v26);
  v32 = v14;
  v33 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  sub_2526920C0();
  (*(v3 + 8))(v5, v19);
  (*(v7 + 8))(v9, v6);
  v31 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA88);
  v32 = v6;
  v33 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDE80);
  v22 = sub_252400FC8(&qword_27F4DDE98, &qword_27F4DDE80);
  v32 = v21;
  v33 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v28;
  sub_2526921B0();
  return (*(v29 + 8))(v13, v23);
}

uint64_t sub_2524E3E30(uint64_t a1)
{
  v2 = sub_252691550();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDE80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_252691540();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDE88);
  sub_252400FC8(&qword_27F4DDE90, &qword_27F4DDE88);
  sub_252690900();
  v7 = sub_252400FC8(&qword_27F4DDE98, &qword_27F4DDE80);
  MEMORY[0x2530A30F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2524E401C(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatPresetsDetailView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_252690740();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252690730();
  sub_2524F5D04(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_2524F5D68(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  return MEMORY[0x2530A40D0](v7, sub_2524F646C, v9);
}

uint64_t sub_2524E4170(uint64_t a1)
{
  v15 = sub_2526910F0();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_2526909E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v7, &qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_252692F00();
    v12 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_2526909D0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2524E43EC(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatPresetsDetailView();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32[-v10];
  v12 = sub_252690060();
  v13 = a1 + v2[15];
  v14 = *v13;
  v15 = *(v13 + 8);
  LOBYTE(v34) = v14;
  v35 = v15;
  v33 = v12 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  sub_2526924F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  sub_2526907E0();
  if (!v34)
  {
    goto LABEL_4;
  }

  sub_25268DED0();

  sub_25268DEB0();

  v16 = sub_25268DE60();
  if ((*(*(v16 - 8) + 48))(v11, 1, v16))
  {
    sub_252372288(v11, &qword_27F4DFF90);
LABEL_4:
    v17 = 0;
    goto LABEL_6;
  }

  v18 = sub_25268DDE0();
  sub_252372288(v11, &qword_27F4DFF90);
  v17 = v18 == 2;
LABEL_6:
  v19 = a1 + v2[12];
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v34) = v20;
  v35 = v21;
  v33 = v17;
  sub_2526924F0();
  if (sub_2524DD59C())
  {
    v22 = sub_25268DBE0();
  }

  else
  {
    v22 = 0;
  }

  v23 = a1 + v2[13];
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v34) = v24;
  v35 = v25;
  v33 = v22 & 1;
  sub_2526924F0();
  v26 = sub_252692E30();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  sub_2524F5D04(a1, &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_252692E00();
  v27 = sub_252692DF0();
  v28 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  *(v29 + 16) = v27;
  *(v29 + 24) = v30;
  sub_2524F5D68(v5, v29 + v28);
  sub_252573ED4(0, 0, v8, &unk_2526A2920, v29);
}

uint64_t sub_2524E47C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_252692E00();
  v4[5] = sub_252692DF0();
  v6 = sub_252692DE0();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_2524E4858, v6, v5);
}

uint64_t sub_2524E4858()
{
  type metadata accessor for ThermostatPresetsDetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  sub_2526907E0();
  v1 = *(v0 + 16);
  *(v0 + 64) = v1;
  if (v1)
  {
    v5 = (*MEMORY[0x277D15090] + MEMORY[0x277D15090]);
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_2524D26D8;

    return v5();
  }

  else
  {

    **(v0 + 24) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2524E4988(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatPresetsDetailView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_252692E30();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_2524F5D04(a1, v5);
  sub_252692E00();
  v10 = sub_252692DF0();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_2524F5D68(v5, v12 + v11);
  sub_252573ED4(0, 0, v8, &unk_2526A2900, v12);
}

uint64_t sub_2524E4B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_252692E00();
  v4[5] = sub_252692DF0();
  v6 = sub_252692DE0();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_2524E4BD8, v6, v5);
}

uint64_t sub_2524E4BD8()
{
  type metadata accessor for ThermostatPresetsDetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  sub_2526907E0();
  v1 = *(v0 + 16);
  *(v0 + 64) = v1;
  if (v1)
  {
    sub_25268DEE0();
    sub_2524F831C(&qword_27F4DFD80, MEMORY[0x277D15148]);
    v3 = sub_252692DE0();

    return MEMORY[0x2822009F8](sub_2524D2C44, v3, v2);
  }

  else
  {

    **(v0 + 24) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2524E4D14@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  LODWORD(v72) = a2;
  v70 = a1;
  v81 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0140);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v86 = (v65 - v9);
  v84 = sub_252690D20();
  v88 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ThermostatPresetsDetailView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0148);
  v87 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v65 - v17;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0150);
  MEMORY[0x28223BE20](v83);
  v20 = v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0158);
  MEMORY[0x28223BE20](v21 - 8);
  v79 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v78 = v65 - v24;
  MEMORY[0x28223BE20](v25);
  v85 = v65 - v26;
  MEMORY[0x28223BE20](v27);
  v82 = v65 - v28;
  v73 = v15;
  sub_2524F5D04(a1, v15);
  v29 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v30 = v29 + v14;
  v77 = v29;
  v76 = (v29 + v14) & 0xFFFFFFFFFFFFFFF8;
  v74 = v29 + v14;
  v31 = v76 + 8;
  v75 = v76 + 8;
  v32 = swift_allocObject();
  sub_2524F5D68(v15, v32 + v29);
  LODWORD(v15) = v72 & 1;
  *(v32 + v30) = v72 & 1;
  *(v32 + v31) = a4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0160);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF7A0);
  v34 = sub_2524C95A4();
  *&v92 = v33;
  *(&v92 + 1) = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_252692550();
  sub_252690D10();
  v69 = sub_252400FC8(&qword_27F4E0168, &qword_27F4E0148);
  v68 = sub_2524F831C(&qword_27F4DF1B0, MEMORY[0x277CDDB18]);
  v65[0] = v16;
  v35 = v84;
  sub_252691DC0();
  v36 = *(v88 + 8);
  v88 += 8;
  v67 = v36;
  v36(v11, v35);
  v37 = *(v87 + 8);
  v87 += 8;
  v66 = v37;
  v37(v18, v16);
  sub_252692920();
  sub_2526909C0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0170);
  v39 = &v20[*(v38 + 36)];
  v40 = v90;
  *v39 = v89;
  *(v39 + 1) = v40;
  *(v39 + 2) = v91;
  v41 = v70;
  v42 = sub_2524E60D4(v15, 0, a4);
  v20[*(v83 + 36)] = v42;
  v65[1] = sub_2524F71C4();
  sub_252692070();
  sub_252372288(v20, &qword_27F4E0150);
  v43 = sub_2526912E0();
  v44 = v86;
  *v86 = v43;
  v44[1] = 0xC022000000000000;
  *(v44 + 16) = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0190);
  sub_2524E6B48(v15, v44 + *(v45 + 44), a4);
  v46 = v73;
  sub_2524F5D04(v41, v73);
  v47 = swift_allocObject();
  sub_2524F5D68(v46, v47 + v77);
  *(v47 + v74) = v15;
  *(v47 + v75) = a4;
  sub_252692550();
  sub_252690D10();
  v48 = v65[0];
  v49 = v84;
  sub_252691DC0();
  v67(v11, v49);
  v66(v18, v48);
  sub_252692920();
  sub_2526909C0();
  v50 = &v20[*(v38 + 36)];
  v51 = v93;
  *v50 = v92;
  *(v50 + 1) = v51;
  *(v50 + 2) = v94;
  v52 = sub_2524E60D4(v15, 1, a4);
  v20[*(v83 + 36)] = v52;
  v53 = v85;
  sub_252692070();
  sub_252372288(v20, &qword_27F4E0150);
  v54 = v82;
  v55 = v78;
  sub_25237153C(v82, v78, &qword_27F4E0158);
  v56 = v86;
  v57 = v80;
  sub_25237153C(v86, v80, &qword_27F4E0140);
  v58 = v53;
  v59 = v79;
  sub_25237153C(v58, v79, &qword_27F4E0158);
  v60 = v81;
  sub_25237153C(v55, v81, &qword_27F4E0158);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0198);
  v62 = v60 + v61[12];
  *v62 = 0x4024000000000000;
  *(v62 + 8) = 0;
  sub_25237153C(v57, v60 + v61[16], &qword_27F4E0140);
  v63 = v60 + v61[20];
  *v63 = 0x4024000000000000;
  *(v63 + 8) = 0;
  sub_25237153C(v59, v60 + v61[24], &qword_27F4E0158);
  sub_252372288(v85, &qword_27F4E0158);
  sub_252372288(v56, &qword_27F4E0140);
  sub_252372288(v54, &qword_27F4E0158);
  sub_252372288(v59, &qword_27F4E0158);
  sub_252372288(v57, &qword_27F4E0140);
  return sub_252372288(v55, &qword_27F4E0158);
}

uint64_t sub_2524E5710(int a1, int a2, double a3)
{
  v74 = a1;
  v75 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v66 - v8;
  v9 = sub_25268FEF0();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25268F260();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ThermostatPresetsDetailView();
  v70 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v71 = v17;
  v72 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  if (qword_27F4DABD8 != -1)
  {
    swift_once();
  }

  v21 = sub_2526905A0();
  __swift_project_value_buffer(v21, qword_27F4E4B30);
  sub_2524F5D04(v3, v20);
  v22 = sub_252690580();
  v23 = sub_252692F10();
  v24 = os_log_type_enabled(v22, v23);
  v77 = v3;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v78 = v67;
    *v25 = 136316418;
    *(v25 + 4) = sub_2525BDA90(0xD000000000000038, 0x80000002526B07E0, &v78);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_2525BDA90(0xD00000000000002DLL, 0x80000002526B0920, &v78);
    *(v25 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    sub_2526924E0();
    sub_25268F1E0();
    (*(v13 + 8))(v15, v12);
    v26 = sub_25268FED0();
    v28 = v27;
    (*(v68 + 8))(v11, v69);
    sub_2524F87CC(v20, type metadata accessor for ThermostatPresetsDetailView);
    v29 = sub_2525BDA90(v26, v28, &v78);

    *(v25 + 24) = v29;
    *(v25 + 32) = 2080;
    v30 = v74;
    if (v74)
    {
      v31 = 1952539976;
    }

    else
    {
      v31 = 1819242307;
    }

    v32 = sub_2525BDA90(v31, 0xE400000000000000, &v78);

    *(v25 + 34) = v32;
    *(v25 + 42) = 2080;
    v33 = v75;
    if (v75)
    {
      v34 = 0x6E656D6572636E49;
    }

    else
    {
      v34 = 0x6E656D6572636544;
    }

    v35 = sub_2525BDA90(v34, 0xE900000000000074, &v78);

    *(v25 + 44) = v35;
    *(v25 + 52) = 2080;
    v36 = sub_252692E50();
    v38 = sub_2525BDA90(v36, v37, &v78);

    *(v25 + 54) = v38;
    _os_log_impl(&dword_252309000, v22, v23, "%s - %s: [Preset: %s] - Calling Update setpoint for type: %s, changeType: %s, currentValue: %s", v25, 0x3Eu);
    v39 = v67;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v39, -1, -1);
    MEMORY[0x2530A5A40](v25, -1, -1);
  }

  else
  {

    sub_2524F87CC(v20, type metadata accessor for ThermostatPresetsDetailView);
    v30 = v74;
    v33 = v75;
  }

  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 1;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 1;
  v42 = sub_2524F28E4(v30 & 1, v33 & 1, a3);
  v44 = v43;
  v46 = v45;
  *(v41 + 16) = v42;
  v75 = v47;
  *(v41 + 24) = v47 & 1;
  *(v40 + 16) = v43;
  *(v40 + 24) = v45 & 1;
  v48 = v76;
  sub_2524DD6E0(v76);
  v49 = v48;
  v50 = sub_252690490();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    sub_252372288(v49, &qword_27F4DB250);
    v52 = v75;
  }

  else
  {
    v42 = sub_252690280();
    v52 = v53;
    v44 = v54;
    v46 = v55;
    (*(v51 + 8))(v49, v50);
  }

  *(v41 + 16) = v42;
  *(v41 + 24) = v52 & 1;
  *(v40 + 16) = v44;
  *(v40 + 24) = v46 & 1;
  v56 = v77;
  if (sub_2524F2A3C(v42, v52 & 1, v44, v46 & 1))
  {
    v57 = sub_252692E30();
    v58 = v73;
    (*(*(v57 - 8) + 56))(v73, 1, 1, v57);
    v59 = v72;
    sub_2524F5D04(v56, v72);
    sub_252692E00();

    v60 = sub_252692DF0();
    v61 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v62 = (v71 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    v64 = MEMORY[0x277D85700];
    *(v63 + 16) = v60;
    *(v63 + 24) = v64;
    sub_2524F5D68(v59, v63 + v61);
    *(v63 + v62) = v41;
    *(v63 + ((v62 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;
    sub_2525738C0(0, 0, v58, &unk_2526A2B10, v63);
  }
}

uint64_t sub_2524E5F20()
{
  v0 = sub_2526923E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2526923D0();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0FE0], v0);
  v4 = sub_252692420();

  (*(v1 + 8))(v3, v0);
  v5 = [objc_opt_self() tertiaryLabelColor];
  v6 = sub_252692240();
  v8[0] = v4;
  v8[1] = v6;
  sub_252691B30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF7A0);
  sub_2524C95A4();
  sub_252691DA0();
}

BOOL sub_2524E60D4(int a1, int a2, double a3)
{
  v97 = a2;
  v101 = a1;
  v5 = sub_25268FEF0();
  v89 = *(v5 - 8);
  v90 = v5;
  MEMORY[0x28223BE20](v5);
  v88 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_25268F260();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ThermostatPresetsDetailView();
  MEMORY[0x28223BE20](v84);
  v96 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2526902B0();
  v94 = *(v9 - 8);
  v95 = v9;
  MEMORY[0x28223BE20](v9);
  v93 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = &v83 - v12;
  v13 = sub_252690340();
  v99 = *(v13 - 8);
  v100 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v83 - v17;
  v19 = sub_252690310();
  v98 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v83 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v83 - v26;
  v28 = sub_252690490();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v3;
  sub_2524DD6E0(v27);
  v32 = v28;
  v33 = v29;
  if ((*(v29 + 48))(v27, 1, v32) == 1)
  {
    sub_252372288(v27, &qword_27F4DB250);
    return 0;
  }

  v34 = *(v29 + 32);
  v83 = v32;
  v34(v31, v27, v32);
  if (v101)
  {
    sub_252690360();
    sub_2526902F0();
    v36 = v35;
    v37 = *(v99 + 1);
    v38 = v18;
    v39 = v100;
    v37(v38, v100);
    v40 = 0.0;
    if ((v36 & 1) == 0)
    {
      sub_252693500();
      v40 = v41;
    }

    sub_252690360();
    sub_252690300();
    v43 = v42;
    v37(v15, v39);
    if ((v43 & 1) == 0)
    {
      sub_252693500();
      if ((v36 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

LABEL_13:
    (*(v33 + 8))(v31, v83);
    return 0;
  }

  sub_252690350();
  sub_2526902F0();
  v46 = v45;
  v47 = *(v98 + 8);
  v47(v24, v19);
  v40 = 0.0;
  if ((v46 & 1) == 0)
  {
    sub_252693500();
    v40 = v48;
  }

  sub_252690350();
  sub_252690300();
  v50 = v49;
  v47(v21, v19);
  v33 = v29;
  if (v50)
  {
    goto LABEL_13;
  }

  sub_252693500();
  if (v46)
  {
    goto LABEL_13;
  }

LABEL_15:
  v52 = v44;
  v53 = v92;
  sub_2526902C0();
  v55 = v93;
  v54 = v94;
  v56 = v95;
  (*(v94 + 104))(v93, *MEMORY[0x277D16D58], v95);
  sub_2524F831C(&qword_27F4E01A8, MEMORY[0x277D16D60]);
  sub_252692D40();
  sub_252692D40();
  v57 = *(v54 + 8);
  v57(v55, v56);
  v57(v53, v56);
  v58 = v101;
  v59 = v97;
  v60 = v96;
  if (v103[0] != v102)
  {
    v61 = v97 & 1;
LABEL_28:
    (*(v33 + 8))(v31, v83);
    if (v61)
    {
      return v40 <= a3;
    }

    else
    {
      return v52 >= a3;
    }
  }

  v61 = v97 & 1;
  v62 = sub_2524F28E4(v101 & 1, v97 & 1, a3);
  if (sub_2524F4D24(v62, v63 & 1, v65, v64 & 1))
  {
    goto LABEL_28;
  }

  if (qword_27F4DABD8 != -1)
  {
    swift_once();
  }

  v66 = sub_2526905A0();
  __swift_project_value_buffer(v66, qword_27F4E4B30);
  sub_2524F5D04(v91, v60);
  v67 = sub_252690580();
  v68 = sub_252692EF0();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v100 = v33;
    v70 = v69;
    v71 = swift_slowAlloc();
    v103[0] = v71;
    *v70 = 136316162;
    *(v70 + 4) = sub_2525BDA90(0xD000000000000038, 0x80000002526B07E0, v103);
    *(v70 + 12) = 2080;
    *(v70 + 14) = sub_2525BDA90(0xD000000000000028, 0x80000002526B0A30, v103);
    *(v70 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    v72 = v85;
    sub_2526924E0();
    v99 = v31;
    v73 = v88;
    sub_25268F1E0();
    (*(v86 + 8))(v72, v87);
    v74 = sub_25268FED0();
    v75 = v60;
    v77 = v76;
    (*(v89 + 8))(v73, v90);
    sub_2524F87CC(v75, type metadata accessor for ThermostatPresetsDetailView);
    v78 = sub_2525BDA90(v74, v77, v103);

    *(v70 + 24) = v78;
    *(v70 + 32) = 2080;
    if (v59)
    {
      v79 = 0x6E656D6572636E49;
    }

    else
    {
      v79 = 0x6E656D6572636544;
    }

    v80 = sub_2525BDA90(v79, 0xE900000000000074, v103);

    *(v70 + 34) = v80;
    *(v70 + 42) = 2080;
    if (v58)
    {
      v81 = 1952539976;
    }

    else
    {
      v81 = 1819242307;
    }

    v82 = sub_2525BDA90(v81, 0xE400000000000000, v103);

    *(v70 + 44) = v82;
    _os_log_impl(&dword_252309000, v67, v68, "%s - %s: [Preset: %s] - Setpoint values not within deadband limit, hiding %s button for setpoint: %s", v70, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v71, -1, -1);
    MEMORY[0x2530A5A40](v70, -1, -1);

    (*(v100 + 8))(v99, v83);
    return 1;
  }

  else
  {

    sub_2524F87CC(v60, type metadata accessor for ThermostatPresetsDetailView);
    (*(v33 + 8))(v31, v83);
    return 1;
  }
}

uint64_t sub_2524E6B48@<X0>(char a1@<W1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v78 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E01B8);
  MEMORY[0x28223BE20](v74);
  v75 = &v65 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E01C0);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v65 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF158);
  MEMORY[0x28223BE20](v71);
  v11 = &v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E01C8);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = &v65 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E01D0);
  MEMORY[0x28223BE20](v69);
  v73 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v65 - v16;
  MEMORY[0x28223BE20](v17);
  v72 = &v65 - v18;
  if (a1)
  {
    v67 = "coolingSetpoint:)";
    sub_252692C40();
    v19 = sub_252692340();
  }

  else
  {
    v67 = "sDetailView.SetpointView.Value.";
    sub_252692C40();
    v19 = sub_2526922C0();
  }

  v79 = v19;
  v20 = sub_252691CD0();
  v22 = v21;
  v24 = v23;

  sub_252691AA0();
  sub_252691B10();
  sub_252691B90();

  v25 = sub_252691D00();
  v27 = v26;
  v29 = v28;
  v66 = v30;

  sub_2524228D8(v20, v22, v24 & 1);

  v31 = &v11[*(v71 + 36)];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF170) + 28);
  v33 = *MEMORY[0x277CE0B48];
  v34 = sub_252691CF0();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v31 + v32, v33, v34);
  (*(v35 + 56))(v31 + v32, 0, 1, v34);
  *v31 = swift_getKeyPath();
  *v11 = v25;
  *(v11 + 1) = v27;
  v11[16] = v29 & 1;
  *(v11 + 3) = v66;
  v79 = 0;
  v80 = 0xE000000000000000;
  sub_252693210();

  v79 = 0xD00000000000002FLL;
  v80 = 0x80000002526B09B0;
  v36 = sub_252692C40();
  MEMORY[0x2530A4800](v36);

  sub_2524B4EDC();
  v37 = v70;
  sub_252692070();

  sub_252372288(v11, &qword_27F4DF158);
  KeyPath = swift_getKeyPath();
  v39 = v68;
  sub_2523714D4(v37, v68, &qword_27F4E01C8);
  v40 = v39 + *(v69 + 36);
  *v40 = 0;
  *(v40 + 8) = 0;
  *(v40 + 16) = 0;
  *(v40 + 24) = 1;
  *(v40 + 32) = KeyPath;
  *(v40 + 40) = 0;
  v41 = v72;
  sub_2523714D4(v39, v72, &qword_27F4E01D0);
  sub_25268F2E0();
  LODWORD(v79) = sub_2526915E0();
  v42 = sub_252691CD0();
  v44 = v43;
  v46 = v45;

  if (qword_27F4DAA98 != -1)
  {
    swift_once();
  }

  v47 = sub_252691D00();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_2524228D8(v42, v44, v46 & 1);

  v79 = v47;
  v80 = v49;
  v81 = v51 & 1;
  v82 = v53;
  v83 = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E01D8);
  sub_2524F7A64();
  v54 = v75;
  sub_252691F30();
  sub_2524228D8(v47, v49, v51 & 1);

  v55 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E01E8) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E01F0);
  sub_252690DA0();
  *v55 = swift_getKeyPath();
  v56 = sub_2526929A0();
  v57 = v54 + *(v74 + 36);
  *v57 = v56;
  *(v57 + 8) = a3;
  v79 = 0;
  v80 = 0xE000000000000000;
  sub_252693210();

  v79 = 0xD00000000000002FLL;
  v80 = 0x80000002526B09E0;
  v58 = sub_25268F2E0();
  MEMORY[0x2530A4800](v58);

  sub_2524F7AE8();
  v59 = v76;
  sub_252692070();

  sub_252372288(v54, &qword_27F4E01B8);
  v60 = v73;
  sub_25237153C(v41, v73, &qword_27F4E01D0);
  v61 = v77;
  sub_25237153C(v59, v77, &qword_27F4E01C0);
  v62 = v78;
  sub_25237153C(v60, v78, &qword_27F4E01D0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0210);
  sub_25237153C(v61, v62 + *(v63 + 48), &qword_27F4E01C0);
  sub_252372288(v59, &qword_27F4E01C0);
  sub_252372288(v41, &qword_27F4E01D0);
  sub_252372288(v61, &qword_27F4E01C0);
  return sub_252372288(v60, &qword_27F4E01D0);
}

uint64_t sub_2524E73D0()
{
  v0 = sub_2526923E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2526923D0();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0FE0], v0);
  v4 = sub_252692420();

  (*(v1 + 8))(v3, v0);
  v5 = [objc_opt_self() tertiaryLabelColor];
  v6 = sub_252692240();
  v8[0] = v4;
  v8[1] = v6;
  sub_252691B30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF7A0);
  sub_2524C95A4();
  sub_252691DA0();
}

uint64_t sub_2524E7584@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25268F260();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD58);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_2524DD6E0(v8);
  v12 = sub_252690490();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_252372288(v8, &qword_27F4DB250);
    v14 = sub_2526900B0();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
LABEL_4:
    sub_252372288(v11, &qword_27F4DFD58);
    v16 = *MEMORY[0x277D16D00];
    sub_2526900B0();
    return (*(*(v14 - 8) + 104))(a1, v16, v14);
  }

  type metadata accessor for ThermostatPresetsDetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  sub_2526924E0();
  sub_2526900E0();
  (*(v3 + 8))(v5, v2);
  (*(v13 + 8))(v8, v12);
  v14 = sub_2526900B0();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  return (*(v15 + 32))(a1, v11, v14);
}

uint64_t sub_2524E78E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a1;
  v5 = sub_2526900B0();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = v6;
  v62 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for ThermostatPresetsDetailView();
  v51 = *(v58 - 1);
  MEMORY[0x28223BE20](v58);
  v52 = v7;
  v54 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD58);
  MEMORY[0x28223BE20](v10 - 8);
  v49 = v48 - v11;
  v12 = sub_25268F260();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E00E8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v48 - v20;
  v64 = sub_25268E200();
  v22 = *(v64 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v64);
  v50 = v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v60 = v48 - v25;
  MEMORY[0x28223BE20](v26);
  v59 = v48 - v27;
  v63 = a4;
  sub_2524DD6E0(v18);
  v28 = sub_252690490();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v18, 1, v28) == 1)
  {
    sub_252372288(v18, &qword_27F4DB250);
    (*(v22 + 56))(v21, 1, 1, v64);
    return sub_252372288(v21, &qword_27F4E00E8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  sub_2526924E0();
  sub_2526900C0();
  (*(v13 + 8))(v15, v12);
  (*(v29 + 8))(v18, v28);
  if ((*(v22 + 48))(v21, 1, v64) == 1)
  {
    return sub_252372288(v21, &qword_27F4E00E8);
  }

  v31 = *(v22 + 32);
  v48[1] = v22 + 32;
  v58 = v31;
  v31(v59, v21, v64);
  sub_25268E1F0();
  v33 = v56;
  v32 = v57;
  v48[0] = *(v56 + 16);
  v34 = v49;
  v35 = v53;
  (v48[0])(v49, v53, v57);
  (*(v33 + 56))(v34, 0, 1, v32);
  v36 = v60;
  sub_25268E1E0();
  sub_252372288(v34, &qword_27F4DFD58);
  v37 = sub_252692E30();
  (*(*(v37 - 8) + 56))(v61, 1, 1, v37);
  v38 = v54;
  sub_2524F5D04(v63, v54);
  (v48[0])(v62, v35, v32);
  v39 = v50;
  (*(v22 + 16))(v50, v36, v64);
  sub_252692E00();
  v40 = sub_252692DF0();
  v41 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v42 = (v52 + *(v33 + 80) + v41) & ~*(v33 + 80);
  v43 = (v55 + *(v22 + 80) + v42) & ~*(v22 + 80);
  v44 = swift_allocObject();
  v45 = MEMORY[0x277D85700];
  *(v44 + 16) = v40;
  *(v44 + 24) = v45;
  sub_2524F5D68(v38, v44 + v41);
  (*(v33 + 32))(v44 + v42, v62, v32);
  v46 = v64;
  v58(v44 + v43, v39, v64);
  sub_2524DD2F0(0, 0, v61, &unk_2526A2A80, v44);

  v47 = *(v22 + 8);
  v47(v60, v46);
  return (v47)(v59, v46);
}

uint64_t sub_2524E805C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  v6[5] = swift_task_alloc();
  v7 = sub_25268FEF0();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = sub_25268F260();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v9 = sub_2526900B0();
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = type metadata accessor for ThermostatPresetsDetailView();
  v6[17] = swift_task_alloc();
  sub_252692E00();
  v6[18] = sub_252692DF0();
  v11 = sub_252692DE0();
  v6[19] = v11;
  v6[20] = v10;

  return MEMORY[0x2822009F8](sub_2524E8280, v11, v10);
}

uint64_t sub_2524E8280()
{
  v48 = v0;
  if (qword_27F4DABD8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v7 = v0[2];
  v6 = v0[3];
  v8 = sub_2526905A0();
  __swift_project_value_buffer(v8, qword_27F4E4B30);
  sub_2524F5D04(v7, v1);
  v9 = *(v5 + 16);
  v9(v2, v6, v4);
  v9(v3, v6, v4);
  v10 = sub_252690580();
  v11 = sub_252692F10();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[17];
  if (v12)
  {
    v46 = v11;
    v14 = v0[13];
    v44 = v0[14];
    v15 = v0[11];
    v42 = v0[15];
    v43 = v0[12];
    v16 = v0[10];
    v40 = v0[9];
    v17 = v0[7];
    v18 = v0[8];
    v41 = v0[6];
    v19 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47 = v45;
    *v19 = 136316162;
    *(v19 + 4) = sub_2525BDA90(0xD000000000000038, 0x80000002526B07E0, &v47);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_2525BDA90(0x656C655365646F6DLL, 0xEE002928726F7463, &v47);
    *(v19 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    sub_2526924E0();
    sub_25268F1E0();
    (*(v16 + 8))(v15, v40);
    v20 = sub_25268FED0();
    v22 = v21;
    (*(v17 + 8))(v18, v41);
    sub_2524F87CC(v13, type metadata accessor for ThermostatPresetsDetailView);
    v23 = sub_2525BDA90(v20, v22, &v47);

    *(v19 + 24) = v23;
    *(v19 + 32) = 2080;
    v24 = sub_252690090();
    v26 = v25;
    v27 = *(v14 + 8);
    v27(v42, v43);
    v28 = sub_2525BDA90(v24, v26, &v47);

    *(v19 + 34) = v28;
    *(v19 + 42) = 256;
    LOBYTE(v28) = sub_2526900A0();
    v27(v44, v43);
    *(v19 + 44) = v28;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v45, -1, -1);
    MEMORY[0x2530A5A40](v19, -1, -1);
  }

  else
  {
    v29 = v0[15];
    v30 = v0[12];
    v31 = *(v0[13] + 8);
    v31(v0[14], v30);

    v31(v29, v30);
    sub_2524F87CC(v13, type metadata accessor for ThermostatPresetsDetailView);
  }

  v32 = v0[5];
  sub_2524DD6E0(v32);
  v33 = sub_252690490();
  v0[21] = v33;
  v34 = *(v33 - 8);
  v0[22] = v34;
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v35 = v0[5];

    sub_252372288(v35, &qword_27F4DB250);

    v36 = v0[1];

    return v36();
  }

  else
  {
    v38 = swift_task_alloc();
    v0[23] = v38;
    *v38 = v0;
    v38[1] = sub_2524E87BC;
    v39 = v0[4];

    return MEMORY[0x282170EA8](v39);
  }
}

uint64_t sub_2524E87BC()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = v2[19];
    v4 = v2[20];
    v5 = sub_2524E899C;
  }

  else
  {
    (*(v2[22] + 8))(v2[5], v2[21]);
    v3 = v2[19];
    v4 = v2[20];
    v5 = sub_2524E88E8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2524E88E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2524E899C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[5];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2524E8A74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v3 = sub_2526900B0();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E00A0);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  MEMORY[0x28223BE20](v6);
  v49 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E00A8);
  MEMORY[0x28223BE20](v9 - 8);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v46 - v12;
  v54 = sub_252692780();
  v64 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v46 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E00B0);
  v63 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v61 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v60 = &v46 - v18;
  v65 = a1;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E00B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E00C0);
  sub_252400FC8(&qword_27F4E00C8, &qword_27F4E00B8);
  v48 = sub_2524F831C(&qword_27F4E0090, MEMORY[0x277D16D08]);
  sub_2524F7E68(&qword_27F4E00D0, &qword_27F4E00C0, &unk_2526A2A50, sub_2524F6C7C);
  sub_252692790();
  sub_252692770();
  v19 = *MEMORY[0x277D16D00];
  v20 = v50;
  v21 = v51;
  v22 = *(v50 + 104);
  v22(v5, v19, v51);
  v46 = sub_252690090();
  v24 = v23;
  v47 = *(v20 + 8);
  v47(v5, v21);
  v22(v5, v19, v21);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAC00);
  v26 = v49;
  v27 = &v49[*(v25 + 36)];
  (*(v20 + 32))(v27, v5, v21);
  v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAC08) + 36)] = 1;
  v28 = v26;
  *v26 = v46;
  *(v26 + 1) = v24;
  v26[16] = 0;
  *(v26 + 3) = MEMORY[0x277D84F90];
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_252693210();
  MEMORY[0x2530A4800](0xD000000000000039, 0x80000002526B07A0);
  v22(v5, v19, v21);
  v29 = sub_252690090();
  v31 = v30;
  v47(v5, v21);
  MEMORY[0x2530A4800](v29, v31);

  v65 = MEMORY[0x277CE0BD8];
  v66 = v21;
  v67 = MEMORY[0x277CE0BC8];
  v68 = v48;
  swift_getOpaqueTypeConformance2();
  v32 = v62;
  v33 = v56;
  sub_252692070();

  (*(v57 + 8))(v28, v33);
  v34 = *(v63 + 16);
  v35 = v61;
  v36 = v52;
  v34(v61, v60, v52);
  v37 = *(v64 + 16);
  v39 = v53;
  v38 = v54;
  v37(v53, v59, v54);
  v40 = v55;
  sub_25237153C(v32, v55, &qword_27F4E00A8);
  v41 = v58;
  v34(v58, v35, v36);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E00E0);
  v37(&v41[*(v42 + 48)], v39, v38);
  sub_25237153C(v40, &v41[*(v42 + 64)], &qword_27F4E00A8);
  sub_252372288(v62, &qword_27F4E00A8);
  v43 = *(v64 + 8);
  v43(v59, v38);
  v44 = *(v63 + 8);
  v44(v60, v36);
  sub_252372288(v40, &qword_27F4E00A8);
  v43(v39, v38);
  return (v44)(v61, v36);
}

uint64_t sub_2524E9228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E00A0);
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E00A8);
  v7 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v26 - v8;
  v10 = sub_2526900B0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x277D16D00], v10, v12);
  sub_2524F831C(&qword_27F4DFD70, MEMORY[0x277D16D08]);
  v15 = sub_252692B70();
  (*(v11 + 8))(v14, v10);
  v16 = 1;
  if ((v15 & 1) == 0)
  {
    v17 = sub_252690090();
    v26 = v4;
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAC00) + 36);
    v27 = a2;
    v21 = &v6[v20];
    (*(v11 + 16))(&v6[v20], a1, v10);
    v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAC08) + 36)] = 1;
    *v6 = v17;
    *(v6 + 1) = v19;
    v6[16] = 0;
    *(v6 + 3) = MEMORY[0x277D84F90];
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_252693210();
    MEMORY[0x2530A4800](0xD000000000000039, 0x80000002526B07A0);
    v22 = sub_252690090();
    MEMORY[0x2530A4800](v22);

    v23 = sub_2524F831C(&qword_27F4E0090, MEMORY[0x277D16D08]);
    v30 = MEMORY[0x277CE0BD8];
    v31 = v10;
    v32 = MEMORY[0x277CE0BC8];
    v33 = v23;
    swift_getOpaqueTypeConformance2();
    v24 = v26;
    a2 = v27;
    sub_252692070();

    (*(v28 + 8))(v6, v24);
    sub_2523714D4(v9, a2, &qword_27F4E00A8);
    v16 = 0;
  }

  return (*(v7 + 56))(a2, v16, 1, v29);
}

uint64_t sub_2524E9650@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE08);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = sub_25268F260();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThermostatPresetsDetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  sub_2526924E0();
  v13 = sub_25268F250();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v29 = sub_252692C40();
    v30 = v14;
    v25 = v5;
    sub_2524ECFDC(&unk_28648B240, &unk_28648B268, sub_2524F9BB4, sub_2524F88F8);
    sub_252404480();
    sub_252692610();
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_252693210();
    v32 = v29;
    v33 = v30;
    MEMORY[0x2530A4800](0xD000000000000036, 0x80000002526B0CD0);
    v5 = v25;
    v29 = sub_2524ECFDC(&unk_28648B240, &unk_28648B268, sub_2524F9BB4, sub_2524F88F8);
    v30 = v15;
    v31 = v16 & 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300);
    MEMORY[0x2530A4210](&v28, v17);
    v18 = v28;

    if (v18)
    {
      v19 = 28239;
    }

    else
    {
      v19 = 6710863;
    }

    if (v18)
    {
      v20 = 0xE200000000000000;
    }

    else
    {
      v20 = 0xE300000000000000;
    }

    MEMORY[0x2530A4800](v19, v20);

    sub_252400FC8(&qword_27F4DFE00, &qword_27F4DFE08);
    v21 = v27;
    sub_252692070();

    (*(v26 + 8))(v4, v21);
    sub_2523714D4(v8, a1, &qword_27F4DFDF8);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  return (*(v6 + 56))(a1, v22, 1, v5);
}

uint64_t sub_2524E9AA8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE08);
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v26 = &v24 - v7;
  v8 = sub_25268F260();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThermostatPresetsDetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  sub_2526924E0();
  v12 = sub_25268F250();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v29 = sub_252692C40();
    v30 = v13;
    v25 = v2;
    sub_2524ECFDC(&unk_28648B2B8, &unk_28648B2E0, sub_2524F8F18, sub_2524F934C);
    sub_252404480();
    sub_252692610();
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_252693210();

    v32 = 0xD000000000000030;
    v33 = 0x80000002526B0D30;
    v29 = sub_2524ECFDC(&unk_28648B2B8, &unk_28648B2E0, sub_2524F8F18, sub_2524F934C);
    v30 = v14;
    v31 = v15 & 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300);
    MEMORY[0x2530A4210](&v28, v16);
    v17 = v28;

    if (v17)
    {
      v18 = 28239;
    }

    else
    {
      v18 = 6710863;
    }

    if (v17)
    {
      v19 = 0xE200000000000000;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    MEMORY[0x2530A4800](v18, v19);

    sub_252400FC8(&qword_27F4DFE00, &qword_27F4DFE08);
    v20 = v26;
    v21 = v25;
    sub_252692070();

    (*(v27 + 8))(v4, v21);
    sub_2523714D4(v20, a1, &qword_27F4DFDF8);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  return (*(v6 + 56))(a1, v22, 1, v5);
}

uint64_t sub_2524E9F0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E02B8);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v36 - v6;
  v7 = sub_252690490();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_25268DE60();
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v41 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E02A8);
  v14 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = &v36 - v15;
  v17 = sub_2526904A0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThermostatPresetsDetailView();
  (*(v18 + 104))(v20, *MEMORY[0x277D16E20], v17);
  sub_2524F831C(&qword_27F4DFFE0, MEMORY[0x277D16E40]);
  v21 = sub_252692B70();
  (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
    sub_2526907E0();
    if (v47)
    {
      sub_25268DED0();

      sub_25268DEB0();

      v24 = v42;
      if ((*(v42 + 48))(v11, 1, v12) != 1)
      {
        v25 = v41;
        (*(v24 + 32))(v41, v11, v12);
        if (sub_25268DDE0() == 2)
        {
          (*(v24 + 8))(v25, v12);
LABEL_10:
          (*(v43 + 56))(v16, 1, 1, v44);
LABEL_11:
          v23 = v46;
          sub_2523714D4(v16, v46, &qword_27F4E02A8);
          v22 = 0;
          return (*(v14 + 56))(v23, v22, 1, v45);
        }

        v11 = v38;
        sub_2524DD6E0(v38);
        v29 = v39;
        v28 = v40;
        if ((*(v39 + 48))(v11, 1, v40) != 1)
        {
          v30 = v36;
          v31 = (*(v29 + 32))(v36, v11, v28);
          v38 = &v36;
          MEMORY[0x28223BE20](v31);
          *(&v36 - 2) = v2;
          *(&v36 - 1) = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC38);
          sub_2524DB2CC();
          v32 = v25;
          v33 = v37;
          sub_252692810();
          (*(v24 + 8))(v32, v12);
          v35 = v43;
          v34 = v44;
          (*(v43 + 32))(v16, v33, v44);
          (*(v35 + 56))(v16, 0, 1, v34);
          (*(v29 + 8))(v30, v40);
          goto LABEL_11;
        }

        (*(v24 + 8))(v25, v12);
        v26 = &qword_27F4DB250;
LABEL_9:
        sub_252372288(v11, v26);
        goto LABEL_10;
      }
    }

    else
    {
      (*(v42 + 56))(v11, 1, 1, v12);
    }

    v26 = &qword_27F4DFF90;
    goto LABEL_9;
  }

  v22 = 1;
  v23 = v46;
  return (*(v14 + 56))(v23, v22, 1, v45);
}

uint64_t sub_2524EA5F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v188 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E02D0);
  v186 = *(v3 - 8);
  v187 = v3;
  MEMORY[0x28223BE20](v3);
  v178 = v128 - v4;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E02E0);
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v168 = v128 - v5;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E02E8);
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = v128 - v6;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E02F0);
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v156 = v128 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E02F8);
  MEMORY[0x28223BE20](v8 - 8);
  v167 = v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v166 = v128 - v11;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0300);
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = v128 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0308);
  MEMORY[0x28223BE20](v13 - 8);
  v163 = v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v182 = v128 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0310);
  MEMORY[0x28223BE20](v17 - 8);
  v175 = v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v174 = v128 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  MEMORY[0x28223BE20](v21);
  v148 = v128 - v22;
  v152 = sub_25268E350();
  v149 = *(v152 - 8);
  v23 = *(v149 + 64);
  MEMORY[0x28223BE20](v152);
  v146 = v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v155 = v128 - v25;
  v153 = type metadata accessor for ThermostatPresetsDetailView.HomePresenceView();
  MEMORY[0x28223BE20](v153);
  v154 = (v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0318);
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v147 = v128 - v27;
  v180 = sub_25268DE60();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v150 = v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v151 = v128 - v30;
  v172 = sub_2526904A0();
  v31 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v33 = v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0320);
  MEMORY[0x28223BE20](v34 - 8);
  v173 = v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v184 = v128 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF90);
  MEMORY[0x28223BE20](v38 - 8);
  v169 = v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = v128 - v41;
  MEMORY[0x28223BE20](v43);
  v183 = v128 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = v128 - v46;
  v48 = sub_252690490();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v185 = v128 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for ThermostatPresetsDetailView();
  sub_2526907E0();
  v51 = v190;
  if (!v190)
  {
    return (*(v186 + 56))(v188, 1, 1, v187);
  }

  sub_2524DD6E0(v47);
  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {

    sub_252372288(v47, &qword_27F4DB250);
    return (*(v186 + 56))(v188, 1, 1, v187);
  }

  v144 = v49;
  v53 = *(v49 + 32);
  v145 = v48;
  v53(v185, v47, v48);
  sub_25268DED0();
  v54 = v183;
  sub_25268DEB0();

  v55 = v181[16];
  v56 = v31;
  v57 = *(v31 + 104);
  v141 = *MEMORY[0x277D16E20];
  v58 = v172;
  v140 = v57;
  v57(v33);
  v59 = sub_2524F831C(&qword_27F4DFFE0, MEMORY[0x277D16E40]);
  v142 = v55;
  v139 = v59;
  LOBYTE(v55) = sub_252692B70();
  v138 = *(v56 + 8);
  v138(v33, v58);
  v143 = v51;
  if (v55 & 1) == 0 && sub_2524DD59C() && (v60 = sub_25268DBE0(), , (v60))
  {
    sub_25237153C(v54, v42, &qword_27F4DFF90);
    v61 = v179;
    v62 = v180;
    if ((*(v179 + 48))(v42, 1, v180) == 1)
    {
      sub_252372288(v42, &qword_27F4DFF90);
      v63 = 1;
      v64 = v61;
      goto LABEL_12;
    }

    (*(v61 + 32))(v151, v42, v62);
    sub_252690400();
    (*(v61 + 16))(v150, v151, v62);
    v97 = v181;
    v98 = (v2 + v181[12]);
    v135 = v2;
    v99 = *v98;
    v100 = *(v98 + 1);
    LOBYTE(v194) = v99;
    *(&v194 + 1) = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
    sub_252692500();
    v136 = *(&v190 + 1);
    v137 = v190;
    v132 = v191;
    v101 = (v2 + v97[14]);
    v102 = *(v101 + 32);
    v103 = *(v101 + 5);
    v104 = v101[1];
    v190 = *v101;
    v191 = v104;
    v192 = v102;
    v193 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE58);
    sub_2526924E0();
    v131 = v196;
    sub_25268DF30();
    v130 = v194;
    v129 = v195;
    v105 = sub_25268DF20();
    v106 = v154;
    *v154 = v105;
    v107 = v153;
    v134 = *(v153 + 20);
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA28);
    sub_2526907D0();
    v108 = v106 + v107[7];
    v189 = 0;
    sub_2526924D0();
    v109 = *(&v190 + 1);
    *v108 = v190;
    *(v108 + 1) = v109;
    v110 = v106 + v107[10];
    v110[32] = 0;
    *v110 = 0u;
    *(v110 + 1) = 0u;
    v111 = v107[9];
    v112 = *(v149 + 16);
    v128[1] = v149 + 16;
    v112(v106 + v111, v155, v152);
    sub_2524DB444(*v110, *(v110 + 1));
    v113 = v129;
    *v110 = v130;
    *(v110 + 1) = v113;
    v110[32] = v131;
    v114 = v153;
    v115 = v106 + *(v153 + 24);
    v116 = v136;
    *v115 = v137;
    *(v115 + 1) = v116;
    v115[16] = v132;

    v117 = sub_25268DDE0() == 2;
    v118 = v106 + *(v114 + 32);
    v189 = v117;
    sub_2526924D0();
    v119 = *(&v190 + 1);
    *v118 = v190;
    *(v118 + 1) = v119;
    v120 = v146;
    v112(v146, v155, v152);
    v121 = (*(v149 + 80) + 16) & ~*(v149 + 80);
    v122 = v149;
    v123 = swift_allocObject() + v121;
    v124 = v152;
    (*(v122 + 32))(v123, v120, v152);
    v125 = v148;
    sub_2526907D0();

    v126 = *(v179 + 8);
    v126(v150, v180);
    (*(v122 + 8))(v155, v124);
    sub_2524D9B14(v125, v154 + v134);
    sub_2524F831C(&qword_27F4E0358, type metadata accessor for ThermostatPresetsDetailView.HomePresenceView);
    v127 = v147;
    sub_252692070();
    v126(v151, v180);
    v62 = v180;
    v2 = v135;
    sub_2524F87CC(v154, type metadata accessor for ThermostatPresetsDetailView.HomePresenceView);
    sub_2523714D4(v127, v184, &qword_27F4E0318);
    v63 = 0;
  }

  else
  {
    v63 = 1;
    v62 = v180;
  }

  v64 = v179;
LABEL_12:
  (*(v170 + 56))(v184, v63, 1, v171);
  v65 = v169;
  sub_25237153C(v54, v169, &qword_27F4DFF90);
  if ((*(v64 + 48))(v65, 1, v62) == 1)
  {
    v66 = sub_252372288(v65, &qword_27F4DFF90);
    goto LABEL_17;
  }

  v67 = sub_25268DDE0();
  v66 = (*(v64 + 8))(v65, v62);
  if (v67 != 2 || (v68 = (v2 + v181[13]), v69 = *v68, v70 = *(v68 + 1), LOBYTE(v190) = v69, *(&v190 + 1) = v70, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320), v66 = sub_2526924E0(), (v194 & 1) == 0))
  {
LABEL_17:
    MEMORY[0x28223BE20](v66);
    v128[-2] = v2;
    *&v190 = sub_252692C40();
    *(&v190 + 1) = v73;
    sub_252404480();
    *&v190 = sub_252691D50();
    *(&v190 + 1) = v74;
    LOBYTE(v191) = v75 & 1;
    *(&v191 + 1) = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDF8);
    sub_2524DBC2C();
    v77 = v160;
    sub_252692820();
    sub_2524F8118();
    v78 = v162;
    sub_252692070();
    (*(v161 + 8))(v77, v78);
    v140(v33, v141, v58);
    LOBYTE(v78) = sub_252692B70();
    v79 = (v138)(v33, v58);
    if (v78)
    {
      v80 = 1;
      v72 = v174;
      v81 = v166;
    }

    else
    {
      MEMORY[0x28223BE20](v79);
      v82 = v185;
      v128[-2] = v2;
      v128[-1] = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0330);
      sub_2524F81B8();
      v83 = v157;
      sub_252692810();
      sub_2524F8268(&qword_27F4E0340, &qword_27F4E02E8, &unk_2526A2CF0, sub_2524F81B8);
      v84 = v156;
      v85 = v159;
      sub_252692070();
      (*(v158 + 8))(v83, v85);
      v81 = v166;
      sub_2523714D4(v84, v166, &qword_27F4E02F0);
      v80 = 0;
      v72 = v174;
    }

    (*(v164 + 56))(v81, v80, 1, v165);
    v86 = v182;
    v87 = v163;
    sub_25237153C(v182, v163, &qword_27F4E0308);
    v88 = v167;
    sub_25237153C(v81, v167, &qword_27F4E02F8);
    v89 = v168;
    sub_25237153C(v87, v168, &qword_27F4E0308);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0348);
    sub_25237153C(v88, v89 + *(v90 + 48), &qword_27F4E02F8);
    sub_252372288(v81, &qword_27F4E02F8);
    sub_252372288(v86, &qword_27F4E0308);
    sub_252372288(v88, &qword_27F4E02F8);
    sub_252372288(v87, &qword_27F4E0308);
    sub_2523714D4(v89, v72, &qword_27F4E02E0);
    v71 = 0;
    goto LABEL_21;
  }

  v71 = 1;
  v72 = v174;
LABEL_21:
  (*(v176 + 56))(v72, v71, 1, v177);
  v91 = v184;
  v92 = v173;
  sub_25237153C(v184, v173, &qword_27F4E0320);
  v93 = v175;
  sub_25237153C(v72, v175, &qword_27F4E0310);
  v94 = v178;
  sub_25237153C(v92, v178, &qword_27F4E0320);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0350);
  sub_25237153C(v93, v94 + *(v95 + 48), &qword_27F4E0310);

  sub_252372288(v72, &qword_27F4E0310);
  sub_252372288(v91, &qword_27F4E0320);
  sub_252372288(v183, &qword_27F4DFF90);
  sub_252372288(v93, &qword_27F4E0310);
  sub_252372288(v92, &qword_27F4E0320);
  v96 = v188;
  sub_2523714D4(v94, v188, &qword_27F4E02D0);
  (*(v186 + 56))(v96, 0, 1, v187);
  return (*(v144 + 8))(v185, v145);
}

uint64_t sub_2524EBD64@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  MEMORY[0x28223BE20](v1 - 8);
  v45 = v37 - v2;
  v3 = sub_25268E350();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = v37 - v6;
  v47 = _s17SleepScheduleViewVMa(0);
  MEMORY[0x28223BE20](v47);
  v44 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0280);
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v41 = v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v37 - v11;
  v13 = sub_252690490();
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  v46 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0270);
  v15 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v17 = v37 - v16;
  v18 = sub_2526904A0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThermostatPresetsDetailView();
  (*(v19 + 104))(v21, *MEMORY[0x277D16E20], v18);
  sub_2524F831C(&qword_27F4DFFE0, MEMORY[0x277D16E40]);
  v22 = sub_252692B70();
  (*(v19 + 8))(v21, v18);
  if (v22)
  {
    v23 = 1;
    v24 = v53;
  }

  else
  {
    sub_2524DD6E0(v12);
    if ((*(v50 + 48))(v12, 1, v51) == 1)
    {
      sub_252372288(v12, &qword_27F4DB250);
      v25 = 1;
    }

    else
    {
      (*(v50 + 32))(v46, v12, v51);
      v26 = v39;
      sub_252690400();
      v38 = *(v47 + 20);
      v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA28);
      v27 = v44;
      sub_2526907D0();
      v28 = v42;
      v29 = v43;
      v30 = *(v42 + 16);
      v30(v27, v26, v43);
      v31 = v40;
      v30(v40, v26, v29);
      v32 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v33 = swift_allocObject();
      (*(v28 + 32))(v33 + v32, v31, v29);
      v34 = v45;
      sub_2526907D0();
      (*(v28 + 8))(v26, v29);
      sub_2524D9B14(v34, v27 + v38);
      sub_2524F831C(&qword_27F4E0288, _s17SleepScheduleViewVMa);
      v35 = v41;
      sub_252692070();
      (*(v50 + 8))(v46, v51);
      sub_2524F87CC(v27, _s17SleepScheduleViewVMa);
      sub_2523714D4(v35, v17, &qword_27F4E0280);
      v25 = 0;
    }

    v24 = v53;
    (*(v48 + 56))(v17, v25, 1, v49);
    sub_2523714D4(v17, v24, &qword_27F4E0270);
    v23 = 0;
  }

  return (*(v15 + 56))(v24, v23, 1, v52);
}

uint64_t sub_2524EC484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v72 = a3;
  v60 = type metadata accessor for ThermostatPresetsDetailView();
  MEMORY[0x28223BE20](v60);
  v58 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC70);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v59 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC60);
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v57 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC78);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v54 - v10;
  v11 = sub_25268F9F0();
  v67 = *(v11 - 8);
  v68 = v11;
  MEMORY[0x28223BE20](v11);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - v16;
  v18 = sub_252690490();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v63 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  v24 = sub_25268FEF0();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E01A0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v54 - v29;
  v69 = sub_25268F260();
  v74 = *(v69 - 8);
  v31 = MEMORY[0x28223BE20](v69);
  v73 = &v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 104))(v27, *MEMORY[0x277D16BB0], v24, v31);
  v66 = a1;
  sub_2524DD6E0(v17);
  v33 = v19;
  v34 = *(v19 + 48);
  if (v34(v17, 1, v18) == 1)
  {
    (*(v25 + 8))(v27, v24);
    sub_252372288(v17, &qword_27F4DB250);
    v35 = 1;
  }

  else
  {
    (*(v33 + 32))(v23, v17, v18);
    sub_252690420();
    (*(v33 + 8))(v23, v18);
    (*(v25 + 8))(v27, v24);
    v35 = 0;
  }

  v36 = v74;
  v37 = v69;
  (*(v74 + 56))(v30, v35, 1, v69);
  v38 = (*(v36 + 48))(v30, 1, v37);
  v39 = v73;
  if (v38 == 1)
  {
    sub_252372288(v30, &qword_27F4E01A0);
    return (*(v70 + 56))(v72, 1, 1, v71);
  }

  v40 = v33;
  (*(v36 + 32))(v73, v30, v37);
  v41 = v64;
  v42 = v66;
  sub_2524DD6E0(v64);
  if (v34(v41, 1, v18) == 1)
  {
    sub_252372288(v41, &qword_27F4DB250);
    v43 = v65;
    (*(v67 + 56))(v65, 1, 1, v68);
LABEL_9:
    sub_252372288(v43, &qword_27F4DFC78);
    (*(v36 + 8))(v39, v37);
    return (*(v70 + 56))(v72, 1, 1, v71);
  }

  v44 = v63;
  (*(v40 + 32))(v63, v41, v18);
  v43 = v65;
  sub_2526900D0();
  (*(v40 + 8))(v44, v18);
  v46 = v67;
  v45 = v68;
  if ((*(v67 + 48))(v43, 1, v68) == 1)
  {
    goto LABEL_9;
  }

  v48 = v55;
  v49 = (*(v46 + 32))(v55, v43, v45);
  MEMORY[0x28223BE20](v49);
  *(&v54 - 4) = v56;
  *(&v54 - 3) = v39;
  *(&v54 - 2) = v48;
  *(&v54 - 1) = v42;
  sub_2524EE2A0(v39, v48, &unk_28648B128, sub_2524F9BB0, v58);
  type metadata accessor for ThermostatAutomationSettingsView.PresetNavigationLabelView(0);
  sub_2524F831C(&qword_27F4DFC80, type metadata accessor for ThermostatAutomationSettingsView.PresetNavigationLabelView);
  sub_2524F831C(&qword_27F4DFC88, type metadata accessor for ThermostatPresetsDetailView);
  v50 = v59;
  sub_252690AC0();
  sub_252400FC8(&qword_27F4DFC68, &qword_27F4DFC70);
  v51 = v57;
  v52 = v62;
  sub_252692070();
  (*(v61 + 8))(v50, v52);
  v53 = v72;
  sub_2523714D4(v51, v72, &qword_27F4DFC60);
  (*(v70 + 56))(v53, 0, 1, v71);
  (*(v46 + 8))(v48, v45);
  return (*(v74 + 8))(v73, v37);
}

uint64_t sub_2524ECE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for ThermostatAutomationSettingsView.PresetNavigationLabelView(0);
  v11 = v10[5];
  v12 = sub_252690490();
  (*(*(v12 - 8) + 16))(a5 + v11, a1, v12);
  v13 = v10[6];
  v14 = sub_25268F260();
  (*(*(v14 - 8) + 16))(a5 + v13, a2, v14);
  v15 = v10[7];
  v16 = sub_25268F9F0();
  (*(*(v16 - 8) + 16))(a5 + v15, a3, v16);
  v17 = *(type metadata accessor for ThermostatPresetsDetailView() + 64);
  v18 = v10[8];
  v19 = sub_2526904A0();
  (*(*(v19 - 8) + 16))(a5 + v18, a4 + v17, v19);
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAB0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2524ECFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v40 = a2;
  v36 = a3;
  v38 = a1;
  v5 = type metadata accessor for ThermostatPresetsDetailView();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = v6;
  v42 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v30 - v8;
  v10 = sub_252690490();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v30 - v15;
  sub_2524DD6E0(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_252372288(v9, &qword_27F4DB250);
    v43 = 0;
    sub_2526926F0();
  }

  else
  {
    v34 = *(v11 + 32);
    v35 = v11 + 32;
    v32 = v16;
    v34(v16, v9, v10);
    v33 = *(v11 + 16);
    v33(v13, v16, v10);
    v31 = v4;
    sub_2524F5D04(v4, v42);
    v30[1] = sub_252692E00();
    v30[0] = sub_252692DF0();
    v17 = *(v11 + 80);
    v18 = (v17 + 32) & ~v17;
    v19 = *(v37 + 80);
    v20 = (v12 + v19 + v18) & ~v19;
    v37 = v17 | v19;
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    *(v21 + 16) = v30[0];
    *(v21 + 24) = v22;
    v34((v21 + v18), v13, v10);
    v23 = v42;
    sub_2524F5D68(v42, v21 + v20);
    sub_2524F5D04(v31, v23);
    v24 = v32;
    v33(v13, v32, v10);
    v25 = sub_252692DF0();
    v26 = (v19 + 32) & ~v19;
    v27 = (v41 + v17 + v26) & ~v17;
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = MEMORY[0x277D85700];
    sub_2524F5D68(v42, v28 + v26);
    v34((v28 + v27), v13, v10);
    sub_2526926E0();
    (*(v11 + 8))(v24, v10);
  }

  return v44;
}

uint64_t sub_2524ED3B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE08);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - v2;
  v13 = sub_252692C40();
  v14 = v4;
  sub_2524ED610();
  sub_252404480();
  sub_252692610();
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_252693210();
  v16 = v13;
  v17 = v14;
  MEMORY[0x2530A4800](0xD000000000000035, 0x80000002526B0BD0);
  v13 = sub_2524ED610();
  v14 = v5;
  v15 = v6 & 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD300);
  MEMORY[0x2530A4210]((&v12 + 7), v7);
  v8 = HIBYTE(v12);

  if (v8)
  {
    v9 = 28239;
  }

  else
  {
    v9 = 6710863;
  }

  if (v8)
  {
    v10 = 0xE200000000000000;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  MEMORY[0x2530A4800](v9, v10);

  sub_252400FC8(&qword_27F4DFE00, &qword_27F4DFE08);
  sub_252692070();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2524ED610()
{
  v1 = type metadata accessor for ThermostatPresetsDetailView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_252690490();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  sub_2524DD6E0(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_252372288(v6, &qword_27F4DB250);
    v34 = 0;
    sub_2526926F0();
  }

  else
  {
    v27 = v2;
    v31 = *(v8 + 32);
    v31(v13, v6, v7);
    sub_2524F5D04(v0, v33);
    v32 = v13;
    v14 = *(v8 + 16);
    v29 = v0;
    v30 = v14;
    v14(v10, v13, v7);
    v28 = sub_252692E00();
    v15 = sub_252692DF0();
    v16 = *(v27 + 80);
    v17 = (v16 + 32) & ~v16;
    v18 = *(v8 + 80);
    v19 = (v3 + v18 + v17) & ~v18;
    v26 = v17;
    v27 = v16 | v18;
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 16) = v15;
    *(v20 + 24) = v21;
    v22 = v33;
    sub_2524F5D68(v33, v20 + v17);
    v31((v20 + v19), v10, v7);
    sub_2524F5D04(v29, v22);
    v30(v10, v32, v7);
    v23 = sub_252692DF0();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = MEMORY[0x277D85700];
    sub_2524F5D68(v33, v24 + v26);
    v31((v24 + v19), v10, v7);
    sub_2526926E0();
    (*(v8 + 8))(v32, v7);
  }

  return v35;
}

uint64_t sub_2524ED9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v67 = a3;
  v55 = type metadata accessor for ThermostatPresetsDetailView();
  MEMORY[0x28223BE20](v55);
  v54 = (&v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC70);
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x28223BE20](v5);
  v53 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFC78);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v51 - v8;
  v9 = sub_25268F9F0();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x28223BE20](v9);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v16 = sub_252690490();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v56 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  v22 = sub_25268FEF0();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E01A0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v51 - v27;
  v29 = sub_25268F260();
  v63 = *(v29 - 8);
  v64 = v29;
  v30 = MEMORY[0x28223BE20](v29);
  v68 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 104))(v25, *MEMORY[0x277D16BA8], v22, v30);
  v59 = a1;
  sub_2524DD6E0(v15);
  v32 = *(v17 + 48);
  if (v32(v15, 1, v16) == 1)
  {
    (*(v23 + 8))(v25, v22);
    sub_252372288(v15, &qword_27F4DB250);
    v33 = 1;
  }

  else
  {
    (*(v17 + 32))(v21, v15, v16);
    sub_252690420();
    (*(v17 + 8))(v21, v16);
    (*(v23 + 8))(v25, v22);
    v33 = 0;
  }

  v34 = v63;
  v35 = v64;
  (*(v63 + 56))(v28, v33, 1, v64);
  v36 = (*(v34 + 48))(v28, 1, v35);
  v37 = v68;
  if (v36 == 1)
  {
    sub_252372288(v28, &qword_27F4E01A0);
    return (*(v65 + 56))(v67, 1, 1, v66);
  }

  (*(v34 + 32))(v68, v28, v35);
  v38 = v58;
  sub_2524DD6E0(v58);
  if (v32(v38, 1, v16) == 1)
  {
    sub_252372288(v38, &qword_27F4DB250);
    v39 = v60;
    (*(v61 + 56))(v60, 1, 1, v62);
LABEL_9:
    sub_252372288(v39, &qword_27F4DFC78);
    (*(v34 + 8))(v37, v35);
    return (*(v65 + 56))(v67, 1, 1, v66);
  }

  v40 = v56;
  (*(v17 + 32))(v56, v38, v16);
  v39 = v60;
  sub_2526900D0();
  (*(v17 + 8))(v40, v16);
  v42 = v61;
  v41 = v62;
  if ((*(v61 + 48))(v39, 1, v62) == 1)
  {
    goto LABEL_9;
  }

  v44 = v57;
  v45 = (*(v42 + 32))(v57, v39, v41);
  MEMORY[0x28223BE20](v45);
  *(&v51 - 4) = v52;
  *(&v51 - 3) = v37;
  *(&v51 - 2) = v44;
  sub_2524EE2A0(v37, v44, &unk_28648B178, sub_2524F9BB0, v54);
  type metadata accessor for ThermostatAutomationSettingsView.PresetNavigationLabelView(0);
  v46 = v34;
  sub_2524F831C(&qword_27F4DFC80, type metadata accessor for ThermostatAutomationSettingsView.PresetNavigationLabelView);
  sub_2524F831C(&qword_27F4DFC88, type metadata accessor for ThermostatPresetsDetailView);
  v47 = v53;
  sub_252690AC0();
  v49 = v65;
  v48 = v66;
  v50 = v67;
  (*(v65 + 32))(v67, v47, v66);
  (*(v49 + 56))(v50, 0, 1, v48);
  (*(v42 + 8))(v57, v41);
  return (*(v46 + 8))(v68, v35);
}

uint64_t sub_2524EE2A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v86 = a4;
  v85 = a3;
  v76 = a2;
  v75 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v69 - v7;
  v94 = sub_2526904A0();
  v91 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v9;
  v10 = sub_25268F9F0();
  v89 = v10;
  v98 = *(v10 - 8);
  v11 = v98;
  MEMORY[0x28223BE20](v10);
  v83 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = &v69 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v69 - v16;
  v95 = &v69 - v16;
  v18 = sub_25268F260();
  v88 = v18;
  v97 = *(v18 - 8);
  v19 = v97;
  MEMORY[0x28223BE20](v18);
  v78 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v77 = &v69 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v69 - v24;
  v96 = &v69 - v24;
  v87 = sub_252690490();
  v26 = *(v87 - 8);
  v82 = v26[8];
  MEMORY[0x28223BE20](v87);
  v81 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v90 = &v69 - v30;
  v73 = v26;
  v31 = v26[2];
  v92 = v26 + 2;
  v93 = v31;
  v31(v29);
  v70 = *(v19 + 16);
  v70(v25, v75, v18);
  v74 = *(v11 + 16);
  v75 = v11 + 16;
  v74(v17, v76, v10);
  (*(v91 + 104))(v9, *MEMORY[0x277D16E38], v94);
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  swift_storeEnumTagMultiPayload();
  v32 = type metadata accessor for ThermostatPresetsDetailView();
  v33 = (a5 + v32[5]);
  sub_25268E1B0();
  *&v99 = sub_25268E1A0();
  sub_2526924D0();
  v34 = *(&v102 + 1);
  *v33 = v102;
  v33[1] = v34;
  v35 = v32[6];
  sub_25268DF30();
  *(a5 + v35) = sub_25268DF20();
  v36 = v32[7];
  v37 = v26[7];
  v38 = v87;
  v37(a5 + v36, 1, 1, v87);
  v76 = v32[9];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA28);
  sub_2526907D0();
  v39 = a5 + v32[12];
  LOBYTE(v99) = 0;
  sub_2526924D0();
  v40 = *(&v102 + 1);
  *v39 = v102;
  *(v39 + 1) = v40;
  v41 = a5 + v32[13];
  LOBYTE(v99) = 0;
  sub_2526924D0();
  v42 = *(&v102 + 1);
  *v41 = v102;
  *(v41 + 1) = v42;
  v43 = a5 + v32[14];
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA30);
  sub_2526924D0();
  v44 = v104;
  v45 = v105;
  v46 = v103;
  *v43 = v102;
  *(v43 + 1) = v46;
  v43[32] = v44;
  *(v43 + 5) = v45;
  v47 = a5 + v32[15];
  LOBYTE(v99) = 0;
  sub_2526924D0();
  v48 = *(&v102 + 1);
  *v47 = v102;
  *(v47 + 1) = v48;
  v69 = (a5 + v32[17]);
  sub_252372288(a5 + v36, &qword_27F4DB250);
  (v93)(a5 + v36, v90, v38);
  v37(a5 + v36, 0, 1, v38);
  v49 = v77;
  v50 = v88;
  v51 = v70;
  v70(v77, v96, v88);
  v51(v78, v49, v50);
  sub_2526924D0();
  v52 = *(v97 + 8);
  v97 += 8;
  v78 = v52;
  (v52)(v49, v50);
  v53 = v80;
  v54 = v89;
  v55 = v74;
  v74(v80, v95, v89);
  v55(v83, v53, v54);
  sub_2526924D0();
  v56 = *(v98 + 8);
  v98 += 8;
  v83 = v56;
  (v56)(v53, v54);
  sub_2524DB444(*v43, *(v43 + 1));

  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  sub_2526924D0();
  v57 = v91;
  v58 = v79;
  v59 = v94;
  (*(v91 + 16))(a5 + v32[16], v79, v94);
  v60 = v69;
  *v69 = 0;
  v60[1] = 0;
  v61 = v90;
  sub_252690400();
  v62 = v81;
  v63 = v87;
  (v93)(v81, v61, v87);
  v64 = v73;
  v65 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v66 = swift_allocObject();
  (v64[4])(v66 + v65, v62, v63);
  v67 = v84;
  sub_2526907D0();
  (*(v57 + 8))(v58, v59);
  (v83)(v95, v89);
  (v78)(v96, v88);
  (v64[1])(v61, v63);
  return sub_2524D9B14(v67, a5 + v76);
}

uint64_t sub_2524EEC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ThermostatAutomationSettingsView.PresetNavigationLabelView(0);
  v9 = v8[5];
  v10 = sub_252690490();
  (*(*(v10 - 8) + 16))(a4 + v9, a1, v10);
  v11 = v8[6];
  v12 = sub_25268F260();
  (*(*(v12 - 8) + 16))(a4 + v11, a2, v12);
  v13 = v8[7];
  v14 = sub_25268F9F0();
  (*(*(v14 - 8) + 16))(a4 + v13, a3, v14);
  v15 = v8[8];
  v16 = *MEMORY[0x277D16E38];
  v17 = sub_2526904A0();
  (*(*(v17 - 8) + 104))(a4 + v15, v16, v17);
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAB0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2524EEDB8(char a1, int a2)
{
  LODWORD(v53) = a2;
  v4 = sub_25268FEF0();
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v50 - v7;
  v8 = sub_25268F260();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThermostatPresetsDetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  sub_2526924E0();
  sub_25268F240();
  v12 = *(v9 + 8);
  v12(v11, v8);
  v52 = sub_25268F2E0();
  v54 = v13;
  sub_2526924E0();
  sub_25268F230();
  v12(v11, v8);
  v14 = sub_25268F2E0();
  if (a1)
  {
    v16 = v14;
    v51 = v15;
    if (v53)
    {
      sub_2526924E0();
      v17 = v55;
      sub_25268F1E0();
      v12(v11, v8);
      v19 = v56;
      v18 = v57;
      (*(v57 + 104))(v56, *MEMORY[0x277D16BA8], v4);
      sub_2524F831C(&qword_27F4E0070, MEMORY[0x277D16BB8]);
      sub_252692D40();
      sub_252692D40();
      v20 = *(v18 + 8);
      v20(v19, v4);
      v20(v17, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_252694EA0;
      v22 = MEMORY[0x277D837D0];
      *(v21 + 56) = MEMORY[0x277D837D0];
      v23 = sub_2523AB7A4();
      v24 = v54;
      *(v21 + 32) = v52;
      *(v21 + 40) = v24;
      *(v21 + 96) = v22;
      *(v21 + 104) = v23;
      *(v21 + 64) = v23;
      *(v21 + 72) = v16;
      *(v21 + 80) = v51;
    }

    else
    {

      sub_2526924E0();
      v31 = v55;
      sub_25268F1E0();
      v12(v11, v8);
      v33 = v56;
      v32 = v57;
      (*(v57 + 104))(v56, *MEMORY[0x277D16BA8], v4);
      sub_2524F831C(&qword_27F4E0070, MEMORY[0x277D16BB8]);
      sub_252692D40();
      sub_252692D40();
      v34 = *(v32 + 8);
      v34(v33, v4);
      v34(v31, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_252694E90;
      *(v35 + 56) = MEMORY[0x277D837D0];
      *(v35 + 64) = sub_2523AB7A4();
      v36 = v51;
      *(v35 + 32) = v16;
      *(v35 + 40) = v36;
    }

    goto LABEL_9;
  }

  if (v53)
  {
    sub_2526924E0();
    v25 = v55;
    sub_25268F1E0();
    v12(v11, v8);
    v27 = v56;
    v26 = v57;
    (*(v57 + 104))(v56, *MEMORY[0x277D16BA8], v4);
    sub_2524F831C(&qword_27F4E0070, MEMORY[0x277D16BB8]);
    sub_252692D40();
    sub_252692D40();
    v28 = *(v26 + 8);
    v28(v27, v4);
    v28(v25, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_252694E90;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_2523AB7A4();
    v30 = v54;
    *(v29 + 32) = v52;
    *(v29 + 40) = v30;
LABEL_9:
    v47 = sub_252692C60();

    return v47;
  }

  sub_2526924E0();
  v54 = v4;
  v37 = v55;
  sub_25268F1E0();
  v12(v11, v8);
  v38 = *MEMORY[0x277D16BA8];
  v39 = *(v57 + 104);
  v50 = v2;
  v40 = v56;
  v52 = v39;
  v53 = v57 + 104;
  v39(v56, v38, v54);
  v41 = sub_2524F831C(&qword_27F4E0070, MEMORY[0x277D16BB8]);
  sub_252692D40();
  v51 = v41;
  sub_252692D40();
  v42 = v37;
  v43 = v54;
  v44 = v57 + 8;
  v45 = v40;
  v46 = *(v57 + 8);
  v46(v45, v54);
  v46(v42, v43);
  if (v59 != v58)
  {
    v57 = v44;
    sub_2526924E0();
    sub_25268F1E0();
    v12(v11, v8);
    v48 = v56;
    v52(v56, *MEMORY[0x277D16BA0], v43);
    sub_252692D40();
    sub_252692D40();
    v46(v48, v43);
    v46(v42, v43);
  }

  return sub_252692C40();
}

uint64_t sub_2524EF6B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25268D810();
  MEMORY[0x28223BE20](v2 - 8);
  if (sub_2524EF938())
  {
    type metadata accessor for ThermostatPresetsDetailView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFE58);
    sub_2526924E0();
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_252694E90;
      *(v3 + 56) = MEMORY[0x277D837D0];
      *(v3 + 64) = sub_2523AB7A4();
      *(v3 + 32) = v10;
      *(v3 + 40) = v11;

      sub_2524DB444(v8, v9);
      sub_252692C60();
    }

    else
    {
      sub_252692C40();
    }

    sub_25268D800();
    sub_25268D7E0();
    v7 = sub_25268D7D0();
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v4 = sub_25268D7D0();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t sub_2524EF938()
{
  v1 = sub_2526904A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ThermostatPresetsDetailView();
  (*(v2 + 104))(v4, *MEMORY[0x277D16E20], v1);
  sub_2524F831C(&qword_27F4DFA70, MEMORY[0x277D16E40]);
  sub_252692D40();
  sub_252692D40();
  (*(v2 + 8))(v4, v1);
  if (v12 == v14)
  {
    v6 = 1;
  }

  else
  {
    v7 = (v0 + *(v5 + 52));
    v8 = *v7;
    v9 = *(v7 + 1);
    LOBYTE(v12) = v8;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
    sub_2526924E0();
    v6 = v14 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_2524EFAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 144) = a5;
  *(v7 + 16) = a4;
  v8 = sub_25268FEF0();
  *(v7 + 40) = v8;
  *(v7 + 48) = *(v8 - 8);
  *(v7 + 56) = swift_task_alloc();
  v9 = sub_25268F260();
  *(v7 + 64) = v9;
  *(v7 + 72) = *(v9 - 8);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = type metadata accessor for ThermostatPresetsDetailView();
  *(v7 + 96) = swift_task_alloc();
  sub_252692E00();
  *(v7 + 104) = sub_252692DF0();
  v11 = sub_252692DE0();
  *(v7 + 112) = v11;
  *(v7 + 120) = v10;

  return MEMORY[0x2822009F8](sub_2524EFC84, v11, v10);
}

uint64_t sub_2524EFC84()
{
  v28 = v0;
  if (qword_27F4DABD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  v3 = sub_2526905A0();
  __swift_project_value_buffer(v3, qword_27F4E4B30);
  sub_2524F5D04(v2, v1);
  v4 = sub_252690580();
  v5 = sub_252692F10();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = *(v0 + 80);
    v9 = *(v0 + 72);
    v23 = *(v0 + 64);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    v24 = *(v0 + 40);
    v25 = *(v0 + 144);
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v12 = 136315906;
    *(v12 + 4) = sub_2525BDA90(0xD000000000000038, 0x80000002526B07E0, &v27);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2525BDA90(0xD000000000000013, 0x80000002526B0D10, &v27);
    *(v12 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    sub_2526924E0();
    sub_25268F1E0();
    (*(v9 + 8))(v8, v23);
    v13 = sub_25268FED0();
    v15 = v14;
    (*(v10 + 8))(v11, v24);
    sub_2524F87CC(v7, type metadata accessor for ThermostatPresetsDetailView);
    v16 = sub_2525BDA90(v13, v15, &v27);

    *(v12 + 24) = v16;
    *(v12 + 32) = 2080;
    if (v25)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v25)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    v19 = sub_2525BDA90(v17, v18, &v27);

    *(v12 + 34) = v19;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v26, -1, -1);
    MEMORY[0x2530A5A40](v12, -1, -1);
  }

  else
  {

    sub_2524F87CC(v7, type metadata accessor for ThermostatPresetsDetailView);
  }

  v20 = swift_task_alloc();
  *(v0 + 128) = v20;
  *v20 = v0;
  v20[1] = sub_2524EFFF0;
  v21 = *(v0 + 32);

  return MEMORY[0x282170EA8](v21);
}

uint64_t sub_2524EFFF0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_2524F01B8;
  }

  else
  {
    v5 = sub_2524F012C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2524F012C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2524F01B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2524F0244@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_25268F260();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ThermostatPresetsDetailView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  sub_2526924E0();
  v6 = sub_2526903D0();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6 & 1;
  return result;
}

uint64_t sub_2524F035C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void, void, char *, uint64_t, uint64_t))
{
  v64 = a7;
  v65 = a8;
  v63 = a6;
  v60 = a5;
  v68 = a1;
  v9 = type metadata accessor for ThermostatPresetsDetailView();
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v62 = v10;
  v74 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFD58);
  MEMORY[0x28223BE20](v13 - 8);
  v57 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v56 - v16;
  v18 = sub_252690490();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v72 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  v67 = sub_25268F260();
  v24 = *(v67 - 1);
  MEMORY[0x28223BE20](v67);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E00E8);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v56 - v28;
  v30 = sub_25268E200();
  v66 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v69 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v71 = &v56 - v33;
  v56 = v34;
  MEMORY[0x28223BE20](v35);
  v70 = &v56 - v36;
  LODWORD(v68) = *v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  sub_2526924E0();
  v59 = a4;
  sub_2524DD6E0(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    (*(v24 + 8))(v26, v67);
    sub_252372288(v17, &qword_27F4DB250);
    v37 = v66;
    (*(v66 + 56))(v29, 1, 1, v30);
    v38 = v18;
    v39 = v30;
    v40 = v37;
  }

  else
  {
    (*(v19 + 32))(v23, v17, v18);
    sub_2526900C0();
    (*(v19 + 8))(v23, v18);
    (*(v24 + 8))(v26, v67);
    v38 = v18;
    v39 = v30;
    v40 = v66;
  }

  if ((*(v40 + 48))(v29, 1, v39) == 1)
  {
    return sub_252372288(v29, &qword_27F4E00E8);
  }

  v67 = *(v40 + 32);
  v67();
  v42 = sub_2526900B0();
  v43 = v57;
  (*(*(v42 - 8) + 56))(v57, 1, 1, v42);
  v44 = v71;
  v45 = v19;
  sub_25268E1E0();
  sub_252372288(v43, &qword_27F4DFD58);
  v46 = sub_252692E30();
  (*(*(v46 - 8) + 56))(v73, 1, 1, v46);
  sub_2524F5D04(v59, v74);
  (*(v19 + 16))(v72, v60, v38);
  (*(v40 + 16))(v69, v44, v39);
  sub_252692E00();
  v47 = sub_252692DF0();
  v48 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v49 = v48 + v62;
  v50 = *(v19 + 80);
  v66 = v38;
  v51 = (v50 + v48 + v62 + 1) & ~v50;
  v52 = (v58 + *(v40 + 80) + v51) & ~*(v40 + 80);
  v53 = swift_allocObject();
  v54 = MEMORY[0x277D85700];
  *(v53 + 16) = v47;
  *(v53 + 24) = v54;
  sub_2524F5D68(v74, v53 + v48);
  *(v53 + v49) = v68;
  (*(v45 + 32))(v53 + v51, v72, v66);
  (v67)(v53 + v52, v69, v39);
  v65(0, 0, v73, v64, v53);

  v55 = *(v40 + 8);
  v55(v71, v39);
  return (v55)(v70, v39);
}

uint64_t sub_2524F0B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 192) = a5;
  *(v7 + 24) = a4;
  v8 = sub_25268FEF0();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  v9 = sub_25268F260();
  *(v7 + 72) = v9;
  *(v7 + 80) = *(v9 - 8);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = type metadata accessor for ThermostatPresetsDetailView();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  sub_252692E00();
  *(v7 + 128) = sub_252692DF0();
  v11 = sub_252692DE0();
  *(v7 + 136) = v11;
  *(v7 + 144) = v10;

  return MEMORY[0x2822009F8](sub_2524F0CA8, v11, v10);
}

uint64_t sub_2524F0CA8()
{
  v28 = v0;
  if (qword_27F4DABD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 24);
  v3 = sub_2526905A0();
  *(v0 + 152) = __swift_project_value_buffer(v3, qword_27F4E4B30);
  sub_2524F5D04(v2, v1);
  v4 = sub_252690580();
  v5 = sub_252692F10();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 120);
  if (v6)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 80);
    v23 = *(v0 + 72);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    v24 = *(v0 + 48);
    v25 = *(v0 + 192);
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v12 = 136315906;
    *(v12 + 4) = sub_2525BDA90(0xD000000000000038, 0x80000002526B07E0, &v27);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2525BDA90(0x6E69427065656C73, 0xEC000000676E6964, &v27);
    *(v12 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    sub_2526924E0();
    sub_25268F1E0();
    (*(v9 + 8))(v8, v23);
    v13 = sub_25268FED0();
    v15 = v14;
    (*(v10 + 8))(v11, v24);
    sub_2524F87CC(v7, type metadata accessor for ThermostatPresetsDetailView);
    v16 = sub_2525BDA90(v13, v15, &v27);

    *(v12 + 24) = v16;
    *(v12 + 32) = 2080;
    if (v25)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v25)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    v19 = sub_2525BDA90(v17, v18, &v27);

    *(v12 + 34) = v19;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v26, -1, -1);
    MEMORY[0x2530A5A40](v12, -1, -1);
  }

  else
  {

    sub_2524F87CC(v7, type metadata accessor for ThermostatPresetsDetailView);
  }

  v20 = swift_task_alloc();
  *(v0 + 160) = v20;
  *v20 = v0;
  v20[1] = sub_2524F1018;
  v21 = *(v0 + 40);

  return MEMORY[0x282170EA8](v21);
}

uint64_t sub_2524F1018()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_2524F16A0;
  }

  else
  {
    v5 = sub_2524F1154;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2524F1154()
{
  v22 = v0;
  sub_2524F5D04(v0[3], v0[14]);
  v1 = sub_252690580();
  v2 = sub_252692F10();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  if (v3)
  {
    v5 = v0[11];
    v6 = v0[10];
    v18 = v0[9];
    v7 = v0[7];
    v8 = v0[8];
    v19 = v0[6];
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v9 = 136315650;
    *(v9 + 4) = sub_2525BDA90(0xD000000000000038, 0x80000002526B07E0, &v21);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2525BDA90(0x6E69427065656C73, 0xEC000000676E6964, &v21);
    *(v9 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    sub_2526924E0();
    sub_25268F1E0();
    (*(v6 + 8))(v5, v18);
    v10 = sub_25268FED0();
    v12 = v11;
    (*(v7 + 8))(v8, v19);
    sub_2524F87CC(v4, type metadata accessor for ThermostatPresetsDetailView);
    v13 = sub_2525BDA90(v10, v12, &v21);

    *(v9 + 24) = v13;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v20, -1, -1);
    MEMORY[0x2530A5A40](v9, -1, -1);
  }

  else
  {

    sub_2524F87CC(v4, type metadata accessor for ThermostatPresetsDetailView);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  sub_2526907E0();
  v14 = v0[2];
  v0[22] = v14;
  if (v14)
  {
    v15 = swift_task_alloc();
    v0[23] = v15;
    *v15 = v0;
    v15[1] = sub_2524F14C0;

    return MEMORY[0x28216E3C8]();
  }

  else
  {

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_2524F14C0()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_2524F1604, v3, v2);
}

uint64_t sub_2524F1604()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2524F16A0()
{
  v29 = v0;
  v1 = v0[21];
  v2 = v0[13];
  v3 = v0[3];

  sub_2524F5D04(v3, v2);
  v4 = v1;
  v5 = sub_252690580();
  v6 = sub_252692EF0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[21];
  v9 = v0[13];
  if (v7)
  {
    v10 = v0[11];
    v11 = v0[10];
    v23 = v0[9];
    v12 = v0[7];
    v13 = v0[8];
    v24 = v0[6];
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v14 = 136315906;
    *(v14 + 4) = sub_2525BDA90(0xD000000000000038, 0x80000002526B07E0, &v28);
    v25 = v6;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2525BDA90(0x6E69427065656C73, 0xEC000000676E6964, &v28);
    *(v14 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    sub_2526924E0();
    sub_25268F1E0();
    (*(v11 + 8))(v10, v23);
    v15 = sub_25268FED0();
    v17 = v16;
    (*(v12 + 8))(v13, v24);
    sub_2524F87CC(v9, type metadata accessor for ThermostatPresetsDetailView);
    v18 = sub_2525BDA90(v15, v17, &v28);

    *(v14 + 24) = v18;
    *(v14 + 32) = 2112;
    v19 = v8;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 34) = v20;
    *v26 = v20;
    sub_252372288(v26, &qword_27F4DB950);
    MEMORY[0x2530A5A40](v26, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v27, -1, -1);
    MEMORY[0x2530A5A40](v14, -1, -1);
  }

  else
  {

    sub_2524F87CC(v9, type metadata accessor for ThermostatPresetsDetailView);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_2524F19F0@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = sub_2526904A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ThermostatPresetsDetailView();
  (*(v5 + 104))(v7, *MEMORY[0x277D16E20], v4);
  sub_2524F831C(&qword_27F4DFA70, MEMORY[0x277D16E40]);
  sub_252692D40();
  sub_252692D40();
  (*(v5 + 8))(v7, v4);
  if (v14 == v16)
  {
    v9 = (a1 + *(v8 + 60));
    v10 = *v9;
    v11 = *(v9 + 1);
    LOBYTE(v14) = v10;
    v15 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
    sub_2526924E0();
    result = v16;
  }

  else
  {
    result = sub_252690060();
  }

  *a2 = result & 1;
  return result;
}

uint64_t sub_2524F1BC8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v7 = sub_252690490();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for ThermostatPresetsDetailView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26[-v16];
  v27 = *a1;
  v18 = sub_252692E30();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_2524F5D04(a4, v14);
  (*(v8 + 16))(v10, v28, v7);
  sub_252692E00();
  v19 = sub_252692DF0();
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = v20 + v13;
  v22 = (*(v8 + 80) + v21 + 1) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v19;
  *(v23 + 24) = v24;
  sub_2524F5D68(v14, v23 + v20);
  *(v23 + v21) = v27;
  (*(v8 + 32))(v23 + v22, v10, v7);
  sub_2525738C0(0, 0, v17, &unk_2526A2D58, v23);
}

uint64_t sub_2524F1E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 169) = a5;
  *(v6 + 32) = a4;
  *(v6 + 40) = a6;
  v7 = sub_25268FEF0();
  *(v6 + 48) = v7;
  *(v6 + 56) = *(v7 - 8);
  *(v6 + 64) = swift_task_alloc();
  v8 = sub_25268F260();
  *(v6 + 72) = v8;
  *(v6 + 80) = *(v8 - 8);
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = type metadata accessor for ThermostatPresetsDetailView();
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  sub_252692E00();
  *(v6 + 120) = sub_252692DF0();
  v10 = sub_252692DE0();
  *(v6 + 128) = v10;
  *(v6 + 136) = v9;

  return MEMORY[0x2822009F8](sub_2524F2008, v10, v9);
}

uint64_t sub_2524F2008()
{
  v28 = v0;
  if (qword_27F4DABD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 32);
  v3 = sub_2526905A0();
  *(v0 + 144) = __swift_project_value_buffer(v3, qword_27F4E4B30);
  sub_2524F5D04(v2, v1);
  v4 = sub_252690580();
  v5 = sub_252692F10();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 80);
    v23 = *(v0 + 72);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    v24 = *(v0 + 48);
    v25 = *(v0 + 169);
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v12 = 136315906;
    *(v12 + 4) = sub_2525BDA90(0xD000000000000038, 0x80000002526B07E0, &v27);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2525BDA90(0xD000000000000011, 0x80000002526B0C10, &v27);
    *(v12 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
    sub_2526924E0();
    sub_25268F1E0();
    (*(v9 + 8))(v8, v23);
    v13 = sub_25268FED0();
    v15 = v14;
    (*(v10 + 8))(v11, v24);
    sub_2524F87CC(v7, type metadata accessor for ThermostatPresetsDetailView);
    v16 = sub_2525BDA90(v13, v15, &v27);

    *(v12 + 24) = v16;
    *(v12 + 32) = 2080;
    if (v25)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v25)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    v19 = sub_2525BDA90(v17, v18, &v27);

    *(v12 + 34) = v19;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v26, -1, -1);
    MEMORY[0x2530A5A40](v12, -1, -1);
  }

  else
  {

    sub_2524F87CC(v7, type metadata accessor for ThermostatPresetsDetailView);
  }

  v20 = *(v0 + 169);
  v21 = swift_task_alloc();
  *(v0 + 152) = v21;
  *v21 = v0;
  v21[1] = sub_2524F2384;

  return MEMORY[0x282170F68]((v20 & 1) == 0);
}

uint64_t sub_2524F2384()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_2524F25A0;
  }

  else
  {
    v5 = sub_2524F24C0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}