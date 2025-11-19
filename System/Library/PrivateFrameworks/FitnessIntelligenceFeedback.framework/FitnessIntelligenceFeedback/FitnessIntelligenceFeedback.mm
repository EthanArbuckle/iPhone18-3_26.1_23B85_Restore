void sub_24B61AC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AppleConnectClientLibraryCore()
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = AppleConnectClientLibraryCore_frameworkLibrary;
  v6 = AppleConnectClientLibraryCore_frameworkLibrary;
  if (!AppleConnectClientLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_27900CCA8;
    v4[3] = _sl_dlopen();
    AppleConnectClientLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_24B61AEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AppleConnectClientLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  AppleConnectClientLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __getACMobileAuthenticationContextClass_block_invoke(uint64_t a1)
{
  AppleConnectClientLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ACMobileAuthenticationContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getACMobileAuthenticationContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getACMobileAuthenticationContextClass_block_invoke_cold_1();
    AppleConnectClientLibrary();
  }
}

void AppleConnectClientLibrary()
{
  if (!AppleConnectClientLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class __getACAuthenticationRequestClass_block_invoke(uint64_t a1)
{
  AppleConnectClientLibrary();
  result = objc_getClass("ACAuthenticationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getACAuthenticationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getACAuthenticationRequestClass_block_invoke_cold_1();
    return InferenceRecordFeedbackView.inferenceRecord.getter(v3);
  }

  return result;
}

uint64_t InferenceRecordFeedbackView.inferenceRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B638BE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InferenceRecordFeedbackView.inferenceRecord.setter(uint64_t a1)
{
  v3 = sub_24B638BE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InferenceRecordFeedbackView.inferenceClient.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InferenceRecordFeedbackView() + 20);

  return sub_24B61B1DC(v3, a1);
}

uint64_t type metadata accessor for InferenceRecordFeedbackView()
{
  result = qword_27F02ADF8;
  if (!qword_27F02ADF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B61B1DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_24B61B28C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _s27FitnessIntelligenceFeedback015InferenceRecordC4ViewV09inferenceE00G6ClientAC0aB00dE0V_AF0dH8Protocol_ptcfC_0@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD80, &qword_24B639D30);
  v4 = *(*(v38 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v38);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD88, &qword_24B639D38);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = type metadata accessor for InferenceRecordFeedbackView();
  v18 = v17[6];
  v19 = sub_24B638D14();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  sub_24B6283BC(v16, v14, &qword_27F02AD88, &qword_24B639D38);
  sub_24B639324();
  sub_24B628424(v16, &qword_27F02AD88, &qword_24B639D38);
  v20 = a3 + v17[7];
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_24B639324();
  v21 = v45;
  *v20 = v44;
  *(v20 + 16) = v21;
  v22 = v17[8];
  v23 = sub_24B638DD4();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  sub_24B6283BC(v9, v7, &qword_27F02AD80, &qword_24B639D30);
  sub_24B639324();
  sub_24B628424(v9, &qword_27F02AD80, &qword_24B639D30);
  v24 = a3 + v17[9];
  LOBYTE(v41) = 0;
  sub_24B639324();
  v25 = *(&v44 + 1);
  *v24 = v44;
  *(v24 + 8) = v25;
  v26 = a3 + v17[10];
  v41 = 0;
  v42 = 0;
  v43 = 2;
  sub_24B639324();
  v27 = v45;
  v28 = v46;
  *v26 = v44;
  *(v26 + 16) = v27;
  *(v26 + 24) = v28;
  v29 = a3 + v17[11];
  LOBYTE(v41) = 0;
  sub_24B639324();
  v30 = *(&v44 + 1);
  *v29 = v44;
  *(v29 + 8) = v30;
  v31 = a3 + v17[12];
  *v31 = sub_24B638ED4() & 1;
  *(v31 + 8) = v32;
  *(v31 + 16) = v33 & 1;
  v34 = a3 + v17[13];
  LOBYTE(v41) = 0;
  sub_24B639324();
  v35 = *(&v44 + 1);
  *v34 = v44;
  *(v34 + 8) = v35;
  v36 = sub_24B638BE4();
  (*(*(v36 - 8) + 32))(a3, v39, v36);
  return sub_24B61B28C(v40, a3 + v17[5]);
}

uint64_t InferenceRecordFeedbackView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_24B639184();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B638F34();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD90, &qword_24B639D40);
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD98, &qword_24B639D48);
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADA0, &qword_24B639D50);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v31 = &v30 - v20;
  v43 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADA8, &qword_24B639D58);
  sub_24B628F28(&qword_27F02ADB0, &qword_27F02ADA8, &qword_24B639D58);
  sub_24B6391C4();
  sub_24B638F24();
  v21 = sub_24B628F28(&qword_27F02ADB8, &qword_27F02AD90, &qword_24B639D40);
  v22 = MEMORY[0x277CDD980];
  sub_24B6392C4();
  (*(v35 + 8))(v8, v5);
  (*(v33 + 8))(v12, v9);
  v23 = v36;
  sub_24B639174();
  v44 = v9;
  v45 = v5;
  v46 = v21;
  v47 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v31;
  sub_24B639284();
  (*(v39 + 8))(v23, v40);
  (*(v34 + 8))(v16, v13);
  v42 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADC0, &qword_24B639D60);
  v44 = v13;
  v45 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02ADC8, &unk_24B639D68);
  v27 = sub_24B628F28(&qword_27F02ADD0, &qword_27F02ADC8, &unk_24B639D68);
  v44 = v26;
  v45 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v37;
  sub_24B6392A4();
  return (*(v38 + 8))(v25, v28);
}

uint64_t sub_24B61BBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE88, &qword_24B639F18);
  v107 = *(v126 - 8);
  v3 = *(v107 + 64);
  v4 = MEMORY[0x28223BE20](v126);
  v125 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v123 = &v94 - v6;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE90, &qword_24B639F20);
  v103 = *(v105 - 1);
  v7 = *(v103 + 64);
  MEMORY[0x28223BE20](v105);
  v102 = &v94 - v8;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE98, &qword_24B639F28);
  v130 = *(v124 - 8);
  v9 = v130[8];
  v10 = MEMORY[0x28223BE20](v124);
  v122 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v120 = &v94 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEA0, &qword_24B639F30);
  v100 = *(v101 - 1);
  v13 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v94 - v14;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEA8, &qword_24B639F38);
  v129 = *(v121 - 8);
  v15 = v129[8];
  v16 = MEMORY[0x28223BE20](v121);
  v119 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v117 = &v94 - v18;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEB0, &qword_24B639F40);
  v97 = *(v98 - 8);
  v19 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v96 = &v94 - v20;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEB8, &qword_24B639F48);
  v128 = *(v118 - 8);
  v21 = v128[8];
  v22 = MEMORY[0x28223BE20](v118);
  v116 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v115 = &v94 - v24;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEC0, &qword_24B639F50);
  v25 = *(v95 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v95);
  v28 = &v94 - v27;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEC8, &qword_24B639F58);
  v127 = *(v114 - 8);
  v29 = v127[8];
  v30 = MEMORY[0x28223BE20](v114);
  v113 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v112 = &v94 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AED0, &qword_24B639F60);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v94 - v36;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AED8, &qword_24B639F68);
  v110 = *(v111 - 8);
  v38 = v110[8];
  v39 = MEMORY[0x28223BE20](v111);
  v109 = &v94 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = &v94 - v41;
  sub_24B639524();
  v104 = sub_24B639514();
  sub_24B6394D4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_24B6393C4();
  sub_24B638F14();
  sub_24B6273CC();
  sub_24B639274();
  v44 = (*(v34 + 8))(v37, v33);
  v108 = v42;
  MEMORY[0x28223BE20](v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEE8, &qword_24B639F70);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AEF0, &qword_24B639F78);
  v46 = a1;
  v47 = sub_24B6390D4();
  v48 = sub_24B628F28(&qword_27F02AEF8, &qword_27F02AEF0, &qword_24B639F78);
  v133 = v45;
  v134 = v47;
  v135 = v48;
  v136 = MEMORY[0x277CDE058];
  swift_getOpaqueTypeConformance2();
  sub_24B6393C4();
  sub_24B638F14();
  sub_24B62745C();
  v49 = v95;
  sub_24B639274();
  v50 = (*(v25 + 8))(v28, v49);
  MEMORY[0x28223BE20](v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF08, &qword_24B639F80);
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AF10, &qword_24B639F88);
  v52 = sub_24B639164();
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AF18, &qword_24B639F90);
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AF20, &qword_24B639F98);
  v55 = sub_24B628F28(&qword_27F02AF28, &qword_27F02AF20, &qword_24B639F98);
  v133 = v54;
  v134 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v133 = v53;
  v134 = OpaqueTypeConformance2;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = sub_24B6278EC(&qword_27F02AF30, MEMORY[0x277CDE3C8]);
  v133 = v51;
  v134 = v52;
  v135 = v57;
  v136 = v58;
  swift_getOpaqueTypeConformance2();
  v59 = v96;
  sub_24B6393C4();
  sub_24B638F14();
  sub_24B627584();
  v60 = v98;
  sub_24B639274();
  v61 = (*(v97 + 8))(v59, v60);
  MEMORY[0x28223BE20](v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF40, &qword_24B639FA0);
  sub_24B628F28(&qword_27F02AF48, &qword_27F02AF40, &qword_24B639FA0);
  v62 = v99;
  sub_24B6393C4();
  sub_24B638F14();
  sub_24B62775C();
  v63 = v101;
  sub_24B639274();
  v64 = (*(v100 + 8))(v62, v63);
  MEMORY[0x28223BE20](v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF58, &qword_24B639FA8);
  sub_24B628F28(&qword_27F02AF60, &qword_27F02AF58, &qword_24B639FA8);
  v65 = v102;
  sub_24B6393C4();
  sub_24B638F14();
  sub_24B627820();
  v66 = v105;
  sub_24B639274();
  (*(v103 + 8))(v65, v66);
  v67 = (v46 + *(type metadata accessor for InferenceRecordFeedbackView() + 52));
  v68 = *v67;
  v69 = *(v67 + 1);
  v131 = v68;
  v132 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  v70 = sub_24B639354();
  v105 = &v94;
  v103 = v133;
  v102 = v134;
  LODWORD(v101) = v135;
  v71 = MEMORY[0x28223BE20](v70);
  MEMORY[0x28223BE20](v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF70, &qword_24B639FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF78, &qword_24B639FB8);
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AF80, &qword_24B639FC0);
  v73 = sub_24B638F64();
  v74 = sub_24B628F28(&qword_27F02AF88, &qword_27F02AF80, &qword_24B639FC0);
  v75 = sub_24B6278EC(&qword_27F02AF90, MEMORY[0x277CDDB18]);
  v133 = v72;
  v134 = v73;
  v135 = v74;
  v136 = v75;
  swift_getOpaqueTypeConformance2();
  sub_24B628F28(&qword_27F02AF98, &qword_27F02AF78, &qword_24B639FB8);
  sub_24B6393B4();
  v99 = v110[2];
  v76 = v109;
  v77 = v111;
  (v99)(v109, v108, v111);
  v105 = v127[2];
  (v105)(v113, v112, v114);
  v103 = v128[2];
  (v103)(v116, v115, v118);
  v102 = v129[2];
  (v102)(v119, v117, v121);
  v101 = v130[2];
  (v101)(v122, v120, v124);
  v78 = v107;
  v100 = *(v107 + 16);
  (v100)(v125, v123, v126);
  v79 = v106;
  (v99)(v106, v76, v77);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AFA0, &qword_24B639FC8);
  (v105)(v79 + v80[12], v113, v114);
  v81 = v118;
  (v103)(v79 + v80[16], v116, v118);
  v82 = v121;
  (v102)(v79 + v80[20], v119, v121);
  v83 = v124;
  (v101)(v79 + v80[24], v122, v124);
  v84 = v126;
  (v100)(v79 + v80[28], v125, v126);
  v85 = *(v78 + 8);
  v85(v123, v84);
  v86 = v130[1];
  ++v130;
  v86(v120, v83);
  v87 = v129[1];
  ++v129;
  v87(v117, v82);
  v88 = v128[1];
  ++v128;
  v88(v115, v81);
  v89 = v127[1];
  ++v127;
  v90 = v114;
  v89(v112, v114);
  v91 = v110[1];
  v92 = v111;
  v91(v108, v111);
  v85(v125, v126);
  v86(v122, v124);
  v87(v119, v121);
  v88(v116, v118);
  v89(v113, v90);
  v91(v109, v92);
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

uint64_t sub_24B61CF1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24B638C54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B638BB4();
  v7 = sub_24B638C34();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v17[0] = v7;
  v17[1] = v9;
  sub_24B6279B8();
  v10 = sub_24B639204();
  v12 = v11;
  LOBYTE(v9) = v13;
  v15 = v14;

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_24B61D0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[0] = a1;
  v21[2] = a2;
  v22 = sub_24B6390D4();
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v22);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B168, &qword_24B63A1A8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEF0, &qword_24B639F78);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  sub_24B639524();
  v21[1] = sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = *(type metadata accessor for InferenceRecordFeedbackView() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);
  sub_24B639354();
  sub_24B6283BC(v12, v10, &qword_27F02B168, &qword_24B63A1A8);
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD88, &qword_24B639D38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B170, &qword_24B63A1B0);
  sub_24B628D7C();
  sub_24B628E30();
  sub_24B639384();
  sub_24B628424(v12, &qword_27F02B168, &qword_24B63A1A8);
  sub_24B6390C4();
  sub_24B628F28(&qword_27F02AEF8, &qword_27F02AEF0, &qword_24B639F78);
  v19 = v22;
  sub_24B639244();
  (*(v2 + 8))(v5, v19);
  (*(v14 + 8))(v17, v13);
}

uint64_t sub_24B61D488()
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B638CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B190, &qword_24B63A1B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B198, &qword_24B63A1C0);
  sub_24B628F28(&qword_27F02B1A0, &qword_27F02B190, &qword_24B63A1B8);
  sub_24B638D14();
  v0 = MEMORY[0x277D0A190];
  sub_24B6278EC(&qword_27F02B180, MEMORY[0x277D0A190]);
  swift_getOpaqueTypeConformance2();
  sub_24B6278EC(&qword_27F02B1A8, v0);
  sub_24B6393A4();
}

uint64_t sub_24B61D678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B638D14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B198, &qword_24B63A1C0);
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  sub_24B639524();
  v34 = sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(v5 + 16);
  v13(v8, a1, v4);
  v14 = (*(v5 + 88))(v8, v4);
  v15 = *MEMORY[0x277D0A188];
  v38 = a1;
  v39 = a2;
  v37 = v4;
  v33 = v13;
  if (v14 == v15)
  {
    v16 = 0xA400000000000000;
    v17 = 2375131120;
LABEL_9:
    v40 = v17;
    v41 = v16;
    sub_24B6279B8();
    v18 = sub_24B639204();
    v20 = v19;
    v22 = v21;
    sub_24B6391B4();
    v23 = sub_24B6391E4();
    v25 = v24;
    v27 = v26;
    v32 = v28;

    sub_24B627954(v18, v20, v22 & 1);

    v29 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADD8, &qword_24B639D78) + 36)];
    v33(v29, v38, v37);
    v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE0, &qword_24B639D80) + 36)] = 1;
    *v12 = v23;
    *(v12 + 1) = v25;
    v12[16] = v27 & 1;
    *(v12 + 3) = v32;
    (*(v35 + 32))(v39, v12, v36);
  }

  if (v14 == *MEMORY[0x277D0A180])
  {
    v16 = 0xA400000000000000;
    v17 = 2391908336;
    goto LABEL_9;
  }

  if (v14 == *MEMORY[0x277D0A178])
  {
    v16 = 0xAD00008FB8EF8299;
    v17 = 0xE28D80E2B7A49FF0;
    goto LABEL_9;
  }

  result = sub_24B6395A4();
  __break(1u);
  return result;
}

uint64_t sub_24B61DA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_24B639164();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF20, &qword_24B639F98);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF18, &qword_24B639F90);
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF10, &qword_24B639F88);
  v36 = *(v14 - 8);
  v37 = v14;
  v15 = *(v36 + 64);
  MEMORY[0x28223BE20](v14);
  v35 = &v32 - v16;
  sub_24B639524();
  v34 = sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v47 = sub_24B61DF50();
  v48 = v17;
  v18 = type metadata accessor for InferenceRecordFeedbackView();
  v19 = (a1 + *(v18 + 28));
  v20 = *v19;
  v21 = *(v19 + 2);
  v45 = v20;
  v46 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B128, &qword_24B63A160);
  sub_24B639354();
  sub_24B6279B8();
  sub_24B6393E4();
  v22 = sub_24B628F28(&qword_27F02AF28, &qword_27F02AF20, &qword_24B639F98);
  sub_24B6392B4();
  (*(v32 + 8))(v9, v6);
  v23 = (a1 + *(v18 + 48));
  v24 = *v23;
  v25 = *(v23 + 1);
  LOBYTE(v23) = v23[16];
  LOBYTE(v42) = v24;
  v43 = v25;
  LOBYTE(v44) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B150, &qword_24B63A188);
  sub_24B638EC4();
  v42 = v6;
  v43 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v35;
  sub_24B639294();

  (*(v33 + 8))(v13, v10);
  v28 = v38;
  sub_24B639154();
  v42 = v10;
  v43 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24B6278EC(&qword_27F02AF30, MEMORY[0x277CDE3C8]);
  v29 = v37;
  v30 = v41;
  sub_24B639264();
  (*(v40 + 8))(v28, v30);
  (*(v36 + 8))(v27, v29);
}

unint64_t sub_24B61DF50()
{
  v0 = sub_24B638D14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B158, &qword_24B63A1A0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD88, &qword_24B639D38);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v18 = *(type metadata accessor for InferenceRecordFeedbackView() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);
  sub_24B639334();
  (*(v1 + 104))(v15, *MEMORY[0x277D0A178], v0);
  (*(v1 + 56))(v15, 0, 1, v0);
  v19 = *(v5 + 56);
  sub_24B6283BC(v17, v8, &qword_27F02AD88, &qword_24B639D38);
  sub_24B6283BC(v15, &v8[v19], &qword_27F02AD88, &qword_24B639D38);
  v20 = *(v1 + 48);
  if (v20(v8, 1, v0) != 1)
  {
    sub_24B6283BC(v8, v28, &qword_27F02AD88, &qword_24B639D38);
    if (v20(&v8[v19], 1, v0) != 1)
    {
      v22 = &v8[v19];
      v23 = v27;
      (*(v1 + 32))(v27, v22, v0);
      sub_24B6278EC(&qword_27F02B160, MEMORY[0x277D0A190]);
      v24 = v28;
      v25 = sub_24B639424();
      v26 = *(v1 + 8);
      v26(v23, v0);
      sub_24B628424(v15, &qword_27F02AD88, &qword_24B639D38);
      sub_24B628424(v17, &qword_27F02AD88, &qword_24B639D38);
      v26(v24, v0);
      sub_24B628424(v8, &qword_27F02AD88, &qword_24B639D38);
      if (v25)
      {
        return 0xD00000000000002ELL;
      }

      return 0xD000000000000039;
    }

    sub_24B628424(v15, &qword_27F02AD88, &qword_24B639D38);
    sub_24B628424(v17, &qword_27F02AD88, &qword_24B639D38);
    (*(v1 + 8))(v28, v0);
LABEL_6:
    sub_24B628424(v8, &qword_27F02B158, &qword_24B63A1A0);
    return 0xD000000000000039;
  }

  sub_24B628424(v15, &qword_27F02AD88, &qword_24B639D38);
  sub_24B628424(v17, &qword_27F02AD88, &qword_24B639D38);
  if (v20(&v8[v19], 1, v0) != 1)
  {
    goto LABEL_6;
  }

  sub_24B628424(v8, &qword_27F02AD88, &qword_24B639D38);
  return 0xD00000000000002ELL;
}

