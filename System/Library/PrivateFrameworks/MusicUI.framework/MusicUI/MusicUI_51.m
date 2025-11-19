uint64_t sub_216BC2B0C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F88);
  sub_216BC2B90(v1, (a1 + *(v3 + 44)));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F90);
  v6 = a1 + *(result + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_216BC2B90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v102 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F98);
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x28223BE20](v3);
  v103 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v101 = &v93 - v6;
  v7 = sub_21700D864();
  v109 = *(v7 - 8);
  v110 = v7;
  MEMORY[0x28223BE20](v7);
  v107 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700D8E4();
  v111 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v108 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_217008844();
  v97 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v96 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v95 = &v93 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4FA0);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v93 - v18;
  MEMORY[0x28223BE20](v20);
  v113 = &v93 - v21;
  v22 = *(a1 + 8);
  if (v22)
  {
    v23 = *a1;
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v99 = v9;
  v25 = qword_27CAB5F00;
  sub_21700DF14();
  if (v25 != -1)
  {
    swift_once();
  }

  v98 = v19;
  v26 = qword_27CAC4CC8;
  KeyPath = swift_getKeyPath();
  v132 = v23;
  v133 = v22;
  v134 = 0;
  v135 = v24;
  v136 = KeyPath;
  v137 = v26;
  v28 = qword_27CAB5F08;

  if (v28 != -1)
  {
    swift_once();
  }

  v106 = *(a1 + 90);
  sub_216BBDD0C(qword_27CAC4CD0, v106, &v127);
  sub_2167C4DF0(v23, v22, 0, v24);

  v112 = swift_getKeyPath();
  v131 = 0;
  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v31 = *(a1 + 88);
  v32 = *(a1 + 89);
  v33 = qword_27CAB5F10;
  sub_21700DF14();
  if (v33 != -1)
  {
    swift_once();
  }

  v34 = qword_27CAC4CD8;
  type metadata accessor for ExplicitBadgingPresenter();
  sub_2166D3CEC(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter);

  v36 = sub_217008CF4();
  if (!v29)
  {
    goto LABEL_17;
  }

  v37 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v37 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {

LABEL_17:

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4FA8);
    v41 = v98;
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v40);
    v42 = v99;
    goto LABEL_30;
  }

  v38 = v35;
  if (v31)
  {
    v39 = sub_217009154();
  }

  else
  {
    v39 = sub_2170091A4();
  }

  *&v117 = v36;
  *(&v117 + 1) = v38;
  *&v118 = v30;
  *(&v118 + 1) = v29;
  LOBYTE(v119) = v31;
  BYTE1(v119) = v32;
  *(&v119 + 1) = v34;
  LOBYTE(v120) = 0;
  *(&v120 + 1) = v39;
  *&v125[0] = v36;
  *(&v125[0] + 1) = v38;
  *&v125[1] = v30;
  *(&v125[1] + 1) = v29;
  LOBYTE(v125[2]) = v31;
  BYTE1(v125[2]) = v32;
  *(&v125[2] + 1) = v34;
  LOBYTE(v125[3]) = 0;
  *(&v125[3] + 1) = v39;
  sub_21680DAEC(&v117, v116);
  sub_21680DB48(v125);
  if (qword_27CAB5EE0 != -1)
  {
    swift_once();
  }

  v43 = qword_27CAC4CA8;
  *&v94 = swift_getKeyPath();
  *(&v94 + 1) = v43;
  v121 = v117;
  v122 = v118;
  v123 = v119;
  v124 = v120;
  v44 = qword_27CAB5EE8;

  v42 = v99;
  if (v44 != -1)
  {
    swift_once();
  }

  if (v106)
  {
    v45 = [objc_opt_self() tertiaryLabelColor];
    v46 = sub_21700AC44();
  }

  else
  {
    v46 = qword_27CAC4CB0;
  }

  v47 = type metadata accessor for PrimaryTextView(0);
  v48 = v95;
  sub_216C0C570(v47, v49, v50, v51, v52, v53, v54, v55, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103);
  v57 = v96;
  v56 = v97;
  (*(v97 + 104))(v96, *MEMORY[0x277CDF9A8], v11);
  sub_2166D3CEC(&qword_27CABA188, MEMORY[0x277CDFA28]);
  v58 = sub_21700E464();
  v59 = *(v56 + 8);
  v59(v57, v11);
  v59(v48, v11);
  if (v58)
  {
    v60 = 1;
  }

  else
  {
    v60 = 3;
  }

  v61 = swift_getKeyPath();
  v126 = 0;
  v115[0] = v121;
  v115[1] = v122;
  v115[2] = v123;
  v115[3] = v124;
  v115[4] = v94;
  *&v115[5] = v46;
  *(&v115[5] + 1) = v61;
  *&v115[6] = v60;
  BYTE8(v115[6]) = 0;
  v63 = v109;
  v62 = v110;
  v64 = v107;
  (*(v109 + 104))(v107, *MEMORY[0x277D22050], v110);
  memset(v116, 0, 32);
  memset(v114, 0, sizeof(v114));
  v65 = v108;
  sub_21700D874();
  sub_2167FDB84(v114, &unk_27CABF7A0);
  sub_2167FDB84(v116, &unk_27CABF7A0);
  (*(v63 + 8))(v64, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4FF0);
  sub_216BC6C04();
  v41 = v98;
  sub_21700A204();
  (*(v111 + 8))(v65, v42);
  memcpy(v116, v115, 0x69uLL);
  sub_2167FDB84(v116, &qword_27CAC4FF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4FA8);
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v66);
LABEL_30:
  sub_2167C5834(v41, v113, &qword_27CAC4FA0);
  v67 = *(a1 + 48);
  v68 = *(a1 + 56);
  v69 = *(a1 + 64);
  v71 = *(a1 + 32);
  v70 = *(a1 + 40);
  sub_216BC5A40(v67);
  v72 = qword_27CAB5EF0;
  sub_21700DF14();
  if (v72 != -1)
  {
    swift_once();
  }

  v73 = qword_27CAC4CB8;
  v74 = swift_getKeyPath();
  v75 = qword_27CAB5EF8;

  if (v75 != -1)
  {
    swift_once();
  }

  if (v106)
  {
    v76 = [objc_opt_self() tertiaryLabelColor];
    v77 = sub_21700AC44();
  }

  else
  {
    v77 = qword_27CAC4CC0;
  }

  v78 = swift_getKeyPath();
  LOBYTE(v117) = 0;
  *&v115[0] = v67;
  *(&v115[0] + 1) = v68;
  *&v115[1] = v69;
  *(&v115[1] + 1) = v71;
  *&v115[2] = v70;
  *(&v115[2] + 1) = v74;
  *&v115[3] = v73;
  *(&v115[3] + 1) = v77;
  *&v115[4] = v78;
  *(&v115[4] + 1) = 1;
  LOBYTE(v115[5]) = 0;
  v80 = v109;
  v79 = v110;
  v81 = v107;
  (*(v109 + 104))(v107, *MEMORY[0x277D22070], v110);
  memset(v116, 0, 32);
  memset(v125, 0, 32);
  v82 = v108;
  sub_21700D874();
  sub_2167FDB84(v125, &unk_27CABF7A0);
  sub_2167FDB84(v116, &unk_27CABF7A0);
  (*(v80 + 8))(v81, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4FB0);
  sub_216BC6988();
  v83 = v101;
  sub_21700A204();
  (*(v111 + 8))(v82, v42);
  memcpy(v116, v115, 0x51uLL);
  sub_2167FDB84(v116, &qword_27CAC4FB0);
  v84 = v100;
  sub_216683A80(v113, v100, &qword_27CAC4FA0);
  v86 = v103;
  v85 = v104;
  v87 = *(v104 + 16);
  v88 = v105;
  v87(v103, v83, v105);
  v125[0] = v127;
  v125[1] = v128;
  v125[2] = v129;
  *&v125[3] = v130;
  *(&v125[3] + 1) = v112;
  *&v125[4] = 1;
  BYTE8(v125[4]) = 0;
  v89 = v102;
  memcpy(v102, v125, 0x49uLL);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4FE8);
  sub_216683A80(v84, &v89[*(v90 + 48)], &qword_27CAC4FA0);
  v87(&v89[*(v90 + 64)], v86, v88);
  sub_216683A80(v125, v115, &qword_27CABC6F8);
  v91 = *(v85 + 8);
  v91(v83, v88);
  sub_2167FDB84(v113, &qword_27CAC4FA0);
  v91(v86, v88);
  sub_2167FDB84(v84, &qword_27CAC4FA0);
  v115[0] = v127;
  v115[1] = v128;
  v115[2] = v129;
  *&v115[3] = v130;
  *(&v115[3] + 1) = v112;
  *&v115[4] = 1;
  BYTE8(v115[4]) = 0;
  return sub_2167FDB84(v115, &qword_27CABC6F8);
}

uint64_t sub_216BC383C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5040);
  MEMORY[0x28223BE20](v3);
  v5 = (v35 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0);
  MEMORY[0x28223BE20](v6);
  v41 = v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5048);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5050);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - v13;
  v15 = *v1;
  if (*v1)
  {
    v35[0] = v12;
    v35[1] = v3;
    v36 = v5;
    v37 = v6;
    v16 = v8;
    v38 = v11;
    v39 = a1;
    v17 = v1[1];
    v18 = v1[2];
    *v10 = sub_2170091A4();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5060) + 44);
    v19 = *(v15 + 16);
    v42 = 0;
    v43 = v19;
    swift_getKeyPath();
    v20 = swift_allocObject();
    v20[2] = v15;
    v20[3] = v17;
    v20[4] = v18;
    sub_21700DF14();
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB688);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5068);
    sub_2168B98BC();
    sub_21680DFBC(&qword_27CAC5070, &qword_27CAC5068);
    sub_21700B154();
    v21 = *MEMORY[0x277CDF998];
    v22 = sub_217008844();
    (*(*(v22 - 8) + 104))(v41, v21, v22);
    sub_2166D3CEC(&qword_280E2B340, MEMORY[0x277CDFA28]);
    result = sub_21700E494();
    if (result)
    {
      v24 = sub_21680DFBC(&qword_27CAC5058, &qword_27CAC5048);
      v25 = sub_21680DFBC(&qword_280E29AE8, &qword_27CAB75D0);
      v26 = v41;
      v27 = v37;
      sub_21700A5B4();
      sub_2167FDB84(v26, &qword_27CAB75D0);
      sub_2167FDB84(v10, &qword_27CAC5048);
      v28 = v35[0];
      v29 = v38;
      (*(v35[0] + 16))(v36, v14, v38);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
      v42 = v16;
      v43 = v27;
      v44 = v24;
      v45 = v25;
      swift_getOpaqueTypeConformance2();
      sub_2167C4D74();
      sub_217009554();
      return (*(v28 + 8))(v14, v29);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v46 = *(v1 + 3);
    v30 = *(&v46 + 1);
    v31 = v46;
    v32 = MEMORY[0x277D84F90];
    if (!*(&v46 + 1))
    {
      v31 = 0;
      v32 = 0;
    }

    *v5 = v31;
    v5[1] = v30;
    v5[2] = 0;
    v5[3] = v32;
    swift_storeEnumTagMultiPayload();
    sub_216683A80(&v46, &v42, &qword_27CABAA40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
    v33 = sub_21680DFBC(&qword_27CAC5058, &qword_27CAC5048);
    v34 = sub_21680DFBC(&qword_280E29AE8, &qword_27CAB75D0);
    v42 = v8;
    v43 = v6;
    v44 = v33;
    v45 = v34;
    swift_getOpaqueTypeConformance2();
    sub_2167C4D74();
    return sub_217009554();
  }

  return result;
}

unint64_t *sub_216BC3E78@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(a2 + 16);
  if (v5 >= v7)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v11 = (a2 + 24 * v5);
  v12 = v11[4];
  v13 = v11[5];
  v14 = v11[6];
  v15 = sub_216AEE3C0(0, v7);
  if ((v16 & 1) != 0 || v5 != v15)
  {
    swift_bridgeObjectRetain_n();
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    a3 = 0;
    a4 = 0;
    v17 = 1;
  }

  sub_21700DF14();
  v18 = MEMORY[0x277D84F90];
  sub_2167770D0(v12, v13, 0, MEMORY[0x277D84F90]);
  sub_216BC709C(a3, a4, 0, v17);
  sub_216BC70AC(a3, a4, 0, v17);
  *a5 = v12;
  a5[1] = v13;
  a5[2] = 0;
  a5[3] = v18;
  a5[4] = v14;
  a5[5] = a3;
  a5[6] = a4;
  a5[7] = 0;
  a5[8] = v17;
  sub_216BC70AC(a3, a4, 0, v17);

  return sub_2167C4DF0(v12, v13, 0, v18);
}

uint64_t sub_216BC3FFC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_217009574();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  MEMORY[0x28223BE20](v2);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21700D8E4();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContextMenuButton(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F50);
  MEMORY[0x28223BE20](v11);
  v13 = (&v27 - v12);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F58);
  MEMORY[0x28223BE20](v28);
  v15 = &v27 - v14;
  v16 = sub_217006784();
  v18 = v17;
  sub_216BC4DB0(v1, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuButton);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_216BC50C4(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ContextMenuButton);
  *v13 = v16;
  v13[1] = v18;
  v13[2] = sub_216BC649C;
  v13[3] = v20;
  v13[4] = sub_216BC46F0;
  v13[5] = 0;
  v21 = *(v11 + 60);
  *(v13 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v22 = v13 + *(v11 + 64);
  *v22 = swift_getKeyPath();
  v22[40] = 0;
  memset(v36, 0, sizeof(v36));
  memset(v35, 0, sizeof(v35));
  sub_21700D884();
  sub_2167FDB84(v35, &unk_27CABF7A0);
  sub_2167FDB84(v36, &unk_27CABF7A0);
  sub_21680DFBC(&qword_27CAC4F60, &qword_27CAC4F50);
  sub_21700A204();
  (*(v29 + 8))(v7, v30);
  sub_2167FDB84(v13, &qword_27CAC4F50);
  *&v15[*(v28 + 36)] = sub_21700ACD4();
  v23 = v31;
  sub_217008C84();
  sub_216BC64FC();
  sub_2166D3CEC(&qword_280E2A900, MEMORY[0x277CDDFB0]);
  v24 = v34;
  v25 = v32;
  sub_21700A3E4();
  (*(v33 + 8))(v23, v25);
  sub_2167FDB84(v15, &qword_27CAC4F58);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F70);
  *(v24 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_216BC44EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MenuConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2170067A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = *(type metadata accessor for ContextMenuButton(0) + 20);
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  sub_216BC4DB0(a1 + v11, v7, type metadata accessor for MenuConfiguration);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  result = sub_216BC50C4(v7, v14 + v13, type metadata accessor for MenuConfiguration);
  *a2 = sub_216BC7218;
  a2[1] = v14;
  return result;
}

double sub_216BC46F0@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B40);
  MEMORY[0x28223BE20](v5);
  v7 = (&v24 - v6);
  v8 = sub_21700ADB4();
  if (qword_280E2C408 != -1)
  {
    swift_once();
  }

  v9 = sub_21700ADF4();
  v10 = __swift_project_value_buffer(v9, qword_280E73B30);
  KeyPath = swift_getKeyPath();
  v12 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38) + 36));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820);
  (*(*(v9 - 8) + 16))(v12 + *(v13 + 28), v10, v9);
  *v12 = KeyPath;
  *v7 = v8;
  if (qword_280E2C410 != -1)
  {
    swift_once();
  }

  v14 = qword_280E73B48;
  v15 = swift_getKeyPath();
  v16 = (v7 + *(v5 + 36));
  *v16 = v15;
  v16[1] = v14;
  v17 = *MEMORY[0x277CDF988];
  v18 = sub_217008844();
  (*(*(v18 - 8) + 104))(v4, v17, v18);
  sub_2166D3CEC(&qword_280E2B340, MEMORY[0x277CDFA28]);

  if ((sub_21700E494() & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_21680C8E4();
  sub_21680DFBC(&qword_280E29AE8, &qword_27CAB75D0);
  sub_21700A5B4();
  sub_2167FDB84(v4, &qword_27CAB75D0);
  sub_2167FDB84(v7, &qword_27CAB8B40);
  if (qword_27CAB5F28 != -1)
  {
LABEL_9:
    swift_once();
  }

  v19 = qword_27CAC4CF0;
  v20 = swift_getKeyPath();
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F78) + 36));
  *v21 = v20;
  v21[1] = v19;

  LOBYTE(v19) = sub_217009C84();
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F80) + 36);
  *v22 = v19;
  result = 12.0;
  *(v22 + 8) = xmmword_21704F640;
  *(v22 + 24) = xmmword_21704F640;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_216BC4AF8()
{
  result = sub_217009D54();
  qword_27CAC4C98 = result;
  return result;
}

uint64_t sub_216BC4B18()
{
  result = sub_21700AD14();
  qword_27CAC4CA0 = result;
  return result;
}

uint64_t sub_216BC4B38()
{
  result = sub_217009E54();
  qword_27CAC4CA8 = result;
  return result;
}

uint64_t sub_216BC4B58()
{
  result = sub_21700AD14();
  qword_27CAC4CB0 = result;
  return result;
}

uint64_t sub_216BC4B78()
{
  result = sub_217009E94();
  qword_27CAC4CB8 = result;
  return result;
}

uint64_t sub_216BC4B98()
{
  result = sub_21700AD34();
  qword_27CAC4CC0 = result;
  return result;
}

uint64_t sub_216BC4BB8()
{
  sub_217009E64();
  sub_217009DE4();
  v0 = sub_217009E34();

  qword_27CAC4CC8 = v0;
  return result;
}

uint64_t sub_216BC4BFC()
{
  result = sub_21700AD34();
  qword_27CAC4CD0 = result;
  return result;
}

uint64_t sub_216BC4C1C()
{
  if (qword_27CAB5EE0 != -1)
  {
    swift_once();
  }

  qword_27CAC4CD8 = qword_27CAC4CA8;
}

uint64_t sub_216BC4C80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_217009D94();
  v3 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = sub_217009DF4();
  result = sub_2167FDB84(v2, &qword_27CAB81D0);
  qword_27CAC4CE0 = v4;
  return result;
}

uint64_t sub_216BC4D50()
{
  result = sub_21700AC54();
  qword_27CAC4CE8 = result;
  return result;
}

uint64_t sub_216BC4D70()
{
  result = sub_21700AD14();
  qword_27CAC4CF0 = result;
  return result;
}

uint64_t sub_216BC4DB0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216BC4E1C()
{
  v0 = type metadata accessor for TrackShelfLockupView(0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_216BBEB74();
}

unint64_t sub_216BC4E70()
{
  result = qword_27CAC4D18;
  if (!qword_27CAC4D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4CF8);
    sub_216BC4EFC();
    sub_2167B8C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4D18);
  }

  return result;
}

unint64_t sub_216BC4EFC()
{
  result = qword_27CAC4D20;
  if (!qword_27CAC4D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D10);
    sub_216BC4FB4();
    sub_21680DFBC(&qword_280E2A810, &qword_27CAB8A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4D20);
  }

  return result;
}

unint64_t sub_216BC4FB4()
{
  result = qword_27CAC4D28;
  if (!qword_27CAC4D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D08);
    sub_2166D3CEC(&qword_27CAC4D30, type metadata accessor for TrackShelfLockupContent);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4D28);
  }

  return result;
}

uint64_t sub_216BC5070(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BC50C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

void sub_216BC514C()
{
  sub_2169109EC(319, &qword_280E2A2A8, &qword_27CAB6D68, &unk_2170153A0, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_216BBDC14();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MenuContext(319);
      if (v2 <= 0x3F)
      {
        sub_2167B84AC();
        if (v3 <= 0x3F)
        {
          sub_216BC5268(319, &qword_280E2B450, MEMORY[0x277CDFA28]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216BC5268(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_42_0();
    v4 = sub_2170080E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_216BC52B8()
{
  result = qword_27CAC4D50;
  if (!qword_27CAC4D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4CF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216BC4E70();
    sub_21680DFBC(qword_280E2BAE8, &qword_27CAB8AA0);
    sub_2166D3CEC(qword_280E3F158, type metadata accessor for ContextMenuPreview);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4D50);
  }

  return result;
}

uint64_t sub_216BC5534()
{
  v0 = OUTLINED_FUNCTION_8_1();
  v1 = type metadata accessor for TrackShelfLockupContent(v0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_31_3(*(v2 + 80));

  return sub_216BBF650();
}

unint64_t sub_216BC5594()
{
  result = qword_27CAC4D98;
  if (!qword_27CAC4D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D68);
    sub_2166D3CEC(&qword_27CAC4DA0, type metadata accessor for ContextMenuButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4D98);
  }

  return result;
}

unint64_t sub_216BC5670()
{
  result = qword_27CAC4DB0;
  if (!qword_27CAC4DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D78);
    sub_216BC5728();
    sub_21680DFBC(&qword_27CAC4DC8, &unk_27CAC4DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4DB0);
  }

  return result;
}

unint64_t sub_216BC5728()
{
  result = qword_27CAC4DB8;
  if (!qword_27CAC4DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D70);
    type metadata accessor for ActionButtonListStyle(255);
    sub_21680DFBC(&qword_27CAC4DC0, &qword_27CAC4D70);
    sub_2166D3CEC(&qword_27CAC36D0, type metadata accessor for ActionButtonListStyle);
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A818, &qword_27CAB8AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4DB8);
  }

  return result;
}

unint64_t sub_216BC58A0()
{
  result = qword_27CAC4DD8;
  if (!qword_27CAC4DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4DD0);
    sub_216BC5958();
    sub_21680DFBC(&qword_27CAC4E00, &unk_27CAC4E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4DD8);
  }

  return result;
}

unint64_t sub_216BC5958()
{
  result = qword_27CAC4DE0;
  if (!qword_27CAC4DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4DE8);
    sub_21680DFBC(&qword_27CAC4DF0, &qword_27CAC4DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4DE0);
  }

  return result;
}

uint64_t sub_216BC5A40(uint64_t result)
{
  if (result)
  {
    sub_21700DF14();

    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_216BC5AD0(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216BC5B50()
{
  result = qword_27CAC4EB0;
  if (!qword_27CAC4EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4E78);
    sub_216BC5C08();
    sub_21680DFBC(qword_280E382B8, &qword_27CAB7440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4EB0);
  }

  return result;
}

unint64_t sub_216BC5C08()
{
  result = qword_27CAC4EB8;
  if (!qword_27CAC4EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4EC0);
    sub_216BC5C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4EB8);
  }

  return result;
}

unint64_t sub_216BC5C94()
{
  result = qword_27CAC4EC8;
  if (!qword_27CAC4EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4E98);
    sub_216BC5D4C();
    sub_21680DFBC(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4EC8);
  }

  return result;
}

unint64_t sub_216BC5D4C()
{
  result = qword_27CAC4ED0;
  if (!qword_27CAC4ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4E90);
    sub_2166D3CEC(&qword_27CAC4ED8, _s7MusicUI18ArtworkContentViewVMa_1);
    sub_21680DFBC(&qword_27CAC2220, &unk_27CAC2228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4ED0);
  }

  return result;
}

unint64_t sub_216BC5E34()
{
  result = qword_27CAC4F08;
  if (!qword_27CAC4F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4E20);
    sub_216BC5EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4F08);
  }

  return result;
}

