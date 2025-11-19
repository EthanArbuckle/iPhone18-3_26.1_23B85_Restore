uint64_t static UsoEntity_common_HealthLog.builder(healthLogName:areaType:healthLogNameIdentifierNamespace:measurementNeeded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v31 = a5;
  v32 = a6;
  v11 = sub_251673848();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_251673DC8();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_251673DB8();
  if (a2)
  {
    v20 = sub_2516739D8();
    v30 = a4;
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v23 = sub_2516739C8();
    v29[1] = a2;
    v24 = v23;
    v31 = v11;

    sub_251673818();
    sub_2516737D8();
    (*(v12 + 8))(v15, v31);
    v33 = v24;
    a4 = v30;
    sub_251673868();
  }

  if (a4)
  {
    _s12SiriOntology31UsoEntity_common_GeographicAreaC18HealthDomainsToolsE7builder8areaTypeAA0cd8Builder_e1_fG0CSSSg_tFZ_0(a3, a4);
    sub_251673D98();
  }

  if (a7)
  {
    v25 = sub_251673E88();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_251673E78();
    sub_251673DA8();
  }

  return v19;
}

uint64_t static UsoEntity_common_HealthLog.with(healthLogName:areaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_251673848();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251673DC8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_251673DB8();
  if (a2)
  {
    v16 = sub_2516739D8();
    v21 = a3;
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v19 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v8 + 8))(v11, v7);
    v22 = v19;
    a3 = v21;
    sub_251673868();
  }

  if (a4)
  {
    _s12SiriOntology31UsoEntity_common_GeographicAreaC18HealthDomainsToolsE7builder8areaTypeAA0cd8Builder_e1_fG0CSSSg_tFZ_0(a3, a4);
    sub_251673D98();
  }

  MEMORY[0x25307D850](v15);
  sub_251673A38();
  sub_251673A18();

  return v22;
}

double variable initialization expression of FlowConfigModel.aceService@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t static USOParse.startWorkout(_:appIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v137 = a4;
  v133 = a3;
  v142 = a5;
  v130 = sub_251674568();
  v129 = *(v130 - 8);
  v7 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v128 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452380, &qword_251675260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v126 = &v118 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452388, &qword_251675268);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v138 = &v118 - v14;
  v15 = sub_251673688();
  v139 = *(v15 - 8);
  v140 = v15;
  v16 = *(v139 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v124 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v125 = &v118 - v19;
  v20 = sub_251673AC8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v119 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v136 = &v118 - v25;
  v26 = sub_251673848();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v141 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v122 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v123 = &v118 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v118 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v118 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v118 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A0, &unk_251675E00);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v48 = &v118 - v47;
  v49 = sub_251673A98();
  v50 = *(*(v49 - 8) + 56);
  v143 = v48;
  v50(v48, 1, 1, v49);
  v51 = sub_251673D68();
  v52 = *(*(v51 - 8) + 56);
  v144 = v44;
  v52(v44, 1, 1, v51);
  v135 = v21;
  v53 = *(v21 + 56);
  v145 = v40;
  v121 = v53;
  v53(v40, 1, 1, v20);
  v54 = sub_251673CB8();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v57 = sub_251673CA8();
  v58 = sub_251673DC8();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  sub_251673DB8();
  v146 = v57;
  if (a2)
  {
    v61 = sub_2516739D8();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v64 = sub_2516739C8();
    v134 = v38;
    v132 = v20;
    v65 = v26;
    v66 = a1;
    v67 = a2;
    v68 = v64;
    v69 = v141;
    sub_251673818();
    sub_2516737D8();
    (*(v27 + 8))(v69, v65);
    v150 = v68;
    sub_251673868();
    a2 = v67;
    a1 = v66;
    v26 = v65;
    v20 = v132;
    v38 = v134;
  }

  v131 = v27;
  v132 = v26;
  v120 = a1;
  v127 = a2;

  sub_251673C78();

  v134 = sub_251658E48(v143, v144, 0, 1);
  sub_251673C88();
  sub_251654A14(v145, v38);
  v70 = v135;
  v71 = *(v135 + 48);
  if (v71(v38, 1, v20) == 1)
  {
    sub_251654A84(v38, &qword_27F452390, &unk_251675D30);
    v72 = v139;
    v73 = v142;
    if (!v137)
    {
      goto LABEL_11;
    }

LABEL_10:
    v83 = sub_251673A68();
    v84 = *(v83 + 48);
    v85 = *(v83 + 52);
    swift_allocObject();
    sub_251673A58();
    v86 = sub_2516739D8();
    v87 = *(v86 + 48);
    v88 = *(v86 + 52);
    swift_allocObject();

    v89 = sub_2516739C8();
    v90 = v141;
    sub_251673818();
    sub_2516737D8();
    (*(v131 + 8))(v90, v132);
    v150 = v89;
    sub_251673868();

    sub_251673A08();

    goto LABEL_11;
  }

  v74 = v136;
  v118 = *(v70 + 32);
  v118(v136, v38, v20);
  v75 = v123;
  (*(v70 + 16))(v123, v74, v20);
  v121(v75, 0, 1, v20);
  v76 = sub_251673F18();
  v77 = *(v76 + 48);
  v78 = *(v76 + 52);
  swift_allocObject();
  sub_251673F08();
  v79 = v122;
  sub_251654A14(v75, v122);
  if (v71(v79, 1, v20) == 1)
  {
    sub_251654A84(v75, &qword_27F452390, &unk_251675D30);
    v80 = v79;
    v72 = v139;
    v81 = v137;
  }

  else
  {
    v82 = v119;
    v118(v119, v79, v20);
    sub_251673EF8();
    (*(v70 + 8))(v82, v20);
    v72 = v139;
    v81 = v137;
    v80 = v75;
  }

  sub_251654A84(v80, &qword_27F452390, &unk_251675D30);

  sub_2516739F8();

  (*(v70 + 8))(v136, v20);
  v73 = v142;
  if (v81)
  {
    goto LABEL_10;
  }

LABEL_11:

  v91 = sub_251673FC8();
  v92 = *(v91 + 48);
  v93 = *(v91 + 52);
  swift_allocObject();
  v94 = sub_251673FB8();
  sub_251673BC8();

  sub_251654A84(v145, &qword_27F452390, &unk_251675D30);
  sub_251654A84(v144, &qword_27F452398, &qword_251675270);
  sub_251654A84(v143, &qword_27F4523A0, &unk_251675E00);
  v95 = v138;
  static Siri_Nlu_External_UserParse.with(task:hasCancelled:)(v94, 0, v138);
  v96 = v140;
  if ((*(v72 + 48))(v95, 1, v140) == 1)
  {
    sub_251654A84(v95, &qword_27F452388, &qword_251675268);
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v97 = v130;
    v98 = __swift_project_value_buffer(v130, static Logger.common);
    swift_beginAccess();
    v99 = v129;
    v100 = v128;
    (*(v129 + 16))(v128, v98, v97);
    v101 = v127;

    v102 = sub_251674548();
    v103 = sub_251674728();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = v99;
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v148 = v101;
      v149 = v106;
      *v105 = 136315138;
      v147 = v120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A8, &qword_251675890);
      v107 = sub_251674788();
      v109 = sub_25165445C(v107, v108, &v149);

      *(v105 + 4) = v109;
      _os_log_impl(&dword_251650000, v102, v103, "Failed to create USOParse for workout task: %s", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v106);
      MEMORY[0x25307EDE0](v106, -1, -1);
      MEMORY[0x25307EDE0](v105, -1, -1);

      (*(v104 + 8))(v100, v97);
    }

    else
    {

      (*(v99 + 8))(v100, v97);
    }

    v115 = 1;
    v73 = v142;
  }

  else
  {
    v110 = v125;
    (*(v72 + 32))(v125, v95, v96);
    (*(v72 + 16))(v124, v110, v96);
    v111 = *MEMORY[0x277D5DA78];
    v112 = sub_251673628();
    v113 = *(v112 - 8);
    v114 = v126;
    (*(v113 + 104))(v126, v111, v112);
    (*(v113 + 56))(v114, 0, 1, v112);
    sub_251673608();

    (*(v72 + 8))(v110, v96);
    v115 = 0;
  }

  v116 = sub_251673618();
  return (*(*(v116 - 8) + 56))(v73, v115, 1, v116);
}

uint64_t static USOParse.modifyWorkout(_:verb:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v7 = sub_251674568();
  v8 = *(v7 - 8);
  v47 = v7;
  v48 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452380, &qword_251675260);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452388, &qword_251675268);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v46 - v18;
  v20 = sub_251673688();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v46 - v26;
  v46 = a1;
  v28 = _s12SiriOntology7UsoTaskC18HealthDomainsToolsE13modifyWorkout_4verbAA0C37_VerbTemplateBuilder_ReferenceControlCyAA0c6Entitym8_common_I0CGSSSg_AD06ModifyidK0OtFZ_0(a1, a2, a3);
  static Siri_Nlu_External_UserParse.with(task:hasCancelled:)(v28, 0, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_251654A84(v19, &qword_27F452388, &qword_251675268);
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v29 = v47;
    v30 = __swift_project_value_buffer(v47, static Logger.common);
    swift_beginAccess();
    v31 = v48;
    (*(v48 + 16))(v11, v30, v29);

    v32 = sub_251674548();
    v33 = sub_251674728();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v51 = a2;
      v52 = v35;
      *v34 = 136315138;
      v50 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A8, &qword_251675890);
      v36 = sub_251674788();
      v38 = sub_25165445C(v36, v37, &v52);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_251650000, v32, v33, "Failed to create USOParse for workout task: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x25307EDE0](v35, -1, -1);
      MEMORY[0x25307EDE0](v34, -1, -1);
    }

    else
    {
    }

    (*(v31 + 8))(v11, v29);
    v43 = 1;
    v42 = v49;
  }

  else
  {
    (*(v21 + 32))(v27, v19, v20);
    (*(v21 + 16))(v25, v27, v20);
    v39 = *MEMORY[0x277D5DA78];
    v40 = sub_251673628();
    v41 = *(v40 - 8);
    (*(v41 + 104))(v15, v39, v40);
    (*(v41 + 56))(v15, 0, 1, v40);
    v42 = v49;
    sub_251673608();

    (*(v21 + 8))(v27, v20);
    v43 = 0;
  }

  v44 = sub_251673618();
  return (*(*(v44 - 8) + 56))(v42, v43, 1, v44);
}

uint64_t sub_251653940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v7 = sub_251674568();
  v8 = *(v7 - 8);
  v47 = v7;
  v48 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452380, &qword_251675260);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452388, &qword_251675268);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v46 - v18;
  v20 = sub_251673688();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v46 - v26;
  v46 = a1;
  v28 = a3(a1, a2);
  static Siri_Nlu_External_UserParse.with(task:hasCancelled:)(v28, 1, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_251654A84(v19, &qword_27F452388, &qword_251675268);
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v29 = v47;
    v30 = __swift_project_value_buffer(v47, static Logger.common);
    swift_beginAccess();
    v31 = v48;
    (*(v48 + 16))(v11, v30, v29);

    v32 = sub_251674548();
    v33 = sub_251674728();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v51 = a2;
      v52 = v35;
      *v34 = 136315138;
      v50 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A8, &qword_251675890);
      v36 = sub_251674788();
      v38 = sub_25165445C(v36, v37, &v52);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_251650000, v32, v33, "Failed to create USOParse for workout task: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x25307EDE0](v35, -1, -1);
      MEMORY[0x25307EDE0](v34, -1, -1);
    }

    else
    {
    }

    (*(v31 + 8))(v11, v29);
    v43 = 1;
    v42 = v49;
  }

  else
  {
    (*(v21 + 32))(v27, v19, v20);
    (*(v21 + 16))(v25, v27, v20);
    v39 = *MEMORY[0x277D5DA78];
    v40 = sub_251673628();
    v41 = *(v40 - 8);
    (*(v41 + 104))(v15, v39, v40);
    (*(v41 + 56))(v15, 0, 1, v40);
    v42 = v49;
    sub_251673608();

    (*(v21 + 8))(v27, v20);
    v43 = 0;
  }

  v44 = sub_251673618();
  return (*(*(v44 - 8) + 56))(v42, v43, 1, v44);
}

