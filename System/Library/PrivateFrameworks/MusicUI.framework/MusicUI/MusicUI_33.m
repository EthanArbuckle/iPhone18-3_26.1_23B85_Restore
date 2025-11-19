uint64_t sub_2169E07F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF698);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB34();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA788);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006814();
  v30 = sub_21700C924();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6A0);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType();
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF698);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF698);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction();
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EF608;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E16CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF688);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB34();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA788);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006814();
  v30 = sub_21700C084();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF690);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType();
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF688);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF688);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction();
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EF5EC;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E25A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF650);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB34();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA788);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006814();
  v30 = sub_2170073D4();
  sub_2169EF640(&qword_27CABF660, MEMORY[0x277D2ADE8]);
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    sub_2169EF640(&qword_27CABF668, MEMORY[0x277D2ADE8]);
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF670);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType();
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF650);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF650);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction();
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EF518;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E34DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6E0);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BCB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF680);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067D4();
  v30 = sub_21700C1E4();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6E8);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType();
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF6E0);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF6E0);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction();
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFAC0;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E43B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6C0);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BCB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF680);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067D4();
  v30 = sub_217006B84();
  sub_2169EF640(&qword_27CABF6C8, MEMORY[0x277D2A7C8]);
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    sub_2169EF640(&qword_27CAB6ED8, MEMORY[0x277D2A7C8]);
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6D0);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType();
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF6C0);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF6C0);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction();
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFABC;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E52EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B0);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BCB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF680);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067D4();
  v30 = sub_21700BA44();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B8);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType();
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF6B0);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF6B0);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction();
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFAB8;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E61C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF698);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BCB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF680);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067D4();
  v30 = sub_21700C924();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6A0);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType();
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF698);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF698);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction();
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFAB4;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E709C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF688);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BCB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF680);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067D4();
  v30 = sub_21700C084();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF690);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType();
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF688);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF688);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction();
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFAAC;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E7F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v108 = a2;
  v114 = a7;
  v111 = sub_2170075A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = v8;
  v109 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF650);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v79 - v11;
  v101 = sub_21700CFB4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_217005EF4();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v79 - v20;
  v96 = sub_21700D284();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BCB4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF680);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067D4();
  v30 = sub_2170073D4();
  sub_2169EF640(&qword_27CABF660, MEMORY[0x277D2ADE8]);
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    sub_2169EF640(&qword_27CABF668, MEMORY[0x277D2ADE8]);
    v81 = a1;
    v83 = sub_21700B934();
    v82 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x72466574656C6564;
    *(inited + 40) = 0xEA00000000006D6FLL;
    v34 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v34;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v35 = (v87 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v36 = v35[1];
    *(inited + 96) = *v35;
    *(inited + 104) = v36;
    *(inited + 120) = v34;
    *(inited + 128) = 1684957547;
    v37 = 0xE400000000000000;
    *(inited + 168) = v34;
    v38 = v88;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v89;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v86;
    v41 = v90;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
    sub_21700D6F4();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v117 = v39;
    sub_2166EF9C4(&v117, &v116);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v42;
    sub_2166EF9D4();
    v43 = v115;
    v118 = v34;
    *&v117 = 0x6574656C6564;
    *(&v117 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v43;
    sub_2166EF9D4();
    v44 = v115;
    v45 = 1701998445;
    v46 = v41;
    switch(v92)
    {
      case 1:
        v37 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v37 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v37 = 0x80000002170801D0;
        break;
      case 5:
        v37 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v37 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v37 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        v37 = 0xE800000000000000;
        v45 = 0x6472616F6279656BLL;
        break;
    }

    v118 = v34;
    *&v117 = v45;
    *(&v117 + 1) = v37;
    sub_2166EF9C4(&v117, &v116);
    swift_isUniquelyReferenced_nonNull_native();
    v115 = v44;
    sub_2166EF9D4();
    v49 = v115;
    v50 = v91;
    sub_2166A6E54(v40, v91, &qword_27CABA820);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
    v80 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820);
    }

    else
    {
      v52 = v85;
      v53 = v84;
      (*(v85 + 32))(v84, v50, v46);
      v54 = sub_217005DE4();
      v118 = v34;
      *&v117 = v54;
      *(&v117 + 1) = v55;
      sub_2166EF9C4(&v117, &v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v49;
      sub_2166EF9D4();
      v49 = v115;
      (*(v52 + 8))(v53, v46);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v99;
    MEMORY[0x21CE9DD70](v83, v82, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v59 = v100;
    v60 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v101;
    (*(v59 + 16))(v62, v58, v101);
    v64 = v97;
    v65 = v113;
    v66 = v98;
    (*(v97 + 16))(v94, v113, v98);
    v67 = v93;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v40, &qword_27CABA820);
    v68 = v102;
    (*(*(v80 - 8) + 16))(v102, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF670);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 32))(v68 + *(v103 + 44), v67, v96);
    type metadata accessor for MenuActionType();
    v69 = v114;
    swift_storeEnumTagMultiPayload();
    v70 = v106;
    sub_21678818C(v68, v106, &qword_27CABF650);
    v71 = v110;
    v72 = v109;
    v73 = v111;
    (*(v110 + 16))(v109, v108, v111);
    v74 = (*(v104 + 80) + 24) & ~*(v104 + 80);
    v75 = (v105 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    sub_21678818C(v70, v76 + v74, &qword_27CABF650);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction();
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFAA8;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v47);
  }
}

uint64_t sub_2169E8EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v89 = a6;
  v86 = a5;
  v85 = a4;
  v84 = a3;
  v105 = a2;
  v111 = a7;
  v108 = sub_2170075A4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = v8;
  v106 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6E0);
  v101 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v103 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v9;
  MEMORY[0x28223BE20](v10);
  v99 = &v78 - v11;
  v98 = sub_21700CFB4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_217005EF4();
  v82 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v81 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21700D704();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v88 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = &v78 - v20;
  v93 = sub_21700D284();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF658);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v78 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006834();
  v30 = sub_21700C1E4();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v78 = a1;
    v79 = sub_21700B934();
    v80 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    v34 = 0xE800000000000000;
    *(inited + 32) = 0x64616F6C6E776F64;
    *(inited + 40) = 0xE800000000000000;
    v35 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v35;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v36 = (v84 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    *(inited + 96) = *v36;
    *(inited + 104) = v37;
    *(inited + 120) = v35;
    *(inited + 128) = 1684957547;
    *(inited + 168) = v35;
    v38 = v85;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v86;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v83;
    v41 = v87;
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v87);
    sub_21700D6F4();
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v114 = v39;
    sub_2166EF9C4(&v114, &v113);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v42;
    sub_2166EF9D4();
    v43 = v112;
    v115 = v35;
    *&v114 = 0x64616F6C6E776F64;
    *(&v114 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v43;
    sub_2166EF9D4();
    v44 = v112;
    v45 = 0x6472616F6279656BLL;
    v46 = v40;
    switch(v89)
    {
      case 1:
        v34 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        v34 = 0xE400000000000000;
        v45 = 1701998445;
        break;
      case 3:
        v34 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v34 = 0x80000002170801D0;
        break;
      case 5:
        v34 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v34 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v34 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v115 = v35;
    *&v114 = v45;
    *(&v114 + 1) = v34;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v44;
    sub_2166EF9D4();
    v49 = v112;
    v50 = v88;
    sub_2166A6E54(v40, v88, &qword_27CABA820);
    if (__swift_getEnumTagSinglePayload(v50, 1, v41) == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820);
    }

    else
    {
      v51 = v82;
      v52 = v81;
      (*(v82 + 32))(v81, v50, v41);
      v53 = sub_217005DE4();
      v115 = v35;
      *&v114 = v53;
      *(&v114 + 1) = v54;
      sub_2166EF9C4(&v114, &v113);
      swift_isUniquelyReferenced_nonNull_native();
      v112 = v49;
      sub_2166EF9D4();
      v49 = v112;
      (*(v51 + 8))(v52, v41);
    }

    v89 = v30;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v55 = sub_21700CF84();
    v56 = __swift_project_value_buffer(v55, qword_280E73DB0);
    v57 = v96;
    MEMORY[0x21CE9DD70](v79, v80, 0x6E6F74747562, 0xE600000000000000, v49, v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v58 = v97;
    v59 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_217013DA0;
    v61 = v60 + v59;
    v62 = v98;
    (*(v58 + 16))(v61, v57, v98);
    v63 = v94;
    v64 = v110;
    v65 = v95;
    (*(v94 + 16))(v91, v110, v95);
    v66 = v90;
    sub_21700D244();
    (*(v58 + 8))(v57, v62);
    (*(v63 + 8))(v64, v65);
    sub_2166997CC(v46, &qword_27CABA820);
    v67 = v99;
    (*(*(v89 - 8) + 16))(v99, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6E8);
    swift_storeEnumTagMultiPayload();
    (*(v92 + 32))(v67 + *(v100 + 44), v66, v93);
    type metadata accessor for MenuActionType();
    v68 = v111;
    swift_storeEnumTagMultiPayload();
    v69 = v103;
    sub_21678818C(v67, v103, &qword_27CABF6E0);
    v70 = v107;
    v71 = v106;
    v72 = v108;
    (*(v107 + 16))(v106, v105, v108);
    v73 = (*(v101 + 80) + 24) & ~*(v101 + 80);
    v74 = (v102 + *(v70 + 80) + v73) & ~*(v70 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v109;
    sub_21678818C(v69, v75 + v73, &qword_27CABF6E0);
    (*(v70 + 32))(v75 + v74, v71, v72);
    v76 = type metadata accessor for MenuAction();
    v77 = (v68 + *(v76 + 20));
    *v77 = sub_2169EFAC0;
    v77[1] = v75;
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v76);
  }

  else
  {
    v47 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v111, 1, 1, v47);
  }
}

uint64_t sub_2169E9D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v90 = a6;
  v87 = a5;
  v86 = a4;
  v85 = a3;
  v106 = a2;
  v112 = a7;
  v109 = sub_2170075A4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = v8;
  v107 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6C0);
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v104 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v9;
  MEMORY[0x28223BE20](v10);
  v100 = &v79 - v11;
  v99 = sub_21700CFB4();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_217005EF4();
  v83 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v82 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_21700D704();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v111 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v89 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v84 = &v79 - v20;
  v94 = sub_21700D284();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF658);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006834();
  v30 = sub_217006B84();
  sub_2169EF640(&qword_27CABF6C8, MEMORY[0x277D2A7C8]);
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    sub_2169EF640(&qword_27CAB6ED8, MEMORY[0x277D2A7C8]);
    v79 = a1;
    v80 = sub_21700B934();
    v81 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    v34 = 0xE800000000000000;
    *(inited + 32) = 0x64616F6C6E776F64;
    *(inited + 40) = 0xE800000000000000;
    v35 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v35;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v36 = (v85 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    *(inited + 96) = *v36;
    *(inited + 104) = v37;
    *(inited + 120) = v35;
    *(inited + 128) = 1684957547;
    *(inited + 168) = v35;
    v38 = v86;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v87;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v84;
    v41 = v88;
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v88);
    sub_21700D6F4();
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v115 = v39;
    sub_2166EF9C4(&v115, &v114);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v113 = v42;
    sub_2166EF9D4();
    v43 = v113;
    v116 = v35;
    *&v115 = 0x64616F6C6E776F64;
    *(&v115 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v115, &v114);
    swift_isUniquelyReferenced_nonNull_native();
    v113 = v43;
    sub_2166EF9D4();
    v44 = v113;
    v45 = 0x6472616F6279656BLL;
    v46 = v40;
    switch(v90)
    {
      case 1:
        v34 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        v34 = 0xE400000000000000;
        v45 = 1701998445;
        break;
      case 3:
        v34 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v34 = 0x80000002170801D0;
        break;
      case 5:
        v34 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v34 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v34 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v116 = v35;
    *&v115 = v45;
    *(&v115 + 1) = v34;
    sub_2166EF9C4(&v115, &v114);
    swift_isUniquelyReferenced_nonNull_native();
    v113 = v44;
    sub_2166EF9D4();
    v49 = v113;
    v50 = v89;
    sub_2166A6E54(v40, v89, &qword_27CABA820);
    if (__swift_getEnumTagSinglePayload(v50, 1, v41) == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820);
    }

    else
    {
      v51 = v83;
      v52 = v82;
      (*(v83 + 32))(v82, v50, v41);
      v53 = sub_217005DE4();
      v116 = v35;
      *&v115 = v53;
      *(&v115 + 1) = v54;
      sub_2166EF9C4(&v115, &v114);
      swift_isUniquelyReferenced_nonNull_native();
      v113 = v49;
      sub_2166EF9D4();
      v49 = v113;
      (*(v51 + 8))(v52, v41);
    }

    v90 = v30;
    v55 = v46;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v97;
    MEMORY[0x21CE9DD70](v80, v81, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v59 = v98;
    v60 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v99;
    (*(v59 + 16))(v62, v58, v99);
    v64 = v95;
    v65 = v111;
    v66 = v96;
    (*(v95 + 16))(v92, v111, v96);
    v67 = v91;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v55, &qword_27CABA820);
    v68 = v100;
    (*(*(v90 - 8) + 16))(v100, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6D0);
    swift_storeEnumTagMultiPayload();
    (*(v93 + 32))(v68 + *(v101 + 44), v67, v94);
    type metadata accessor for MenuActionType();
    v69 = v112;
    swift_storeEnumTagMultiPayload();
    v70 = v104;
    sub_21678818C(v68, v104, &qword_27CABF6C0);
    v71 = v108;
    v72 = v107;
    v73 = v109;
    (*(v108 + 16))(v107, v106, v109);
    v74 = (*(v102 + 80) + 24) & ~*(v102 + 80);
    v75 = (v103 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v110;
    sub_21678818C(v70, v76 + v74, &qword_27CABF6C0);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction();
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFABC;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v112, 1, 1, v47);
  }
}