unint64_t sub_216BC5EC0()
{
  result = qword_27CAC4F10;
  if (!qword_27CAC4F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDF98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7660);
    sub_2167C4CBC();
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A828, &qword_27CABA400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4F10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FavoriteIndicatorView(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216BC6128()
{
  sub_216688560(319, &qword_280E2A070);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_216688560(319, qword_280E3D440);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_216BC5268(319, &qword_280E2B450, MEMORY[0x277CDFA28]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_216BC6288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_216BC6318()
{
  result = qword_27CAC4F48;
  if (!qword_27CAC4F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D78);
    sub_216BC5670();
    swift_getOpaqueTypeConformance2();
    sub_2166D3CEC(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4F48);
  }

  return result;
}

uint64_t sub_216BC649C()
{
  v1 = OUTLINED_FUNCTION_8_1();
  v2 = type metadata accessor for ContextMenuButton(v1);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_216BC44EC(v4, v0);
}

unint64_t sub_216BC64FC()
{
  result = qword_27CAC4F68;
  if (!qword_27CAC4F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4F58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4F50);
    sub_21680DFBC(&qword_27CAC4F60, &qword_27CAC4F50);
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A828, &qword_27CABA400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4F68);
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{
  OUTLINED_FUNCTION_49();
  v1 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_43_0();
  v9 = *(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v10 = v0 + ((v4 + v6 + v9) & ~v9);
  v11 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      OUTLINED_FUNCTION_50();
      (*(v14 + 8))(v10 + v12, v13);
    }
  }

  v15 = v10 + *(v7 + 20);
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_2_101();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v15);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v18 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v15 + v17, 1, v18))
    {
      OUTLINED_FUNCTION_50();
      (*(v19 + 8))(v15 + v17, v18);
    }
  }

  v20 = v10 + *(v7 + 32);
  if (*(v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

void sub_216BC68BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_8_1();
  v21 = *(sub_2170067A4() - 8);
  v22 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v23 = *(v21 + 64);
  v24 = type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_36(v24);
  v32 = v20 + ((v22 + v23 + *(v31 + 80)) & ~*(v31 + 80));

  sub_2169BDF30(v20 + v22, v32, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

unint64_t sub_216BC6988()
{
  result = qword_27CAC4FB8;
  if (!qword_27CAC4FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4FB0);
    sub_216BC6A40();
    sub_21680DFBC(&qword_280E2A6F8, &qword_27CAB7638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4FB8);
  }

  return result;
}

unint64_t sub_216BC6A40()
{
  result = qword_27CAC4FC0;
  if (!qword_27CAC4FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4FC8);
    sub_216BC6AF8();
    sub_21680DFBC(&qword_280E2A828, &qword_27CABA400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4FC0);
  }

  return result;
}

unint64_t sub_216BC6AF8()
{
  result = qword_27CAC4FD0;
  if (!qword_27CAC4FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4FD8);
    sub_216BC6BB0();
    sub_21680DFBC(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4FD0);
  }

  return result;
}

unint64_t sub_216BC6BB0()
{
  result = qword_27CAC4FE0;
  if (!qword_27CAC4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4FE0);
  }

  return result;
}

unint64_t sub_216BC6C04()
{
  result = qword_27CAC4FF8;
  if (!qword_27CAC4FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4FF0);
    sub_216BC6CBC();
    sub_21680DFBC(&qword_280E2A6F8, &qword_27CAB7638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4FF8);
  }

  return result;
}

unint64_t sub_216BC6CBC()
{
  result = qword_27CAC5000;
  if (!qword_27CAC5000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5008);
    sub_21686C594();
    sub_21680DFBC(&qword_280E2A828, &qword_27CABA400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5000);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI19PrioritizedTextListVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_216BC6D8C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216BC6DE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_216BC6E4C()
{
  result = qword_27CAC5018;
  if (!qword_27CAC5018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4F70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4F58);
    sub_217009574();
    sub_216BC64FC();
    sub_2166D3CEC(&qword_280E2A900, MEMORY[0x277CDDFB0]);
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2B388, &qword_27CAB76C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5018);
  }

  return result;
}

unint64_t sub_216BC6F90()
{
  result = qword_27CAC5028;
  if (!qword_27CAC5028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4F90);
    sub_21680DFBC(&qword_27CAC5030, &unk_27CAC5038);
    sub_21680DFBC(&qword_280E2A730, &qword_27CAB8688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5028);
  }

  return result;
}

uint64_t sub_216BC709C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_2167770D0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_216BC70AC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_2167C4DF0(result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_216BC70BC()
{
  result = qword_27CAC5078;
  if (!qword_27CAC5078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0);
    sub_21680DFBC(&qword_27CAC5058, &qword_27CAC5048);
    sub_21680DFBC(&qword_280E29AE8, &qword_27CAB75D0);
    swift_getOpaqueTypeConformance2();
    sub_2167C4D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5078);
  }

  return result;
}

void sub_216BC721C()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v175 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB490);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v194 = v6;
  OUTLINED_FUNCTION_4_1();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v189 = v8;
  v190 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v187 = v10 - v9;
  OUTLINED_FUNCTION_4_1();
  v188 = type metadata accessor for ModalPresentationDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v186 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE18);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  v184 = v16 - v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v180 = v172 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E0);
  v21 = OUTLINED_FUNCTION_36(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77();
  v174 = v22 - v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  v179 = v172 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
  OUTLINED_FUNCTION_36(v26);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_105();
  v183 = v28;
  OUTLINED_FUNCTION_4_1();
  v178 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v177 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  v176 = v32 - v31;
  OUTLINED_FUNCTION_4_1();
  v196 = type metadata accessor for LinkComponentModel();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7();
  v36 = v35 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F20);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_77();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = v172 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  OUTLINED_FUNCTION_36(v45);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_119_1();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_36(v47);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v48);
  v50 = v172 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_36(v51);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v52);
  v54 = v172 - v53;
  sub_21700C1C4();
  sub_21700C404();
  sub_21700C444();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  sub_216C7CDA8(v50, v0, v54);
  v59 = sub_21700C1E4();
  v181 = *(v59 - 8);
  v60 = *(v181 + 16);
  v60(v44, v2, v59);
  sub_21700D234();
  v61 = OUTLINED_FUNCTION_48(&v44[v37[13]]);
  *&v44[v37[9]] = 0;
  v44[v37[11]] = 0;
  v44[v37[12]] = 0;
  (v60)(v41, v2, v59, v61);
  sub_21700D234();
  OUTLINED_FUNCTION_48(v41 + v37[13]);
  *(v41 + v37[9]) = 0;
  *(v41 + v37[11]) = 1;
  v62 = v37[12];
  v192 = v41;
  *(v41 + v62) = 0;
  v63 = v175;
  v197 = sub_21700C164();
  v198 = v64;
  v65 = v196;
  v172[1] = sub_2166C32C0();
  sub_21700F364();
  v66 = (v36 + *(v65 + 24));
  v173 = v37;
  v66[3] = v37;
  v172[0] = sub_2166D9530(&qword_27CAB6F28, &qword_27CAB6F20);
  v66[4] = v172[0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  v193 = v44;
  sub_216683A80(v44, boxed_opaque_existential_1, &qword_27CAB6F20);
  v68 = (v36 + *(v65 + 28));
  sub_21700D7A4();
  *v68 = 0;
  v68[1] = 0;
  v195 = v36;
  OUTLINED_FUNCTION_38_2();
  v185 = v69;
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
  v197 = sub_21700C164();
  v198 = v73;
  sub_21700DF14();
  MEMORY[0x21CE9F490](0x726564616568, 0xE600000000000000);

  v74 = type metadata accessor for AlbumDetailHeaderLockup();
  sub_21700F364();
  v75 = v63 + v74[13];
  v191 = v54;
  sub_216683A80(v54, v75, &qword_27CAB6D60);
  v182 = v59;
  v76 = sub_2170071D4();
  if (v76)
  {
    v77 = v76;
    v78 = (v63 + v74[14]);
    v79 = type metadata accessor for VideoArtwork();
    sub_21700C3F4();
    *v78 = v77;
    OUTLINED_FUNCTION_41();
    v83 = v79;
  }

  else
  {
    type metadata accessor for VideoArtwork();
    OUTLINED_FUNCTION_38_2();
  }

  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  v84 = sub_21700C184();
  OUTLINED_FUNCTION_33_30(v84, v85, v74[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_217013DA0;
  v87 = sub_21700C0C4();
  v89 = v88;
  v90 = v176;
  sub_217006214();
  v91 = sub_2170061F4();
  v93 = v92;
  (*(v177 + 8))(v90, v178);
  *(v86 + 32) = v91;
  *(v86 + 40) = v93;
  *(v86 + 48) = v87;
  *(v86 + 56) = v89;
  *(v86 + 64) = 0u;
  *(v86 + 80) = 0u;
  *(v86 + 96) = 0;
  *(v63 + v74[7]) = v86;
  sub_216BC9424();
  OUTLINED_FUNCTION_33_30(v94, v95, v74[8]);
  type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
  v178 = sub_21700C184();
  v177 = v100;
  sub_216BC89B4();
  v102 = v101;
  v176 = v103;
  v104 = v179;
  sub_21700C134();
  v105 = sub_21700BEF4();
  OUTLINED_FUNCTION_24_3(v104);
  v107 = v186;
  v106 = v187;
  if (v108)
  {
    sub_216697664(v104, &qword_27CAB74E0);
    goto LABEL_9;
  }

  sub_21700BEE4();
  OUTLINED_FUNCTION_21_45();
  (*(v109 + 8))(v110, v105);
  if (!v93)
  {
LABEL_9:
    v104 = v174;
    sub_21700C134();
    OUTLINED_FUNCTION_24_3(v104);
    if (v108)
    {
      sub_216697664(v104, &qword_27CAB74E0);
      v104 = 0;
      v93 = 0;
    }

    else
    {
      sub_21700BED4();
      OUTLINED_FUNCTION_21_45();
      (*(v112 + 8))(v113, v105);
    }

    v111 = v190;

    goto LABEL_13;
  }

  v111 = v190;
LABEL_13:
  v114 = v180;
  sub_21700D234();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v111);
  v118 = v177;
  *v107 = v178;
  *(v107 + 8) = v118;
  v119 = v176;
  *(v107 + 16) = v102;
  *(v107 + 24) = v119;
  *(v107 + 32) = v104;
  *(v107 + 40) = v93;
  *(v107 + 48) = 8;
  *(v107 + 56) = 0;
  *(v107 + 64) = 0;
  v120 = v184;
  sub_216683A80(v114, v184, &qword_27CABBE18);
  OUTLINED_FUNCTION_24_3(v120);
  if (v108)
  {
    sub_21700D234();
    sub_216697664(v114, &qword_27CABBE18);
    OUTLINED_FUNCTION_24_3(v120);
    v122 = v196;
    v123 = v194;
    v121 = v189;
    if (!v108)
    {
      sub_216697664(v120, &qword_27CABBE18);
    }
  }

  else
  {
    sub_216697664(v114, &qword_27CABBE18);
    v121 = v189;
    (*(v189 + 32))(v106, v120, v111);
    v122 = v196;
    v123 = v194;
  }

  v124 = v188;
  (*(v121 + 32))(v107 + *(v188 + 40), v106, v111);
  v125 = v183;
  sub_216BCA36C(v107, v183);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v124);
  sub_2167C5834(v125, v63 + v74[9], &qword_27CABBE20);
  sub_216BC9AA4();
  *(v63 + v74[11]) = v129;
  v130 = v195;
  sub_216BCA48C(v195, v63 + v74[16], type metadata accessor for LinkComponentModel);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v122);
  sub_21700C1A4();
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB498);
  OUTLINED_FUNCTION_24_3(v123);
  if (v108)
  {
    v135 = OUTLINED_FUNCTION_24_32();
    v136(v135);
    OUTLINED_FUNCTION_2_128();
    sub_216BCA4E8(v130, v137);
    OUTLINED_FUNCTION_9_64(v192);
    OUTLINED_FUNCTION_9_64(v193);
    sub_216697664(v191, &qword_27CAB6D60);
    v138 = &qword_27CABB490;
    v139 = v123;
LABEL_23:
    sub_216697664(v139, v138);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v162, v163, v164, v122);
    v152 = v185;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_3_15();
  sub_2166D9530(v140, v141);
  sub_21700EC54();
  sub_21700EC94();
  v142 = sub_21700EC84();
  (*(*(v134 - 8) + 8))(v123, v134);
  if (v142 < 2)
  {
    v159 = OUTLINED_FUNCTION_24_32();
    v160(v159);
    OUTLINED_FUNCTION_2_128();
    sub_216BCA4E8(v195, v161);
    OUTLINED_FUNCTION_9_64(v192);
    OUTLINED_FUNCTION_9_64(v193);
    v138 = &qword_27CAB6D60;
    v139 = v191;
    goto LABEL_23;
  }

  v143 = v63 + v74[17];
  v197 = sub_21700C164();
  v198 = v144;
  sub_21700F364();
  v145 = (v143 + *(v122 + 24));
  v146 = v172[0];
  v145[3] = v173;
  v145[4] = v146;
  v147 = __swift_allocate_boxed_opaque_existential_1(v145);
  sub_2167C5834(v192, v147, &qword_27CAB6F20);
  v148 = OUTLINED_FUNCTION_24_32();
  v149(v148);
  OUTLINED_FUNCTION_2_128();
  sub_216BCA4E8(v195, v150);
  sub_216697664(v193, &qword_27CAB6F20);
  sub_216697664(v191, &qword_27CAB6D60);
  v151 = (v143 + *(v122 + 28));
  *v151 = 0;
  v151[1] = 0;
  OUTLINED_FUNCTION_38_2();
  v152 = v185;
  __swift_storeEnumTagSinglePayload(v153, v154, v155, v185);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v122);
LABEL_24:
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v165, v166, v167, v152);
  v168 = (v63 + v74[12]);
  *v168 = 0;
  v168[1] = 0;
  *(v63 + v74[10]) = 0;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v169, v170, v171, v122);
  *(v63 + v74[19]) = 10;
  OUTLINED_FUNCTION_26();
}

void sub_216BC7FB8()
{
  OUTLINED_FUNCTION_49();
  v123 = v1;
  LODWORD(v121) = v2;
  v124 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5090);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v119 = v10;
  OUTLINED_FUNCTION_4_1();
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v117 = v12;
  v118 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v116 = v14 - v13;
  OUTLINED_FUNCTION_4_1();
  v15 = sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  v126 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5098);
  OUTLINED_FUNCTION_36(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  v122 = v20;
  OUTLINED_FUNCTION_4_1();
  v21 = sub_21700BEC4();
  OUTLINED_FUNCTION_1();
  v120 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77();
  v115 = (v24 - v25);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  v114 = &v111 - v27;
  OUTLINED_FUNCTION_4_1();
  v28 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v113 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  v112 = v32 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  OUTLINED_FUNCTION_36(v33);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v36 = &v111 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_36(v37);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  v40 = &v111 - v39;
  v127 = sub_21700C2A4();
  v128 = v41;
  v42 = type metadata accessor for AlbumTrackLockup();
  sub_2166C32C0();
  sub_21700F364();
  OUTLINED_FUNCTION_48(v7 + v42[6]);
  v43 = sub_216BCA160();
  OUTLINED_FUNCTION_33_30(v43, v44, v42[7]);
  sub_21700C2C4();
  sub_21700C404();
  sub_21700C444();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  sub_216C7CDA8(v40, v36, v7 + v42[25]);
  v49 = 0;
  v125 = v15;
  if (v121)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_217013DA0;
    v50 = sub_21700C264();
    v121 = v51;
    v52 = v112;
    sub_217006214();
    v53 = sub_2170061F4();
    v54 = v28;
    v55 = v5;
    v56 = v21;
    v57 = v0;
    v59 = v58;
    (*(v113 + 8))(v52, v54);
    *(v49 + 32) = v53;
    *(v49 + 40) = v59;
    v0 = v57;
    v21 = v56;
    v5 = v55;
    v60 = v121;
    *(v49 + 48) = v50;
    *(v49 + 56) = v60;
    v15 = v125;
    *(v49 + 64) = 0u;
    *(v49 + 80) = 0u;
    *(v49 + 96) = 0;
  }

  *(v7 + v42[8]) = v49;
  v61 = v122;
  sub_21700C284();
  OUTLINED_FUNCTION_31_2(v61, 1, v21);
  if (v62)
  {
    sub_216697664(v61, &qword_27CAC5098);
    *(v7 + v42[11]) = 0;
    v63 = v126;
  }

  else
  {
    v121 = v0;
    v64 = v120;
    v65 = *(v120 + 32);
    v66 = v114;
    v65(v114, v61, v21);
    v67 = v115;
    v65(v115, v66, v21);
    v68 = (*(v64 + 88))(v67, v21);
    v69 = v42[11];
    if (v68 == *MEMORY[0x277CD8000])
    {
      *(v7 + v69) = 1;
    }

    else
    {
      *(v7 + v69) = 0;
      (*(v120 + 8))(v67, v21);
    }

    v63 = v126;
    v0 = v121;
  }

  v122 = *(v63 + 16);
  v122(v0, v5, v15);
  v70 = (*(v63 + 88))(v0, v15);
  if (v70 == *MEMORY[0x277CD8368])
  {
    (*(v63 + 96))(v0, v15);
    v71 = v116;
    v72 = v117;
    v73 = v118;
    (*(v117 + 32))(v116, v0, v118);
    v74 = v119;
    sub_21700BF84();
    (*(v72 + 8))(v71, v73);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50B0);
    OUTLINED_FUNCTION_31_2(v74, 1, v75);
    if (v62)
    {
      v76 = 0;
    }

    else
    {
      v76 = 1;
    }

    sub_216697664(v74, &qword_27CAC5090);
    *(v7 + v42[19]) = v76;
  }

  else
  {
    v77 = v42[19];
    *(v7 + v77) = v70 == *MEMORY[0x277CD8350];
    (*(v63 + 8))(v0, v15);
  }

  sub_21700D7A4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  v82 = sub_21700C274();
  v83 = v7 + v42[9];
  *v83 = v82;
  *(v83 + 8) = v84 & 1;
  v85 = COERCE_DOUBLE(sub_21700C2D4());
  v87 = v42[10];
  if (v86)
  {
    *(v7 + v87) = v85;
  }

  else
  {
    *(v7 + v87) = v85 * 1000.0;
  }

  *(v7 + v87 + 8) = v86 & 1;
  v88 = v124;
  v89 = COERCE_DOUBLE(sub_21700C094()) >= 0.7;
  *(v7 + v42[12]) = v89 & ~v90;
  *(v7 + v42[13]) = v123 & 1;
  v91 = sub_21700C2E4();
  OUTLINED_FUNCTION_33_30(v91, v92, v42[17]);
  v93 = (v7 + v42[23]);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50A0);
  v93[3] = v94;
  v93[4] = sub_2166D9530(&qword_27CAC50A8, &qword_27CAC50A0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v93);
  v96 = v125;
  v122(boxed_opaque_existential_1, v5, v125);
  v97 = *(v94 + 52);
  v98 = sub_21700C1E4();
  v99 = *(v98 - 8);
  (*(v99 + 16))(boxed_opaque_existential_1 + v97, v88, v98);
  sub_21700D234();
  (*(v99 + 8))(v88, v98);
  (*(v126 + 8))(v5, v96);
  *&v100 = OUTLINED_FUNCTION_48(boxed_opaque_existential_1 + *(v94 + 60));
  v101 = v7 + v42[21];
  *(v101 + 32) = 0;
  *v101 = v100;
  *(v101 + 16) = v100;
  v102 = v7 + v42[20];
  *(v102 + 32) = 0;
  *v102 = v100;
  *(v102 + 16) = v100;
  *(v7 + v42[14]) = 0;
  *(v7 + v42[15]) = 0;
  v103 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v103);
  *(v7 + v42[18]) = 0;
  OUTLINED_FUNCTION_48(v7 + v42[22]);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v103);
  v110 = (v7 + v42[24]);
  *v110 = 0;
  v110[1] = 0;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216BC88B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21700C0B4();
  if (!v3)
  {
    v2 = sub_21700C164();
  }

  v4 = v2;
  v5 = v3;
  v6 = type metadata accessor for ContentDescriptor();
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_17_53();
  *(a1 + 88) = v4;
  *(a1 + 96) = v5;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
}

void sub_216BC8960()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_216BCA3D0(2038004089, 0xE400000000000000, v0);
  qword_27CAC5088 = v0;
}

void sub_216BC89B4()
{
  OUTLINED_FUNCTION_49();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  v3 = &v26 - v2;
  v4 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = sub_21700C0C4();
  v13 = v12;
  sub_21700C0E4();
  OUTLINED_FUNCTION_31_2(v3, 1, v4);
  if (v14)
  {
    sub_216697664(v3, &qword_27CAB74E8);
  }

  else
  {
    (*(v6 + 32))(v10, v3, v4);
    v15 = sub_216983738(293);
    v17 = v16;
    v26 = v11;
    v27 = v13;
    sub_21700DF14();
    MEMORY[0x21CE9F490](v15, v17);

    v19 = v26;
    v18 = v27;
    if (qword_27CAB5F30 != -1)
    {
      OUTLINED_FUNCTION_14_56();
    }

    v20 = qword_27CAC5088;
    v21 = sub_217006134();
    v22 = [v20 stringFromDate_];

    v23 = sub_21700E514();
    v25 = v24;

    v26 = v19;
    v27 = v18;
    sub_21700DF14();
    MEMORY[0x21CE9F490](v23, v25);

    (*(v6 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_26();
}

void sub_216BC8BF0()
{
  OUTLINED_FUNCTION_49();
  v52 = sub_217006044();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = sub_217006064();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v18 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  v53 = v0;
  sub_21700C0E4();
  OUTLINED_FUNCTION_31_2(v17, 1, v18);
  if (v25)
  {
    sub_216697664(v17, &qword_27CAB74E8);
    v26 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v20 + 32))(v24, v17, v18);
    sub_217006054();
    sub_217006034();
    v27 = sub_2170061B4();
    v29 = v28;
    (*(v2 + 8))(v6, v52);
    (*(v9 + 8))(v13, v7);
    sub_21693776C();
    v26 = v30;
    v9 = *(v30 + 16);
    v31 = *(v30 + 24);
    if (v9 >= v31 >> 1)
    {
      OUTLINED_FUNCTION_46_7(v31);
      sub_21693776C();
      v26 = v50;
    }

    (*(v20 + 8))(v24, v18);
    *(v26 + 16) = v9 + 1;
    v32 = v26 + 16 * v9;
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;
  }

  v33 = v53;
  v34 = sub_216BC9014();
  if (v35)
  {
    v36 = v34;
    v37 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_29_0();
      sub_21693776C();
      v26 = v46;
    }

    v9 = *(v26 + 16);
    v38 = *(v26 + 24);
    if (v9 >= v38 >> 1)
    {
      OUTLINED_FUNCTION_46_7(v38);
      sub_21693776C();
      v26 = v47;
    }

    *(v26 + 16) = v9 + 1;
    v39 = v26 + 16 * v9;
    *(v39 + 32) = v36;
    *(v39 + 40) = v37;
  }

  sub_21700C1D4();
  if (v40)
  {
    OUTLINED_FUNCTION_1_118();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_29_0();
      sub_21693776C();
      v26 = v48;
    }

    v42 = *(v26 + 16);
    v41 = *(v26 + 24);
    if (v42 >= v41 >> 1)
    {
      OUTLINED_FUNCTION_46_7(v41);
      sub_21693776C();
      v26 = v49;
    }

    *(v26 + 16) = v42 + 1;
    v43 = v26 + 16 * v42;
    *(v43 + 32) = v9;
    *(v43 + 40) = v33;
  }

  else if (!*(v26 + 16))
  {

    goto LABEL_21;
  }

  v54 = v26;
  v44 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v44);
  OUTLINED_FUNCTION_4_106();
  sub_2166D9530(v45, &qword_27CAB74F8);
  sub_21700E454();
  OUTLINED_FUNCTION_1_118();