uint64_t sub_24B61E3EC(uint64_t a1)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for InferenceRecordFeedbackView() + 36));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639354();
  sub_24B639394();
}

uint64_t sub_24B61E504@<X0>(uint64_t a1@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B639084();
  v2 = sub_24B6391F4();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_24B61E5FC@<X0>(uint64_t a1@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = sub_24B639024();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AFF8, &qword_24B639FF8);
  sub_24B61E6D0(a1 + *(v2 + 44));
}

uint64_t sub_24B61E6D0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B000, &qword_24B63A000);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B61E880(v8);
  sub_24B6283BC(v8, v6, &qword_27F02B000, &qword_24B63A000);
  *a1 = 0;
  *(a1 + 8) = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B008, &qword_24B63A008);
  sub_24B6283BC(v6, a1 + *(v9 + 48), &qword_27F02B000, &qword_24B63A000);
  v10 = a1 + *(v9 + 64);
  *v10 = 0;
  *(v10 + 8) = 1;
  sub_24B628424(v8, &qword_27F02B000, &qword_24B63A000);
  sub_24B628424(v6, &qword_27F02B000, &qword_24B63A000);
}

uint64_t sub_24B61E880@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v3 = sub_24B639074();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE58, "J+");
  v82 = *(v87 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v87);
  v81 = &v76 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B010, &qword_24B63A010);
  v7 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v90 = &v76 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B018, &qword_24B63A018);
  v9 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v85 = &v76 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B020, &qword_24B63A020);
  v11 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v86 = &v76 - v12;
  v13 = sub_24B6391A4();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for InferenceRecordFeedbackView();
  v18 = v17 - 8;
  v76 = *(v17 - 8);
  v19 = *(v76 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B028, &qword_24B63A028);
  v77 = *(v20 - 8);
  v21 = *(v77 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v76 - v22;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B030, &qword_24B63A030);
  v24 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v80 = &v76 - v25;
  v26 = v2;
  v27 = v2 + *(v18 + 48);
  v28 = *(v27 + 16);
  v29 = *(v27 + 24);
  v104 = *v27;
  LOBYTE(v105) = v28;
  *(&v105 + 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B038, &qword_24B63A038);
  sub_24B639334();
  v30 = v99;
  if (v100)
  {
    if (v100 == 1)
    {
      v31 = *(&v99 + 1);
      sub_24B639064();
      sub_24B639054();
      sub_24B6392F4();
      sub_24B639034();

      sub_24B639054();
      sub_24B639044();
      sub_24B626F54(v30, v31, 1);
      sub_24B639054();
      sub_24B639094();
      v32 = sub_24B6391F4();
      v34 = v33;
      v36 = v35 & 1;
      v111 = v35 & 1;
      v109 = 1;
      *&v99 = v32;
      *(&v99 + 1) = v33;
      LOBYTE(v100) = v35 & 1;
      *(&v100 + 1) = v110[0];
      DWORD1(v100) = *(v110 + 3);
      *(&v100 + 1) = v37;
      v101 = v93;
      v102 = v94;
      LOBYTE(v103) = v95;
      HIBYTE(v103) = 1;
      sub_24B6264D4(v32, v33, v35 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B040, &qword_24B63A040);
      sub_24B627A0C();
      sub_24B6390B4();
      v38 = v107;
      v39 = v90;
      *(v90 + 32) = v106;
      *(v39 + 48) = v38;
      *(v39 + 64) = v108;
      v40 = v105;
      *v39 = v104;
      *(v39 + 16) = v40;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B080, &qword_24B63A060);
      sub_24B627B7C();
      sub_24B627E64();
      sub_24B6390B4();
      sub_24B627954(v32, v34, v36);
    }

    else if (v99 == 0)
    {
      sub_24B626EA0(v26, &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      v63 = (*(v76 + 80) + 16) & ~*(v76 + 80);
      v64 = swift_allocObject();
      v65 = sub_24B626F74(&v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v64 + v63);
      MEMORY[0x28223BE20](v65);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B0E0, &qword_24B63A0E0);
      sub_24B628224();
      sub_24B639374();
      sub_24B639194();
      sub_24B628F28(&qword_27F02B0A8, &qword_27F02B028, &qword_24B63A028);
      sub_24B6278EC(&qword_27F02B0B0, MEMORY[0x277CDE400]);
      v66 = v79;
      v67 = v80;
      sub_24B639234();
      (*(v78 + 8))(v16, v66);
      (*(v77 + 8))(v23, v20);
      v68 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B0A0, &qword_24B63A068) + 36));
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B0C0, &qword_24B63A070) + 28);
      v70 = *MEMORY[0x277CDF420];
      v71 = sub_24B638EF4();
      (*(*(v71 - 8) + 104))(v68 + v69, v70, v71);
      *v68 = swift_getKeyPath();
      LOBYTE(v70) = sub_24B622CB4();
      KeyPath = swift_getKeyPath();
      v73 = swift_allocObject();
      *(v73 + 16) = (v70 & 1) == 0;
      v74 = (v67 + *(v83 + 36));
      *v74 = KeyPath;
      v74[1] = sub_24B6283A4;
      v74[2] = v73;
      sub_24B6283BC(v67, v85, &qword_27F02B030, &qword_24B63A030);
      swift_storeEnumTagMultiPayload();
      sub_24B627C34();
      sub_24B628F28(&qword_27F02AE50, &qword_27F02AE58, "J+");
      v75 = v86;
      sub_24B6390B4();
      sub_24B6283BC(v75, v90, &qword_27F02B020, &qword_24B63A020);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B080, &qword_24B63A060);
      sub_24B627B7C();
      sub_24B627E64();
      sub_24B6390B4();
      sub_24B628424(v75, &qword_27F02B020, &qword_24B63A020);
      return sub_24B628424(v67, &qword_27F02B030, &qword_24B63A030);
    }

    else
    {
      v59 = v81;
      sub_24B638F04();
      v60 = v82;
      v61 = v87;
      (*(v82 + 16))(v85, v59, v87);
      swift_storeEnumTagMultiPayload();
      sub_24B627C34();
      sub_24B628F28(&qword_27F02AE50, &qword_27F02AE58, "J+");
      v62 = v86;
      sub_24B6390B4();
      sub_24B6283BC(v62, v90, &qword_27F02B020, &qword_24B63A020);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B080, &qword_24B63A060);
      sub_24B627B7C();
      sub_24B627E64();
      sub_24B6390B4();
      sub_24B628424(v62, &qword_27F02B020, &qword_24B63A020);
      return (*(v60 + 8))(v59, v61);
    }
  }

  else
  {
    v42 = *(&v99 + 1);
    sub_24B639064();
    sub_24B639054();
    ErrorValue = swift_getErrorValue();
    v44 = *(*(v92 - 8) + 64);
    MEMORY[0x28223BE20](ErrorValue);
    (*(v46 + 16))(&v76 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_24B639474();
    sub_24B639044();

    sub_24B639054();
    sub_24B639094();
    v47 = sub_24B6391F4();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = swift_getKeyPath();
    v55 = swift_getKeyPath();
    v111 = 1;
    *&v93 = v47;
    *(&v93 + 1) = v49;
    LOBYTE(v94) = v51 & 1;
    *(&v94 + 1) = v104;
    DWORD1(v94) = *(&v104 + 3);
    *(&v94 + 1) = v53;
    *&v95 = v54;
    BYTE8(v95) = 1;
    *(&v95 + 9) = v99;
    HIDWORD(v95) = *(&v99 + 3);
    v96 = v55;
    v97 = 0;
    v98 = 1;
    v101 = v95;
    v102 = v55;
    v103 = 1;
    v99 = v93;
    v100 = v94;
    LOBYTE(v110[0]) = 0;
    sub_24B6283BC(&v93, &v104, &qword_27F02B040, &qword_24B63A040);
    sub_24B6283BC(&v93, &v104, &qword_27F02B040, &qword_24B63A040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B040, &qword_24B63A040);
    sub_24B627A0C();
    sub_24B6390B4();
    v56 = v107;
    v57 = v90;
    *(v90 + 32) = v106;
    *(v57 + 48) = v56;
    *(v57 + 64) = v108;
    v58 = v105;
    *v57 = v104;
    *(v57 + 16) = v58;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B080, &qword_24B63A060);
    sub_24B627B7C();
    sub_24B627E64();
    sub_24B6390B4();
    sub_24B626F54(v30, v42, 0);
    sub_24B628424(&v93, &qword_27F02B040, &qword_24B63A040);
    return sub_24B628424(&v93, &qword_27F02B040, &qword_24B63A040);
  }
}

uint64_t sub_24B61F690@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(*a1 + 16);
  v112[0] = **a1;
  v112[1] = v6;
  v8 = *(v4 + 48);
  v7 = *(v4 + 64);
  v9 = *(v4 + 32);
  v113 = *(v4 + 80);
  v112[4] = v7;
  v112[2] = v9;
  v112[3] = v8;
  v10 = *(v4 + 16);
  __src[0] = *v4;
  __src[1] = v10;
  v11 = *(v4 + 32);
  v12 = *(v4 + 48);
  v13 = *(v4 + 64);
  v14 = *(v4 + 80);
  __src[3] = v12;
  __src[4] = v13;
  __src[2] = v11;
  v15 = *v5;
  v114[1] = v5[1];
  v114[0] = v15;
  v16 = v5[2];
  v17 = v5[3];
  v18 = v5[4];
  v115 = *(v5 + 10);
  v114[4] = v18;
  v114[3] = v17;
  v114[2] = v16;
  v19 = *v5;
  *(&__src[6] + 8) = v5[1];
  *(&__src[5] + 8) = v19;
  v20 = v5[2];
  v21 = v5[3];
  v22 = v5[4];
  v23 = *(v5 + 10);
  *&__src[5] = v14;
  *(&__src[10] + 1) = v23;
  *(&__src[9] + 8) = v22;
  *(&__src[8] + 8) = v21;
  *(&__src[7] + 8) = v20;
  v24 = a1[2];
  v25 = a1[3];
  v26 = *(v24 + 16);
  v116[0] = *v24;
  v116[1] = v26;
  v27 = *(v24 + 32);
  v28 = *(v24 + 48);
  v29 = *(v24 + 64);
  v117 = *(v24 + 80);
  v116[4] = v29;
  v116[3] = v28;
  v116[2] = v27;
  v30 = *(v24 + 16);
  __src[11] = *v24;
  __src[12] = v30;
  v31 = *(v24 + 32);
  v32 = *(v24 + 48);
  v33 = *(v24 + 64);
  v34 = *(v24 + 80);
  __src[14] = v32;
  __src[15] = v33;
  __src[13] = v31;
  v35 = *(v25 + 16);
  v118[0] = *v25;
  v118[1] = v35;
  v36 = *(v25 + 32);
  v37 = *(v25 + 48);
  v38 = *(v25 + 64);
  v119 = *(v25 + 80);
  v118[4] = v38;
  v118[3] = v37;
  v118[2] = v36;
  v39 = *(v25 + 16);
  *(&__src[16] + 8) = *v25;
  *(&__src[17] + 8) = v39;
  v40 = *(v25 + 32);
  v41 = *(v25 + 48);
  v42 = *(v25 + 64);
  v43 = *(v25 + 80);
  *(&__src[19] + 8) = v41;
  *(&__src[20] + 8) = v42;
  *(&__src[18] + 8) = v40;
  *&__src[16] = v34;
  *(&__src[21] + 1) = v43;
  v44 = a1[4];
  v45 = a1[5];
  v46 = v44[1];
  v120[0] = *v44;
  v120[1] = v46;
  v47 = v44[2];
  v48 = v44[3];
  v49 = v44[4];
  *(v121 + 9) = *(v44 + 73);
  v121[0] = v49;
  v120[3] = v48;
  v120[2] = v47;
  v50 = v44[2];
  v51 = v44[3];
  v52 = v44[4];
  *(&__src[26] + 9) = *(v44 + 73);
  v53 = v44[1];
  __src[22] = *v44;
  __src[23] = v53;
  __src[24] = v50;
  __src[25] = v51;
  v54 = v45[1];
  v122[0] = *v45;
  v122[1] = v54;
  v55 = v45[2];
  v56 = v45[3];
  v57 = v45[4];
  *(v123 + 9) = *(v45 + 73);
  v123[0] = v57;
  v122[3] = v56;
  v122[2] = v55;
  v58 = v45[2];
  v59 = v45[3];
  v60 = v45[4];
  *(&__src[32] + 9) = *(v45 + 73);
  v61 = *v45;
  v62 = v45[1];
  __src[26] = v52;
  __src[28] = v61;
  __src[29] = v62;
  __src[31] = v59;
  __src[32] = v60;
  __src[30] = v58;
  v63 = a1[6];
  v64 = a1[7];
  v65 = v63[1];
  v124[0] = *v63;
  v124[1] = v65;
  v66 = v63[2];
  v67 = v63[3];
  v68 = v63[4];
  *(v125 + 9) = *(v63 + 73);
  v125[0] = v68;
  v124[3] = v67;
  v124[2] = v66;
  v69 = v63[2];
  v70 = v63[3];
  v71 = v63[4];
  *(&__src[38] + 9) = *(v63 + 73);
  v72 = v63[1];
  __src[34] = *v63;
  __src[35] = v72;
  __src[36] = v69;
  __src[37] = v70;
  v73 = v64[1];
  v126[0] = *v64;
  v126[1] = v73;
  v74 = v64[2];
  v75 = v64[3];
  v76 = v64[4];
  *(v127 + 9) = *(v64 + 73);
  v127[0] = v76;
  v126[3] = v75;
  v126[2] = v74;
  v77 = v64[2];
  v78 = v64[3];
  v79 = v64[4];
  *(&__src[44] + 9) = *(v64 + 73);
  v80 = *v64;
  v81 = v64[1];
  __src[38] = v71;
  __src[40] = v80;
  __src[41] = v81;
  __src[43] = v78;
  __src[44] = v79;
  __src[42] = v77;
  v82 = a1[8];
  v83 = a1[9];
  v84 = *v82;
  v128[1] = v82[1];
  v85 = v82[2];
  v86 = v82[3];
  v87 = v82[4];
  v129 = *(v82 + 10);
  v128[4] = v87;
  v128[3] = v86;
  v128[2] = v85;
  v128[0] = v84;
  v88 = v82[1];
  __src[46] = *v82;
  __src[47] = v88;
  v89 = v82[2];
  v90 = v82[3];
  v91 = v82[4];
  *&__src[51] = *(v82 + 10);
  __src[49] = v90;
  __src[50] = v91;
  __src[48] = v89;
  v92 = *(v83 + 16);
  v130[0] = *v83;
  v130[1] = v92;
  v93 = *(v83 + 32);
  v94 = *(v83 + 48);
  v95 = *(v83 + 64);
  v131 = *(v83 + 80);
  v130[3] = v94;
  v130[4] = v95;
  v130[2] = v93;
  v96 = *(v83 + 16);
  *(&__src[51] + 8) = *v83;
  *(&__src[52] + 8) = v96;
  v97 = *(v83 + 80);
  v98 = *(v83 + 32);
  v99 = *(v83 + 64);
  *(&__src[54] + 8) = *(v83 + 48);
  *(&__src[55] + 8) = v99;
  *(&__src[53] + 8) = v98;
  *(&__src[56] + 1) = v97;
  v100 = a1[10];
  v101 = *(v100 + 16);
  v132[0] = *v100;
  v132[1] = v101;
  v102 = *(v100 + 32);
  v103 = *(v100 + 48);
  v104 = *(v100 + 64);
  v133 = *(v100 + 80);
  v132[3] = v103;
  v132[4] = v104;
  v132[2] = v102;
  v105 = *(v100 + 16);
  __src[57] = *v100;
  __src[58] = v105;
  v106 = *(v100 + 32);
  v107 = *(v100 + 48);
  v108 = *(v100 + 64);
  *&__src[62] = *(v100 + 80);
  __src[61] = v108;
  __src[60] = v107;
  __src[59] = v106;
  memcpy(a2, __src, 0x3E8uLL);
  sub_24B6283BC(v112, v110, &qword_27F02AFC0, &qword_24B639FE0);
  sub_24B6283BC(v114, v110, &qword_27F02AFC0, &qword_24B639FE0);
  sub_24B6283BC(v116, v110, &qword_27F02AFC0, &qword_24B639FE0);
  sub_24B6283BC(v118, v110, &qword_27F02AFC0, &qword_24B639FE0);
  sub_24B6283BC(v120, v110, &qword_27F02AFC8, &qword_24B639FE8);
  sub_24B6283BC(v122, v110, &qword_27F02AFC8, &qword_24B639FE8);
  sub_24B6283BC(v124, v110, &qword_27F02AFC8, &qword_24B639FE8);
  sub_24B6283BC(v126, v110, &qword_27F02AFC8, &qword_24B639FE8);
  sub_24B6283BC(v128, v110, &qword_27F02AFC0, &qword_24B639FE0);
  sub_24B6283BC(v130, v110, &qword_27F02AFC0, &qword_24B639FE0);
  return sub_24B6283BC(v132, v110, &qword_27F02AFC0, &qword_24B639FE0);
}