uint64_t sub_251653EB0@<X0>(Class *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a3;
  v4 = sub_251674568();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452380, &qword_251675260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452388, &qword_251675268);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v38 - v15;
  v17 = sub_251673688();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v38 - v23;
  v25 = [objc_allocWithZone(*a1) init];
  sub_251673788();

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v26 = v40;
    sub_251654A84(v16, &qword_27F452388, &qword_251675268);
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v4, static Logger.common);
    swift_beginAccess();
    (*(v5 + 16))(v8, v27, v4);
    v28 = sub_251674548();
    v29 = sub_251674728();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_251650000, v28, v29, v39, v30, 2u);
      MEMORY[0x25307EDE0](v30, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v31 = 1;
    v32 = v26;
  }

  else
  {
    (*(v18 + 32))(v24, v16, v17);
    (*(v18 + 16))(v22, v24, v17);
    v33 = *MEMORY[0x277D5DA78];
    v34 = sub_251673628();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v12, v33, v34);
    (*(v35 + 56))(v12, 0, 1, v34);
    v32 = v40;
    sub_251673608();
    (*(v18 + 8))(v24, v17);
    v31 = 0;
  }

  v36 = sub_251673618();
  return (*(*(v36 - 8) + 56))(v32, v31, 1, v36);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25165438C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_251654400(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_25165445C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_25165445C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251654528(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_251654B68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_251654528(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_251654634(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_251674848();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_251654634(uint64_t a1, unint64_t a2)
{
  v4 = sub_251654680(a1, a2);
  sub_2516547B0(&unk_28638E4D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_251654680(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25165489C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_251674848();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_251674678();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25165489C(v10, 0);
        result = sub_2516747F8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2516547B0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_251654910(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25165489C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B0, &qword_251675278);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_251654910(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B0, &qword_251675278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_251654A04(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_251654A14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251654A84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_251654B68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t DialogFlow.catId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DialogFlow.init(catId:wrapper:parameters:snippets:deviceState:aceService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  sub_251654C4C(a6, (a8 + 5));

  return sub_251654C4C(a7, (a8 + 10));
}

uint64_t sub_251654C4C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t DialogFlow.execute(completion:)(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v94 = a2;
  v93 = a1;
  v85 = sub_251673538();
  v84 = *(v85 - 8);
  v4 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v83 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251673558();
  v82 = *(v6 - 8);
  v7 = *(v82 + 64);
  MEMORY[0x28223BE20](v6);
  v81 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B8, qword_251675280);
  v9 = *(*(v87 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v87);
  v88 = (&v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v95 = &v80 - v12;
  v13 = sub_251674568();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v86 = &v80 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v80 - v21;
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v13, static Logger.common);
  swift_beginAccess();
  v24 = v14[2];
  v91 = v23;
  v90 = v14 + 2;
  v89 = v24;
  v24(v22, v23, v13);
  sub_2516559D8(v3, &v97);
  v25 = sub_251674548();
  v26 = sub_251674718();
  v27 = os_log_type_enabled(v25, v26);
  v92 = v13;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v96 = v29;
    *v28 = 136315138;
    v80 = v6;
    v30 = v18;
    v31 = v14;
    v33 = v97;
    v32 = v98;

    sub_251655A10(&v97);
    v34 = sub_25165445C(v33, v32, &v96);
    v14 = v31;
    v18 = v30;
    v6 = v80;

    *(v28 + 4) = v34;
    _os_log_impl(&dword_251650000, v25, v26, "Executing dialog: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v35 = v29;
    v13 = v92;
    MEMORY[0x25307EDE0](v35, -1, -1);
    MEMORY[0x25307EDE0](v28, -1, -1);
  }

  else
  {

    sub_251655A10(&v97);
  }

  v36 = v14[1];
  v36(v22, v13);
  v37 = *v3;
  v38 = v3[1];
  v40 = v3[2];
  v39 = v3[3];
  v41 = v95;
  sub_251674388();
  v42 = v41;
  v43 = v88;
  sub_251655A40(v42, v88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = *v43;
    v45 = v86;
    v89(v86, v91, v13);
    sub_2516559D8(v3, &v97);
    v46 = sub_251674548();
    v47 = sub_251674728();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v96 = v49;
      *v48 = 136315138;
      v50 = v97;
      v51 = v98;

      sub_251655A10(&v97);
      v52 = sub_25165445C(v50, v51, &v96);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_251650000, v46, v47, "Failed to execute CAT: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      v53 = v49;
      v13 = v92;
      MEMORY[0x25307EDE0](v53, -1, -1);
      MEMORY[0x25307EDE0](v48, -1, -1);

      v54 = v86;
    }

    else
    {

      sub_251655A10(&v97);
      v54 = v45;
    }

    v36(v54, v13);
    v89(v18, v91, v13);
    v67 = v44;
    v68 = sub_251674548();
    v69 = sub_251674728();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v96 = v44;
      v97 = v71;
      *v70 = 136315138;
      v72 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523C0, &qword_2516762D0);
      v73 = sub_251674618();
      v75 = sub_25165445C(v73, v74, &v97);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_251650000, v68, v69, "Error: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x25307EDE0](v71, -1, -1);
      MEMORY[0x25307EDE0](v70, -1, -1);

      v76 = v18;
      v77 = v92;
    }

    else
    {

      v76 = v18;
      v77 = v13;
    }

    v36(v76, v77);
    v78 = v83;
    sub_251673518();
    v93(v78);

    (*(v84 + 8))(v78, v85);
  }

  else
  {
    v55 = v82;
    v56 = v81;
    (*(v82 + 32))(v81, v43, v6);
    v57 = v3[9];
    __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
    sub_251673408();
    v58 = sub_2516734B8();
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    sub_2516734A8();
    v61 = v3[4];
    v62 = v3[9];
    __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
    sub_251673408();
    v63 = sub_251673498();

    v64 = v3[14];
    __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
    v65 = swift_allocObject();
    v66 = v94;
    *(v65 + 16) = v93;
    *(v65 + 24) = v66;
    sub_251655B9C();

    sub_251673578();

    (*(v55 + 8))(v56, v6);
  }

  return sub_251655AB0(v95);
}

uint64_t sub_251655594(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_251673538();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673518();
  a2(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_251655678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_251655728;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_251655728(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_251655828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B888] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2516558DC;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_2516558DC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_251655A40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B8, qword_251675280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251655AB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B8, qword_251675280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_251655B5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_251655B9C()
{
  result = qword_27F4523C8;
  if (!qword_27F4523C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4523C8);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_251655C14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_251655C5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static DialogCalendar.make(date:)()
{
  v0 = sub_251674378();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_251674368();
  sub_251673218();
  sub_251674358();

  v3 = sub_251674348();

  return v3;
}

uint64_t static Siri_Nlu_External_UserParse.with(task:hasCancelled:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v56 = a3;
  v4 = *(*(sub_2516736A8() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_251673708();
  v48 = *(v53 - 8);
  v6 = *(v48 + 64);
  (MEMORY[0x28223BE20])();
  v54 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_251673748();
  v55 = *(v51 - 8);
  v8 = *(v55 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523D0, &qword_251675390);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v44 - v15;
  v17 = sub_251673648();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523D8, &qword_251675398);
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v44 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_251675370;
  *(v29 + 32) = a1;
  v30 = sub_251673898();
  (*(*(v30 - 8) + 56))(v28, 1, 1, v30);

  MEMORY[0x25307D720](v29, v28);

  sub_251654A84(v28, &qword_27F4523D8, &qword_251675398);
  sub_251673798();
  v31 = v48;
  (*(v18 + 56))(v16, 0, 1, v17);
  (*(v18 + 32))(v24, v16, v17);
  sub_251673738();
  v32 = *(v18 + 16);
  v45 = v24;
  v46 = v17;
  v32(v22, v24, v17);
  sub_251673728();
  v33 = v54;
  sub_2516736F8();
  v34 = *(v55 + 16);
  v35 = v51;
  v47 = v12;
  v34(v50, v12, v51);
  sub_2516736D8();
  if (v52)
  {
    sub_251673698();
    sub_2516736E8();
  }

  v36 = v56;
  sub_251673678();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523E0, &qword_2516753A0);
  v37 = *(v31 + 72);
  v38 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_251675380;
  v40 = v39 + v38;
  v41 = v53;
  (*(v31 + 16))(v40, v33, v53);
  sub_251673668();

  (*(v31 + 8))(v33, v41);
  (*(v55 + 8))(v47, v35);
  (*(v18 + 8))(v45, v46);
  v42 = sub_251673688();
  return (*(*(v42 - 8) + 56))(v36, 0, 1, v42);
}

uint64_t static UsoEntity_common_DurationComponent.builder(unit:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_251674148();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_251674138();
  if (a1)
  {

    sub_251674118();
  }

  if (a3)
  {

    sub_251674128();
  }

  return v8;
}

uint64_t static UsoEntity_common_DurationComponent.with(unit:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_251674148();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_251674138();
  if (a1)
  {

    sub_251674118();
  }

  if (a3)
  {

    sub_251674128();
  }

  MEMORY[0x25307D850](v8);
  sub_251673E28();
  sub_251673A18();

  return v10;
}

uint64_t LocationService.init(with:geocoder:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_251654C4C(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t LocationService.getCurrentLocation()()
{
  v1 = sub_251674568();
  v0[29] = v1;
  v2 = *(v1 - 8);
  v0[30] = v2;
  v3 = *(v2 + 64) + 15;
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251656594, 0, 0);
}

uint64_t sub_251656594()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v0[33] = v1;
  v2 = *MEMORY[0x277CE4270];
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_2516566E8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523E8, &qword_2516753B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_251656BCC;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v1 currentLocationWithAccuracy:v0 + 10 timeout:v2 completion:1.0];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2516566E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_251656980;
  }

  else
  {
    v3 = sub_2516567F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2516567F8()
{
  v1 = *(v0 + 216);
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 256);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = __swift_project_value_buffer(v3, static Logger.common);
  swift_beginAccess();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_251674548();
  v7 = sub_251674718();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_251650000, v6, v7, "Fetched location", v8, 2u);
    MEMORY[0x25307EDE0](v8, -1, -1);
  }

  v9 = *(v0 + 256);
  v10 = *(v0 + 232);
  v11 = *(v0 + 240);

  (*(v11 + 8))(v9, v10);
  v13 = *(v0 + 248);
  v12 = *(v0 + 256);

  v14 = *(v0 + 8);

  return v14(v1);
}

uint64_t sub_251656980()
{
  v31 = v0;
  v1 = v0[34];
  swift_willThrow();
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v2 = v0[34];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = __swift_project_value_buffer(v5, static Logger.common);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_251674548();
  v9 = sub_251674728();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[33];
  v12 = v0[34];
  v14 = v0[30];
  v13 = v0[31];
  v15 = v0[29];
  if (v10)
  {
    v29 = v0[29];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v28 = v13;
    v19 = v0[21];
    v18 = v0[22];
    v20 = v0[23];
    v21 = sub_2516749A8();
    v23 = sub_25165445C(v21, v22, &v30);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_251650000, v8, v9, "Error submitting SAGetRequestOrigin: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x25307EDE0](v17, -1, -1);
    MEMORY[0x25307EDE0](v16, -1, -1);

    (*(v14 + 8))(v28, v29);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v25 = v0[31];
  v24 = v0[32];

  v26 = v0[1];

  return v26(0);
}

uint64_t sub_251656BCC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523C0, &qword_2516762D0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t LocationService.getLocationCountryCode()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_251656D48;

  return LocationService.getCurrentPlacemark()();
}

uint64_t sub_251656D48(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x2822009F8](sub_251656E48, 0, 0);
}

uint64_t sub_251656E48()
{
  v1 = *(v0 + 24);
  if (v1 && (v2 = [*(v0 + 24) ISOcountryCode], v1, v2))
  {
    v3 = sub_251674608();
    v5 = v4;

    v6 = v5;
    v7 = v3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(v0 + 8);

  return v8(v7, v6);
}

uint64_t LocationService.getCurrentPlacemark()()
{
  v1[32] = v0;
  v2 = sub_251674568();
  v1[33] = v2;
  v3 = *(v2 - 8);
  v1[34] = v3;
  v4 = *(v3 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[38] = v5;
  *v5 = v1;
  v5[1] = sub_251657000;

  return LocationService.getCurrentLocation()();
}

uint64_t sub_251657000(uint64_t a1)
{
  v2 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = a1;

  return MEMORY[0x2822009F8](sub_251657100, 0, 0);
}

uint64_t sub_251657100()
{
  v1 = v0[39];
  if (v1)
  {
    v2 = *(v0[32] + 40);
    v0[2] = v0;
    v0[7] = v0 + 30;
    v0[3] = sub_25165738C;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523F0, &qword_2516753D0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_251657B48;
    v0[13] = &block_descriptor_5;
    v0[14] = v3;
    [v2 reverseGeocodeLocation:v1 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v4 = v0[36];
    v5 = v0[33];
    v6 = v0[34];
    v7 = __swift_project_value_buffer(v5, static Logger.common);
    swift_beginAccess();
    (*(v6 + 16))(v4, v7, v5);
    v8 = sub_251674548();
    v9 = sub_251674728();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[36];
    v12 = v0[33];
    v13 = v0[34];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_251650000, v8, v9, "Could not acquire location, so unable to determine placemark", v14, 2u);
      MEMORY[0x25307EDE0](v14, -1, -1);
    }

    (*(v13 + 8))(v11, v12);
    v16 = v0[36];
    v15 = v0[37];
    v17 = v0[35];

    v18 = v0[1];

    return v18(0);
  }
}

uint64_t sub_25165738C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = sub_2516576B0;
  }

  else
  {
    v3 = sub_25165749C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25165749C()
{
  v1 = v0[30];
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[34];
  v5 = __swift_project_value_buffer(v3, static Logger.common);
  swift_beginAccess();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_251674548();
  v7 = sub_251674718();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_251650000, v6, v7, "Reverse geocoding returned placemarks", v8, 2u);
    MEMORY[0x25307EDE0](v8, -1, -1);
  }

  v9 = v0[37];
  v10 = v0[33];
  v11 = v0[34];

  (*(v11 + 8))(v9, v10);
  if (v1 >> 62)
  {
    result = sub_251674918();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    v16 = v0[39];

    v14 = 0;
    goto LABEL_13;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x25307E6F0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(v1 + 32);
  }

  v14 = v13;
  v15 = v0[39];

LABEL_13:
  v18 = v0[36];
  v17 = v0[37];
  v19 = v0[35];

  v20 = v0[1];

  return v20(v14);
}

uint64_t sub_2516576B0()
{
  v32 = v0;
  v1 = v0[40];
  swift_willThrow();
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v2 = v0[40];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  v6 = __swift_project_value_buffer(v5, static Logger.common);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_251674548();
  v9 = sub_251674728();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[39];
  v12 = v0[40];
  v14 = v0[34];
  v13 = v0[35];
  v15 = v0[33];
  if (v10)
  {
    v30 = v0[33];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v29 = v13;
    v19 = v0[24];
    v18 = v0[25];
    v20 = v0[26];
    v21 = sub_2516749A8();
    v23 = sub_25165445C(v21, v22, &v31);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_251650000, v8, v9, "Error reverse geocoding: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x25307EDE0](v17, -1, -1);
    MEMORY[0x25307EDE0](v16, -1, -1);

    (*(v14 + 8))(v29, v30);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v25 = v0[36];
  v24 = v0[37];
  v26 = v0[35];

  v27 = v0[1];

  return v27(0);
}

uint64_t LocationService.getCurrentCity()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_251657994;

  return LocationService.getCurrentPlacemark()();
}

uint64_t sub_251657994(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x2822009F8](sub_251657A94, 0, 0);
}

uint64_t sub_251657A94()
{
  v1 = *(v0 + 24);
  if (v1 && (v2 = [*(v0 + 24) locality], v1, v2))
  {
    v3 = sub_251674608();
    v5 = v4;

    v6 = v5;
    v7 = v3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(v0 + 8);

  return v8(v7, v6);
}

uint64_t sub_251657B48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523C0, &qword_2516762D0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_251657F10();
    **(*(v4 + 64) + 40) = sub_2516746B8();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_251657C28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_251655728;

  return LocationService.getCurrentLocation()();
}

uint64_t sub_251657CB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_251656D48;

  return LocationService.getCurrentPlacemark()();
}

uint64_t sub_251657D40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_251657994;

  return LocationService.getCurrentPlacemark()();
}

uint64_t sub_251657DCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_251657F64;

  return LocationService.getCurrentPlacemark()();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_251657E6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251657EB4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_251657F10()
{
  result = qword_27F4523F8;
  if (!qword_27F4523F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4523F8);
  }

  return result;
}

uint64_t FlowConfigModel.init(deviceState:aceService:aceServiceAsync:sharedContextService:outputPublisher:flowFinder:networkStatusProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 272) = 0;
  *(a8 + 256) = 0u;
  *(a8 + 208) = 0u;
  *(a8 + 224) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 128) = 0u;
  *(a8 + 144) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *a8 = 0u;
  *(a8 + 240) = 0u;
  v15 = a8 + 240;
  *(a8 + 160) = 0u;
  v16 = a8 + 160;
  *(a8 + 80) = 0u;
  v17 = a8 + 80;
  sub_2516580C0(a1, a8, &qword_27F452400, &qword_251675480);
  sub_2516580C0(a2, a8 + 40, &qword_27F452408, &qword_251675488);
  sub_2516580C0(a3, v17, &qword_27F452410, &qword_251675490);
  sub_2516580C0(a4, a8 + 120, &qword_27F452418, &qword_251675498);
  sub_2516580C0(a5, v16, &qword_27F452420, &qword_2516754A0);
  sub_2516580C0(a6, a8 + 200, &qword_27F452428, &qword_2516754A8);
  return sub_2516580C0(a7, v15, &qword_27F452430, &qword_2516754B0);
}

uint64_t sub_2516580C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t FlowConfigModel.getDeviceState()@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1, &v4, &qword_27F452400, &qword_251675480);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452400, &qword_251675480);
  return sub_2516735E8();
}

uint64_t FlowConfigModel.getAceService()@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 40, &v4, &qword_27F452408, &qword_251675488);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452408, &qword_251675488);
  return sub_2516733F8();
}

uint64_t FlowConfigModel.getAceServiceAsync()@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 80, &v4, &qword_27F452410, &qword_251675490);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  result = sub_2516733E8();
  if (v5)
  {
    return sub_251654A84(&v4, &qword_27F452410, &qword_251675490);
  }

  return result;
}

uint64_t FlowConfigModel.getSharedContextService()@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 120, &v4, &qword_27F452418, &qword_251675498);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452418, &qword_251675498);
  return sub_251674488();
}

uint64_t FlowConfigModel.getOutputPublisher()@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 160, &v4, &qword_27F452420, &qword_2516754A0);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452420, &qword_2516754A0);
  return sub_2516735B8();
}

uint64_t FlowConfigModel.getFlowFinder()@<X0>(uint64_t *a1@<X8>)
{
  sub_2516584CC(v1 + 200, &v5, &qword_27F452428, &qword_2516754A8);
  if (v6)
  {
    sub_251654C4C(&v5, v7);
    return sub_251654C4C(v7, a1);
  }

  else
  {
    sub_251654A84(&v5, &qword_27F452428, &qword_2516754A8);
    v4 = type metadata accessor for FlowFinder();
    result = swift_allocObject();
    a1[3] = v4;
    a1[4] = &protocol witness table for FlowFinder;
    *a1 = result;
  }

  return result;
}