LABEL_21:
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216BC9014()
{
  v2 = sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  v41 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50B8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB490);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB498);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  sub_21700C1A4();
  OUTLINED_FUNCTION_31_2(v11, 1, v12);
  if (v22)
  {
    sub_216697664(v11, &qword_27CABB490);
  }

  else
  {
    (*(v14 + 32))(v21, v11, v12);
    if (sub_216E9A354())
    {
      (*(v14 + 8))(v21, v12);
    }

    else
    {
      v38 = v14;
      v39 = v0;
      v23 = *(v14 + 16);
      v37 = v21;
      v23(v18, v21, v12);
      sub_2166D9530(&qword_27CABB4C0, &qword_27CABB498);
      sub_21700E754();
      v24 = *(v40 + 36);
      OUTLINED_FUNCTION_3_15();
      sub_2166D9530(v25, &qword_27CABB498);
      v26 = (v41 + 16);
      v27 = (v41 + 8);
      for (i = 0.0; ; i = i + v33)
      {
        sub_21700EC94();
        if (*&v7[v24] == v42[0])
        {
          break;
        }

        v29 = sub_21700ECE4();
        (*v26)(v1);
        v29(v42, 0);
        sub_21700ECA4();
        v30 = sub_21700C2D4();
        v32 = v31;
        (*v27)(v1, v2);
        v33 = *&v30;
        if (v32)
        {
          v33 = 0.0;
        }
      }

      sub_216697664(v7, &qword_27CAC50B8);
      v34 = sub_21700C0D4();
      sub_2167C68C0(v34, 0, *&i, 0);
      OUTLINED_FUNCTION_1_118();
      (*(v38 + 8))(v37, v12);
    }
  }

  return OUTLINED_FUNCTION_8();
}

void sub_216BC9424()
{
  OUTLINED_FUNCTION_49();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_119_1();
  v4 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v72 = sub_21700C254();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v71 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50C0);
  OUTLINED_FUNCTION_36(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50C8);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - v24;
  sub_21700C194();
  OUTLINED_FUNCTION_31_2(v19, 1, v20);
  if (v26)
  {
    sub_216697664(v19, &qword_27CAC50C0);
    v27 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v69 = v12;
  v66 = v6;
  v64 = v0;
  (*(v22 + 32))(v25, v19, v20);
  OUTLINED_FUNCTION_3_15();
  sub_2166D9530(v28, v29);
  v30 = sub_21700EC74();
  v31 = MEMORY[0x277D84F90];
  v65 = v1;
  v67 = v25;
  v68 = v20;
  v63 = v22;
  if (!v30)
  {
LABEL_11:
    v73 = v31;
    sub_216983738(291);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
    OUTLINED_FUNCTION_4_106();
    sub_2166D9530(v43, &qword_27CAB74F8);
    v44 = OUTLINED_FUNCTION_28_33();
    v46 = v45;

    sub_21693776C();
    v27 = v47;
    v49 = *(v47 + 16);
    v48 = *(v47 + 24);
    if (v49 >= v48 >> 1)
    {
      OUTLINED_FUNCTION_46_7(v48);
      sub_21693776C();
      v27 = v60;
    }

    v6 = v66;
    (*(v63 + 8))(v67, v68);
    *(v27 + 16) = v49 + 1;
    v50 = v27 + 16 * v49;
    *(v50 + 32) = v44;
    *(v50 + 40) = v46;
    v1 = v65;
LABEL_14:
    sub_21700C0E4();
    OUTLINED_FUNCTION_31_2(v1, 1, v4);
    if (v26)
    {
      sub_216697664(v1, &qword_27CAB74E8);
      if (!*(v27 + 16))
      {

LABEL_26:
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_26();
        return;
      }
    }

    else
    {
      (*(v6 + 32))(v10, v1, v4);
      if (qword_27CAB5F30 != -1)
      {
        OUTLINED_FUNCTION_14_56();
      }

      v51 = qword_27CAC5088;
      v52 = sub_217006134();
      v53 = [v51 stringFromDate_];

      sub_21700E514();
      OUTLINED_FUNCTION_1_118();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_29_0();
        sub_21693776C();
        v27 = v58;
      }

      v55 = *(v27 + 16);
      v54 = *(v27 + 24);
      if (v55 >= v54 >> 1)
      {
        OUTLINED_FUNCTION_46_7(v54);
        sub_21693776C();
        v27 = v59;
      }

      (*(v6 + 8))(v10, v4);
      *(v27 + 16) = v55 + 1;
      v56 = v27 + 16 * v55;
      *(v56 + 32) = v51;
      *(v56 + 40) = v52;
    }

    v73 = v27;
    sub_216983738(293);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
    OUTLINED_FUNCTION_4_106();
    sub_2166D9530(v57, &qword_27CAB74F8);
    OUTLINED_FUNCTION_28_33();
    OUTLINED_FUNCTION_1_118();

    goto LABEL_26;
  }

  v32 = v30;
  v74 = MEMORY[0x277D84F90];
  sub_2166F4258();
  v31 = v74;
  sub_21700EC54();
  if ((v32 & 0x8000000000000000) == 0)
  {
    v61 = v10;
    v62 = v4;
    v33 = (v69 + 2);
    ++v69;
    v70 = v33;
    do
    {
      v34 = sub_21700ECE4();
      v35 = v71;
      v36 = v72;
      (*v70)(v71);
      v34(&v73, 0);
      v37 = sub_21700C244();
      v39 = v38;
      (*v69)(v35, v36);
      v74 = v31;
      v41 = *(v31 + 16);
      v40 = *(v31 + 24);
      if (v41 >= v40 >> 1)
      {
        OUTLINED_FUNCTION_46_7(v40);
        sub_2166F4258();
        v31 = v74;
      }

      *(v31 + 16) = v41 + 1;
      v42 = v31 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
      sub_21700ECA4();
      --v32;
    }

    while (v32);
    v10 = v61;
    v4 = v62;
    goto LABEL_11;
  }

  __break(1u);
}

void sub_216BC9AA4()
{
  OUTLINED_FUNCTION_49();
  v0 = sub_21700BEB4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_77();
  v50 = v4 - v5;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v6);
  v8 = v41 - v7;
  v9 = sub_21700C104();
  if (!v9)
  {
    goto LABEL_60;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {

    v17 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v12 = *(v2 + 16);
  v11 = v2 + 16;
  v13 = *(v11 + 64);
  v41[1] = v9;
  v14 = v9 + ((v13 + 32) & ~v13);
  v47 = *(v11 + 56);
  v48 = v12;
  v15 = (v11 + 16);
  v16 = (v11 + 72);
  v46 = *MEMORY[0x277CD7FD8];
  v45 = *MEMORY[0x277CD7FD0];
  v44 = *MEMORY[0x277CD7FE8];
  v43 = *MEMORY[0x277CD7FE0];
  v49 = v11;
  v42 = (v11 - 8);
  v17 = MEMORY[0x277D84F90];
  do
  {
    v48(v8, v14, v0);
    v18 = v50;
    (*v15)(v50, v8, v0);
    v19 = (*v16)(v18, v0);
    if (v19 == v46)
    {
      v20 = 0;
    }

    else if (v19 == v45)
    {
      v20 = 1;
    }

    else if (v19 == v44)
    {
      v20 = 2;
    }

    else
    {
      if (v19 != v43)
      {
        (*v42)(v50, v0);
        goto LABEL_17;
      }

      v20 = 3;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_29_0();
      sub_216938690();
      v17 = v23;
    }

    v22 = *(v17 + 16);
    v21 = *(v17 + 24);
    if (v22 >= v21 >> 1)
    {
      OUTLINED_FUNCTION_46_7(v21);
      sub_216938690();
      v17 = v24;
    }

    *(v17 + 16) = v22 + 1;
    *(v17 + v22 + 32) = v20;
LABEL_17:
    v14 += v47;
    --v10;
  }

  while (v10);

LABEL_21:
  v51 = v17;
  v25 = *(v17 + 16);
  sub_21700DF14();
  v26 = (v17 + 32);
  while (2)
  {
    if (!v25)
    {

LABEL_60:
      OUTLINED_FUNCTION_26();
      return;
    }

    switch(*v26)
    {
      case 1:
        OUTLINED_FUNCTION_13_57();
        goto LABEL_26;
      case 3:

        goto LABEL_30;
      case 4:
        OUTLINED_FUNCTION_12_60();
        goto LABEL_26;
      default:
LABEL_26:
        v27 = sub_21700F7D4();

        ++v26;
        --v25;
        if ((v27 & 1) == 0)
        {
          continue;
        }

LABEL_30:

        v28 = *(v17 + 16);
        if (!v28)
        {
          v29 = 0;
          goto LABEL_59;
        }

        v29 = 0;
        break;
    }

    break;
  }

  while (2)
  {
    if (v29 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_62;
    }

    switch(*(v17 + 32 + v29))
    {
      case 1:
        OUTLINED_FUNCTION_13_57();
        goto LABEL_36;
      case 2:

        goto LABEL_41;
      case 4:
        OUTLINED_FUNCTION_12_60();
        OUTLINED_FUNCTION_29_36();
        goto LABEL_36;
      default:
LABEL_36:
        v30 = OUTLINED_FUNCTION_22_41();

        if ((v30 & 1) == 0)
        {
          if (v28 == ++v29)
          {
            v29 = *(v17 + 16);
LABEL_59:
            sub_216DD3CB4(v29);
            goto LABEL_60;
          }

          continue;
        }

LABEL_41:
        v31 = *(v17 + 16);
        if (v31 - 1 == v29)
        {
          goto LABEL_59;
        }

        v32 = v29 + 33;
        while (2)
        {
          v33 = v32 - 32;
          if (v32 - 32 < v31)
          {
            switch(*(v17 + v32))
            {
              case 1:
                OUTLINED_FUNCTION_13_57();
                goto LABEL_48;
              case 2:

                goto LABEL_57;
              case 4:
                OUTLINED_FUNCTION_12_60();
                OUTLINED_FUNCTION_29_36();
                goto LABEL_48;
              default:
LABEL_48:
                v34 = OUTLINED_FUNCTION_22_41();

                if (v34)
                {
                  goto LABEL_57;
                }

                if (v33 == v29)
                {
                  goto LABEL_56;
                }

                if ((v29 & 0x8000000000000000) != 0)
                {
                  goto LABEL_63;
                }

                v35 = *(v17 + 16);
                if (v29 >= v35)
                {
                  goto LABEL_64;
                }

                if (v33 >= v35)
                {
                  goto LABEL_65;
                }

                v36 = *(v17 + 32 + v29);
                v37 = *(v17 + v32);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_216E15A44();
                  v17 = v40;
                }

                *(v17 + v29 + 32) = v37;
                *(v17 + v32) = v36;
                v51 = v17;
LABEL_56:
                ++v29;
LABEL_57:
                v31 = *(v17 + 16);
                v38 = v32 + 1;
                v39 = v32 - 31;
                ++v32;
                if (v39 != v31)
                {
                  continue;
                }

                if ((v38 - 32) >= v29)
                {
                  goto LABEL_59;
                }

                goto LABEL_66;
            }
          }

          break;
        }

LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        return;
    }
  }
}

uint64_t sub_216BCA030@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = sub_21700C0B4();
  if (!v7)
  {
    v6 = sub_21700C164();
  }

  v8 = v6;
  v9 = v7;
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_17_53();
  *(v5 + 88) = v8;
  *(v5 + 96) = v9;
  *(v5 + 104) = 0;
  *(v5 + 112) = 1;
  a1[3] = type metadata accessor for AlbumDetailRecommendedShelvesIntent();
  a1[4] = sub_216BCA434();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_216BCA48C(v5, boxed_opaque_existential_1, type metadata accessor for ContentDescriptor);
  type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  return sub_216BCA4E8(v5, type metadata accessor for ContentDescriptor);
}

uint64_t sub_216BCA160()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB548);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v15 - v1;
  v3 = sub_21700C084();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216A8E8E8(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_216697664(v2, &qword_27CABB548);
    return sub_21700C2B4();
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_21700C064();
    if (!v8 || (, v9 = sub_21700BFD4(), (v10 & 1) != 0) || v9 < 1)
    {
      v7 = sub_21700C2B4();
    }

    else
    {
      v15[0] = sub_2168811D0(v9);
      v15[1] = v11;
      MEMORY[0x21CE9F490](8238, 0xE200000000000000);
      v12 = sub_21700BFB4();
      if (!v13)
      {
        v12 = sub_21700C014();
      }

      MEMORY[0x21CE9F490](v12);

      v7 = v15[0];
    }

    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

uint64_t sub_216BCA36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalPresentationDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_216BCA3D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21700E4D4();

  [a3 setDateFormat_];
}

unint64_t sub_216BCA434()
{
  result = qword_27CAB6AB0;
  if (!qword_27CAB6AB0)
  {
    type metadata accessor for AlbumDetailRecommendedShelvesIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6AB0);
  }

  return result;
}

uint64_t sub_216BCA48C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216BCA4E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BCA61C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = sub_21700C764();
  if (!v7)
  {
    v6 = sub_21700C7C4();
  }

  v8 = v6;
  v9 = v7;
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_55();
  *(v5 + 88) = v8;
  *(v5 + 96) = v9;
  *(v5 + 104) = 0;
  *(v5 + 112) = 1;
  a1[3] = type metadata accessor for PlaylistDetailRecommendedShelvesIntent();
  a1[4] = sub_216BCD190(&qword_27CAB6AC0, type metadata accessor for PlaylistDetailRecommendedShelvesIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_21695BC04(v5, boxed_opaque_existential_1);
  type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  return sub_2168F3F20(v5);
}

uint64_t sub_216BCA75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v6);
  v226 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v225 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0(v10 - v9);
  v224 = type metadata accessor for ModalPresentationDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v230 = (v13 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE18);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20);
  OUTLINED_FUNCTION_36(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E90);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77();
  v25 = v23 - v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v216 - v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1398);
  v32 = OUTLINED_FUNCTION_36(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v216 - v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  v39 = &v216 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  OUTLINED_FUNCTION_36(v40);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v41);
  v43 = &v216 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_36(v44);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v45);
  v47 = &v216 - v46;
  v48 = sub_21700C774();
  v217 = v39;
  if (!v49)
  {
    goto LABEL_7;
  }

  sub_216E13A48(v48, v49, __src);
  if (!__src[1])
  {
    sub_216697664(__src, &qword_27CAB8100);
LABEL_7:
    v228 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  memcpy(__dst, __src, sizeof(__dst));
  sub_2167ADC3C(__dst, __src);
  sub_2169379AC();
  v52 = *(v50 + 16);
  v51 = *(v50 + 24);
  v228 = v50;
  if (v52 >= v51 >> 1)
  {
    sub_2169379AC();
    v228 = v215;
  }

  sub_2167ADC98(__dst);
  v53 = v228;
  *(v228 + 16) = v52 + 1;
  memcpy((v53 + 72 * v52 + 32), __src, 0x48uLL);
LABEL_8:
  __dst[0] = sub_21700C7C4();
  __dst[1] = v54;
  sub_21700DF14();
  MEMORY[0x21CE9F490](0x726564616568, 0xE600000000000000);

  v55 = type metadata accessor for PlaylistDetailHeaderLockup();
  sub_21700F364();
  v56 = sub_21700C804();
  v57 = (a2 + v55[6]);
  *v57 = v56;
  v57[1] = v58;
  sub_21700C8F4();
  sub_21700C404();
  sub_21700C444();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  sub_216C7CDA8(v47, v43, a2 + v55[12]);
  v63 = sub_21700C664();
  v229 = a1;
  if (v63 == 2 || (v63 & 1) == 0)
  {
    v69 = type metadata accessor for LinkComponentModel();
    v219 = a2;
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
    v73 = sub_21700C924();
    OUTLINED_FUNCTION_34();
    v75 = *(v74 + 16);
    v75(v29, a1, v73);
    sub_21700D234();
    v76 = OUTLINED_FUNCTION_48(&v29[v21[13]]);
    *&v29[v21[9]] = 0;
    v29[v21[11]] = 0;
    v29[v21[12]] = 0;
    (v75)(v25, a1, v73, v76);
    sub_21700D234();
    OUTLINED_FUNCTION_48(v25 + v21[13]);
    *(v25 + v21[9]) = 0;
    *(v25 + v21[11]) = 1;
    *(v25 + v21[12]) = 0;
    sub_21700C904();
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13A0);
    OUTLINED_FUNCTION_31_2(v36, 1, v77);
    if (v68)
    {
      sub_216697664(v36, &qword_27CAC1398);
    }

    else
    {
      v78 = sub_216E9A4B0();
      OUTLINED_FUNCTION_50();
      (*(v79 + 8))(v36, v77);
      if (!v78)
      {
        v82 = v219 + v55[15];
        __dst[0] = sub_21700C7C4();
        __dst[1] = v83;
        sub_2166C32C0();
        sub_21700F364();
        v84 = (v82 + *(v69 + 24));
        v84[3] = v21;
        OUTLINED_FUNCTION_13();
        v84[4] = sub_2166D9530(v85, &qword_27CAB6E90);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
        sub_2166A6E54(v29, boxed_opaque_existential_1, &qword_27CAB6E90);
        v87 = (v82 + *(v69 + 28));
        sub_21700D7A4();
        *v87 = 0;
        v87[1] = 0;
        a2 = v219;
        OUTLINED_FUNCTION_38_2();
        __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
        v80 = v82;
        v81 = 0;
LABEL_23:
        __swift_storeEnumTagSinglePayload(v80, v81, 1, v69);
        v92 = v218;
        sub_21700C904();
        OUTLINED_FUNCTION_31_2(v92, 1, v77);
        if (v68)
        {
          OUTLINED_FUNCTION_230();
          sub_216697664(v93, v94);
          OUTLINED_FUNCTION_230();
          sub_216697664(v95, v96);
          v97 = &qword_27CAC1398;
          v98 = v92;
        }

        else
        {
          OUTLINED_FUNCTION_3_15();
          sub_2166D9530(v99, v100);
          v101 = v92;
          sub_21700EC54();
          sub_21700EC94();
          v102 = sub_21700EC84();
          OUTLINED_FUNCTION_50();
          (*(v103 + 8))(v101, v77);
          if (v102 >= 2)
          {
            v104 = a2 + v55[16];
            __dst[0] = sub_21700C7C4();
            __dst[1] = v105;
            sub_2166C32C0();
            sub_21700F364();
            v106 = (v104 + *(v69 + 24));
            v106[3] = v21;
            OUTLINED_FUNCTION_13();
            v106[4] = sub_2166D9530(v107, &qword_27CAB6E90);
            v108 = __swift_allocate_boxed_opaque_existential_1(v106);
            sub_21678818C(v25, v108, &qword_27CAB6E90);
            sub_216697664(v29, &qword_27CAB6E90);
            v109 = (v104 + *(v69 + 28));
            sub_21700D7A4();
            *v109 = 0;
            v109[1] = 0;
            a2 = v219;
            OUTLINED_FUNCTION_38_2();
            __swift_storeEnumTagSinglePayload(v110, v111, v112, v113);
            v114 = v104;
            v115 = 0;
LABEL_30:
            __swift_storeEnumTagSinglePayload(v114, v115, 1, v69);
            v118 = v226;
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_230();
          sub_216697664(v116, v117);
          OUTLINED_FUNCTION_230();
        }

        sub_216697664(v98, v97);
        v114 = a2 + v55[16];
        v115 = 1;
        goto LABEL_30;
      }
    }

    a2 = v219;
    v80 = v219 + v55[15];
    v81 = 1;
    goto LABEL_23;
  }

  if (qword_27CAB5F70 != -1)
  {
    swift_once();
  }

  v64 = byte_27CB22A28;
  if (byte_27CB22A28 != 1)
  {
    goto LABEL_32;
  }

  __dst[3] = &unk_28293AC68;
  __dst[4] = sub_2169802AC();
  v65 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  if ((v65 & 1) == 0)
  {
    goto LABEL_32;
  }

  v66 = v217;
  sub_21700C904();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13A0);
  OUTLINED_FUNCTION_31_2(v66, 1, v67);
  if (v68)
  {
    sub_216697664(v66, &qword_27CAC1398);
LABEL_32:
    v121 = v55[15];
    v122 = type metadata accessor for LinkComponentModel();
    v123 = a2 + v121;
    v124 = 1;
    goto LABEL_33;
  }

  v119 = sub_216E9A4B0();
  OUTLINED_FUNCTION_50();
  (*(v120 + 8))(v66, v67);
  if (v119)
  {
    goto LABEL_32;
  }

  sub_21700C924();
  OUTLINED_FUNCTION_34();
  v203 = v216;
  (*(v202 + 16))(v216, a1);
  sub_21700D234();
  OUTLINED_FUNCTION_48(v203 + v21[13]);
  *(v203 + v21[9]) = 0;
  *(v203 + v21[11]) = 0;
  *(v203 + v21[12]) = 0;
  v204 = a2 + v55[15];
  __dst[0] = sub_21700C7C4();
  __dst[1] = v205;
  v122 = type metadata accessor for LinkComponentModel();
  sub_2166C32C0();
  sub_21700F364();
  v206 = (v204 + *(v122 + 24));
  v206[3] = v21;
  OUTLINED_FUNCTION_13();
  v206[4] = sub_2166D9530(v207, v208);
  v209 = __swift_allocate_boxed_opaque_existential_1(v206);
  sub_21678818C(v203, v209, &qword_27CAB6E90);
  v210 = (v204 + *(v122 + 28));
  sub_21700D7A4();
  *v210 = 0;
  v210[1] = 0;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v211, v212, v213, v214);
  v123 = v204;
  v124 = 0;