uint64_t sub_2169EAC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v89 = a6;
  v86 = a5;
  v85 = a4;
  v84 = a3;
  v105 = a2;
  v111 = a7;
  v108 = sub_2170075A4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = v8;
  v106 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B0);
  v101 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v103 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v9;
  MEMORY[0x28223BE20](v10);
  v99 = &v78 - v11;
  v98 = sub_21700CFB4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_217005EF4();
  v82 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v81 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21700D704();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v88 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = &v78 - v20;
  v93 = sub_21700D284();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF658);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v78 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006834();
  v30 = sub_21700BA44();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v78 = a1;
    v79 = sub_21700B934();
    v80 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    v34 = 0xE800000000000000;
    *(inited + 32) = 0x64616F6C6E776F64;
    *(inited + 40) = 0xE800000000000000;
    v35 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v35;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v36 = (v84 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    *(inited + 96) = *v36;
    *(inited + 104) = v37;
    *(inited + 120) = v35;
    *(inited + 128) = 1684957547;
    *(inited + 168) = v35;
    v38 = v85;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v86;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v83;
    v41 = v87;
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v87);
    sub_21700D6F4();
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v114 = v39;
    sub_2166EF9C4(&v114, &v113);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v42;
    sub_2166EF9D4();
    v43 = v112;
    v115 = v35;
    *&v114 = 0x64616F6C6E776F64;
    *(&v114 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v43;
    sub_2166EF9D4();
    v44 = v112;
    v45 = 0x6472616F6279656BLL;
    v46 = v40;
    switch(v89)
    {
      case 1:
        v34 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        v34 = 0xE400000000000000;
        v45 = 1701998445;
        break;
      case 3:
        v34 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v34 = 0x80000002170801D0;
        break;
      case 5:
        v34 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v34 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v34 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v115 = v35;
    *&v114 = v45;
    *(&v114 + 1) = v34;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v44;
    sub_2166EF9D4();
    v49 = v112;
    v50 = v88;
    sub_2166A6E54(v40, v88, &qword_27CABA820);
    if (__swift_getEnumTagSinglePayload(v50, 1, v41) == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820);
    }

    else
    {
      v51 = v82;
      v52 = v81;
      (*(v82 + 32))(v81, v50, v41);
      v53 = sub_217005DE4();
      v115 = v35;
      *&v114 = v53;
      *(&v114 + 1) = v54;
      sub_2166EF9C4(&v114, &v113);
      swift_isUniquelyReferenced_nonNull_native();
      v112 = v49;
      sub_2166EF9D4();
      v49 = v112;
      (*(v51 + 8))(v52, v41);
    }

    v89 = v30;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v55 = sub_21700CF84();
    v56 = __swift_project_value_buffer(v55, qword_280E73DB0);
    v57 = v96;
    MEMORY[0x21CE9DD70](v79, v80, 0x6E6F74747562, 0xE600000000000000, v49, v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v58 = v97;
    v59 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_217013DA0;
    v61 = v60 + v59;
    v62 = v98;
    (*(v58 + 16))(v61, v57, v98);
    v63 = v94;
    v64 = v110;
    v65 = v95;
    (*(v94 + 16))(v91, v110, v95);
    v66 = v90;
    sub_21700D244();
    (*(v58 + 8))(v57, v62);
    (*(v63 + 8))(v64, v65);
    sub_2166997CC(v46, &qword_27CABA820);
    v67 = v99;
    (*(*(v89 - 8) + 16))(v99, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6B8);
    swift_storeEnumTagMultiPayload();
    (*(v92 + 32))(v67 + *(v100 + 44), v66, v93);
    type metadata accessor for MenuActionType();
    v68 = v111;
    swift_storeEnumTagMultiPayload();
    v69 = v103;
    sub_21678818C(v67, v103, &qword_27CABF6B0);
    v70 = v107;
    v71 = v106;
    v72 = v108;
    (*(v107 + 16))(v106, v105, v108);
    v73 = (*(v101 + 80) + 24) & ~*(v101 + 80);
    v74 = (v102 + *(v70 + 80) + v73) & ~*(v70 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v109;
    sub_21678818C(v69, v75 + v73, &qword_27CABF6B0);
    (*(v70 + 32))(v75 + v74, v71, v72);
    v76 = type metadata accessor for MenuAction();
    v77 = (v68 + *(v76 + 20));
    *v77 = sub_2169EFAB8;
    v77[1] = v75;
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v76);
  }

  else
  {
    v47 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v111, 1, 1, v47);
  }
}

uint64_t sub_2169EBB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v89 = a6;
  v86 = a5;
  v85 = a4;
  v84 = a3;
  v105 = a2;
  v111 = a7;
  v108 = sub_2170075A4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = v8;
  v106 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF698);
  v101 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v103 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v9;
  MEMORY[0x28223BE20](v10);
  v99 = &v78 - v11;
  v98 = sub_21700CFB4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_217005EF4();
  v82 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v81 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21700D704();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v88 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = &v78 - v20;
  v93 = sub_21700D284();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF658);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v78 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006834();
  v30 = sub_21700C924();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v78 = a1;
    v79 = sub_21700B934();
    v80 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    v34 = 0xE800000000000000;
    *(inited + 32) = 0x64616F6C6E776F64;
    *(inited + 40) = 0xE800000000000000;
    v35 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v35;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v36 = (v84 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    *(inited + 96) = *v36;
    *(inited + 104) = v37;
    *(inited + 120) = v35;
    *(inited + 128) = 1684957547;
    *(inited + 168) = v35;
    v38 = v85;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v86;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v83;
    v41 = v87;
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v87);
    sub_21700D6F4();
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v114 = v39;
    sub_2166EF9C4(&v114, &v113);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v42;
    sub_2166EF9D4();
    v43 = v112;
    v115 = v35;
    *&v114 = 0x64616F6C6E776F64;
    *(&v114 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v43;
    sub_2166EF9D4();
    v44 = v112;
    v45 = 0x6472616F6279656BLL;
    v46 = v40;
    switch(v89)
    {
      case 1:
        v34 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        v34 = 0xE400000000000000;
        v45 = 1701998445;
        break;
      case 3:
        v34 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v34 = 0x80000002170801D0;
        break;
      case 5:
        v34 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v34 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v34 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v115 = v35;
    *&v114 = v45;
    *(&v114 + 1) = v34;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v44;
    sub_2166EF9D4();
    v49 = v112;
    v50 = v88;
    sub_2166A6E54(v40, v88, &qword_27CABA820);
    if (__swift_getEnumTagSinglePayload(v50, 1, v41) == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820);
    }

    else
    {
      v51 = v82;
      v52 = v81;
      (*(v82 + 32))(v81, v50, v41);
      v53 = sub_217005DE4();
      v115 = v35;
      *&v114 = v53;
      *(&v114 + 1) = v54;
      sub_2166EF9C4(&v114, &v113);
      swift_isUniquelyReferenced_nonNull_native();
      v112 = v49;
      sub_2166EF9D4();
      v49 = v112;
      (*(v51 + 8))(v52, v41);
    }

    v89 = v30;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v55 = sub_21700CF84();
    v56 = __swift_project_value_buffer(v55, qword_280E73DB0);
    v57 = v96;
    MEMORY[0x21CE9DD70](v79, v80, 0x6E6F74747562, 0xE600000000000000, v49, v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v58 = v97;
    v59 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_217013DA0;
    v61 = v60 + v59;
    v62 = v98;
    (*(v58 + 16))(v61, v57, v98);
    v63 = v94;
    v64 = v110;
    v65 = v95;
    (*(v94 + 16))(v91, v110, v95);
    v66 = v90;
    sub_21700D244();
    (*(v58 + 8))(v57, v62);
    (*(v63 + 8))(v64, v65);
    sub_2166997CC(v46, &qword_27CABA820);
    v67 = v99;
    (*(*(v89 - 8) + 16))(v99, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6A0);
    swift_storeEnumTagMultiPayload();
    (*(v92 + 32))(v67 + *(v100 + 44), v66, v93);
    type metadata accessor for MenuActionType();
    v68 = v111;
    swift_storeEnumTagMultiPayload();
    v69 = v103;
    sub_21678818C(v67, v103, &qword_27CABF698);
    v70 = v107;
    v71 = v106;
    v72 = v108;
    (*(v107 + 16))(v106, v105, v108);
    v73 = (*(v101 + 80) + 24) & ~*(v101 + 80);
    v74 = (v102 + *(v70 + 80) + v73) & ~*(v70 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v109;
    sub_21678818C(v69, v75 + v73, &qword_27CABF698);
    (*(v70 + 32))(v75 + v74, v71, v72);
    v76 = type metadata accessor for MenuAction();
    v77 = (v68 + *(v76 + 20));
    *v77 = sub_2169EFAB4;
    v77[1] = v75;
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v76);
  }

  else
  {
    v47 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v111, 1, 1, v47);
  }
}

uint64_t sub_2169ECA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v89 = a6;
  v86 = a5;
  v85 = a4;
  v84 = a3;
  v105 = a2;
  v111 = a7;
  v108 = sub_2170075A4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = v8;
  v106 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF688);
  v101 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v103 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v9;
  MEMORY[0x28223BE20](v10);
  v99 = &v78 - v11;
  v98 = sub_21700CFB4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_217005EF4();
  v82 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v81 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21700D704();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v88 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = &v78 - v20;
  v93 = sub_21700D284();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF658);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v78 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006834();
  v30 = sub_21700C084();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    v78 = a1;
    v79 = sub_21700B934();
    v80 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    v34 = 0xE800000000000000;
    *(inited + 32) = 0x64616F6C6E776F64;
    *(inited + 40) = 0xE800000000000000;
    v35 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v35;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v36 = (v84 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    *(inited + 96) = *v36;
    *(inited + 104) = v37;
    *(inited + 120) = v35;
    *(inited + 128) = 1684957547;
    *(inited + 168) = v35;
    v38 = v85;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v86;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v83;
    v41 = v87;
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v87);
    sub_21700D6F4();
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v114 = v39;
    sub_2166EF9C4(&v114, &v113);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v42;
    sub_2166EF9D4();
    v43 = v112;
    v115 = v35;
    *&v114 = 0x64616F6C6E776F64;
    *(&v114 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v43;
    sub_2166EF9D4();
    v44 = v112;
    v45 = 0x6472616F6279656BLL;
    v46 = v40;
    switch(v89)
    {
      case 1:
        v34 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        v34 = 0xE400000000000000;
        v45 = 1701998445;
        break;
      case 3:
        v34 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v34 = 0x80000002170801D0;
        break;
      case 5:
        v34 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v34 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v34 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v115 = v35;
    *&v114 = v45;
    *(&v114 + 1) = v34;
    sub_2166EF9C4(&v114, &v113);
    swift_isUniquelyReferenced_nonNull_native();
    v112 = v44;
    sub_2166EF9D4();
    v49 = v112;
    v50 = v88;
    sub_2166A6E54(v40, v88, &qword_27CABA820);
    if (__swift_getEnumTagSinglePayload(v50, 1, v41) == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820);
    }

    else
    {
      v51 = v82;
      v52 = v81;
      (*(v82 + 32))(v81, v50, v41);
      v53 = sub_217005DE4();
      v115 = v35;
      *&v114 = v53;
      *(&v114 + 1) = v54;
      sub_2166EF9C4(&v114, &v113);
      swift_isUniquelyReferenced_nonNull_native();
      v112 = v49;
      sub_2166EF9D4();
      v49 = v112;
      (*(v51 + 8))(v52, v41);
    }

    v89 = v30;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v55 = sub_21700CF84();
    v56 = __swift_project_value_buffer(v55, qword_280E73DB0);
    v57 = v96;
    MEMORY[0x21CE9DD70](v79, v80, 0x6E6F74747562, 0xE600000000000000, v49, v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v58 = v97;
    v59 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_217013DA0;
    v61 = v60 + v59;
    v62 = v98;
    (*(v58 + 16))(v61, v57, v98);
    v63 = v94;
    v64 = v110;
    v65 = v95;
    (*(v94 + 16))(v91, v110, v95);
    v66 = v90;
    sub_21700D244();
    (*(v58 + 8))(v57, v62);
    (*(v63 + 8))(v64, v65);
    sub_2166997CC(v46, &qword_27CABA820);
    v67 = v99;
    (*(*(v89 - 8) + 16))(v99, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF690);
    swift_storeEnumTagMultiPayload();
    (*(v92 + 32))(v67 + *(v100 + 44), v66, v93);
    type metadata accessor for MenuActionType();
    v68 = v111;
    swift_storeEnumTagMultiPayload();
    v69 = v103;
    sub_21678818C(v67, v103, &qword_27CABF688);
    v70 = v107;
    v71 = v106;
    v72 = v108;
    (*(v107 + 16))(v106, v105, v108);
    v73 = (*(v101 + 80) + 24) & ~*(v101 + 80);
    v74 = (v102 + *(v70 + 80) + v73) & ~*(v70 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v109;
    sub_21678818C(v69, v75 + v73, &qword_27CABF688);
    (*(v70 + 32))(v75 + v74, v71, v72);
    v76 = type metadata accessor for MenuAction();
    v77 = (v68 + *(v76 + 20));
    *v77 = sub_2169EFAAC;
    v77[1] = v75;
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v76);
  }

  else
  {
    v47 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v111, 1, 1, v47);
  }
}