uint64_t sub_24B61FB24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v104 = a1;
  v98 = a2;
  v2 = sub_24B638B54();
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = *(v96 + 64);
  MEMORY[0x28223BE20](v2);
  v94 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AFB8, &qword_24B639FD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD80, &qword_24B639D30);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v80 = &v74 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v78 = &v74 - v15;
  MEMORY[0x28223BE20](v14);
  v75 = &v74 - v16;
  v17 = sub_24B638C54();
  v102 = *(v17 - 8);
  v103 = v17;
  v18 = *(v102 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v81 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v79 = &v74 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v77 = &v74 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v101 = &v74 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v74 - v27;
  v29 = sub_24B638C94();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B639524();
  v99 = sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B638BC4();
  sub_24B638C64();
  v34 = *(v30 + 8);
  v84 = v33;
  v85 = v30 + 8;
  v86 = v29;
  v82 = v34;
  v34(v33, v29);
  v95 = sub_24B6390A4();
  LOBYTE(v198[0]) = 1;
  sub_24B622A38(v194);

  *&v193[7] = v194[0];
  *&v193[23] = v194[1];
  *&v193[39] = v194[2];
  *&v193[55] = v194[3];
  v93 = LOBYTE(v198[0]);
  sub_24B638B94();
  v92 = sub_24B6390A4();
  LOBYTE(v198[0]) = 1;
  sub_24B622A38(v195);

  *&v192[7] = v195[0];
  *&v192[23] = v195[1];
  *&v192[39] = v195[2];
  *&v192[55] = v195[3];
  v91 = LOBYTE(v198[0]);
  sub_24B638BB4();
  sub_24B638C14();
  v35 = v103;
  v36 = v102 + 8;
  v37 = *(v102 + 8);
  v37(v28, v103);
  v90 = sub_24B6390A4();
  LOBYTE(v198[0]) = 1;
  sub_24B622A38(v196);

  *&v191[7] = v196[0];
  *&v191[23] = v196[1];
  *&v191[39] = v196[2];
  *&v191[55] = v196[3];
  v38 = v36;
  v89 = LOBYTE(v198[0]);
  sub_24B638BB4();
  sub_24B638C04();
  v37(v28, v35);
  v88 = sub_24B6390A4();
  LOBYTE(v198[0]) = 1;
  sub_24B622A38(v197);

  *&v190[7] = v197[0];
  *&v190[23] = v197[1];
  v39 = v37;
  *&v190[39] = v197[2];
  *&v190[55] = v197[3];
  v87 = LOBYTE(v198[0]);
  sub_24B638BB4();
  sub_24B638C24();
  v41 = v40;
  v37(v28, v35);
  sub_24B620D88(0xD000000000000012, 0x800000024B63B660, v41, 0, v198);
  v42 = v101;
  sub_24B638BB4();
  v43 = v75;
  sub_24B638BF4();
  v39(v42, v35);
  v44 = sub_24B638DD4();
  v45 = *(v44 - 8);
  v101 = *(v45 + 48);
  v46 = (v101)(v43, 1, v44);
  v100 = v45;
  if (v46 == 1)
  {
    sub_24B628424(v43, &qword_27F02AD80, &qword_24B639D30);
    v47 = 0;
  }

  else
  {
    sub_24B638DC4();
    v49 = v48;
    (*(v45 + 8))(v43, v44);
    v47 = v49;
  }

  v50 = v78;
  sub_24B620D88(0xD000000000000012, 0x800000024B63B680, v47, v46 == 1, v188);
  v185 = v188[2];
  v186 = v188[3];
  v187[0] = v189[0];
  *(v187 + 9) = *(v189 + 9);
  v183 = v188[0];
  v184 = v188[1];
  v51 = v77;
  sub_24B638BB4();
  sub_24B638BF4();
  v39(v51, v103);
  v52 = (v101)(v50, 1, v44);
  v53 = v80;
  if (v52 == 1)
  {
    sub_24B628424(v50, &qword_27F02AD80, &qword_24B639D30);
    v54 = 0;
  }

  else
  {
    sub_24B638DB4();
    v56 = v55;
    (*(v100 + 8))(v50, v44);
    v54 = v56;
  }

  sub_24B620D88(0xD000000000000011, 0x800000024B63B6A0, v54, v52 == 1, v181);
  v178 = v181[2];
  v179 = v181[3];
  v180[0] = v182[0];
  *(v180 + 9) = *(v182 + 9);
  v176 = v181[0];
  v177 = v181[1];
  v57 = v79;
  sub_24B638BB4();
  sub_24B638BF4();
  v39(v57, v103);
  v58 = (v101)(v53, 1, v44);
  v102 = v38;
  v76 = v39;
  if (v58 == 1)
  {
    sub_24B628424(v53, &qword_27F02AD80, &qword_24B639D30);
    v59 = 2;
  }

  else
  {
    v59 = sub_24B638D84();
    (*(v100 + 8))(v53, v44);
  }

  sub_24B6211DC(v59, v174);
  v171 = v174[2];
  v172 = v174[3];
  v173[0] = v175[0];
  *(v173 + 9) = *(v175 + 9);
  v169 = v174[0];
  v170 = v174[1];
  v60 = v81;
  sub_24B638BB4();
  v61 = v83;
  sub_24B638BF4();
  v76(v60, v103);
  if ((v101)(v61, 1, v44) == 1)
  {
    v62 = &qword_27F02AD80;
    v63 = &qword_24B639D30;
    v64 = v61;
  }

  else
  {
    v65 = v74;
    sub_24B638DA4();
    v66 = v65;
    (*(v100 + 8))(v61, v44);
    v67 = sub_24B638DF4();
    v68 = *(v67 - 8);
    if ((*(v68 + 48))(v66, 1, v67) != 1)
    {
      sub_24B638DE4();
      (*(v68 + 8))(v66, v67);
      goto LABEL_18;
    }

    v62 = &qword_27F02AFB8;
    v63 = &qword_24B639FD8;
    v64 = v66;
  }

  sub_24B628424(v64, v62, v63);
LABEL_18:
  v103 = sub_24B6390A4();
  LOBYTE(v159[0]) = 1;
  sub_24B622A38(v146);

  *&v145[7] = v146[0];
  *&v145[23] = v146[1];
  *&v145[39] = v146[2];
  *&v145[55] = v146[3];
  LODWORD(v102) = LOBYTE(v159[0]);
  v69 = v84;
  sub_24B638BC4();
  sub_24B638C74();
  v82(v69, v86);
  v101 = sub_24B6390A4();
  LOBYTE(v159[0]) = 1;
  sub_24B622A38(v143);

  *&v144[7] = v143[0];
  *&v144[23] = v143[1];
  *&v144[39] = v143[2];
  *&v144[55] = v143[3];
  LODWORD(v100) = LOBYTE(v159[0]);
  v71 = v94;
  MEMORY[0x24C244690](v70);
  sub_24B638B34();
  (*(v96 + 8))(v71, v97);
  v72 = sub_24B6390A4();
  LOBYTE(v159[0]) = 1;
  sub_24B622A38(v140);

  *&v142[7] = v140[0];
  *&v142[23] = v140[1];
  *&v142[39] = v140[2];
  *&v142[55] = v141;
  *&v138[17] = *&v193[16];
  *&v138[33] = *&v193[32];
  *&v138[49] = *&v193[48];
  *&v138[1] = *v193;
  *&v136[17] = *&v192[16];
  *&v136[33] = *&v192[32];
  *&v136[49] = *&v192[48];
  *&v136[1] = *v192;
  *&v134[17] = *&v191[16];
  *&v134[33] = *&v191[32];
  *&v134[49] = *&v191[48];
  *&v134[1] = *v191;
  *&v132[17] = *&v190[16];
  *&v132[33] = *&v190[32];
  *&v132[49] = *&v190[48];
  *&v132[1] = *v190;
  v128 = v198[2];
  v129 = v198[3];
  v130[0] = v199[0];
  *(v130 + 9) = *(v199 + 9);
  v126 = v198[0];
  v127 = v198[1];
  v123 = v185;
  v124 = v186;
  v125[0] = v187[0];
  *(v125 + 9) = *(v187 + 9);
  v121 = v183;
  v122 = v184;
  v118 = v178;
  v119 = v179;
  v120[0] = v180[0];
  *(v120 + 9) = *(v180 + 9);
  v116 = v176;
  v117 = v177;
  v113 = v171;
  v114 = v172;
  v115[0] = v173[0];
  *(v115 + 9) = *(v173 + 9);
  v111 = v169;
  v112 = v170;
  *&v110[17] = *&v145[16];
  *&v110[33] = *&v145[32];
  *&v110[49] = *&v145[48];
  *&v110[1] = *v145;
  *&v108[17] = *&v144[16];
  *&v108[33] = *&v144[32];
  *&v108[49] = *&v144[48];
  *&v108[1] = *v144;
  *&v106[17] = *&v142[16];
  *&v106[33] = *&v142[32];
  *&v106[49] = *&v142[48];
  v137 = v95;
  v138[0] = v93;
  *&v138[64] = *&v193[63];
  v135 = v92;
  v136[0] = v91;
  *&v136[64] = *&v192[63];
  v139[0] = &v137;
  v139[1] = &v135;
  v133 = v90;
  v134[0] = v89;
  *&v134[64] = *&v191[63];
  v131 = v88;
  v132[0] = v87;
  *&v132[64] = *&v190[63];
  v139[2] = &v133;
  v139[3] = &v131;
  v139[4] = &v126;
  v139[5] = &v121;
  v139[6] = &v116;
  v139[7] = &v111;
  v109 = v103;
  v110[0] = v102;
  *&v110[64] = *&v145[63];
  v107 = v101;
  v108[0] = v100;
  *&v108[64] = *&v144[63];
  v139[8] = &v109;
  v139[9] = &v107;
  v105 = v72;
  v106[0] = v159[0];
  *&v106[64] = *(&v141 + 1);
  *&v106[1] = *v142;
  v139[10] = &v105;
  sub_24B61F690(v139, v98);
  v147[2] = *&v106[16];
  v147[3] = *&v106[32];
  v147[4] = *&v106[48];
  v148 = *&v106[64];
  v147[0] = v105;
  v147[1] = *v106;
  sub_24B628424(v147, &qword_27F02AFC0, &qword_24B639FE0);
  v149[2] = *&v108[16];
  v149[3] = *&v108[32];
  v149[4] = *&v108[48];
  v150 = *&v108[64];
  v149[0] = v107;
  v149[1] = *v108;
  sub_24B628424(v149, &qword_27F02AFC0, &qword_24B639FE0);
  v151[2] = *&v110[16];
  v151[3] = *&v110[32];
  v151[4] = *&v110[48];
  v152 = *&v110[64];
  v151[0] = v109;
  v151[1] = *v110;
  sub_24B628424(v151, &qword_27F02AFC0, &qword_24B639FE0);
  v153[2] = v113;
  v153[3] = v114;
  v154[0] = v115[0];
  *(v154 + 9) = *(v115 + 9);
  v153[0] = v111;
  v153[1] = v112;
  sub_24B628424(v153, &qword_27F02AFC8, &qword_24B639FE8);
  v155[2] = v118;
  v155[3] = v119;
  v156[0] = v120[0];
  *(v156 + 9) = *(v120 + 9);
  v155[0] = v116;
  v155[1] = v117;
  sub_24B628424(v155, &qword_27F02AFC8, &qword_24B639FE8);
  v157[2] = v123;
  v157[3] = v124;
  v158[0] = v125[0];
  *(v158 + 9) = *(v125 + 9);
  v157[0] = v121;
  v157[1] = v122;
  sub_24B628424(v157, &qword_27F02AFC8, &qword_24B639FE8);
  v159[2] = v128;
  v159[3] = v129;
  v160[0] = v130[0];
  *(v160 + 9) = *(v130 + 9);
  v159[0] = v126;
  v159[1] = v127;
  sub_24B628424(v159, &qword_27F02AFC8, &qword_24B639FE8);
  v161[2] = *&v132[16];
  v161[3] = *&v132[32];
  v161[4] = *&v132[48];
  v162 = *&v132[64];
  v161[0] = v131;
  v161[1] = *v132;
  sub_24B628424(v161, &qword_27F02AFC0, &qword_24B639FE0);
  v163[2] = *&v134[16];
  v163[3] = *&v134[32];
  v163[4] = *&v134[48];
  v164 = *&v134[64];
  v163[0] = v133;
  v163[1] = *v134;
  sub_24B628424(v163, &qword_27F02AFC0, &qword_24B639FE0);
  v165[2] = *&v136[16];
  v165[3] = *&v136[32];
  v165[4] = *&v136[48];
  v166 = *&v136[64];
  v165[0] = v135;
  v165[1] = *v136;
  sub_24B628424(v165, &qword_27F02AFC0, &qword_24B639FE0);
  v167[2] = *&v138[16];
  v167[3] = *&v138[32];
  v167[4] = *&v138[48];
  v168 = *&v138[64];
  v167[0] = v137;
  v167[1] = *v138;
  sub_24B628424(v167, &qword_27F02AFC0, &qword_24B639FE0);
}

double sub_24B620D88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>)
{
  v28[0] = a3;
  v28[1] = a1;
  v28[2] = a2;
  v29 = a5;
  v6 = sub_24B638A64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B638B74();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AFD8, &qword_24B639FF0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v28 - v19;
  if (a4)
  {
    v21 = sub_24B6390A4();
    LOBYTE(v44) = 1;
    sub_24B622A38(&v39);
    *&v38[55] = v42;
    *&v38[39] = v41;
    *&v38[23] = v40;
    *&v38[7] = v39;
    v34 = *&v38[16];
    v35 = *&v38[32];
    *v36 = *&v38[48];
    v43 = 1;
    v31 = v21;
    v32 = v44;
    *&v36[15] = *(&v42 + 1);
    v33 = *v38;
    v37 = 1;
  }

  else
  {
    *&v31 = v28[0];
    sub_24B638B64();
    sub_24B627964();
    sub_24B638A34();
    sub_24B638A54();
    MEMORY[0x24C244530](v10, v13);
    (*(v7 + 8))(v10, v6);
    v22 = *(v14 + 8);
    v22(v18, v13);
    sub_24B628F28(&qword_27F02AFE8, &qword_27F02AFD8, &qword_24B639FF0);
    sub_24B6393F4();
    v22(v20, v13);
    v31 = v44;

    MEMORY[0x24C244F90](0x7363657320, 0xE500000000000000);

    v23 = sub_24B6390A4();
    LOBYTE(v44) = 1;
    sub_24B622A38(&v39);

    *&v30[55] = v42;
    *&v30[39] = v41;
    *&v30[23] = v40;
    *&v30[7] = v39;
    v34 = *&v30[16];
    v35 = *&v30[32];
    *v36 = *&v30[48];
    v43 = 0;
    v31 = v23;
    v32 = v44;
    *&v36[15] = *(&v42 + 1);
    v33 = *v30;
    v37 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AFC0, &qword_24B639FE0);
  sub_24B628F28(&qword_27F02AFD0, &qword_27F02AFC0, &qword_24B639FE0);
  sub_24B6390B4();
  v24 = v47;
  v25 = v29;
  v29[2] = v46;
  v25[3] = v24;
  v25[4] = v48[0];
  *(v25 + 73) = *(v48 + 9);
  result = *&v44;
  v27 = v45;
  *v25 = v44;
  v25[1] = v27;
  return result;
}

double sub_24B6211DC@<D0>(char a1@<W2>, _OWORD *a2@<X8>)
{
  if (a1 == 2)
  {
    sub_24B6390A4();
    LOBYTE(v8) = 1;
    sub_24B622A38(v6);
    v7 = 1;
  }

  else
  {
    sub_24B6390A4();
    LOBYTE(v8) = 1;
    sub_24B622A38(v6);

    v7 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AFC0, &qword_24B639FE0);
  sub_24B628F28(&qword_27F02AFD0, &qword_27F02AFC0, &qword_24B639FE0);
  sub_24B6390B4();
  v3 = v11;
  a2[2] = v10;
  a2[3] = v3;
  a2[4] = v12[0];
  *(a2 + 73) = *(v12 + 9);
  result = *&v8;
  v5 = v9;
  *a2 = v8;
  a2[1] = v5;
  return result;
}

uint64_t sub_24B621414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = sub_24B638F64();
  v21 = *(v3 - 8);
  v22 = v3;
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InferenceRecordFeedbackView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF80, &qword_24B639FC0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  sub_24B639524();
  v20[0] = sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B626EA0(a1, v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = sub_24B626F74(v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  MEMORY[0x28223BE20](v17);
  v20[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AFA8, &qword_24B639FD0);
  sub_24B628F28(&qword_27F02AFB0, &qword_27F02AFA8, &qword_24B639FD0);
  sub_24B639374();
  sub_24B638F54();
  sub_24B628F28(&qword_27F02AF88, &qword_27F02AF80, &qword_24B639FC0);
  sub_24B6278EC(&qword_27F02AF90, MEMORY[0x277CDDB18]);
  v18 = v22;
  sub_24B639234();
  (*(v21 + 8))(v6, v18);
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_24B6217E0(uint64_t a1)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for InferenceRecordFeedbackView() + 52));
  v3 = *v2;
  v4 = *(v2 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639334();
  sub_24B639344();
}

__n128 sub_24B6218F8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_24B639024();
  v16 = 1;
  sub_24B6219EC(a1, &v11);

  v5 = v12;
  v6 = v14;
  v7 = v15;
  result = v11;
  v9 = v13;
  v10 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v9;
  *(a2 + 64) = v6;
  *(a2 + 72) = v7;
  return result;
}

uint64_t sub_24B6219EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B639084();
  v4 = sub_24B6391F4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = (a1 + *(type metadata accessor for InferenceRecordFeedbackView() + 52));
  v14 = *v11;
  v15 = *(v11 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639334();
  v12 = sub_24B6392F4();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  sub_24B6264D4(v4, v6, v8 & 1);

  sub_24B627954(v4, v6, v8 & 1);
}

uint64_t sub_24B621BAC(uint64_t a1)
{
  v2 = sub_24B6390F4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADC8, &unk_24B639D68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_24B6390E4();
  MEMORY[0x28223BE20](v9);
  *(&v12 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE40, "0+");
  sub_24B626DBC();
  sub_24B638F84();
  v10 = sub_24B628F28(&qword_27F02ADD0, &qword_27F02ADC8, &unk_24B639D68);
  MEMORY[0x24C244BF0](v8, v4, v10);
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_24B621DF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_24B639144();

    return sub_24B638F44();
  }

  else
  {
    sub_24B638F74();
    swift_getWitnessTable();
    sub_24B639114();
    sub_24B638F44();
    sub_24B639564();
    swift_getWitnessTable();
    sub_24B638F74();
    swift_getWitnessTable();
    sub_24B639114();
    return sub_24B638F44();
  }
}

uint64_t sub_24B621F5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_24B639144();
    sub_24B638F44();
  }

  else
  {
    sub_24B638F74();
    swift_getWitnessTable();
    sub_24B639114();
    sub_24B638F44();
    sub_24B639564();
    swift_getWitnessTable();
    sub_24B638F74();
    swift_getWitnessTable();
    sub_24B639114();
    sub_24B638F44();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24B62215C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v36 = a2;
  v2 = type metadata accessor for InferenceRecordFeedbackView();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE68, &qword_24B639ED0);
  v31 = *(v35 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v35);
  v30 = &v28 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE70, &qword_24B639ED8);
  v6 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE58, "J+");
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE40, "0+");
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  sub_24B639524();
  v34 = sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = v32;
  v19 = v32 + *(v2 + 44);
  v20 = *v19;
  v21 = *(v19 + 8);
  v38 = v20;
  v39 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639334();
  if (v37 == 1)
  {
    sub_24B638F04();
    (*(v10 + 16))(v8, v13, v9);
    swift_storeEnumTagMultiPayload();
    sub_24B628F28(&qword_27F02AE50, &qword_27F02AE58, "J+");
    sub_24B628F28(&qword_27F02AE60, &qword_27F02AE68, &qword_24B639ED0);
    sub_24B6390B4();
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_24B626EA0(v18, &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v23 = swift_allocObject();
    sub_24B626F74(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    v24 = v30;
    sub_24B639374();
    v25 = v31;
    v26 = v35;
    (*(v31 + 16))(v8, v24, v35);
    swift_storeEnumTagMultiPayload();
    sub_24B628F28(&qword_27F02AE50, &qword_27F02AE58, "J+");
    sub_24B628F28(&qword_27F02AE60, &qword_27F02AE68, &qword_24B639ED0);
    sub_24B6390B4();
    (*(v25 + 8))(v24, v26);
  }

  sub_24B6284FC(v17, v36, &qword_27F02AE40, "0+");
}

uint64_t sub_24B6226BC()
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B62275C();
}