LABEL_33:
  __swift_storeEnumTagSinglePayload(v123, v124, 1, v122);
  type metadata accessor for LinkComponentModel();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v122);
  __dst[3] = v21;
  OUTLINED_FUNCTION_13();
  __dst[4] = sub_2166D9530(v128, v129);
  v130 = __swift_allocate_boxed_opaque_existential_1(__dst);
  sub_21700C924();
  OUTLINED_FUNCTION_34();
  (*(v131 + 16))(v130, a1);
  sub_21700D234();
  OUTLINED_FUNCTION_48(v130 + v21[13]);
  *(v130 + v21[9]) = 0;
  *(v130 + v21[11]) = 0;
  *(v130 + v21[12]) = 1;
  __src[3] = &unk_28293AC68;
  __src[4] = sub_2169802AC();
  LODWORD(v130) = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(__src);
  if ((v64 & v130) == 1)
  {
    __src[3] = type metadata accessor for ConnectSingDevicesAction();
    __src[4] = sub_216BCD190(&qword_27CAC50F0, type metadata accessor for ConnectSingDevicesAction);
    __swift_allocate_boxed_opaque_existential_1(__src);
    sub_21700D234();
    sub_216AE2770(__src, __dst);
  }

  v132 = v219;
  sub_21700C904();
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13A0);
  OUTLINED_FUNCTION_31_2(v132, 1, v133);
  v118 = v226;
  if (v68)
  {
    sub_216697664(v132, &qword_27CAC1398);
  }

  else
  {
    v134 = sub_216E9A4B0();
    OUTLINED_FUNCTION_50();
    (*(v135 + 8))(v132, v133);
    if (!v134)
    {
      v138 = a2 + v55[17];
      __src[0] = sub_21700C7C4();
      __src[1] = v139;
      sub_2166C32C0();
      sub_21700F364();
      sub_2166A6E54(__dst, v138 + *(v122 + 24), &qword_27CAB6DB0);
      v140 = (v138 + *(v122 + 28));
      sub_21700D7A4();
      *v140 = 0;
      v140[1] = 0;
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
      v136 = v138;
      v137 = 0;
      goto LABEL_41;
    }
  }

  v136 = a2 + v55[17];
  v137 = 1;
LABEL_41:
  __swift_storeEnumTagSinglePayload(v136, v137, 1, v122);
  sub_216697664(__dst, &qword_27CAB6DB0);
LABEL_42:
  v145 = a2;
  *(a2 + v55[7]) = v228;
  v146 = sub_21700C804();
  v148 = v147;
  v149 = sub_21700C774();
  v151 = v150;
  v152 = sub_21700C7A4();
  if (!v153)
  {
    v152 = sub_21700C794();
  }

  v154 = v152;
  v155 = v153;
  v156 = v220;
  sub_21700D234();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v118);
  v160 = v230;
  *v230 = v146;
  v160[1] = v148;
  v160[2] = v149;
  v160[3] = v151;
  v160[4] = v154;
  v160[5] = v155;
  *(v160 + 48) = 8;
  v160[7] = 0;
  *(v160 + 64) = 0;
  v161 = v221;
  sub_2166A6E54(v156, v221, &qword_27CABBE18);
  OUTLINED_FUNCTION_31_2(v161, 1, v118);
  if (v68)
  {
    v163 = v223;
    sub_21700D234();
    sub_216697664(v156, &qword_27CABBE18);
    OUTLINED_FUNCTION_31_2(v161, 1, v118);
    v162 = v225;
    v164 = v145;
    if (!v68)
    {
      sub_216697664(v161, &qword_27CABBE18);
    }
  }

  else
  {
    sub_216697664(v156, &qword_27CABBE18);
    v162 = v225;
    v163 = v223;
    (*(v225 + 32))(v223, v161, v118);
    v164 = v145;
  }

  v165 = v224;
  v166 = v230;
  (*(v162 + 32))(v230 + *(v224 + 40), v163, v118);
  v167 = v222;
  sub_216BCA36C(v166, v222);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v168, v169, v170, v165);
  sub_21678818C(v167, v164 + v55[9], &qword_27CABBE20);
  v171 = v227;
  v172 = v229;
  sub_21700C784();
  v173 = sub_216BCC3E4(v171);
  v175 = v174;
  sub_216697664(v171, &qword_27CAB74E8);
  v176 = (v164 + v55[8]);
  *v176 = v173;
  v176[1] = v175;
  v177 = sub_21700C924();
  v178 = sub_2170071D4();
  if (v178)
  {
    v179 = v178;
    v180 = (v164 + v55[13]);
    v181 = type metadata accessor for VideoArtwork();
    sub_21700C3F4();
    OUTLINED_FUNCTION_50();
    (*(v182 + 8))(v172, v177);
    *v180 = v179;
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v183, v184, v185, v181);
    v186 = v164;
  }

  else
  {
    OUTLINED_FUNCTION_50();
    (*(v187 + 8))(v172, v177);
    v186 = v164;
    type metadata accessor for VideoArtwork();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v188, v189, v190, v191);
  }

  type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v192, v193, v194, v195);
  sub_21700D7A4();
  OUTLINED_FUNCTION_38_2();
  result = __swift_storeEnumTagSinglePayload(v196, v197, v198, v199);
  v201 = (v186 + v55[11]);
  *v201 = 0;
  v201[1] = 0;
  *(v186 + v55[10]) = 0;
  *(v186 + v55[18]) = 10;
  return result;
}

uint64_t sub_216BCB944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v136 = a5;
  v130 = a4;
  v134 = a3;
  v137 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB810);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v135 = v10;
  v139 = sub_21700C894();
  OUTLINED_FUNCTION_1();
  v129 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5098);
  OUTLINED_FUNCTION_36(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v17);
  v133 = sub_21700BEC4();
  OUTLINED_FUNCTION_1();
  v126 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v21);
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v140 = v22;
  v141 = v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  OUTLINED_FUNCTION_36(v27);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v30 = &v124 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_36(v31);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  v34 = &v124 - v33;
  v142 = sub_21700C874();
  v143 = v35;
  v36 = type metadata accessor for PlaylistTrackLockup();
  sub_2166C32C0();
  sub_21700F364();
  OUTLINED_FUNCTION_48(a6 + v36[6]);
  v37 = sub_21700C8B4();
  v38 = (a6 + v36[7]);
  *v38 = v37;
  v38[1] = v39;
  v40 = a1;
  sub_21700C8C4();
  sub_21700C404();
  sub_21700C444();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  sub_216C7CDA8(v34, v30, a6 + v36[24]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978);
  v45 = swift_allocObject();
  v138 = xmmword_217013DA0;
  *(v45 + 16) = xmmword_217013DA0;
  v46 = sub_21700C844();
  v48 = v47;
  sub_217006214();
  v49 = sub_2170061F4();
  v51 = v50;
  v52 = *(v141 + 8);
  v131 = v26;
  v53 = v26;
  v54 = v52;
  v141 += 8;
  v52(v53, v140);
  *(v45 + 32) = v49;
  *(v45 + 40) = v51;
  *(v45 + 48) = v46;
  *(v45 + 56) = v48;
  *(v45 + 64) = 0u;
  *(v45 + 80) = 0u;
  *(v45 + 96) = 0;
  *(a6 + v36[8]) = v45;
  v55 = v40;
  v56 = sub_21700C834();
  if (v57)
  {
    v58 = v56;
    v59 = v57;
    v60 = swift_allocObject();
    *(v60 + 16) = v138;
    v61 = a6;
    v62 = v131;
    sub_217006214();
    v63 = sub_2170061F4();
    v65 = v64;
    v66 = v62;
    a6 = v61;
    v54(v66, v140);
    *(v60 + 32) = v63;
    *(v60 + 40) = v65;
    *(v60 + 48) = v58;
    *(v60 + 56) = v59;
    *(v60 + 64) = 0u;
    *(v60 + 80) = 0u;
    *(v60 + 96) = 0;
  }

  else
  {
    v60 = MEMORY[0x277D84F90];
  }

  *(a6 + v36[9]) = v60;
  v67 = v132;
  v68 = v55;
  sub_21700C854();
  v69 = v133;
  OUTLINED_FUNCTION_31_2(v67, 1, v133);
  v70 = v139;
  if (v71)
  {
    sub_216697664(v67, &qword_27CAC5098);
    *(a6 + v36[11]) = 0;
    v72 = v135;
  }

  else
  {
    v73 = v126;
    v74 = *(v126 + 32);
    v75 = v124;
    v74(v124, v67, v69);
    v76 = v125;
    v74(v125, v75, v69);
    v77 = v76;
    v78 = (*(v73 + 88))(v76, v69);
    v79 = v36[11];
    v72 = v135;
    if (v78 == *MEMORY[0x277CD8000])
    {
      *(a6 + v79) = 1;
    }

    else
    {
      *(a6 + v79) = 0;
      (*(v73 + 8))(v77, v69);
    }

    v70 = v139;
  }

  sub_21700D7A4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  v84 = COERCE_DOUBLE(sub_21700C8D4());
  v86 = v36[10];
  if (v85)
  {
    *(a6 + v86) = v84;
  }

  else
  {
    *(a6 + v86) = v84 * 1000.0;
  }

  *(a6 + v86 + 8) = v85 & 1;
  *(a6 + v36[12]) = 0;
  *(a6 + v36[13]) = v134 & 1;
  sub_21700C8A4();
  OUTLINED_FUNCTION_31_2(v72, 1, v70);
  if (v71)
  {
    sub_216697664(v72, &qword_27CABB810);
  }

  else
  {
    v87 = v129;
    v88 = *(v129 + 32);
    v89 = v127;
    v88(v127, v72, v70);
    v90 = v128;
    v88(v128, v89, v70);
    v91 = (*(v87 + 88))(v90, v70);
    v92 = *MEMORY[0x277CD8540];
    (*(v87 + 8))(v90, v70);
    if (v91 == v92)
    {
      v93 = 1;
      goto LABEL_20;
    }
  }

  v93 = 0;
LABEL_20:
  *(a6 + v36[18]) = v93;
  v94 = (a6 + v36[22]);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50E0);
  v94[3] = v95;
  v94[4] = sub_2166D9530(&qword_27CAC50E8, &qword_27CAC50E0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v94);
  v97 = sub_21700C8E4();
  v98 = *(v97 - 8);
  (*(v98 + 16))(boxed_opaque_existential_1, v68, v97);
  v99 = *(v95 + 52);
  v100 = sub_21700C924();
  v101 = *(v100 - 8);
  v102 = boxed_opaque_existential_1 + v99;
  v103 = v137;
  (*(v101 + 16))(v102, v137, v100);
  sub_21700D234();
  v104 = OUTLINED_FUNCTION_48(boxed_opaque_existential_1 + *(v95 + 60));
  if (v136)
  {
    (*(v101 + 8))(v103, v100, v104);
    (*(v98 + 8))(v68, v97);
    v105 = (a6 + v36[14]);
    *v105 = 0;
    v105[1] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518);
    inited = swift_initStackObject();
    v107 = MEMORY[0x277D83B88];
    *(inited + 16) = v138;
    v108 = MEMORY[0x277D83C10];
    *(inited + 56) = v107;
    *(inited + 64) = v108;
    *(inited + 32) = v130;
    v109 = sub_216983808(23);
    v111 = v110;
    (*(v101 + 8))(v103, v100);
    (*(v98 + 8))(v68, v97);
    v112 = (a6 + v36[14]);
    *v112 = v109;
    v112[1] = v111;
  }

  *&v113 = OUTLINED_FUNCTION_48(a6 + v36[20]);
  v114 = a6 + v36[19];
  *(v114 + 32) = 0;
  *v114 = v113;
  *(v114 + 16) = v113;
  *(a6 + v36[15]) = 0;
  *(a6 + v36[16]) = 0;
  v115 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v115);
  OUTLINED_FUNCTION_48(a6 + v36[21]);
  OUTLINED_FUNCTION_38_2();
  result = __swift_storeEnumTagSinglePayload(v119, v120, v121, v115);
  v123 = (a6 + v36[23]);
  *v123 = 0;
  v123[1] = 0;
  return result;
}

uint64_t sub_216BCC2D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21700C764();
  if (!v3)
  {
    v2 = sub_21700C7C4();
  }

  v4 = v2;
  v5 = v3;
  v6 = type metadata accessor for ContentDescriptor();
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_15_55();
  *(a1 + 88) = v4;
  *(a1 + 96) = v5;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
}

void sub_216BCC378()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_21700E4D4();
  [v0 setLocalizedDateFormatFromTemplate_];

  qword_27CAC50D8 = v0;
}

uint64_t sub_216BCC3E4(uint64_t a1)
{
  v119 = a1;
  v116 = sub_217005B54();
  OUTLINED_FUNCTION_1();
  v115 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v4);
  v5 = sub_217006304();
  OUTLINED_FUNCTION_1();
  v117 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v103 - v13;
  v15 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77();
  v21 = v19 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v103 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v103 - v26;
  sub_2166A6E54(v119, v14, &qword_27CAB74E8);
  OUTLINED_FUNCTION_31_2(v14, 1, v15);
  if (v28)
  {
    sub_216697664(v14, &qword_27CAB74E8);
    return 0;
  }

  v119 = v5;
  (*(v17 + 32))(v27, v14, v15);
  sub_2170062D4();
  (*(v17 + 16))(v25, v27, v15);
  sub_2170061A4();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50F8);
  v30 = sub_2170062F4();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  v34 = *(v33 + 72);
  v113 = v27;
  v35 = *(v31 + 80);
  v112 = v15;
  v36 = v10;
  v37 = (v35 + 32) & ~v35;
  v108 = v34;
  v109 = v29;
  v38 = swift_allocObject();
  v111 = xmmword_217013DA0;
  *(v38 + 16) = xmmword_217013DA0;
  v39 = *MEMORY[0x277CC9940];
  v40 = *(v32 + 104);
  v110 = v30;
  v107 = v40;
  v40(v38 + v37, v39, v30);
  sub_216F0FA7C(v38);
  v41 = v118;
  sub_2170062B4();

  v42 = sub_217005B14();
  if (v43)
  {
    v44 = 0;
  }

  else
  {
    v44 = v42;
  }

  if (v44 > 2)
  {
    OUTLINED_FUNCTION_67();
    v55(v41, v116);
    v56 = *(v17 + 8);
    v57 = v112;
    v56(v21, v112);
    v56(v25, v57);
    OUTLINED_FUNCTION_67();
    v58(v36, v119);
    v56(v113, v57);
    return 0;
  }

  v105 = v21;
  v106 = v25;
  v104 = v17;
  v45 = v112;
  if (v44 >= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518);
    inited = swift_initStackObject();
    v47 = MEMORY[0x277D83B88];
    *(inited + 16) = v111;
    v48 = MEMORY[0x277D83C10];
    *(inited + 56) = v47;
    *(inited + 64) = v48;
    *(inited + 32) = v44;
    sub_216983808(36);
    OUTLINED_FUNCTION_17_54();
    OUTLINED_FUNCTION_67();
    v49(v118, v116);
    v50 = *(v104 + 8);
    v51 = OUTLINED_FUNCTION_21_46(v120);
    v50(v51);
    v52 = OUTLINED_FUNCTION_21_46(v121);
    v50(v52);
    OUTLINED_FUNCTION_67();
    v53(v36, v119);
    v54 = OUTLINED_FUNCTION_21_46(v122);
    v50(v54);
    return v44;
  }

  v60 = swift_allocObject();
  *(v60 + 16) = v111;
  v107(v60 + v37, *MEMORY[0x277CC9968], v110);
  sub_216F0FA7C(v60);
  v61 = v114;
  v62 = v106;
  v63 = v105;
  sub_2170062B4();

  v44 = v61;
  v64 = sub_217005B24();
  if (v65)
  {
    v66 = 0;
  }

  else
  {
    v66 = v64;
  }

  v67 = v45;
  if (v66 <= 1)
  {
    v68 = v104;
    v69 = v113;
    if ((v66 & 0x8000000000000000) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518);
      v70 = swift_initStackObject();
      v71 = MEMORY[0x277D83B88];
      *(v70 + 16) = v111;
      v72 = MEMORY[0x277D83C10];
      *(v70 + 56) = v71;
      *(v70 + 64) = v72;
      *(v70 + 32) = v66;
      sub_216983808(33);
      OUTLINED_FUNCTION_17_54();
      v74 = *(*(v73 - 256) + 8);
      v75 = v63;
      v76 = v116;
      v74(v114, v116);
      v74(v118, v76);
      v77 = *(v68 + 8);
      v77(v75, v67);
      v78 = OUTLINED_FUNCTION_59_12(v121);
      (v77)(v78);
      v79 = OUTLINED_FUNCTION_14_57();
      v80(v79);
      v81 = OUTLINED_FUNCTION_59_12(v122);
      (v77)(v81);
      return v44;
    }

    v97 = *(v115 + 8);
    v98 = v116;
    v97(v114, v116);
    v97(v118, v98);
    v99 = *(v68 + 8);
    v99(v63, v67);
    v100 = OUTLINED_FUNCTION_59_12(v121);
    (v99)(v100);
    v101 = OUTLINED_FUNCTION_14_57();
    v102(v101);
    v99(v69, v67);
    return 0;
  }

  v82 = v104;
  if (qword_27CAB5F38 != -1)
  {
    swift_once();
  }

  v83 = qword_27CAC50D8;
  v84 = sub_217006134();
  v85 = [v83 stringFromDate_];

  v44 = sub_21700E514();
  v87 = v86;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518);
  v88 = swift_initStackObject();
  *(v88 + 16) = v111;
  *(v88 + 56) = MEMORY[0x277D837D0];
  *(v88 + 64) = sub_2167C6E08();
  *(v88 + 32) = v44;
  *(v88 + 40) = v87;
  sub_216983808(34);
  OUTLINED_FUNCTION_17_54();
  v90 = *(*(v89 - 256) + 8);
  v90(v114, v116);
  v91 = OUTLINED_FUNCTION_21_46(&v123);
  (v90)(v91);
  v92 = *(v82 + 8);
  v93 = OUTLINED_FUNCTION_59_12(v120);
  v92(v93);
  (v92)(v62, v67);
  v94 = OUTLINED_FUNCTION_14_57();
  v95(v94);
  v96 = OUTLINED_FUNCTION_59_12(v122);
  v92(v96);
  return v44;
}

uint64_t sub_216BCCD48()
{
  v0 = sub_21700C8E4();
  OUTLINED_FUNCTION_1();
  v41 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13B0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1398);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13A0);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - v22;
  sub_21700C904();
  OUTLINED_FUNCTION_31_2(v13, 1, v14);
  if (v24)
  {
    sub_216697664(v13, &qword_27CAC1398);
    return 0;
  }

  (*(v16 + 32))(v23, v13, v14);
  if (sub_216E9A4B0())
  {
    (*(v16 + 8))(v23, v14);
    return 0;
  }

  v39 = v23;
  v40 = v16;
  (*(v16 + 16))(v20, v23, v14);
  sub_2166D9530(&qword_27CAC13A8, &qword_27CAC13A0);
  sub_21700E754();
  v26 = *(v6 + 36);
  OUTLINED_FUNCTION_3_15();
  sub_2166D9530(v27, &qword_27CAC13A0);
  v28 = (v41 + 16);
  v29 = (v41 + 8);
  for (i = 0.0; ; i = i + v35)
  {
    sub_21700EC94();
    if (*&v9[v26] == v42[0])
    {
      break;
    }

    v31 = sub_21700ECE4();
    (*v28)(v5);
    v31(v42, 0);
    sub_21700ECA4();
    v32 = sub_21700C8D4();
    v34 = v33;
    (*v29)(v5, v0);
    v35 = *&v32;
    if (v34)
    {
      v35 = 0.0;
    }
  }

  sub_216697664(v9, &qword_27CAC13B0);
  v36 = v39;
  sub_21700EC54();
  sub_21700EC94();
  v37 = sub_21700EC84();
  v25 = sub_2167C68C0(v37, 0, *&i, 0);
  (*(v40 + 8))(v36, v14);
  return v25;
}

uint64_t sub_216BCD190(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_216BCD1F4()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v59 = v2;
  v3 = type metadata accessor for GradientListRowView();
  v4 = OUTLINED_FUNCTION_2(v3);
  v58 = v5;
  v57[1] = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5118) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5120) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5128) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v57[0] = v57 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5130) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v23 = v57 - v22;
  *v12 = sub_2170093C4();
  *(v12 + 1) = 0x4018000000000000;
  v12[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5138);
  sub_216BCD700(v1, &v12[*(v24 + 44)]);
  v25 = sub_217009C84();
  sub_217007F24();
  v26 = &v12[*(v9 + 44)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v12, v16, &qword_27CAC5118);
  memcpy(&v16[*(v13 + 44)], v60, 0x70uLL);
  v31 = sub_21700B354();
  v33 = v32;
  sub_216BD0528(v1, v8);
  v34 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v35 = swift_allocObject();
  v36 = sub_216BD0580(v8, v35 + v34);
  v37 = sub_216BCF0C4(v36);
  LOBYTE(v1) = sub_217009C84();
  v38 = v16;
  v39 = v57[0];
  sub_2167C5834(v38, v57[0], &qword_27CAC5120);
  v40 = v39 + *(v17 + 44);
  *v40 = sub_216BCFB18;
  *(v40 + 8) = v35;
  *(v40 + 16) = v37;
  *(v40 + 24) = v1;
  *(v40 + 32) = v31;
  *(v40 + 40) = v33;
  v41 = &v23[*(v20 + 44)];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440);
  v43 = &v41[*(v42 + 36)];
  v44 = *(sub_217008B44() + 20);
  v45 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_34();
  (*(v46 + 104))(&v43[v44], v45);
  __asm { FMOV            V0.2D, #14.0 }

  *v43 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v52 = qword_280E73AA0;
  v53 = byte_280E73AA8;
  v54 = qword_280E73AB0;
  v55 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5140) + 36)];
  sub_216BD0528(v43, v55);
  *(v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)) = 256;
  sub_2167C5834(v39, v23, &qword_27CAC5128);
  *v41 = v52;
  v41[8] = v53;
  *(v41 + 2) = v54;
  v56 = &v41[*(v42 + 40)];
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  sub_2167C5834(v23, v59, &qword_27CAC5130);

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216BCD700@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5148);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for GradientListRowView();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5150);
  MEMORY[0x28223BE20](v10);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5158);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v37 = *a1;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5160);
  sub_2166D9530(&qword_27CAC5168, &qword_27CAC5160);
  sub_2170075C4();
  swift_getKeyPath();
  v15 = a1;
  sub_216BD0528(a1, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v17 = swift_allocObject();
  sub_216BD0580(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_216BCFBCC;
  *(v18 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5170);
  sub_2166D9530(&qword_27CAC5178, &qword_27CAC5150);
  sub_216BCFC98();
  v19 = v14;
  v30 = v14;
  sub_21700B154();
  *v7 = sub_2170091A4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5188);
  sub_216BCDD48(v15, &v7[*(v20 + 44)]);
  v21 = v32;
  v22 = v33;
  v23 = *(v32 + 16);
  v24 = v34;
  v23(v33, v19, v34);
  v25 = v35;
  sub_216683A80(v7, v35, &qword_27CAC5148);
  v26 = v36;
  v23(v36, v22, v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5190);
  sub_216683A80(v25, &v26[*(v27 + 48)], &qword_27CAC5148);
  sub_2166997CC(v7, &qword_27CAC5148);
  v28 = *(v21 + 8);
  v28(v30, v24);
  sub_2166997CC(v25, &qword_27CAC5148);
  return (v28)(v22, v24);
}