uint64_t sub_2169ED8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v90 = a6;
  v87 = a5;
  v86 = a4;
  v85 = a3;
  v106 = a2;
  v112 = a7;
  v109 = sub_2170075A4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = v8;
  v107 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF650);
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v104 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v9;
  MEMORY[0x28223BE20](v10);
  v100 = &v79 - v11;
  v99 = sub_21700CFB4();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_217005EF4();
  v83 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v82 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_21700D704();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v111 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v89 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v84 = &v79 - v20;
  v94 = sub_21700D284();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF658);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006834();
  v30 = sub_2170073D4();
  sub_2169EF640(&qword_27CABF660, MEMORY[0x277D2ADE8]);
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  LODWORD(v25) = (*(v27 + 88))(v29, v26);
  v31 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v25 == v31)
  {
    sub_2169EF640(&qword_27CABF668, MEMORY[0x277D2ADE8]);
    v79 = a1;
    v80 = sub_21700B934();
    v81 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    v34 = 0xE800000000000000;
    *(inited + 32) = 0x64616F6C6E776F64;
    *(inited + 40) = 0xE800000000000000;
    v35 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x7972617262694CLL;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v35;
    *(inited + 80) = 0x4E6E6F6974636573;
    *(inited + 88) = 0xEB00000000656D61;
    v36 = (v85 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    *(inited + 96) = *v36;
    *(inited + 104) = v37;
    *(inited + 120) = v35;
    *(inited + 128) = 1684957547;
    *(inited + 168) = v35;
    v38 = v86;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v38;
    *(inited + 152) = v87;
    sub_21700DF14();
    sub_21700DF14();
    v39 = sub_21700E384();
    v40 = v84;
    v41 = v88;
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v88);
    sub_21700D6F4();
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v115 = v39;
    sub_2166EF9C4(&v115, &v114);
    v42 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v113 = v42;
    sub_2166EF9D4();
    v43 = v113;
    v116 = v35;
    *&v115 = 0x64616F6C6E776F64;
    *(&v115 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v115, &v114);
    swift_isUniquelyReferenced_nonNull_native();
    v113 = v43;
    sub_2166EF9D4();
    v44 = v113;
    v45 = 0x6472616F6279656BLL;
    v46 = v40;
    switch(v90)
    {
      case 1:
        v34 = 0xE500000000000000;
        v45 = 0x79726F7473;
        break;
      case 2:
        v34 = 0xE400000000000000;
        v45 = 1701998445;
        break;
      case 3:
        v34 = 0xE500000000000000;
        v45 = 0x636972796CLL;
        break;
      case 4:
        v45 = 0xD000000000000010;
        v34 = 0x80000002170801D0;
        break;
      case 5:
        v34 = 0x80000002170801F0;
        v45 = 0xD000000000000012;
        break;
      case 6:
        v34 = 0xE900000000000075;
        v45 = 0x6E654D6570697773;
        break;
      case 7:
        v34 = 0x8000000217080210;
        v45 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v116 = v35;
    *&v115 = v45;
    *(&v115 + 1) = v34;
    sub_2166EF9C4(&v115, &v114);
    swift_isUniquelyReferenced_nonNull_native();
    v113 = v44;
    sub_2166EF9D4();
    v49 = v113;
    v50 = v89;
    sub_2166A6E54(v40, v89, &qword_27CABA820);
    if (__swift_getEnumTagSinglePayload(v50, 1, v41) == 1)
    {
      sub_2166997CC(v50, &qword_27CABA820);
    }

    else
    {
      v51 = v83;
      v52 = v82;
      (*(v83 + 32))(v82, v50, v41);
      v53 = sub_217005DE4();
      v116 = v35;
      *&v115 = v53;
      *(&v115 + 1) = v54;
      sub_2166EF9C4(&v115, &v114);
      swift_isUniquelyReferenced_nonNull_native();
      v113 = v49;
      sub_2166EF9D4();
      v49 = v113;
      (*(v51 + 8))(v52, v41);
    }

    v90 = v30;
    v55 = v46;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v56 = sub_21700CF84();
    v57 = __swift_project_value_buffer(v56, qword_280E73DB0);
    v58 = v97;
    MEMORY[0x21CE9DD70](v80, v81, 0x6E6F74747562, 0xE600000000000000, v49, v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v59 = v98;
    v60 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    v62 = v61 + v60;
    v63 = v99;
    (*(v59 + 16))(v62, v58, v99);
    v64 = v95;
    v65 = v111;
    v66 = v96;
    (*(v95 + 16))(v92, v111, v96);
    v67 = v91;
    sub_21700D244();
    (*(v59 + 8))(v58, v63);
    (*(v64 + 8))(v65, v66);
    sub_2166997CC(v55, &qword_27CABA820);
    v68 = v100;
    (*(*(v90 - 8) + 16))(v100, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF670);
    swift_storeEnumTagMultiPayload();
    (*(v93 + 32))(v68 + *(v101 + 44), v67, v94);
    type metadata accessor for MenuActionType();
    v69 = v112;
    swift_storeEnumTagMultiPayload();
    v70 = v104;
    sub_21678818C(v68, v104, &qword_27CABF650);
    v71 = v108;
    v72 = v107;
    v73 = v109;
    (*(v108 + 16))(v107, v106, v109);
    v74 = (*(v102 + 80) + 24) & ~*(v102 + 80);
    v75 = (v103 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v110;
    sub_21678818C(v70, v76 + v74, &qword_27CABF650);
    (*(v71 + 32))(v76 + v75, v72, v73);
    v77 = type metadata accessor for MenuAction();
    v78 = (v69 + *(v77 + 20));
    *v78 = sub_2169EFAA8;
    v78[1] = v76;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v77);
  }

  else
  {
    v47 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v112, 1, 1, v47);
  }
}

void sub_2169EE7DC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_12_38();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_50_2();
  sub_2169DA130(v2, v3, v4, v5, v6, v7, v8);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_50_2();
  sub_2169DE9E4(v9, v10, v11, v12, v13, v14, v15);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_50_2();
  sub_2169E43B4(v16, v17, v18, v19, v20, v21, v22);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  sub_217006B54();

  type metadata accessor for MenuAction();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_50_2();
  sub_2169E9D68(v28, v29, v30, v31, v32, v33, v34);
  v35 = sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  v37 = OUTLINED_FUNCTION_9_45(inited, xmmword_217015240);
  v37[3].n128_u64[0] = v38;
  v37[3].n128_u64[1] = v27;
  v37[4].n128_u64[0] = v35;
  sub_2167A2998(v37);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