uint64_t sub_24B62275C()
{
  v1 = v0;
  v2 = type metadata accessor for InferenceRecordFeedbackView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE80, &qword_24B639EE8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20[-v9];
  v11 = v1 + *(v3 + 52);
  v12 = *v11;
  v13 = *(v11 + 8);
  v22 = *v11;
  v23 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  result = sub_24B639334();
  if ((v21 & 1) == 0)
  {
    v22 = v12;
    v23 = v13;
    v21 = 1;
    sub_24B639344();
    v15 = sub_24B639544();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    sub_24B626EA0(v1, &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_24B639524();
    v16 = sub_24B639514();
    v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v16;
    *(v18 + 24) = v19;
    sub_24B626F74(v6, v18 + v17);
    sub_24B623954(0, 0, v10, &unk_24B639EF8, v18);
  }

  return result;
}

uint64_t sub_24B62298C@<X0>(uint64_t *a1@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B6392F4();

  *a1 = v2;
  return result;
}

uint64_t sub_24B622A38@<X0>(uint64_t a1@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B6279B8();

  v2 = sub_24B639204();
  v4 = v3;
  v6 = v5;
  sub_24B639124();
  v25 = sub_24B6391D4();
  v26 = v7;
  v9 = v8;
  v24 = v10;
  sub_24B627954(v2, v4, v6 & 1);

  v11 = sub_24B639204();
  v13 = v12;
  v15 = v14;
  sub_24B639134();
  v16 = sub_24B6391D4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_24B627954(v11, v13, v15 & 1);

  *a1 = v25;
  *(a1 + 8) = v9;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v22;
  sub_24B6264D4(v25, v9, v24 & 1);

  sub_24B6264D4(v16, v18, v20 & 1);

  sub_24B627954(v16, v18, v20 & 1);

  sub_24B627954(v25, v9, v24 & 1);
}

uint64_t sub_24B622CB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD88, &qword_24B639D38);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_24B638D14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = type metadata accessor for InferenceRecordFeedbackView();
  v15 = v14[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);
  sub_24B639334();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24B628424(v5, &qword_27F02AD88, &qword_24B639D38);
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 104))(v11, *MEMORY[0x277D0A178], v6);
    sub_24B6278EC(&qword_27F02B120, MEMORY[0x277D0A190]);
    sub_24B6394C4();
    sub_24B6394C4();
    if (v30 == v28)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_24B639634();
    }

    v17 = *(v7 + 8);
    v17(v11, v6);

    if ((v16 & 1) == 0)
    {
      goto LABEL_10;
    }

    v18 = (v1 + v14[7]);
    v19 = *v18;
    v20 = *(v18 + 2);
    v30 = v19;
    v31 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B128, &qword_24B63A160);
    sub_24B639334();
    v21 = v28;

    v22 = HIBYTE(*(&v21 + 1)) & 0xFLL;
    if ((*(&v21 + 1) & 0x2000000000000000) == 0)
    {
      v22 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      v17(v13, v6);
    }

    else
    {
LABEL_10:
      v23 = (v1 + v14[10]);
      v24 = *(v23 + 16);
      v25 = *(v23 + 3);
      v30 = *v23;
      LOBYTE(v31) = v24;
      v32 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B038, &qword_24B63A038);
      sub_24B639334();
      v17(v13, v6);
      if (v29 == 2 && v28 == 0)
      {
        return 1;
      }

      sub_24B626F54(v28, *(&v28 + 1), v29);
    }
  }

  return 0;
}

uint64_t sub_24B623048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD80, &qword_24B639D30) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v6 = sub_24B638E04();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = *(*(sub_24B638E54() - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = *(*(sub_24B638D74() - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_24B638C54();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_24B638E44();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  sub_24B639524();
  v4[18] = sub_24B639514();
  v18 = sub_24B6394D4();
  v4[19] = v18;
  v4[20] = v17;

  return MEMORY[0x2822009F8](sub_24B623290, v18, v17);
}

uint64_t sub_24B623290()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v19 = v0[7];
  v20 = v0[17];
  v8 = v0[4];
  sub_24B638BB4();
  sub_24B638C34();
  (*(v1 + 8))(v2, v4);
  v9 = sub_24B638D54();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  (*(v7 + 104))(v6, *MEMORY[0x277D0A4D8], v19);
  sub_24B638D64();
  sub_24B638E34();
  v10 = type metadata accessor for InferenceRecordFeedbackView();
  v0[21] = v10;
  v11 = (v8 + *(v10 + 20));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = *(MEMORY[0x277D0A4F0] + 4);
  v15 = swift_task_alloc();
  v0[22] = v15;
  *v15 = v0;
  v15[1] = sub_24B623460;
  v16 = v0[17];
  v17 = v0[6];

  return MEMORY[0x282160F88](v17, v16, v12, v13);
}

uint64_t sub_24B623460()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 152);
    v6 = *(v2 + 160);
    v7 = sub_24B62376C;
  }

  else
  {
    v5 = *(v2 + 152);
    v6 = *(v2 + 160);
    v7 = sub_24B623584;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B623584()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v14 = *(v0 + 120);
  v15 = *(v0 + 112);
  v16 = *(v0 + 88);
  v17 = *(v0 + 80);
  v18 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);

  v8 = sub_24B638DD4();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = *(v1 + 32);
  sub_24B6283BC(v6, v5, &qword_27F02AD80, &qword_24B639D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8);
  sub_24B639344();
  sub_24B628424(v6, &qword_27F02AD80, &qword_24B639D30);
  v10 = v7 + *(v1 + 44);
  v11 = *(v10 + 8);
  *(v0 + 16) = *v10;
  *(v0 + 24) = v11;
  *(v0 + 184) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639344();
  (*(v4 + 8))(v3, v14);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24B62376C()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v14 = *(v0 + 120);
  v15 = *(v0 + 112);
  v16 = *(v0 + 88);
  v17 = *(v0 + 80);
  v18 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);

  v8 = sub_24B638DD4();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = *(v1 + 32);
  sub_24B6283BC(v6, v5, &qword_27F02AD80, &qword_24B639D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8);
  sub_24B639344();
  sub_24B628424(v6, &qword_27F02AD80, &qword_24B639D30);
  v10 = v7 + *(v1 + 44);
  v11 = *(v10 + 8);
  *(v0 + 16) = *v10;
  *(v0 + 24) = v11;
  *(v0 + 184) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639344();
  (*(v4 + 8))(v3, v14);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24B623954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE80, &qword_24B639EE8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24B6283BC(a3, v27 - v11, &qword_27F02AE80, &qword_24B639EE8);
  v13 = sub_24B639544();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24B628424(v12, &qword_27F02AE80, &qword_24B639EE8);
  }

  else
  {
    sub_24B639534();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24B6394D4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24B639484() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_24B628424(a3, &qword_27F02AE80, &qword_24B639EE8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24B628424(a3, &qword_27F02AE80, &qword_24B639EE8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24B623C54()
{
  v1 = v0;
  v2 = type metadata accessor for InferenceRecordFeedbackView();
  v39 = *(v2 - 1);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = v4;
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE80, &qword_24B639EE8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD88, &qword_24B639D38);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v36 - v12;
  v14 = sub_24B638D14();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v38 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v36 - v18;
  v20 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);
  sub_24B639334();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_24B628424(v13, &qword_27F02AD88, &qword_24B639D38);
  }

  v22 = *(v15 + 32);
  v36[0] = v5;
  v36[1] = v15 + 32;
  v37 = v22;
  v22(v19, v13, v14);
  v23 = v1 + v2[10];
  v24 = *(v23 + 16);
  v25 = *(v23 + 24);
  v43 = *v23;
  v44 = v24;
  v45 = v25;
  v41 = xmmword_24B639D20;
  v42 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B038, &qword_24B63A038);
  sub_24B639344();
  v26 = v1 + v2[12];
  v27 = *v26;
  v28 = *(v26 + 8);
  LOBYTE(v26) = *(v26 + 16);
  LOBYTE(v43) = v27;
  *(&v43 + 1) = v28;
  v44 = v26;
  LOBYTE(v41) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B150, &qword_24B63A188);
  sub_24B638EB4();
  v29 = sub_24B639544();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  sub_24B626EA0(v1, v5);
  v30 = v38;
  (*(v15 + 16))(v38, v19, v14);
  sub_24B639524();
  v31 = sub_24B639514();
  v32 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v33 = (v40 + *(v15 + 80) + v32) & ~*(v15 + 80);
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  *(v34 + 16) = v31;
  *(v34 + 24) = v35;
  sub_24B626F74(v36[0], v34 + v32);
  v37(v34 + v33, v30, v14);
  sub_24B623954(0, 0, v9, &unk_24B63A198, v34);

  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_24B6240B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = sub_24B638B54();
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v8 = *(v7 + 64) + 15;
  v5[26] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD80, &qword_24B639D30) - 8) + 64) + 15;
  v5[27] = swift_task_alloc();
  v10 = sub_24B638D14();
  v5[28] = v10;
  v11 = *(v10 - 8);
  v5[29] = v11;
  v12 = *(v11 + 64) + 15;
  v5[30] = swift_task_alloc();
  v13 = sub_24B638BE4();
  v5[31] = v13;
  v14 = *(v13 - 8);
  v5[32] = v14;
  v15 = *(v14 + 64) + 15;
  v5[33] = swift_task_alloc();
  v16 = sub_24B638D34();
  v5[34] = v16;
  v17 = *(v16 - 8);
  v5[35] = v17;
  v18 = *(v17 + 64) + 15;
  v5[36] = swift_task_alloc();
  sub_24B639524();
  v5[37] = sub_24B639514();
  v20 = sub_24B6394D4();
  v5[38] = v20;
  v5[39] = v19;

  return MEMORY[0x2822009F8](sub_24B6242F4, v20, v19);
}

uint64_t sub_24B6242F4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  (*(*(v0 + 256) + 16))(*(v0 + 264), v6, *(v0 + 248));
  (*(v4 + 16))(v2, v7, v3);
  v8 = type metadata accessor for InferenceRecordFeedbackView();
  *(v0 + 320) = v8;
  v9 = (v6 + *(v8 + 28));
  v10 = *v9;
  v11 = *(v9 + 2);
  *(v0 + 80) = v10;
  *(v0 + 96) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B128, &qword_24B63A160);
  sub_24B639334();
  v12 = *(v0 + 152);
  v13 = *(v0 + 160);
  v14 = *(v8 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8);
  sub_24B639334();
  sub_24B638CC4();
  v15 = swift_task_alloc();
  *(v0 + 328) = v15;
  *v15 = v0;
  v15[1] = sub_24B624488;
  v16 = *(v0 + 288);

  return sub_24B62B5C8(1756458, v16, 0);
}

uint64_t sub_24B624488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 328);
  v9 = *v4;
  *(*v4 + 336) = v3;

  if (v3)
  {
    v10 = v7[38];
    v11 = v7[39];
    v12 = sub_24B6248C4;
  }

  else
  {
    v7[43] = a3;
    v7[44] = a1;
    v12 = sub_24B6245C8;
    v10 = 0;
    v11 = 0;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_24B6245C8()
{
  v1 = v0[43];
  v0[21] = v0[44];
  v2 = sub_24B639624();
  v4 = v3;

  v0[45] = v2;
  v0[46] = v4;
  v5 = v0[38];
  v6 = v0[39];

  return MEMORY[0x2822009F8](sub_24B624660, v5, v6);
}

uint64_t sub_24B624660()
{
  v1 = v0[26];
  v2 = (v0[22] + *(v0[40] + 20));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  MEMORY[0x24C244690]();
  v5 = *(MEMORY[0x277D0A4E8] + 4);
  v6 = swift_task_alloc();
  v0[47] = v6;
  *v6 = v0;
  v6[1] = sub_24B624744;
  v8 = v0[45];
  v7 = v0[46];
  v9 = v0[26];

  return MEMORY[0x282160F80](v8, v7, v9, v3, v4);
}

uint64_t sub_24B624744()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  v6 = *(*v1 + 192);
  v12 = *v1;
  *(*v1 + 384) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = v2[46];

    v8 = v2[38];
    v9 = v2[39];
    v10 = sub_24B624B4C;
  }

  else
  {
    v8 = v2[38];
    v9 = v2[39];
    v10 = sub_24B6249E4;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_24B6248C4()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 272);
  v6 = *(v0 + 280);
  v7 = *(v0 + 176);

  (*(v6 + 8))(v4, v5);
  v8 = v7 + *(v2 + 40);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  *(v0 + 16) = *v8;
  *(v0 + 32) = v9;
  *(v0 + 40) = v10;
  *(v0 + 104) = v1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B038, &qword_24B63A038);
  sub_24B639344();
  v11 = *(v0 + 288);
  v12 = *(v0 + 264);
  v13 = *(v0 + 240);
  v15 = *(v0 + 208);
  v14 = *(v0 + 216);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24B6249E4()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 320);
  v4 = *(v0 + 296);
  v5 = *(v0 + 280);
  v19 = *(v0 + 272);
  v20 = *(v0 + 288);
  v6 = *(v0 + 176);

  v7 = v6 + *(v3 + 40);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 24);
  v11 = *(v7 + 16);
  *(v0 + 48) = *v7;
  *(v0 + 56) = v9;
  *(v0 + 64) = v11;
  *(v0 + 72) = v10;
  *(v0 + 128) = v1;
  *(v0 + 136) = v2;
  *(v0 + 144) = 1;
  sub_24B628D5C(v8, v9, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B038, &qword_24B63A038);
  sub_24B639344();
  (*(v5 + 8))(v20, v19);
  sub_24B626F54(v8, v9, v11);

  v12 = *(v0 + 288);
  v13 = *(v0 + 264);
  v14 = *(v0 + 240);
  v16 = *(v0 + 208);
  v15 = *(v0 + 216);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24B624B4C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 320);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 272);
  v6 = *(v0 + 280);
  v7 = *(v0 + 176);

  (*(v6 + 8))(v4, v5);
  v8 = v7 + *(v2 + 40);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  *(v0 + 16) = *v8;
  *(v0 + 32) = v9;
  *(v0 + 40) = v10;
  *(v0 + 104) = v1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B038, &qword_24B63A038);
  sub_24B639344();
  v11 = *(v0 + 288);
  v12 = *(v0 + 264);
  v13 = *(v0 + 240);
  v15 = *(v0 + 208);
  v14 = *(v0 + 216);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24B624C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD80, &qword_24B639D30) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD88, &qword_24B639D38) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v7 = sub_24B638D14();
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v9 = *(v8 + 64) + 15;
  v4[12] = swift_task_alloc();
  v10 = sub_24B638BE4();
  v4[13] = v10;
  v11 = *(v10 - 8);
  v4[14] = v11;
  v12 = *(v11 + 64) + 15;
  v4[15] = swift_task_alloc();
  v13 = sub_24B638D34();
  v4[16] = v13;
  v14 = *(v13 - 8);
  v4[17] = v14;
  v15 = *(v14 + 64) + 15;
  v4[18] = swift_task_alloc();
  sub_24B639524();
  v4[19] = sub_24B639514();
  v17 = sub_24B6394D4();
  v4[20] = v17;
  v4[21] = v16;

  return MEMORY[0x2822009F8](sub_24B624E88, v17, v16);
}

uint64_t sub_24B624E88()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 56), *(v0 + 104));
  v4 = type metadata accessor for InferenceRecordFeedbackView();
  v5 = v4[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);
  sub_24B639334();
  v6 = *(v2 + 48);
  v7 = v6(v3, 1, v1);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  if (v7 == 1)
  {
    (*(v9 + 104))(v8, *MEMORY[0x277D0A178], *(v0 + 80));
    if (v6(v10, 1, v11) != 1)
    {
      sub_24B628424(*(v0 + 72), &qword_27F02AD88, &qword_24B639D38);
    }
  }

  else
  {
    (*(v9 + 32))(v8, *(v0 + 72), *(v0 + 80));
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 120);
  v14 = *(v0 + 96);
  v15 = *(v0 + 64);
  v16 = (*(v0 + 56) + v4[7]);
  v17 = *v16;
  v18 = *(v16 + 2);
  *(v0 + 16) = v17;
  *(v0 + 32) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B128, &qword_24B63A160);
  sub_24B639334();
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  v21 = v4[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8);
  sub_24B639334();
  sub_24B638CC4();
  v22 = swift_task_alloc();
  *(v0 + 176) = v22;
  *v22 = v0;
  v22[1] = sub_24B6250D8;
  v23 = *(v0 + 144);

  return sub_24B62A390(v23);
}

uint64_t sub_24B6250D8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 160);
    v6 = *(v2 + 168);
    v7 = sub_24B6290C0;
  }

  else
  {
    v5 = *(v2 + 160);
    v6 = *(v2 + 168);
    v7 = sub_24B6251FC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B6251FC()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];

  (*(v4 + 8))(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24B6252C4(uint64_t a1)
{
  v2 = type metadata accessor for InferenceRecordFeedbackView();
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE80, &qword_24B639EE8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  sub_24B639524();
  sub_24B639514();
  v8 = MEMORY[0x277D85700];
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1 + *(v2 + 36);
  v10 = *v9;
  v11 = *(v9 + 8);
  v19 = v10;
  v20 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639334();
  if (v18 == 1)
  {
    v12 = sub_24B639544();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    sub_24B626EA0(a1, &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = sub_24B639514();
    v14 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v8;
    sub_24B626F74(&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    sub_24B623954(0, 0, v7, &unk_24B63A180, v15);
  }

  else
  {
    sub_24B623C54();
  }
}

uint64_t sub_24B625550@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B108, &qword_24B63A0F0);
  v23 = *(v25 - 8);
  v1 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v20 = &v18 - v2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B0F8, &qword_24B63A0E8);
  v3 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B0E0, &qword_24B63A0E0);
  v6 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v18 - v7;
  sub_24B639524();
  v24 = sub_24B639514();
  sub_24B6394D4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v18 = &v18;
  v9 = MEMORY[0x28223BE20](isCurrentExecutor);
  MEMORY[0x28223BE20](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B130, &qword_24B63A168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B138, &qword_24B63A170);
  sub_24B628494(&qword_27F02B140, &qword_27F02B130, &qword_24B63A168);
  sub_24B628494(&qword_27F02B148, &qword_27F02B138, &qword_24B63A170);
  v10 = v20;
  sub_24B639314();
  sub_24B6392D4();
  sub_24B622CB4();
  v11 = sub_24B6392E4();

  (*(v23 + 32))(v5, v10, v25);
  *&v5[*(v19 + 36)] = v11;
  sub_24B6393D4();
  sub_24B638F94();
  v12 = v21;
  sub_24B6284FC(v5, v21, &qword_27F02B0F8, &qword_24B63A0E8);
  v13 = (v12 + *(v22 + 36));
  v14 = v32;
  v13[4] = v31;
  v13[5] = v14;
  v13[6] = v33;
  v15 = v28;
  *v13 = v27;
  v13[1] = v15;
  v16 = v30;
  v13[2] = v29;
  v13[3] = v16;
  sub_24B6284FC(v12, v26, &qword_27F02B0E0, &qword_24B63A0E0);
}

double sub_24B625988@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1 + *(type metadata accessor for InferenceRecordFeedbackView() + 36);
  LOBYTE(v6) = *v4;
  *(&v6 + 1) = *(v4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639334();
  sub_24B639084();
  sub_24B6391F4();
  sub_24B6390B4();

  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24B625B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1 + *(type metadata accessor for InferenceRecordFeedbackView() + 36);
  LOBYTE(v6) = *v4;
  v7 = *(v4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639334();
  sub_24B639304();
  sub_24B6390B4();

  *a2 = v6;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_24B625CF0(uint64_t a1, id *a2)
{
  result = sub_24B639444();
  *a2 = 0;
  return result;
}

uint64_t sub_24B625D68(uint64_t a1, id *a2)
{
  v3 = sub_24B639454();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24B625DE8@<X0>(uint64_t *a1@<X8>)
{
  sub_24B639464();
  v2 = sub_24B639434();

  *a1 = v2;
  return result;
}

uint64_t sub_24B625E2C()
{
  v1 = *v0;
  v2 = sub_24B639464();
  v3 = MEMORY[0x24C244FA0](v2);

  return v3;
}

uint64_t sub_24B625E68()
{
  v1 = *v0;
  sub_24B639464();
  sub_24B639494();
}

uint64_t sub_24B625EBC()
{
  v1 = *v0;
  sub_24B639464();
  sub_24B639684();
  sub_24B639494();
  v2 = sub_24B6396A4();

  return v2;
}

uint64_t sub_24B625F30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24B639464();
  v6 = v5;
  if (v4 == sub_24B639464() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24B639634();
  }

  return v9 & 1;
}

uint64_t sub_24B625FB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24B639434();

  *a2 = v5;
  return result;
}

uint64_t sub_24B626000@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_24B639464();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_24B62602C(uint64_t a1)
{
  v2 = sub_24B6278EC(&qword_27F02B1D0, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_24B6278EC(&qword_27F02B1D8, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24B6260E8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B6261E0;

  return v7(a1);
}

uint64_t sub_24B6261E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24B6262FC(uint64_t a1)
{
  v2 = sub_24B638EF4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x24C244AA0](v5);
}

uint64_t sub_24B6263C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B638FE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24B62641C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B638FC4();
  *a1 = result;
  return result;
}

uint64_t sub_24B626470@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B639004();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B6264A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24B639014();
}

uint64_t sub_24B6264D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24B626514(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B638BE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24B6266B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24B638BE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 24) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