uint64_t sub_216BCDBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_21700DF14();
  v11 = sub_217009D34();
  v12 = swift_getKeyPath();
  v16 = 0;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = 0;
  __src[3] = MEMORY[0x277D84F90];
  __src[4] = KeyPath;
  __src[5] = 2;
  LOBYTE(__src[6]) = 0;
  __src[7] = v12;
  __src[8] = v11;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C48);
  sub_21699188C();
  sub_21700A304();
  memcpy(__dst, __src, sizeof(__dst));
  sub_2166997CC(__dst, &qword_27CAB8C48);
  v13 = 1.0 - 1.0 / *(*a4 + 16) * a1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5170);
  *(a5 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_216BCDD48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v85 = a2;
  v78 = sub_217009354();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for GradientListRowView();
  v69 = *(v80 - 8);
  v4 = *(v69 + 64);
  MEMORY[0x28223BE20](v80);
  v70 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5198);
  MEMORY[0x28223BE20](v72);
  v71 = &v69 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51A0);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v69 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51A8);
  MEMORY[0x28223BE20](v82);
  v81 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51B0);
  v83 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v79 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9328);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v69 - v11);
  v13 = type metadata accessor for ShareAccessoryButton();
  MEMORY[0x28223BE20](v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51B8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v69 - v20;
  v22 = *(type metadata accessor for GradientListRowModel() + 32);
  v23 = a1;
  sub_216683A80(a1 + v22, &v88, &qword_27CAB8E60);
  if (!v90)
  {
    sub_2166997CC(&v88, &qword_27CAB8E60);
LABEL_12:
    v61 = v21;
    v62 = 1;
    v63 = v8;
    goto LABEL_13;
  }

  v84 = v8;
  v24 = v88;
  sub_2168269C4(&v88);
  v25 = v24 == 2;
  v8 = v84;
  if (!v25)
  {
    goto LABEL_12;
  }

  v26 = a1 + v22;
  v27 = a1;
  sub_216683A80(v26, &v88, &qword_27CAB8E60);
  if (!v90)
  {
    sub_2166997CC(&v88, &qword_27CAB8E60);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    goto LABEL_10;
  }

  sub_216826960(&v88 + 8, v87);
  sub_2168269C4(&v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330);
  v28 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v12, v28 ^ 1u, 1, v13);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
LABEL_10:
    v64 = &qword_27CAB9328;
    v65 = v12;
LABEL_11:
    sub_2166997CC(v65, v64);
    v8 = v84;
    goto LABEL_12;
  }

  v29 = v15;
  sub_216BD0580(v12, v15);
  sub_216683A80(&v15[*(v13 + 24)], &v88, &qword_27CAB6DB0);
  if (!*(&v89 + 1))
  {
    sub_216BCFD60(v15);
    v64 = &qword_27CAB6DB0;
    v65 = &v88;
    goto LABEL_11;
  }

  sub_2166A0F18(&v88, v87);
  v30 = v70;
  sub_216BD0528(v23, v70);
  sub_2167B7D58(v87, &v88);
  v31 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v32 = (v4 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_216BD0580(v30, v33 + v31);
  v34 = sub_2166A0F18(&v88, v33 + v32);
  MEMORY[0x28223BE20](v34);
  *(&v69 - 2) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51C8);
  sub_216BCFE44();
  v35 = v71;
  sub_21700AF14();
  v70 = v29;
  v36 = (v27 + *(v80 + 24));
  v37 = *v36;
  v38 = *(v36 + 1);
  LOBYTE(v88) = v37;
  *(&v88 + 1) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEB4();
  LOBYTE(v31) = v86;
  KeyPath = swift_getKeyPath();
  v40 = swift_allocObject();
  *(v40 + 16) = v31;
  v41 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51E8) + 36));
  *v41 = KeyPath;
  v41[1] = sub_2167D2420;
  v41[2] = v40;
  v42 = [objc_opt_self() labelColor];
  v43 = sub_21700AC44();
  v44 = swift_getKeyPath();
  v45 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51F0) + 36));
  *v45 = v44;
  v45[1] = v43;
  v46 = sub_217009E54();
  v47 = swift_getKeyPath();
  v48 = v72;
  v49 = (v35 + *(v72 + 36));
  *v49 = v47;
  v49[1] = v46;
  sub_217009D94();
  v50 = sub_216BCFFB4();
  v51 = v73;
  sub_21700A304();
  sub_2166997CC(v35, &qword_27CAC5198);
  v52 = v76;
  sub_217009344();
  *&v88 = v48;
  *(&v88 + 1) = v50;
  swift_getOpaqueTypeConformance2();
  sub_216BD0BCC(&qword_27CAB9D40, MEMORY[0x277CDDEE0]);
  v53 = v81;
  v54 = v75;
  v55 = v78;
  sub_21700A364();
  (*(v77 + 8))(v52, v55);
  (*(v74 + 8))(v51, v54);
  v56 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5220) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A60);
  sub_217008BE4();
  *v56 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  sub_2170082C4();
  sub_2170082C4();
  sub_21700B3B4();
  sub_2170083C4();
  v57 = (v53 + *(v82 + 36));
  v58 = v89;
  *v57 = v88;
  v57[1] = v58;
  v57[2] = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA420);
  sub_216BD0208();
  sub_2166D9530(&qword_280E2A5E0, &qword_27CABA420);
  v59 = v79;
  sub_21700A944();
  sub_2166997CC(v53, &qword_27CAC51A8);
  __swift_destroy_boxed_opaque_existential_1Tm(v87);
  sub_216BCFD60(v70);
  v60 = v84;
  (*(v83 + 32))(v21, v59, v84);
  v61 = v21;
  v62 = 0;
  v63 = v60;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v61, v62, 1, v63);
  sub_216683A80(v21, v18, &qword_27CAC51B8);
  v66 = v85;
  *v85 = 0;
  *(v66 + 8) = 1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51C0);
  sub_216683A80(v18, v66 + *(v67 + 48), &qword_27CAC51B8);
  sub_2166997CC(v21, &qword_27CAC51B8);
  return sub_2166997CC(v18, &qword_27CAC51B8);
}

uint64_t sub_216BCE900(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GradientListRowView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  v12 = v2 + *(v5 + 32);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v22[0]) = v13;
  *(&v22[0] + 1) = v14;
  v23 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEC4();
  v15 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
  sub_216BD0528(v2, v8);
  sub_2167B7D58(a1, v22);
  sub_21700EA34();
  v16 = sub_21700EA24();
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  sub_216BD0580(v8, v19 + v17);
  sub_2166A0F18(v22, v19 + v18);
  sub_21677E228();
}

uint64_t sub_216BCEB38(uint64_t a1)
{
  v2 = sub_21700ADC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5238);
  MEMORY[0x28223BE20](v6);
  v8 = &v27[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51E0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27[-v10];
  v12 = (a1 + *(type metadata accessor for GradientListRowView() + 24));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v28) = v13;
  v29 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEB4();
  if (v27[15] == 1)
  {
    sub_217008294();
    v15 = [objc_opt_self() labelColor];
    v16 = sub_21700AC44();
    KeyPath = swift_getKeyPath();
    v28 = v16;
    v18 = sub_2170083D4();
    v19 = &v11[*(v9 + 36)];
    *v19 = KeyPath;
    v19[1] = v18;
    sub_216683A80(v11, v8, &qword_27CAC51E0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FA8);
    sub_216BCFED0();
    sub_216ADD68C();
    sub_217009554();
    return sub_2166997CC(v11, &qword_27CAC51E0);
  }

  else
  {
    sub_21700ADB4();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v21 = sub_21700AE04();

    (*(v3 + 8))(v5, v2);
    v22 = sub_217009CA4();
    sub_217007F24();
    *v8 = v21;
    *(v8 + 1) = 0;
    *(v8 + 8) = 1;
    v8[24] = v22;
    *(v8 + 4) = v23;
    *(v8 + 5) = v24;
    *(v8 + 6) = v25;
    *(v8 + 7) = v26;
    v8[64] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FA8);
    sub_216BCFED0();
    sub_216ADD68C();
    return sub_217009554();
  }
}

uint64_t sub_216BCEEE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2170080D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for GradientListRowView() + 40)))
  {

    sub_216C0C924(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24, v25, v26, *(&v26 + 1), v27, v28, v29, v30, v31, v32);
    v16 = sub_216E50F58(0, v7);

    (*(v5 + 8))(v7, v4);
    sub_217008444();
    sub_217008444();
    sub_21700B354();
    result = sub_2170083C4();
    v18 = v22;
    v19 = v23;
    v20 = v24;
    v21 = v25;
    *a2 = v16;
    *(a2 + 8) = v18;
    *(a2 + 16) = v19;
    *(a2 + 24) = v20;
    *(a2 + 32) = v21;
    *(a2 + 40) = v26;
  }

  else
  {
    type metadata accessor for ReplayGradientImageGenerator();
    sub_216BD0BCC(qword_280E31F28, type metadata accessor for ReplayGradientImageGenerator);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216BCF25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF360);
  v5[20] = swift_task_alloc();
  sub_21700EA34();
  v5[21] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x2822009F8](sub_216BCF32C, v7, v6);
}

uint64_t sub_216BCF5B4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  *(*v1 + 208) = v0;

  sub_2166997CC(v3, &qword_27CABF360);
  v4 = *(v2 + 184);
  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_216BCF7D0;
  }

  else
  {
    v6 = sub_216BCF71C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_216BCF71C()
{
  v1 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_13_45();
  *(v1 + 128) = v2;
  *(v0 + 136) = v3;
  *(v0 + 218) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216BCF7D0()
{
  v1 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_13_45();
  *(v1 + 112) = v2;
  *(v0 + 120) = v3;
  *(v0 + 217) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216BCF88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216BD0580(a1, a2);
  v3 = type metadata accessor for GradientListRowView();
  sub_2167CD8D8();
  sub_2170082B4();
  v4 = a2 + v3[6];
  sub_21700AEA4();
  *v4 = 0;
  *(v4 + 8) = v11;
  v5 = a2 + v3[7];
  *v5 = swift_getKeyPath();
  *(v5 + 40) = 0;
  v6 = v3[8];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v7 = v3[9];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + v3[10]);
  type metadata accessor for ReplayGradientImageGenerator();
  sub_216BD0BCC(qword_280E31F28, type metadata accessor for ReplayGradientImageGenerator);
  result = sub_217008CF4();
  *v8 = result;
  v8[1] = v10;
  return result;
}

uint64_t sub_216BCFA20()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC5100);
  __swift_project_value_buffer(v0, qword_27CAC5100);
  type metadata accessor for GradientListRowView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5240);
  sub_21700E5B4();
  return sub_217007C94();
}

uint64_t type metadata accessor for GradientListRowView()
{
  result = qword_280E3DEC0;
  if (!qword_280E3DEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216BCFB18@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GradientListRowView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216BCEEE4(v4, a1);
}

uint64_t sub_216BCFBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for GradientListRowView() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_216BCDBF4(a1, a2, a3, v10, a4);
}

unint64_t sub_216BCFC98()
{
  result = qword_27CAC5180;
  if (!qword_27CAC5180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5170);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C48);
    sub_21699188C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5180);
  }

  return result;
}

uint64_t sub_216BCFD60(uint64_t a1)
{
  v2 = type metadata accessor for ShareAccessoryButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216BCFDBC()
{
  v1 = type metadata accessor for GradientListRowView();
  OUTLINED_FUNCTION_2(v1);
  return sub_216BCE900(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
}

unint64_t sub_216BCFE44()
{
  result = qword_27CAC51D0;
  if (!qword_27CAC51D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC51C8);
    sub_216BCFED0();
    sub_216ADD68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC51D0);
  }

  return result;
}

unint64_t sub_216BCFED0()
{
  result = qword_27CAC51D8;
  if (!qword_27CAC51D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC51E0);
    sub_2166D9530(&qword_27CAB7BC8, &qword_27CAB7BD0);
    sub_2166D9530(&qword_27CAB7CD8, &qword_27CAB7CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC51D8);
  }

  return result;
}

unint64_t sub_216BCFFB4()
{
  result = qword_27CAC51F8;
  if (!qword_27CAC51F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5198);
    sub_216BD006C();
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC51F8);
  }

  return result;
}

unint64_t sub_216BD006C()
{
  result = qword_27CAC5200;
  if (!qword_27CAC5200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC51F0);
    sub_216BD0124();
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5200);
  }

  return result;
}

unint64_t sub_216BD0124()
{
  result = qword_27CAC5208;
  if (!qword_27CAC5208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC51E8);
    sub_2166D9530(&qword_27CAC5210, &qword_27CAC5218);
    sub_2166D9530(&qword_280E2A6E0, &qword_27CABF2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5208);
  }

  return result;
}

unint64_t sub_216BD0208()
{
  result = qword_27CAC5228;
  if (!qword_27CAC5228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC51A8);
    sub_216BD0294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5228);
  }

  return result;
}

unint64_t sub_216BD0294()
{
  result = qword_27CAC5230;
  if (!qword_27CAC5230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC51A0);
    sub_217009354();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5198);
    sub_216BCFFB4();
    swift_getOpaqueTypeConformance2();
    sub_216BD0BCC(&qword_27CAB9D40, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A728, &qword_27CAB8A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5230);
  }

  return result;
}

uint64_t sub_216BD0414(uint64_t a1)
{
  v4 = type metadata accessor for GradientListRowView();
  OUTLINED_FUNCTION_2(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2167AF644;

  return sub_216BCF25C(a1, v9, v10, v1 + v6, v1 + v8);
}

uint64_t sub_216BD0528(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216BD0580(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

void sub_216BD0600()
{
  type metadata accessor for GradientListRowModel();
  if (v0 <= 0x3F)
  {
    sub_2167D1C30();
    if (v1 <= 0x3F)
    {
      sub_216854FAC();
      if (v2 <= 0x3F)
      {
        sub_21680D428();
        if (v3 <= 0x3F)
        {
          sub_216A8AFBC(319, &qword_280E2B4C0, MEMORY[0x277D7EC08]);
          if (v4 <= 0x3F)
          {
            sub_216A8AFBC(319, &qword_280E2B460, MEMORY[0x277CDF3E0]);
            if (v5 <= 0x3F)
            {
              sub_216ADE664();
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

unint64_t sub_216BD0734()
{
  result = qword_27CAC5248;
  if (!qword_27CAC5248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5130);
    sub_216BD07EC();
    sub_2166D9530(qword_280E382B8, &qword_27CAB7440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5248);
  }

  return result;
}

unint64_t sub_216BD07EC()
{
  result = qword_27CAC5250;
  if (!qword_27CAC5250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5258);
    sub_216BD0878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5250);
  }

  return result;
}

unint64_t sub_216BD0878()
{
  result = qword_27CAC5260;
  if (!qword_27CAC5260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5140);
    sub_216BD0930();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5260);
  }

  return result;
}

unint64_t sub_216BD0930()
{
  result = qword_27CAC5268;
  if (!qword_27CAC5268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5128);
    sub_216BD09E8();
    sub_2166D9530(&qword_27CAC5290, &qword_27CAC5298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5268);
  }

  return result;
}

unint64_t sub_216BD09E8()
{
  result = qword_27CAC5270;
  if (!qword_27CAC5270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5120);
    sub_216BD0A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5270);
  }

  return result;
}

unint64_t sub_216BD0A74()
{
  result = qword_27CAC5278;
  if (!qword_27CAC5278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5118);
    sub_2166D9530(&qword_27CAC5280, &qword_27CAC5288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5278);
  }

  return result;
}

uint64_t sub_216BD0B74(uint64_t a1)
{
  result = sub_216BD0BCC(qword_280E3DED8, type metadata accessor for GradientListRowView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BD0BCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216BD0D30(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  sub_21700BE44();
  sub_21700BE34();
  v7 = OUTLINED_FUNCTION_110();
  a2(v7);
  sub_216BD3128(a3, a4);
  v8 = sub_21700BD14();

  return v8;
}

uint64_t sub_216BD0E20(uint64_t a1, void (*a2)(uint64_t))
{
  sub_21700BE44();
  sub_21700BE34();
  v3 = OUTLINED_FUNCTION_110();
  a2(v3);
  v4 = sub_21700BD14();

  return v4;
}

uint64_t sub_216BD0E8C()
{
  v1 = sub_217009684();
  v2 = OUTLINED_FUNCTION_36(v1);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52A0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  sub_217009634();
  v13 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52A8);
  sub_2166D9530(&qword_27CAC52B0, &qword_27CAC52A8);
  sub_217008B94();
  OUTLINED_FUNCTION_3_14();
  v10 = sub_2166D9530(v9, &qword_27CAC52A0);
  MEMORY[0x21CE9A570](v8, v3, v10);
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_216BD1054@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52C0);
  v19 = *(v1 - 8);
  v2 = v19;
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  sub_216BD129C(&v19 - v12);
  sub_216BD269C();
  sub_2168282D4(v13, v10, &qword_27CAC52C8);
  v14 = *(v2 + 16);
  v14(v4, v7, v1);
  v15 = v20;
  sub_2168282D4(v10, v20, &qword_27CAC52C8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52D0);
  v14((v15 + *(v16 + 48)), v4, v1);
  v17 = *(v19 + 8);
  v17(v7, v1);
  sub_2166997CC(v13, &qword_27CAC52C8);
  v17(v4, v1);
  return sub_2166997CC(v10, &qword_27CAC52C8);
}

uint64_t sub_216BD129C@<X0>(uint64_t a1@<X8>)
{
  v131 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52D8);
  MEMORY[0x28223BE20](v116);
  v117 = &v98 - v1;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52E0);
  MEMORY[0x28223BE20](v135);
  v114 = &v98 - v2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52E8);
  MEMORY[0x28223BE20](v109);
  v111 = (&v98 - v3);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52F0);
  MEMORY[0x28223BE20](v115);
  v112 = &v98 - v4;
  v113 = sub_21700BA44();
  v121 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v107 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v105 = &v98 - v7;
  v106 = v8;
  MEMORY[0x28223BE20](v9);
  v120 = &v98 - v10;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52F8);
  MEMORY[0x28223BE20](v101);
  v102 = (&v98 - v11);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5300);
  MEMORY[0x28223BE20](v126);
  v103 = &v98 - v12;
  v104 = sub_2170073D4();
  v110 = *(v104 - 8);
  v13 = *(v110 + 64);
  MEMORY[0x28223BE20](v104);
  v100 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = &v98 - v15;
  MEMORY[0x28223BE20](v16);
  v108 = &v98 - v17;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5308);
  MEMORY[0x28223BE20](v132);
  v134 = &v98 - v18;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5310);
  MEMORY[0x28223BE20](v123);
  v124 = &v98 - v19;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5318);
  MEMORY[0x28223BE20](v133);
  v125 = &v98 - v20;
  v21 = sub_217009354();
  v128 = *(v21 - 8);
  v129 = v21;
  MEMORY[0x28223BE20](v21);
  v127 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5320);
  MEMORY[0x28223BE20](v23);
  v25 = &v98 - v24;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5328);
  MEMORY[0x28223BE20](v122);
  v119 = &v98 - v26;
  v118 = sub_217006B84();
  v136 = *(v118 - 8);
  v27 = *(v136 + 64);
  MEMORY[0x28223BE20](v118);
  MEMORY[0x28223BE20](v28);
  v30 = &v98 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v98 - v32;
  v34 = sub_2170067A4();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for GenericMusicItemToolbarContent(0);
  (*(v35 + 16))(v37, &v130[*(v38 + 20)], v34);
  v39 = (*(v35 + 88))(v37, v34);
  if (v39 == *MEMORY[0x277D2A3B0])
  {
    (*(v35 + 96))(v37, v34);
    v40 = v136;
    v41 = *(v136 + 32);
    v98 = v33;
    v130 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = v118;
    v41(v33, v37);
    v43 = *(v40 + 16);
    v43(v30, v33, v42);
    *v25 = swift_getKeyPath();
    v25[40] = 0;
    v44 = v23[13];
    *&v25[v44] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    swift_storeEnumTagMultiPayload();
    sub_217007C94();
    v43(&v25[v23[15]], v30, v42);
    v25[v23[16]] = 0;
    v45 = v130;
    v46 = v42;
    (v41)(v130, v30, v42);
    v47 = (*(v136 + 80) + 16) & ~*(v136 + 80);
    v48 = swift_allocObject();
    (v41)(v48 + v47, v45, v42);
    v49 = &v25[v23[14]];
    *v49 = sub_216BD36D4;
    *(v49 + 1) = v48;
    v49[16] = 0;
    v50 = v127;
    sub_217009344();
    sub_2166D9530(&qword_27CAC5350, &qword_27CAC5320);
    sub_216BD3128(&qword_27CAB9D40, MEMORY[0x277CDDEE0]);
    v51 = v119;
    v52 = v129;
    sub_21700A364();
    (*(v128 + 8))(v50, v52);
    v53 = (v51 + *(v122 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A60);
    sub_217008BE4();
    sub_2166997CC(v25, &qword_27CAC5320);
    *v53 = swift_getKeyPath();
    sub_2168282D4(v51, v124, &qword_27CAC5328);
    swift_storeEnumTagMultiPayload();
    sub_216BD31FC();
    sub_216BD3374();
    v54 = v125;
    sub_217009554();
    sub_2168282D4(v54, v134, &qword_27CAC5318);
    swift_storeEnumTagMultiPayload();
    sub_216BD3170();
    sub_216BD34EC();
    sub_217009554();
    sub_2166997CC(v54, &qword_27CAC5318);
    sub_2166997CC(v51, &qword_27CAC5328);
    return (*(v136 + 8))(v98, v46);
  }

  if (v39 == *MEMORY[0x277D2A3B8])
  {
    (*(v35 + 96))(v37, v34);
    v56 = v120;
    v57 = v121;
    v58 = *(v121 + 32);
    v59 = v113;
    v58(v120, v37, v113);
    v60 = *(v57 + 16);
    v61 = v105;
    v60(v105, v56, v59);
    KeyPath = swift_getKeyPath();
    v63 = v111;
    *v111 = KeyPath;
    *(v63 + 40) = 0;
    v64 = v109;
    v65 = *(v109 + 52);
    *(v63 + v65) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    swift_storeEnumTagMultiPayload();
    sub_217007C94();
    v60((v63 + v64[15]), v61, v59);
    *(v63 + v64[16]) = 0;
    v66 = v107;
    v58(v107, v61, v59);
    v67 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v68 = swift_allocObject();
    v58((v68 + v67), v66, v59);
    v69 = v63 + v64[14];
    *v69 = sub_216BD3578;
    *(v69 + 8) = v68;
    *(v69 + 16) = 0;
    v70 = v127;
    sub_217009344();
    sub_2166D9530(&qword_27CAC5338, &qword_27CAC52E8);
    sub_216BD3128(&qword_27CAB9D40, MEMORY[0x277CDDEE0]);
    v71 = v112;
    v72 = v129;
    sub_21700A364();
    (*(v128 + 8))(v70, v72);
    v73 = (v71 + *(v115 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A60);
    sub_217008BE4();
    sub_2166997CC(v63, &qword_27CAC52E8);
    *v73 = swift_getKeyPath();
    sub_2168282D4(v71, v117, &qword_27CAC52F0);
    swift_storeEnumTagMultiPayload();
    sub_216BD2FB0();
    v74 = v114;
    sub_217009554();
    sub_2168282D4(v74, v134, &qword_27CAC52E0);
    swift_storeEnumTagMultiPayload();
    sub_216BD3170();
    sub_216BD34EC();
    sub_217009554();
    sub_2166997CC(v74, &qword_27CAC52E0);
    sub_2166997CC(v71, &qword_27CAC52F0);
    v75 = v120;
    v76 = *(v121 + 8);
  }

  else
  {
    v77 = v134;
    if (v39 != *MEMORY[0x277D2A458])
    {
      swift_storeEnumTagMultiPayload();
      sub_216BD2FB0();
      v97 = v114;
      sub_217009554();
      sub_2168282D4(v97, v77, &qword_27CAC52E0);
      swift_storeEnumTagMultiPayload();
      sub_216BD3170();
      sub_216BD34EC();
      sub_217009554();
      sub_2166997CC(v97, &qword_27CAC52E0);
      return (*(v35 + 8))(v37, v34);
    }

    (*(v35 + 96))(v37, v34);
    v78 = v110;
    v79 = *(v110 + 32);
    v80 = v108;
    v59 = v104;
    v79(v108, v37, v104);
    v81 = *(v78 + 16);
    v82 = v99;
    v81(v99, v80, v59);
    v83 = swift_getKeyPath();
    v84 = v102;
    *v102 = v83;
    *(v84 + 40) = 0;
    v85 = v101;
    v86 = *(v101 + 52);
    *(v84 + v86) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    swift_storeEnumTagMultiPayload();
    sub_217007C94();
    v81((v84 + v85[15]), v82, v59);
    *(v84 + v85[16]) = 0;
    v87 = v100;
    v79(v100, v82, v59);
    v88 = v110;
    v89 = (*(v110 + 80) + 16) & ~*(v110 + 80);
    v90 = swift_allocObject();
    v79((v90 + v89), v87, v59);
    v91 = v84 + v85[14];
    *v91 = sub_216BD35D0;
    *(v91 + 8) = v90;
    *(v91 + 16) = 0;
    v92 = v127;
    sub_217009344();
    sub_2166D9530(&qword_27CAC5360, &qword_27CAC52F8);
    sub_216BD3128(&qword_27CAB9D40, MEMORY[0x277CDDEE0]);
    v93 = v103;
    v94 = v129;
    sub_21700A364();
    (*(v128 + 8))(v92, v94);
    v95 = (v93 + *(v126 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A60);
    sub_217008BE4();
    sub_2166997CC(v84, &qword_27CAC52F8);
    *v95 = swift_getKeyPath();
    sub_2168282D4(v93, v124, &qword_27CAC5300);
    swift_storeEnumTagMultiPayload();
    sub_216BD31FC();
    sub_216BD3374();
    v96 = v125;
    sub_217009554();
    sub_2168282D4(v96, v134, &qword_27CAC5318);
    swift_storeEnumTagMultiPayload();
    sub_216BD3170();
    sub_216BD34EC();
    sub_217009554();
    sub_2166997CC(v96, &qword_27CAC5318);
    sub_2166997CC(v93, &qword_27CAC5300);
    v76 = *(v88 + 8);
    v75 = v108;
  }

  return v76(v75, v59);
}

uint64_t sub_216BD269C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_21700D8E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenericMusicItemToolbarContent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_216BD2EAC(v1, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_216BD2F58(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v22 = sub_216BD2E44;
  v23 = v13;
  memset(v21, 0, sizeof(v21));
  sub_216919014(v1, v4);
  v14 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v4, 1, v14) != 1)
  {
    if (!*(v4 + 12))
    {
      if (!*(v4 + 4))
      {
        sub_216BD2F04(v4, type metadata accessor for ContentDescriptor);
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    v15 = sub_21700BA64();
    v17 = v16;
    sub_216BD2F04(v4, type metadata accessor for ContentDescriptor);
    *(&v20 + 1) = MEMORY[0x277CD7E90];
    *&v19 = v15;
    *(&v19 + 1) = v17;
    goto LABEL_8;
  }

  sub_2166997CC(v4, &qword_27CAB6A00);
LABEL_3:
  v19 = 0u;
  v20 = 0u;
LABEL_8:
  sub_21700D854();
  sub_2166997CC(v21, &unk_27CABF7A0);
  sub_2166997CC(&v19, &unk_27CABF7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF178);
  sub_2166D9530(&qword_27CABF180, &qword_27CABF178);
  sub_21700A204();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_216BD2A54@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)@<X8>)
{
  v36 = a2;
  v34 = sub_2170067A4();
  v3 = *(v34 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for MenuConfiguration(0);
  v12 = (v11 - 8);
  v32 = *(v11 - 8);
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = type metadata accessor for GenericMusicItemToolbarContent(0);
  v19 = *(v18 + 20);
  v20 = type metadata accessor for ContentDescriptor();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
  sub_216BD2EAC(a1 + *(v18 + 24), v7);
  sub_216919014(v10, v17);
  sub_216BD2EAC(v7, &v17[v12[7]]);
  v21 = &v17[v12[8]];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v17[v12[9]] = 0;
  v22 = &v17[v12[10]];
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  sub_216BD2F04(v7, type metadata accessor for MenuContext);
  sub_2166997CC(v10, &qword_27CAB6A00);
  v23 = &v17[v12[11]];
  *v23 = 0;
  *(v23 + 1) = 0xE000000000000000;
  v25 = v33;
  v24 = v34;
  (*(v3 + 16))(v33, a1 + v19, v34);
  sub_216BD2F58(v17, v14);
  v26 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v27 = (v35 + *(v32 + 80) + v26) & ~*(v32 + 80);
  v28 = swift_allocObject();
  (*(v3 + 32))(v28 + v26, v25, v24);
  result = sub_216BD2F58(v14, v28 + v27);
  v30 = v36;
  *v36 = sub_21680CDC8;
  v30[1] = v28;
  return result;
}

uint64_t sub_216BD2E44@<X0>(void (**a1)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)@<X8>)
{
  v3 = type metadata accessor for GenericMusicItemToolbarContent(0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_11_2();

  return sub_216BD2A54(v1 + v4, a1);
}

uint64_t sub_216BD2EAC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216BD2F04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BD2F58(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

unint64_t sub_216BD2FB0()
{
  result = qword_27CAC5330;
  if (!qword_27CAC5330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC52F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC52E8);
    sub_217009354();
    sub_2166D9530(&qword_27CAC5338, &qword_27CAC52E8);
    sub_216BD3128(&qword_27CAB9D40, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A728, &qword_27CAB8A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5330);
  }

  return result;
}

uint64_t sub_216BD3128(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216BD3170()
{
  result = qword_27CAC5340;
  if (!qword_27CAC5340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5318);
    sub_216BD31FC();
    sub_216BD3374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5340);
  }

  return result;
}

unint64_t sub_216BD31FC()
{
  result = qword_27CAC5348;
  if (!qword_27CAC5348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5328);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5320);
    sub_217009354();
    sub_2166D9530(&qword_27CAC5350, &qword_27CAC5320);
    sub_216BD3128(&qword_27CAB9D40, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A728, &qword_27CAB8A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5348);
  }

  return result;
}