void sub_2169EE970()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_12_38();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_25_1();
  v43 = MEMORY[0x277CD7E30];
  v44 = MEMORY[0x277D2AE70];
  v42 = MEMORY[0x277CD7E58];
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_48_2();
  sub_2169DB544(v2, v3, v4, v5, v6, v7, v8, v9, v42, v43, v44, &qword_27CABF6B8, &unk_217033AA0, &unk_282921860, sub_2169EFAB8, &unk_282921838, sub_2169EFAB0, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  OUTLINED_FUNCTION_44_17();
  v10 = OUTLINED_FUNCTION_30_17();
  sub_2166997CC(v10, v11);
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_48_2();
  sub_2169DF91C(v12, v13, v14, v15, v16, v17, v18);
  v19 = sub_21678C1C4();
  OUTLINED_FUNCTION_20_28(v19);
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_48_2();
  sub_2169E52EC(v20, v21, v22, v23, v24, v25, v26);
  sub_21678C1C4();
  v27 = OUTLINED_FUNCTION_30_17();
  sub_2166997CC(v27, v28);
  sub_21700BA14();

  v29 = type metadata accessor for MenuAction();
  v30 = OUTLINED_FUNCTION_16_33(v29);
  OUTLINED_FUNCTION_22_33();
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_48_2();
  sub_2169EAC88(v31, v32, v33, v34, v35, v36, v37);
  v38 = sub_21678C1C4();
  OUTLINED_FUNCTION_22_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  v40 = OUTLINED_FUNCTION_9_45(inited, xmmword_217015240);
  v40[3].n128_u64[0] = v41;
  v40[3].n128_u64[1] = v30;
  v40[4].n128_u64[0] = v38;
  sub_2167A2998(v40);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void sub_2169EEB74()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_12_38();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_25_1();
  v43 = MEMORY[0x277CD85F0];
  v44 = MEMORY[0x277D2B2B0];
  v42 = MEMORY[0x277CD8608];
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_83();
  sub_2169DB544(v2, v3, v4, v5, v6, v7, v8, v9, v42, v43, v44, &qword_27CABF6A0, &unk_217033A90, &unk_282921798, sub_2169EFAB4, &unk_282921770, sub_2169EFAB0, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  OUTLINED_FUNCTION_44_17();
  v10 = OUTLINED_FUNCTION_30_17();
  sub_2166997CC(v10, v11);
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_83();
  sub_2169E07F4(v12, v13, v14, v15, v16, v17, v18);
  v19 = sub_21678C1C4();
  OUTLINED_FUNCTION_20_28(v19);
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_83();
  sub_2169E61C4(v20, v21, v22, v23, v24, v25, v26);
  sub_21678C1C4();
  v27 = OUTLINED_FUNCTION_30_17();
  sub_2166997CC(v27, v28);
  sub_21700C804();

  v29 = type metadata accessor for MenuAction();
  v30 = OUTLINED_FUNCTION_16_33(v29);
  OUTLINED_FUNCTION_22_33();
  OUTLINED_FUNCTION_0_106();
  OUTLINED_FUNCTION_83();
  sub_2169EBB44(v31, v32, v33, v34, v35, v36, v37);
  v38 = sub_21678C1C4();
  OUTLINED_FUNCTION_22_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  v40 = OUTLINED_FUNCTION_9_45(inited, xmmword_217015240);
  v40[3].n128_u64[0] = v41;
  v40[3].n128_u64[1] = v30;
  v40[4].n128_u64[0] = v38;
  sub_2167A2998(v40);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void sub_2169EED78()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_12_38();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_25_1();
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for MenuConfiguration(0) + 20);
  swift_storeEnumTagMultiPayload();
  sub_216B88F54(v0 + v7, v6);
  sub_2169EF598(v6, type metadata accessor for MenuContext);
  v44 = MEMORY[0x277CD8218];
  v45 = MEMORY[0x277D2B160];
  v43 = MEMORY[0x277CD8238];
  OUTLINED_FUNCTION_3_77();
  OUTLINED_FUNCTION_13_32();
  sub_2169DB544(v8, v9, v10, v11, v12, v13, v14, v15, v43, v44, v45, &qword_27CABF690, &unk_217033A80, &unk_2829216D0, sub_2169EFAAC, &unk_2829216A8, sub_2169EFAB0, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
  v49 = OUTLINED_FUNCTION_44_17();
  sub_2166997CC(v1, &qword_27CAB6DF0);
  OUTLINED_FUNCTION_3_77();
  OUTLINED_FUNCTION_13_32();
  sub_2169E16CC(v16, v17, v18, v19, v20, v21, v22);
  v48 = sub_21678C1C4();
  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_3_77();
  OUTLINED_FUNCTION_13_32();
  sub_2169E709C(v23, v24, v25, v26, v27, v28, v29);
  v47 = sub_21678C1C4();
  OUTLINED_FUNCTION_31_27();
  sub_21700C014();

  v30 = type metadata accessor for MenuAction();
  v31 = OUTLINED_FUNCTION_16_33(v30);
  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_3_77();
  OUTLINED_FUNCTION_13_32();
  sub_2169ECA00(v32, v33, v34, v35, v36, v37, v38);
  v39 = sub_21678C1C4();
  OUTLINED_FUNCTION_31_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  v41 = OUTLINED_FUNCTION_9_45(inited, xmmword_217015240);
  v41[3].n128_u64[0] = v42;
  v41[3].n128_u64[1] = v31;
  v41[4].n128_u64[0] = v39;
  sub_2167A2998(v41);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void sub_2169EF010()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_12_38();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_26_27();
  sub_2169DC6F8(v2, v3, v4, v5, v6, v7, v8);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_26_27();
  sub_2169E25A4(v9, v10, v11, v12, v13, v14, v15);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_26_27();
  sub_2169E7F74(v16, v17, v18, v19, v20, v21, v22);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  sub_217007394();

  type metadata accessor for MenuAction();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_26_27();
  sub_2169ED8BC(v28, v29, v30, v31, v32, v33, v34);
  v35 = sub_21678C1C4();
  OUTLINED_FUNCTION_14_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  v37 = OUTLINED_FUNCTION_9_45(inited, xmmword_217015240);
  v37[3].n128_u64[0] = v38;
  v37[3].n128_u64[1] = v27;
  v37[4].n128_u64[0] = v35;
  sub_2167A2998(v37);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2169EF1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v11[4] = sub_2169EF6A4(a6, a4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  sub_2166A6E54(a2, boxed_opaque_existential_1, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t sub_2169EF27C()
{

  v1 = OBJC_IVAR____TtC7MusicUI25LibraryMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_2169EF2F4()
{
  sub_2169EF27C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for LibraryMenuActionProvider()
{
  result = qword_280E357C0;
  if (!qword_280E357C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2169EF3A0()
{
  sub_216692BBC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2169EF534(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2169EF598(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2169EF640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2169EF6A4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = (type metadata accessor for ProcessDeepLinkAction() - 8);
  v8 = (v4 + v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  v25 = *(*v7 + 64);
  v24 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v11 = *(v9 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(v0 + v8);
  v13 = v7[7];
  v14 = sub_217005EF4();
  OUTLINED_FUNCTION_34();
  v16 = v0 + v8 + v13;
  v17 = *(v15 + 8);
  v17(v16, v14);
  v18 = v0 + v8 + v7[8];
  v19 = type metadata accessor for ReferrerInfo();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v19);
  v21 = v25;
  v22 = v24;
  if (!EnumTagSinglePayload)
  {
    if (!__swift_getEnumTagSinglePayload(v18, 1, v14))
    {
      v17(v18, v14);
    }

    v22 = v24;
    v21 = v25;
  }

  (*(v10 + 8))(v0 + ((v8 + v21 + v11) & ~v11), v22);

  return swift_deallocObject();
}

uint64_t sub_2169EF9D4(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_2(v7);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v12);
  return sub_2169EF1A4(*(v3 + 16), v3 + v9, v3 + ((v9 + v11 + *(v13 + 80)) & ~*(v13 + 80)), a1, a2, a3);
}

unint64_t sub_2169EFAD8()
{
  result = qword_280E39410[0];
  if (!qword_280E39410[0])
  {
    type metadata accessor for HideAllPlaylistsAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E39410);
  }

  return result;
}

uint64_t sub_2169EFB30()
{
  v0 = sub_21700D2A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v4 = v7[1];
  sub_216CACD74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
  v5 = sub_21700E1F4();

  return v5;
}

uint64_t type metadata accessor for MusicURLRequest()
{
  result = qword_280E47250;
  if (!qword_280E47250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2169EFCE0()
{
  sub_217006224();
  if (v0 <= 0x3F)
  {
    sub_2169EFDF4();
    if (v1 <= 0x3F)
    {
      sub_2169EFE38(319, &qword_280E2A248, MEMORY[0x277D21BD0]);
      if (v2 <= 0x3F)
      {
        sub_2169EFE38(319, &qword_280E4A4C0, MEMORY[0x277CC95F0]);
        if (v3 <= 0x3F)
        {
          sub_216688154();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2169EFDF4()
{
  result = qword_280E29D80;
  if (!qword_280E29D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29D80);
  }

  return result;
}

void sub_2169EFE38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2169EFE90()
{
  sub_217006224();
  OUTLINED_FUNCTION_0_107();
  sub_2169F0044(v0, v1);

  return sub_21700E434();
}

uint64_t sub_2169EFF04()
{
  sub_21700F8F4();
  sub_217006224();
  OUTLINED_FUNCTION_0_107();
  sub_2169F0044(v0, v1);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_2169EFF84()
{
  sub_21700F8F4();
  sub_217006224();
  OUTLINED_FUNCTION_0_107();
  sub_2169F0044(v0, v1);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_2169F0044(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2169F00B4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v97 = a3;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v91 = v5;
  v92 = v4;
  MEMORY[0x28223BE20](v4);
  v86 = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_4();
  v85 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_4();
  v87 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_4();
  v89 = v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_4();
  v88 = v20;
  OUTLINED_FUNCTION_3_1();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v83 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v83 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v83 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = v83 - v31;
  v90 = a1;
  sub_21700CE04();
  v33 = sub_21700CDB4();
  v35 = v34;
  v37 = *(v9 + 8);
  v36 = (v9 + 8);
  v38 = v32;
  v39 = v37;
  v94 = v7;
  v37(v38, v7);
  if (v35)
  {
    v83[1] = v13;
    v95 = v33;
    v96 = v35;
    v40 = v97;
    sub_21700F364();
    v41 = v90;
    sub_21700CE04();
    v42 = sub_21700CD44();
    v43 = v30;
    v44 = v94;
    v39(v43, v94);
    v40[40] = v42 & 1;
    sub_21700CE04();
    v45 = sub_21700CD44();
    v39(v27, v44);
    v40[41] = v45 & 1;
    OUTLINED_FUNCTION_1_94();
    sub_21700CE04();
    v46 = sub_21700CD44();
    v39(v24, v44);
    v40[42] = v46 & 1;
    OUTLINED_FUNCTION_1_94();
    v84 = v47;
    v48 = v88;
    sub_21700CE04();
    sub_21700CD44();
    v39(v48, v44);
    OUTLINED_FUNCTION_2_72();
    v40[43] = v49;
    v50 = 0x8000000217085240;
    v51 = v89;
    sub_21700CE04();
    v52 = sub_21700CDB4();
    v54 = v53;
    v39(v51, v44);
    v55 = v41;
    if (v54)
    {
      v56 = v97;
      *(v97 + 48) = v52;
      *(v56 + 56) = v54;
      v50 = 0x8000000217085260;
      v57 = v87;
      sub_21700CE04();
      v58 = sub_21700CDB4();
      v59 = v44;
      v61 = v60;
      v62 = v57;
      v63 = v59;
      v39(v62, v59);
      if (v61)
      {
        v64 = v97;
        *(v97 + 64) = v58;
        *(v64 + 72) = v61;
        v65 = v85;
        sub_21700CE04();
        sub_21700CD44();
        v39(v65, v63);
        OUTLINED_FUNCTION_2_72();
        *(v64 + 80) = v66;
        sub_21700D7A4();
        v89 = v36;
        OUTLINED_FUNCTION_1_94();
        sub_21700CE04();
        v67 = v91;
        v68 = v92;
        v69 = v93;
        (*(v91 + 16))(v86, v93, v92);
        type metadata accessor for SocialOnboardingPrivacySettingsPageLockup();
        sub_21700D734();
        (*(v67 + 8))(v69, v68);
        return (v39)(v55, v94);
      }

      v84 = 0xD00000000000001ALL;
    }

    else
    {
      v63 = v44;
    }

    v77 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_108();
    sub_2169F0890(v78, v79);
    OUTLINED_FUNCTION_4();
    v81 = v80;
    v82 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup();
    *v81 = v84;
    v81[1] = v50;
    v81[2] = v82;
    (*(*(v77 - 8) + 104))(v81, *MEMORY[0x277D22530], v77);
    swift_willThrow();
    (*(v91 + 8))(v93, v92);
    v39(v55, v63);
    result = sub_216788110(v97);
    if (v54)
    {
    }
  }

  else
  {
    v71 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_108();
    sub_2169F0890(v72, v73);
    OUTLINED_FUNCTION_4();
    v75 = v74;
    v76 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup();
    *v75 = 25705;
    v75[1] = 0xE200000000000000;
    v75[2] = v76;
    (*(*(v71 - 8) + 104))(v75, *MEMORY[0x277D22530], v71);
    swift_willThrow();
    (*(v91 + 8))(v93, v92);
    return (v39)(v90, v94);
  }

  return result;
}

uint64_t sub_2169F0890(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_2169F08D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_21700DF14();
  sub_21700E724();
  v5 = sub_21700E4D4();

  v6 = [v3 objectForKey_];

  if (v6)
  {
    sub_21700F1E4();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2169F0990(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2169F09D4(uint64_t a1, unint64_t a2, void *a3)
{
  v93 = a3;
  v88 = a2;
  v87 = sub_21700CA64();
  v4 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_21700CA54();
  v6 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700E574();
  result = MEMORY[0x28223BE20](v8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v94 = (v13 + 8);
  v83 = (v4 + 8);
  v82 = (v6 + 16);
  v81 = (v6 + 8);
  v14 = (a1 + 64);
  v89 = result;
  v90 = v11;
  if (!v12)
  {
    return result;
  }

  while (1)
  {
    v15 = *(v14 - 1);
    v16 = *v14;
    if (v15)
    {
      v17 = v16 == 2;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      goto LABEL_7;
    }

    v18 = *(v14 - 2);
    v19 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v19 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = *(v14 - 3);
    v97 = *(v14 - 4);
    if (v16)
    {
      v18 = sub_21700E5A4();
      v22 = v21;
      v95 = v20;
      sub_21700DF14();
      sub_21700DF14();
      goto LABEL_21;
    }

    sub_21700DF14();
    sub_21700DF14();
    if (sub_21700E624() >= 10)
    {
      break;
    }

LABEL_23:

LABEL_7:
    v14 += 40;
    if (!--v12)
    {
      return result;
    }
  }

  v23 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v24 = v96;
  v25 = sub_2169FAA38(17500, 0xE200000000000000, 0);
  v95 = v20;
  if (v24)
  {

    v96 = 0;
LABEL_18:
    sub_21700DF14();
    v22 = v15;
    goto LABEL_21;
  }

  v26 = v25;
  v96 = 0;
  if (!v25)
  {
    goto LABEL_18;
  }

  v27 = sub_21700E624();
  v28 = sub_21700E4D4();
  v29 = sub_21700E4D4();
  v30 = v27;
  v8 = v89;
  v31 = [v26 stringByReplacingMatchesInString:v28 options:0 range:0 withTemplate:{v30, v29}];

  v11 = v90;
  v18 = sub_21700E514();
  v22 = v32;

LABEL_21:
  sub_21700E564();
  v33 = sub_21700E524();
  v35 = v34;
  (*v94)(v11, v8);
  if (v35 >> 60 == 15)
  {

    goto LABEL_23;
  }

  sub_2169FB394(&qword_27CABF840, MEMORY[0x277CC5540]);
  *(&v92 + 1) = v22;
  v36 = v86;
  v37 = v87;
  *&v92 = v18;
  sub_21700CA44();
  sub_21677A404(v33, v35);
  v91 = v33;
  v38 = v96;
  sub_2169FB01C(v33, v35);
  v96 = v38;
  sub_21677A510(v33, v35);
  v39 = v84;
  sub_21700CA34();
  (*v83)(v36, v37);
  v40 = v85;
  *(&v99 + 1) = v85;
  *&v100 = sub_2169FB394(&qword_27CABF848, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
  (*v82)(boxed_opaque_existential_1, v39, v40);
  __swift_project_boxed_opaque_existential_1(&v98, *(&v99 + 1));
  v42 = v96;
  sub_217005BD4();
  v96 = v42;
  v43 = v102;
  v44 = v103;
  __swift_destroy_boxed_opaque_existential_1Tm(&v98);
  (*v81)(v39, v40);
  sub_21677A510(v91, v35);

  v45 = v88;
  v49 = sub_216E1408C(v43, v44, v88, v46, v47, v48);
  v91 = v50;

  v51 = sub_216E144A0(v43, v44);
  v53 = v52;
  v54 = v43;
  v55 = v93;
  sub_21677A524(v54, v44);

  *(&v106 + 9) = *v112;
  HIDWORD(v106) = *&v112[3];
  LOBYTE(v102) = 0;
  *&v104 = v51;
  *(&v104 + 1) = v53;
  *&v105 = v49;
  *(&v105 + 1) = v91;
  *&v106 = v45;
  BYTE8(v106) = 0;
  v107 = v92;
  v108[0] = v51;
  v108[1] = v53;
  v108[2] = v49;
  v108[3] = v91;
  v108[4] = v45;
  v109 = 0;
  *v110 = *v112;
  *&v110[3] = *&v112[3];
  v111 = v92;
  sub_2169FB208(&v104, &v98);
  sub_2169FB240(v108);
  v56 = v95;
  sub_21700DF14();
  swift_isUniquelyReferenced_nonNull_native();
  v57 = *v55;
  v102 = v57;
  v58 = v56;
  v59 = sub_2166AF66C(v97, v56);
  if (!__OFADD__(v57[2], (v60 & 1) == 0))
  {
    v61 = v59;
    v62 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF850);
    if (sub_21700F554())
    {
      v63 = sub_2166AF66C(v97, v58);
      v11 = v90;
      if ((v62 & 1) != (v64 & 1))
      {
        goto LABEL_36;
      }

      v61 = v63;
      if ((v62 & 1) == 0)
      {
LABEL_28:
        v65 = v102;
        v102[(v61 >> 6) + 8] |= 1 << v61;
        v66 = (v65[6] + 16 * v61);
        *v66 = v97;
        v66[1] = v58;
        v67 = (v65[7] + (v61 << 6));
        v68 = v107;
        v69 = v106;
        v70 = v105;
        *v67 = v104;
        v67[1] = v70;
        v67[2] = v69;
        v67[3] = v68;
        v71 = v65[2];
        v72 = __OFADD__(v71, 1);
        v73 = v71 + 1;
        if (v72)
        {
          goto LABEL_35;
        }

        v65[2] = v73;
        goto LABEL_32;
      }
    }

    else
    {
      v11 = v90;
      if ((v62 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v65 = v102;
    v74 = (v102[7] + (v61 << 6));
    v75 = v74[2];
    v77 = *v74;
    v76 = v74[1];
    v101 = v74[3];
    v100 = v75;
    v98 = v77;
    v99 = v76;
    v78 = v104;
    v79 = v105;
    v80 = v107;
    v74[2] = v106;
    v74[3] = v80;
    *v74 = v78;
    v74[1] = v79;
    sub_2169FB240(&v98);

LABEL_32:
    *v93 = v65;

    v8 = v89;
    goto LABEL_7;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_21700F824();
  __break(1u);
  return result;
}

void sub_2169F12B4(uint64_t a1, uint64_t a2)
{
  v30 = sub_217006224();
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2166BF3C8(a1);
  v7 = 0;
  v33 = a1 & 0xC000000000000001;
  v34 = v6;
  v31 = a1 & 0xFFFFFFFFFFFFFF8;
  v32 = a1;
  v28 = (v4 + 8);
  while (v34 != v7)
  {
    if (v33)
    {
      v8 = MEMORY[0x21CEA0220](v7, v32);
    }

    else
    {
      if (v7 >= *(v31 + 16))
      {
        goto LABEL_11;
      }

      v8 = *(v32 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v10 = v29;
    sub_217006214();
    v36 = sub_2170061F4();
    v12 = v11;
    (*v28)(v10, v30);
    v13 = [v9 value];
    v14 = sub_21700E514();
    v16 = v15;

    v17 = type metadata accessor for SocialContactsCoordinator.Contact();
    sub_21700DF14();
    sub_2168A140C(v35, v14, v16, v18, v19, v20, v21, v22, v27, v28);

    v23 = *(v17 + 64);
    sub_216DF3B5C();
    v24 = *(*(a2 + v23) + 16);
    sub_216DF3CC0(v24);
    v25 = *(a2 + v23);
    *(v25 + 16) = v24 + 1;
    v26 = v25 + 40 * v24;
    *(v26 + 32) = v36;
    *(v26 + 40) = v12;
    *(v26 + 48) = v14;
    *(v26 + 56) = v16;
    *(v26 + 64) = 1;

    ++v7;
  }
}

void sub_2169F14E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_2166BF3C8(a1);
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CEA0220](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v9 = v7;
    sub_2169F50D4(&v9, a2);

    if (v2)
    {
      return;
    }
  }
}

void sub_2169F15B8()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  sub_217005EF4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_95();
  if (v2)
  {
    OUTLINED_FUNCTION_3_78();
    sub_216AB9904();
    v7 = v13;
    v8 = *(v5 + 16);
    v9 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    do
    {
      v8(v1, v9, v0);
      OUTLINED_FUNCTION_86_0();
      swift_dynamicCast();
      v13 = v7;
      v10 = *(v7 + 16);
      if (v10 >= *(v7 + 24) >> 1)
      {
        sub_216AB9904();
        v7 = v13;
      }

      *(v7 + 16) = v10 + 1;
      sub_2166EF9C4(&v12, (v7 + 32 * v10 + 32));
      OUTLINED_FUNCTION_8_45();
    }

    while (!v11);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F172C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for AppsWithAccessComponentModel();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(&qword_280E32798, type metadata accessor for AppsWithAccessComponentModel);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F18A4()
{
  OUTLINED_FUNCTION_49();
  v22 = v1;
  v23 = v2;
  v4 = v3;
  v5 = v0;
  if (v0 >> 62)
  {
    OUTLINED_FUNCTION_20_29();
    v6 = sub_21700F2B4();
  }

  else
  {
    v6 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
LABEL_14:
    OUTLINED_FUNCTION_26();
    return;
  }

  v27 = MEMORY[0x277D84F90];
  sub_216AB9A60(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v27;
    v21 = v5 & 0xC000000000000001;
    v9 = v5;
    do
    {
      if (v21)
      {
        v10 = MEMORY[0x21CEA0220](v7, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
      v25 = v11;
      v12 = sub_2166D9530(v22, v4);
      v26 = v12;
      v27 = v8;
      v24[0] = v10;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_216AB9A60(v13 > 1, v14 + 1, 1);
        v11 = v25;
        v15 = v26;
      }

      else
      {
        v15 = v12;
      }

      ++v7;
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v11);
      MEMORY[0x28223BE20](v16);
      v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v18);
      sub_2169FB2FC(v14, v18, &v27, v11, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v8 = v27;
      v5 = v9;
    }

    while (v6 != v7);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_2169F1B38()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for LinkComponentModel();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(&qword_280E3EC50, type metadata accessor for LinkComponentModel);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F1D10()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for SearchLandingBrickLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(qword_280E363D0, type metadata accessor for SearchLandingBrickLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F1EB8()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for ListLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(&qword_27CABF8A0, type metadata accessor for ListLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2030()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for SocialCardLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(&qword_280E407F0, type metadata accessor for SocialCardLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2178()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for SocialOnboardingFindFriendsPageLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(qword_280E2DC28, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2320()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for SocialProfileHorizontalLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(&qword_280E310E0, type metadata accessor for SocialProfileHorizontalLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2468()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for SocialProfileFollowRequestLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(&qword_27CABF8A8, type metadata accessor for SocialProfileFollowRequestLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F25E0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for SuggestionItem();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(qword_280E42A28, type metadata accessor for SuggestionItem);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2728()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for TextListComponentModel();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(&qword_280E38AD0, type metadata accessor for TextListComponentModel);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2900()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for AlbumTrackLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(qword_280E41540, type metadata accessor for AlbumTrackLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2A48()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for BubbleLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(&qword_280E44DC0, type metadata accessor for BubbleLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2B90()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for FlowcaseLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(qword_280E43620, type metadata accessor for FlowcaseLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2CD8()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for HorizontalLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(qword_280E410F0, type metadata accessor for HorizontalLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2E20()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for HorizontalPosterLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(qword_280E39370, type metadata accessor for HorizontalPosterLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F2F68()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for LiveRadioGridLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(qword_280E3DB38, type metadata accessor for LiveRadioGridLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F30B0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for PlaylistTrackLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(qword_280E3D5F0, type metadata accessor for PlaylistTrackLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F31F8()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for PosterLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(qword_280E44990, type metadata accessor for PosterLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F3340()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for RecentSearchLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(qword_280E3E960, type metadata accessor for RecentSearchLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F3488()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  _s6LockupVMa();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(&qword_280E439E8, _s6LockupVMa);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F35D0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for SocialOnboardingSharedPlaylistLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(&qword_280E2DFF0, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F3718()
{
  OUTLINED_FUNCTION_49();
  v1 = OUTLINED_FUNCTION_10_45();
  type metadata accessor for SplitPosterLockup(v1);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v3 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v3, v4, v5);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v7)
      {
        OUTLINED_FUNCTION_7_53(v6 > 1);
      }

      v8 = sub_2169FB394(qword_280E3F790, type metadata accessor for SplitPosterLockup);
      OUTLINED_FUNCTION_17_36(v8);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F3860()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for SquareLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(&qword_280E445F0, type metadata accessor for SquareLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F39A8()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for TopSearchLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(&qword_280E41D00, type metadata accessor for TopSearchLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F3AF0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for TrackLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(&qword_280E44FA0, type metadata accessor for TrackLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_2169F3C38()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_45();
  type metadata accessor for VerticalVideoLockup();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_95();
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_3_78();
    sub_216AB9A60(v2, v3, v4);
    OUTLINED_FUNCTION_0_109();
    do
    {
      OUTLINED_FUNCTION_18_29();
      OUTLINED_FUNCTION_5_57();
      if (v6)
      {
        OUTLINED_FUNCTION_7_53(v5 > 1);
      }

      v7 = sub_2169FB394(&qword_280E3CD90, type metadata accessor for VerticalVideoLockup);
      OUTLINED_FUNCTION_17_36(v7);
      sub_2169FB7D0();
      OUTLINED_FUNCTION_4_60();
      OUTLINED_FUNCTION_8_45();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2169F3D80(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_21700F494();
    v4 = a1 + 40;
    do
    {
      sub_21700DF14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF870);
      swift_dynamicCast();
      sub_21700F464();
      sub_21700F4A4();
      sub_21700F4B4();
      sub_21700F474();
      v4 += 16;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

void sub_2169F3E74()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v38 = v8;
  v10 = v9;
  v12 = v11;
  v13 = sub_21700DFD4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12)
  {
    goto LABEL_8;
  }

  if (byte_27CABF728 != 1)
  {
    byte_27CABF728 = 1;
LABEL_8:
    v36 = v5;
    type metadata accessor for SocialContactsCoordinator();
    v37 = sub_2169F5334(v12 & 1);
    (*(v14 + 16))(&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v13);
    v21 = *(v14 + 80);
    v34 = v3;
    v35 = v1;
    v22 = (v21 + 16) & ~v21;
    v23 = v22 + v15;
    v33 = v7;
    v24 = ((v23 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    (*(v14 + 32))(v25 + v22, v16, v13);
    *(v25 + v23) = v12 & 1;
    v26 = v25 + (v23 & 0xFFFFFFFFFFFFFFF8);
    v28 = v33;
    v27 = v34;
    *(v26 + 8) = v38;
    *(v26 + 16) = v28;
    v29 = (v25 + v24);
    v30 = v36;
    *v29 = v36;
    v29[1] = v27;
    *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v35;
    v39[4] = sub_2169F9C94;
    v39[5] = v25;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 1107296256;
    v39[2] = sub_2169F0990;
    v39[3] = &block_descriptor_13;
    v31 = _Block_copy(v39);
    sub_21700DF14();
    sub_2167759F4(v30);

    v32 = v37;
    [v37 addOperationWithBlock_];
    _Block_release(v31);

    goto LABEL_9;
  }

  if (!v5)
  {
LABEL_9:
    OUTLINED_FUNCTION_26();
    return;
  }

  sub_2169F9D40();
  v17 = swift_allocError();
  *v18 = 1;
  v5(1, 0, 0, v17);
  OUTLINED_FUNCTION_26();
}

void sub_2169F4138()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v64 = *MEMORY[0x277D85DE8];
  v4 = sub_21700E574();
  MEMORY[0x28223BE20](v4);
  v8 = *(v3 + 16);
  if (v8)
  {
    v55 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = v5;
    v57 = v1;
    v9 = (v3 + 32);
    v54 = (v6 + 8);
    v10 = MEMORY[0x277D84F90];
    v53 = "stringForDisplay";
    v11 = 0xEF6449656C69666FLL;
    do
    {
      v12 = *v9;
      v13 = *(*v9 + 16);
      sub_21700DF14();
      if (v13)
      {
        sub_2166AF66C(0x72506C6169636F73, v11);
        if (v14)
        {
          sub_2169FB3DC();
          sub_216697664(&v62, &qword_27CABEAD0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_22_34();
            v10 = v41;
          }

          v15 = *(v10 + 16);
          if (v15 >= *(v10 + 24) >> 1)
          {
            sub_216938A64();
            v10 = v42;
          }

          *(v10 + 16) = v15 + 1;
          *(v10 + 8 * v15 + 32) = v12;
          goto LABEL_31;
        }
      }

      v62 = 0uLL;
      *&v63 = 0;
      *(&v63 + 1) = 1;
      sub_216697664(&v62, &qword_27CABEAD0);
      if (*(v12 + 16))
      {
        v16 = sub_2166AF66C(0x49746361746E6F63, 0xE900000000000064);
        if (v17)
        {
          OUTLINED_FUNCTION_26_28(v16);
          sub_2169FB3DC();
          v62 = v60;
          v63 = v61;
          if (!*(&v61 + 1))
          {

            sub_216697664(&v62, &unk_27CABF7A0);
            goto LABEL_31;
          }

          if (swift_dynamicCast())
          {
            v18 = v11;
            v19 = v59;
            if (!*(v12 + 16))
            {
              goto LABEL_34;
            }

            v20 = v58;
            v21 = sub_2166AF66C(0x64616F6C796170, 0xE700000000000000);
            if ((v22 & 1) == 0)
            {
              goto LABEL_34;
            }

            v52 = v20;
            OUTLINED_FUNCTION_26_28(v21);
            sub_2169FB3DC();

            v62 = v60;
            v63 = v61;
            if (!*(&v61 + 1))
            {

              sub_216697664(&v62, &unk_27CABF7A0);
              goto LABEL_36;
            }

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_35;
            }

            v23 = v57;
            if (!*(v57 + 16))
            {
LABEL_34:

LABEL_35:

LABEL_36:
              v11 = v18;
              goto LABEL_31;
            }

            v50 = v58;
            v51 = v59;
            v24 = sub_2166AF66C(v52, v19);
            v25 = v19;
            v11 = v18;
            if ((v26 & 1) == 0)
            {

              goto LABEL_31;
            }

            v49 = v25;
            v27 = (*(v23 + 56) + (v24 << 6));
            v28 = v27[1];
            if (v28)
            {
              v48 = *v27;
              sub_21700DF14();
              v48 = sub_216E14580(v50, v51, v48, v28);
              v50 = v29;

              v30 = v50;

              if (v30)
              {
                v31 = v55;
                sub_21700E564();
                v48 = sub_21700E524();
                v51 = v32;

                (*v54)(v31, v56);
                if (v51 >> 60 != 15)
                {
                  v50 = objc_opt_self();
                  v33 = sub_217005F94();
                  v58 = 0;
                  v34 = [v50 JSONObjectWithData:v33 options:0 error:&v58];

                  v35 = v58;
                  if (!v34)
                  {
                    v43 = v35;

                    v44 = sub_217005D34();

                    swift_willThrow();
                    sub_21677A510(v48, v51);

                    goto LABEL_31;
                  }

                  sub_21700F1E4();
                  swift_unknownObjectRelease();
                  sub_2166EF9C4(&v60, &v62);
                  sub_2166A6DF8(&v62, &v60);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF9E0);
                  if (swift_dynamicCast())
                  {
                    v36 = v58;
                    *&v60 = v52;
                    *(&v60 + 1) = v49;
                    *(&v61 + 1) = MEMORY[0x277D837D0];
                    swift_isUniquelyReferenced_nonNull_native();
                    v58 = v36;
                    sub_21693A668();
                    v37 = v58;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v52 = v37;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      OUTLINED_FUNCTION_22_34();
                      v10 = v45;
                    }

                    v39 = v48;
                    v40 = *(v10 + 16);
                    if (v40 >= *(v10 + 24) >> 1)
                    {
                      sub_216938A64();
                      v39 = v48;
                      v10 = v46;
                    }

                    sub_21677A510(v39, v51);
                    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
                    *(v10 + 16) = v40 + 1;
                    *(v10 + 8 * v40 + 32) = v52;
                    goto LABEL_31;
                  }

                  __swift_destroy_boxed_opaque_existential_1Tm(&v62);
                  sub_21677A510(v48, v51);
                }
              }
            }

            else
            {
            }
          }
        }
      }

LABEL_31:
      ++v9;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_2169F47D4()
{
  type metadata accessor for SocialContactsCoordinator.Contact();
  sub_21700E614();
  if (!*(v0 + 8))
  {
    return sub_21700F914();
  }

  sub_21700F914();

  return sub_21700E614();
}

uint64_t sub_2169F4868()
{
  OUTLINED_FUNCTION_92();
  v3 = *(v2 + 8);
  v4 = v0[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *v1 == *v0 && v3 == v4;
      if (v5 || (sub_21700F7D4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_8:
  v6 = *(type metadata accessor for SocialContactsCoordinator.Contact() + 52);
  v7 = *(v1 + v6);
  v8 = *(v1 + v6 + 8);
  v9 = (v0 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_21700F7D4();
}

uint64_t sub_2169F4910()
{
  sub_21700F8F4();
  type metadata accessor for SocialContactsCoordinator.Contact();
  sub_21700E614();
  if (*(v0 + 8))
  {
    sub_21700F914();
    OUTLINED_FUNCTION_86_0();
    sub_21700E614();
  }

  else
  {
    sub_21700F914();
  }

  return sub_21700F944();
}

uint64_t sub_2169F49A8()
{
  sub_21700F8F4();
  sub_21700E614();
  if (*(v0 + 8))
  {
    sub_21700F914();
    OUTLINED_FUNCTION_86_0();
    sub_21700E614();
  }

  else
  {
    sub_21700F914();
  }

  return sub_21700F944();
}

uint64_t sub_2169F4A34()
{
  v16[11] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = sub_21700E514();
  *(inited + 40) = v1;
  *(inited + 48) = sub_21700E514();
  *(inited + 56) = v2;
  *(inited + 64) = sub_21700E514();
  *(inited + 72) = v3;
  sub_216685F4C(0, &qword_27CABF860);
  sub_2169F3D80(inited);
  swift_setDeallocating();
  sub_2169FAD04();
  v4 = sub_2169F4CFC();
  v16[0] = MEMORY[0x277D84FA0];
  if (qword_27CAB5B98 != -1)
  {
    swift_once();
  }

  v5 = qword_27CABF720;
  v6 = swift_allocObject();
  *(v6 + 16) = v16;
  v7 = swift_allocObject();
  v7[2] = sub_2169FB270;
  v7[3] = v6;
  aBlock[4] = sub_2169FB278;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F52D8;
  aBlock[3] = &block_descriptor_37;
  v8 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v9 = [v5 enumerateContactsWithFetchRequest:v4 error:aBlock usingBlock:v8];
  _Block_release(v8);
  v10 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v9)
  {
  }

  else
  {
    v12 = sub_217005D34();

    swift_willThrow();
  }

  v13 = v16[0];

  return v13;
}

id sub_2169F4CFC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF870);
  v1 = sub_21700E804();

  v2 = [v0 initWithKeysToFetch_];

  return v2;
}

uint64_t sub_2169F4D80(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v36 = a1;
  v4 = sub_217006224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SocialContactsCoordinator.Contact();
  v9 = (v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v37 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v16 = [a1 identifier];
  v17 = sub_21700E514();
  v19 = v18;

  *(v15 + 40) = 0u;
  *(v15 + 24) = 0u;
  v20 = v9[13];
  v21 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(&v15[v20], 1, 1, v21);
  v22 = &v15[v9[14]];
  *&v15[v9[18]] = MEMORY[0x277D84F90];
  *v15 = v17;
  *(v15 + 1) = v19;
  sub_217006214();
  v23 = sub_2170061F4();
  v25 = v24;
  (*(v5 + 8))(v7, v4);
  v26 = &v15[v9[15]];
  *v26 = v23;
  v26[1] = v25;
  v27 = MEMORY[0x277D84FA0];
  *&v15[v9[16]] = MEMORY[0x277D84FA0];
  *&v15[v9[17]] = v27;
  *v22 = 0;
  *(v22 + 1) = 0;
  *(v15 + 8) = 0;
  v15[18] = 0;
  *(v15 + 7) = 0;
  sub_216697664(&v15[v20], &qword_27CABF770);
  __swift_storeEnumTagSinglePayload(&v15[v20], 1, 1, v21);
  v28 = v36;
  v29 = [v36 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF868);
  v30 = sub_21700E824();

  sub_2169F12B4(v30, v15);

  v31 = [v28 phoneNumbers];
  v32 = sub_21700E824();

  sub_2169F14E8(v32, v15);

  sub_2169FB7D0();
  v33 = v37;
  sub_2168A15E0();
  sub_2169FB890(v33, type metadata accessor for SocialContactsCoordinator.Contact);
  return sub_2169FB890(v15, type metadata accessor for SocialContactsCoordinator.Contact);
}

uint64_t sub_2169F50D4(void **a1, uint64_t a2)
{
  v4 = sub_217006224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_217006214();
  v9 = sub_2170061F4();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = sub_2169FB11C([v8 value]);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
  }

  else
  {
    v16 = [v8 value];
    v17 = [v16 stringValue];

    v14 = sub_21700E514();
    v15 = v18;
  }

  v19 = sub_2169FB11C([v8 value]);
  v21 = v20;
  v22 = type metadata accessor for SocialContactsCoordinator.Contact();
  sub_2168A140C(v33, v14, v15, v23, v24, v25, v26, v27, v33[0], v33[1]);

  v28 = *(v22 + 64);
  sub_216DF3B5C();
  v29 = *(*(a2 + v28) + 16);
  result = sub_216DF3CC0(v29);
  v31 = *(a2 + v28);
  *(v31 + 16) = v29 + 1;
  v32 = v31 + 40 * v29;
  *(v32 + 32) = v9;
  *(v32 + 40) = v11;
  *(v32 + 48) = v19;
  *(v32 + 56) = v21;
  *(v32 + 64) = 0;
  return result;
}

void sub_2169F52D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_2169F5334(char a1)
{
  if (a1)
  {
    if (qword_27CAB5BA8 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CABF738;
  }

  else
  {
    if (qword_27CAB5BB0 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CABF740;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_2169F53D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for SocialContactsCoordinator();
  v14 = swift_allocObject();
  v15 = a2 & 1;
  *(v14 + 16) = v15;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  sub_21700DF14();
  sub_2167759F4(a5);
  sub_2169F6034(a1, v15, a3, a4, sub_2169F9D94, v14);
}

void sub_2169F54B8(uint64_t a1, uint64_t a2, uint64_t a3, id a4, char a5, uint64_t a6, uint64_t a7, void (*a8)(void, void, void, void), uint64_t a9)
{
  v10 = a7;
  if (a4)
  {
    v16 = a4;
    if (qword_27CAB5BC0 != -1)
    {
      swift_once();
    }

    v17 = sub_217007CA4();
    __swift_project_value_buffer(v17, qword_27CABF750);
    v18 = a4;
    v19 = sub_217007C84();
    v20 = sub_21700ED84();

    if (os_log_type_enabled(v19, v20))
    {
      v33 = a2;
      v21 = swift_slowAlloc();
      v34 = a8;
      v22 = swift_slowAlloc();
      v35 = a3;
      v23 = swift_slowAlloc();
      v38 = v23;
      *v21 = 136446466;
      v24 = sub_21700E594();
      v26 = sub_2166A85FC(v24, v25, &v38);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2114;
      v27 = a4;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v28;
      *v22 = v28;
      _os_log_impl(&dword_216679000, v19, v20, "SocialContactsCoordinator: Error occurred while uploading contacts for %{public}s: %{public}@", v21, 0x16u);
      sub_216697664(v22, &qword_27CABF880);
      v29 = v22;
      a8 = v34;
      MEMORY[0x21CEA1440](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v30 = v23;
      a3 = v35;
      MEMORY[0x21CEA1440](v30, -1, -1);
      v31 = v21;
      a2 = v33;
      MEMORY[0x21CEA1440](v31, -1, -1);
    }

    else
    {
    }

    v10 = a7;
  }

  if (a1 == 1 || a4 || (a5 & 1) != 0)
  {
    if ((a5 & 1) == 0)
    {
      sub_216685F4C(0, &qword_280E29CD0);
      sub_216E1AA7C();
    }

    if (a8)
    {
      a8(a1, a2, a3, a4);
    }
  }

  else
  {
    type metadata accessor for SocialContactsCoordinator();
    v32 = swift_allocObject();
    *(v32 + 16) = a8;
    *(v32 + 24) = a9;
    sub_2167759F4(a8);
    sub_2169F5820(a1, a2, a3, a6, v10, sub_2169FB2A0, v32);
  }
}

void sub_2169F57A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_216685F4C(0, &qword_280E29CD0);
  sub_216E1AA9C();
  if (a5)
  {
    a5(a1, a2, a3, a4);
  }
}

void sub_2169F5820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, void *), uint64_t a7)
{
  v106 = *MEMORY[0x277D85DE8];
  v14 = sub_21700E574();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || !a2 || !*(a1 + 16) || (v101 = a4, v18 = sub_2166AF66C(0x73646E65697266, 0xE700000000000000), (v19 & 1) == 0) || (sub_2166A6DF8(*(a1 + 56) + 32 * v18, v105), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF838), (swift_dynamicCast() & 1) == 0))
  {
    if (a6)
    {
      sub_2169F9D40();
      v82 = swift_allocError();
      *v83 = 4;
      a6(1, 0, 0, v82);
    }

    return;
  }

  v96 = a3;
  v103 = MEMORY[0x277D84FA0];
  v20 = *(*&v104[0] + 16);
  if (!v20)
  {

    v84 = MEMORY[0x277D84FA0];
    goto LABEL_49;
  }

  v95 = a7;
  v91 = (v15 + 8);
  v21 = 32;
  v22 = *&v104[0];
  v99 = a5;
  v100 = *&v104[0];
  v94 = v17;
  do
  {
    v23 = *(v22 + v21);
    if (!*(v23 + 16))
    {
      goto LABEL_23;
    }

    sub_21700DF14();
    v24 = sub_2166AF66C(0x49746361746E6F63, 0xE900000000000064);
    if ((v25 & 1) == 0 || !*(v23 + 16))
    {

      goto LABEL_23;
    }

    v26 = (*(v23 + 56) + 16 * v24);
    v28 = *v26;
    v27 = v26[1];
    sub_21700DF14();
    v29 = sub_2166AF66C(0x64616F6C796170, 0xE700000000000000);
    if ((v30 & 1) == 0)
    {

      goto LABEL_19;
    }

    v31 = v14;
    v32 = (*(v23 + 56) + 16 * v29);
    v97 = *v32;
    v33 = a2;
    v34 = v32[1];
    sub_21700DF14();

    if (!*(v33 + 16))
    {

      a5 = v99;
      v22 = v100;
      a2 = v33;
LABEL_22:
      v14 = v31;
      goto LABEL_23;
    }

    v98 = v34;
    v35 = sub_2166AF66C(v28, v27);
    v37 = v36;

    a2 = v33;
    if ((v37 & 1) == 0)
    {

      a5 = v99;
      v22 = v100;
      goto LABEL_22;
    }

    v38 = (*(v33 + 56) + (v35 << 6));
    v39 = v38[1];
    v40 = v98;
    v14 = v31;
    if (!v39)
    {
      goto LABEL_19;
    }

    v93 = *v38;
    sub_21700DF14();
    v41 = v97;
    sub_21700E654();
    v42 = sub_21700E734();
    v90 = MEMORY[0x21CE9F400](v42);
    v92 = v43;

    v97 = sub_216E14888(v41, v40);
    v45 = v44;
    sub_21700DF14();
    v46 = sub_216E1492C(v93, v39);
    v48 = v94;
    if (v47 >> 60 == 15)
    {

LABEL_19:

      a5 = v99;
      v22 = v100;
      goto LABEL_23;
    }

    v49 = v46;
    v93 = v47;
    v50 = sub_216E1492C(v90, v92);
    if (v51 >> 60 == 15)
    {

      goto LABEL_29;
    }

    v90 = v50;
    v92 = v51;
    v52 = sub_216E1492C(v97, v45);
    if (v53 >> 60 == 15)
    {
      sub_21677A510(v90, v92);
LABEL_29:
      v54 = v49;
LABEL_30:
      sub_21677A510(v54, v93);

      goto LABEL_19;
    }

    v55 = v53;
    v97 = v52;
    v89 = v49;
    v56 = sub_216E14BD4(1uLL, v52, v53, v49, v93, v90, v92, 0);
    if (v57 >> 60 == 15)
    {
      sub_21677A510(v97, v55);
      sub_21677A510(v90, v92);
      v54 = v89;
      goto LABEL_30;
    }

    v58 = v57;
    *&v105[0] = v56;
    *(&v105[0] + 1) = v57;
    v88 = v56;
    sub_21700E564();
    sub_2169FB2A8();
    v86 = sub_21700E544();
    v87 = v59;
    sub_21677A510(v89, v93);
    sub_21677A510(v90, v92);
    sub_21677A510(v97, v55);
    sub_21677A510(v88, v58);

    a5 = v99;
    v22 = v100;
    if (v87)
    {
      sub_21700E564();
      v98 = sub_21700E524();
      v61 = v60;

      (*v91)(v48, v14);
      if (v61 >> 60 != 15)
      {
        v62 = objc_opt_self();
        v63 = v61;
        v64 = v62;
        v97 = v63;
        v65 = sub_217005F94();
        v102 = 0;
        v66 = [v64 JSONObjectWithData:v65 options:0 error:&v102];

        v67 = v102;
        if (v66)
        {
          sub_21700F1E4();
          swift_unknownObjectRelease();
          sub_2166EF9C4(v104, v105);
          sub_2166A6DF8(v105, v104);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF890);
          if (swift_dynamicCast())
          {
            v68 = v102;
            if (*(v102 + 2) && (v69 = sub_2166AF66C(0x72506C6169636F73, 0xEF6449656C69666FLL), (v70 & 1) != 0))
            {
              v71 = (v68[7] + 16 * v69);
              v72 = *v71;
              v73 = v71[1];
              sub_21700DF14();

              v74 = v73;
              a5 = v99;
              sub_2168A140C(v104, v72, v74, v75, v76, v77, v78, v79, v85, v86);
              sub_21677A510(v98, v97);
            }

            else
            {
              sub_21677A510(v98, v97);
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v105);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v105);
            sub_21677A510(v98, v97);
          }
        }

        else
        {
          v80 = v67;
          v81 = sub_217005D34();

          swift_willThrow();
          sub_21677A510(v98, v97);
        }

        v22 = v100;
      }
    }

LABEL_23:
    v21 += 8;
    --v20;
  }

  while (v20);

  v84 = v103;
LABEL_49:
  type metadata accessor for SocialContactsCoordinator();
  sub_2169F834C(v84, v101, a5);

  if (a6)
  {
    a6(a1, a2, v96, 0);
  }
}

void sub_2169F6034(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, void, void *), uint64_t a6)
{
  v114 = a2;
  v125 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF790);
  MEMORY[0x28223BE20](v11 - 8);
  v107 = &v94 - v12;
  v13 = sub_217005844();
  v109 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v105 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v108 = &v94 - v16;
  v17 = type metadata accessor for SocialContactsCoordinator.Contact();
  v112 = *(v17 - 8);
  v113 = v17;
  MEMORY[0x28223BE20](v17);
  v111 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD130);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v94 - v21;
  v23 = sub_21700E4D4();
  v110 = a1;
  sub_21700DF44();

  sub_21700DF84();
  v26 = *(v20 + 8);
  v25 = v20 + 8;
  v24 = v26;
  v26(v22, v19);
  if (!aBlock)
  {
LABEL_14:
    if (!a5)
    {
      return;
    }

LABEL_17:
    sub_2169F9D40();
    v29 = swift_allocError();
    v30 = 5;
LABEL_18:
    *v28 = v30;
LABEL_19:
    a5(1, 0, 0, v29);
    goto LABEL_20;
  }

  v104 = v24;
  v115 = 0xD00000000000001BLL;
  v116 = 0x8000000217085DE0;
  sub_21700F364();
  sub_216934FBC();
  sub_216788110(&aBlock);
  if (!v124)
  {

    sub_216697664(v123, &unk_27CABF7A0);
    if (!a5)
    {
      return;
    }

    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0 || v115 < 1)
  {

    goto LABEL_14;
  }

  v102 = v115;
  if (v114)
  {

    goto LABEL_23;
  }

  v115 = 0xD000000000000017;
  v116 = 0x8000000217085E60;
  sub_21700F364();
  sub_216934FBC();
  sub_216788110(&aBlock);
  if (!v124)
  {

    sub_216697664(v123, &unk_27CABF7A0);
    goto LABEL_62;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v27 = v115, v103 = type metadata accessor for SocialContactsCoordinator(), !sub_2169F7018(v27)))
  {

LABEL_62:
    if (!a5)
    {
      return;
    }

    sub_2169F9D40();
    v29 = swift_allocError();
    *v71 = 0;
    goto LABEL_19;
  }

  v115 = 0xD000000000000018;
  v116 = 0x8000000217085E80;
  sub_21700F364();
  sub_216934FBC();

  sub_216788110(&aBlock);
  if (!v124)
  {
    sub_216697664(v123, &unk_27CABF7A0);
LABEL_69:
    if (!a5)
    {
      return;
    }

    sub_2169F9D40();
    v29 = swift_allocError();
    v30 = 2;
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0 || sub_2169F709C(v115, a3, a4))
  {
    goto LABEL_69;
  }

LABEL_23:
  v99 = type metadata accessor for SocialContactsCoordinator();
  v31 = sub_2169F4A34();
  v32 = v31;
  if (!*(v31 + 16))
  {

    if (!a5)
    {
      return;
    }

    sub_2169F9D40();
    v29 = swift_allocError();
    v30 = 3;
    goto LABEL_18;
  }

  v96 = v13;
  v97 = a6;
  v98 = a5;
  v95 = v114 & 1;
  v33 = *(v31 + 56);
  v101 = v31 + 56;
  v34 = 1 << *(v31 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v100 = (v34 + 63) >> 6;
  v37 = sub_21700DF14();
  v38 = 0;
  v94 = 0;
  v39 = MEMORY[0x277D84F90];
  v103 = v25;
  while (1)
  {
LABEL_27:
    if (v36)
    {
      goto LABEL_32;
    }

    do
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_77:
        v78 = v37;

        v79 = sub_217005D34();

        swift_willThrow();
        v70 = v98;
LABEL_78:
        if (!v70)
        {
          return;
        }

        sub_2169F9D40();
        v29 = swift_allocError();
        *v80 = 7;
        v70(1, 0, 0, v29);
LABEL_20:

        return;
      }

      if (v40 >= v100)
      {
        goto LABEL_43;
      }

      v36 = *(v101 + 8 * v40);
      ++v38;
    }

    while (!v36);
    v38 = v40;
LABEL_32:
    v41 = v32;
    v42 = v111;
    sub_2169FB7D0();
    v43 = *(v42 + *(v113 + 64));
    sub_21700DF14();
    sub_2169FB890(v42, type metadata accessor for SocialContactsCoordinator.Contact);
    v44 = *(v43 + 16);
    v45 = *(v39 + 16);
    if (__OFADD__(v45, v44))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v45 + v44 > *(v39 + 24) >> 1)
    {
      sub_216938ADC();
      v39 = v46;
    }

    v32 = v41;
    v36 &= v36 - 1;
    if (!*(v43 + 16))
    {
      break;
    }

    if ((*(v39 + 24) >> 1) - *(v39 + 16) < v44)
    {
      goto LABEL_82;
    }

    swift_arrayInitWithCopy();

    if (v44)
    {
      v47 = *(v39 + 16);
      v48 = __OFADD__(v47, v44);
      v49 = v47 + v44;
      if (v48)
      {
        goto LABEL_83;
      }

      *(v39 + 16) = v49;
    }
  }

  if (!v44)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_43:

  if (!*(v39 + 16))
  {

    v72 = v98;
    if (!v98)
    {
      return;
    }

    sub_2169F9D40();
    v29 = swift_allocError();
    *v73 = 3;
    v74 = v29;
LABEL_75:
    v72(1, 0, 0, v74);
    goto LABEL_20;
  }

  v50 = v32;
  v51 = v39;
  v52 = v102;
  v53 = sub_2169F6FA4(v51, v102);

  sub_2169F7138(v53, v52);
  if (v114)
  {
    v54 = 1684957542;
  }

  else
  {
    v54 = 0x7265766F63736964;
  }

  if (v114)
  {
    v55 = 0xE400000000000000;
  }

  else
  {
    v55 = 0xE800000000000000;
  }

  v56 = *MEMORY[0x277D7F9E0];
  sub_21700DF44();

  sub_21700DF84();
  v104(v22, v19);
  v57 = v97;
  if (!aBlock)
  {
    goto LABEL_64;
  }

  v115 = sub_21700E514();
  v116 = v58;
  sub_21700F364();
  sub_216934FBC();

  sub_216788110(&aBlock);
  if (!v124)
  {

    v75 = &unk_27CABF7A0;
    p_aBlock = v123;
LABEL_72:
    sub_216697664(p_aBlock, v75);
    goto LABEL_73;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_64:

LABEL_73:
    v72 = v98;
    if (!v98)
    {
      return;
    }

    sub_2169F9D40();
    v29 = swift_allocError();
    *v77 = 6;
    v74 = v29;
    goto LABEL_75;
  }

  sub_216935010();

  if (!v120)
  {

    v75 = &unk_27CABF7B0;
    p_aBlock = &aBlock;
    goto LABEL_72;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_64;
  }

  v59 = v123[0];
  v60 = v123[1];
  aBlock = 0;
  v118 = 0xE000000000000000;
  sub_21700F3B4();

  aBlock = 0x2F2F3A7370747468;
  v118 = 0xE800000000000000;
  MEMORY[0x21CE9F490](v59, v60);

  MEMORY[0x21CE9F490](0xD000000000000022, 0x8000000217085E00);
  MEMORY[0x21CE9F490](v54, v55);

  v61 = objc_opt_self();
  v62 = sub_21700E344();

  aBlock = 0;
  v63 = [v61 dataWithJSONObject:v62 options:0 error:{&aBlock, v94}];

  v37 = aBlock;
  if (!v63)
  {
    goto LABEL_77;
  }

  v64 = sub_217005FB4();
  v66 = v65;

  sub_21677A404(v64, v66);
  v67 = v107;
  sub_2169F74DC(v64, v66, v107);

  sub_21677A524(v64, v66);
  v68 = v96;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67, 1, v96);
  v70 = v98;
  if (EnumTagSinglePayload == 1)
  {
    sub_21677A524(v64, v66);

    sub_216697664(v67, &unk_27CABF790);
    goto LABEL_78;
  }

  v81 = v108;
  v82 = v109;
  (*(v109 + 32))(v108, v67, v68);
  v83 = objc_allocWithZone(MEMORY[0x277D7FB38]);
  v84 = v68;
  v85 = sub_2169FA884(sub_2169F7850, 0);
  v86 = *(v82 + 16);
  v87 = v105;
  v86(v105, v81, v84);
  v88 = objc_allocWithZone(MEMORY[0x277D7FB40]);
  v89 = v85;
  v90 = sub_2169FA9A0(v87, v89);
  v91 = [objc_opt_self() highPrioritySession];
  v92 = swift_allocObject();
  *(v92 + 16) = v70;
  *(v92 + 24) = v57;
  *(v92 + 32) = v95;
  *(v92 + 40) = v53;
  *(v92 + 48) = v50;
  *(v92 + 56) = v106;
  v121 = sub_2169FADDC;
  v122 = v92;
  aBlock = MEMORY[0x277D85DD0];
  v118 = 1107296256;
  v119 = sub_2169F82C0;
  v120 = &block_descriptor_16_0;
  v93 = _Block_copy(&aBlock);
  sub_2167759F4(v70);

  [v91 enqueueDataRequest:v90 withCompletionHandler:v93];
  _Block_release(v93);

  sub_21677A524(v64, v66);
  (*(v109 + 8))(v108, v96);
}

uint64_t sub_2169F6FA4(uint64_t a1, unint64_t a2)
{
  v5 = sub_21700E384();
  sub_2169F09D4(a1, a2, &v5);
  return v5;
}

BOOL sub_2169F7018(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  if (sub_2169F954C() == 2)
  {

    return 1;
  }

  else if (a1)
  {
    v4 = sub_2169F954C();

    return v4 != 0;
  }

  else
  {

    return 0;
  }
}

BOOL sub_2169F709C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SocialContactsCoordinator();
  sub_2169F889C(a2, a3);
  if ((v6 & 1) != 0 || sub_2169F93E8(a1, a2, a3))
  {
    return 0;
  }

  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_2169F954C();

  return v9 != 2;
}

void sub_2169F7138(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = 0x736E6F6974706FLL;
  *(inited + 40) = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF818);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_217013D90;
  *(v5 + 32) = 0x6E6F6973726576;
  *(v5 + 40) = 0xE700000000000000;
  *(v5 + 48) = xmmword_217033CB0;
  *(v5 + 64) = 0xEB00000000687467;
  *(v5 + 72) = a2;
  v6 = sub_21700E384();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF820);
  *(inited + 48) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x73746361746E6F63;
  *(inited + 88) = 0xE800000000000000;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  sub_21700DF14();
  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + (v15 << 6));
    v20 = v19[2];
    v21 = v19[3];
    v22 = v19[1];
    v32 = *v19;
    v33 = v22;
    v34 = v20;
    v35 = v21;
    v36[0] = v17;
    v36[1] = v18;
    v37 = v32;
    v38 = v22;
    v39 = v20;
    v40 = v21;
    v23 = *(&v22 + 1);
    if (*(&v22 + 1))
    {
      v29 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF830);
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_217013D90;
      *(v24 + 32) = 25705;
      *(v24 + 40) = 0xE200000000000000;
      *(v24 + 48) = v17;
      *(v24 + 56) = v18;
      *(v24 + 64) = 6775156;
      *(v24 + 72) = 0xE300000000000000;
      *(v24 + 80) = v29;
      *(v24 + 88) = v23;
      swift_bridgeObjectRetain_n();
      sub_2169FB208(&v32, v31);
      sub_21700DF14();
      v25 = sub_21700E384();
      sub_216697664(v36, &qword_27CABF828);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_216938BC8();
        v30 = v27;
      }

      v26 = *(v30 + 16);
      if (v26 >= *(v30 + 24) >> 1)
      {
        sub_216938BC8();
        v30 = v28;
      }

      *(v30 + 16) = v26 + 1;
      *(v30 + 8 * v26 + 32) = v25;
    }

    else
    {
      sub_21700DF14();
      sub_2169FB208(&v32, v31);
      sub_216697664(v36, &qword_27CABF828);
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF838);
      *(inited + 96) = v30;
      sub_21700E384();
      return;
    }

    v10 = *(a1 + 64 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_2169F74DC@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v3 = sub_217005844();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - v15;
  sub_217005ED4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_216697664(v9, &qword_27CABA820);
    v17 = 1;
    v18 = v24;
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    sub_2170057E4();
    sub_217005784();
    sub_217005834();
    if (v23 >> 60 != 15)
    {
      v20[1] = sub_21700E514();
      sub_21700E514();
      v21 = v4;
      sub_21677A404(v22, v23);
      sub_217005834();

      v4 = v21;
      sub_217005824();
    }

    (*(v11 + 8))(v16, v10);
    v18 = v24;
    (*(v4 + 32))(v24, v6, v3);
    v17 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v18, v17, 1, v3);
}

void sub_2169F7850(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    sub_216685F4C(0, &qword_27CABF808);
    v4 = a1;
    v5 = sub_2169F79CC();
    [v3 setClientInfo_];

    v6 = objc_opt_self();
    v7 = v4;
    v8 = [v6 defaultIdentityStore];
    [v3 setIdentityStore_];

    v9 = [objc_opt_self() activeAccount];
    [v3 setIdentity_];
  }
}

id sub_2169F79CC()
{
  v0 = sub_21700E4D4();

  v1 = sub_21700E4D4();

  v2 = [swift_getObjCClassFromMetadata() clientInfoForMusicKitRequestWithClientIdentifier:v0 clientVersion:v1];

  return v2;
}

void sub_2169F7A60(void *a1, id a2, void (*a3)(uint64_t, void, void, void *), uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v8 = a2;
    if (qword_27CAB5BC0 != -1)
    {
      swift_once();
    }

    v9 = sub_217007CA4();
    __swift_project_value_buffer(v9, qword_27CABF750);
    v10 = a2;
    v11 = sub_217007C84();
    v12 = sub_21700ED84();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136446210;
      swift_getErrorValue();
      v15 = sub_21700F884();
      v17 = sub_2166A85FC(v15, v16, aBlock);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_216679000, v11, v12, "Upload Contacts failed error: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v23 = a1;
    v24 = sub_2169FB18C(v23);
    if (v24)
    {
      v25 = sub_2169F7F6C(v24);

      if (v25)
      {
        sub_216934F28();

        if (v41)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
          if (swift_dynamicCast())
          {
            type metadata accessor for SocialContactsCoordinator();
            v26 = sub_2169F5334(a5 & 1);
            v27 = swift_allocObject();
            v27[2] = v44;
            v27[3] = a6;
            v27[4] = a7;
            v27[5] = a3;
            v27[6] = a4;
            v42 = sub_2169FB1F8;
            v43 = v27;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_2169F0990;
            v41 = &block_descriptor_22_0;
            v28 = _Block_copy(aBlock);
            sub_21700DF14();
            sub_21700DF14();
            sub_2167759F4(a3);

            [v26 addOperationWithBlock_];
            _Block_release(v28);

            return;
          }
        }

        else
        {
          sub_216697664(aBlock, &unk_27CABF7A0);
        }
      }
    }

    if (qword_27CAB5BC0 != -1)
    {
      swift_once();
    }

    v29 = sub_217007CA4();
    __swift_project_value_buffer(v29, qword_27CABF750);
    v30 = v23;
    v31 = sub_217007C84();
    v32 = sub_21700ED84();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136446210;
      v44 = [v30 statusCode];
      type metadata accessor for ICURLResponseStatusCode(0);
      v35 = sub_21700E594();
      v37 = sub_2166A85FC(v35, v36, aBlock);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_216679000, v31, v32, "Upload Contacts succeeded but failed to parse result body, status code: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x21CEA1440](v34, -1, -1);
      MEMORY[0x21CEA1440](v33, -1, -1);
    }

    if (a3)
    {
      sub_2169F9D40();
      v38 = swift_allocError();
      *v39 = 4;
      a3(1, 0, 0, v38);
    }

    else
    {
    }
  }
}

unint64_t sub_2169F7F6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF7F0);
    v2 = sub_21700F5C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_21700DF14();
  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_216788294(*(a1 + 48) + 40 * v10, __src);
    sub_2166A6DF8(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_216788294(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_2166A6DF8(&__dst[40], v20);
    sub_216697664(__dst, &qword_27CABF7F8);
    v21 = v18;
    sub_2166EF9C4(v20, v22);
    v11 = v21;
    sub_2166EF9C4(v22, v23);
    sub_2166EF9C4(v23, &v21);
    result = sub_2166AF66C(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      result = sub_2166EF9C4(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_2166EF9C4(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_216697664(__dst, &qword_27CABF7F8);

  return 0;
}

uint64_t sub_2169F8224(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (a4)
  {
    v7 = result;
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();
    a4(v7, a2, a3, 0);
  }

  return result;
}

void sub_2169F82C0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2169F834C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38[23] = *MEMORY[0x277D85DE8];
  v5 = sub_2170061E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = sub_217005EF4();
  v13 = *(v12 - 8);
  result = MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v36 = a2;
    v17 = qword_280E34EE8;
    sub_21700DF14();
    if (v17 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v9, qword_280E34EF8);
    sub_2169FB3DC();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {

      return sub_216697664(v11, &qword_27CABA820);
    }

    else
    {
      (*(v13 + 32))(v16, v11, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_217015230;
      *(inited + 32) = 0xD000000000000017;
      *(inited + 40) = 0x8000000217085EC0;
      sub_2170061D4();
      sub_217006024();
      v20 = v19;
      (*(v6 + 8))(v8, v5);
      v21 = MEMORY[0x277D839F8];
      *(inited + 48) = v20;
      *(inited + 72) = v21;
      *(inited + 80) = 0xD000000000000010;
      *(inited + 88) = 0x8000000217085C70;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF898);
      v23 = v37;
      *(inited + 96) = v37;
      v24 = qword_27CABF710;
      v25 = unk_27CABF718;
      *(inited + 120) = v22;
      *(inited + 128) = v24;
      *(inited + 168) = MEMORY[0x277D837D0];
      v26 = v36;
      *(inited + 136) = v25;
      *(inited + 144) = v26;
      *(inited + 152) = a3;
      sub_21700DF14();
      sub_21700DF14();
      sub_21700E384();
      v27 = objc_opt_self();
      v28 = sub_21700E344();

      v38[0] = 0;
      v29 = [v27 archivedDataWithRootObject:v28 requiringSecureCoding:1 error:v38];

      v30 = v38[0];
      if (v29)
      {
        v31 = sub_217005FB4();
        v33 = v32;

        sub_217005FF4();
        type metadata accessor for SocialContactsCoordinator();
        sub_2169F9248(v23);
        sub_21677A524(v31, v33);
      }

      else
      {
        v34 = v30;
        v35 = sub_217005D34();

        swift_willThrow();
      }

      return (*(v13 + 8))(v16, v12);
    }
  }

  return result;
}

void sub_2169F8804(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  type metadata accessor for SocialContactsCoordinator();
  if (sub_2169F9148(a3, a4))
  {
    *a5 = 0u;
    a5[1] = 0u;
  }

  else
  {

    sub_2169F89FC(a1, a2, a5);
  }
}

uint64_t sub_2169F889C(uint64_t a1, uint64_t a2)
{
  sub_2169F8804(0xD000000000000017, 0x8000000217085EC0, a1, a2, &v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_216697664(&v4, &unk_27CABF7A0);
    return 0;
  }
}

uint64_t sub_2169F8944()
{
  v0 = qword_27CABF710;
  v1 = unk_27CABF718;
  sub_21700DF14();
  sub_2169F89FC(v0, v1, &v4);

  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_216697664(&v4, &unk_27CABF7A0);
    return 0;
  }
}

void sub_2169F89FC(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  v9 = sub_217005EF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  if (qword_280E34EE8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_280E34EF8);
  sub_2169FB3DC();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {

    v14 = &qword_27CABA820;
    v15 = v8;
LABEL_5:
    sub_216697664(v15, v14);
LABEL_10:
    *a3 = 0u;
    a3[1] = 0u;
    return;
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_217005EA4();
  v16 = sub_21700E4D4();

  v17 = [v13 fileExistsAtPath_];

  if (!v17 || (sub_217005EA4(), v18 = sub_21700E4D4(), , v19 = [v13 contentsAtPath_], v18, !v19))
  {
    (*(v10 + 8))(v12, v9);

    goto LABEL_10;
  }

  v24[0] = a1;
  v24[1] = a2;
  v20 = sub_217005FB4();
  v22 = v21;

  sub_216685F4C(0, &qword_27CABF7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF7C0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_217018C90;
  *(v23 + 32) = sub_216685F4C(0, &qword_280E29D88);
  *(v23 + 40) = sub_216685F4C(0, &unk_27CABF7D0);
  *(v23 + 48) = sub_216685F4C(0, qword_27CABC980);
  *(v23 + 56) = sub_216685F4C(0, &unk_27CABF7E0);
  sub_21700EE24();

  if (!*(&v26 + 1))
  {
    (*(v10 + 8))(v12, v9);

    sub_21677A524(v20, v22);
    v14 = &unk_27CABF7A0;
    v15 = &v25;
    goto LABEL_5;
  }

  sub_2166EF9C4(&v25, v27);
  sub_2166A6DF8(v27, &v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_21677A524(v20, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    (*(v10 + 8))(v12, v9);
    goto LABEL_10;
  }

  sub_216934F28();

  sub_21677A524(v20, v22);

  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_2169F8EE8()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  v4 = &v18[-v3];
  sub_217005EF4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280E34EE8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_280E34EF8);
  sub_2169FB3DC();
  if (__swift_getEnumTagSinglePayload(v4, 1, v0) == 1)
  {
    return sub_216697664(v4, &qword_27CABA820);
  }

  OUTLINED_FUNCTION_86_0();
  v11();
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_217005E04();
  v19[0] = 0;
  v14 = [v12 removeItemAtURL:v13 error:v19];

  if (v14)
  {
    v15 = v19[0];
  }

  else
  {
    v16 = v19[0];
    v17 = sub_217005D34();

    swift_willThrow();
  }

  return (*(v6 + 8))(v9, v0);
}

uint64_t sub_2169F9148(uint64_t a1, uint64_t a2)
{
  sub_21700DF14();
  v4 = sub_2169F8944();
  if (!a2)
  {
    if (!v5)
    {
LABEL_11:
      v8 = 0;
      return v8 & 1;
    }

LABEL_9:

    v8 = 1;
    return v8 & 1;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  if (v4 == a1 && v5 == a2)
  {

    goto LABEL_11;
  }

  v7 = sub_21700F7D4();

  v8 = v7 ^ 1;
  return v8 & 1;
}

id sub_2169F9200()
{
  result = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  qword_27CABF720 = result;
  return result;
}

uint64_t sub_2169F9248(uint64_t a1)
{
  if (qword_27CAB5BA0 != -1)
  {
    swift_once();
  }

  v2 = qword_27CABF730;
  sub_21700DF14();
  v3 = sub_2169FA3A8(a1, v2);

  if ((v3 & 1) == 0)
  {
    qword_27CABF730 = a1;
    sub_21700DF14();
  }

  return result;
}

id sub_2169F9300()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  sub_2169FB0B8(0xD00000000000004ALL, 0x8000000217085F40, v0);
  result = [v0 setQualityOfService_];
  qword_27CABF738 = v0;
  return result;
}

id sub_2169F9374()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  sub_2169FB0B8(0xD00000000000004BLL, 0x8000000217085F90, v0);
  result = [v0 setQualityOfService_];
  qword_27CABF740 = v0;
  return result;
}

BOOL sub_2169F93E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2170061E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  type metadata accessor for SocialContactsCoordinator();
  sub_2169F889C(a2, a3);
  if (v13)
  {
    return 0;
  }

  sub_217006014();
  sub_2170061D4();
  sub_217006114();
  v16 = v15;
  v17 = *(v7 + 8);
  v17(v10, v6);
  v17(v12, v6);
  return v16 > a1;
}

uint64_t sub_2169F954C()
{
  sub_2169F08D8(0xD000000000000018, 0x8000000217085EA0, &v3);
  if (!v4)
  {
    sub_216697664(&v3, &unk_27CABF7A0);
    return 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  if (v2 == 1)
  {
    v0 = 2;
  }

  else
  {
    v0 = 1;
  }

  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2169F95F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  __swift_allocate_value_buffer(v0, qword_280E34EF8);
  v1 = __swift_project_value_buffer(v0, qword_280E34EF8);
  return sub_2169F9648(v1);
}

uint64_t sub_2169F9648@<X0>(uint64_t a1@<X8>)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = sub_217005EF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21[-v8];
  MEMORY[0x28223BE20](v7);
  v11 = &v21[-v10];
  v12 = [objc_opt_self() defaultManager];
  v22[0] = 0;
  v13 = [v12 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:v22];

  v14 = v22[0];
  if (v13)
  {
    sub_217005E64();
    v15 = v14;

    (*(v3 + 32))(v11, v9, v2);
    sub_217005E14();
    sub_217005E24();
    v16 = *(v3 + 8);
    v16(v6, v2);
    v16(v11, v2);
    v17 = 0;
  }

  else
  {
    v18 = v22[0];
    v19 = sub_217005D34();

    swift_willThrow();
    v17 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a1, v17, 1, v2);
}

uint64_t sub_2169F98C4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABF750);
  __swift_project_value_buffer(v0, qword_27CABF750);
  type metadata accessor for SocialContactsCoordinator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF800);
  sub_21700E5B4();
  return sub_217007C94();
}

uint64_t type metadata accessor for SocialContactsCoordinator.Contact()
{
  result = qword_280E34ED0;
  if (!qword_280E34ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2169F99FC()
{
  sub_2166DAAC0(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2166880FC();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_2169F9B4C();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_2166DAAC0(319, &qword_280E29EC8, &type metadata for SocialContactsCoordinator.Contact.Entry, MEMORY[0x277D83940]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_2169F9B4C()
{
  if (!qword_280E29DB0)
  {
    v0 = sub_21700EBD4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29DB0);
    }
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2169F9BB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2169F9BF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2169F9C94()
{
  v1 = *(sub_21700DFD4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = ((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_2169F53D4(v0 + v2, v5, v7, v8, v9, v10, v11);
}

unint64_t sub_2169F9D40()
{
  result = qword_27CABF788;
  if (!qword_27CABF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF788);
  }

  return result;
}

uint64_t sub_2169F9DD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2169F9DC8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2169F9E00(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v25 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = (v5 + 63) >> 6;
  v8 = a2 + 56;
  v26 = v7;
  v27 = result;
  if ((v6 & *(result + 56)) != 0)
  {
    do
    {
      OUTLINED_FUNCTION_23_28();
      v28 = v10;
LABEL_13:
      v13 = *(*(v3 + 48) + (v9 | (v4 << 6)));
      sub_21700F8F4();
      sub_216C6E3C8(v13);
      sub_21700E614();

      v14 = sub_21700F944();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = 0xD000000000000013;
        v19 = 0xD000000000000013;
        v20 = "ion";
        switch(*(*(a2 + 48) + v16))
        {
          case 1:
            v19 = 0xD00000000000001DLL;
            v20 = "fullCatalogPlayback";
            break;
          case 2:
            v19 = 0xD000000000000012;
            v20 = "voiceActivatedCatalogPlayback";
            break;
          case 3:
            v19 = 0xD000000000000014;
            v20 = "anyCatalogPlayback";
            break;
          case 4:
            v19 = 0xD00000000000001FLL;
            v20 = "cloudLibraryEligible";
            break;
          case 5:
            v19 = 0xD000000000000014;
            v20 = "addCatalogContentToCloudLibrary";
            break;
          default:
            break;
        }

        v21 = v20 | 0x8000000000000000;
        v22 = "ion";
        switch(v13)
        {
          case 1:
            v18 = 0xD00000000000001DLL;
            v22 = "fullCatalogPlayback";
            break;
          case 2:
            v18 = 0xD000000000000012;
            v22 = "voiceActivatedCatalogPlayback";
            break;
          case 3:
            v18 = 0xD000000000000014;
            v22 = "anyCatalogPlayback";
            break;
          case 4:
            v18 = 0xD00000000000001FLL;
            v22 = "cloudLibraryEligible";
            break;
          case 5:
            v18 = 0xD000000000000014;
            v22 = "addCatalogContentToCloudLibrary";
            break;
          default:
            break;
        }

        if (v19 == v18 && v21 == (v22 | 0x8000000000000000))
        {

          v3 = v27;
          goto LABEL_36;
        }

        v24 = sub_21700F7D4();

        if (v24)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          return 0;
        }
      }

      v3 = v27;
LABEL_36:
      v7 = v26;
    }

    while (v28);
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v7)
    {
      return 1;
    }

    ++v11;
    if (*(v25 + 8 * v4))
    {
      OUTLINED_FUNCTION_15_35();
      v28 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_2169FA130(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_20_29();
      OUTLINED_FUNCTION_28_4();

LABEL_32:
      MEMORY[0x2821FCF40]();
      return;
    }
  }

  else
  {
    if (!v4)
    {
      if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
      {
LABEL_30:
        OUTLINED_FUNCTION_28_4();
        return;
      }

      v9 = 1 << *(a1 + 32);
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = v10 & *(a1 + 56);
      sub_217007D44();
      v12 = 0;
      v13 = (v9 + 63) >> 6;
      if (v11)
      {
        while (2)
        {
          v23 = (v11 - 1) & v11;
LABEL_23:
          OUTLINED_FUNCTION_12_39();
          sub_2169FB394(v16, v17);

          v18 = sub_21700E424();
          v19 = ~(-1 << *(a2 + 32));
          do
          {
            v20 = v18 & v19;
            if (((*(a2 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
            {

              goto LABEL_30;
            }

            OUTLINED_FUNCTION_12_39();
            sub_2169FB394(&qword_27CABF9D8, v21);
            v22 = sub_21700E494();
            v18 = v20 + 1;
          }

          while ((v22 & 1) == 0);

          v13 = (v9 + 63) >> 6;
          v11 = v23;
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v14 = v12;
      while (1)
      {
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v12 >= v13)
        {
          goto LABEL_30;
        }

        ++v14;
        if (*(a1 + 56 + 8 * v12))
        {
          OUTLINED_FUNCTION_15_35();
          v23 = v15;
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_20_29();
  }

  OUTLINED_FUNCTION_28_4();

  sub_2169FAB14(v6, v7);
}

uint64_t sub_2169FA3A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_21700F8F4();
      sub_21700DF14();
      sub_21700E614();
      v15 = sub_21700F944();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_21700F7D4();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_2169FA550()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_92();
  v2 = type metadata accessor for SocialFindFriendsController.Friend(0) - 8;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - v7;
  MEMORY[0x28223BE20](v6);
  v11 = &v27 - v9;
  if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
  {
LABEL_20:
    OUTLINED_FUNCTION_26();
  }

  else
  {
    v12 = 0;
    v13 = *(v1 + 56);
    v27 = v1 + 56;
    v14 = 1 << *(v1 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = (v14 + 63) >> 6;
    v35 = v0 + 56;
    v28 = v16;
    v29 = &v27 - v9;
    v30 = v10;
    v31 = v1;
    v33 = v8;
    if ((v15 & v13) != 0)
    {
      while (2)
      {
        OUTLINED_FUNCTION_23_28();
        v32 = v18;
LABEL_13:
        v34 = *(v17 + 72);
        sub_2169FB7D0();
        sub_2169FB82C(v11, v8);
        sub_21700F8F4();
        sub_21700E614();
        v21 = sub_21700F944();
        v22 = v0;
        v23 = ~(-1 << *(v0 + 32));
        do
        {
          v24 = v21 & v23;
          if (((*(v35 + (((v21 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v23)) & 1) == 0)
          {
            sub_2169FB890(v33, type metadata accessor for SocialFindFriendsController.Friend);
            goto LABEL_20;
          }

          sub_2169FB7D0();
          sub_21700F8F4();
          sub_21700E614();
          v25 = sub_21700F944();
          sub_21700F8F4();
          sub_21700E614();
          v26 = sub_21700F944();
          sub_2169FB890(v5, type metadata accessor for SocialFindFriendsController.Friend);
          v21 = v24 + 1;
        }

        while (v25 != v26);
        v8 = v33;
        sub_2169FB890(v33, type metadata accessor for SocialFindFriendsController.Friend);
        v0 = v22;
        v16 = v28;
        v11 = v29;
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v16)
      {
        goto LABEL_20;
      }

      ++v19;
      if (*(v27 + 8 * v12))
      {
        OUTLINED_FUNCTION_15_35();
        v32 = v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2169FA884(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_2168A550C;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21689D330;
  v9[3] = &block_descriptor_28;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBlock_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id sub_2169FA9A0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_2170057B4();
  v7 = [v3 initWithURLRequest:v6 requestContext:a2];

  v8 = sub_217005844();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id sub_2169FAA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21700E4D4();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_217005D34();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2169FAB14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_21700F2B4();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_21700F2F4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2169FAC18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_29_24();
  v0 = OUTLINED_FUNCTION_19_5();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2169FACBC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  swift_arrayDestroy();
  v1 = OUTLINED_FUNCTION_19_5();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_2169FAD04()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2169FAD78(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_29_24();
  v1 = OUTLINED_FUNCTION_19_5();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_2169FADF0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_217005F04();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x21CE96D40]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x21CE96D60]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2169FAE68()
{
  sub_21700CA64();
  sub_2169FB394(&qword_27CABF840, MEMORY[0x277CC5540]);
  return sub_21700CA24();
}

uint64_t sub_2169FAF3C(uint64_t a1, uint64_t a2)
{
  result = sub_217005AD4();
  if (!result || (result = sub_217005AF4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_217005AE4();
      sub_21700CA64();
      sub_2169FB394(&qword_27CABF840, MEMORY[0x277CC5540]);
      return sub_21700CA24();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2169FB01C(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_2169FAF3C(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_2169FAE68();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

void sub_2169FB0B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21700E4D4();

  [a3 setName_];
}

uint64_t sub_2169FB11C(void *a1)
{
  v2 = [a1 unformattedInternationalStringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21700E514();

  return v3;
}

uint64_t sub_2169FB18C(void *a1)
{
  v1 = [a1 parsedBodyDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21700E354();

  return v3;
}

unint64_t sub_2169FB2A8()
{
  result = qword_27CABF888;
  if (!qword_27CABF888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF888);
  }

  return result;
}

uint64_t sub_2169FB2FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2166A0F18(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_2169FB394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2169FB3DC()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_34();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2169FB448(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2169FB49C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SocialContactsCoordinator.ErrorKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2169FB5EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2169FB6CC()
{
  result = qword_27CABF9F0;
  if (!qword_27CABF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF9F0);
  }

  return result;
}

unint64_t sub_2169FB724()
{
  result = qword_27CABF9F8;
  if (!qword_27CABF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF9F8);
  }

  return result;
}

unint64_t sub_2169FB77C()
{
  result = qword_27CABFA00;
  if (!qword_27CABFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFA00);
  }

  return result;
}

uint64_t sub_2169FB7D0()
{
  OUTLINED_FUNCTION_92();
  v2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2169FB82C(uint64_t a1, uint64_t a2)
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  (*(*(Friends - 8) + 32))(a2, a1, Friends);
  return a2;
}

uint64_t sub_2169FB890(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for MovieDetailPageIntent()
{
  result = qword_27CABFA10;
  if (!qword_27CABFA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2169FB9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v51, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44));
  if (v25)
  {
    (*(v8 + 8))(v51, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v51;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for MovieDetailPageIntent();
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_2169FBD74(JSContext a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v8 = type metadata accessor for MovieDetailPageIntent();
    sub_2168CC268(v1 + *(v8 + 20), v5);
    v9 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2168CC2D8(v5);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v5);
    }

    sub_2166F1F64(isa);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2169FBF48(uint64_t a1)
{
  result = sub_2166CE504(&qword_27CABFA20, type metadata accessor for MovieDetailPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2169FBFE8(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE504(&qword_27CABFA20, type metadata accessor for MovieDetailPageIntent);
  result = sub_2166CE504(&qword_27CABFA28, type metadata accessor for MovieDetailPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2169FC06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v11[3] = a2;
  v11[4] = a3;
  if (a1)
  {
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v5, a2);

    return sub_216A12228(v11, a4);
  }

  else
  {
    v10 = __swift_allocate_boxed_opaque_existential_1(v11);
    (*(*(a2 - 8) + 16))(v10, v5, a2);

    return sub_216A12718(v11, a4);
  }
}