uint64_t FlowConfigModel.getNetworkStatusProvider()@<X0>(uint64_t *a1@<X8>)
{
  sub_2516584CC(v1 + 240, &v5, &qword_27F452430, &qword_2516754B0);
  if (v6)
  {
    return sub_251654C4C(&v5, a1);
  }

  v4 = type metadata accessor for NetworkStatusProvider();
  result = swift_allocObject();
  a1[3] = v4;
  a1[4] = &protocol witness table for NetworkStatusProvider;
  *a1 = result;
  return result;
}

uint64_t sub_2516584CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251658534@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1, &v4, &qword_27F452400, &qword_251675480);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452400, &qword_251675480);
  return sub_2516735E8();
}

uint64_t sub_2516585B0@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 40, &v4, &qword_27F452408, &qword_251675488);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452408, &qword_251675488);
  return sub_2516733F8();
}

uint64_t sub_25165862C@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 80, &v4, &qword_27F452410, &qword_251675490);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  result = sub_2516733E8();
  if (v5)
  {
    return sub_251654A84(&v4, &qword_27F452410, &qword_251675490);
  }

  return result;
}

uint64_t sub_2516586B0@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 120, &v4, &qword_27F452418, &qword_251675498);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452418, &qword_251675498);
  return sub_251674488();
}

uint64_t sub_25165872C@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 160, &v4, &qword_27F452420, &qword_2516754A0);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452420, &qword_2516754A0);
  return sub_2516735B8();
}

uint64_t sub_2516587AC@<X0>(uint64_t *a1@<X8>)
{
  sub_2516584CC(v1 + 200, &v5, &qword_27F452428, &qword_2516754A8);
  if (v6)
  {
    sub_251654C4C(&v5, v7);
    return sub_251654C4C(v7, a1);
  }

  else
  {
    sub_251654A84(&v5, &qword_27F452428, &qword_2516754A8);
    v4 = type metadata accessor for FlowFinder();
    result = swift_allocObject();
    a1[3] = v4;
    a1[4] = &protocol witness table for FlowFinder;
    *a1 = result;
  }

  return result;
}

uint64_t sub_251658854@<X0>(uint64_t *a1@<X8>)
{
  sub_2516584CC(v1 + 240, &v5, &qword_27F452430, &qword_2516754B0);
  if (v6)
  {
    return sub_251654C4C(&v5, a1);
  }

  v4 = type metadata accessor for NetworkStatusProvider();
  result = swift_allocObject();
  a1[3] = v4;
  a1[4] = &protocol witness table for NetworkStatusProvider;
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11SiriKitFlow17AceServiceInvoker_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2516588F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 280))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_251658954(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t static UsoEntity_common_WorkoutGoal.builder(definedValue:measurement:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A0, &unk_251675E00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_251673A98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251673EC8();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_251673EB8();
  sub_2516584CC(a1, v7, &qword_27F4523A0, &unk_251675E00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_251654A84(v7, &qword_27F4523A0, &unk_251675E00);
    if (!a2)
    {
      return v16;
    }

    goto LABEL_5;
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_251673EA8();
  (*(v9 + 8))(v12, v8);
  if (a2)
  {
LABEL_5:

    sub_251673E98();
  }

  return v16;
}

uint64_t static UsoEntity_common_WorkoutGoal.with(definedValue:measurement:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A0, &unk_251675E00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  v8 = sub_251673A98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251673EC8();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_251673EB8();
  sub_2516584CC(a1, v7, &qword_27F4523A0, &unk_251675E00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_251654A84(v7, &qword_27F4523A0, &unk_251675E00);
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_251673EA8();
  (*(v9 + 8))(v12, v8);
  if (a2)
  {
LABEL_5:

    sub_251673E98();
  }

LABEL_6:
  MEMORY[0x25307D850](v16);
  sub_251673AA8();
  sub_251673A18();

  return v18[1];
}

uint64_t sub_251658E48(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = a4;
  v32 = a3;
  v34 = a1;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = sub_251673D68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v36 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A0, &unk_251675E00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v31 - v16;
  v18 = sub_251673A98();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_251673EC8();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_251673EB8();
  sub_2516584CC(v34, v17, &qword_27F4523A0, &unk_251675E00);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_251654A84(v17, &qword_27F4523A0, &unk_251675E00);
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    sub_251673EA8();
    (*(v19 + 8))(v22, v18);
  }

  sub_2516584CC(v35, v9, &qword_27F452398, &qword_251675270);
  v27 = (*(v11 + 48))(v9, 1, v10);
  v28 = v36;
  if (v27 == 1)
  {
    sub_251654A84(v9, &qword_27F452398, &qword_251675270);
  }

  else
  {
    (*(v11 + 32))(v36, v9, v10);
    if ((v33 & 1) == 0)
    {
      v29 = v31;
      (*(v11 + 16))(v31, v28, v10);
      (*(v11 + 56))(v29, 0, 1, v10);
      sub_2516666F0(v29, v32, 0);
      sub_251654A84(v29, &qword_27F452398, &qword_251675270);

      sub_251673E98();
    }

    (*(v11 + 8))(v28, v10);
  }

  return v26;
}

uint64_t static UsoEntity_common_MeasurementComponent.builder(unit:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2516741F8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_2516741E8();
  if (a1)
  {

    sub_2516741C8();
  }

  if (a3)
  {

    sub_2516741D8();
  }

  return v8;
}

uint64_t static UsoEntity_common_MeasurementComponent.with(unit:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2516741F8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_2516741E8();
  if (a1)
  {

    sub_2516741C8();
  }

  if (a3)
  {

    sub_2516741D8();
  }

  MEMORY[0x25307D850](v8);
  sub_251674008();
  sub_251673A18();

  return v10;
}

uint64_t sub_2516593C0(uint64_t a1, uint64_t a2, int a3)
{
  v40 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = sub_251673D68();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v38 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - v20;
  v22 = sub_2516741F8();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v39 = sub_2516741E8();
  sub_251659758(a1, v14);
  v25 = *(v16 + 48);
  if (v25(v14, 1, v15) == 1)
  {
    sub_2516597C8(v14);
    v26 = v39;
    if (v40)
    {
      return v26;
    }

    goto LABEL_8;
  }

  v37 = a2;
  v36 = *(v16 + 32);
  v36(v21, v14, v15);
  (*(v16 + 16))(v12, v21, v15);
  (*(v16 + 56))(v12, 0, 1, v15);
  v27 = sub_2516740B8();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_2516740A8();
  sub_251659758(v12, v9);
  if (v25(v9, 1, v15) == 1)
  {
    sub_2516597C8(v12);
    v12 = v9;
  }

  else
  {
    v30 = v38;
    v36(v38, v9, v15);
    sub_251674078();
    (*(v16 + 8))(v30, v15);
  }

  v26 = v39;
  sub_2516597C8(v12);

  sub_2516741C8();

  (*(v16 + 8))(v21, v15);
  if ((v40 & 1) == 0)
  {
LABEL_8:
    v31 = sub_251673C58();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    sub_251673C48();
    sub_251673C28();
    sub_2516741D8();
  }

  return v26;
}

uint64_t sub_251659758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2516597C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static UsoEntity_common_GeographicArea.with(areaType:)(uint64_t a1, uint64_t a2)
{
  _s12SiriOntology31UsoEntity_common_GeographicAreaC18HealthDomainsToolsE7builder8areaTypeAA0cd8Builder_e1_fG0CSSSg_tFZ_0(a1, a2);
  MEMORY[0x25307D850]();
  sub_251673CC8();
  sub_251673A18();

  return v3;
}

uint64_t _s12SiriOntology31UsoEntity_common_GeographicAreaC18HealthDomainsToolsE7builder8areaTypeAA0cd8Builder_e1_fG0CSSSg_tFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_251673848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251674028();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_251674018();
  if (a2)
  {
    v12 = sub_2516739D8();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v15 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v4 + 8))(v7, v3);
    v17[1] = v15;
    sub_251673868();
  }

  return v11;
}

uint64_t static UsoEntity_common_MeasurementUnit.builder(name:type:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_251673D68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2516740B8();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_2516740A8();
  if (a2)
  {
    sub_251674088();
  }

  if (a3)
  {

    sub_251674098();
  }

  sub_251659758(a5, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2516597C8(v11);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_251674078();
    (*(v13 + 8))(v16, v12);
  }

  return v20;
}

uint64_t static UsoEntity_common_MeasurementUnit.with(name:type:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  v12 = sub_251673D68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2516740B8();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_2516740A8();
  if (a2)
  {
    sub_251674088();
  }

  if (a3)
  {

    sub_251674098();
  }

  sub_251659758(a5, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2516597C8(v11);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_251674078();
    (*(v13 + 8))(v16, v12);
  }

  MEMORY[0x25307D850](v20);
  sub_251673D78();
  sub_251673A18();

  return v22[1];
}

uint64_t currentIdiom(deviceState:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_251673468())
  {
    v5 = MEMORY[0x277D61BE8];
  }

  else
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (sub_251673478())
    {
      v5 = MEMORY[0x277D61C18];
    }

    else
    {
      v7 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      if (sub_251673418())
      {
        v5 = MEMORY[0x277D61BF0];
      }

      else
      {
        v8 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        if (sub_251673428())
        {
          v5 = MEMORY[0x277D61BF8];
        }

        else
        {
          v9 = a1[4];
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          if (sub_251673438())
          {
            v5 = MEMORY[0x277D61C08];
          }

          else
          {
            v10 = a1[4];
            __swift_project_boxed_opaque_existential_1(a1, a1[3]);
            if ((sub_251673458() & 1) == 0)
            {
              v18 = a1[4];
              __swift_project_boxed_opaque_existential_1(a1, a1[3]);
              v19 = sub_251673448();
              v14 = sub_2516742B8();
              v13 = *(*(v14 - 8) + 104);
              if (v19)
              {
                v20 = MEMORY[0x277D61C10];
              }

              else
              {
                v20 = MEMORY[0x277D61C28];
              }

              v16 = *v20;
              v15 = a2;
              goto LABEL_14;
            }

            v5 = MEMORY[0x277D61BE0];
          }
        }
      }
    }
  }

  v11 = *v5;
  v12 = sub_2516742B8();
  v13 = *(*(v12 - 8) + 104);
  v14 = v12;
  v15 = a2;
  v16 = v11;
LABEL_14:

  return v13(v15, v16, v14);
}

uint64_t static UsoEntity_common_Duration.builder(durationComponent:)(uint64_t a1)
{
  v2 = sub_251673D08();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_251673CF8();
  if (a1)
  {

    sub_251673CE8();
  }

  return v5;
}

uint64_t static UsoEntity_common_Duration.with(durationComponent:)(uint64_t a1)
{
  v2 = sub_251673D08();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_251673CF8();
  if (a1)
  {

    sub_251673CE8();
  }

  MEMORY[0x25307D850](v5);
  sub_251673998();
  sub_251673A18();

  return v7;
}

uint64_t static UsoEntity_common_TimeUnit.builder(name:type:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452438, &qword_251675628);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_2516739A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251673D58();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_251673D48();
  if (a2)
  {
    sub_251673D28();
  }

  if (a3)
  {

    sub_251673D38();
  }

  sub_25165A354(a5, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25165A3C4(v11);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_251673D18();
    (*(v13 + 8))(v16, v12);
  }

  return v20;
}

uint64_t sub_25165A354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452438, &qword_251675628);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25165A3C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452438, &qword_251675628);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static UsoEntity_common_TimeUnit.with(name:type:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452438, &qword_251675628);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  v12 = sub_2516739A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251673D58();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_251673D48();
  if (a2)
  {
    sub_251673D28();
  }

  if (a3)
  {

    sub_251673D38();
  }

  sub_25165A354(a5, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25165A3C4(v11);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_251673D18();
    (*(v13 + 8))(v16, v12);
  }

  MEMORY[0x25307D850](v20);
  sub_2516739B8();
  sub_251673A18();

  return v22[1];
}

uint64_t sub_25165A674()
{
  sub_25165B68C();
  result = sub_251674778();
  static Log.health = result;
  return result;
}

uint64_t *Log.health.unsafeMutableAddressor()
{
  if (qword_27F451EF0 != -1)
  {
    swift_once();
  }

  return &static Log.health;
}

uint64_t sub_25165A74C()
{
  sub_25165B68C();
  result = sub_251674778();
  static Log.workout = result;
  return result;
}

uint64_t *Log.workout.unsafeMutableAddressor()
{
  if (qword_27F451EF8 != -1)
  {
    swift_once();
  }

  return &static Log.workout;
}

uint64_t sub_25165A828()
{
  sub_25165B68C();
  result = sub_251674778();
  static Log.wellness = result;
  return result;
}

uint64_t *Log.wellness.unsafeMutableAddressor()
{
  if (qword_27F451F00 != -1)
  {
    swift_once();
  }

  return &static Log.wellness;
}

uint64_t sub_25165A904()
{
  sub_25165B68C();
  result = sub_251674778();
  static Log.emergency = result;
  return result;
}

uint64_t *Log.emergency.unsafeMutableAddressor()
{
  if (qword_27F451F08 != -1)
  {
    swift_once();
  }

  return &static Log.emergency;
}

uint64_t sub_25165A9E4()
{
  sub_25165B68C();
  result = sub_251674778();
  static Log.common = result;
  return result;
}

uint64_t *Log.common.unsafeMutableAddressor()
{
  if (qword_27F451F10 != -1)
  {
    swift_once();
  }

  return &static Log.common;
}