unint64_t sub_216BD3374()
{
  result = qword_27CAC5358;
  if (!qword_27CAC5358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC52F8);
    sub_217009354();
    sub_2166D9530(&qword_27CAC5360, &qword_27CAC52F8);
    sub_216BD3128(&qword_27CAB9D40, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A728, &qword_27CAB8A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5358);
  }

  return result;
}

unint64_t sub_216BD34EC()
{
  result = qword_27CAC5368;
  if (!qword_27CAC5368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC52E0);
    sub_216BD2FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5368);
  }

  return result;
}

uint64_t sub_216BD3578()
{
  v1 = sub_21700BA44();
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_6_82();
  return sub_216BD0E20(v0 + v2, v3);
}

uint64_t sub_216BD35D0()
{
  v1 = sub_2170073D4();
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_5_94();
  return sub_216BD0D30(v0 + v2, v3, v4, MEMORY[0x277D2ADE8]);
}

uint64_t objectdestroy_20Tm_1(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216BD36D4()
{
  v1 = sub_217006B84();
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_4_107();
  return sub_216BD0D30(v0 + v2, v3, v4, MEMORY[0x277D2A7C8]);
}

void sub_216BD3754()
{
  type metadata accessor for BootstrapState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_216820EBC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216BD37F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_2170080D4() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_25;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 8) & ~v11) + *(v6 + 64) + v12) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_25:
      if ((v7 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((a1 + v11 + 8) & ~v11, v7, v5);
      }

      else
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_25;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    switch(v13)
    {
      case 2:
        LODWORD(v13) = *a1;
        break;
      case 3:
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v13) = *a1;
        break;
      default:
        LODWORD(v13) = *a1;
        break;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_216BD3A48(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_2170080D4() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 8) & ~v13) + *(v8 + 64) + v14) & ~v14) + 1;
  v16 = 8 * v15;
  if (a3 <= v10)
  {
    v17 = 0;
  }

  else if (v15 <= 3)
  {
    v20 = ((a3 - v10 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v10 >= a2)
  {
    switch(v17)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if ((v9 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload(&a1[v13 + 8] & ~v13, a2, v9, v7);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v23 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v23 = (a2 - 1);
            }

            *a1 = v23;
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v10 + a2;
    if (v15 < 4)
    {
      v19 = (v18 >> v16) + 1;
      if (v15)
      {
        v22 = v18 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v15 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v15] = v19;
        break;
      case 2:
        *&a1[v15] = v19;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v15] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216BD3D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v18 = a3;
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NavigationDestinationsModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a2, a4, v13);
  sub_216BD4C08(a1, v10, a4, v15);

  MEMORY[0x21CE9B900](v15, v18, v11, v19);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_216BD3F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a1;
  v71 = a3;
  v68 = *(a2 - 8);
  v74 = *(v68 + 64);
  MEMORY[0x28223BE20](a1);
  v76 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v5 = sub_2170097A4();
  v6 = type metadata accessor for FlowAction(255);
  v50 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5370);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_216BD4ED0(&qword_280E45BA8, type metadata accessor for FlowAction);
  v10 = sub_216BD4CD0();
  v77 = v5;
  v78 = v6;
  v52 = v5;
  v79 = v7;
  v80 = WitnessTable;
  v11 = v7;
  v58 = v7;
  v12 = WitnessTable;
  v57 = WitnessTable;
  v81 = v9;
  v82 = v10;
  v56 = v9;
  v13 = v10;
  v54 = v10;
  v73 = MEMORY[0x277CDEB90];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = OpaqueTypeMetadata2;
  v69 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v65 = v49 - v15;
  v55 = a2;
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v72 = v17;
  v51 = v16;
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for WrappedAppPageDestination();
  v49[1] = v18;
  v19 = type metadata accessor for AppDestinationPageView();
  v59 = v19;
  v77 = v5;
  v78 = v50;
  v79 = v11;
  v80 = v12;
  v81 = v9;
  v82 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = OpaqueTypeConformance2;
  v21 = swift_getWitnessTable();
  v62 = v21;
  v60 = swift_getWitnessTable();
  v77 = OpaqueTypeMetadata2;
  v78 = v18;
  v79 = v19;
  v80 = OpaqueTypeConformance2;
  v81 = v21;
  v82 = v60;
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = *(v22 - 8);
  v66 = v22;
  v67 = v23;
  MEMORY[0x28223BE20](v22);
  v53 = v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v61 = v49 - v26;
  swift_checkMetadataState();
  v27 = v68;
  v50 = *(v68 + 16);
  v28 = v76;
  v29 = v55;
  v50(v76, v75, v55);
  v30 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v31 = swift_allocObject();
  v32 = v51;
  v33 = v72;
  *(v31 + 16) = v51;
  *(v31 + 24) = v33;
  v68 = *(v27 + 32);
  (v68)(v31 + v30, v28, v29);
  swift_checkMetadataState();
  v34 = v65;
  sub_21700A7D4();

  v35 = swift_checkMetadataState();
  v36 = v76;
  v50(v76, v75, v29);
  v37 = swift_allocObject();
  v38 = v72;
  *(v37 + 16) = v32;
  *(v37 + 24) = v38;
  (v68)(v37 + v30, v36, v29);
  v39 = swift_checkMetadataState();
  v40 = v60;
  v41 = v53;
  v43 = v63;
  v42 = v64;
  v44 = v62;
  sub_21700A7D4();

  (*(v69 + 8))(v34, v42);
  v77 = v42;
  v78 = v35;
  v79 = v39;
  v80 = v43;
  v81 = v44;
  v82 = v40;
  swift_getOpaqueTypeConformance2();
  v45 = v61;
  v46 = v66;
  sub_2166C24DC(v41, v66);
  v47 = *(v67 + 8);
  v47(v41, v46);
  sub_2166C24DC(v45, v46);
  return (v47)(v45, v46);
}

uint64_t sub_216BD45F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a3;
  v32 = a4;
  v8 = sub_2170080D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  sub_216B803CC(a1, a5, type metadata accessor for FlowAction);
  v15 = *a2;
  v16 = type metadata accessor for FlowActionPageView();
  *(a5 + *(v16 + 20)) = v15;
  v17 = (a5 + *(v16 + 24));
  type metadata accessor for MusicStackAuthority();
  sub_216BD4ED0(&qword_280E46D08, type metadata accessor for MusicStackAuthority);

  *v17 = sub_217008CF4();
  v17[1] = v18;
  KeyPath = swift_getKeyPath();
  v20 = type metadata accessor for NavigationDestinationsModifier();
  sub_216C0C924(v20, v21, v22, v23, v24, v25, v26, v27, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  (*(v9 + 104))(v11, *MEMORY[0x277CDF3C0], v8);
  LOBYTE(a2) = sub_2170080C4();
  v28 = *(v9 + 8);
  v28(v11, v8);
  v28(v14, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5370);
  v30 = a5 + *(result + 36);
  *v30 = KeyPath;
  *(v30 + 8) = a2 & 1;
  return result;
}

uint64_t sub_216BD4834@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2168E3350();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216BD488C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v33 = a4;
  v6 = type metadata accessor for MusicAppDestinationContext(0);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a3 - 8);
  MEMORY[0x28223BE20](v8);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v28 - v12;
  v14 = type metadata accessor for AppDestinationPageView();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v28 - v20;
  (*(v11 + 16))(v13, a1, AssociatedTypeWitness, v19);
  v22 = type metadata accessor for NavigationDestinationsModifier();
  v23 = v29;
  (*(v30 + 16))(v29, v31 + *(v22 + 36), a3);
  swift_getAssociatedConformanceWitness();
  v24 = a1 + *(type metadata accessor for WrappedAppPageDestination() + 40);
  v25 = v32;
  sub_216B803CC(v24, v32, type metadata accessor for MusicAppDestinationContext);
  sub_216B5EEBC(v13, v23, v25, a3, v17);
  swift_getWitnessTable();
  sub_2166C24DC(v17, v14);
  v26 = *(v15 + 8);
  v26(v17, v14);
  sub_2166C24DC(v21, v14);
  return (v26)(v21, v14);
}

uint64_t sub_216BD4C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for NavigationDestinationsModifier();
  (*(*(a3 - 8) + 32))(&a4[*(v7 + 36)], a2, a3);
  v8 = *(v7 + 40);
  *&a4[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_216BD4CD0()
{
  result = qword_280E2B2C8;
  if (!qword_280E2B2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5370);
    sub_216BD4ED0(qword_280E3F018, type metadata accessor for FlowActionPageView);
    sub_216BD4D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2C8);
  }

  return result;
}

unint64_t sub_216BD4D8C()
{
  result = qword_280E2A700;
  if (!qword_280E2A700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A700);
  }

  return result;
}

uint64_t sub_216BD4E20(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for NavigationDestinationsModifier() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a2(a1, v7, v4, v5);
}

uint64_t sub_216BD4ED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216BD4F40(uint64_t *a1)
{
  v3 = sub_217007C34();
  OUTLINED_FUNCTION_1();
  v25 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_217007BF4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) + 40);
  v15 = *v14;
  v16 = *(v14 + 16);
  v17 = sub_217007C04();
  sub_217007C44();
  v24 = sub_21700EF64();
  result = sub_21700F144();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v13, v8);
  }

  if ((v16 & 1) == 0)
  {
    if (v15)
    {
LABEL_9:

      sub_217007C74();

      v19 = v25;
      if ((*(v25 + 88))(v7, v3) == *MEMORY[0x277D85B00])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v19 + 8))(v7, v3);
        v20 = "";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_217007BD4();
      _os_signpost_emit_with_name_impl(&dword_216679000, v17, v24, v22, v15, v20, v21, 2u);
      OUTLINED_FUNCTION_19_6();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v15 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v15 & 0xFFFFF800) != 0xD800)
  {
    if (v15 >> 16 <= 0x10)
    {
      v15 = &v26;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_216BD51CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *a2;
  v3[10] = *a2;
  v5 = sub_21700DD44();
  v3[11] = v5;
  OUTLINED_FUNCTION_2(v5);
  v3[12] = v6;
  v3[13] = OUTLINED_FUNCTION_80();
  v7 = *(v4 + 88);
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = OUTLINED_FUNCTION_80();
  v8 = sub_217007C24();
  v3[17] = v8;
  OUTLINED_FUNCTION_2(v8);
  v3[18] = v9;
  v3[19] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8);
  v3[20] = OUTLINED_FUNCTION_80();
  v10 = sub_21700DD54();
  v3[21] = v10;
  OUTLINED_FUNCTION_2(v10);
  v3[22] = v11;
  v3[23] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v3[24] = sub_21700EA24();
  v13 = sub_21700E9B4();
  v3[25] = v13;
  v3[26] = v12;

  return MEMORY[0x2822009F8](sub_216BD540C, v13, v12);
}

uint64_t sub_216BD540C()
{
  v1 = v0[10];
  v0[2] = v1[10];
  v2 = v0[14];
  v3 = v1[12];
  v0[27] = v3;
  v4 = v1[13];
  v5 = v1[15];
  v0[3] = v2;
  v0[4] = v4;
  v0[5] = v5;
  v6 = type metadata accessor for ReplacePageUpdate();
  v0[28] = v6;
  sub_21700DDB4();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v0[29] = v0[6];
  if (v3 == v6)
  {
    v8 = v0[22];
    v7 = v0[23];
    v9 = v0[21];
    *v7 = 1;
    (*(v8 + 104))(v7, *MEMORY[0x277D222A0], v9);
    sub_21700DD94();
    (*(v8 + 8))(v7, v9);
  }

  sub_21700DB74();

  sub_21700D4F4();

  sub_21700DB54();

  v10 = sub_21700DB64();
  v0[30] = v10;

  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10();
  }

  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[17];
  v14 = v0[18];
  v15 = v0[9];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0);
  v17 = __swift_project_value_buffer(v16, qword_280E73E38);
  (*(v14 + 16))(v12, v17, v13);
  sub_216BD795C(v12, "Fetch", 5, 2, &qword_27CAB82E8, v11);
  if (v3 == v6)
  {
    v18 = v10;
  }

  else
  {
    v18 = v15;
  }

  v19 = swift_task_alloc();
  v0[31] = v19;
  *v19 = v0;
  v19[1] = sub_216BD56A0;
  v20 = v0[16];

  return sub_2167F1880(v20, v18);
}

uint64_t sub_216BD56A0()
{
  v2 = *v1;
  v2[32] = v0;

  v3 = v2[26];
  v4 = v2[25];
  if (v0)
  {
    v5 = sub_216BD5924;
  }

  else
  {
    v5 = sub_216BD581C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_216BD581C()
{
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[7];

  (*(v3 + 32))(v5, v2, v4);
  sub_216BD4F40(&qword_27CAB82E8);

  sub_2167F2BA0(v1);

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_216BD5924()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[20];

  sub_2167F2BA0(v3);
  if (v2 == v1)
  {
    v4 = v0[32];
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    *v5 = v4;
    (*(v6 + 104))(v5, *MEMORY[0x277D22280], v7);
    v8 = v4;
    sub_21700DD84();
    (*(v6 + 8))(v5, v7);
  }

  v9 = v0[32];
  sub_216BD7C24();
  OUTLINED_FUNCTION_12();
  *v10 = v9;
  swift_willThrow();

  OUTLINED_FUNCTION_3();

  return v11();
}

uint64_t sub_216BD5A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  v7[21] = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7[22] = AssociatedConformanceWitness;
  v7[23] = *(AssociatedConformanceWitness + 16);
  v7[24] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v7[25] = v9;
  v7[26] = OUTLINED_FUNCTION_80();
  v10 = sub_21700DD44();
  v7[27] = v10;
  OUTLINED_FUNCTION_2(v10);
  v7[28] = v11;
  v7[29] = OUTLINED_FUNCTION_80();
  v12 = sub_21700D194();
  v7[30] = v12;
  OUTLINED_FUNCTION_2(v12);
  v7[31] = v13;
  v7[32] = OUTLINED_FUNCTION_80();
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for MappedPageDescriptor();
  v7[33] = v14;
  OUTLINED_FUNCTION_2(v14);
  v7[34] = v15;
  v7[35] = OUTLINED_FUNCTION_80();
  v16 = sub_217006A94();
  v7[36] = v16;
  OUTLINED_FUNCTION_2(v16);
  v7[37] = v17;
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v18 = type metadata accessor for ContentDescriptor();
  v7[41] = v18;
  OUTLINED_FUNCTION_2(v18);
  v7[42] = v19;
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = type metadata accessor for SocialProfileHorizontalLockupSection();
  v7[46] = OUTLINED_FUNCTION_80();
  v20 = type metadata accessor for SectionContent();
  v7[47] = v20;
  OUTLINED_FUNCTION_2(v20);
  v7[48] = v21;
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v22 = _s7SectionVMa(0);
  v7[51] = v22;
  OUTLINED_FUNCTION_2(v22);
  v7[52] = v23;
  v7[53] = OUTLINED_FUNCTION_80();
  updated = type metadata accessor for PageUpdateDescriptor();
  v7[54] = updated;
  OUTLINED_FUNCTION_2(updated);
  v7[55] = v25;
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v26 = sub_217007C24();
  v7[59] = v26;
  OUTLINED_FUNCTION_2(v26);
  v7[60] = v27;
  v7[61] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8);
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  sub_21700EA34();
  v7[65] = sub_21700EA24();
  v29 = sub_21700E9B4();
  v7[66] = v29;
  v7[67] = v28;

  return MEMORY[0x2822009F8](sub_216BD5FD4, v29, v28);
}

uint64_t sub_216BD5FD4()
{
  v150 = v0;
  if (qword_280E485C8 != -1)
  {
    goto LABEL_71;
  }

LABEL_2:
  v1 = v0[64];
  v140 = v0[63];
  v2 = v0[60];
  v3 = v0[61];
  v4 = v0[59];
  v5 = v0[20];
  v146 = v0[19];
  v143 = v0[17];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0);
  v7 = __swift_project_value_buffer(v6, qword_280E73E38);
  v0[68] = v7;
  v8 = *(v2 + 16);
  v0[69] = v8;
  v0[70] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v4);
  sub_216BD795C(v3, "Apply", 5, 2, &qword_27CAB82E8, v1);
  v8(v3, v7, v4);
  sub_216BD795C(v3, "Apply.UpdateJSPage", 18, 2, &qword_27CAB82E8, v140);
  (*(v5 + 16))(v143, v146, v5);
  v9 = v0[63];
  v10 = v0[58];
  v11 = v0[54];
  (*(v0[55] + 32))(v10, v0[57], v11);
  sub_216BD4F40(&qword_27CAB82E8);
  sub_2167F2BA0(v9);
  v12 = *(v10 + *(v11 + 36));
  if (!v12)
  {
    goto LABEL_66;
  }

  v13 = v0[52];
  v14 = -1;
  v15 = -1 << *(v12 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v12 + 64);
  v17 = (63 - v15) >> 6;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
LABEL_6:
  v144 = v19;
  if (v16)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      OUTLINED_FUNCTION_9_10();
      goto LABEL_2;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v12 + 64 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