void sub_24B626848()
{
  sub_24B638BE4();
  if (v0 <= 0x3F)
  {
    sub_24B6269FC();
    if (v1 <= 0x3F)
    {
      sub_24B626A60(319, &qword_27F02AE10, &qword_27F02AD88, &qword_24B639D38);
      if (v2 <= 0x3F)
      {
        sub_24B628F98(319, &qword_27F02AE18, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_24B626A60(319, &qword_27F02AE20, &qword_27F02AD80, &qword_24B639D30);
          if (v4 <= 0x3F)
          {
            sub_24B628F98(319, &qword_27F02AE28, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_24B628F98(319, &qword_27F02AE30, &type metadata for InferenceRecordFeedbackView.SubmitState, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_24B626AB4();
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

unint64_t sub_24B6269FC()
{
  result = qword_27F02AE08;
  if (!qword_27F02AE08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F02AE08);
  }

  return result;
}

void sub_24B626A60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24B639364();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24B626AB4()
{
  if (!qword_27F02AE38)
  {
    v0 = sub_24B638EE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F02AE38);
    }
  }
}

uint64_t sub_24B626B0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02ADA0, &qword_24B639D50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02ADC0, &qword_24B639D60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AD98, &qword_24B639D48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AD90, &qword_24B639D40);
  sub_24B638F34();
  sub_24B628F28(&qword_27F02ADB8, &qword_27F02AD90, &qword_24B639D40);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02ADC8, &unk_24B639D68);
  sub_24B628F28(&qword_27F02ADD0, &qword_27F02ADC8, &unk_24B639D68);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_enum_tag_for_layout_string_27FitnessIntelligenceFeedback015InferenceRecordC4ViewV11SubmitState33_057968A32584189FAE94FEDCF982E2DELLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B626D00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B626D48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24B626D8C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_24B626DBC()
{
  result = qword_27F02AE48;
  if (!qword_27F02AE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AE40, "0+");
    sub_24B628F28(&qword_27F02AE50, &qword_27F02AE58, "J+");
    sub_24B628F28(&qword_27F02AE60, &qword_27F02AE68, &qword_24B639ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AE48);
  }

  return result;
}

uint64_t sub_24B626EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceRecordFeedbackView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_24B626F54(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_24B626F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceRecordFeedbackView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B626FF4(uint64_t a1)
{
  v4 = *(type metadata accessor for InferenceRecordFeedbackView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B6290D4;

  return sub_24B623048(a1, v6, v7, v1 + v5);
}

uint64_t sub_24B6270E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B62711C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6290D4;

  return sub_24B6260E8(a1, v5);
}

uint64_t sub_24B6271D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B62728C;

  return sub_24B6260E8(a1, v5);
}

uint64_t sub_24B62728C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24B6273CC()
{
  result = qword_27F02AEE0;
  if (!qword_27F02AEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AED0, &qword_24B639F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AEE0);
  }

  return result;
}

unint64_t sub_24B62745C()
{
  result = qword_27F02AF00;
  if (!qword_27F02AF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AEC0, &qword_24B639F50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AEF0, &qword_24B639F78);
    sub_24B6390D4();
    sub_24B628F28(&qword_27F02AEF8, &qword_27F02AEF0, &qword_24B639F78);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AF00);
  }

  return result;
}

unint64_t sub_24B627584()
{
  result = qword_27F02AF38;
  if (!qword_27F02AF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AEB0, &qword_24B639F40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AF10, &qword_24B639F88);
    sub_24B639164();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AF18, &qword_24B639F90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AF20, &qword_24B639F98);
    sub_24B628F28(&qword_27F02AF28, &qword_27F02AF20, &qword_24B639F98);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B6278EC(&qword_27F02AF30, MEMORY[0x277CDE3C8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AF38);
  }

  return result;
}

unint64_t sub_24B62775C()
{
  result = qword_27F02AF50;
  if (!qword_27F02AF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AEA0, &qword_24B639F30);
    sub_24B628F28(&qword_27F02AF48, &qword_27F02AF40, &qword_24B639FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AF50);
  }

  return result;
}

unint64_t sub_24B627820()
{
  result = qword_27F02AF68;
  if (!qword_27F02AF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AE90, &qword_24B639F20);
    sub_24B628F28(&qword_27F02AF60, &qword_27F02AF58, &qword_24B639FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AF68);
  }

  return result;
}

uint64_t sub_24B6278EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B627954(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24B627964()
{
  result = qword_27F02AFE0;
  if (!qword_27F02AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AFE0);
  }

  return result;
}

unint64_t sub_24B6279B8()
{
  result = qword_27F02AFF0;
  if (!qword_27F02AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AFF0);
  }

  return result;
}

unint64_t sub_24B627A0C()
{
  result = qword_27F02B048;
  if (!qword_27F02B048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B040, &qword_24B63A040);
    sub_24B627AC4();
    sub_24B628F28(&qword_27F02B070, &qword_27F02B078, &qword_24B63A058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B048);
  }

  return result;
}

unint64_t sub_24B627AC4()
{
  result = qword_27F02B050;
  if (!qword_27F02B050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B058, &qword_24B63A048);
    sub_24B628F28(&qword_27F02B060, &qword_27F02B068, &qword_24B63A050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B050);
  }

  return result;
}

unint64_t sub_24B627B7C()
{
  result = qword_27F02B088;
  if (!qword_27F02B088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B020, &qword_24B63A020);
    sub_24B627C34();
    sub_24B628F28(&qword_27F02AE50, &qword_27F02AE58, "J+");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B088);
  }

  return result;
}

unint64_t sub_24B627C34()
{
  result = qword_27F02B090;
  if (!qword_27F02B090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B030, &qword_24B63A030);
    sub_24B627CEC();
    sub_24B628F28(&qword_27F02B0C8, &qword_27F02B0D0, &qword_24B63A078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B090);
  }

  return result;
}

unint64_t sub_24B627CEC()
{
  result = qword_27F02B098;
  if (!qword_27F02B098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B0A0, &qword_24B63A068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B028, &qword_24B63A028);
    sub_24B6391A4();
    sub_24B628F28(&qword_27F02B0A8, &qword_27F02B028, &qword_24B63A028);
    sub_24B6278EC(&qword_27F02B0B0, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_24B628F28(&qword_27F02B0B8, &qword_27F02B0C0, &qword_24B63A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B098);
  }

  return result;
}

unint64_t sub_24B627E64()
{
  result = qword_27F02B0D8;
  if (!qword_27F02B0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B080, &qword_24B63A060);
    sub_24B627A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B0D8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for InferenceRecordFeedbackView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_24B638BE4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + v1[5]));
  v7 = v0 + v3 + v1[6];
  v8 = sub_24B638D14();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  v10 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0) + 28));

  v11 = v5 + v1[7];
  v12 = *(v11 + 8);

  v13 = *(v11 + 16);

  v14 = v5 + v1[8];
  v15 = sub_24B638DD4();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  v17 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8) + 28));

  v18 = *(v5 + v1[9] + 8);

  v19 = v5 + v1[10];
  sub_24B626F54(*v19, *(v19 + 8), *(v19 + 16));
  v20 = *(v19 + 24);

  v21 = *(v5 + v1[11] + 8);

  v22 = *(v5 + v1[12] + 8);

  v23 = *(v5 + v1[13] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B6281A8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for InferenceRecordFeedbackView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_24B628224()
{
  result = qword_27F02B0E8;
  if (!qword_27F02B0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B0E0, &qword_24B63A0E0);
    sub_24B6282B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B0E8);
  }

  return result;
}

unint64_t sub_24B6282B0()
{
  result = qword_27F02B0F0;
  if (!qword_27F02B0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B0F8, &qword_24B63A0E8);
    sub_24B628F28(&qword_27F02B100, &qword_27F02B108, &qword_24B63A0F0);
    sub_24B628F28(&qword_27F02B110, &qword_27F02B118, &qword_24B63A0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B0F0);
  }

  return result;
}

uint64_t sub_24B6283BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B628424(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24B628494(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6284FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_23Tm()
{
  v1 = type metadata accessor for InferenceRecordFeedbackView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = sub_24B638BE4();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + v1[5]));
  v8 = v0 + v3 + v1[6];
  v9 = sub_24B638D14();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v11 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0) + 28));

  v12 = v6 + v1[7];
  v13 = *(v12 + 8);

  v14 = *(v12 + 16);

  v15 = v6 + v1[8];
  v16 = sub_24B638DD4();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8) + 28));

  v19 = *(v6 + v1[9] + 8);

  v20 = v6 + v1[10];
  sub_24B626F54(*v20, *(v20 + 8), *(v20 + 16));
  v21 = *(v20 + 24);

  v22 = *(v6 + v1[11] + 8);

  v23 = *(v6 + v1[12] + 8);

  v24 = *(v6 + v1[13] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B62880C(uint64_t a1)
{
  v4 = *(type metadata accessor for InferenceRecordFeedbackView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B6290D4;

  return sub_24B624C6C(a1, v6, v7, v1 + v5);
}

uint64_t sub_24B6288FC()
{
  v1 = type metadata accessor for InferenceRecordFeedbackView();
  v2 = *(*(v1 - 1) + 80);
  v27 = *(*(v1 - 1) + 64);
  v3 = sub_24B638D14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v28 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = v0 + ((v2 + 32) & ~v2);
  v8 = sub_24B638BE4();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1((v7 + v1[5]));
  v9 = v7 + v1[6];
  if (!(*(v4 + 48))(v9, 1, v3))
  {
    (*(v4 + 8))(v9, v3);
  }

  v10 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0) + 28));

  v11 = v7 + v1[7];
  v12 = *(v11 + 8);

  v13 = *(v11 + 16);

  v14 = v7 + v1[8];
  v15 = sub_24B638DD4();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  v17 = v2 | v5;
  v18 = (((v2 + 32) & ~v2) + v27 + v5) & ~v5;
  v19 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8) + 28));

  v20 = *(v7 + v1[9] + 8);

  v21 = v7 + v1[10];
  sub_24B626F54(*v21, *(v21 + 8), *(v21 + 16));
  v22 = *(v21 + 24);

  v23 = *(v7 + v1[11] + 8);

  v24 = *(v7 + v1[12] + 8);

  v25 = *(v7 + v1[13] + 8);

  (*(v4 + 8))(v0 + v18, v3);

  return MEMORY[0x2821FE8E8](v0, v18 + v28, v17 | 7);
}

uint64_t sub_24B628C0C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for InferenceRecordFeedbackView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24B638D14() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24B62728C;

  return sub_24B6240B4(a1, v10, v11, v1 + v6, v1 + v9);
}

id sub_24B628D5C(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

unint64_t sub_24B628D7C()
{
  result = qword_27F02B178;
  if (!qword_27F02B178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AD88, &qword_24B639D38);
    sub_24B6278EC(&qword_27F02B180, MEMORY[0x277D0A190]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B178);
  }

  return result;
}

unint64_t sub_24B628E30()
{
  result = qword_27F02B188;
  if (!qword_27F02B188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B170, &qword_24B63A1B0);
    sub_24B638D14();
    sub_24B6278EC(&qword_27F02B180, MEMORY[0x277D0A190]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B188);
  }

  return result;
}

uint64_t sub_24B628F28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24B628F98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static FeedbackRouter.submitToRadar(inferenceFeedback:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_24B62917C;

  return sub_24B62B5C8(1756458, a1, 0);
}

uint64_t sub_24B62917C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 24);
  v9 = *v4;

  if (v3)
  {
    v10 = *(v9 + 8);

    return v10();
  }

  else
  {
    *(v7 + 32) = a3;
    *(v7 + 40) = a1;

    return MEMORY[0x2822009F8](sub_24B6292D8, 0, 0);
  }
}

uint64_t sub_24B6292D8()
{
  v1 = v0[4];
  v0[2] = v0[5];
  v2 = sub_24B639624();
  v4 = v3;

  v5 = v0[1];

  return v5(v2, v4);
}

uint64_t static FeedbackRouter.launchTapToRadar(inferenceFeedback:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24B62728C;

  return sub_24B62A390(a1);
}

uint64_t sub_24B62941C()
{
  v1 = v0;
  v2 = sub_24B638D14();
  v115 = *(v2 - 8);
  v116 = v2;
  v3 = *(v115 + 64);
  MEMORY[0x28223BE20](v2);
  v114 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B210, &unk_24B63A440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v113 = &v100 - v7;
  v120 = sub_24B638C94();
  v122 = *(v120 - 8);
  v8 = *(v122 + 64);
  v9 = MEMORY[0x28223BE20](v120);
  v117 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v110 = &v100 - v11;
  v12 = sub_24B638B24();
  v13 = *(v12 - 8);
  v104 = v12;
  v105 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v101 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_24B638C54();
  v121 = *(v119 - 8);
  v16 = *(v121 + 64);
  v17 = MEMORY[0x28223BE20](v119);
  v111 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v118 = &v100 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v108 = &v100 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v100 - v23;
  v25 = sub_24B638BE4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v112 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v109 = &v100 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v106 = &v100 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v103 = &v100 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v100 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v100 - v39;
  v123 = 0;
  v124 = 0xE000000000000000;
  sub_24B639594();
  MEMORY[0x24C244F90](0x636E657265666E69, 0xEC00000022203A65);
  sub_24B638CD4();
  sub_24B638BB4();
  v41 = *(v26 + 8);
  v41(v40, v25);
  v42 = sub_24B638C34();
  v44 = v43;
  v45 = *(v121 + 8);
  v121 += 8;
  v102 = v45;
  v45(v24, v119);
  MEMORY[0x24C244F90](v42, v44);

  MEMORY[0x24C244F90](0x203A657461640A22, 0xE800000000000000);
  sub_24B638CD4();
  v46 = v101;
  sub_24B638BD4();
  v107 = v40;
  v47 = v40;
  v48 = v25;
  v41(v47, v25);
  sub_24B62B580(&qword_27F02B218, MEMORY[0x277CC9578]);
  v49 = v104;
  v50 = sub_24B639624();
  MEMORY[0x24C244F90](v50);

  (*(v105 + 8))(v46, v49);
  MEMORY[0x24C244F90](0xD000000000000013, 0x800000024B63B920);
  sub_24B638CD4();
  v51 = v110;
  sub_24B638BC4();
  v41(v38, v48);
  v52 = sub_24B638C64();
  v54 = v53;
  v55 = *(v122 + 8);
  v122 += 8;
  v110 = v55;
  (v55)(v51, v120);
  if (v54)
  {
    v56 = v52;
  }

  else
  {
    v56 = 6369134;
  }

  if (v54)
  {
    v57 = v54;
  }

  else
  {
    v57 = 0xE300000000000000;
  }

  MEMORY[0x24C244F90](v56, v57);

  MEMORY[0x24C244F90](0xD000000000000015, 0x800000024B63B940);
  v58 = v103;
  sub_24B638CD4();
  v59 = sub_24B638B94();
  v61 = v60;
  v41(v58, v48);
  if (v61)
  {
    v62 = v59;
  }

  else
  {
    v62 = 6369134;
  }

  if (v61)
  {
    v63 = v61;
  }

  else
  {
    v63 = 0xE300000000000000;
  }

  MEMORY[0x24C244F90](v62, v63);

  MEMORY[0x24C244F90](0xD000000000000010, 0x800000024B63B960);
  v64 = v106;
  sub_24B638CD4();
  v65 = v108;
  sub_24B638BB4();
  v41(v64, v48);
  v66 = v65;
  v67 = sub_24B638C14();
  v69 = v68;
  v70 = v119;
  v71 = v102;
  v102(v66, v119);
  if (v69)
  {
    v72 = v67;
  }

  else
  {
    v72 = 6369134;
  }

  if (v69)
  {
    v73 = v69;
  }

  else
  {
    v73 = 0xE300000000000000;
  }

  MEMORY[0x24C244F90](v72, v73);

  MEMORY[0x24C244F90](0x65566C65646F6D0ALL, 0xEF203A6E6F697372);
  v74 = v109;
  sub_24B638CD4();
  v75 = v118;
  sub_24B638BB4();
  v41(v74, v48);
  v76 = sub_24B638C04();
  v78 = v77;
  v71(v75, v70);
  v118 = 6369134;
  if (v78)
  {
    v79 = v76;
  }

  else
  {
    v79 = 6369134;
  }

  if (v78)
  {
    v80 = v78;
  }

  else
  {
    v80 = 0xE300000000000000;
  }

  MEMORY[0x24C244F90](v79, v80);

  MEMORY[0x24C244F90](0x203A6563696F760ALL, 0xE800000000000000);
  v81 = v112;
  v108 = v1;
  sub_24B638CD4();
  v82 = v111;
  sub_24B638BB4();
  v109 = v48;
  v112 = v41;
  v41(v81, v48);
  v83 = v113;
  sub_24B638C44();
  v84 = v83;
  v71(v82, v70);
  v85 = sub_24B638D54();
  v86 = *(v85 - 8);
  if ((*(v86 + 48))(v84, 1, v85) == 1)
  {
    sub_24B628424(v84, &qword_27F02B210, &unk_24B63A440);
    v87 = 0xE300000000000000;
  }

  else
  {
    v118 = sub_24B638D44();
    v87 = v88;
    (*(v86 + 8))(v84, v85);
  }

  MEMORY[0x24C244F90](v118, v87);

  MEMORY[0x24C244F90](0x656D69746E65730ALL, 0xEC000000203A746ELL);
  v89 = v114;
  sub_24B638D24();
  v90 = sub_24B638D04();
  v92 = v91;
  (*(v115 + 8))(v89, v116);
  MEMORY[0x24C244F90](v90, v92);

  MEMORY[0x24C244F90](0xD000000000000012, 0x800000024B63B980);
  v93 = sub_24B629F08();
  MEMORY[0x24C244F90](v93);

  MEMORY[0x24C244F90](0x74706D6F72700A0ALL, 0xEA00000000000A3ALL);
  v94 = v107;
  sub_24B638CD4();
  v95 = v117;
  sub_24B638BC4();
  (v112)(v94, v109);
  v96 = sub_24B638C74();
  v98 = v97;
  (v110)(v95, v120);
  MEMORY[0x24C244F90](v96, v98);

  return v123;
}

uint64_t sub_24B629F08()
{
  v0 = 6369134;
  v1 = sub_24B638974();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B638CA4();
  if (v7)
  {
    v8 = v7;
    v9 = v6;
    v15 = v6;
    v16 = v7;
    sub_24B638964();
    sub_24B6279B8();
    v10 = sub_24B639574();
    v12 = v11;
    (*(v2 + 8))(v5, v1);

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v15 = 34;
      v16 = 0xE100000000000000;
      MEMORY[0x24C244F90](v9, v8);

      MEMORY[0x24C244F90](34, 0xE100000000000000);
      return v15;
    }

    else
    {
    }
  }

  return v0;
}

char *sub_24B62A080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B200, &qword_24B63A430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24B62A1B4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_24B62A390(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24B638B54();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD80, &qword_24B639D30) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1E0, &qword_24B63A418) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = type metadata accessor for TapToRadarDraft();
  v1[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = sub_24B638E94();
  v1[10] = v9;
  v10 = *(v9 - 8);
  v1[11] = v10;
  v11 = *(v10 + 64) + 15;
  v1[12] = swift_task_alloc();
  v12 = sub_24B638B84();
  v1[13] = v12;
  v13 = *(v12 - 8);
  v1[14] = v13;
  v14 = *(v13 + 64) + 15;
  v1[15] = swift_task_alloc();
  v15 = sub_24B638AF4();
  v1[16] = v15;
  v16 = *(v15 - 8);
  v1[17] = v16;
  v17 = *(v16 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B62A634, 0, 0);
}