id sub_25165AAC8(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t (*static Logger.wellness.modify())()
{
  if (qword_27F451F18 != -1)
  {
    swift_once();
  }

  v0 = sub_251674568();
  __swift_project_value_buffer(v0, static Logger.wellness);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static Logger.health.modify())()
{
  if (qword_27F451F20 != -1)
  {
    swift_once();
  }

  v0 = sub_251674568();
  __swift_project_value_buffer(v0, static Logger.health);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static Logger.emergency.modify())()
{
  if (qword_27F451F28 != -1)
  {
    swift_once();
  }

  v0 = sub_251674568();
  __swift_project_value_buffer(v0, static Logger.emergency);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static Logger.workout.modify())()
{
  if (qword_27F451F30 != -1)
  {
    swift_once();
  }

  v0 = sub_251674568();
  __swift_project_value_buffer(v0, static Logger.workout);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25165B004(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_251674568();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_251674578();
}

uint64_t (*static Logger.common.modify())()
{
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v0 = sub_251674568();
  __swift_project_value_buffer(v0, static Logger.common);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static Logger.cycleTracking.modify())()
{
  if (qword_27F451F40 != -1)
  {
    swift_once();
  }

  v0 = sub_251674568();
  __swift_project_value_buffer(v0, static Logger.cycleTracking);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25165B2B8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_251674568();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_251674558();
}

uint64_t sub_25165B360(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_251674568();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_25165B3D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_251674568();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_25165B4A4(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = sub_251674568();
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  v7 = *(v5 - 8);
  (*(v7 + 24))(v6, a1, v5);
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

uint64_t (*static Logger.sleep.modify())()
{
  if (qword_27F451F48 != -1)
  {
    swift_once();
  }

  v0 = sub_251674568();
  __swift_project_value_buffer(v0, static Logger.sleep);
  swift_beginAccess();
  return j_j__swift_endAccess;
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

unint64_t sub_25165B68C()
{
  result = qword_27F452440;
  if (!qword_27F452440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F452440);
  }

  return result;
}

uint64_t static UsoEntity_common_MeasurementUnitType.builder(definedValue:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452448, &qword_251675658);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_251673F98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2516741B8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_2516741A8();
  sub_25165B878(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25165B8E8(v5);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_251674198();
    (*(v7 + 8))(v10, v6);
  }

  return v14;
}

uint64_t sub_25165B878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452448, &qword_251675658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25165B8E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452448, &qword_251675658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static UsoEntity_common_MeasurementUnitType.with(definedValue:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452448, &qword_251675658);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v16 - v4;
  v6 = sub_251673F98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2516741B8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_2516741A8();
  sub_25165B878(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25165B8E8(v5);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_251674198();
    (*(v7 + 8))(v10, v6);
  }

  MEMORY[0x25307D850](v14);
  sub_251673FA8();
  sub_251673A18();

  return v16[1];
}

uint64_t UsoEntity_common_Number.asDouble.getter()
{
  v1 = v0;
  v2 = sub_251674568();
  v72 = *(v2 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x28223BE20](v2);
  v71 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_251673908();
  v6 = *(v5 - 8);
  v69 = v5;
  v70 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v68 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452450, &qword_251675660);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v64[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452458, &qword_251675668);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v64[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v64[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v64[-v21];
  sub_2516737F8();
  sub_251673948();
  sub_251673A18();

  if (v75)
  {
    v23 = sub_251673938();
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      *&result = v23;
      return result;
    }
  }

  sub_2516737F8();
  sub_251673BB8();
  sub_251673A18();

  if (v75)
  {
    v26 = sub_251673B88();
    if (v27)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = v26;
    }

    v29 = sub_251673B98();
    if (v30)
    {
    }

    else
    {
      v35 = v29;
      v36 = sub_251673BA8();
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        *&result = v28 + v35 / v36;
        return result;
      }
    }

    goto LABEL_35;
  }

  v67 = v2;
  sub_2516737F8();
  sub_251673928();
  sub_251673A18();

  if (v75)
  {
    v32 = sub_251673918();
    if (v33)
    {
      v75 = 0;
      v34 = sub_25165C4AC(v32, v33);

      if (v34)
      {
        return v75;
      }
    }

    else
    {
    }
  }

  sub_2516737F8();
  sub_251673DF8();
  sub_251673A18();

  if (!v75)
  {
    goto LABEL_25;
  }

  if (sub_251673DD8())
  {
    sub_2516737F8();
  }

  sub_251673A18();

  if (!v75)
  {

LABEL_25:
    v45 = v67;
    v46 = v71;
    v47 = v72;
    goto LABEL_30;
  }

  v66 = v75;
  sub_2516738F8();
  v39 = v69;
  v40 = v70;
  (*(v70 + 104))(v20, *MEMORY[0x277D5E880], v69);
  (*(v40 + 56))(v20, 0, 1, v39);
  v41 = *(v9 + 48);
  v42 = v39;
  sub_25165C3E4(v22, v12);
  sub_25165C3E4(v20, &v12[v41]);
  v43 = *(v40 + 48);
  if (v43(v12, 1, v42) == 1)
  {
    sub_251654A84(v20, &qword_27F452458, &qword_251675668);
    sub_251654A84(v22, &qword_27F452458, &qword_251675668);
    v44 = v43(&v12[v41], 1, v42);
    v45 = v67;
    if (v44 == 1)
    {
      sub_251654A84(v12, &qword_27F452458, &qword_251675668);
      v46 = v71;
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  sub_25165C3E4(v12, v17);
  if (v43(&v12[v41], 1, v42) == 1)
  {
    sub_251654A84(v20, &qword_27F452458, &qword_251675668);
    sub_251654A84(v22, &qword_27F452458, &qword_251675668);
    (*(v70 + 8))(v17, v42);
    v45 = v67;
LABEL_28:
    sub_251654A84(v12, &qword_27F452450, &qword_251675660);
    v46 = v71;
LABEL_29:

    v47 = v72;
    goto LABEL_30;
  }

  v56 = v70;
  v57 = &v12[v41];
  v58 = v68;
  (*(v70 + 32))(v68, v57, v42);
  sub_25165C454();
  v65 = sub_2516745E8();
  v59 = *(v56 + 8);
  v59(v58, v42);
  sub_251654A84(v20, &qword_27F452458, &qword_251675668);
  sub_251654A84(v22, &qword_27F452458, &qword_251675668);
  v59(v17, v42);
  sub_251654A84(v12, &qword_27F452458, &qword_251675668);
  v45 = v67;
  v46 = v71;
  if ((v65 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_37:
  v60 = sub_251673DE8();
  v47 = v72;
  if (!v60)
  {

    goto LABEL_30;
  }

  v61 = COERCE_DOUBLE(UsoEntity_common_Number.asDouble.getter());
  v63 = v62;

  if (v63)
  {
LABEL_30:
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v45, static Logger.common);
    swift_beginAccess();
    (*(v47 + 16))(v46, v48, v45);

    v49 = sub_251674548();
    v50 = sub_251674728();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v73 = v1;
      v74 = v52;
      *v51 = 136315138;
      sub_2516738D8();

      v53 = sub_251674618();
      v55 = sub_25165445C(v53, v54, &v74);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_251650000, v49, v50, "UsoEntityCommonNumber#asDouble got unexpected number entityType %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x25307EDE0](v52, -1, -1);
      MEMORY[0x25307EDE0](v51, -1, -1);
    }

    (*(v47 + 8))(v46, v45);
LABEL_35:
    *&result = 0.0;
    return result;
  }

  *&result = v61 / 100.0;
  return result;
}

uint64_t sub_25165C3E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452458, &qword_251675668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25165C454()
{
  result = qword_27F452460;
  if (!qword_27F452460)
  {
    sub_251673908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452460);
  }

  return result;
}

BOOL sub_25165C4AC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_251674808();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_25165C5A4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t static UsoEntity_common_WorkoutClass.builder(name:duration:equipment:instructor:episodeNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = sub_251673F88();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_251673F78();
  if (a2)
  {
    sub_251673F68();
  }

  if (a3)
  {

    sub_251673F28();
  }

  if (a5)
  {

    sub_251673F38();
  }

  if (a7)
  {

    sub_251673F48();
  }

  if (a9)
  {

    sub_251673F58();
  }

  return v16;
}

uint64_t static UsoEntity_common_WorkoutClass.with(name:duration:equipment:instructor:episodeNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = sub_251673F88();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_251673F78();
  if (a2)
  {
    sub_251673F68();
  }

  if (a3)
  {

    sub_251673F28();
  }

  if (a5)
  {

    sub_251673F38();
  }

  if (a7)
  {

    sub_251673F48();
  }

  if (a9)
  {

    sub_251673F58();
  }

  MEMORY[0x25307D850](v16);
  sub_251673AD8();
  sub_251673A18();

  return v18;
}

Swift::String __swiftcall String.firstLetterCapitalized()()
{
  v2 = sub_25165C8E8(v0, v1, MEMORY[0x277D83DF0]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall String.firstLetterLowerCase()()
{
  v2 = sub_25165C8E8(v0, v1, MEMORY[0x277D83DE0]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_25165C8E8(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{

  v7 = sub_25165CA70(1, a1, a2, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = a3(v7, v9, v11, v13);

  sub_25165CB0C(1uLL, a1, a2, v15);

  sub_25165CBBC();
  sub_251674658();

  return v14;
}

uint64_t String.toDialogPhoneNumber.getter()
{
  v0 = sub_251674338();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_251674328();
  sub_251674318();

  v3 = sub_251674308();

  return v3;
}

uint64_t sub_25165CA70(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_251674648();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_25165CB0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = sub_251674648();
  if (a2)
  {
    a1 = v8;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_25165CBBC()
{
  result = qword_27F452468;
  if (!qword_27F452468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452468);
  }

  return result;
}

unint64_t TaskLoggerNames.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000015;
  v2 = 0xD000000000000019;
  v3 = 0xD00000000000001BLL;
  if (a1 != 4)
  {
    v3 = 0xD00000000000001ELL;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (!a1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25165CCCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = "HealthDomainsTools";
  v4 = a1;
  v5 = 0xD00000000000001BLL;
  if (a1 == 4)
  {
    v6 = "com.apple.siri.health.log";
  }

  else
  {
    v5 = 0xD00000000000001ELL;
    v6 = "com.apple.siri.health.query";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000019;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "com.apple.siri.health";
  }

  v8 = 0xD00000000000001DLL;
  if (v4 == 1)
  {
    v9 = "com.apple.siri.health.scribe";
  }

  else
  {
    v8 = 0xD000000000000015;
    v9 = "com.apple.siri.health.fitness";
  }

  if (!v4)
  {
    v8 = 0xD00000000000001CLL;
    v9 = "HealthDomainsTools";
  }

  if (v4 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v8 = v7;
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000019;
      v3 = "com.apple.siri.health";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000001BLL;
      v3 = "com.apple.siri.health.log";
    }

    else
    {
      v2 = 0xD00000000000001ELL;
      v3 = "com.apple.siri.health.query";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001DLL;
      v3 = "com.apple.siri.health.scribe";
    }

    else
    {
      v3 = "com.apple.siri.health.fitness";
    }
  }

  else
  {
    v2 = 0xD00000000000001CLL;
  }

  if (v8 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_251674978();
  }

  return v11 & 1;
}

uint64_t sub_25165CE48()
{
  sub_2516749F8();
  sub_251674638();

  return sub_251674A18();
}

uint64_t sub_25165CF3C()
{
  *v0;
  *v0;
  *v0;
  sub_251674638();
}

uint64_t sub_25165D020()
{
  sub_2516749F8();
  sub_251674638();

  return sub_251674A18();
}

uint64_t sub_25165D110@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18HealthDomainsTools15TaskLoggerNamesO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_25165D140@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = *v1;
  v4 = "HealthDomainsTools";
  v5 = "com.apple.siri.health";
  v6 = 0xD000000000000019;
  v7 = "com.apple.siri.health.log";
  v8 = 0xD00000000000001BLL;
  result = 0xD00000000000001ELL;
  if (v3 != 4)
  {
    v8 = 0xD00000000000001ELL;
    v7 = "com.apple.siri.health.query";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = "com.apple.siri.health.scribe";
  if (v3 == 1)
  {
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v10 = "com.apple.siri.health.fitness";
  }

  if (*v1)
  {
    v4 = v10;
  }

  else
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
  return result;
}

uint64_t FederatedTaskKind.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 6778732;
  }

  return 0x7972657571;
}

uint64_t sub_25165D240(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 6778732;
  if (v2 != 1)
  {
    v4 = 0x7972657571;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 6778732;
  if (*a2 != 1)
  {
    v8 = 0x7972657571;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_251674978();
  }

  return v11 & 1;
}

uint64_t sub_25165D32C()
{
  v1 = *v0;
  sub_2516749F8();
  sub_251674638();

  return sub_251674A18();
}

uint64_t sub_25165D3C4()
{
  *v0;
  *v0;
  sub_251674638();
}

uint64_t sub_25165D448()
{
  v1 = *v0;
  sub_2516749F8();
  sub_251674638();

  return sub_251674A18();
}

uint64_t sub_25165D4DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18HealthDomainsTools17FederatedTaskKindO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_25165D50C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 6778732;
  if (v2 != 1)
  {
    v5 = 0x7972657571;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FlowTaskLogger.task(_:)(int a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = a2;
  v4 = "com.apple.siri.health";
  v5 = 0xD000000000000019;
  v6 = "com.apple.siri.health.log";
  v7 = 0xD00000000000001BLL;
  if (a2 != 4)
  {
    v7 = 0xD00000000000001ELL;
    v6 = "com.apple.siri.health.query";
  }

  if (a2 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "com.apple.siri.health.scribe";
  if (a2 == 1)
  {
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v8 = "com.apple.siri.health.fitness";
  }

  if (a2)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD00000000000001CLL;
    v9 = "HealthDomainsTools";
  }

  if (a2 <= 2u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v5;
  }

  if (v3 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  sub_25165E454(a1, v10, v11 | 0x8000000000000000, 0x100000000);
}

Swift::Void __swiftcall FlowTaskLogger.taskNeedsAuthorization()()
{
  v1 = 0xD000000000000015;
  v2 = "com.apple.siri.health";
  v3 = 0xD000000000000019;
  v4 = "com.apple.siri.health.log";
  v5 = 0xD00000000000001BLL;
  if (v0 != 4)
  {
    v5 = 0xD00000000000001ELL;
    v4 = "com.apple.siri.health.query";
  }

  if (v0 != 3)
  {
    v3 = v5;
    v2 = v4;
  }

  v6 = "com.apple.siri.health.scribe";
  if (v0 == 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  else
  {
    v6 = "com.apple.siri.health.fitness";
  }

  if (v0)
  {
    v7 = v6;
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    v7 = "HealthDomainsTools";
  }

  if (v0 <= 2u)
  {
    v8 = v1;
  }

  else
  {
    v8 = v3;
  }

  if (v0 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  sub_25165E454(7, v8, v9 | 0x8000000000000000, 3);
}

uint64_t FlowTaskLogger.task(reason:)(uint64_t result, unsigned __int8 a2)
{
  if (result > 20)
  {
    if (result == 36)
    {
      v33 = 0xD000000000000015;
      v34 = a2;
      v35 = "com.apple.siri.health";
      v36 = 0xD000000000000019;
      v37 = "com.apple.siri.health.log";
      v38 = 0xD00000000000001BLL;
      if (a2 != 4)
      {
        v38 = 0xD00000000000001ELL;
        v37 = "com.apple.siri.health.query";
      }

      if (a2 != 3)
      {
        v36 = v38;
        v35 = v37;
      }

      v39 = "com.apple.siri.health.scribe";
      if (a2 == 1)
      {
        v33 = 0xD00000000000001DLL;
      }

      else
      {
        v39 = "com.apple.siri.health.fitness";
      }

      if (a2)
      {
        v40 = v39;
      }

      else
      {
        v33 = 0xD00000000000001CLL;
        v40 = "HealthDomainsTools";
      }

      if (a2 <= 2u)
      {
        v10 = v33;
      }

      else
      {
        v10 = v36;
      }

      if (v34 <= 2)
      {
        v41 = v40;
      }

      else
      {
        v41 = v35;
      }

      v12 = v41 | 0x8000000000000000;
      v13 = 36;
      v14 = 26;
    }

    else
    {
      if (result != 21)
      {
        return result;
      }

      v15 = 0xD000000000000015;
      v16 = a2;
      v17 = "com.apple.siri.health";
      v18 = 0xD000000000000019;
      v19 = "com.apple.siri.health.log";
      v20 = 0xD00000000000001BLL;
      if (a2 != 4)
      {
        v20 = 0xD00000000000001ELL;
        v19 = "com.apple.siri.health.query";
      }

      if (a2 != 3)
      {
        v18 = v20;
        v17 = v19;
      }

      v21 = "com.apple.siri.health.scribe";
      if (a2 == 1)
      {
        v15 = 0xD00000000000001DLL;
      }

      else
      {
        v21 = "com.apple.siri.health.fitness";
      }

      if (a2)
      {
        v22 = v21;
      }

      else
      {
        v15 = 0xD00000000000001CLL;
        v22 = "HealthDomainsTools";
      }

      if (a2 <= 2u)
      {
        v10 = v15;
      }

      else
      {
        v10 = v18;
      }

      if (v16 <= 2)
      {
        v23 = v22;
      }

      else
      {
        v23 = v17;
      }

      v12 = v23 | 0x8000000000000000;
      v13 = 21;
      v14 = 4;
    }
  }

  else if (result == 1)
  {
    v24 = 0xD000000000000015;
    v25 = a2;
    v26 = "com.apple.siri.health";
    v27 = 0xD000000000000019;
    v28 = "com.apple.siri.health.log";
    v29 = 0xD00000000000001BLL;
    if (a2 != 4)
    {
      v29 = 0xD00000000000001ELL;
      v28 = "com.apple.siri.health.query";
    }

    if (a2 != 3)
    {
      v27 = v29;
      v26 = v28;
    }

    v30 = "com.apple.siri.health.scribe";
    if (a2 == 1)
    {
      v24 = 0xD00000000000001DLL;
    }

    else
    {
      v30 = "com.apple.siri.health.fitness";
    }

    if (a2)
    {
      v31 = v30;
    }

    else
    {
      v24 = 0xD00000000000001CLL;
      v31 = "HealthDomainsTools";
    }

    if (a2 <= 2u)
    {
      v10 = v24;
    }

    else
    {
      v10 = v27;
    }

    if (v25 <= 2)
    {
      v32 = v31;
    }

    else
    {
      v32 = v26;
    }

    v12 = v32 | 0x8000000000000000;
    v13 = 1;
    v14 = 2;
  }

  else
  {
    if (result != 3)
    {
      return result;
    }

    v2 = 0xD000000000000015;
    v3 = a2;
    v4 = "com.apple.siri.health";
    v5 = 0xD000000000000019;
    v6 = "com.apple.siri.health.log";
    v7 = 0xD00000000000001BLL;
    if (a2 != 4)
    {
      v7 = 0xD00000000000001ELL;
      v6 = "com.apple.siri.health.query";
    }

    if (a2 != 3)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "com.apple.siri.health.scribe";
    if (a2 == 1)
    {
      v2 = 0xD00000000000001DLL;
    }

    else
    {
      v8 = "com.apple.siri.health.fitness";
    }

    if (a2)
    {
      v9 = v8;
    }

    else
    {
      v2 = 0xD00000000000001CLL;
      v9 = "HealthDomainsTools";
    }

    if (a2 <= 2u)
    {
      v10 = v2;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 2)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }

    v12 = v11 | 0x8000000000000000;
    v13 = 3;
    v14 = 7;
  }

  sub_25165E454(v14, v10, v12, v13);
}

Swift::Void __swiftcall FlowTaskLogger.genericError()()
{
  v1 = 0xD000000000000015;
  v2 = "com.apple.siri.health";
  v3 = 0xD000000000000019;
  v4 = "com.apple.siri.health.log";
  v5 = 0xD00000000000001BLL;
  if (v0 != 4)
  {
    v5 = 0xD00000000000001ELL;
    v4 = "com.apple.siri.health.query";
  }

  if (v0 != 3)
  {
    v3 = v5;
    v2 = v4;
  }

  v6 = "com.apple.siri.health.scribe";
  if (v0 == 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  else
  {
    v6 = "com.apple.siri.health.fitness";
  }

  if (v0)
  {
    v7 = v6;
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    v7 = "HealthDomainsTools";
  }

  if (v0 <= 2u)
  {
    v8 = v1;
  }

  else
  {
    v8 = v3;
  }

  if (v0 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  sub_25165E454(4, v8, v9 | 0x8000000000000000, 21);
}

Swift::Void __swiftcall FlowTaskLogger.success()()
{
  v1 = 0xD000000000000015;
  v2 = "com.apple.siri.health";
  v3 = 0xD000000000000019;
  v4 = "com.apple.siri.health.log";
  v5 = 0xD00000000000001BLL;
  if (v0 != 4)
  {
    v5 = 0xD00000000000001ELL;
    v4 = "com.apple.siri.health.query";
  }

  if (v0 != 3)
  {
    v3 = v5;
    v2 = v4;
  }

  v6 = "com.apple.siri.health.scribe";
  if (v0 == 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  else
  {
    v6 = "com.apple.siri.health.fitness";
  }

  if (v0)
  {
    v7 = v6;
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    v7 = "HealthDomainsTools";
  }

  if (v0 <= 2u)
  {
    v8 = v1;
  }

  else
  {
    v8 = v3;
  }

  if (v0 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  sub_25165E454(2, v8, v9 | 0x8000000000000000, 1);
}

Swift::Void __swiftcall FlowTaskLogger.unsupported()()
{
  v1 = 0xD000000000000015;
  v2 = "com.apple.siri.health";
  v3 = 0xD000000000000019;
  v4 = "com.apple.siri.health.log";
  v5 = 0xD00000000000001BLL;
  if (v0 != 4)
  {
    v5 = 0xD00000000000001ELL;
    v4 = "com.apple.siri.health.query";
  }

  if (v0 != 3)
  {
    v3 = v5;
    v2 = v4;
  }

  v6 = "com.apple.siri.health.scribe";
  if (v0 == 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  else
  {
    v6 = "com.apple.siri.health.fitness";
  }

  if (v0)
  {
    v7 = v6;
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    v7 = "HealthDomainsTools";
  }

  if (v0 <= 2u)
  {
    v8 = v1;
  }

  else
  {
    v8 = v3;
  }

  if (v0 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  sub_25165E454(26, v8, v9 | 0x8000000000000000, 36);
}

uint64_t sub_25165DDEC(unsigned __int8 a1, int a2)
{
  v3 = 0xD000000000000015;
  v4 = "com.apple.siri.health";
  v5 = 0xD000000000000019;
  v6 = "com.apple.siri.health.log";
  v7 = 0xD00000000000001BLL;
  if (a1 != 4)
  {
    v7 = 0xD00000000000001ELL;
    v6 = "com.apple.siri.health.query";
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "com.apple.siri.health.scribe";
  if (a1 == 1)
  {
    v3 = 0xD00000000000001DLL;
  }

  else
  {
    v8 = "com.apple.siri.health.fitness";
  }

  if (a1)
  {
    v9 = v8;
  }

  else
  {
    v3 = 0xD00000000000001CLL;
    v9 = "HealthDomainsTools";
  }

  if (a1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  sub_25165E454(a2, v10, v11 | 0x8000000000000000, 0x100000000);
}

uint64_t FlowTaskLogger.task(_:name:)(int a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = a2;
  v4 = "com.apple.siri.health";
  v5 = 0xD000000000000019;
  v6 = "com.apple.siri.health.log";
  v7 = 0xD00000000000001BLL;
  if (a2 != 4)
  {
    v7 = 0xD00000000000001ELL;
    v6 = "com.apple.siri.health.query";
  }

  if (a2 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "com.apple.siri.health.scribe";
  if (a2 == 1)
  {
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v8 = "com.apple.siri.health.fitness";
  }

  if (a2)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD00000000000001CLL;
    v9 = "HealthDomainsTools";
  }

  if (a2 <= 2u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v5;
  }

  if (v3 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  sub_25165E454(a1, v10, v11 | 0x8000000000000000, 0x100000000);
}

uint64_t _s18HealthDomainsTools15TaskLoggerNamesO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_251674938();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t _s18HealthDomainsTools17FederatedTaskKindO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_251674938();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25165E454(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v7 = sub_251674568();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F451F18 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, static Logger.wellness);
  swift_beginAccess();
  (*(v8 + 16))(v11, v12, v7);

  v13 = sub_251674548();
  v14 = sub_251674718();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = a4;
    v16 = v15;
    v26 = swift_slowAlloc();
    v30 = v26;
    *v16 = 136315394;
    v17 = sub_251674748();
    v19 = sub_25165445C(v17, v18, &v30);
    v27 = a1;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v31[0] = v29;
    v31[1] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A8, &qword_251675890);
    v21 = sub_251674788();
    v23 = sub_25165445C(v21, v22, &v30);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_251650000, v13, v14, "logging STC: %s in %s", v16, 0x16u);
    v24 = v26;
    swift_arrayDestroy();
    MEMORY[0x25307EDE0](v24, -1, -1);
    MEMORY[0x25307EDE0](v16, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  sub_2516733D8();

  sub_2516733C8();
  sub_251673388();
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_251673398();

  return __swift_destroy_boxed_opaque_existential_0(v31);
}

unint64_t sub_25165E7CC()
{
  result = qword_27F452470;
  if (!qword_27F452470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452470);
  }

  return result;
}

unint64_t sub_25165E824()
{
  result = qword_27F452478;
  if (!qword_27F452478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452478);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FederatedTaskKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FederatedTaskKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25165E9FC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25165EA90(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static UsoEntity_common_ListPosition.builder(definedValue:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_251673AC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251673F18();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_251673F08();
  sub_251654A14(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25165ECFC(v5);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_251673EF8();
    (*(v7 + 8))(v10, v6);
  }

  return v14;
}

uint64_t sub_25165ECFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Bool __swiftcall NetworkStatusProvider.isNetworkingDisabled()()
{
  if ((_s18HealthDomainsTools21NetworkStatusProviderC9isOfflineSbyF_0() & 1) == 0)
  {
    return 0;
  }

  sub_2516742A8();
  sub_251674298();
  sub_251674288();

  v0 = sub_2516742C8();

  return v0 & 1;
}

uint64_t sub_25165EDEC()
{
  if ((_s18HealthDomainsTools21NetworkStatusProviderC9isOfflineSbyF_0() & 1) == 0)
  {
    return 0;
  }

  sub_2516742A8();
  sub_251674298();
  sub_251674288();

  v0 = sub_2516742C8();

  return v0 & 1;
}

uint64_t NetworkErrors.hashValue.getter()
{
  sub_2516749F8();
  MEMORY[0x25307E8D0](0);
  return sub_251674A18();
}

uint64_t sub_25165EEC8()
{
  sub_2516749F8();
  MEMORY[0x25307E8D0](0);
  return sub_251674A18();
}

uint64_t sub_25165EF34()
{
  sub_2516749F8();
  MEMORY[0x25307E8D0](0);
  return sub_251674A18();
}

uint64_t _s18HealthDomainsTools21NetworkStatusProviderC9isOfflineSbyF_0()
{
  v0 = sub_251674568();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2516742E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  sub_2516742A8();
  sub_251674298();
  sub_251674288();

  sub_2516742F8();

  (*(v6 + 104))(v10, *MEMORY[0x277D61DD0], v5);
  v13 = sub_2516742D8();
  v14 = *(v6 + 8);
  v14(v10, v5);
  v14(v12, v5);
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v0, static Logger.common);
  swift_beginAccess();
  (*(v1 + 16))(v4, v15, v0);
  v16 = sub_251674548();
  v17 = sub_251674718();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v13 & 1;
    _os_log_impl(&dword_251650000, v16, v17, "NetworkStatusProvider isOffline=%{BOOL}d", v18, 8u);
    MEMORY[0x25307EDE0](v18, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v13 & 1;
}

unint64_t sub_25165F288()
{
  result = qword_27F452480;
  if (!qword_27F452480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452480);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkErrors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NetworkErrors(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_25165F3E8(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2516748A8();
    v5 = v4;
    v6 = sub_2516748F8();
    v8 = v7;
    v9 = MEMORY[0x25307E790](v3, v5, v6, v7);
    sub_2516605BC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_2516605BC(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_2516747B8();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_2516605C8(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_2516605BC(v3, v5, v2 != 0);
  return v13;
}

uint64_t findRemoteDevice(with:deviceResolutionService:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2516742B8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25165F5C4, 0, 0);
}

uint64_t sub_25165F5C4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D61C08] || v4 == *MEMORY[0x277D61C10])
  {
    v6 = v0[3];
    v7 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v9 = *(MEMORY[0x277D61F18] + 4);
    v10 = swift_task_alloc();
    v0[7] = v10;
    *v10 = v0;
    v10[1] = sub_25165F848;

    return MEMORY[0x2821C8A50](v7, v8);
  }

  else if (v4 == *MEMORY[0x277D61BE0])
  {
    v11 = v0[3];
    sub_251674538();
    v12 = sub_251674528();
    v0[8] = v12;
    v13 = v11[3];
    v14 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
    v15 = swift_allocObject();
    v0[9] = v15;
    *(v15 + 16) = xmmword_251675370;
    *(v15 + 32) = v12;
    v16 = *(MEMORY[0x277D61F20] + 4);
    v17 = v12;
    v18 = swift_task_alloc();
    v0[10] = v18;
    *v18 = v0;
    v18[1] = sub_25165F968;

    return MEMORY[0x2821C8A68](v15, v13, v14);
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);
    v19 = v0[6];

    v20 = v0[1];

    return v20(0);
  }
}

uint64_t sub_25165F848(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;

  if (v1)
  {

    a1 = 0;
  }

  v7 = *(v4 + 48);

  v8 = *(v6 + 8);

  return v8(a1);
}

uint64_t sub_25165F968(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 80);
  v7 = *v2;

  v8 = *(v4 + 72);
  if (v1)
  {

    v9 = sub_25165FB48;
  }

  else
  {

    *(v5 + 88) = a1;
    v9 = sub_25165FABC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25165FABC()
{
  v1 = v0[8];
  v2 = sub_25165F3E8(v0[11]);

  v3 = v0[6];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_25165FB48()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t isRemoteDeviceReachable(remoteDevice:aceService:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_251674568();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25165FC98, 0, 0);
}

uint64_t sub_25165FC98()
{
  if (qword_27F451F30 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  v4 = __swift_project_value_buffer(v2, static Logger.workout);
  v0[13] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[14] = v5;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_251674548();
  v7 = sub_251674718();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_251650000, v6, v7, "Checking to see if remote device is reachable", v8, 2u);
    MEMORY[0x25307EDE0](v8, -1, -1);
  }

  v9 = v0[12];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[5];

  v13 = *(v11 + 8);
  v0[16] = v13;
  v13(v9, v10);
  v14 = sub_2516744E8();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v19 = v0[5];
    v18 = v0[6];
    v21 = v18[3];
    v20 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v21);
    v22 = [objc_allocWithZone(MEMORY[0x277D47678]) init];
    v0[17] = v22;
    v23 = sub_2516744E8();
    v25 = v24;
    v0[18] = v24;
    v26 = *(MEMORY[0x277D5BFA8] + 4);
    v27 = swift_task_alloc();
    v0[19] = v27;
    v28 = sub_251655B9C();
    *v27 = v0;
    v27[1] = sub_25165FFFC;

    return MEMORY[0x2821BB680](v22, v23, v25, v21, v28, v20);
  }

  else
  {
    v5(v0[10], v4, v0[7]);
    v29 = sub_251674548();
    v30 = sub_251674728();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_251650000, v29, v30, "The assistantId for remote device was an empty string. Marking the device as unreachable", v31, 2u);
      MEMORY[0x25307EDE0](v31, -1, -1);
    }

    v32 = v0[11];
    v33 = v0[12];
    v34 = v0[9];
    v35 = v0[8] + 8;
    (v0[16])(v0[10], v0[7]);

    v36 = v0[1];

    return v36(0);
  }
}

uint64_t sub_25165FFFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v9 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v5 = sub_2516602B4;
  }

  else
  {
    v7 = v3[17];
    v6 = v3[18];

    v5 = sub_25166011C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25166011C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  (*(v0 + 112))(*(v0 + 88), *(v0 + 104), *(v0 + 56));
  v3 = v1;
  v4 = sub_251674548();
  v5 = sub_251674718();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 160);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_251650000, v4, v5, "Pinged remote device and got response: %@", v8, 0xCu);
    sub_251660554(v9);
    MEMORY[0x25307EDE0](v9, -1, -1);
    MEMORY[0x25307EDE0](v8, -1, -1);
    v11 = *(v0 + 160);
  }

  else
  {
    v11 = v4;
    v4 = *(v0 + 160);
  }

  v12 = *(v0 + 96);
  v14 = *(v0 + 72);
  v13 = *(v0 + 80);
  v15 = *(v0 + 64) + 8;
  (*(v0 + 128))(*(v0 + 88), *(v0 + 56));

  v16 = *(v0 + 8);

  return v16(1);
}

uint64_t sub_2516602B4()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);

  v5(v7, v6, v8);
  v9 = v1;
  v10 = sub_251674548();
  v11 = sub_251674728();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 168);
  if (v12)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_251650000, v10, v11, "Unable to ping the remote device. Error: %@", v14, 0xCu);
    sub_251660554(v15);
    MEMORY[0x25307EDE0](v15, -1, -1);
    MEMORY[0x25307EDE0](v14, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 88);
  v19 = *(v0 + 96);
  v20 = *(v0 + 80);
  v21 = *(v0 + 64) + 8;
  (*(v0 + 128))(*(v0 + 72), *(v0 + 56));

  v22 = *(v0 + 8);

  return v22(0);
}

uint64_t sub_251660480(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_2516604E0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_251660554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452488, &qword_251675FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2516605BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_2516605C8(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_2516748B8();
      sub_2516744F8();
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_2516748D8() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_2516748E8();
  sub_2516744F8();
  swift_dynamicCast();
  v5 = sub_25166B60C(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 48) + 8 * a1);

  v9 = v8;
}

uint64_t static UsoEntity_common_Integer.builder(name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_251673C58();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_251673C48();
  if (a2)
  {
    sub_251673C38();
  }

  if ((a4 & 1) == 0)
  {
    sub_251673C28();
  }

  return v9;
}

uint64_t static UsoEntity_common_Number.with(name:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s12SiriOntology23UsoEntity_common_NumberC18HealthDomainsToolsE7builder4name12definedValueAA0cd8Builder_e1_F0CSSSg_AC13DefinedValuesOSgtFZ_0(a1, a2, a3);
  MEMORY[0x25307D850]();
  sub_2516738D8();
  sub_251673A18();

  return v4;
}

uint64_t static UsoEntity_common_Integer.with(name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_251673C58();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_251673C48();
  if (a2)
  {
    sub_251673C38();
  }

  if ((a4 & 1) == 0)
  {
    sub_251673C28();
  }

  MEMORY[0x25307D850](v9);
  sub_251673948();
  sub_251673A18();

  return v11;
}

uint64_t static UsoEntity_common_Decimal.with(name:canonicalString:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s12SiriOntology24UsoEntity_common_DecimalC18HealthDomainsToolsE7builder4name15canonicalString12definedValueAA0cd8Builder_e1_F0CSSSg_AkC13DefinedValuesOSgtFZ_0(a1, a2, a3, a4, a5);
  MEMORY[0x25307D850]();
  sub_251673928();
  sub_251673A18();

  return v6;
}

uint64_t _s12SiriOntology23UsoEntity_common_NumberC18HealthDomainsToolsE7builder4name12definedValueAA0cd8Builder_e1_F0CSSSg_AC13DefinedValuesOSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452490, qword_2516759F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_2516738C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251673B78();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_251673B68();
  if (a2)
  {
    sub_251673B58();
  }

  sub_2516584CC(a3, v8, &qword_27F452490, qword_2516759F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_251654A84(v8, &qword_27F452490, qword_2516759F0);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_251673B48();
    (*(v10 + 8))(v13, v9);
  }

  return v17;
}

uint64_t _s12SiriOntology24UsoEntity_common_DecimalC18HealthDomainsToolsE7builder4name15canonicalString12definedValueAA0cd8Builder_e1_F0CSSSg_AkC13DefinedValuesOSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452458, &qword_251675668);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_251673908();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251673C18();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_251673C08();
  if (a2)
  {
    sub_251673BF8();
  }

  if (a4)
  {
    sub_251673BE8();
  }

  sub_2516584CC(a5, v11, &qword_27F452458, &qword_251675668);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_251654A84(v11, &qword_27F452458, &qword_251675668);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_251673BD8();
    (*(v13 + 8))(v16, v12);
  }

  return v20;
}

void __swiftcall DirectInvocationButton.init(label:payloadIdentifier:payloadUserData:)(HealthDomainsTools::DirectInvocationButton *__return_ptr retstr, Swift::String label, Swift::String payloadIdentifier, Swift::OpaquePointer payloadUserData)
{
  retstr->label = label;
  retstr->payloadIdentifier = payloadIdentifier;
  retstr->payloadUserData = payloadUserData;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251660D3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_251660D84(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t isFitnessPlusSubscriber()()
{
  v1 = sub_251674258();
  v0[7] = v1;
  v2 = *(v1 - 8);
  v0[8] = v2;
  v3 = *(v2 + 64) + 15;
  v0[9] = swift_task_alloc();
  v4 = sub_2516732E8();
  v0[10] = v4;
  v5 = *(v4 - 8);
  v0[11] = v5;
  v6 = *(v5 + 64) + 15;
  v0[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251660EF4, 0, 0);
}

uint64_t sub_251660EF4()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_2516732D8();
  sub_251674228();
  sub_251661298();
  sub_251674738();
  (*(v3 + 104))(v2, *MEMORY[0x277D4F368], v4);
  v5 = sub_251674248();
  v6 = MEMORY[0x277D4F358];
  v0[5] = v5;
  v0[6] = v6;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_251674238();
  v7 = sub_251674278();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_251674268();
  sub_251674738();
  v10 = sub_251674218();
  v0[13] = v10;
  v11 = swift_task_alloc();
  v0[14] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v1;
  v12 = *(MEMORY[0x277D859E0] + 4);
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_2516610D8;
  v14 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000019, 0x8000000251676D60, sub_25166173C, v11, v14);
}

uint64_t sub_2516610D8()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2516611F0, 0, 0);
}