LABEL_11:
      v21 = v0[53];
      v22 = v0[50];
      sub_216BD7C78(*(v12 + 56) + *(v13 + 72) * (__clz(__rbit64(v16)) | (v18 << 6)), v21, _s7SectionVMa);
      OUTLINED_FUNCTION_7_82();
      sub_216BD7C78(v21 + v23, v22, v24);
      sub_216BD7CD0(v21, _s7SectionVMa);
      v25 = v144;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = OUTLINED_FUNCTION_29_0();
        sub_216937BD4(v33, v34, v35, v144);
        v25 = v36;
      }

      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
      v28 = v25;
      if (v27 >= v26 >> 1)
      {
        sub_216937BD4(v26 > 1, v27 + 1, 1, v25);
        v28 = v37;
      }

      v16 &= v16 - 1;
      *(v28 + 16) = v27 + 1;
      v19 = v28;
      OUTLINED_FUNCTION_21_1();
      sub_2166C5D28(v32, v29 + v30 + *(v31 + 72) * v27, type metadata accessor for SectionContent);
      goto LABEL_6;
    }
  }

  type metadata accessor for SocialGraphController();
  v134 = type metadata accessor for ObjectGraph();
  sub_21700E094();
  v38 = *(v19 + 16);
  if (v38)
  {
    v39 = 0;
    v139 = v0[45];
    v147 = v0[44];
    v40 = v0[43];
    v135 = 136446210;
    v136 = *(v19 + 16);
    do
    {
      if (v39 >= *(v19 + 16))
      {
        goto LABEL_70;
      }

      v41 = v0[49];
      v42 = v0[47];
      OUTLINED_FUNCTION_7_82();
      sub_216BD7C78(v43, v41, v44);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v46 = v0[49];
      if (EnumCaseMultiPayload == 49)
      {
        v47 = v0[46];
        sub_2166C5D28(v46, v47, type metadata accessor for SocialProfileHorizontalLockupSection);
        v48 = (v47 + *(v139 + 28));
        v50 = *v48;
        v49 = v48[1];
        v145 = v48[2];
        if (!*v48)
        {
          goto LABEL_30;
        }

        if (v50 != 1)
        {
          if (*(v50 + 16))
          {
            v137 = v48[1];
            sub_216F0720C(v50, 0);
            if (qword_27CAB5F48 != -1)
            {
              OUTLINED_FUNCTION_1_162();
              swift_once();
            }

            v51 = sub_217007CA4();
            __swift_project_value_buffer(v51, qword_27CAC5378);
            sub_21700DF14();
            v52 = sub_217007C84();
            v53 = sub_21700EDA4();

            if (os_log_type_enabled(v52, v53))
            {
              v42 = swift_slowAlloc();
              v141 = swift_slowAlloc();
              v149[0] = v141;
              *v42 = v135;
              v54 = sub_21700E364();
              v56 = sub_2166A85FC(v54, v55, v149);

              *(v42 + 4) = v56;
              _os_log_impl(&dword_216679000, v52, v53, "Updated user follow states: '%{public}s'", v42, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v141);
              MEMORY[0x21CEA1440](v141, -1, -1);
              OUTLINED_FUNCTION_19_6();
            }

            v49 = v137;
          }

LABEL_30:
          v142 = v39;
          if (v49)
          {
            v57 = *(v49 + 16);
            if (v57)
            {
              OUTLINED_FUNCTION_21_1();
              v60 = v59 + v58;
              v62 = *(v61 + 72);
              v63 = MEMORY[0x277D84F90];
              do
              {
                v64 = v0[44];
                v65 = OUTLINED_FUNCTION_6_83();
                sub_216BD7C78(v65, v64, v66);
                v67 = *(v147 + 24);
                v68 = *(v147 + 32);
                sub_21700DF14();
                OUTLINED_FUNCTION_2_129();
                sub_216BD7CD0(v64, v69);
                if (v68)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    OUTLINED_FUNCTION_29_0();
                    sub_21693776C();
                    v63 = v73;
                  }

                  v71 = *(v63 + 16);
                  v70 = *(v63 + 24);
                  v42 = v71 + 1;
                  if (v71 >= v70 >> 1)
                  {
                    OUTLINED_FUNCTION_107_1(v70);
                    sub_21693776C();
                    v63 = v74;
                  }

                  *(v63 + 16) = v42;
                  v72 = v63 + 16 * v71;
                  *(v72 + 32) = v67;
                  *(v72 + 40) = v68;
                }

                v60 += v62;
                --v57;
              }

              while (v57);
              sub_216F072A0(v63);

              if (qword_27CAB5F48 != -1)
              {
                OUTLINED_FUNCTION_1_162();
                swift_once();
              }

              v75 = sub_217007CA4();
              __swift_project_value_buffer(v75, qword_27CAC5378);
              sub_21700DF14();
              v76 = sub_217007C84();
              v77 = sub_21700EDA4();

              if (os_log_type_enabled(v76, v77))
              {
                v78 = swift_slowAlloc();
                v79 = swift_slowAlloc();
                OUTLINED_FUNCTION_15_56(v79, v80, v81, v82, v83, v84, v85, v86, v133, v134, v135);
                v89 = sub_2166A85FC(v87, v88, v149);

                *(v78 + 4) = v89;
                _os_log_impl(&dword_216679000, v76, v77, "Updated user followers: '%{public}s'", v78, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v42);
                OUTLINED_FUNCTION_19_6();
                MEMORY[0x21CEA1440](v78, -1, -1);
              }

              v38 = v136;
            }
          }

          v90 = v145;
          if (!v145 || (v91 = *(v145 + 16)) == 0)
          {
LABEL_63:
            OUTLINED_FUNCTION_8_83();
            v39 = v142;
            v19 = v144;
            goto LABEL_64;
          }

          type metadata accessor for UserSocialProfileCoordinator();
          sub_21700E094();
          v138 = v0[13];
          OUTLINED_FUNCTION_21_1();
          v93 = v145 + v92;
          v95 = *(v94 + 72);
          v96 = MEMORY[0x277D84F90];
          while (2)
          {
            v97 = OUTLINED_FUNCTION_6_83();
            sub_216BD7C78(v97, v98, v99);
            v100 = v40[2];
            v101 = v0[43];
            if (v100)
            {
              v102 = v40[1];
              sub_21700DF14();
              OUTLINED_FUNCTION_2_129();
              sub_216BD7CD0(v101, v103);
              goto LABEL_51;
            }

            v102 = v40[11];
            v100 = v40[12];
            sub_21700DF14();
            OUTLINED_FUNCTION_2_129();
            sub_216BD7CD0(v101, v104);
            if (v100)
            {
LABEL_51:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_29_0();
                sub_21693776C();
                v96 = v108;
              }

              v106 = *(v96 + 16);
              v105 = *(v96 + 24);
              v90 = v106 + 1;
              if (v106 >= v105 >> 1)
              {
                OUTLINED_FUNCTION_107_1(v105);
                sub_21693776C();
                v96 = v109;
              }

              *(v96 + 16) = v90;
              v107 = v96 + 16 * v106;
              *(v107 + 32) = v102;
              *(v107 + 40) = v100;
            }

            v93 += v95;
            if (!--v91)
            {
              *&v138[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs] = v96;

              if (qword_27CAB5F48 != -1)
              {
                OUTLINED_FUNCTION_1_162();
                swift_once();
              }

              v110 = sub_217007CA4();
              __swift_project_value_buffer(v110, qword_27CAC5378);
              sub_21700DF14();
              v111 = sub_217007C84();
              v112 = sub_21700EDA4();
              if (os_log_type_enabled(v111, v112))
              {
                v113 = swift_slowAlloc();
                v114 = swift_slowAlloc();
                OUTLINED_FUNCTION_15_56(v114, v115, v116, v117, v118, v119, v120, v121, v133, v134, v135);
                v123 = v122;
                v125 = v124;

                v126 = sub_2166A85FC(v123, v125, v149);

                *(v113 + 4) = v126;
                _os_log_impl(&dword_216679000, v111, v112, "Updated user shared playlists: '%{public}s'", v113, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v90);
                OUTLINED_FUNCTION_19_6();
                MEMORY[0x21CEA1440](v113, -1, -1);
              }

              else
              {
              }

              v38 = v136;
              goto LABEL_63;
            }

            continue;
          }
        }

        OUTLINED_FUNCTION_8_83();
      }

      else
      {
        sub_216BD7CD0(v46, type metadata accessor for SectionContent);
      }

LABEL_64:
      ++v39;
    }

    while (v39 != v38);
  }

LABEL_66:
  v148 = (*(v0[20] + 24) + **(v0[20] + 24));
  v127 = swift_task_alloc();
  v0[71] = v127;
  *v127 = v0;
  v127[1] = sub_216BD6C3C;
  v128 = v0[58];
  v129 = v0[39];
  v130 = v0[19];
  v131 = v0[20];

  return v148(v129, v128, v130, v131);
}

uint64_t sub_216BD6C3C()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  v3 = *(v2 + 536);
  v4 = *(v2 + 528);
  if (v0)
  {
    v5 = sub_216BD742C;
  }

  else
  {
    v5 = sub_216BD6D78;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_216BD6D78()
{
  v53 = v0[72];
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[61];
  v48 = v0[62];
  v4 = v0[59];
  v5 = v0[39];
  v6 = v0[40];
  v8 = v0[36];
  v7 = v0[37];
  v9 = v0[20];
  v50 = v0[19];
  v51 = v0[58];
  v49 = v0[16];

  v10 = v8;
  v11 = *(v7 + 32);
  v11(v6, v5, v10);
  v1(v3, v2, v4);
  sub_216BD795C(v3, "Apply.Mapping", 13, 2, &qword_27CAB82E8, v48);
  (*(v9 + 32))(v51, v6, v49, v50, v9);
  v12 = v0[64];
  v13 = v0[58];
  if (v53)
  {
    v15 = v0[54];
    v14 = v0[55];
    v16 = v0[40];
    v17 = v0[36];
    v18 = v0[37];
    sub_2167F2BA0(v0[62]);
    sub_216BD7C24();
    OUTLINED_FUNCTION_12();
    *v19 = v53 | 0xC000000000000000;
    swift_willThrow();
    (*(v18 + 8))(v16, v17);
    sub_2167F2BA0(v12);
    (*(v14 + 8))(v13, v15);
    OUTLINED_FUNCTION_5_95();

    OUTLINED_FUNCTION_3();
  }

  else
  {
    v52 = v11;
    v21 = v0[54];
    sub_216BD4F40(&qword_27CAB82E8);
    sub_216BD4F40(&qword_27CAB82E8);
    if (*(v13 + *(v21 + 48)) == 1)
    {
      sub_21700DDB4();
      type metadata accessor for ObjectGraph();
      OUTLINED_FUNCTION_8();
      sub_21700E094();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30);
      sub_21700E094();
      v22 = v0[5];
      v23 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v22);
      (*(v23 + 8))(v22, v23);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
      sub_21700E324();
      v24 = sub_21700D0E4();
      if (*v25)
      {
        sub_2166EF928();
      }

      else
      {
      }

      v24(v0 + 7, 0);
      v27 = v0[31];
      v26 = v0[32];
      v29 = v0[29];
      v28 = v0[30];
      v30 = v0[27];
      v31 = v0[28];
      (*(v27 + 16))(v29, v26, v28);
      (*(v31 + 104))(v29, *MEMORY[0x277D22290], v30);
      sub_21700DD84();

      (*(v31 + 8))(v29, v30);
      (*(v27 + 8))(v26, v28);
    }

    v32 = v0[64];
    v33 = v0[58];
    v34 = v0[55];
    v46 = v0[54];
    v47 = v0[56];
    v45 = v0[40];
    v43 = v0[38];
    v35 = v0[35];
    v44 = v0[36];
    v36 = v0[33];
    v37 = v0[34];
    v38 = v0[25];
    v39 = v0[26];
    v40 = v0[24];
    v42 = v0[14];
    sub_2167F2BA0(v0[62]);
    sub_2167F2BA0(v32);
    (*(v38 + 16))(v39, v35, v40);
    LOBYTE(v40) = *(v35 + *(v36 + 36));
    (*(v37 + 8))(v35, v36);
    (*(v34 + 16))(v47, v33, v46);
    v52(v43, v45, v44);
    sub_216BD75DC(v39, v40, v47, v43, v42);
    (*(v34 + 8))(v33, v46);

    OUTLINED_FUNCTION_3();
  }

  return v20();
}

uint64_t sub_216BD742C()
{
  v1 = v0[72];
  v2 = v0[64];
  v3 = v0[58];
  v4 = v0[54];
  v5 = v0[55];

  sub_216BD7C24();
  OUTLINED_FUNCTION_12();
  *v6 = v1 | 0x8000000000000000;
  swift_willThrow();
  sub_2167F2BA0(v2);
  (*(v5 + 8))(v3, v4);
  OUTLINED_FUNCTION_5_95();

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_216BD75DC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  (*(v10 + 32))(a5, a1);
  updated = type metadata accessor for PageUpdatePerformer.Result();
  *(a5 + updated[9]) = a2;
  v12 = updated[10];
  type metadata accessor for PageUpdateDescriptor();
  OUTLINED_FUNCTION_9();
  (*(v13 + 32))(a5 + v12, a3);
  v14 = updated[11];
  sub_217006A94();
  OUTLINED_FUNCTION_9();
  v16 = *(v15 + 32);

  return v16(a5 + v14, a4);
}

uint64_t sub_216BD7734()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = sub_21700E514();
  *(inited + 40) = v1;
  v2 = sub_217005D24();
  *(inited + 72) = sub_216BD8664();
  *(inited + 48) = v2;
  return sub_21700E384();
}

uint64_t sub_216BD782C(uint64_t a1)
{
  v2 = sub_216BD8610();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_216BD7868(uint64_t a1)
{
  v2 = sub_216BD8610();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_216BD78B8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC5378);
  v1 = OUTLINED_FUNCTION_8();
  __swift_project_value_buffer(v1, v2);
  return sub_217007C94();
}

uint64_t sub_216BD795C@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a3;
  v11 = sub_217007BF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v21 = a6 + *(v20 + 40);
  v36 = a2;
  v22 = v37;
  *v21 = a2;
  *(v21 + 8) = v22;
  v35 = a4;
  *(v21 + 16) = a4;
  v23 = sub_217007C24();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v37 = a6;
  v25(a6, a1, v23);
  sub_217007BE4();
  v26 = sub_217007C04();
  v34 = sub_21700EF74();
  result = sub_21700F144();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v32 = v23;
  v33 = v11;
  if ((v35 & 1) == 0)
  {
    v28 = v36;
    if (v36)
    {
LABEL_9:
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = sub_217007BD4();
      _os_signpost_emit_with_name_impl(&dword_216679000, v26, v34, v30, v28, "", v29, 2u);
      OUTLINED_FUNCTION_19_6();
      v23 = v32;
      v11 = v33;
LABEL_10:

      (*(v13 + 16))(v17, v19, v11);
      sub_217007C64();
      swift_allocObject();
      v31 = sub_217007C54();
      (*(v24 + 8))(a1, v23);
      result = (*(v13 + 8))(v19, v11);
      *(v37 + *(v20 + 36)) = v31;
      return result;
    }

    __break(1u);
  }

  if (v36 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v36 & 0xFFFFF800) != 0xD800)
  {
    if (v36 >> 16 <= 0x10)
    {
      v28 = &v38;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_216BD7C24()
{
  result = qword_280E3D868;
  if (!qword_280E3D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3D868);
  }

  return result;
}

uint64_t sub_216BD7C78(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216BD7CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_216BD7D64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_216BD7DB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_216BD7E2C()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PageUpdateDescriptor();
    if (v2 <= 0x3F)
    {
      result = sub_217006A94();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_216BD7EFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 84);
  v6 = *(v32 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v5 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v4 + 84);
  }

  v10 = sub_217006A94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  v14 = *(v4 + 64);
  v15 = *(v6 + 64);
  v16 = *(v11 + 80);
  v17 = *(*(v10 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v18 = v10;
  v19 = *(v6 + 80) & 0xF8 | 7;
  v20 = v15 + 7;
  v21 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + v16 + 11;
  v22 = a1;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v23 = ((v21 + ((v14 + v19 + 1) & ~v19)) & ~v16) + v17;
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_13;
  }

  v27 = ((a2 - v13 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v27))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v27 <= 0xFF)
    {
      if (v27 < 2)
      {
        goto LABEL_31;
      }

LABEL_13:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_31;
      }

LABEL_21:
      v28 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v28 = 0;
      }

      if (v23)
      {
        if (v23 <= 3)
        {
          v29 = v23;
        }

        else
        {
          v29 = 4;
        }

        switch(v29)
        {
          case 2:
            v30 = *a1;
            break;
          case 3:
            v30 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v30 = *a1;
            break;
          default:
            v30 = *a1;
            break;
        }
      }

      else
      {
        v30 = 0;
      }

      return v13 + (v30 | v28) + 1;
    }

    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_21;
    }
  }

LABEL_31:
  if (v5 == v13)
  {
    v12 = v5;
    v18 = AssociatedTypeWitness;
LABEL_37:

    return __swift_getEnumTagSinglePayload(v22, v12, v18);
  }

  v22 = (a1 + v14 + v19 + 1) & ~v19;
  if (v13 != v8)
  {
    v22 = (v21 + v22) & ~v16;
    goto LABEL_37;
  }

  if (v7 >= 0x7FFFFFFE)
  {
    v12 = v7;
    v18 = v32;
    goto LABEL_37;
  }

  v31 = *((v20 + v22) & 0xFFFFFFFFFFFFFFF8);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  if ((v31 + 1) >= 2)
  {
    return v31;
  }

  else
  {
    return 0;
  }
}

void sub_216BD823C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v32 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v32 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v6 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = sub_217006A94();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = v10;
  }

  v15 = *(v5 + 64);
  v16 = *(v7 + 80) & 0xF8 | 7;
  v17 = *(v7 + 64) + 7;
  v18 = *(v12 + 80);
  v19 = (v17 & 0xFFFFFFFFFFFFFFF8) + v18 + 11;
  v20 = ((v19 + ((v15 + v16 + 1) & ~v16)) & ~v18) + *(*(v11 - 8) + 64);
  v21 = 8 * v20;
  if (a3 <= v14)
  {
    v24 = 0;
    v22 = a1;
    v23 = a2;
  }

  else
  {
    v22 = a1;
    v23 = a2;
    if (v20 <= 3)
    {
      v27 = ((a3 - v14 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v27))
      {
        v24 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v24 = v28;
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else
    {
      v24 = 1;
    }
  }

  if (v14 >= v23)
  {
    switch(v24)
    {
      case 1:
        v22[v20] = 0;
        if (v23)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *&v22[v20] = 0;
        if (v23)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_55:
        __break(1u);
        return;
      case 4:
        *&v22[v20] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!v23)
        {
          return;
        }

LABEL_33:
        if (v6 == v14)
        {
          v30 = v22;
          v13 = v6;
          v11 = AssociatedTypeWitness;
        }

        else
        {
          v30 = &v22[v15 + 1 + v16] & ~v16;
          if (v14 == v9)
          {
            if (v8 < 0x7FFFFFFE)
            {
              v31 = ((v17 + v30) & 0xFFFFFFFFFFFFFFF8);
              if (v23 > 0x7FFFFFFE)
              {
                *v31 = 0;
                *v31 = v23 - 0x7FFFFFFF;
              }

              else
              {
                *v31 = v23;
              }

              return;
            }

            v13 = v8;
            v11 = v32;
          }

          else
          {
            v30 = (v19 + v30) & ~v18;
          }
        }

        __swift_storeEnumTagSinglePayload(v30, v23, v13, v11);
        break;
    }
  }

  else
  {
    v25 = ~v14 + v23;
    if (v20 < 4)
    {
      v26 = (v25 >> v21) + 1;
      if (v20)
      {
        v29 = v25 & ~(-1 << v21);
        bzero(v22, v20);
        if (v20 == 3)
        {
          *v22 = v29;
          v22[2] = BYTE2(v29);
        }

        else if (v20 == 2)
        {
          *v22 = v29;
        }

        else
        {
          *v22 = v25;
        }
      }
    }

    else
    {
      bzero(v22, v20);
      *v22 = v25;
      v26 = 1;
    }

    switch(v24)
    {
      case 1:
        v22[v20] = v26;
        break;
      case 2:
        *&v22[v20] = v26;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *&v22[v20] = v26;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_216BD8610()
{
  result = qword_280E3D870;
  if (!qword_280E3D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3D870);
  }

  return result;
}

unint64_t sub_216BD8664()
{
  result = qword_280E29B50;
  if (!qword_280E29B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29B50);
  }

  return result;
}

uint64_t sub_216BD86D0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v66 = a3;
  v61 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v58 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v56 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  sub_21700D7A4();
  sub_21700CE04();
  v60 = v5;
  v20 = v5;
  v21 = v11;
  (*(v20 + 16))(v8, v62, v61);
  sub_21700D734();
  v22 = a1;
  sub_21700CE04();
  v23 = sub_21700CDB4();
  v25 = v24;
  v28 = *(v21 + 8);
  v27 = (v21 + 8);
  v26 = v28;
  v28(v17, v9);
  v59 = v25;
  if (!v25)
  {
    v58 = v27;
    v37 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_189();
    sub_216BD8D38(v38, v39);
    OUTLINED_FUNCTION_3_0();
    v41 = v40;
    FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
    *v41 = 25705;
    v41[1] = 0xE200000000000000;
    v41[2] = FriendsButtonComponentModel;
    OUTLINED_FUNCTION_50();
    (*(v43 + 104))(v41, v44, v37);
LABEL_7:
    v49 = 0;
    goto LABEL_8;
  }

  v57 = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
  *&v65[0] = v23;
  *(&v65[0] + 1) = v25;
  sub_21700F364();
  v29 = v58;
  sub_21700CE04();
  v30 = sub_21700CDB4();
  v32 = v31;
  v26(v29, v9);
  if (!v32)
  {
    v58 = v27;
    v45 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_189();
    sub_216BD8D38(v46, v47);
    OUTLINED_FUNCTION_3_0();
    *v48 = 0x69546E6F74747562;
    v48[1] = 0xEB00000000656C74;
    v48[2] = v57;
    (*(*(v45 - 8) + 104))(v48, *MEMORY[0x277D22530], v45);
    goto LABEL_7;
  }

  v33 = v57;
  v34 = (v66 + *(v57 + 24));
  *v34 = v30;
  v34[1] = v32;
  sub_21700CE04();
  v35 = v62;
  sub_21700D2E4();
  v26(v19, v9);
  if (v64)
  {
    (*(v60 + 8))(v35, v61);
    v26(v22, v9);
    sub_2166A0F18(&v63, v65);
    return sub_2166A0F18(v65, v66 + *(v33 + 28));
  }

  v58 = v27;
  sub_216699820(&v63, &qword_27CAB6DB0);
  sub_21700E2E4();
  OUTLINED_FUNCTION_0_189();
  sub_216BD8D38(v52, v53);
  OUTLINED_FUNCTION_3_0();
  *v54 = 0x6575676573;
  v54[1] = 0xE500000000000000;
  v54[2] = v33;
  OUTLINED_FUNCTION_50();
  (*(v55 + 104))();
  v49 = 1;
LABEL_8:
  swift_willThrow();
  (*(v60 + 8))(v62, v61);
  v26(v22, v9);
  v50 = v66;
  result = sub_216699820(v66, &qword_27CAB6D58);
  if (v59)
  {
    v51 = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
    result = sub_216788110(v50 + *(v51 + 20));
  }

  if (v49)
  {
    type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
  }

  return result;
}