id sub_24B62A634()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[15];
  v7 = v0[2];
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 temporaryDirectory];

  sub_24B638AB4();
  sub_24B638A94();
  v10 = *(v5 + 8);
  v0[23] = v10;
  v0[24] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v3, v4);
  sub_24B638AA4();
  v10(v1, v4);
  sub_24B638CE4();
  v79 = v10;
  v12 = v0[14];
  v11 = v0[15];
  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[10];
  v16 = v0[11];
  sub_24B638E84();
  sub_24B62B580(&qword_27F02B1E8, MEMORY[0x277D09EC8]);
  v0[25] = sub_24B638EA4();
  v0[26] = v17;
  (*(v16 + 8))(v14, v15);
  (*(v12 + 8))(v11, v13);
  v18 = v0[22];
  sub_24B638B04();
  v19 = v0[22];
  v20 = v0[17];
  v78 = v0[16];
  v22 = v0[8];
  v21 = v0[9];
  v80 = v0[6];
  v23 = v0[2];
  *v21 = 0x4449656C646E7542;
  *(v21 + 8) = 0xE800000000000000;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  strcpy((v21 + 72), "Classification");
  *(v21 + 87) = -18;
  *(v21 + 88) = 10;
  *(v21 + 96) = 0x6375646F72706552;
  *(v21 + 104) = 0xEF7974696C696269;
  *(v21 + 112) = 6;
  *(v21 + 120) = 0x656C746954;
  *(v21 + 128) = 0xE500000000000000;
  *(v21 + 136) = 0;
  *(v21 + 144) = 0;
  *(v21 + 152) = 0x7470697263736544;
  *(v21 + 160) = 0xEB000000006E6F69;
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;
  *(v21 + 184) = 0x7364726F7779654BLL;
  *(v21 + 192) = 0xE800000000000000;
  v24 = MEMORY[0x277D84F90];
  *(v21 + 200) = MEMORY[0x277D84F90];
  v25 = (v21 + v22[11]);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1F0, &qword_24B63A420) + 36);
  v27 = sub_24B638B24();
  (*(*(v27 - 8) + 56))(&v25[v26], 1, 1, v27);
  *v25 = 0x7349664F656D6954;
  *(v25 + 1) = 0xEB00000000657573;
  v28 = (v21 + v22[12]);
  *v28 = 0x656D686361747441;
  v28[1] = 0xEB0000000073746ELL;
  v77 = v28;
  v28[2] = v24;
  v29 = (v21 + v22[13]);
  *v29 = 0xD000000000000011;
  v29[1] = 0x800000024B63B820;
  v29[2] = v24;
  v30 = (v21 + v22[14]);
  *v30 = 0xD000000000000014;
  v30[1] = 0x800000024B63B840;
  v30[2] = v24;
  v31 = (v21 + v22[15]);
  strcpy(v31, "DeleteOnAttach");
  v31[15] = -18;
  v31[16] = 0;
  v32 = (v21 + v22[16]);
  *v32 = 0x4449656369766544;
  v32[1] = 0xE900000000000073;
  v76 = v32;
  v32[2] = v24;
  v33 = v21 + v22[17];
  strcpy(v33, "DeviceClasses");
  *(v33 + 14) = -4864;
  *(v33 + 16) = v24;
  v34 = v21 + v22[18];
  strcpy(v34, "DeviceModels");
  *(v34 + 13) = 0;
  *(v34 + 14) = -5120;
  *(v34 + 16) = v24;
  v35 = (v21 + v22[19]);
  *v35 = 0xD000000000000016;
  v35[1] = 0x800000024B63B860;
  v35[2] = 0;
  v36 = v21 + v22[20];
  *v36 = 0xD00000000000001ALL;
  *(v36 + 8) = 0x800000024B63B880;
  *(v36 + 16) = 0;
  v37 = v21 + v22[21];
  *v37 = 0x676169446F747541;
  *(v37 + 8) = 0xEF73636974736F6ELL;
  *(v37 + 16) = 0;
  v38 = (v21 + v22[22]);
  *v38 = 0xD00000000000001BLL;
  v38[1] = 0x800000024B63B8A0;
  v38[2] = v24;
  v39 = (v21 + v22[23]);
  *v39 = 0xD000000000000018;
  v39[1] = 0x800000024B63B8C0;
  v39[2] = 0;
  v39[3] = 0;
  v40 = (v21 + v22[24]);
  *v40 = 0xD000000000000012;
  v40[1] = 0x800000024B63B8E0;
  v40[2] = 0;
  v40[3] = 0;
  *(v21 + 32) = xmmword_24B63A3A0;
  *(v21 + 48) = xmmword_24B63A3B0;
  *(v21 + 64) = 0x800000024B63B900;
  *(v21 + 88) = 6;
  *(v21 + 136) = sub_24B638CA4();
  *(v21 + 144) = v41;
  *(v21 + 168) = sub_24B62941C();
  *(v21 + 176) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1F8, &qword_24B63A428);
  v43 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v75 = *(v20 + 72);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_24B63A3C0;
  v45 = *(v20 + 16);
  v46 = v44;
  v74 = v43;
  v45(v44 + v43, v19, v78);
  sub_24B638CB4();
  v47 = sub_24B638DD4();
  v48 = *(v47 - 8);
  v49 = (*(v48 + 48))(v80, 1, v47);
  v50 = v0[16];
  v51 = v0[17];
  v52 = v0[6];
  v53 = v0[7];
  if (v49 == 1)
  {
    sub_24B628424(v0[6], &qword_27F02AD80, &qword_24B639D30);
    (*(v51 + 56))(v53, 1, 1, v50);
LABEL_4:
    sub_24B628424(v0[7], &qword_27F02B1E0, &qword_24B63A418);
    goto LABEL_8;
  }

  v54 = v0[7];
  sub_24B638D94();
  (*(v48 + 8))(v52, v47);
  if ((*(v51 + 48))(v53, 1, v50) == 1)
  {
    goto LABEL_4;
  }

  v56 = v0[18];
  v55 = v0[19];
  v57 = v0[16];
  v58 = *(v0[17] + 32);
  v58(v55, v0[7], v57);
  v45(v56, v55, v57);
  v60 = v46[2];
  v59 = v46[3];
  if (v60 >= v59 >> 1)
  {
    v46 = sub_24B62A1B4(v59 > 1, v60 + 1, 1, v46, &qword_27F02B1F8, &qword_24B63A428, MEMORY[0x277CC9260]);
  }

  v61 = v0[18];
  v62 = v0[16];
  v79(v0[19], v62);
  v46[2] = v60 + 1;
  v58(v46 + v74 + v60 * v75, v61, v62);
LABEL_8:
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v64 = result;
  v65 = [result getActivePairedDevice];

  if (v65)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B200, &qword_24B63A430);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_24B63A3C0;
    result = [v65 pairingID];
    if (result)
    {
      v67 = result;
      v68 = v0[4];
      v69 = v0[5];
      v70 = v0[3];
      sub_24B638B44();

      *(v66 + 32) = sub_24B638B34();
      *(v66 + 40) = v71;
      (*(v68 + 8))(v69, v70);

      v76[2] = v66;
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    return result;
  }

LABEL_12:
  v77[2] = v46;
  v72 = swift_task_alloc();
  v0[27] = v72;
  *v72 = v0;
  v72[1] = sub_24B62B090;
  v73 = v0[9];

  return sub_24B630A40();
}

uint64_t sub_24B62B090()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_24B62B2C4;
  }

  else
  {
    v3 = sub_24B62B1A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24B62B1A4()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v8 = v0[16];
  v12 = v0[15];
  v13 = v0[12];
  v9 = v0[9];
  v14 = v0[7];
  v15 = v0[6];
  v16 = v0[5];
  sub_24B62B4CC(v0[25], v0[26]);
  v1(v4, v8);
  sub_24B62B520(v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24B62B2C4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[16];
  v5 = v0[9];
  sub_24B62B4CC(v0[25], v0[26]);
  v2(v3, v4);
  sub_24B62B520(v5);
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[7];
  v18 = v0[5];
  v19 = v0[28];

  v16 = v0[1];

  return v16();
}

uint64_t getEnumTagSinglePayload for FeedbackRouter(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FeedbackRouter(_WORD *result, int a2, int a3)
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

uint64_t sub_24B62B4CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24B62B520(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B62B580(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B62B5C8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 376) = a3;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  v4 = sub_24B6388F4();
  *(v3 + 112) = v4;
  v5 = *(v4 - 8);
  *(v3 + 120) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v7 = sub_24B638E74();
  *(v3 + 136) = v7;
  v8 = *(v7 - 8);
  *(v3 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  v10 = sub_24B638C94();
  *(v3 + 160) = v10;
  v11 = *(v10 - 8);
  *(v3 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  v13 = sub_24B638BE4();
  *(v3 + 184) = v13;
  v14 = *(v13 - 8);
  *(v3 + 192) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1E0, &qword_24B63A418) - 8) + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  v17 = sub_24B638AF4();
  *(v3 + 216) = v17;
  v18 = *(v17 - 8);
  *(v3 + 224) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B62B840, 0, 0);
}

uint64_t sub_24B62B840()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 376);
  sub_24B62C874(0, 0, 1, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24B62CB0C(*(v0 + 208));
    sub_24B62CB74();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v7 = *(v0 + 232);
    v6 = *(v0 + 240);
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v10 = *(v0 + 176);
    v11 = *(v0 + 152);
    v12 = *(v0 + 128);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    (*(*(v0 + 224) + 32))(*(v0 + 240), *(v0 + 208), *(v0 + 216));
    v15 = swift_task_alloc();
    *(v0 + 248) = v15;
    *v15 = v0;
    v15[1] = sub_24B62BA0C;

    return sub_24B62DBDC(v4 & 1);
  }
}

uint64_t sub_24B62BA0C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 248);
  v8 = *v3;
  v4[32] = a1;
  v4[33] = a2;
  v4[34] = v2;

  if (v2)
  {
    v6 = sub_24B62C574;
  }

  else
  {
    v6 = sub_24B62BB24;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24B62BB24()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  v40 = v0[20];
  v41 = v0[17];
  v8 = v0[13];
  v42 = v0[12];
  v44 = v0[34];
  sub_24B639594();

  sub_24B638CD4();
  sub_24B638BC4();
  (*(v2 + 8))(v1, v3);
  sub_24B638C84();
  (*(v5 + 8))(v4, v40);
  v9 = sub_24B638E64();
  v11 = v10;
  (*(v6 + 8))(v7, v41);
  MEMORY[0x24C244F90](v9, v11);

  MEMORY[0x24C244F90](0x746E656D6F6D20, 0xE700000000000000);
  v12 = sub_24B62941C();
  v14 = v13;
  v15 = sub_24B638954();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_24B638944();
  v0[2] = 0xD000000000000020;
  v0[3] = 0x800000024B63B9A0;
  v0[4] = v12;
  v0[5] = v14;
  v0[6] = 1802723668;
  v0[7] = 0xE400000000000000;
  v0[8] = v42;
  sub_24B62E828();
  v18 = sub_24B638934();
  v0[35] = v18;
  v0[36] = v19;
  if (v44)
  {
    v20 = v0[33];
    (*(v0[28] + 8))(v0[30], v0[27]);

    v22 = v0[29];
    v21 = v0[30];
    v24 = v0[25];
    v23 = v0[26];
    v25 = v0[22];
    v26 = v0[19];
    v27 = v0[16];

    v28 = v0[1];

    return v28();
  }

  else
  {
    v43 = v0[32];
    v45 = v0[33];
    v31 = v0[29];
    v30 = v0[30];
    v32 = v0[27];
    v33 = v0[28];
    v34 = v0[16];
    v35 = v18;
    v36 = v19;

    (*(v33 + 16))(v31, v30, v32);
    sub_24B6388C4();
    sub_24B6388B4();
    sub_24B6388D4();
    sub_24B6388D4();
    sub_24B6388D4();
    sub_24B62E87C(v35, v36);
    sub_24B6388E4();
    v0[37] = [objc_opt_self() sharedSession];
    v37 = *(MEMORY[0x277CC9D18] + 4);
    v38 = swift_task_alloc();
    v0[38] = v38;
    *v38 = v0;
    v38[1] = sub_24B62BF7C;
    v39 = v0[16];

    return MEMORY[0x28211ECF8](v39, 0);
  }
}

uint64_t sub_24B62BF7C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *v4;
  v8 = *(*v4 + 304);
  v9 = *v4;
  v7[39] = a1;
  v7[40] = a2;
  v7[41] = v3;

  v10 = v6[37];
  if (v3)
  {
    v11 = v7[33];

    v12 = sub_24B62C648;
  }

  else
  {

    v12 = sub_24B62C0DC;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_24B62C0DC()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = sub_24B638924();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_24B638914();
  sub_24B62E8D0();
  sub_24B638904();
  if (v2)
  {
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = *(v0 + 280);
    v10 = *(v0 + 264);
    v31 = *(v0 + 240);
    v11 = *(v0 + 224);
    v29 = *(v0 + 288);
    v30 = *(v0 + 216);
    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
    v14 = *(v0 + 112);

    sub_24B62B4CC(v8, v7);
    sub_24B62B4CC(v9, v29);
    (*(v12 + 8))(v13, v14);
    (*(v11 + 8))(v31, v30);
    v16 = *(v0 + 232);
    v15 = *(v0 + 240);
    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v19 = *(v0 + 176);
    v20 = *(v0 + 152);
    v21 = *(v0 + 128);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 376);

    v32 = *(v0 + 72);
    *(v0 + 336) = v32;
    *(v0 + 352) = *(v0 + 88);
    v25 = swift_task_alloc();
    *(v0 + 360) = v25;
    *v25 = v0;
    v25[1] = sub_24B62C318;
    v26 = *(v0 + 256);
    v27 = *(v0 + 264);
    v28 = *(v0 + 104);

    return sub_24B62E9D0(v28, v32, v26, v27, v24 & 1);
  }
}

uint64_t sub_24B62C318()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 264);

  if (v0)
  {
    v6 = sub_24B62C74C;
  }

  else
  {
    v6 = sub_24B62C44C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24B62C44C()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v15 = v0[26];
  v16 = v0[25];
  v17 = v0[22];
  v18 = v0[19];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];
  sub_24B62B4CC(v0[39], v0[40]);
  sub_24B62B4CC(v1, v2);
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v3, v5);

  v10 = v0[1];
  v11 = v0[43];
  v12 = v0[44];
  v13 = v0[42];

  return v10(v13, v11, v12);
}

uint64_t sub_24B62C574()
{
  (*(v0[28] + 8))(v0[30], v0[27]);
  v1 = v0[34];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[16];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24B62C648()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  sub_24B62B4CC(v0[35], v0[36]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = v0[41];
  v9 = v0[29];
  v8 = v0[30];
  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[22];
  v13 = v0[19];
  v14 = v0[16];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24B62C74C()
{
  v1 = v0[44];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[14];
  sub_24B62B4CC(v0[39], v0[40]);

  sub_24B62B4CC(v3, v2);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  v10 = v0[46];
  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[16];

  v18 = v0[1];

  return v18();
}

uint64_t sub_24B62C874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1E0, &qword_24B63A418);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24[-v10];
  v12 = sub_24B638AF4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v24[-v18];
  sub_24B638AD4();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24B62CB0C(v11);
    return (*(v13 + 56))(a4, 1, 1, v12);
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    v21 = *(v13 + 16);
    v21(v17, v19, v12);
    v22 = sub_24B62CBC8(a1, a2, a3);
    sub_24B62CCCC(v22, v17);

    v23 = *(v13 + 8);
    v23(v19, v12);
    v21(a4, v17, v12);
    (*(v13 + 56))(a4, 0, 1, v12);
    return (v23)(v17, v12);
  }
}

uint64_t sub_24B62CB0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1E0, &qword_24B63A418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B62CB74()
{
  result = qword_27F02B220;
  if (!qword_27F02B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B220);
  }

  return result;
}

void *sub_24B62CBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return &unk_285E8D718;
  }

  if (a3 == 1)
  {
    return &unk_285E8D748;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B200, &qword_24B63A430);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24B63A450;
  *(v6 + 32) = 0x736D656C626F7270;
  *(v6 + 40) = 0xE800000000000000;

  v7 = sub_24B639624();
  result = v6;
  *(v6 + 48) = v7;
  *(v6 + 56) = v8;
  *(v6 + 64) = 0x656D686361747461;
  *(v6 + 72) = 0xEB0000000073746ELL;
  *(v6 + 80) = a2;
  *(v6 + 88) = a3;
  return result;
}

uint64_t sub_24B62CCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B638A74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B638AF4();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v31 = *(v15 + 16);
    v30 = *MEMORY[0x277CC91D8];
    v28 = (v5 + 8);
    v29 = (v5 + 104);
    v32 = v15 + 16;
    v26 = (v15 + 40);
    v27 = (v15 + 8);
    v19 = (a1 + 40);
    do
    {
      v35 = v18;
      v20 = v8;
      v21 = v17;
      v22 = v4;
      v24 = *(v19 - 1);
      v23 = *v19;
      v31(v13, a2, v9);
      v33 = v24;
      v34 = v23;
      v4 = v22;
      v17 = v21;
      v8 = v20;
      (*v29)(v20, v30, v4);
      sub_24B6279B8();

      sub_24B638AE4();
      (*v28)(v20, v4);
      (*v27)(v13, v9);
      (*v26)(a2, v17, v9);

      v19 += 2;
      v18 = v35 - 1;
    }

    while (v35 != 1);
  }

  return result;
}

uint64_t sub_24B62CFC0()
{
  sub_24B639684();
  MEMORY[0x24C245180](0);
  return sub_24B6396A4();
}

uint64_t sub_24B62D02C()
{
  sub_24B639684();
  MEMORY[0x24C245180](0);
  return sub_24B6396A4();
}