uint64_t sub_2516611F0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);

  v6 = *(v0 + 128);
  (*(v4 + 8))(v2, v3);

  v7 = *(v0 + 8);

  return v7(v6);
}

unint64_t sub_251661298()
{
  result = qword_27F452498;
  if (!qword_27F452498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F452498);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_251661348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524A0, &qword_251675AB0);
  v5 = *(v4 - 8);
  v33 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524A8, &qword_251675AB8);
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = sub_251674568();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F451F30 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, static Logger.workout);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_251674548();
  v18 = sub_251674718();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = v10;
    v20 = a1;
    v21 = v4;
    v22 = v7;
    v23 = v19;
    *v19 = 0;
    _os_log_impl(&dword_251650000, v17, v18, "Fetching Fitness+ subscription status", v19, 2u);
    v24 = v23;
    v7 = v22;
    v4 = v21;
    a1 = v20;
    v10 = v32;
    MEMORY[0x25307EDE0](v24, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  sub_251674208();
  v25 = v36;
  (*(v5 + 16))(v36, a1, v4);
  v26 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v27 = swift_allocObject();
  (*(v5 + 32))(v27 + v26, v25, v4);
  v28 = sub_2516732F8();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_251661C30;
  *(v29 + 24) = v27;

  v28(sub_251661CEC, v29);

  return (*(v37 + 8))(v10, v7);
}