uint64_t sub_216BD8D38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216BD8DA8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v85 = a3;
  v4 = type metadata accessor for Artwork();
  MEMORY[0x28223BE20](v4 - 8);
  v75 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v74 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v69 - v12;
  v81 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v73 = v17;
  v19 = MEMORY[0x28223BE20](v18);
  v77 = &v69 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v69 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v69 - v24;
  sub_21700D7A4();
  sub_21700CE04();
  v79 = v8;
  v80 = v6;
  v72 = *(v8 + 16);
  v72(v13, v82, v6);
  v26 = type metadata accessor for VerticalArtworkListItem();
  v78 = *(v26 + 20);
  v69 = v25;
  sub_21700D734();
  v27 = a1;
  sub_21700CE04();
  v28 = sub_21700CDB4();
  v30 = v29;
  v31 = *(v15 + 8);
  v32 = v23;
  v33 = (v15 + 8);
  v34 = v81;
  v31(v32, v81);
  if (v30)
  {
    v70 = v26;
    v83 = v28;
    v84 = v30;
    sub_21700F364();
    v35 = v77;
    sub_21700CE04();
    v36 = sub_21700CDB4();
    v37 = v33;
    v39 = v38;
    v77 = v37;
    v71 = v31;
    v31(v35, v34);
    if (v39)
    {
      v40 = v73;
      sub_21700CE04();
      v41 = v74;
      v42 = v82;
      v43 = v80;
      v72(v74, v82, v80);
      v44 = v75;
      v45 = v76;
      sub_216C7D384(v40, v41, v75);
      a1 = v27;
      if (!v45)
      {
        v58 = v70;
        v59 = v44;
        v60 = v85;
        sub_216A912E8(v59, v85 + *(v70 + 28));
        v61 = (v60 + *(v58 + 24));
        *v61 = v36;
        v61[1] = v39;
        v62 = v69;
        v63 = v42;
        sub_21700CE04();
        sub_21700D2E4();
        v64 = v81;
        v65 = v71;
        v71(v62, v81);
        sub_21700CE04();
        v78 = sub_21700CDB4();
        v67 = v66;
        (*(v79 + 8))(v63, v43);
        v65(a1, v64);
        result = (v65)(v62, v64);
        v68 = (v85 + *(v70 + 36));
        *v68 = v78;
        v68[1] = v67;
        return result;
      }

      v46 = v81;
    }

    else
    {
      v46 = v34;
      v53 = sub_21700E2E4();
      OUTLINED_FUNCTION_0_190();
      sub_216BD94B4(v54, v55);
      OUTLINED_FUNCTION_4();
      *v56 = 1954047348;
      v56[1] = 0xE400000000000000;
      v56[2] = v70;
      (*(*(v53 - 8) + 104))(v56, *MEMORY[0x277D22530], v53);
      swift_willThrow();
      v42 = v82;
    }

    (*(v79 + 8))(v42, v80);
    v71(a1, v46);
    v52 = v85;
    sub_216788110(v85);
  }

  else
  {
    v47 = v34;
    v48 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_190();
    sub_216BD94B4(v49, v50);
    OUTLINED_FUNCTION_4();
    *v51 = 25705;
    v51[1] = 0xE200000000000000;
    v51[2] = v26;
    (*(*(v48 - 8) + 104))(v51, *MEMORY[0x277D22530], v48);
    swift_willThrow();
    (*(v79 + 8))(v82, v80);
    v31(a1, v47);
    v52 = v85;
  }

  return sub_2167B0250(v52 + v78);
}

uint64_t sub_216BD94B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216BD94FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2166DDC34();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_216BD957C()
{
  v1 = OBJC_IVAR____TtC7MusicUI14BootstrapState__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t *sub_216BD962C(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
    result[1] = 0;
    result[2] = 0;
  }

  *result = v2;
  return result;
}

uint64_t type metadata accessor for GoToArtistViewModel()
{
  result = qword_280E3E080;
  if (!qword_280E3E080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216BD96CC()
{
  result = type metadata accessor for GoToArtistContext(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObjectGraph();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216BD9750()
{
  OUTLINED_FUNCTION_33();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_21700C1E4();
  v1[4] = v3;
  OUTLINED_FUNCTION_2(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_80();
  v5 = sub_21700BA44();
  v1[7] = v5;
  OUTLINED_FUNCTION_2(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_80();
  v7 = sub_21700C084();
  v1[10] = v7;
  OUTLINED_FUNCTION_2(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_80();
  v1[13] = type metadata accessor for GoToArtistContext(0);
  v1[14] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7F8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216BD9920()
{
  OUTLINED_FUNCTION_33();
  sub_216BDC53C(v0[3], v0[14], type metadata accessor for GoToArtistContext);
  OUTLINED_FUNCTION_38();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[14];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v0[8] + 32))(v0[9], v2, v0[7]);
      swift_task_alloc();
      OUTLINED_FUNCTION_52();
      v0[22] = v3;
      *v3 = v4;
      v3[1] = sub_216BD9DDC;
      v5 = v0[17];
      v6 = v0[9];

      return sub_216BDAED4(v5, v6);
    }

    else
    {
      (*(v0[5] + 32))(v0[6], v2, v0[4]);
      swift_task_alloc();
      OUTLINED_FUNCTION_52();
      v0[24] = v12;
      *v12 = v13;
      v12[1] = sub_216BDA0A4;
      v14 = v0[16];
      v15 = v0[6];

      return sub_216BDB95C(v14, v15);
    }
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v2, v0[10]);
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    v0[20] = v8;
    *v8 = v9;
    v8[1] = sub_216BD9B18;
    v10 = v0[18];
    v11 = v0[12];

    return sub_216BDA594(v10, v11);
  }
}

uint64_t sub_216BD9B18()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216BD9C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  (*(v14[11] + 8))(v14[12], v14[10]);
  v15 = v14[18];
  v16 = v14[19];
  v17 = v14[15];
  sub_21700C384();
  v18 = OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_38_31(v18);
  sub_216BDC5A0(v15, v16);
  v19 = OUTLINED_FUNCTION_115();
  sub_2166A6EFC(v19, v20, v21);
  OUTLINED_FUNCTION_5_3(v17);
  if (v22)
  {
    v23 = v14[19];
    OUTLINED_FUNCTION_37_35(v14[15]);
    sub_216BDC610();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_41_25();
    OUTLINED_FUNCTION_37_35(v23);
    OUTLINED_FUNCTION_1_163();

    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_6_84();
    sub_216699820(v15, &qword_27CABB7F8);
    OUTLINED_FUNCTION_9_7();
    v24 = OUTLINED_FUNCTION_30_37();
    v25(v24);

    OUTLINED_FUNCTION_23();
  }

  OUTLINED_FUNCTION_120();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216BD9DDC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216BD9ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  (*(v14[8] + 8))(v14[9], v14[7]);
  v15 = v14[17];
  v16 = v14[19];
  v17 = v14[15];
  sub_21700C384();
  v18 = OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_38_31(v18);
  sub_216BDC5A0(v15, v16);
  v19 = OUTLINED_FUNCTION_115();
  sub_2166A6EFC(v19, v20, v21);
  OUTLINED_FUNCTION_5_3(v17);
  if (v22)
  {
    v23 = v14[19];
    OUTLINED_FUNCTION_37_35(v14[15]);
    sub_216BDC610();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_41_25();
    OUTLINED_FUNCTION_37_35(v23);
    OUTLINED_FUNCTION_1_163();

    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_6_84();
    sub_216699820(v15, &qword_27CABB7F8);
    OUTLINED_FUNCTION_9_7();
    v24 = OUTLINED_FUNCTION_30_37();
    v25(v24);

    OUTLINED_FUNCTION_23();
  }

  OUTLINED_FUNCTION_120();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216BDA0A4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216BDA19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  (*(v14[5] + 8))(v14[6], v14[4]);
  v15 = v14[19];
  v17 = v14[15];
  v16 = v14[16];
  sub_21700C384();
  v18 = OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_38_31(v18);
  sub_216BDC5A0(v16, v15);
  sub_2166A6EFC(v15, v17, &qword_27CABB7F8);
  OUTLINED_FUNCTION_5_3(v17);
  if (v19)
  {
    v20 = v14[19];
    OUTLINED_FUNCTION_37_35(v14[15]);
    sub_216BDC610();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_41_25();
    OUTLINED_FUNCTION_37_35(v20);
    OUTLINED_FUNCTION_1_163();

    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_6_84();
    sub_216699820(v15, &qword_27CABB7F8);
    OUTLINED_FUNCTION_9_7();
    v21 = OUTLINED_FUNCTION_30_37();
    v22(v21);

    OUTLINED_FUNCTION_23();
  }

  OUTLINED_FUNCTION_120();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216BDA36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  (*(v12[11] + 8))(v12[12], v12[10]);
  OUTLINED_FUNCTION_1_163();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_216BDA424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  (*(v12[8] + 8))(v12[9], v12[7]);
  OUTLINED_FUNCTION_1_163();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_216BDA4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  (*(v12[5] + 8))(v12[6], v12[4]);
  OUTLINED_FUNCTION_1_163();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_216BDA594(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_21700B804();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_21700C084();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC53A0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7F8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216BDA744, 0, 0);
}

uint64_t sub_216BDA744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
  v2 = OUTLINED_FUNCTION_40_23(v1);
  v0[16] = v2;
  *(v2 + 16) = xmmword_21701D820;
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC53A8);
  *(v2 + 32) = sub_21700B6D4();
  v3 = swift_task_alloc();
  v0[18] = v3;
  v4 = sub_216BDC664(&qword_27CAC53B0, MEMORY[0x277CD8238]);
  OUTLINED_FUNCTION_29_37(v4);
  *v3 = v5;
  v6 = OUTLINED_FUNCTION_18_47();

  return MEMORY[0x282124818](v6, v2);
}

uint64_t sub_216BDA878()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216BDABB0()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 208) = v0;

  v7 = OUTLINED_FUNCTION_115();
  v8(v7);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216BDAED4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_21700B804();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_21700BA44();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC53A0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7F8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216BDB084, 0, 0);
}

uint64_t sub_216BDB084()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
  v2 = OUTLINED_FUNCTION_40_23(v1);
  v0[16] = v2;
  *(v2 + 16) = xmmword_21701D820;
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC53B8);
  *(v2 + 32) = sub_21700B6B4();
  v3 = swift_task_alloc();
  v0[18] = v3;
  v4 = sub_216BDC664(&qword_27CAC53C0, MEMORY[0x277CD7E58]);
  OUTLINED_FUNCTION_29_37(v4);
  *v3 = v5;
  v6 = OUTLINED_FUNCTION_18_47();

  return MEMORY[0x282124818](v6, v2);
}

uint64_t sub_216BDB1B8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216BDB4F0()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 208) = v0;

  v7 = OUTLINED_FUNCTION_115();
  v8(v7);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216BDB814()
{
  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_13_59();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216BDB8BC()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_13_59();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216BDB95C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_21700B804();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_21700C1E4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC53A0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7F8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216BDBB0C, 0, 0);
}

uint64_t sub_216BDBB0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
  v2 = OUTLINED_FUNCTION_40_23(v1);
  v0[16] = v2;
  *(v2 + 16) = xmmword_21701D820;
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4D0);
  *(v2 + 32) = sub_21700B714();
  v3 = swift_task_alloc();
  v0[18] = v3;
  v4 = sub_216BDC664(&qword_27CABB4C8, MEMORY[0x277CD82C8]);
  OUTLINED_FUNCTION_29_37(v4);
  *v3 = v5;
  v6 = OUTLINED_FUNCTION_18_47();

  return MEMORY[0x282124818](v6, v2);
}

uint64_t sub_216BDBC40()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216BDBF78()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 208) = v0;

  v7 = OUTLINED_FUNCTION_115();
  v8(v7);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216BDC29C()
{
  v1 = v0;
  v2 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700C324();
  if (!v7)
  {
    v6 = sub_21700C344();
  }

  v8 = v6;
  v9 = v7;
  LOBYTE(v27[0]) = 1;
  v10 = *(v2 + 24);
  v11 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(&v5[v10], 1, 1, v11);
  *v5 = 5;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 11) = v8;
  *(v5 + 12) = v9;
  *(v5 + 13) = 0;
  v5[112] = 1;
  v12 = type metadata accessor for ArtistDetailPageIntent();
  v28 = v12;
  v29 = sub_216BDC664(&qword_27CAC3E48, type metadata accessor for ArtistDetailPageIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  v14 = OUTLINED_FUNCTION_115();
  sub_216BDC53C(v14, v15, v16);
  v17 = *(v12 + 20);
  v18 = type metadata accessor for ReferrerInfo();
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v17, 1, 1, v18);
  sub_2166A6EFC(v27, &v24, &qword_27CAB6AB8);
  v19 = *(v1 + *(type metadata accessor for GoToArtistViewModel() + 20));
  v30 = 0u;
  v31 = 0u;
  LOWORD(v32) = 1;

  sub_216CCC700(&v24, v19, &v30, 0, 0, v20, v21, v22, v24, v25, v26, v27[0], v27[1], v27[2], v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, v33);
  sub_2168F3F20(v5);
  return sub_216699820(v27, &qword_27CAB6AB8);
}

uint64_t sub_216BDC4A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A4;

  return sub_216BD9750();
}

uint64_t sub_216BDC53C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_50();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216BDC5A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216BDC610()
{
  result = qword_27CAC5398;
  if (!qword_27CAC5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5398);
  }

  return result;
}

uint64_t sub_216BDC664(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for GoToArtistViewModel.GoToArtistError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_216BDC75C()
{
  result = qword_27CAC53C8;
  if (!qword_27CAC53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC53C8);
  }

  return result;
}

uint64_t type metadata accessor for DefaultAccessoryButtonView()
{
  result = qword_280E34878;
  if (!qword_280E34878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216BDC82C()
{
  result = type metadata accessor for DefaultAccessoryButton();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_216BDC8B4()
{
  v1 = v0;
  v2 = type metadata accessor for DefaultAccessoryButtonView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC53F0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v17 - v7);
  v9 = type metadata accessor for DefaultAccessoryButton();
  sub_21692E9E8(v1 + *(v9 + 28), v8);
  v10 = v6[13];
  v11 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v8 + v10, 1, 1, v11);
  sub_216BDCC60(v1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_216BDCCC4(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v14 = v6[14];
  *(v8 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v15 = v8 + v6[15];
  *v15 = swift_getKeyPath();
  v15[40] = 0;
  v8[5] = sub_216BDCD28;
  v8[6] = v13;
  v8[7] = 0;
  v8[8] = 0;
  sub_216E317B4();
  return sub_216BDCD98(v8);
}

uint64_t sub_216BDCAA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DefaultAccessoryButton();
  v5 = (a1 + *(v4 + 24));
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = *(a1 + *(v4 + 32));
  if (v9)
  {
    v10 = qword_27CAB5F60;
    sub_21700DF14();
    if (v10 != -1)
    {
      swift_once();
    }

    v11 = &qword_27CAC53E0;
  }

  else
  {
    v12 = qword_27CAB5F50;
    sub_21700DF14();
    if (v12 != -1)
    {
      swift_once();
    }

    v11 = &qword_27CAC53D0;
  }

  v13 = *v11;

  KeyPath = swift_getKeyPath();
  if (v9)
  {
    if (qword_27CAB5F68 != -1)
    {
      swift_once();
    }

    v15 = &qword_27CAC53E8;
  }

  else
  {
    if (qword_27CAB5F58 != -1)
    {
      swift_once();
    }

    v15 = &qword_27CAC53D8;
  }

  v16 = *v15;

  result = swift_getKeyPath();
  *a2 = v7;
  a2[1] = v6;
  a2[2] = 0;
  a2[3] = v8;
  a2[4] = KeyPath;
  a2[5] = v13;
  a2[6] = result;
  a2[7] = v16;
  return result;
}

uint64_t sub_216BDCC60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAccessoryButtonView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216BDCCC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAccessoryButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216BDCD28@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for DefaultAccessoryButtonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216BDCAA4(v4, a1);
}

uint64_t sub_216BDCD98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC53F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216BDCE00()
{
  result = sub_21700AC54();
  qword_27CAC53D0 = result;
  return result;
}

uint64_t sub_216BDCE20()
{
  result = sub_217009D54();
  qword_27CAC53D8 = result;
  return result;
}

uint64_t sub_216BDCE40()
{
  result = sub_21700AD34();
  qword_27CAC53E0 = result;
  return result;
}

uint64_t sub_216BDCE60()
{
  sub_217009D54();
  sub_217009DE4();
  v0 = sub_217009E34();

  qword_27CAC53E8 = v0;
  return result;
}

unint64_t sub_216BDCEA4()
{
  result = qword_280E44DF0;
  if (!qword_280E44DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC53F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E44DF0);
  }

  return result;
}

unint64_t sub_216BDCF08()
{
  result = qword_280E404C0;
  if (!qword_280E404C0)
  {
    type metadata accessor for ActionButtonStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E404C0);
  }

  return result;
}

void sub_216BDCF60()
{
  MGGetProductType();
  OUTLINED_FUNCTION_0_192();
  v2 = v1 | 0x42700000u;
  v3 = v3 || v0 == v2;
  v5 = !v3 && v0 != 1110205732;
  byte_27CB22A28 = v5;
}

void sub_216BDCFA0()
{
  MGGetProductType();
  OUTLINED_FUNCTION_0_192();
  v2 = v1 | 0x42700000u;
  v3 = v3 || v0 == v2;
  v5 = !v3 && v0 != 1110205732;
  byte_27CB22A29 = v5;
}

uint64_t OpenAppsWithAccessPageAction.init(actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700D284();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t OpenAppsWithAccessPageAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21700D284();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for OpenAppsWithAccessPageAction()
{
  result = qword_27CAC53F8;
  if (!qword_27CAC53F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_216BDD1D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSRecentLibrarySearchesProviderObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_216BDD25C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_130(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_216DD37C8(v4, 1);
  OUTLINED_FUNCTION_33_32();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_123();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
  OUTLINED_FUNCTION_39_26();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_25_38();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_216BDD32C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_130(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_216DD37F8(v4, 1);
  OUTLINED_FUNCTION_33_32();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_123();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_25_38();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_216BDD3CC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_130(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_216DD3810(v4, 1);
  OUTLINED_FUNCTION_33_32();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_123();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68);
  OUTLINED_FUNCTION_39_26();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_25_38();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_216BDD7E4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_130(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_216DD3780(v4, 1);
  OUTLINED_FUNCTION_33_32();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_123();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_25_38();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_216BDD880(uint64_t a1)
{
  v2 = v1;
  v68 = sub_21700A0A4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v72 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5488);
  MEMORY[0x28223BE20](v9 - 8);
  v73 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v71 = &v62 - v12;
  MEMORY[0x28223BE20](v13);
  v75 = &v62 - v14;
  v15 = sub_21700A0C4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5490);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  v24 = &v62 - v23;
  OUTLINED_FUNCTION_10_73();
  sub_2166BF8B4(v25, v26);
  v27 = a1;
  v28 = sub_21700E774();
  v29 = *(*v2 + 16);
  if (__OFADD__(v29, v28))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_216DD3A08(v29 + v28, 1);
  v76 = v2;
  v77 = v5;
  v30 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v31 = *(v5 + 72);
  v5 = *v2;
  v32 = (*(*v2 + 24) >> 1) - *(*v2 + 16);
  v70 = v30;
  v74 = v31;
  (*(v17 + 16))(v21, a1, v15);
  v78 = v24;
  v33 = sub_21700E764();
  (*(v17 + 8))(a1, v15);
  if (v33 < v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v27 = v77;
  if (v33 >= 1)
  {
    OUTLINED_FUNCTION_25_38();
    if (v35)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v5 + 16) = v34;
  }

  if (v33 != v32)
  {
    result = sub_216697664(v78, &qword_27CAC5490);
    goto LABEL_8;
  }

LABEL_11:
  v64 = v5;
  v21 = *(v5 + 16);
  v37 = *(v69 + 36);
  OUTLINED_FUNCTION_10_73();
  v28 = sub_2166BF8B4(v38, v39);
  v40 = v78;
  sub_21700EC94();
  v41 = *(v40 + v37);
  v66 = v15;
  v67 = v37;
  if (v41 == v79[0])
  {
    v42 = 1;
    v43 = v68;
    v44 = v73;
    v45 = v75;
    goto LABEL_15;
  }

LABEL_14:
  v46 = sub_21700ECE4();
  v45 = v75;
  v43 = v68;
  (*(v27 + 16))(v75);
  v46(v79, 0);
  sub_21700ECA4();
  v42 = 0;
  v44 = v73;
LABEL_15:
  v65 = v28;
  __swift_storeEnumTagSinglePayload(v45, v42, 1, v43);
  v47 = (v27 + 32);
  v68 = (v27 + 16);
  v63 = (v27 + 8);
  v48 = v43;
  v49 = v71;
  while (1)
  {
    sub_216681B04(v45, v49, &qword_27CAC5488);
    if (__swift_getEnumTagSinglePayload(v49, 1, v48) == 1)
    {
      break;
    }

    sub_216697664(v49, &qword_27CAC5488);
    v50 = v64;
    v51 = *(v64 + 24);
    v69 = v51 >> 1;
    if ((v51 >> 1) < v21 + 1)
    {
      sub_2169390C8(v51 > 1, v21 + 1, 1, v64);
      v50 = v61;
      v69 = *(v61 + 24) >> 1;
    }

    v64 = v50;
    v52 = v75;
    v53 = v50 + v70 + v74 * v21;
    while (1)
    {
      sub_216681B04(v52, v44, &qword_27CAC5488);
      if (__swift_getEnumTagSinglePayload(v44, 1, v48) == 1)
      {
        sub_216697664(v44, &qword_27CAC5488);
        goto LABEL_28;
      }

      v54 = v44;
      v55 = *v47;
      v56 = v72;
      (*v47)(v72, v54, v48);
      if (v21 >= v69)
      {
        break;
      }

      v77 = v21;
      v52 = v75;
      sub_216697664(v75, &qword_27CAC5488);
      v55(v53, v56, v48);
      v57 = v48;
      v58 = v78;
      sub_21700EC94();
      if (*(v58 + v67) == v79[0])
      {
        v59 = 1;
      }

      else
      {
        v60 = sub_21700ECE4();
        (*v68)(v52);
        v60(v79, 0);
        sub_21700ECA4();
        v59 = 0;
      }

      v44 = v73;
      __swift_storeEnumTagSinglePayload(v52, v59, 1, v57);
      v53 += v74;
      v21 = v77 + 1;
      v48 = v57;
    }

    (*v63)(v56, v48);
    v44 = v73;
LABEL_28:
    *(v64 + 16) = v21;
    v49 = v71;
    v45 = v75;
  }

  sub_216697664(v45, &qword_27CAC5488);
  sub_216697664(v78, &qword_27CAC5490);
  result = sub_216697664(v49, &qword_27CAC5488);
  v5 = v64;
LABEL_8:
  *v76 = v5;
  return result;
}