uint64_t sub_24B62D08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F54737365636361 && a2 == 0xEB000000006E656BLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B639634();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B62D130(uint64_t a1)
{
  v2 = sub_24B62FD8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B62D16C(uint64_t a1)
{
  v2 = sub_24B62FD8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B62D1A8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B258, &qword_24B63A738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B62F6E8();
  sub_24B6396C4();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_24B639604();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v19[14] = 1;
  sub_24B639604();
  v15 = v3[4];
  v16 = v3[5];
  v19[13] = 2;
  sub_24B639604();
  v18 = v3[6];
  v19[12] = 3;
  sub_24B639614();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24B62D368(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B290, &qword_24B63A758);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B62FD38();
  sub_24B6396C4();
  v15 = 0;
  sub_24B639614();
  if (!v4)
  {
    v14 = 1;
    sub_24B639604();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_24B62D4FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B278, &qword_24B63A748);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B62FD8C();
  sub_24B6396B4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_24B6395E4();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_24B62D678(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B288, &qword_24B63A750);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B62FD8C();
  sub_24B6396C4();
  sub_24B639604();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_24B62D7C8()
{
  v1 = *v0;
  sub_24B639684();
  MEMORY[0x24C245180](v1);
  return sub_24B6396A4();
}

uint64_t sub_24B62D810()
{
  v1 = *v0;
  sub_24B639684();
  MEMORY[0x24C245180](v1);
  return sub_24B6396A4();
}

uint64_t sub_24B62D854()
{
  v1 = 0x656C746974;
  v2 = 0x6966697373616C63;
  if (*v0 != 2)
  {
    v2 = 0x6E656E6F706D6F63;
  }

  if (*v0)
  {
    v1 = 0x7470697263736564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B62D8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B62F73C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B62D91C(uint64_t a1)
{
  v2 = sub_24B62F6E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B62D958(uint64_t a1)
{
  v2 = sub_24B62F6E8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24B62D994@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B62F8AC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_24B62D9FC()
{
  if (*v0)
  {
    result = 0x656C746974;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_24B62DA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_24B639634() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B639634();

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

uint64_t sub_24B62DB04(uint64_t a1)
{
  v2 = sub_24B62FD38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B62DB40(uint64_t a1)
{
  v2 = sub_24B62FD38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B62DB7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24B62FB8C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_24B62DBDC(char a1)
{
  *(v1 + 312) = a1;
  v2 = sub_24B6388F4();
  *(v1 + 176) = v2;
  v3 = *(v2 - 8);
  *(v1 + 184) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 192) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B238, &qword_24B63A490);
  *(v1 + 200) = v5;
  v6 = *(v5 - 8);
  *(v1 + 208) = v6;
  v7 = *(v6 + 64) + 15;
  *(v1 + 216) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1E0, &qword_24B63A418) - 8) + 64) + 15;
  *(v1 + 224) = swift_task_alloc();
  v9 = sub_24B638AF4();
  *(v1 + 232) = v9;
  v10 = *(v9 - 8);
  *(v1 + 240) = v10;
  v11 = *(v10 + 64) + 15;
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B62DDA4, 0, 0);
}

uint64_t sub_24B62DDA4()
{
  v1 = objc_opt_self();
  if (![v1 isAppleConnectAvailable])
  {
    v6 = 0;
    goto LABEL_5;
  }

  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 312) & 1;
  sub_24B62C874(0, 0, 0, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_24B62CB0C(*(v0 + 224));
    v6 = 1;
LABEL_5:
    sub_24B62CB74();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v11 = *(v0 + 216);
    v10 = *(v0 + 224);
    v12 = *(v0 + 192);

    v13 = *(v0 + 8);

    return v13();
  }

  v15 = *(v0 + 216);
  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  (*(*(v0 + 240) + 32))(*(v0 + 256), *(v0 + 224), *(v0 + 232));
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_24B62E08C;
  swift_continuation_init();
  *(v0 + 136) = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B240, &unk_24B63A498);
  sub_24B6394E4();
  (*(v17 + 32))(boxed_opaque_existential_0, v15, v16);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24B62E924;
  *(v0 + 104) = &block_descriptor;
  [v1 authenticateWithEnvironment:v5 completionHandler:?];
  (*(v17 + 8))(boxed_opaque_existential_0, v16);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24B62E08C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_24B62E694;
  }

  else
  {
    v3 = sub_24B62E19C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24B62E19C()
{
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[19];
  (*(v0[30] + 16))(v0[31], v0[32], v0[29]);
  sub_24B6388C4();
  sub_24B6388B4();
  MEMORY[0x24C244F90](v2, v3);

  sub_24B6388D4();

  v0[34] = [objc_opt_self() sharedSession];
  v4 = *(MEMORY[0x277CC9D18] + 4);
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_24B62E314;
  v6 = v0[24];

  return MEMORY[0x28211ECF8](v6, 0);
}

uint64_t sub_24B62E314(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *v4;
  v8 = *(*v4 + 280);
  v9 = *v4;
  v7[36] = a1;
  v7[37] = a2;
  v7[38] = v3;

  v10 = v6[34];
  if (v3)
  {

    v11 = sub_24B62E754;
  }

  else
  {

    v11 = sub_24B62E460;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_24B62E460()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = sub_24B638924();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_24B638914();
  sub_24B62F414();
  sub_24B638904();
  v8 = v0[36];
  v7 = v0[37];
  v9 = v0[32];
  if (v1)
  {
    v10 = v0[30];
    v31 = v0[29];
    v11 = v0[23];
    v12 = v0[24];
    v13 = v0[22];

    sub_24B62B4CC(v8, v7);
    (*(v11 + 8))(v12, v13);
    (*(v10 + 8))(v9, v31);
    v15 = v0[31];
    v14 = v0[32];
    v17 = v0[27];
    v16 = v0[28];
    v18 = v0[24];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[30];
    v22 = v0[29];
    v29 = v0[31];
    v30 = v0[28];
    v32 = v0[27];
    v23 = v0[23];
    v24 = v0[24];
    v25 = v0[22];

    sub_24B62B4CC(v8, v7);
    (*(v23 + 8))(v24, v25);
    (*(v21 + 8))(v9, v22);
    v26 = v0[20];
    v27 = v0[21];

    v28 = v0[1];

    return v28(v26, v27);
  }
}

uint64_t sub_24B62E694()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[29];
  v4 = v0[30];
  swift_willThrow();
  (*(v4 + 8))(v1, v3);
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[31];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[24];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24B62E754()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[38];
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[24];

  v10 = v0[1];

  return v10();
}

unint64_t sub_24B62E828()
{
  result = qword_27F02B228;
  if (!qword_27F02B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B228);
  }

  return result;
}

uint64_t sub_24B62E87C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24B62E8D0()
{
  result = qword_27F02B230;
  if (!qword_27F02B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B230);
  }

  return result;
}

void sub_24B62E924(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B238, &qword_24B63A490);
    sub_24B6394F4();
  }

  else
  {
    sub_24B639464();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B238, &qword_24B63A490);
    sub_24B639504();
  }
}

uint64_t sub_24B62E9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 200) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_24B6388F4();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v9 = sub_24B638E94();
  *(v5 + 72) = v9;
  v10 = *(v9 - 8);
  *(v5 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v12 = sub_24B638B84();
  *(v5 + 96) = v12;
  v13 = *(v12 - 8);
  *(v5 + 104) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1E0, &qword_24B63A418) - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v16 = sub_24B638AF4();
  *(v5 + 128) = v16;
  v17 = *(v16 - 8);
  *(v5 + 136) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B62EBF0, 0, 0);
}

uint64_t sub_24B62EBF0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 200) & 1;
  sub_24B62C874(*(v0 + 24), 0xD000000000000016, 0x800000024B63BA10, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24B62CB0C(*(v0 + 120));
    sub_24B62CB74();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v20 = *(v0 + 144);
    v19 = *(v0 + 152);
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);
    v23 = *(v0 + 88);
    v24 = *(v0 + 64);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 16);
    (*(*(v0 + 136) + 32))(*(v0 + 152), *(v0 + 120), *(v0 + 128));
    sub_24B638CE4();
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    sub_24B638E84();
    sub_24B62F2D0();
    v14 = sub_24B638EA4();
    v16 = v15;
    v17 = v14;
    *(v0 + 160) = v14;
    *(v0 + 168) = v15;
    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
    v18 = *(v0 + 152);
    v27 = *(v0 + 64);
    v29 = *(v0 + 32);
    v28 = *(v0 + 40);
    (*(*(v0 + 136) + 16))(*(v0 + 144), *(v0 + 152), *(v0 + 128));
    sub_24B6388C4();
    sub_24B6388B4();
    sub_24B6388D4();
    sub_24B6388D4();
    sub_24B62E87C(v17, v16);
    sub_24B6388E4();
    *(v0 + 176) = [objc_opt_self() sharedSession];
    v30 = *(MEMORY[0x277CC9D18] + 4);
    v31 = swift_task_alloc();
    *(v0 + 184) = v31;
    *v31 = v0;
    v31[1] = sub_24B62EF84;
    v32 = *(v0 + 64);

    return MEMORY[0x28211ECF8](v32, 0);
  }
}

uint64_t sub_24B62EF84(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = *v4;
  v9 = *(*v4 + 184);
  v10 = *v4;
  *(*v4 + 192) = v3;

  v11 = *(v8 + 176);
  if (v3)
  {

    v12 = sub_24B62F1E0;
  }

  else
  {
    sub_24B62B4CC(a1, a2);

    v12 = sub_24B62F0E0;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_24B62F0E0()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v12 = v0[11];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[6];
  sub_24B62B4CC(v0[20], v0[21]);
  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v2, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24B62F1E0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  sub_24B62B4CC(v0[20], v0[21]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = v0[24];
  v9 = v0[18];
  v8 = v0[19];
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[11];
  v13 = v0[8];

  v14 = v0[1];

  return v14();
}

unint64_t sub_24B62F2D0()
{
  result = qword_27F02B1E8;
  if (!qword_27F02B1E8)
  {
    sub_24B638B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B1E8);
  }

  return result;
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

uint64_t sub_24B62F39C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24B62F414()
{
  result = qword_27F02B248;
  if (!qword_27F02B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B248);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24B62F474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24B62F4BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B62F51C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24B62F564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24B62F5D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24B62F618(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_24B62F694()
{
  result = qword_27F02B250;
  if (!qword_27F02B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B250);
  }

  return result;
}

unint64_t sub_24B62F6E8()
{
  result = qword_27F02B260;
  if (!qword_27F02B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B260);
  }

  return result;
}

uint64_t sub_24B62F73C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24B639634() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24B639634() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163 || (sub_24B639634() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEB00000000444974)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B639634();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24B62F8AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B298, &qword_24B63A760);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B62F6E8();
  sub_24B6396B4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  v11 = sub_24B6395E4();
  v27 = v12;
  v30 = 1;
  v13 = sub_24B6395E4();
  v26 = v14;
  v24 = v13;
  v29 = 2;
  v23 = sub_24B6395E4();
  v25 = v15;
  v28 = 3;
  v16 = sub_24B6395F4();
  (*(v6 + 8))(v9, v5);
  v17 = v27;

  v18 = v26;

  v19 = v25;

  __swift_destroy_boxed_opaque_existential_1(a1);

  *a2 = v11;
  a2[1] = v17;
  v21 = v23;
  a2[2] = v24;
  a2[3] = v18;
  a2[4] = v21;
  a2[5] = v19;
  a2[6] = v16;
  return result;
}

uint64_t sub_24B62FB8C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B268, &qword_24B63A740);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_24B62FD38();
  sub_24B6396B4();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_24B6395F4();
    v10[14] = 1;
    sub_24B6395E4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_24B62FD38()
{
  result = qword_27F02B270;
  if (!qword_27F02B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B270);
  }

  return result;
}

unint64_t sub_24B62FD8C()
{
  result = qword_27F02B280;
  if (!qword_27F02B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B280);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RadarService.CreateProblemRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RadarService.CreateProblemRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24B62FF8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24B63001C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B6300E0()
{
  result = qword_27F02B2A0;
  if (!qword_27F02B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2A0);
  }

  return result;
}

unint64_t sub_24B630138()
{
  result = qword_27F02B2A8;
  if (!qword_27F02B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2A8);
  }

  return result;
}

unint64_t sub_24B630190()
{
  result = qword_27F02B2B0;
  if (!qword_27F02B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2B0);
  }

  return result;
}

unint64_t sub_24B6301E8()
{
  result = qword_27F02B2B8;
  if (!qword_27F02B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2B8);
  }

  return result;
}

unint64_t sub_24B630240()
{
  result = qword_27F02B2C0;
  if (!qword_27F02B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2C0);
  }

  return result;
}

unint64_t sub_24B630298()
{
  result = qword_27F02B2C8;
  if (!qword_27F02B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2C8);
  }

  return result;
}

unint64_t sub_24B6302F0()
{
  result = qword_27F02B2D0;
  if (!qword_27F02B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2D0);
  }

  return result;
}

unint64_t sub_24B630348()
{
  result = qword_27F02B2D8;
  if (!qword_27F02B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2D8);
  }

  return result;
}

unint64_t sub_24B6303A0()
{
  result = qword_27F02B2E0;
  if (!qword_27F02B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2E0);
  }

  return result;
}

unint64_t sub_24B6303F8()
{
  result = qword_27F02B2E8;
  if (!qword_27F02B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2E8);
  }

  return result;
}

uint64_t sub_24B63046C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_24B639634();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_24B630670(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x800000024B63B560;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x800000024B63B580;
    }

    v5 = 0x800000024B63B520;
    if (a1 != 3)
    {
      v5 = 0x800000024B63B540;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_24B639634();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x800000024B63B560;
    }

    else
    {
      v10 = 0x800000024B63B580;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x800000024B63B520;
    }

    else
    {
      v10 = 0x800000024B63B540;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_24B630848(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = sub_24B639634();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_24B630A40()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B2F0, &qword_24B63ABE0);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = sub_24B638AF4();
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();
  sub_24B639524();
  v1[25] = sub_24B639514();
  v9 = sub_24B6394D4();
  v1[26] = v9;
  v1[27] = v8;

  return MEMORY[0x2822009F8](sub_24B630B9C, v9, v8);
}

uint64_t sub_24B630B9C()
{
  v1 = v0[18];
  sub_24B631004(v0[24]);
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = [objc_opt_self() sharedApplication];
  v0[28] = v6;
  v7 = sub_24B638A84();
  v0[29] = v7;
  sub_24B63672C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_24B636854();
  v8 = sub_24B639404();
  v0[30] = v8;

  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_24B630E3C;
  swift_continuation_init();
  v0[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_24B6394E4();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24B633C70;
  v0[13] = &block_descriptor_0;
  [v6 openURL:v7 options:v8 completionHandler:?];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24B630E3C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24B630F44, v2, v1);
}

uint64_t sub_24B630F44()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[21];

  (*(v7 + 8))(v5, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24B631004@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1E0, &qword_24B63A418);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_24B6389F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B6389E4();
  sub_24B6389D4();
  MEMORY[0x24C2444B0](7824750, 0xE300000000000000);
  sub_24B631254();
  sub_24B6389A4();
  sub_24B6389B4();
  v11 = sub_24B638AF4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_24B628424(v5, &qword_27F02B1E0, &qword_24B63A418);
    sub_24B6368D4();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 32))(a1, v5, v11);
  }
}

char *sub_24B631254()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B310, &unk_24B63AC00);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v400 = &v364 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v399 = &v364 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v398 = &v364 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v395 = &v364 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v392 = &v364 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v389 = &v364 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v388 = &v364 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v364 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v364 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v364 - v24;
  v26 = sub_24B638994();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v367 = &v364 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v366 = &v364 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v383 = &v364 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v382 = &v364 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v419 = &v364 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v381 = &v364 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v418 = &v364 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v417 = &v364 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v380 = &v364 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v416 = &v364 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v397 = &v364 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v396 = &v364 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v415 = &v364 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v379 = &v364 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v414 = &v364 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v413 = &v364 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v378 = &v364 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v412 = &v364 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v411 = &v364 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v377 = &v364 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v410 = &v364 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v409 = &v364 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v376 = &v364 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v408 = &v364 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v394 = &v364 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v393 = &v364 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v420 = &v364 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v375 = &v364 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v407 = &v364 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v406 = &v364 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v374 = &v364 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v405 = &v364 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v404 = &v364 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v373 = &v364 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v403 = &v364 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v391 = &v364 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v390 = &v364 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v402 = &v364 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v372 = &v364 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v401 = &v364 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v371 = &v364 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v370 = &v364 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v369 = &v364 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v368 = &v364 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v387 = &v364 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v386 = &v364 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v385 = &v364 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v384 = &v364 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v127 = &v364 - v126;
  MEMORY[0x28223BE20](v125);
  v129 = &v364 - v128;
  v424 = v27;
  v425 = MEMORY[0x277D84F90];
  v130 = v1[3];
  v421 = v1;
  if (!v130)
  {
    v422 = *(v27 + 56);
    v422(v25, 1, 1, v26);
LABEL_5:
    sub_24B628424(v25, &qword_27F02B310, &unk_24B63AC00);
    v134 = v1[6];
    if (!v134)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v131 = v1[1];
  v132 = v1[2];
  v133 = *v1;

  v27 = v424;
  sub_24B638984();
  v422 = *(v27 + 56);
  v422(v25, 0, 1, v26);

  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v1 = v421;
    goto LABEL_5;
  }

  v423 = *(v27 + 32);
  v423(v129, v25, v26);
  (*(v27 + 16))(v127, v129, v26);
  v167 = sub_24B62A18C(0, 1, 1, MEMORY[0x277D84F90]);
  v169 = v167[2];
  v168 = v167[3];
  v365 = v20;
  if (v169 >= v168 >> 1)
  {
    v167 = sub_24B62A18C(v168 > 1, v169 + 1, 1, v167);
  }

  v170 = v424;
  v171 = v424 + 8;
  (*(v424 + 8))(v129, v26);
  v167[2] = v169 + 1;
  v172 = v167 + ((*(v171 + 72) + 32) & ~*(v171 + 72)) + *(v171 + 64) * v169;
  v27 = v170;
  v423(v172, v127, v26);
  v425 = v167;
  v1 = v421;
  v20 = v365;
  v134 = v421[6];
  if (v134)
  {
LABEL_6:
    v136 = v1[7];
    v135 = v1[8];
    v426 = *(v1 + 2);
    v427 = v134;
    v428 = v136;
    v429 = v135;
    v137 = sub_24B633CCC();
    sub_24B635DF4(v137);
  }

LABEL_7:
  v138 = v1[9];
  v139 = v1[10];
  v140 = *(v1 + 88);

  sub_24B6357DC(v140, v23);

  v423 = *(v27 + 48);
  if (v423(v23, 1, v26) == 1)
  {
    sub_24B628424(v23, &qword_27F02B310, &unk_24B63AC00);
  }

  else
  {
    v141 = *(v27 + 32);
    v142 = v384;
    v141(v384, v23, v26);
    (*(v27 + 16))(v385, v142, v26);
    v143 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_24B62A18C(0, *(v143 + 2) + 1, 1, v143);
    }

    v145 = *(v143 + 2);
    v144 = *(v143 + 3);
    if (v145 >= v144 >> 1)
    {
      v143 = sub_24B62A18C(v144 > 1, v145 + 1, 1, v143);
    }

    (*(v27 + 8))(v384, v26);
    *(v143 + 2) = v145 + 1;
    v141(&v143[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v145], v385, v26);
    v425 = v143;
    v1 = v421;
  }

  v146 = v1[12];
  v147 = v1[13];
  v148 = *(v1 + 112);

  sub_24B6359D0(v148, v20);

  if (v423(v20, 1, v26) == 1)
  {
    sub_24B628424(v20, &qword_27F02B310, &unk_24B63AC00);
    if (v1[18])
    {
      goto LABEL_16;
    }

LABEL_28:
    v152 = v388;
    v422(v388, 1, 1, v26);
    goto LABEL_29;
  }

  v159 = *(v27 + 32);
  v160 = v386;
  v159(v386, v20, v26);
  (*(v27 + 16))(v387, v160, v26);
  v161 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v161 = sub_24B62A18C(0, *(v161 + 2) + 1, 1, v161);
  }

  v163 = *(v161 + 2);
  v162 = *(v161 + 3);
  if (v163 >= v162 >> 1)
  {
    v161 = sub_24B62A18C(v162 > 1, v163 + 1, 1, v161);
  }

  (*(v27 + 8))(v386, v26);
  *(v161 + 2) = v163 + 1;
  v159(&v161[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v163], v387, v26);
  v425 = v161;
  if (!v1[18])
  {
    goto LABEL_28;
  }

LABEL_16:
  v150 = v1[16];
  v149 = v1[17];
  v151 = v1[15];

  v152 = v388;
  sub_24B638984();
  v422(v152, 0, 1, v26);

  if (v423(v152, 1, v26) != 1)
  {
    v153 = *(v27 + 32);
    v154 = v368;
    v153(v368, v152, v26);
    (*(v27 + 16))(v369, v154, v26);
    v155 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v155 = sub_24B62A18C(0, *(v155 + 2) + 1, 1, v155);
    }

    v157 = *(v155 + 2);
    v156 = *(v155 + 3);
    if (v157 >= v156 >> 1)
    {
      v155 = sub_24B62A18C(v156 > 1, v157 + 1, 1, v155);
    }

    (*(v27 + 8))(v368, v26);
    *(v155 + 2) = v157 + 1;
    v153(&v155[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v157], v369, v26);
    v425 = v155;
    if (!v1[22])
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_24B628424(v152, &qword_27F02B310, &unk_24B63AC00);
  if (!v1[22])
  {
LABEL_22:
    v158 = v389;
    v422(v389, 1, 1, v26);
LABEL_31:
    sub_24B628424(v158, &qword_27F02B310, &unk_24B63AC00);
    goto LABEL_41;
  }