void sub_251661744(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_251674568();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251673238();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2516732C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524B0, &qword_251675AC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v32 - v18);
  sub_251661D1C(a1, &v32 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_27F451F30 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v3, static Logger.workout);
    swift_beginAccess();
    v23 = v33;
    v22 = v34;
    (*(v34 + 16))(v33, v21, v3);
    v24 = v20;
    v25 = sub_251674548();
    v26 = sub_251674728();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v20;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_251650000, v25, v26, "Error fetching Fitness+ subscription: %@", v27, 0xCu);
      sub_251660554(v28);
      MEMORY[0x25307EDE0](v28, -1, -1);
      MEMORY[0x25307EDE0](v27, -1, -1);
    }

    (*(v22 + 8))(v23, v3);
    v36 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524A0, &qword_251675AB0);
    sub_251674708();
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    sub_251673228();
    v31 = sub_2516732B8();
    (*(v7 + 8))(v10, v6);
    v37 = v31 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524A0, &qword_251675AB0);
    sub_251674708();
    (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_251661B9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524A0, &qword_251675AB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_251661C30(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524A0, &qword_251675AB0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_251661744(a1, v4);
}

uint64_t sub_251661CAC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251661CEC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_251661D1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524B0, &qword_251675AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Double __swiftcall DispatchTimeInterval.toSeconds()()
{
  v1 = v0;
  v2 = sub_251674598();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D85188])
  {
    (*(v3 + 96))(v6, v2);
    return *v6;
  }

  if (v7 == *MEMORY[0x277D85178])
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    v10 = 1000.0;
  }

  else if (v7 == *MEMORY[0x277D85170])
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    v10 = 100000.0;
  }

  else
  {
    if (v7 != *MEMORY[0x277D85168])
    {
      (*(v3 + 8))(v6, v2);
      return 9.22337204e18;
    }

    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    v10 = 100000000.0;
  }

  return v9 / v10;
}

uint64_t UsoEntity_common_App.appIdentifier.getter()
{
  v0 = sub_251673848();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v50 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524B8, &qword_251675AC8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v57 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v50 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v50 - v21;
  result = sub_251673888();
  if (!result)
  {
    return result;
  }

  v24 = result;
  v59 = v20;
  v60 = result;
  v61 = *(result + 16);
  v55 = v17;
  v56 = v8;
  if (!v61)
  {
    v32 = 1;
    goto LABEL_18;
  }

  v58 = v22;
  v25 = 0;
  v26 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  while (1)
  {
    if (v25 >= *(v24 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      return result;
    }

    (*(v1 + 16))(v10, v26 + *(v1 + 72) * v25, v0);
    v28 = sub_251673838();
    if (!v29)
    {
      goto LABEL_5;
    }

    if (v28 == 0x64695F6D657469 && v29 == 0xE700000000000000)
    {
      break;
    }

    v30 = sub_251674978();

    if (v30)
    {
      goto LABEL_12;
    }

LABEL_5:
    ++v25;
    result = (*(v1 + 8))(v10, v0);
    v24 = v60;
    if (v61 == v25)
    {
      v32 = 1;
      v22 = v58;
      goto LABEL_18;
    }
  }

LABEL_12:
  if (sub_251673808() != 0x746163696C707041 || v31 != 0xEC000000736E6F69)
  {
    v27 = sub_251674978();

    if (v27)
    {
      goto LABEL_15;
    }

    goto LABEL_5;
  }

LABEL_15:
  v22 = v58;
  (*(v1 + 32))(v58, v10, v0);
  v32 = 0;
  v24 = v60;
LABEL_18:
  v33 = *(v1 + 56);
  v33(v22, v32, 1, v0);
  v34 = v59;
  sub_251662694(v22, v59);
  v35 = *(v1 + 48);
  if (v35(v34, 1, v0) == 1)
  {
    v51 = v35;
    v52 = v1 + 48;
    v53 = v33;
    v54 = v1 + 56;
    result = sub_251662704(v22);
    if (v61)
    {
      v36 = 0;
      v59 = (v24 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
      v58 = 0x8000000251676C90;
      do
      {
        if (v36 >= *(v24 + 16))
        {
          goto LABEL_44;
        }

        (*(v1 + 16))(v5, &v59[*(v1 + 72) * v36], v0);
        v39 = sub_251673838();
        if (v40)
        {
          if (v39 == 0x656D614E707061 && v40 == 0xE700000000000000)
          {
          }

          else
          {
            v41 = sub_251674978();

            if ((v41 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          if (sub_251673808() == 0xD000000000000015 && v58 == v42)
          {
          }

          else
          {
            v43 = sub_251674978();

            if ((v43 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          v64 = sub_251673828();
          v65 = v37;
          v62 = 46;
          v63 = 0xE100000000000000;
          sub_25166276C();
          v38 = sub_2516747A8();

          if (v38)
          {

            v47 = v55;
            (*(v1 + 32))(v55, v5, v0);
            v46 = 0;
            goto LABEL_36;
          }
        }

LABEL_23:
        ++v36;
        result = (*(v1 + 8))(v5, v0);
        v24 = v60;
      }

      while (v61 != v36);
    }

    v46 = 1;
    v47 = v55;
LABEL_36:
    v53(v47, v46, 1, v0);
    v48 = v57;
    sub_251662694(v47, v57);
    if (v51(v48, 1, v0) == 1)
    {
      sub_251662704(v47);
      return 0;
    }

    v49 = v56;
    (*(v1 + 32))(v56, v48, v0);
    v45 = sub_251673828();
    (*(v1 + 8))(v49, v0);
    sub_251662704(v47);
  }

  else
  {
    v44 = v56;
    (*(v1 + 32))(v56, v34, v0);
    v45 = sub_251673828();
    (*(v1 + 8))(v44, v0);
    sub_251662704(v22);
  }

  return v45;
}

uint64_t sub_251662694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524B8, &qword_251675AC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251662704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524B8, &qword_251675AC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25166276C()
{
  result = qword_27F4524C0;
  if (!qword_27F4524C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4524C0);
  }

  return result;
}

uint64_t makeConfirmationButtons(confirmButton:rejectButton:device:)(uint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v9 = sub_2516745F8();
  v10 = [v8 initWithIdentifier_];

  sub_251662C3C(a1[4]);
  v11 = sub_2516745A8();

  v49 = v10;
  [v10 setUserData_];

  v12 = objc_opt_self();
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v14 = sub_251673488();
  v47 = [v12 runSiriKitExecutorCommandWithContext:v14 payload:v10];

  v15 = a2[2];
  v16 = a2[3];
  v17 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v18 = sub_2516745F8();
  v19 = [v17 initWithIdentifier_];

  sub_251662C3C(a2[4]);
  v20 = sub_2516745A8();

  v48 = v19;
  [v19 setUserData_];

  v21 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v22 = sub_251673488();
  v46 = [v12 runSiriKitExecutorCommandWithContext:v22 payload:v19];

  v23 = [v12 wrapCommandInStartLocalRequest_];
  v24 = [v12 wrapCommandInStartLocalRequest_];
  v25 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v45 = sub_251673448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_251675370;
  v27 = *a1;
  v28 = a1[1];
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_251675370;
  *(v29 + 32) = v23;
  v30 = objc_allocWithZone(MEMORY[0x277D47A28]);
  v44 = v23;
  v31 = [v30 init];
  v32 = sub_2516745F8();
  [v31 setLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452570, &unk_251675AF8);
  v33 = sub_2516746A8();

  [v31 setCommands_];

  v34 = *a2;
  v35 = a2[1];
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_251675370;
  *(v36 + 32) = v24;
  v37 = objc_allocWithZone(MEMORY[0x277D47A28]);
  v38 = v24;
  v39 = [v37 init];
  v40 = sub_2516745F8();
  [v39 setLabel_];

  v41 = sub_2516746A8();

  [v39 setCommands_];

  v42 = sub_251662F04(v31, v39, 0, v45 & 1);
  *(v26 + 32) = v42;

  return v26;
}

uint64_t sub_251662C3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524F8, &qword_251675B10);
    v2 = sub_251674928();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_251654B68(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_251663790(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_251663790(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_251663790(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2516747C8();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_251663790(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_251662F04(id a1, void *a2, void *a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v21 = [objc_allocWithZone(MEMORY[0x277D47A38]) init];
    v27 = [a1 label];
    [v21 setConfirmText_];

    v28 = [a1 commands];
    [v21 setConfirmCommands_];

    v29 = [a2 label];
    [v21 setDenyText_];

    v30 = [a2 commands];
    [v21 setDenyCommands_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_251675AE0;
    *(v31 + 32) = a1;
    *(v31 + 40) = a2;
    v39 = v31;
    if (a3)
    {
      v32 = a1;
      v33 = a2;
      v34 = a3;
      MEMORY[0x25307E560]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v38 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2516746C8();
      }

      sub_2516746E8();
    }

    else
    {
      v35 = a1;
      v36 = a2;
    }

    sub_251663748(0, &qword_27F4524E0, 0x277D47A28);
    v37 = sub_2516746A8();

    [v21 setAllConfirmationOptions_];

    return v21;
  }

  result = [a1 label];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = sub_251674608();
  v10 = v9;

  result = [a1 commands];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  sub_251663748(0, &qword_27F4524E8, 0x277D47760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452570, &unk_251675AF8);
  v12 = sub_2516746B8();

  v13 = SASTButtonItem.init(label:commands:centered:)(v8, v10, v12, 1);
  result = [a2 label];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = sub_251674608();
  v17 = v16;

  result = [a2 commands];
  if (result)
  {
    v18 = result;
    v19 = sub_2516746B8();

    v20 = SASTButtonItem.init(label:commands:centered:)(v15, v17, v19, 1);
    v21 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_251675AE0;
    *(v22 + 32) = v13;
    *(v22 + 40) = v20;
    v23 = v13;
    v24 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524F0, &qword_251675B08);
    v25 = sub_2516746A8();

    [v21 setTemplateItems_];

    return v21;
  }

LABEL_17:
  __break(1u);
  return result;
}

id makeRFConfirmationButtons(confirmButton:rejectButton:device:)(uint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v9 = sub_2516745F8();
  v10 = [v8 initWithIdentifier_];

  sub_251662C3C(a1[4]);
  v11 = sub_2516745A8();

  v45 = v10;
  [v10 setUserData_];

  v12 = objc_opt_self();
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v14 = sub_251673488();
  v44 = [v12 runSiriKitExecutorCommandWithContext:v14 payload:v10];

  v15 = a2[2];
  v16 = a2[3];
  v17 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v18 = sub_2516745F8();
  v19 = [v17 initWithIdentifier_];

  sub_251662C3C(a2[4]);
  v20 = sub_2516745A8();

  [v19 setUserData_];

  v21 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v22 = sub_251673488();
  v43 = [v12 runSiriKitExecutorCommandWithContext:v22 payload:v19];

  v23 = [v12 wrapCommandInStartLocalRequest_];
  v24 = [v12 wrapCommandInStartLocalRequest_];
  v25 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_251673448();
  v26 = *a1;
  v27 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_251675370;
  *(v28 + 32) = v23;
  v29 = objc_allocWithZone(MEMORY[0x277D47A28]);
  v42 = v23;
  v30 = [v29 init];
  v31 = sub_2516745F8();
  [v30 setLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452570, &unk_251675AF8);
  v32 = sub_2516746A8();

  [v30 setCommands_];

  v33 = *a2;
  v34 = a2[1];
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_251675370;
  *(v35 + 32) = v24;
  v36 = objc_allocWithZone(MEMORY[0x277D47A28]);
  v37 = v24;
  v38 = [v36 init];
  v39 = sub_2516745F8();
  [v38 setLabel_];

  v40 = sub_2516746A8();

  [v38 setCommands_];

  return v30;
}

uint64_t sub_251663748(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_251663790(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static UsoEntity_common_App.builder(appName:appIdentifier:usoIdentifierNamespace:usoIdentifierAppBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v25 = a3;
  v26 = a5;
  v8 = sub_251673848();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251673A68();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_251673A58();
  if (a4)
  {
    v17 = sub_2516739D8();
    v23 = v8;
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();

    v20 = sub_2516739C8();

    sub_251673818();
    sub_2516737D8();
    (*(v9 + 8))(v12, v23);
    v27 = v20;
    sub_251673868();
  }

  return v16;
}

uint64_t static UsoEntity_common_App.with(appIdentifier:usoIdentifierNamespace:usoIdentifierAppBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v9 = sub_251673848();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251673A68();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_251673A58();
  if (a2)
  {
    v18 = sub_2516739D8();
    v24[2] = a4;
    v25 = v9;
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();

    v21 = sub_2516739C8();
    v24[0] = a2;
    v24[1] = a3;
    v22 = v21;

    sub_251673818();
    sub_2516737D8();
    (*(v10 + 8))(v13, v25);
    v27 = v22;
    sub_251673868();
  }

  MEMORY[0x25307D850](v17);
  sub_2516738B8();
  sub_251673A18();

  return v27;
}

uint64_t Date.startOfDay.getter()
{
  v0 = sub_251673298();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673278();
  sub_251673248();
  return (*(v1 + 8))(v4, v0);
}

uint64_t Date.endOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_251673238();
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v1);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_251673298();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452500, &qword_251675B20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452508, &qword_251675B28);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452510, &qword_251675B30);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v35 - v22;
  v35 = sub_2516731B8();
  v24 = *(v35 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v35);
  v27 = &v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 56))(v23, 1, 1, v4);
  v28 = sub_2516732A8();
  (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
  sub_2516731A8();
  sub_251673188();
  sub_251673198();
  sub_251673278();
  sub_251673278();
  v29 = v37;
  sub_251673248();
  v30 = *(v5 + 8);
  v30(v9, v4);
  v31 = v29;
  sub_251673268();
  v33 = v38;
  v32 = v39;
  (*(v38 + 8))(v31, v39);
  v30(v11, v4);
  result = (*(v33 + 48))(v15, 1, v32);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v24 + 8))(v27, v35);
    return (*(v33 + 32))(v36, v15, v32);
  }

  return result;
}

uint64_t Calendar.numberOfDaysBetween(_:and:)()
{
  v0 = sub_251674568();
  v51 = *(v0 - 8);
  v52 = v0;
  v1 = *(v51 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2516731B8();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - v8;
  v10 = sub_251673238();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  sub_251673248();
  sub_251673248();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452518, &qword_251675B38);
  v17 = sub_251673288();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251675380;
  (*(v18 + 104))(v21 + v20, *MEMORY[0x277CC9968], v17);
  sub_25166466C(v21);
  swift_setDeallocating();
  (*(v18 + 8))(v21 + v20, v17);
  swift_deallocClassInstance();
  v43 = v16;
  v44 = v14;
  sub_251673258();

  if (qword_27F451F18 != -1)
  {
    swift_once();
  }

  v22 = v52;
  v23 = __swift_project_value_buffer(v52, static Logger.wellness);
  swift_beginAccess();
  v24 = v51;
  (*(v51 + 16))(v3, v23, v22);
  v25 = v48;
  v26 = v49;
  v27 = *(v49 + 16);
  v47 = v9;
  v28 = v50;
  v27(v48, v9, v50);
  v29 = sub_251674548();
  v30 = sub_251674718();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v25;
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    result = sub_251673178();
    if (v34)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v35 = result;
    v36 = *(v26 + 8);
    v36(v31, v28);
    *(v32 + 4) = v35;
    _os_log_impl(&dword_251650000, v29, v30, "Number of days: %ld", v32, 0xCu);
    MEMORY[0x25307EDE0](v32, -1, -1);
    v22 = v52;
  }

  else
  {
    v36 = *(v26 + 8);
    v36(v25, v28);
  }

  (*(v24 + 8))(v3, v22);
  v37 = v47;
  result = sub_251673178();
  if (v38)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v39 = result;
  v36(v37, v28);
  v40 = *(v45 + 8);
  v41 = v46;
  v40(v44, v46);
  v40(v43, v41);
  result = v39 + 1;
  if (__OFADD__(v39, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void *sub_25166461C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_25166463C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_25166466C(uint64_t a1)
{
  v2 = sub_251673288();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452520, &qword_251675B48);
    v10 = sub_2516747E8();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_251664964(&qword_27F452528);
      v18 = sub_2516745C8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_251664964(&qword_27F452530);
          v25 = sub_2516745E8();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_251664964(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_251673288();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static UsoEntity_common_WorkoutEquipment.builder(name:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_2516740F8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_2516740E8();
  if (a2)
  {
    sub_2516740D8();
  }

  return v6;
}

uint64_t static UsoEntity_common_WorkoutEquipment.with(name:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_2516740F8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_2516740E8();
  if (a2)
  {
    sub_2516740D8();
  }

  MEMORY[0x25307D850](v6);
  sub_251673E08();
  sub_251673A18();

  return v8;
}

Swift::Bool __swiftcall App.isFirstParty()()
{
  sub_251674468();
  if (v0)
  {
    sub_251664B44();
    sub_251664B98();
    v1 = sub_2516745D8();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

unint64_t sub_251664B44()
{
  result = qword_27F452538;
  if (!qword_27F452538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452538);
  }

  return result;
}

unint64_t sub_251664B98()
{
  result = qword_27F452540;
  if (!qword_27F452540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452540);
  }

  return result;
}

uint64_t HealthLogName.rawValue.getter(char a1)
{
  result = 0x79726568637261;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 14:
      return 0xD000000000000012;
    case 3:
      return 0x6F746E696D646162;
    case 4:
      return 0x6572726162;
    case 5:
      v11 = 1702060386;
      return v11 | 0x6C6C616200000000;
    case 6:
      v4 = 0x74656B736162;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6162000000000000;
    case 7:
      v6 = 1819766626;
      return v6 | 0x676E6900000000;
    case 8:
      return 0x676E69786F62;
    case 9:
      v8 = 0x6F6964726163;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
    case 10:
      return 0x676E69626D696C63;
    case 11:
      return 0x6E776F646C6F6F63;
    case 12:
      v9 = 1701998435;
      return v9 | 0x6961727400000000;
    case 13:
      return 0x74656B63697263;
    case 15:
      return 0x61727473736F7263;
    case 16:
      v6 = 1819440483;
      return v6 | 0x676E6900000000;
    case 17:
      return 0x65636E6164;
    case 18:
      v7 = 1668508004;
      return v7 | 0x726F707300000000;
    case 19:
      return 0x6C6C69686E776F64;
    case 20:
      return 0x63697470696C6C65;
    case 21:
      return 0xD000000000000010;
    case 22:
      return 0x6573696372657865;
    case 23:
      v6 = 1668179302;
      return v6 | 0x676E6900000000;
    case 24:
      v6 = 1752394086;
      return v6 | 0x676E6900000000;
    case 25:
      return 0x677373656E746966;
    case 26:
      return 0x6C69626978656C66;
    case 27:
      v3 = 10;
      return v3 | 0xD000000000000010;
    case 28:
      return 1718382439;
    case 29:
      return 0x697473616E6D7967;
    case 30:
      v11 = 1684955496;
      return v11 | 0x6C6C616200000000;
    case 31:
      return 0x6C637963646E6168;
    case 32:
      v3 = 13;
      return v3 | 0xD000000000000010;
    case 33:
      return 1701538152;
    case 34:
      return 0x79656B636F68;
    case 35:
      v6 = 1953396072;
      return v6 | 0x676E6900000000;
    case 36:
      return 0x7963726F6F646E69;
    case 37:
      return 0x7572726F6F646E69;
    case 38:
      return 0x6177726F6F646E69;
    case 39:
      return 0x65706F72706D756ALL;
    case 40:
      return 0x69786F626B63696BLL;
    case 41:
      return 0x6573736F7263616CLL;
    case 42:
      return 0x616C61697472616DLL;
    case 43:
      return 0x62646E61646E696DLL;
    case 44:
      return 0x726163646578696DLL;
    case 45:
      return 0x726F57726568746FLL;
    case 46:
      return 0x7073656C64646170;
    case 47:
      v4 = 0x656C6B636970;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6162000000000000;
    case 48:
      return 0x736574616C6970;
    case 49:
      return 2036427888;
    case 50:
      return 0xD000000000000016;
    case 51:
      return 0x6274657571636172;
    case 52:
      return 0x7265776F72;
    case 53:
      return 0x7962677572;
    case 54:
      v6 = 1818845555;
      return v6 | 0x676E6900000000;
    case 55:
      return 0x756E696D5F786973;
    case 56:
      v5 = 1952541555;
      return v5 | 0x73676E6900000000;
    case 57:
      return 0x72616F62776F6E73;
    case 58:
      v7 = 2003791475;
      return v7 | 0x726F707300000000;
    case 59:
      return 0x726563636F73;
    case 60:
      v8 = 0x6C6169636F73;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
    case 61:
      v11 = 1952870259;
      return v11 | 0x6C6C616200000000;
    case 62:
      return 0x687361757173;
    case 63:
      v9 = 1885697139;
      return v9 | 0x6961727400000000;
    case 64:
      v5 = 1718777203;
      return v5 | 0x73676E6900000000;
    case 65:
      return 0x6E6574656C626174;
    case 66:
      return 0x696863696174;
    case 67:
      return 0x73696E6E6574;
    case 68:
      return 0x61576F54656D6974;
    case 69:
      return 0x646E616B63617274;
    case 70:
      v3 = 9;
      return v3 | 0xD000000000000010;
    case 71:
      v4 = 0x79656C6C6F76;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6162000000000000;
    case 72:
      return 0x7469667265746177;
    case 73:
      return 0x6C6F707265746177;
    case 74:
      return 0x6F70737265746177;
    case 75:
      return 0x7374756F6B726F77;
    case 76:
      v10 = 0x6C7473657277;
      goto LABEL_93;
    case 77:
      return 1634168697;
    case 78:
      v10 = 0x6C6379636962;
LABEL_93:
      result = v10 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
      break;
    case 79:
      result = 7239026;
      break;
    case 80:
      result = 0x635F737269617473;
      break;
    case 81:
      result = 1835628403;
      break;
    case 82:
      result = 1802264951;
      break;
    case 83:
      result = 0x6168636C65656877;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_25166559C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = HealthLogName.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == HealthLogName.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_251674978();
  }

  return v8 & 1;
}

uint64_t sub_251665624()
{
  v1 = *v0;
  sub_2516749F8();
  HealthLogName.rawValue.getter(v1);
  sub_251674638();

  return sub_251674A18();
}

uint64_t sub_251665688()
{
  HealthLogName.rawValue.getter(*v0);
  sub_251674638();
}

uint64_t sub_2516656DC()
{
  v1 = *v0;
  sub_2516749F8();
  HealthLogName.rawValue.getter(v1);
  sub_251674638();

  return sub_251674A18();
}

uint64_t sub_25166573C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18HealthDomainsTools0A7LogNameO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_25166576C@<X0>(uint64_t *a1@<X8>)
{
  result = HealthLogName.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String_optional __swiftcall vocabularyIdentifier(for:)(HealthDomainsTools::HealthLogName_optional a1)
{
  if (a1.value == HealthDomainsTools_HealthLogName_unknownDefault)
  {
    v1 = 0;
    v2 = 0;
  }

  else
  {
    v4 = sub_251665874(a1.value);
    v6 = v5;
    if (sub_251665924(a1.value, &unk_28638F688))
    {
      v2 = v6;
      v1 = v4;
    }

    else
    {
      sub_251674818();

      MEMORY[0x25307E530](v4, v6);

      v1 = 0xD000000000000028;
      v2 = 0x8000000251676D80;
    }
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_251665874(char a1)
{
  v2 = 0x6E776F6E6B6E55;
  v3 = sub_25166C98C(&unk_28638EE88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452560, &qword_251675C68);
  swift_arrayDestroy();
  if (*(v3 + 16))
  {
    v4 = sub_25166B694(a1);
    if (v5)
    {
      v6 = (*(v3 + 56) + 16 * v4);
      v2 = *v6;
      v7 = v6[1];
    }
  }

  return v2;
}

BOOL sub_251665924(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = HealthLogName.rawValue.getter(*v4);
    v9 = v8;
    if (v7 == HealthLogName.rawValue.getter(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_251674978();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t _s18HealthDomainsTools0A7LogNameO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_251674998();

  if (v0 >= 0x54)
  {
    return 84;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_251665A40()
{
  result = qword_27F452548;
  if (!qword_27F452548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452548);
  }

  return result;
}

unint64_t sub_251665A98()
{
  result = qword_27F452550;
  if (!qword_27F452550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F452558, &qword_251675BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452550);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthLogName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAD)
  {
    goto LABEL_17;
  }

  if (a2 + 83 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 83) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 83;
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

      return (*a1 | (v4 << 8)) - 83;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 83;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x54;
  v8 = v6 - 84;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthLogName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 83 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 83) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAD)
  {
    v4 = 0;
  }

  if (a2 > 0xAC)
  {
    v5 = ((a2 - 173) >> 8) + 1;
    *result = a2 + 83;
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
    *result = a2 + 83;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id SASTButtonItem.init(label:commands:centered:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setCentered_];
  v6 = [objc_allocWithZone(MEMORY[0x277D47770]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452570, &unk_251675AF8);
  v7 = sub_2516746A8();

  [v6 setCommands_];

  [v5 setAction_];
  v8 = [objc_allocWithZone(MEMORY[0x277D47A40]) init];
  v9 = sub_2516745F8();

  [v8 setText_];

  [v5 setDecoratedLabel_];
  return v5;
}

id SASTCommandTemplateAction.init(commands:)()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452570, &unk_251675AF8);
  v1 = sub_2516746A8();

  [v0 setCommands_];

  return v0;
}

id SASTSideBySideButtonsItem.init(primaryButtonConfirmationOption:secondaryButtonConfirmationOption:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = *MEMORY[0x277D48D08];
  v6 = v4;
  [v6 setButtonsViewStyle_];
  result = [a1 commands];
  if (result)
  {
    v8 = result;
    v9 = [objc_allocWithZone(MEMORY[0x277D47770]) init];
    [v9 setCommands_];

    [v6 setPrimaryButtonAction_];
    [v6 setPrimaryButtonEnabled_];
    v10 = [a1 label];
    [v6 setPrimaryButtonLabel_];

    v11 = sub_2516734F8();
    [v6 setPrimaryButtonTextColor_];

    result = [a2 commands];
    if (result)
    {
      v12 = result;
      v13 = [objc_allocWithZone(MEMORY[0x277D47770]) init];
      [v13 setCommands_];

      [v6 setSecondaryButtonAction_];
      [v6 setSecondaryButtonEnabled_];
      v14 = [a2 label];
      [v6 setSecondaryButtonLabel_];

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id SASTCountdownTimerItem.init(sashTitle:commands:delay:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = v6;

  if (a3 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452570, &unk_251675AF8);
    sub_251674908();
  }

  else
  {
    sub_251674988();
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D47770]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452570, &unk_251675AF8);
  v9 = sub_2516746A8();

  [v8 setCommands_];

  [v6 setAction_];
  [v6 setActionDelayInSeconds_];
  v10 = sub_2516734F8();
  [v6 setBodyBackgroundColor_];

  v11 = sub_2516734E8();
  [v6 setCountdownTextColor_];

  v12 = sub_2516734F8();
  [v6 setHeaderBackgroundColor_];

  v13 = sub_2516745F8();

  [v6 setHeaderText_];

  v14 = sub_2516734D8();
  [v6 setHeaderTextColor_];

  return v6;
}

id SABaseCommand.asVCatString.getter()
{
  v12[1] = *MEMORY[0x277D85DE8];
  result = [v0 dictionary];
  if (result)
  {
    v2 = result;
    v12[0] = 0;
    v3 = [objc_opt_self() dataWithPropertyList:result format:200 options:0 error:v12];
    v4 = v12[0];
    if (v3)
    {
      v5 = sub_251673208();
      v7 = v6;

      sub_25166640C(v5, v7);
      v8 = sub_2516731F8();

      sub_251666460(v5, v7);
      sub_251666460(v5, v7);
      result = v8;
    }

    else
    {
      v9 = v4;
      v10 = sub_2516731C8();

      swift_willThrow();
      result = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25166640C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_251666460(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id SAUIAppPunchOut.init(aceService:url:)(uint64_t *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = sub_2516731D8();
  [v4 setPunchOutUri_];

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251673568();
  if (v7)
  {
    v8 = sub_2516745F8();
  }

  else
  {
    v8 = 0;
  }

  [v4 setAceId_];

  v9 = sub_2516731E8();
  (*(*(v9 - 8) + 8))(a2, v9);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t static UsoEntity_common_Measurement.builder(component:)(uint64_t a1)
{
  v2 = sub_251673E88();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_251673E78();
  if (a1)
  {

    sub_251673E68();
  }

  return v5;
}

uint64_t static UsoEntity_common_Measurement.with(component:)(uint64_t a1)
{
  v2 = sub_251673E88();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_251673E78();
  if (a1)
  {

    sub_251673E68();
  }

  MEMORY[0x25307D850](v5);
  sub_251673A88();
  sub_251673A18();

  return v7;
}

uint64_t sub_2516666F0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = sub_251673D68();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_251673E88();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_251673E78();
  sub_251659758(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2516597C8(v12);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    if ((a3 & 1) == 0)
    {
      (*(v14 + 16))(v10, v17, v13);
      (*(v14 + 56))(v10, 0, 1, v13);
      sub_2516593C0(v10, a2, 0);
      sub_2516597C8(v10);

      sub_251673E68();
    }

    (*(v14 + 8))(v17, v13);
  }

  return v21;
}

unint64_t sub_251666990()
{
  result = qword_27F452580;
  if (!qword_27F452580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452580);
  }

  return result;
}

uint64_t ServerFallbackFlow.execute()(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_251673368();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_251674568();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251666B00, 0, 0);
}

uint64_t sub_251666B00()
{
  v20 = v0;
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v3, static Logger.common);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_251674548();
  v6 = sub_251674718();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_25165445C(0xD000000000000012, 0x8000000251675C70, &v19);
    _os_log_impl(&dword_251650000, v5, v6, "Executing %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x25307EDE0](v12, -1, -1);
    MEMORY[0x25307EDE0](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v13 = v0[11];
  v15 = v0[7];
  v14 = v0[8];
  v16 = v0[6];
  (*(v15 + 104))(v14, *MEMORY[0x277D5B8A0], v16);
  sub_251673528();
  (*(v15 + 8))(v14, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_251666D50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2516558DC;

  return ServerFallbackFlow.execute()(a1);
}

uint64_t static UsoTask.startWorkout(_:goalDefinedValue:goalUnitType:goalValue:areaType:sequenceLabel:appIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v78 = a8;
  v74 = a7;
  v75 = a5;
  v72 = a6;
  v73 = a4;
  v69 = a1;
  v70 = a9;
  v71 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v67 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v68 = &v65 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - v18;
  v20 = sub_251673AC8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v65 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v76 = &v65 - v25;
  v26 = sub_251673848();
  v79 = *(v26 - 8);
  v27 = *(v79 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_251673CB8();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_251673CA8();
  v34 = sub_251673DC8();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v77 = sub_251673DB8();
  if (a2)
  {
    v37 = sub_2516739D8();
    v66 = v20;
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v40 = v21;
    v41 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v79 + 8))(v29, v26);
    v80 = v41;
    v20 = v66;
    sub_251673868();
    v21 = v40;
  }

  v69 = v26;
  if (v78)
  {
    _s12SiriOntology31UsoEntity_common_GeographicAreaC18HealthDomainsToolsE7builder8areaTypeAA0cd8Builder_e1_fG0CSSSg_tFZ_0(v74, v78);
    sub_251673D98();
  }

  v74 = a11;

  sub_251673C78();

  v78 = sub_251658E48(v71, v73, v75, v72 & 1);
  sub_251673C88();
  sub_251654A14(v70, v19);
  v42 = *(v21 + 48);
  if (v42(v19, 1, v20) == 1)
  {
    sub_251654A84(v19, &qword_27F452390, &unk_251675D30);
  }

  else
  {
    v75 = v33;
    v43 = *(v21 + 32);
    v44 = v76;
    v43(v76, v19, v20);
    v45 = v68;
    (*(v21 + 16))(v68, v44, v20);
    (*(v21 + 56))(v45, 0, 1, v20);
    v46 = sub_251673F18();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    sub_251673F08();
    v49 = v67;
    sub_251654A14(v45, v67);
    if (v42(v49, 1, v20) == 1)
    {
      sub_251654A84(v45, &qword_27F452390, &unk_251675D30);
      v50 = v49;
    }

    else
    {
      v51 = v65;
      v43(v65, v49, v20);
      sub_251673EF8();
      (*(v21 + 8))(v51, v20);
      v50 = v45;
    }

    sub_251654A84(v50, &qword_27F452390, &unk_251675D30);

    sub_2516739F8();

    (*(v21 + 8))(v76, v20);
  }

  v52 = v79;
  if (v74)
  {
    v53 = sub_251673A68();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    sub_251673A58();
    v56 = sub_2516739D8();
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    swift_allocObject();

    v59 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v52 + 8))(v29, v69);
    v80 = v59;
    sub_251673868();

    sub_251673A08();
  }

  v60 = sub_251673FC8();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v63 = sub_251673FB8();
  sub_251673BC8();

  return v63;
}

uint64_t sub_2516675DC(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(void))
{
  v5 = _s12SiriOntology7UsoTaskC18HealthDomainsToolsE13modifyWorkout_4verbAA0C37_VerbTemplateBuilder_ReferenceControlCyAA0c6Entitym8_common_I0CGSSSg_AD06ModifyidK0OtFZ_0(a1, a2, a3);
  v6 = a4(0);

  return MEMORY[0x2821FE918](v5, v6, 0, 0, 0);
}

uint64_t static UsoTask.createHealthLog(_:measurementNeeded:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_251673848();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251673DC8();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_251673DB8();
  if (a2)
  {
    v13 = sub_2516739D8();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v16 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v6 + 8))(v9, v5);
    v25[1] = v16;
    sub_251673868();
  }

  if (a3)
  {
    v17 = sub_251673E88();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_251673E78();
    sub_251673DA8();
  }

  v20 = sub_251674048();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_251674038();
  sub_251673BC8();

  return v23;
}

uint64_t static UsoTask.noVerbHealthLog(_:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_251673848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251673DC8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_251673DB8();
  if (a2)
  {
    v11 = sub_2516739D8();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v14 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v4 + 8))(v7, v3);
    v20[1] = v14;
    sub_251673868();
  }

  v15 = sub_251674068();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_251674058();
  sub_2516737B8();

  return v18;
}

unint64_t UsoTaskBuilder.build()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523D8, &qword_251675398);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251675370;
  *(v5 + 32) = v0;
  v6 = sub_251673898();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);

  v7 = MEMORY[0x25307D720](v5, v4);

  sub_251654A84(v4, &qword_27F4523D8, &qword_251675398);
  result = MEMORY[0x25307D770](v7);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v10 = result;
  v11 = sub_251674918();
  result = v10;
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x25307E6F0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(result + 32);

LABEL_6:

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t UsoTaskBuilder.toProtobufUsoGraph()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523D8, &qword_251675398);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_251675370;
  *(v7 + 32) = v1;
  v8 = sub_251673898();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);

  MEMORY[0x25307D720](v7, v6);

  sub_251654A84(v6, &qword_27F4523D8, &qword_251675398);
  sub_251673798();

  v9 = sub_251673648();
  return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
}

uint64_t ModifyWorkoutTaskVerb.hashValue.getter(unsigned __int8 a1)
{
  sub_2516749F8();
  MEMORY[0x25307E8D0](a1);
  return sub_251674A18();
}

uint64_t sub_251667E2C()
{
  v1 = *v0;
  sub_2516749F8();
  MEMORY[0x25307E8D0](v1);
  return sub_251674A18();
}

uint64_t sub_251667EA0()
{
  v1 = *v0;
  sub_2516749F8();
  MEMORY[0x25307E8D0](v1);
  return sub_251674A18();
}

uint64_t _s12SiriOntology7UsoTaskC18HealthDomainsToolsE13modifyWorkout_4verbAA0C37_VerbTemplateBuilder_ReferenceControlCyAA0c6Entitym8_common_I0CGSSSg_AD06ModifyidK0OtFZ_0(uint64_t a1, uint64_t a2, int a3)
{
  v84 = a3;
  v4 = sub_251673AC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v76 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = &v73 - v9;
  v10 = sub_251673848();
  v82 = *(v10 - 8);
  v11 = *(v82 + 64);
  MEMORY[0x28223BE20](v10);
  v80 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v78 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v79 = &v73 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v73 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v73 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v73 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A0, &unk_251675E00);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v73 - v30;
  v32 = sub_251673A98();
  v33 = *(*(v32 - 8) + 56);
  v85 = v31;
  v33(v31, 1, 1, v32);
  v34 = sub_251673D68();
  v35 = *(*(v34 - 8) + 56);
  v86 = v27;
  v35(v27, 1, 1, v34);
  v81 = v5;
  v36 = *(v5 + 56);
  v87 = v23;
  v77 = v36;
  v36(v23, 1, 1, v4);
  v37 = sub_251673CB8();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_251673CA8();
  v41 = sub_251673DC8();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_251673DB8();
  if (a2)
  {
    v44 = sub_2516739D8();
    v74 = v10;
    v75 = v21;
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v47 = sub_2516739C8();
    v48 = v80;
    sub_251673818();
    sub_2516737D8();
    v49 = v48;
    v21 = v75;
    (*(v82 + 8))(v49, v74);
    v88 = v47;
    sub_251673868();
  }

  sub_251673C78();

  sub_251658E48(v85, v86, 0, 1);
  v82 = v40;
  sub_251673C88();
  sub_251654A14(v87, v21);
  v50 = v81;
  v51 = *(v81 + 48);
  if (v51(v21, 1, v4) == 1)
  {

    sub_251654A84(v21, &qword_27F452390, &unk_251675D30);
  }

  else
  {
    v52 = v83;
    v80 = *(v50 + 32);
    (v80)(v83, v21, v4);
    v53 = v79;
    (*(v50 + 16))(v79, v52, v4);
    v77(v53, 0, 1, v4);
    v54 = v53;
    v55 = sub_251673F18();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    v58 = v50;
    sub_251673F08();
    v59 = v78;
    sub_251654A14(v54, v78);
    if (v51(v59, 1, v4) == 1)
    {
      sub_251654A84(v54, &qword_27F452390, &unk_251675D30);
      v54 = v59;
    }

    else
    {
      v60 = v76;
      (v80)(v76, v59, v4);
      sub_251673EF8();
      (*(v58 + 8))(v60, v4);
    }

    sub_251654A84(v54, &qword_27F452390, &unk_251675D30);

    sub_2516739F8();

    (*(v58 + 8))(v83, v4);
  }

  sub_251654A84(v87, &qword_27F452390, &unk_251675D30);
  sub_251654A84(v86, &qword_27F452398, &qword_251675270);
  sub_251654A84(v85, &qword_27F4523A0, &unk_251675E00);
  if (v84)
  {
    if (v84 == 1)
    {
      v61 = sub_251673E58();
      v62 = *(v61 + 48);
      v63 = *(v61 + 52);
      swift_allocObject();
      v64 = sub_251673E48();
    }

    else
    {
      v68 = sub_251673FE8();
      v69 = *(v68 + 48);
      v70 = *(v68 + 52);
      swift_allocObject();
      v64 = sub_251673FD8();
    }
  }

  else
  {
    v65 = sub_251673EE8();
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();
    v64 = sub_251673ED8();
  }

  v71 = v64;

  sub_251674108();

  return v71;
}