LABEL_30:
  v165 = v1[20];
  v164 = v1[21];
  v166 = v1[19];

  v158 = v389;
  sub_24B638984();
  v422(v158, 0, 1, v26);

  if (v423(v158, 1, v26) == 1)
  {
    goto LABEL_31;
  }

  v173 = *(v27 + 32);
  v174 = v370;
  v173(v370, v158, v26);
  (*(v27 + 16))(v371, v174, v26);
  v175 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v175 = sub_24B62A18C(0, *(v175 + 2) + 1, 1, v175);
  }

  v177 = *(v175 + 2);
  v176 = *(v175 + 3);
  if (v177 >= v176 >> 1)
  {
    v175 = sub_24B62A18C(v176 > 1, v177 + 1, 1, v175);
  }

  (*(v27 + 8))(v370, v26);
  *(v175 + 2) = v177 + 1;
  v173(&v175[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v177], v371, v26);
  v425 = v175;
LABEL_41:
  v179 = v1[23];
  v178 = v1[24];
  v180 = v1[25];

  sub_24B63643C(v181);
  if (v182)
  {
    v183 = v372;
    sub_24B638984();

    v184 = *(v27 + 32);
    v185 = v401;
    v184(v401, v183, v26);
    (*(v27 + 16))(v402, v185, v26);
    v186 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v186 = sub_24B62A18C(0, *(v186 + 2) + 1, 1, v186);
    }

    v188 = *(v186 + 2);
    v187 = *(v186 + 3);
    if (v188 >= v187 >> 1)
    {
      v186 = sub_24B62A18C(v187 > 1, v188 + 1, 1, v186);
    }

    (*(v27 + 8))(v401, v26);
    *(v186 + 2) = v188 + 1;
    v184(&v186[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v188], v402, v26);
    v425 = v186;
  }

  else
  {
  }

  v189 = type metadata accessor for TapToRadarDraft();
  v190 = v1 + v189[11];
  v191 = v392;
  sub_24B635B28(v392);
  if (v423(v191, 1, v26) == 1)
  {
    sub_24B628424(v191, &qword_27F02B310, &unk_24B63AC00);
  }

  else
  {
    v192 = *(v27 + 32);
    v193 = v390;
    v192(v390, v191, v26);
    (*(v27 + 16))(v391, v193, v26);
    v194 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v194 = sub_24B62A18C(0, *(v194 + 2) + 1, 1, v194);
    }

    v196 = *(v194 + 2);
    v195 = *(v194 + 3);
    if (v196 >= v195 >> 1)
    {
      v194 = sub_24B62A18C(v195 > 1, v196 + 1, 1, v194);
    }

    (*(v27 + 8))(v390, v26);
    *(v194 + 2) = v196 + 1;
    v192(&v194[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v196], v391, v26);
    v425 = v194;
    v1 = v421;
  }

  v197 = (v1 + v189[12]);
  v199 = *v197;
  v198 = v197[1];
  v200 = v197[2];

  sub_24B636228(v201);
  if (v202)
  {
    v203 = v373;
    sub_24B638984();

    v204 = *(v27 + 32);
    v205 = v403;
    v204(v403, v203, v26);
    (*(v27 + 16))(v404, v205, v26);
    v206 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v206 = sub_24B62A18C(0, *(v206 + 2) + 1, 1, v206);
    }

    v208 = *(v206 + 2);
    v207 = *(v206 + 3);
    if (v208 >= v207 >> 1)
    {
      v206 = sub_24B62A18C(v207 > 1, v208 + 1, 1, v206);
    }

    (*(v27 + 8))(v403, v26);
    *(v206 + 2) = v208 + 1;
    v204(&v206[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v208], v404, v26);
    v425 = v206;
    v1 = v421;
  }

  else
  {
  }

  v209 = (v1 + v189[13]);
  v211 = *v209;
  v210 = v209[1];
  v212 = v209[2];

  sub_24B636228(v213);
  if (v214)
  {
    v215 = v374;
    sub_24B638984();

    v216 = *(v27 + 32);
    v217 = v405;
    v216(v405, v215, v26);
    (*(v27 + 16))(v406, v217, v26);
    v218 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v218 = sub_24B62A18C(0, *(v218 + 2) + 1, 1, v218);
    }

    v220 = *(v218 + 2);
    v219 = *(v218 + 3);
    if (v220 >= v219 >> 1)
    {
      v218 = sub_24B62A18C(v219 > 1, v220 + 1, 1, v218);
    }

    (*(v27 + 8))(v405, v26);
    *(v218 + 2) = v220 + 1;
    v216(&v218[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v220], v406, v26);
    v425 = v218;
    v1 = v421;
  }

  else
  {
  }

  v221 = (v1 + v189[14]);
  v223 = *v221;
  v222 = v221[1];
  v224 = v221[2];

  sub_24B6360F8(v225);
  if (v226)
  {
    v227 = v375;
    sub_24B638984();

    v228 = *(v27 + 32);
    v229 = v407;
    v228(v407, v227, v26);
    (*(v27 + 16))(v420, v229, v26);
    v230 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v230 = sub_24B62A18C(0, *(v230 + 2) + 1, 1, v230);
    }

    v232 = *(v230 + 2);
    v231 = *(v230 + 3);
    if (v232 >= v231 >> 1)
    {
      v230 = sub_24B62A18C(v231 > 1, v232 + 1, 1, v230);
    }

    (*(v27 + 8))(v407, v26);
    *(v230 + 2) = v232 + 1;
    v228(&v230[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v232], v420, v26);
    v425 = v230;
    v1 = v421;
  }

  else
  {
  }

  v233 = (v1 + v189[15]);
  v234 = *v233;
  v235 = v233[1];
  *(v233 + 16);

  v236 = v395;
  sub_24B638984();

  v420 = (v27 + 56);
  v422(v236, 0, 1, v26);

  if (v423(v236, 1, v26) == 1)
  {
    sub_24B628424(v236, &qword_27F02B310, &unk_24B63AC00);
  }

  else
  {
    v237 = *(v27 + 32);
    v238 = v393;
    v237(v393, v236, v26);
    (*(v27 + 16))(v394, v238, v26);
    v239 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v239 = sub_24B62A18C(0, *(v239 + 2) + 1, 1, v239);
    }

    v241 = *(v239 + 2);
    v240 = *(v239 + 3);
    if (v241 >= v240 >> 1)
    {
      v239 = sub_24B62A18C(v240 > 1, v241 + 1, 1, v239);
    }

    v242 = v424 + 8;
    (*(v424 + 8))(v393, v26);
    *(v239 + 2) = v241 + 1;
    v237(&v239[((*(v242 + 72) + 32) & ~*(v242 + 72)) + *(v242 + 64) * v241], v394, v26);
    v425 = v239;
  }

  v243 = (v1 + v189[16]);
  v245 = *v243;
  v244 = v243[1];
  v246 = v243[2];

  sub_24B6360F8(v247);
  if (v248)
  {
    v249 = v376;
    sub_24B638984();

    v250 = v424;
    v251 = *(v424 + 32);
    v252 = v408;
    v251(v408, v249, v26);
    (*(v250 + 16))(v409, v252, v26);
    v253 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v253 = sub_24B62A18C(0, *(v253 + 2) + 1, 1, v253);
    }

    v255 = *(v253 + 2);
    v254 = *(v253 + 3);
    if (v255 >= v254 >> 1)
    {
      v253 = sub_24B62A18C(v254 > 1, v255 + 1, 1, v253);
    }

    v256 = v424 + 8;
    (*(v424 + 8))(v408, v26);
    *(v253 + 2) = v255 + 1;
    v251(&v253[((*(v256 + 72) + 32) & ~*(v256 + 72)) + *(v256 + 64) * v255], v409, v26);
    v425 = v253;
  }

  else
  {
  }

  v257 = (v1 + v189[17]);
  v259 = *v257;
  v258 = v257[1];
  v260 = v257[2];

  sub_24B635F20(v261);
  if (v262)
  {
    v263 = v377;
    sub_24B638984();

    v264 = v424;
    v265 = *(v424 + 32);
    v266 = v410;
    v265(v410, v263, v26);
    (*(v264 + 16))(v411, v266, v26);
    v267 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v267 = sub_24B62A18C(0, *(v267 + 2) + 1, 1, v267);
    }

    v269 = *(v267 + 2);
    v268 = *(v267 + 3);
    if (v269 >= v268 >> 1)
    {
      v267 = sub_24B62A18C(v268 > 1, v269 + 1, 1, v267);
    }

    v270 = v424 + 8;
    (*(v424 + 8))(v410, v26);
    *(v267 + 2) = v269 + 1;
    v265(&v267[((*(v270 + 72) + 32) & ~*(v270 + 72)) + *(v270 + 64) * v269], v411, v26);
    v425 = v267;
  }

  else
  {
  }

  v271 = (v1 + v189[18]);
  v273 = *v271;
  v272 = v271[1];
  v274 = v271[2];

  sub_24B6360F8(v275);
  if (v276)
  {
    v277 = v378;
    sub_24B638984();

    v278 = v424;
    v279 = *(v424 + 32);
    v280 = v412;
    v279(v412, v277, v26);
    (*(v278 + 16))(v413, v280, v26);
    v281 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v281 = sub_24B62A18C(0, *(v281 + 2) + 1, 1, v281);
    }

    v283 = *(v281 + 2);
    v282 = *(v281 + 3);
    if (v283 >= v282 >> 1)
    {
      v281 = sub_24B62A18C(v282 > 1, v283 + 1, 1, v281);
    }

    v284 = v424 + 8;
    (*(v424 + 8))(v412, v26);
    *(v281 + 2) = v283 + 1;
    v279(&v281[((*(v284 + 72) + 32) & ~*(v284 + 72)) + *(v284 + 64) * v283], v413, v26);
    v425 = v281;
  }

  else
  {
  }

  v285 = (v1 + v189[19]);
  v287 = *v285;
  v286 = v285[1];
  v288 = v285[2];

  sub_24B634C20(v288);
  if (v289)
  {
    v290 = v379;
    sub_24B638984();

    v291 = v424;
    v292 = *(v424 + 32);
    v293 = v414;
    v292(v414, v290, v26);
    (*(v291 + 16))(v415, v293, v26);
    v294 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v294 = sub_24B62A18C(0, *(v294 + 2) + 1, 1, v294);
    }

    v296 = *(v294 + 2);
    v295 = *(v294 + 3);
    if (v296 >= v295 >> 1)
    {
      v294 = sub_24B62A18C(v295 > 1, v296 + 1, 1, v294);
    }

    v297 = v424 + 8;
    (*(v424 + 8))(v414, v26);
    *(v294 + 2) = v296 + 1;
    v292(&v294[((*(v297 + 72) + 32) & ~*(v297 + 72)) + *(v297 + 64) * v296], v415, v26);
    v425 = v294;
  }

  else
  {
  }

  v298 = (v1 + v189[20]);
  v299 = *v298;
  v300 = v298[1];
  *(v298 + 16);

  v301 = v398;
  sub_24B638984();

  v422(v301, 0, 1, v26);
  v302 = v301;

  if (v423(v301, 1, v26) == 1)
  {
    sub_24B628424(v301, &qword_27F02B310, &unk_24B63AC00);
  }

  else
  {
    v303 = v424;
    v304 = *(v424 + 32);
    v305 = v396;
    v304(v396, v302, v26);
    (*(v303 + 16))(v397, v305, v26);
    v306 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v306 = sub_24B62A18C(0, *(v306 + 2) + 1, 1, v306);
    }

    v308 = *(v306 + 2);
    v307 = *(v306 + 3);
    if (v308 >= v307 >> 1)
    {
      v306 = sub_24B62A18C(v307 > 1, v308 + 1, 1, v306);
    }

    v309 = v424 + 8;
    (*(v424 + 8))(v396, v26);
    *(v306 + 2) = v308 + 1;
    v304(&v306[((*(v309 + 72) + 32) & ~*(v309 + 72)) + *(v309 + 64) * v308], v397, v26);
    v425 = v306;
  }

  v310 = (v1 + v189[21]);
  v312 = *v310;
  v311 = v310[1];
  v313 = *(v310 + 16);

  sub_24B6353A4(v313);
  if (v314)
  {
    v315 = v380;
    sub_24B638984();

    v316 = v424;
    v317 = *(v424 + 32);
    v318 = v416;
    v317(v416, v315, v26);
    (*(v316 + 16))(v417, v318, v26);
    v319 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v319 = sub_24B62A18C(0, *(v319 + 2) + 1, 1, v319);
    }

    v321 = *(v319 + 2);
    v320 = *(v319 + 3);
    if (v321 >= v320 >> 1)
    {
      v319 = sub_24B62A18C(v320 > 1, v321 + 1, 1, v319);
    }

    v322 = v424 + 8;
    (*(v424 + 8))(v416, v26);
    *(v319 + 2) = v321 + 1;
    v317(&v319[((*(v322 + 72) + 32) & ~*(v322 + 72)) + *(v322 + 64) * v321], v417, v26);
    v425 = v319;
  }

  else
  {
  }

  v323 = (v1 + v189[22]);
  v325 = *v323;
  v324 = v323[1];
  v326 = v323[2];

  sub_24B6360F8(v327);
  if (v328)
  {
    v329 = v381;
    sub_24B638984();

    v330 = v424;
    v331 = *(v424 + 32);
    v332 = v418;
    v331(v418, v329, v26);
    (*(v330 + 16))(v419, v332, v26);
    v333 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v333 = sub_24B62A18C(0, *(v333 + 2) + 1, 1, v333);
    }

    v335 = *(v333 + 2);
    v334 = *(v333 + 3);
    if (v335 >= v334 >> 1)
    {
      v333 = sub_24B62A18C(v334 > 1, v335 + 1, 1, v333);
    }

    v336 = v424 + 8;
    (*(v424 + 8))(v418, v26);
    *(v333 + 2) = v335 + 1;
    v331(&v333[((*(v336 + 72) + 32) & ~*(v336 + 72)) + *(v336 + 64) * v335], v419, v26);
    v425 = v333;
  }

  else
  {
  }

  v337 = (v1 + v189[23]);
  if (!v337[3])
  {
    v342 = v399;
    v422(v399, 1, 1, v26);
    v344 = v424;
    goto LABEL_140;
  }

  v339 = v337[1];
  v338 = v337[2];
  v340 = *v337;
  v341 = v337[3];

  v342 = v399;
  sub_24B638984();
  v422(v342, 0, 1, v26);

  v343 = v423(v342, 1, v26);
  v344 = v424;
  if (v343 == 1)
  {
LABEL_140:
    sub_24B628424(v342, &qword_27F02B310, &unk_24B63AC00);
    goto LABEL_141;
  }

  v345 = *(v424 + 32);
  v346 = v382;
  v345(v382, v342, v26);
  (*(v344 + 16))(v383, v346, v26);
  v347 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v347 = sub_24B62A18C(0, *(v347 + 2) + 1, 1, v347);
  }

  v349 = *(v347 + 2);
  v348 = *(v347 + 3);
  if (v349 >= v348 >> 1)
  {
    v347 = sub_24B62A18C(v348 > 1, v349 + 1, 1, v347);
  }

  v344 = v424;
  v350 = v424 + 8;
  (*(v424 + 8))(v382, v26);
  *(v347 + 2) = v349 + 1;
  v345(&v347[((*(v350 + 72) + 32) & ~*(v350 + 72)) + *(v350 + 64) * v349], v383, v26);
  v425 = v347;
LABEL_141:
  v351 = (v421 + v189[24]);
  if (!v351[3])
  {
    v356 = v400;
    v422(v400, 1, 1, v26);
    goto LABEL_149;
  }

  v353 = v351[1];
  v352 = v351[2];
  v354 = *v351;
  v355 = v351[3];

  v356 = v400;
  sub_24B638984();
  v422(v356, 0, 1, v26);

  if (v423(v356, 1, v26) == 1)
  {
LABEL_149:
    sub_24B628424(v356, &qword_27F02B310, &unk_24B63AC00);
    return v425;
  }

  v357 = *(v344 + 32);
  v358 = v366;
  v357(v366, v356, v26);
  v359 = v367;
  (*(v344 + 16))(v367, v358, v26);
  v360 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v360 = sub_24B62A18C(0, *(v360 + 2) + 1, 1, v360);
  }

  v362 = *(v360 + 2);
  v361 = *(v360 + 3);
  if (v362 >= v361 >> 1)
  {
    v360 = sub_24B62A18C(v361 > 1, v362 + 1, 1, v360);
  }

  (*(v344 + 8))(v358, v26);
  *(v360 + 2) = v362 + 1;
  v357(&v360[((*(v344 + 80) + 32) & ~*(v344 + 80)) + *(v344 + 72) * v362], v359, v26);
  return v360;
}

uint64_t sub_24B633C70(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B2F0, &qword_24B63ABE0);
  return sub_24B639504();
}

uint64_t sub_24B633CCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B208, &qword_24B63A438);
  v1 = *(sub_24B638994() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24B63AB10;
  v10 = *v0;
  sub_24B639624();
  sub_24B638984();

  v5 = v0[1];
  v6 = v0[2];
  sub_24B638984();
  v7 = v0[3];
  v8 = v0[4];
  sub_24B638984();
  return v4;
}

uint64_t sub_24B633E48()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24B639684();
  MEMORY[0x24C245180](v1);
  sub_24B639494();
  sub_24B639494();
  return sub_24B6396A4();
}

uint64_t sub_24B633EC8()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x24C245180](*v0);
  sub_24B639494();

  return sub_24B639494();
}

uint64_t sub_24B633F38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24B639684();
  MEMORY[0x24C245180](v1);
  sub_24B639494();
  sub_24B639494();
  return sub_24B6396A4();
}

uint64_t sub_24B633FB4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_24B639634() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_24B639634();
}

unint64_t sub_24B634068(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24B6341CC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_24B634068(*a1);
  v5 = v4;
  if (v3 == sub_24B634068(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B639634();
  }

  return v8 & 1;
}

uint64_t sub_24B634254()
{
  v1 = *v0;
  sub_24B639684();
  sub_24B634068(v1);
  sub_24B639494();

  return sub_24B6396A4();
}

uint64_t sub_24B6342B8()
{
  sub_24B639684();
  sub_24B639494();

  return sub_24B6396A4();
}

uint64_t sub_24B6343CC()
{
  sub_24B634068(*v0);
  sub_24B639494();
}

uint64_t sub_24B634420()
{
  v1 = *v0;
  sub_24B639684();
  sub_24B634068(v1);
  sub_24B639494();

  return sub_24B6396A4();
}

uint64_t sub_24B634480()
{
  sub_24B639684();
  sub_24B639494();

  return sub_24B6396A4();
}

uint64_t sub_24B634588()
{
  sub_24B639684();
  sub_24B639494();

  return sub_24B6396A4();
}

uint64_t sub_24B634698()
{
  sub_24B639684();
  sub_24B639494();

  return sub_24B6396A4();
}

uint64_t sub_24B6347A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24B6381F0();
  *a2 = result;
  return result;
}

unint64_t sub_24B6347D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24B634068(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B634818()
{
  *v0;
  *v0;
  *v0;
  sub_24B639494();
}

uint64_t sub_24B63491C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24B63823C();
  *a2 = result;
  return result;
}

void sub_24B63494C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_24B634A30()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_24B639494();
}

uint64_t sub_24B634B2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24B638288();
  *a2 = result;
  return result;
}

void sub_24B634B5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_24B634C20(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_24B62A080(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_24B62A080((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_24B62A080(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_24B62A080((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_24B62A080(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_24B62A080((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_24B62A080(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_24B62A080((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_24B62A080(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_24B62A080((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B318, &qword_24B63AC10);
            sub_24B636974();
            v1 = sub_24B639414();

            return v1;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_24B62A080(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_24B62A080((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = 0xD000000000000016;
          *(v26 + 5) = 0x800000024B63BB30;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_24B62A080(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_24B62A080((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24B62A080(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_24B62A080((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}