uint64_t sub_251668704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v79 = a4;
  v80 = a5;
  v78 = a3;
  v6 = sub_251673AC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v70 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = &v69 - v11;
  v12 = sub_251673848();
  v76 = *(v12 - 8);
  v13 = *(v76 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v72 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v73 = &v69 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v69 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v69 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v69 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A0, &unk_251675E00);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v69 - v33;
  v35 = sub_251673A98();
  v36 = *(*(v35 - 8) + 56);
  v81 = v34;
  v36(v34, 1, 1, v35);
  v37 = sub_251673D68();
  v38 = *(*(v37 - 8) + 56);
  v82 = v30;
  v38(v30, 1, 1, v37);
  v74 = v6;
  v75 = v7;
  v39 = *(v7 + 56);
  v83 = v26;
  v71 = v39;
  v39(v26, 1, 1, v6);
  v40 = sub_251673CB8();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = sub_251673CA8();
  v44 = sub_251673DC8();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  sub_251673DB8();
  if (a2)
  {
    v47 = sub_2516739D8();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v50 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v76 + 8))(v15, v12);
    v84 = v50;
    sub_251673868();
  }

  sub_251673C78();

  sub_251658E48(v81, v82, 0, 1);
  v76 = v43;
  sub_251673C88();
  sub_251654A14(v83, v24);
  v52 = v74;
  v51 = v75;
  v53 = *(v75 + 48);
  if (v53(v24, 1, v74) == 1)
  {

    sub_251654A84(v24, &qword_27F452390, &unk_251675D30);
    v54 = v76;
  }

  else
  {
    v55 = v77;
    v69 = *(v51 + 32);
    v69(v77, v24, v52);
    v56 = v73;
    (*(v51 + 16))(v73, v55, v52);
    v71(v56, 0, 1, v52);
    v57 = v56;
    v58 = sub_251673F18();
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    v61 = v51;
    sub_251673F08();
    v62 = v72;
    sub_251654A14(v57, v72);
    if (v53(v62, 1, v52) == 1)
    {
      sub_251654A84(v57, &qword_27F452390, &unk_251675D30);
      v57 = v62;
    }

    else
    {
      v63 = v70;
      v69(v70, v62, v52);
      sub_251673EF8();
      (*(v61 + 8))(v63, v52);
    }

    v54 = v76;
    sub_251654A84(v57, &qword_27F452390, &unk_251675D30);

    sub_2516739F8();

    (*(v61 + 8))(v77, v52);
  }

  sub_251654A84(v83, &qword_27F452390, &unk_251675D30);
  sub_251654A84(v82, &qword_27F452398, &qword_251675270);
  sub_251654A84(v81, &qword_27F4523A0, &unk_251675E00);
  v64 = v78(0);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  v67 = v79();
  v80(v54);

  return v67;
}