void sub_1934F4EF0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        v4 = *(type metadata accessor for IntelligenceFlowTelemetry(0) + 28);
        type metadata accessor for IntelligenceFlowTelemetry.Metadata(0);
        OUTLINED_FUNCTION_10_2();
        goto LABEL_10;
      case 2:
        v8 = *(type metadata accessor for IntelligenceFlowTelemetry(0) + 32);
        type metadata accessor for MonotonicTimestamp();
        OUTLINED_FUNCTION_10_2();
        goto LABEL_10;
      case 3:
        v6 = type metadata accessor for IntelligenceFlowTelemetry(0);
        sub_193497890(v1 + *(v6 + 36));
        goto LABEL_11;
      case 4:
        v7 = *(type metadata accessor for IntelligenceFlowTelemetry(0) + 40);
        type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
        OUTLINED_FUNCTION_10_2();
LABEL_10:
        sub_193498018();
        goto LABEL_11;
      case 5:
        v5 = *(type metadata accessor for IntelligenceFlowTelemetry(0) + 44);
        sub_1934982A8();
LABEL_11:
        v0 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934F5094()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA90B0);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_19394FBE0;
  v9 = (v8 + v7);
  v10 = v8 + v7 + dword_1EAEA90E8;
  *v9 = 1;
  *v10 = "rowId";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v12);
  v14 = *(v13 + 104);
  (v14)(v10, v11, v12);
  v15 = OUTLINED_FUNCTION_3_1(v9 + v5);
  *v16 = 2;
  *v15 = "intelligenceFlowIds";
  *(v15 + 8) = 19;
  *(v15 + 16) = 2;
  v14();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934F5228()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      v4 = *(type metadata accessor for IntelligenceFlowTelemetry.Metadata(0) + 20);
      type metadata accessor for IntelligenceFlowIdentifiers();
      OUTLINED_FUNCTION_10_2();
      sub_193498018();
LABEL_8:
      v0 = 0;
    }

    else if (v2 == 1)
    {
      sub_193497890(v1);
      goto LABEL_8;
    }
  }
}

uint64_t sub_1934F5328@<X0>(void *a1@<X8>)
{
  IntelligenceFlowPlatformPnR.init()(a1);
  type metadata accessor for IntelligenceFlowTelemetry.Objective(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_1934F5370()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA90C8);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  v8 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_11_3(v8, xmmword_19394FBD0);
  *v0 = "pnr";
  *(v0 + 8) = 3;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v1 + v7);
  *v14 = 2;
  *v13 = "impendingRequestDetected";
  v13[1] = 24;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 2 * v7);
  *v17 = 101;
  *v16 = "planGeneration";
  v16[1] = 14;
  v18 = OUTLINED_FUNCTION_1_3(v16);
  (v12)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 3 * v7);
  *v20 = 102;
  *v19 = "responseGeneration";
  v19[1] = 18;
  v21 = OUTLINED_FUNCTION_1_3(v19);
  (v12)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 4 * v7);
  *v23 = 401;
  *v22 = "feedbackLearning";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934F5564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_26();
  v143 = v12;
  v144 = v14;
  v145 = v15;
  v17 = v16;
  v136 = type metadata accessor for IntelligenceFlowFeedbackLearning(0);
  v18 = OUTLINED_FUNCTION_4_1(v136);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  v130 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC58, &qword_1939590B8);
  v24 = OUTLINED_FUNCTION_47(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15_8();
  v131 = v27;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v28);
  v135 = &v125 - v29;
  v134 = type metadata accessor for ResponseGeneration(0);
  v30 = OUTLINED_FUNCTION_4_1(v134);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_1();
  v129 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC60, &qword_1939590C0);
  v36 = OUTLINED_FUNCTION_47(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15_8();
  v128 = v39;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v125 - v41;
  v43 = type metadata accessor for PlanGeneration(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_1();
  v127 = v46 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC68, &qword_1939590C8);
  v48 = OUTLINED_FUNCTION_47(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_15_8();
  v138 = v51;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v125 - v53;
  v55 = type metadata accessor for IntelligenceFlowPlatformPnR(0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_1();
  v126 = (v58 - v57);
  v59 = OUTLINED_FUNCTION_25_2();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(v59, v60);
  v62 = OUTLINED_FUNCTION_47(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_15_8();
  v137 = v65;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v125 - v67;
  v139 = v17;
  v140 = v54;
  v132 = v43;
  v133 = v42;
  v69 = &qword_1EAE3BC70;
  v70 = &qword_1EAE3BC68;
  v141 = v55;
  v142 = &v125 - v67;
  while (1)
  {
    v71 = sub_19393C0E0();
    if (v13 || (v72 & 1) != 0)
    {
      break;
    }

    switch(v71)
    {
      case 401:
        v105 = v131;
        v106 = v135;
        v107 = v136;
        __swift_storeEnumTagSinglePayload(v135, 1, 1, v136);
        sub_193498018();
        OUTLINED_FUNCTION_0_28();
        sub_193457550(v143, v108);
        sub_193448758(v106, v105, &qword_1EAE3BC58, &qword_1939590B8);
        OUTLINED_FUNCTION_6_3(v105, 1, v107);
        if (v78)
        {
          v122 = v130;
          IntelligenceFlowFeedbackLearning.init()();
          v109 = OUTLINED_FUNCTION_25_2();
          sub_19344E6DC(v109, v110, &qword_1939590B8);
          v69 = &qword_1EAE3BC70;
          OUTLINED_FUNCTION_6_3(v105, 1, v107);
          v54 = v140;
          if (!v78)
          {
            sub_19344E6DC(v105, &qword_1EAE3BC58, &qword_1939590B8);
          }
        }

        else
        {
          v120 = OUTLINED_FUNCTION_25_2();
          sub_19344E6DC(v120, v121, &qword_1939590B8);
          OUTLINED_FUNCTION_4_19();
          v122 = v130;
          sub_1934586F4(v105, v130, v123);
          v54 = v140;
        }

        OUTLINED_FUNCTION_4_19();
        sub_1934586F4(v122, v143, v124);
        type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
        swift_storeEnumTagMultiPayload();
        v70 = &qword_1EAE3BC68;
        v55 = v141;
        v68 = v142;
        break;
      case 2:
        sub_193498018();
        OUTLINED_FUNCTION_0_28();
        sub_193457550(v143, v80);
        ImpendingRequestDetected.init()();
        *v143 = a12 & 1;
        type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
        swift_storeEnumTagMultiPayload();
        break;
      case 101:
        v91 = v69;
        v92 = v70;
        v93 = OUTLINED_FUNCTION_37_7();
        v94 = v132;
        __swift_storeEnumTagSinglePayload(v93, v95, 1, v132);
        sub_193498018();
        OUTLINED_FUNCTION_0_28();
        sub_193457550(v143, v96);
        v97 = v54;
        v98 = v54;
        v99 = v138;
        sub_193448758(v97, v138, v92, &qword_1939590C8);
        v100 = OUTLINED_FUNCTION_37_7();
        OUTLINED_FUNCTION_6_3(v100, v101, v94);
        if (v78)
        {
          v114 = v127;
          PlanGeneration.init()();
          v102 = v92;
          v69 = &qword_1EAE3BC70;
          sub_19344E6DC(v98, v102, &qword_1939590C8);
          v103 = OUTLINED_FUNCTION_37_7();
          OUTLINED_FUNCTION_6_3(v103, v104, v94);
          if (!v78)
          {
            sub_19344E6DC(v138, &qword_1EAE3BC68, &qword_1939590C8);
          }
        }

        else
        {
          sub_19344E6DC(v98, v92, &qword_1939590C8);
          OUTLINED_FUNCTION_6_21();
          v114 = v127;
          sub_1934586F4(v99, v127, v115);
          v69 = v91;
        }

        OUTLINED_FUNCTION_6_21();
        sub_1934586F4(v114, v143, v116);
        type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
        swift_storeEnumTagMultiPayload();
        v70 = &qword_1EAE3BC68;
        v54 = v140;
        v55 = v141;
        v68 = v142;
        break;
      case 102:
        v81 = v133;
        v82 = v134;
        __swift_storeEnumTagSinglePayload(v133, 1, 1, v134);
        sub_193498018();
        OUTLINED_FUNCTION_0_28();
        sub_193457550(v143, v83);
        v84 = v128;
        sub_193448758(v81, v128, &qword_1EAE3BC60, &qword_1939590C0);
        v85 = OUTLINED_FUNCTION_37_7();
        OUTLINED_FUNCTION_6_3(v85, v86, v82);
        if (v78)
        {
          v87 = v129;
          ResponseGeneration.init()();
          sub_19344E6DC(v81, &qword_1EAE3BC60, &qword_1939590C0);
          v88 = OUTLINED_FUNCTION_37_7();
          v89 = v82;
          v111 = v87;
          v70 = &qword_1EAE3BC68;
          v68 = v142;
          OUTLINED_FUNCTION_6_3(v88, v90, v89);
          if (!v78)
          {
            sub_19344E6DC(v84, &qword_1EAE3BC60, &qword_1939590C0);
          }
        }

        else
        {
          sub_19344E6DC(v81, &qword_1EAE3BC60, &qword_1939590C0);
          OUTLINED_FUNCTION_7_21();
          v111 = v129;
          sub_1934586F4(v84, v129, v112);
        }

        OUTLINED_FUNCTION_7_21();
        sub_1934586F4(v111, v143, v113);
        type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
        swift_storeEnumTagMultiPayload();
        v54 = v140;
        v55 = v141;
        v69 = &qword_1EAE3BC70;
        break;
      case 1:
        __swift_storeEnumTagSinglePayload(v68, 1, 1, v55);
        sub_193498018();
        v73 = v70;
        OUTLINED_FUNCTION_0_28();
        sub_193457550(v143, v74);
        v75 = v68;
        v76 = v68;
        v77 = v137;
        sub_193448758(v75, v137, v69, &qword_1939590D0);
        OUTLINED_FUNCTION_6_3(v77, 1, v55);
        if (v78)
        {
          v79 = v69;
          v117 = v126;
          IntelligenceFlowPlatformPnR.init()(v126);
          sub_19344E6DC(v76, v79, &qword_1939590D0);
          OUTLINED_FUNCTION_6_3(v77, 1, v55);
          if (!v78)
          {
            sub_19344E6DC(v137, &qword_1EAE3BC70, &qword_1939590D0);
          }
        }

        else
        {
          sub_19344E6DC(v76, v69, &qword_1939590D0);
          OUTLINED_FUNCTION_5_26();
          v117 = v126;
          sub_1934586F4(v77, v126, v118);
        }

        OUTLINED_FUNCTION_5_26();
        sub_1934586F4(v117, v143, v119);
        type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
        swift_storeEnumTagMultiPayload();
        v69 = &qword_1EAE3BC70;
        v68 = v142;
        v70 = v73;
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowTelemetry.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowTelemetry(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowTelemetry.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t IntelligenceFlowTelemetry.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowTelemetry(v0) + 24);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowTelemetry.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowTelemetry(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowTelemetry.metadata.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3BBB0, &qword_193959030, *(v1 + 28));
}

uint64_t IntelligenceFlowTelemetry.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowTelemetry(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowTelemetry.monotonicTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3B498, &unk_193959120, *(v1 + 32));
}

uint64_t IntelligenceFlowTelemetry.monotonicTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowTelemetry(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowTelemetry.contextId.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3AA88, &qword_19394F9C0, *(v1 + 36));
}

uint64_t IntelligenceFlowTelemetry.contextId.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowTelemetry(v0) + 36);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowTelemetry.contextId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowTelemetry(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowTelemetry.objective.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3BBB8, &unk_193959130, *(v1 + 40));
}

uint64_t IntelligenceFlowTelemetry.objective.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowTelemetry(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowTelemetry.target.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for IntelligenceFlowTelemetry(v2);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t IntelligenceFlowTelemetry.target.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowTelemetry(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowTelemetry.Metadata.intelligenceFlowIds.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowTelemetry.Metadata(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t static IntelligenceFlowTelemetry.Metadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v65 = type metadata accessor for IntelligenceFlowIdentifiers();
  v4 = OUTLINED_FUNCTION_4_1(v65);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v59 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v58 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B950, &unk_193959140);
  OUTLINED_FUNCTION_4_1(v61);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v58 - v17;
  v18 = sub_19393BE60();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_1();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v58 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_47(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_3_0();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v58 - v38;
  v40 = *(v37 + 56);
  v63 = a1;
  sub_1934487B4(a1, &v58 - v38, &qword_1EAE3AA88, &qword_19394F9C0);
  v64 = a2;
  sub_1934487B4(a2, &v39[v40], &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_31(v39);
  if (v41)
  {
    OUTLINED_FUNCTION_31(&v39[v40]);
    if (v41)
    {
      sub_19344E6DC(v39, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_11;
    }
  }

  else
  {
    sub_1934487B4(v39, v32, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_31(&v39[v40]);
    if (!v41)
    {
      (*(v21 + 32))(v26, &v39[v40], v18);
      OUTLINED_FUNCTION_5_27();
      sub_1934F6968(v45, v46);
      v47 = sub_19393C550();
      v48 = *(v21 + 8);
      v48(v26, v18);
      v48(v32, v18);
      sub_19344E6DC(v39, &qword_1EAE3AA88, &qword_19394F9C0);
      if ((v47 & 1) == 0)
      {
        return 0;
      }

LABEL_11:
      v49 = *(type metadata accessor for IntelligenceFlowTelemetry.Metadata(0) + 20);
      v50 = v62;
      v51 = *(v61 + 48);
      sub_1934487B4(v63 + v49, v62, &qword_1EAE3B948, &qword_193957C10);
      sub_1934487B4(v64 + v49, v50 + v51, &qword_1EAE3B948, &qword_193957C10);
      if (__swift_getEnumTagSinglePayload(v50, 1, v65) == 1)
      {
        OUTLINED_FUNCTION_31(v50 + v51);
        if (!v41)
        {
          goto LABEL_18;
        }

        sub_19344E6DC(v50, &qword_1EAE3B948, &qword_193957C10);
      }

      else
      {
        v52 = v60;
        sub_1934487B4(v50, v60, &qword_1EAE3B948, &qword_193957C10);
        OUTLINED_FUNCTION_31(v50 + v51);
        if (v41)
        {
          sub_1934F68A8(v52);
LABEL_18:
          v42 = &qword_1EAE3B950;
          v43 = &unk_193959140;
          v44 = v50;
          goto LABEL_19;
        }

        v54 = v59;
        sub_1934F6904(v50 + v51, v59);
        OUTLINED_FUNCTION_4_20();
        sub_1934F6968(v55, v56);
        v57 = sub_19393C550();
        sub_1934F68A8(v54);
        sub_1934F68A8(v52);
        sub_19344E6DC(v50, &qword_1EAE3B948, &qword_193957C10);
        if ((v57 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    (*(v21 + 8))(v32, v18);
  }

  v42 = &qword_1EAE3B4E8;
  v43 = &unk_193952CF0;
  v44 = v39;
LABEL_19:
  sub_19344E6DC(v44, v42, v43);
  return 0;
}

uint64_t sub_1934F68A8(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowIdentifiers();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1934F6904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowIdentifiers();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1934F6968(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t IntelligenceFlowTelemetry.Metadata.hash(into:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_4();
  v36 = type metadata accessor for IntelligenceFlowIdentifiers();
  v2 = OUTLINED_FUNCTION_4_1(v36);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = sub_19393BE60();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v35 - v27;
  sub_1934487B4(v1, &v35 - v27, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v28, 1, v14) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    (*(v17 + 32))(v22, v28, v14);
    sub_19393CAD0();
    OUTLINED_FUNCTION_5_27();
    sub_1934F6968(v29, v30);
    sub_19393C540();
    (*(v17 + 8))(v22, v14);
  }

  v31 = type metadata accessor for IntelligenceFlowTelemetry.Metadata(0);
  sub_1934487B4(v1 + *(v31 + 20), v13, &qword_1EAE3B948, &qword_193957C10);
  if (__swift_getEnumTagSinglePayload(v13, 1, v36) == 1)
  {
    return sub_19393CAD0();
  }

  sub_1934F6904(v13, v7);
  sub_19393CAD0();
  OUTLINED_FUNCTION_4_20();
  sub_1934F6968(v33, v34);
  sub_19393C540();
  return sub_1934F68A8(v7);
}

uint64_t sub_1934F6D1C(void (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1934F6D84(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

void sub_1934F6ECC(uint64_t a1)
{
  OUTLINED_FUNCTION_16_13(a1, &qword_1ED5082C0);
  if (v1 <= 0x3F)
  {
    sub_19349D198();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_16_13(v2, &qword_1ED507ED0);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_16_13(v4, &qword_1ED507A78);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_9_34(v6, &qword_1ED508298);
          if (v9 <= 0x3F)
          {
            OUTLINED_FUNCTION_16_13(v8, &qword_1ED507EC8);
            if (v10 <= 0x3F)
            {
              sub_1934F7080();
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

void sub_1934F702C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1934F7080()
{
  if (!qword_1ED506D18)
  {
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED506D18);
    }
  }
}

void sub_1934F70D0(uint64_t a1)
{
  OUTLINED_FUNCTION_9_34(a1, &qword_1ED508298);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_16_13(v1, qword_1ED5077D0);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1934F7174()
{
  result = type metadata accessor for IntelligenceFlowPlatformPnR(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PlanGeneration(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ResponseGeneration(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for IntelligenceFlowFeedbackLearning(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

_BYTE *_s8LLMCacheOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1934F72E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510298);
  v5 = __swift_project_value_buffer(v4, qword_1ED510298);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.LLMCache.CacheManagerTelemetry.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_10 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510298);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC80, &qword_193959360);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.LLMCache.CacheManagerTelemetry.attribute(_:)(void (*a1)(void))
{
  result = sub_1934F76E4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934F772C(void (*a1)(void))
{
  result = sub_1934F76E4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934F775C(uint64_t a1)
{
  result = sub_1934F7784();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1934F7784()
{
  result = qword_1ED507AE8;
  if (!qword_1ED507AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED507AE8);
  }

  return result;
}

_BYTE *_s21CacheManagerTelemetryOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1934F78CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5102F8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5102F8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.Experimentation.attribute(_:)(void (*a1)(void))
{
  result = sub_1934F7AF8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934F7B30(void (*a1)(void))
{
  result = sub_1934F7AF8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934F7B98(uint64_t a1)
{
  result = sub_1934F7BC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1934F7BC0()
{
  result = qword_1ED507B30[0];
  if (!qword_1ED507B30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED507B30);
  }

  return result;
}

_BYTE *_s15ExperimentationOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowExperimentation.json()()
{
  v0 = sub_19393C090();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for IntelligenceFlowExperimentation(0);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC90, &qword_193959468);
  OUTLINED_FUNCTION_4_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  v22 = OUTLINED_FUNCTION_0_29();
  sub_1934F8E94(v22, v15, v23);
  sub_1934470C8(v15, v9, v21);
  sub_19393C080();
  sub_1934F7E7C();
  v24 = sub_19393C250();
  v26 = v25;
  (*(v3 + 8))(v8, v0);
  sub_19344E6DC(v21, &qword_1EAE3BC90, &qword_193959468);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

unint64_t sub_1934F7E7C()
{
  result = qword_1EAE3BC98;
  if (!qword_1EAE3BC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3BC90, &qword_193959468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BC98);
  }

  return result;
}

uint64_t static IntelligenceFlowExperimentation.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC90, &qword_193959468);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  sub_1934F7E7C();
  result = sub_19393C260();
  if (!v1)
  {
    OUTLINED_FUNCTION_4_21();
    return sub_1934F89B4(v10, a1, v12);
  }

  return result;
}

uint64_t static IntelligenceFlowExperimentation.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a6;
  v39 = a5;
  v37 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC90, &qword_193959468);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_6();
  v14 = sub_19393C0C0();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v36 - v24;
  if (*sub_1934FAEA0() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    (*(v17 + 16))(v22, v25, v14);
    sub_193450688(a1, a2);
    sub_1934F7E7C();
    v26 = v43;
    sub_19393C280();
    if (v26)
    {
      return (*(v17 + 8))(v25, v14);
    }

    else
    {
      (*(v17 + 8))(v25, v14);
      OUTLINED_FUNCTION_4_21();
      v29 = v38;
      sub_1934F89B4(v6, v38, v30);
      v31 = type metadata accessor for IntelligenceFlowExperimentation(0);
      v32 = *(v31 + 20);
      sub_19344E6DC(v29 + v32, &qword_1EAE3A9E8, &qword_19394F800);
      v33 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v33);
      (*(v34 + 16))(v29 + v32, v37, v33);
      __swift_storeEnumTagSinglePayload(v29 + v32, 0, 1, v33);
      v35 = *(v31 + 24);
      sub_19344E6DC(v29 + v35, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v39, v29 + v35);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v28 = a3;
    *(v28 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t IntelligenceFlowExperimentation.serialize()()
{
  v0 = type metadata accessor for IntelligenceFlowExperimentation(0);
  v1 = OUTLINED_FUNCTION_4_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC90, &qword_193959468);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  v13 = OUTLINED_FUNCTION_0_29();
  sub_1934F8E94(v13, v6, v14);
  sub_1934470C8(v6, v0, v12);
  sub_1934F7E7C();
  sub_19393C290();
  sub_19344E6DC(v12, &qword_1EAE3BC90, &qword_193959468);
  return OUTLINED_FUNCTION_13_0();
}

id sub_1934F8464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001ELL && 0x8000000193A18E10 == a2;
  if (v5 || (sub_19393CA30() & 1) != 0)
  {
    v7 = *(type metadata accessor for IntelligenceFlowExperimentation(0) + 28);
    v8 = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
    v9 = &off_1F07C3D58;
    return sub_193494798(v8, v9, a3);
  }

  v11 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v11 || (sub_19393CA30() & 1) != 0)
  {
    v12 = *(type metadata accessor for IntelligenceFlowExperimentation(0) + 32);
    v8 = type metadata accessor for MonotonicTimestamp();
    v9 = &off_1F07BD958;
    return sub_193494798(v8, v9, a3);
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v14 = v13;
  *v13 = a1;
  v13[1] = a2;
  v13[5] = type metadata accessor for IntelligenceFlowExperimentation(0);
  __swift_allocate_boxed_opaque_existential_1Tm(v14 + 2);
  v15 = OUTLINED_FUNCTION_0_29();
  sub_1934F8E94(v15, v16, v17);
  *(v14 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1934F85E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for AIML.UUID();
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  v23 = a1 == 0x697461636F6C6C61 && a2 == 0xEA00000000006E6FLL;
  if (v23 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v43 = *v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA8, &qword_193959470);
    return sub_1934948FC();
  }

  v25 = a1 == 0x6874617065646F63 && a2 == 0xEA00000000006449;
  if (v25 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v26 = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
    sub_1934F8944(v42 + *(v26 + 20), v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      v27 = v12;
LABEL_14:
      result = sub_19344E6DC(v27, &qword_1EAE3BCA0, &unk_19395C320);
      v28 = v41;
      *v41 = 0u;
      *(v28 + 1) = 0u;
      return result;
    }

    OUTLINED_FUNCTION_2_28();
    sub_1934F89B4(v12, v22, v29);
    OUTLINED_FUNCTION_13_0();
    sub_193494798(v30, v31, v32);
    v33 = v22;
    return sub_1934F8A10(v33);
  }

  v34 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
  if (v34 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v35 = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
    sub_1934F8944(v42 + *(v35 + 24), v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v13) == 1)
    {
      v27 = v9;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_2_28();
    sub_1934F89B4(v9, v19, v36);
    sub_193494798(v13, &off_1F07C3F90, v41);
    v33 = v19;
    return sub_1934F8A10(v33);
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v38 = v37;
  *v37 = a1;
  v37[1] = a2;
  v37[5] = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v38 + 2);
  sub_1934F8E94(v42, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1);
  *(v38 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1934F8944(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1934F89B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t sub_1934F8A10(uint64_t a1)
{
  v2 = type metadata accessor for AIML.UUID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1934F8A84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_6();
  v10 = type metadata accessor for AIML.UUID();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_38();
  v18 = a1 == 0xD000000000000013 && v17 == a2;
  if (v18 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    if (v3[1])
    {
      v37 = *v3;
LABEL_15:
      sub_1934948FC();
      return;
    }

    goto LABEL_38;
  }

  v19 = a1 == 0x656D697265707865 && a2 == 0xEC0000006449746ELL;
  if (v19 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    if (v3[3])
    {
      v38 = v3[2];
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v20 = a1 == 0x6E656D7461657274 && a2 == 0xEB00000000644974;
  if (v20 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v21 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
    sub_1934F8944(v3 + *(v21 + 24), v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v10) != 1)
    {
      OUTLINED_FUNCTION_2_28();
      sub_1934F89B4(v4, v16, v22);
      sub_193494798(v10, &off_1F07C3F90, a3);
      sub_1934F8A10(v16);
      return;
    }

    sub_19344E6DC(v4, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_23:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v23 = a1 == 0x656D796F6C706564 && a2 == 0xEC0000006449746ELL;
  if (v23 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v24 = v3 + *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 28);
    if ((v24[8] & 1) == 0)
    {
      v39 = *v24;
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_38();
  v26 = a1 == 0xD000000000000010 && v25 == a2;
  if (v26 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v27 = v3 + *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 32);
    if ((v27[9] & 1) == 0)
    {
      v40 = *v27;
      v43 = v27[8] & 1;
      goto LABEL_15;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_38();
  v29 = a1 == 0xD000000000000011 && v28 == a2;
  if (v29 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v30 = v3 + *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 36);
    if ((v30[8] & 1) == 0)
    {
      v41 = *v30;
      goto LABEL_15;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_38();
  v32 = a1 == 0xD000000000000014 && v31 == a2;
  if (v32 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v33 = v3 + *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 40);
    if ((v33[4] & 1) == 0)
    {
      v42 = *v33;
      goto LABEL_15;
    }

LABEL_38:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v35 = v34;
  *v34 = a1;
  v34[1] = a2;
  v34[5] = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v35 + 2);
  sub_1934F8E94(v3, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment);
  *(v35 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1934F8E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t IntelligenceFlowExperimentation.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowExperimentation(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  *a1 = *sub_1934FAEA0();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v5 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v5);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v6 = a1 + v2[7];
  IntelligenceFlowExperimentation.ClientSiriRequestTier1.init()();
  return MonotonicTimestamp.init()(a1 + v2[8]);
}

uint64_t static IntelligenceFlowExperimentation.== infix(_:_:)()
{
  v0 = type metadata accessor for IntelligenceFlowExperimentation(0);
  v1 = *(v0 + 28);
  type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
  OUTLINED_FUNCTION_0_30();
  sub_1934F9184(v2, v3);
  if ((sub_19393C550() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v0 + 32);
  type metadata accessor for MonotonicTimestamp();
  OUTLINED_FUNCTION_1_29();
  sub_1934F9184(v5, v6);
  return sub_19393C550() & 1;
}

uint64_t IntelligenceFlowExperimentation.hash(into:)()
{
  v0 = type metadata accessor for IntelligenceFlowExperimentation(0);
  v1 = *(v0 + 28);
  type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
  OUTLINED_FUNCTION_0_30();
  sub_1934F9184(v2, v3);
  sub_19393C540();
  v4 = *(v0 + 32);
  type metadata accessor for MonotonicTimestamp();
  OUTLINED_FUNCTION_1_29();
  sub_1934F9184(v5, v6);
  return sub_19393C540();
}

uint64_t sub_1934F9184(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t IntelligenceFlowExperimentation.TreatmentAllocationStatus.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (result == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  if (result == 3)
  {
    v4 = 1;
  }

  else
  {
    v2 = v3;
    v4 = result == 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v5 = result == 1 || v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

char *static IntelligenceFlowExperimentation.TreatmentAllocationStatus.allCases.getter()
{
  v0 = sub_1934F9548(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934F9548(v13, v2 + 1, 1, v14);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v15 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934F9548(v15, v2 + 2, 1, v16);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v17 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934F9548(v17, v2 + 3, 1, v18);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v19 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1934F9548(v19, v2 + 4, 1, v20);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

uint64_t IntelligenceFlowExperimentation.TreatmentAllocationStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  v1 = 0x6574617669746341;
  if (*v0 != 1)
  {
    v1 = 0x6176697463616544;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657461636F6C6C41;
  }
}

uint64_t IntelligenceFlowExperimentation.TreatmentAllocationStatus.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 0x657461636F6C6C41 && a2 == 0xE900000000000064;
  if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v11 = a1 == 0x6574617669746341 && a2 == 0xE900000000000064;
  if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  if (a1 == 0x6176697463616544 && a2 == 0xEB00000000646574)
  {

    v9 = 1;
    v8 = 2;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9();

    v8 = 2;
    if ((v9 & 1) == 0)
    {
      v8 = 0;
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_1934F9548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCC8, &qword_193959540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_1934F9648()
{
  result = qword_1EAE3BCC0;
  if (!qword_1EAE3BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BCC0);
  }

  return result;
}

void sub_1934F969C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEA90E0);
  v2 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_30_3();
  v9 = v8 & ~v7;
  v10 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_34_5(v10, xmmword_19394FBE0);
  *v0 = 104;
  *v9 = "SiriRequestExperimentTriggered";
  *(v9 + 8) = 30;
  *(v9 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v12);
  v14 = *(v13 + 104);
  OUTLINED_FUNCTION_10_0();
  v14();
  v15 = OUTLINED_FUNCTION_3_1(v0 + v6);
  *v16 = 2;
  *v15 = "timestamp";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v14();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934F9808()
{
  OUTLINED_FUNCTION_26();
  v57 = v0;
  v3 = v2;
  v60 = v4;
  v59 = type metadata accessor for MonotonicTimestamp();
  v5 = OUTLINED_FUNCTION_4_1(v59);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = &qword_1EAE3B498;
  v12 = &unk_193959120;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  v14 = OUTLINED_FUNCTION_47(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v53 - v20;
  v54 = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
  v22 = OUTLINED_FUNCTION_4_1(v54);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v53 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD00, &qword_193959548);
  v28 = OUTLINED_FUNCTION_47(v27);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v55 = &v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v56 = v19;
  v58 = &v53 - v33;
  while (1)
  {
    OUTLINED_FUNCTION_23_18();
    v34 = sub_19393C0E0();
    if (v1)
    {
      break;
    }

    v36 = v10;
    v37 = v59;
    if (v35)
    {
      break;
    }

    v38 = v3;
    v39 = v12;
    v40 = v11;
    if (v34 == 2)
    {
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v59);
      OUTLINED_FUNCTION_23_18();
      sub_193498018();
      v46 = v56;
      v47 = v38;
      v48 = v40;
      sub_19344F184();
      if (__swift_getEnumTagSinglePayload(v46, 1, v37) == 1)
      {
        MonotonicTimestamp.init()(v36);
        sub_19344E6DC(v21, v40, v39);
        v49 = v37;
        v10 = v36;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v49);
        v11 = v40;
        v12 = v39;
        if (EnumTagSinglePayload != 1)
        {
          sub_19344E6DC(v56, v48, v39);
        }
      }

      else
      {
        sub_19344E6DC(v21, v40, v39);
        v10 = v36;
        sub_1934FADD0();
        v11 = v40;
        v12 = v39;
      }

      v52 = *(type metadata accessor for IntelligenceFlowExperimentation(0) + 32);
      sub_1934F9CDC();
      v3 = v47;
    }

    else
    {
      v10 = v36;
      v12 = v39;
      v3 = v38;
      v41 = v58;
      if (v34 == 104)
      {
        v42 = v54;
        __swift_storeEnumTagSinglePayload(v58, 1, 1, v54);
        OUTLINED_FUNCTION_23_18();
        sub_193498018();
        v43 = v41;
        v44 = v55;
        sub_19344F184();
        if (__swift_getEnumTagSinglePayload(v44, 1, v42) == 1)
        {
          IntelligenceFlowExperimentation.ClientSiriRequestTier1.init()();
          sub_19344E6DC(v43, &qword_1EAE3BD00, &qword_193959548);
          v45 = __swift_getEnumTagSinglePayload(v44, 1, v42);
          v3 = v38;
          v12 = &unk_193959120;
          if (v45 != 1)
          {
            sub_19344E6DC(v55, &qword_1EAE3BD00, &qword_193959548);
          }
        }

        else
        {
          sub_19344E6DC(v43, &qword_1EAE3BD00, &qword_193959548);
          sub_1934FADD0();
          v3 = v38;
          v12 = &unk_193959120;
        }

        v51 = *(type metadata accessor for IntelligenceFlowExperimentation(0) + 28);
        sub_1934F9CDC();
        v11 = &qword_1EAE3B498;
      }
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934F9CDC()
{
  OUTLINED_FUNCTION_91_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_13_0();
  v6(v5);
  return v0;
}

void sub_1934F9D34()
{
  OUTLINED_FUNCTION_46_5();
  sub_1934F9D7C();
  if (!v0)
  {
    OUTLINED_FUNCTION_46_5();
    sub_1934F9E70();
  }
}

void sub_1934F9D7C()
{
  OUTLINED_FUNCTION_26();
  v0 = OUTLINED_FUNCTION_14_10();
  v1 = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(v0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = *(type metadata accessor for IntelligenceFlowExperimentation(0) + 28);
  IntelligenceFlowExperimentation.ClientSiriRequestTier1.init()();
  sub_19344A894(&qword_1EAE3BCB0, type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1);
  v9 = OUTLINED_FUNCTION_38_9();
  sub_1934FAE28(v7, type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1);
  if ((v9 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_4();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1934F9E70()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_14_10();
  v0 = type metadata accessor for MonotonicTimestamp();
  v1 = OUTLINED_FUNCTION_4_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = *(type metadata accessor for IntelligenceFlowExperimentation(0) + 32);
  MonotonicTimestamp.init()(v6);
  sub_19344A894(&qword_1ED5028F0, type metadata accessor for MonotonicTimestamp);
  v8 = OUTLINED_FUNCTION_38_9();
  sub_1934FAE28(v6, type metadata accessor for MonotonicTimestamp);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_4();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1934F9FC8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA90F8);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_30_3();
  v8 = v7 & ~v6;
  v9 = OUTLINED_FUNCTION_156();
  *(v9 + 16) = xmmword_19394FBC0;
  v10 = v9 + v8 + dword_1EAEA9130;
  *(v9 + v8) = 0;
  *v10 = "TreatmentAllocationStatusUnknown";
  *(v10 + 8) = 32;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v12);
  v14 = *(v13 + 104);
  OUTLINED_FUNCTION_2_0();
  v14();
  v15 = OUTLINED_FUNCTION_3_1(v9 + v8 + v5);
  *v16 = 1;
  *v15 = "TreatmentAllocationStatusAllocated";
  *(v15 + 8) = 34;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v14();
  v17 = OUTLINED_FUNCTION_3_1(v9 + v8 + 2 * v5);
  *v18 = 2;
  *v17 = "TreatmentAllocationStatusActivated";
  *(v17 + 8) = 34;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v14();
  v19 = OUTLINED_FUNCTION_3_1(v9 + v8 + 3 * v5);
  *v20 = 3;
  *v19 = "TreatmentAllocationStatusDeactivated";
  *(v19 + 8) = 36;
  *(v19 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v14();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934FA1D0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9110);
  v2 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_30_3();
  v9 = v8 & ~v7;
  v10 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_34_5(v10, xmmword_19394FBB0);
  *v0 = 1;
  *v9 = "allocation";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v12);
  v14 = *(v13 + 104);
  OUTLINED_FUNCTION_10_0();
  v14();
  v15 = OUTLINED_FUNCTION_3_1(v0 + v6);
  *v16 = 2;
  *v15 = "codepathId";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v14();
  v17 = OUTLINED_FUNCTION_3_1(v0 + 2 * v6);
  *v18 = 3;
  *v17 = "requestId";
  *(v17 + 8) = 9;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v14();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934FA374()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 3:
        v5 = *(type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0) + 24);
        goto LABEL_10;
      case 2:
        v4 = *(type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0) + 20);
LABEL_10:
        type metadata accessor for AIML.UUID();
        OUTLINED_FUNCTION_37_8();
LABEL_11:
        v0 = 0;
        break;
      case 1:
        type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
        sub_193498238(v1);
        goto LABEL_11;
    }
  }
}

void sub_1934FA454()
{
  OUTLINED_FUNCTION_18_15();
  v5 = *v4;
  if (*(*v4 + 16))
  {
    v6 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
    v1 = v0;
    sub_193451CFC(v5, 1, v3, v6, v2, &off_1F07C3E00);
  }

  if (!v0)
  {
    OUTLINED_FUNCTION_79();
    sub_1934FA4F8();
    if (!v1)
    {
      OUTLINED_FUNCTION_79();
      sub_1934FAC04();
    }
  }
}

void sub_1934FA4F8()
{
  OUTLINED_FUNCTION_26();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v2 = OUTLINED_FUNCTION_47(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = OUTLINED_FUNCTION_36_11();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = *(type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0) + 20);
  sub_19344F184();
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_1934FADD0();
    OUTLINED_FUNCTION_23_18();
    sub_193447600();
    OUTLINED_FUNCTION_10_19();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1934FA6B8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEA9128);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_30_3();
  v8 = v7 & ~v6;
  v9 = OUTLINED_FUNCTION_156();
  *(v9 + 16) = xmmword_193952700;
  v10 = v9 + v8 + dword_1EAEA9160;
  *(v9 + v8) = 1;
  *v10 = "experimentNamespace";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v12);
  v14 = *(v13 + 104);
  OUTLINED_FUNCTION_2_0();
  v14();
  v15 = OUTLINED_FUNCTION_3_1(v9 + v8 + v5);
  *v16 = 2;
  *v15 = "experimentId";
  v15[1] = 12;
  v17 = OUTLINED_FUNCTION_1_3(v15);
  (v14)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v9 + v8 + 2 * v5);
  *v19 = 3;
  *v18 = "treatmentId";
  v18[1] = 11;
  v20 = OUTLINED_FUNCTION_1_3(v18);
  (v14)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v9 + v8 + 3 * v5);
  *v22 = 4;
  *v21 = "deploymentId";
  v21[1] = 12;
  v23 = OUTLINED_FUNCTION_1_3(v21);
  (v14)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v9 + v8 + 4 * v5);
  *v25 = 5;
  *v24 = "allocationStatus";
  v24[1] = 16;
  v26 = OUTLINED_FUNCTION_1_3(v24);
  (v14)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v9 + v8 + 5 * v5);
  *v28 = 6;
  *v27 = "lastUpdatedAtInMs";
  v27[1] = 17;
  v29 = OUTLINED_FUNCTION_1_3(v27);
  (v14)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v9 + v8 + 6 * v5);
  *v31 = 7;
  *v30 = "compatibilityVersion";
  *(v30 + 8) = 20;
  *(v30 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v14();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934FA928()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        goto LABEL_11;
      case 3:
        v4 = *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 24);
        type metadata accessor for AIML.UUID();
        OUTLINED_FUNCTION_37_8();
        goto LABEL_11;
      case 4:
        v5 = *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 28);
        OUTLINED_FUNCTION_113();
        sub_19393C190();
        goto LABEL_11;
      case 5:
        v3 = *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 32);
        sub_1934982A8();
        goto LABEL_11;
      case 6:
        v6 = *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 36);
        OUTLINED_FUNCTION_113();
        sub_19393C230();
        goto LABEL_11;
      case 7:
        v7 = *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 40);
        OUTLINED_FUNCTION_113();
        sub_19393C220();
LABEL_11:
        v0 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934FAA7C()
{
  OUTLINED_FUNCTION_18_15();
  if (v4[1])
  {
    v5 = *v4;
    v1 = v0;
    sub_19393C3C0();
  }

  if (!v0)
  {
    if (v4[3])
    {
      v6 = v4[2];
      v1 = 0;
      sub_19393C3C0();
    }

    OUTLINED_FUNCTION_79();
    sub_1934FAC04();
    if (!v1)
    {
      v7 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
      v8 = v4 + v7[7];
      if ((v8[8] & 1) == 0)
      {
        v9 = *v8;
        OUTLINED_FUNCTION_15_11();
        sub_19393C360();
      }

      v10 = v4 + v7[8];
      if ((v10[9] & 1) == 0)
      {
        v11 = v10[8];
        v16 = *v10;
        v17 = v11 & 1;
        sub_193447324(&v16, 5, v3, &type metadata for IntelligenceFlowExperimentation.TreatmentAllocationStatus, v2, &off_1F07C3DA8);
      }

      v12 = v4 + v7[9];
      if ((v12[8] & 1) == 0)
      {
        v13 = *v12;
        OUTLINED_FUNCTION_15_11();
        sub_19393C3E0();
      }

      v14 = (v4 + v7[10]);
      if ((v14[1] & 1) == 0)
      {
        v15 = *v14;
        OUTLINED_FUNCTION_15_11();
        sub_19393C3D0();
      }
    }
  }
}

void sub_1934FAC04()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v4 = OUTLINED_FUNCTION_47(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = OUTLINED_FUNCTION_36_11();
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = *(v2(0) + 24);
  sub_19344F184();
  if (__swift_getEnumTagSinglePayload(v0, 1, v7) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_1934FADD0();
    OUTLINED_FUNCTION_23_18();
    sub_193447600();
    OUTLINED_FUNCTION_10_19();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934FADD0()
{
  OUTLINED_FUNCTION_91_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_13_0();
  v6(v5);
  return v0;
}

uint64_t sub_1934FAE28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_36_11()
{

  return type metadata accessor for AIML.UUID();
}

uint64_t IntelligenceFlowExperimentation.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExperimentation(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExperimentation(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 24));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowExperimentation.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExperimentation(v0) + 24);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowExperimentation.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExperimentation(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.SiriRequestExperimentTriggered.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExperimentation(v0);
  OUTLINED_FUNCTION_101(*(v1 + 28));
  return sub_1934FB148();
}

uint64_t IntelligenceFlowExperimentation.SiriRequestExperimentTriggered.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExperimentation(v0) + 28);
  OUTLINED_FUNCTION_100_0();
  return sub_1934FB1E0();
}

uint64_t IntelligenceFlowExperimentation.SiriRequestExperimentTriggered.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExperimentation(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.timestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExperimentation(v0);
  OUTLINED_FUNCTION_101(*(v1 + 32));
  return sub_1934FB148();
}

uint64_t sub_1934FB148()
{
  v1 = OUTLINED_FUNCTION_16_14();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_13_0();
  v7(v6);
  return v0;
}

uint64_t IntelligenceFlowExperimentation.timestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExperimentation(v0) + 32);
  OUTLINED_FUNCTION_100_0();
  return sub_1934FB1E0();
}

uint64_t sub_1934FB1E0()
{
  v1 = OUTLINED_FUNCTION_16_14();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_13_0();
  v7(v6);
  return v0;
}

uint64_t IntelligenceFlowExperimentation.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExperimentation(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1934FB27C@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowExperimentation.TreatmentAllocationStatus.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1934FB2A4@<X0>(char **a1@<X8>)
{
  result = static IntelligenceFlowExperimentation.TreatmentAllocationStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934FB2CC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1934FB2D8();
}

uint64_t sub_1934FB2D8()
{
  sub_19393CAB0();
  v0 = IntelligenceFlowExperimentation.TreatmentAllocationStatus.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1934FB334()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1934FB340();
}

uint64_t sub_1934FB384()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1934FB390();
}

uint64_t sub_1934FB390()
{
  sub_19393CAB0();
  v0 = IntelligenceFlowExperimentation.TreatmentAllocationStatus.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_1934FB3E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_1934FB404();
}

uint64_t IntelligenceFlowExperimentation.ClientSiriRequestTier1.allocation.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t IntelligenceFlowExperimentation.ClientSiriRequestTier1.codepathId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.ClientSiriRequestTier1.requestId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.ClientSiriRequestTier1.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(v1);
  v3 = *(v2 + 20);
  type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = *(v2 + 24);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *v0 = MEMORY[0x1E69E7CC0];
  sub_19344E6DC(v0 + v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_19344E6DC(v0 + v8, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_28();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

void static IntelligenceFlowExperimentation.ClientSiriRequestTier1.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for AIML.UUID();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v22 = OUTLINED_FUNCTION_4_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v45 - v29;
  if ((sub_1934FBB40(*v3, *v1) & 1) == 0)
  {
    goto LABEL_22;
  }

  v45[0] = v17;
  v45[1] = v10;
  v47 = v27;
  v46 = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
  v31 = *(v46 + 20);
  v32 = *(v21 + 48);
  sub_193448804(v3 + v31, v30, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v1 + v31, &v30[v32], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v30);
  if (!v33)
  {
    sub_193448804(v30, v20, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v30[v32]);
    if (!v33)
    {
      OUTLINED_FUNCTION_1_30();
      sub_1934FD0AC();
      OUTLINED_FUNCTION_0_31();
      sub_1934FD044(v35, v36);
      v37 = sub_19393C550();
      sub_1934FD688();
      sub_1934FD688();
      sub_19344E6DC(v30, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v37 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_2_29();
    sub_1934FD688();
LABEL_10:
    v34 = v30;
LABEL_21:
    sub_19344E6DC(v34, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_31(&v30[v32]);
  if (!v33)
  {
    goto LABEL_10;
  }

  sub_19344E6DC(v30, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_12:
  v38 = *(v46 + 24);
  v39 = *(v21 + 48);
  v40 = v3 + v38;
  v41 = v47;
  sub_193448804(v40, v47, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v1 + v38, v41 + v39, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v41);
  if (!v33)
  {
    sub_193448804(v41, v45[0], &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v41 + v39);
    if (!v42)
    {
      OUTLINED_FUNCTION_1_30();
      sub_1934FD0AC();
      OUTLINED_FUNCTION_0_31();
      sub_1934FD044(v43, v44);
      sub_19393C550();
      OUTLINED_FUNCTION_7_22();
      sub_1934FD688();
      sub_1934FD688();
      sub_19344E6DC(v41, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_2_29();
    sub_1934FD688();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_31(v41 + v39);
  if (!v33)
  {
LABEL_20:
    v34 = v41;
    goto LABEL_21;
  }

  sub_19344E6DC(v41, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_22:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_1934FBB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = *(a1 + 16);
  if (v8 == *(a2 + 16))
  {
    if (!v8 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = a1 + v9;
      v11 = a2 + v9;
      v12 = *(v7 + 72);
      do
      {
        sub_1934FB148();
        sub_1934FB148();
        static IntelligenceFlowExperimentation.TrialExperiment.== infix(_:_:)();
        v14 = v13;
        sub_1934FD688();
        sub_1934FD688();
        if ((v14 & 1) == 0)
        {
          break;
        }

        v11 += v12;
        v10 += v12;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void IntelligenceFlowExperimentation.ClientSiriRequestTier1.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_117();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  OUTLINED_FUNCTION_3_4();
  v25 = type metadata accessor for AIML.UUID();
  v26 = OUTLINED_FUNCTION_4_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v30 = OUTLINED_FUNCTION_47(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  sub_1934FCC08(v20, *v24);
  v39 = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
  sub_193448804(v24 + *(v39 + 20), v38, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v38, 1, v25) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_1_30();
    sub_1934FD0AC();
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_31();
    sub_1934FD044(v40, v41);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_2_29();
    sub_1934FD688();
  }

  sub_193448804(v24 + *(v39 + 24), v35, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v35, 1, v25) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_1_30();
    sub_1934FD0AC();
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_31();
    sub_1934FD044(v42, v43);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_2_29();
    sub_1934FD688();
  }

  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.experimentNamespace.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.experimentNamespace.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.experimentId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.experimentId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1934FC050()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_101(*(v2 + 24));
  return sub_193448804(v3, v4, v5, v6);
}

uint64_t sub_1934FC0B0()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v2 = *(v1(v0) + 24);
  v3 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v3, v4, v5, v6);
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.treatmentId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.deploymentId.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.deploymentId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.allocationStatus.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v2);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.allocationStatus.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
  v6 = v1 + *(result + 32);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.allocationStatus.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.lastUpdatedAtInMs.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.lastUpdatedAtInMs.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.compatibilityVersion.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v2);
  v4 = v1 + *(result + 40);
  *v4 = v0;
  *(v4 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.compatibilityVersion.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowExperimentation.TrialExperiment.init()()
{
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v1);
  v3 = v2[6];
  type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v0 + v2[7];
  v9 = v0 + v2[8];
  *v9 = 0;
  *(v9 + 4) = 256;
  v10 = v2[10];
  v11 = v0 + v2[9];
  v12 = v0 + v10;
  *v0 = 0u;
  v0[1] = 0u;
  sub_19344E6DC(v0 + v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  *v8 = 0;
  v8[8] = 1;
  *v9 = 0;
  *(v9 + 4) = 256;
  *v11 = 0;
  v11[8] = 1;
  *v12 = 0;
  v12[4] = 1;
  OUTLINED_FUNCTION_116();
}

void static IntelligenceFlowExperimentation.TrialExperiment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for AIML.UUID();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_47(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v52 - v18;
  v20 = v3[1];
  v21 = v1[1];
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_28;
    }

    v22 = *v3 == *v1 && v20 == v21;
    if (!v22 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v21)
  {
    goto LABEL_28;
  }

  v23 = v3[3];
  v24 = v1[3];
  if (v23)
  {
    if (!v24)
    {
      goto LABEL_28;
    }

    v25 = v3[2] == v1[2] && v23 == v24;
    if (!v25 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v24)
  {
    goto LABEL_28;
  }

  v53 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
  v26 = *(v53 + 24);
  v27 = *(v14 + 48);
  sub_193448804(v3 + v26, v19, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v1 + v26, &v19[v27], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v19);
  if (!v22)
  {
    sub_193448804(v19, v13, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v19[v27]);
    if (!v28)
    {
      OUTLINED_FUNCTION_1_30();
      sub_1934FD0AC();
      OUTLINED_FUNCTION_0_31();
      sub_1934FD044(v29, v30);
      sub_19393C550();
      OUTLINED_FUNCTION_7_22();
      sub_1934FD688();
      sub_1934FD688();
      sub_19344E6DC(v19, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v4 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    OUTLINED_FUNCTION_2_29();
    sub_1934FD688();
LABEL_27:
    sub_19344E6DC(v19, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_31(&v19[v27]);
  if (!v22)
  {
    goto LABEL_27;
  }

  sub_19344E6DC(v19, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_30:
  v31 = v53;
  OUTLINED_FUNCTION_32_2(*(v53 + 28));
  if (v33)
  {
    if (!v32)
    {
      goto LABEL_28;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v34)
    {
      goto LABEL_28;
    }
  }

  v35 = v31[8];
  v36 = v3 + v35;
  v37 = *(v3 + v35 + 9);
  v38 = v1 + v35;
  v39 = v38[9];
  if (v37)
  {
    if ((v38[9] & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v38[9])
    {
      goto LABEL_28;
    }

    v40 = *v36;
    v41 = v36[8];
    v42 = *v38;
    v43 = v38[8];
    v56 = v40;
    v57 = v41 & 1;
    v54 = v42;
    v55 = v43 & 1;
    v44 = IntelligenceFlowExperimentation.TreatmentAllocationStatus.rawValue.getter();
    if (v44 != IntelligenceFlowExperimentation.TreatmentAllocationStatus.rawValue.getter())
    {
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_32_2(v31[9]);
  if (v46)
  {
    if (!v45)
    {
      goto LABEL_28;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v47)
    {
      goto LABEL_28;
    }
  }

  v48 = v31[10];
  v49 = (v3 + v48);
  v50 = *(v3 + v48 + 4);
  v51 = (v1 + v48);
  LODWORD(v48) = *(v1 + v48 + 4);
  if ((v50 & 1) == 0)
  {
    *v49;
    *v51;
  }

LABEL_28:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.hash(into:)()
{
  OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for AIML.UUID();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  if (v0[1])
  {
    v11 = *v0;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v0[3])
  {
    v12 = v0[2];
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v13 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
  sub_193448804(v0 + v13[6], v10, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v10, 1, v1) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_1_30();
    sub_1934FD0AC();
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_31();
    sub_1934FD044(v14, v15);
    sub_19393C540();
    OUTLINED_FUNCTION_2_29();
    sub_1934FD688();
  }

  v16 = v0 + v13[7];
  if (v16[8] == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v17 = *v16;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v17);
  }

  v18 = v0 + v13[8];
  if (v18[9] == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v19 = v18[8];
    v20 = *v18;
    OUTLINED_FUNCTION_103_0();
    v27 = v20;
    v28 = v19 & 1;
    v21 = IntelligenceFlowExperimentation.TreatmentAllocationStatus.rawValue.getter();
    MEMORY[0x193B18030](v21);
  }

  v22 = v0 + v13[9];
  if (v22[8] == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v23 = *v22;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v23);
  }

  v24 = (v0 + v13[10]);
  if (*(v24 + 4) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v26 = *v24;
  OUTLINED_FUNCTION_103_0();
  return sub_19393CAE0();
}

uint64_t sub_1934FCB58(void (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1934FCBC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_1934FCC08(uint64_t a1, uint64_t a2)
{
  v33 = type metadata accessor for AIML.UUID();
  v3 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a2 + 16);
  result = MEMORY[0x193B18030](v14);
  if (v14)
  {
    v16 = v9[6];
    v31 = v13 + v9[7];
    v32 = v16;
    v17 = v13 + v9[8];
    v30 = v13 + v9[9];
    v18 = (v13 + v9[10]);
    v19 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v29 = *(v10 + 72);
    do
    {
      sub_1934FB148();
      if (v13[1])
      {
        v20 = *v13;
        sub_19393CAD0();
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      if (v13[3])
      {
        v21 = v13[2];
        sub_19393CAD0();
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      sub_193448804(v13 + v32, v8, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v8, 1, v33) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_1934FD0AC();
        sub_19393CAD0();
        sub_1934FD044(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
        sub_19393C540();
        sub_1934FD688();
      }

      if (v31[8] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v22 = *v31;
        sub_19393CAD0();
        MEMORY[0x193B18060](v22);
      }

      if (v17[9] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v23 = v17[8];
        v24 = *v17;
        sub_19393CAD0();
        v34 = v24;
        v35 = v23 & 1;
        v25 = IntelligenceFlowExperimentation.TreatmentAllocationStatus.rawValue.getter();
        MEMORY[0x193B18030](v25);
      }

      if (v30[8] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v26 = *v30;
        sub_19393CAD0();
        MEMORY[0x193B18060](v26);
      }

      if (*(v18 + 4) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v27 = *v18;
        sub_19393CAD0();
        sub_19393CAE0();
      }

      result = sub_1934FD688();
      v19 += v29;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1934FD044(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1934FD0AC()
{
  v1 = OUTLINED_FUNCTION_16_14();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_13_0();
  v7(v6);
  return v0;
}

unint64_t sub_1934FD104()
{
  result = qword_1EAE3BD20;
  if (!qword_1EAE3BD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3BD28, &qword_1939595E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BD20);
  }

  return result;
}

unint64_t sub_1934FD16C()
{
  result = qword_1EAE3BD30;
  if (!qword_1EAE3BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BD30);
  }

  return result;
}

void sub_1934FD2C0()
{
  sub_1934FD4B0(319, &qword_1ED5082C0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MonotonicTimestamp();
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1934FD3E4()
{
  sub_1934FD4B0(319, qword_1ED5066C0, type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_9_35();
    sub_1934FD4B0(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1934FD4B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1934FD53C()
{
  sub_19349D1FC(319, &qword_1ED508290);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_9_35();
    sub_1934FD4B0(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED506678);
      if (v4 <= 0x3F)
      {
        sub_19349D1FC(319, qword_1ED506C68);
        if (v5 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED508070);
          if (v6 <= 0x3F)
          {
            sub_19349D1FC(319, qword_1ED506E98);
            if (v7 <= 0x3F)
            {
              OUTLINED_FUNCTION_15_2();
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1934FD688()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1934FD6DC(uint64_t a1, uint64_t a2)
{
  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 40) = &type metadata for AIML;
  *(v4 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1934FD764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_19393BE60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v17 || (sub_19393CA30() & 1) != 0)
  {
    sub_193458F7C(v4, v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      result = sub_193458FEC(v11);
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      (*(v13 + 32))(v16, v11, v12);
      sub_1934948FC();
      return (*(v13 + 8))(v16, v12);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    v20 = v19;
    *v19 = a1;
    v19[1] = a2;
    v19[5] = type metadata accessor for AIML.UUID();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20 + 2);
    sub_1934FD998(v4, boxed_opaque_existential_1Tm);
    *(v20 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1934FD998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1934FDA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x726F6A616DLL;
  v7 = v3[1];
  v19 = *v3;
  v20 = v7;
  v21 = *(v3 + 4);
  v8 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v8 || (result = OUTLINED_FUNCTION_1_31(), (result & 1) != 0))
  {
    if (BYTE4(v19))
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    v10 = v19;
    goto LABEL_9;
  }

  result = 0x726F6E696DLL;
  v11 = a1 == 0x726F6E696DLL && a2 == 0xE500000000000000;
  if (v11 || (result = OUTLINED_FUNCTION_1_31(), (result & 1) != 0))
  {
    if (BYTE12(v19))
    {
      goto LABEL_7;
    }

    v10 = DWORD2(v19);
    goto LABEL_9;
  }

  result = 0x6863746170;
  v12 = a1 == 0x6863746170 && a2 == 0xE500000000000000;
  if (v12 || (result = OUTLINED_FUNCTION_1_31(), (result & 1) != 0))
  {
    if (BYTE4(v20))
    {
      goto LABEL_7;
    }

    v10 = v20;
LABEL_9:
    LODWORD(v18[0]) = v10;
    return sub_1934948FC();
  }

  result = 0x61656C6572657270;
  v13 = a1 == 0x61656C6572657270 && a2 == 0xEA00000000006573;
  if (v13 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (!v21)
    {
      goto LABEL_7;
    }

    v18[0] = *(&v20 + 1);
    v18[1] = v21;
    return sub_1934948FC();
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v15 = v14;
  *v14 = a1;
  v14[1] = a2;
  v14[5] = &type metadata for AIML.Version;
  v16 = swift_allocObject();
  v15[2] = v16;
  *(v16 + 48) = v21;
  v17 = v20;
  *(v16 + 16) = v19;
  *(v16 + 32) = v17;
  *(v15 + 48) = 1;
  swift_willThrow();

  return sub_1934FDBFC(&v19, v18);
}

unint64_t sub_1934FDC70@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  v7 = result == 0xD000000000000012 && 0x8000000193A19030 == a2;
  if (v7 || (v8 = result, v10 = *(v3 + 1), v9 = *(v3 + 2), v11 = v3[24], result = OUTLINED_FUNCTION_0_32(), (result & 1) != 0))
  {
    if (v6 == 2)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    return sub_1934948FC();
  }

  result = 0xD000000000000016;
  v12 = v8 == 0xD000000000000016 && 0x8000000193A19050 == a2;
  if (v12 || (result = OUTLINED_FUNCTION_0_32(), (result & 1) != 0))
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  result = 0x704F646C756F6873;
  v13 = v8 == 0x704F646C756F6873 && a2 == 0xEA00000000006E65;
  if (v13 || (result = OUTLINED_FUNCTION_0_32(), (result & 1) != 0))
  {
    if (v11 == 2)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v15 = v14;
  *v14 = v8;
  v14[1] = a2;
  v14[5] = &type metadata for IFOutcomeSuccess;
  OUTLINED_FUNCTION_184();
  v16 = swift_allocObject();
  v15[2] = v16;
  *(v16 + 16) = v6;
  *(v16 + 24) = v10;
  *(v16 + 32) = v9;
  *(v16 + 40) = v11;
  *(v15 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1934FDE40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = result == 0xD000000000000013 && 0x8000000193A19070 == a2;
  if (v8 || (v9 = result, result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v6)
    {
      return sub_1934948FC();
    }

    else
    {
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v10 = v9;
    *(v10 + 8) = a2;
    *(v10 + 40) = &type metadata for IFOutcomeToolDisambiguation;
    *(v10 + 16) = v7;
    *(v10 + 24) = v6;
    *(v10 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1934FDF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x6E69616D6F64;
  v8 = *v3;
  v7 = v3[1];
  v9 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v9 || (v11 = v3[2], v12 = *(v3 + 24), result = OUTLINED_FUNCTION_0_32(), (result & 1) != 0))
  {
    if (v7)
    {
      return sub_1934948FC();
    }

    goto LABEL_14;
  }

  v13 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v13 || (result = OUTLINED_FUNCTION_0_32(), (result & 1) != 0))
  {
    if ((v12 & 1) == 0)
    {
      return sub_1934948FC();
    }

LABEL_14:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v15 = v14;
  *v14 = a1;
  v14[1] = a2;
  v14[5] = &type metadata for IFError;
  OUTLINED_FUNCTION_184();
  v16 = swift_allocObject();
  v15[2] = v16;
  *(v16 + 16) = v8;
  *(v16 + 24) = v7;
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  *(v15 + 48) = 1;
  swift_willThrow();
}

uint64_t IFPayload.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IFPayload.allCases.getter()
{
  v2 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3BD60, &qword_1939599F8);
  v3 = OUTLINED_FUNCTION_16_0(v2);
  if (!(!v9 & v8))
  {
    v42 = OUTLINED_FUNCTION_39(v7);
    v46 = OUTLINED_FUNCTION_84_2(v42, v43, v44, v45, &qword_1EAE3BD60, &qword_1939599F8);
    v3 = OUTLINED_FUNCTION_17_2(v46);
  }

  OUTLINED_FUNCTION_13_6(v3, v4, v5, v6);
  if (v15 != v16)
  {
    v47 = OUTLINED_FUNCTION_39(v14);
    v51 = OUTLINED_FUNCTION_85(v47, v48, v49, v50, &qword_1EAE3BD60, &qword_1939599F8);
    v10 = OUTLINED_FUNCTION_17_2(v51);
  }

  OUTLINED_FUNCTION_8_5(v10, v11, v12, v13);
  if (v15 != v16)
  {
    v52 = OUTLINED_FUNCTION_39(v21);
    v17 = sub_1934B0FCC(v52, v0, 1, v53, &qword_1EAE3BD60, &qword_1939599F8);
    v20 = v17;
  }

  OUTLINED_FUNCTION_9_7(v17, v18, v19, v20);
  if (!(v15 ^ v16 | v9))
  {
    v54 = OUTLINED_FUNCTION_39(v26);
    v22 = OUTLINED_FUNCTION_84_2(v54, v55, v56, v57, &qword_1EAE3BD60, &qword_1939599F8);
    v25 = v22;
  }

  OUTLINED_FUNCTION_3_7(v22, v23, v24, v25);
  if (!(v15 ^ v16 | v9))
  {
    v58 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_85(v58, v59, v60, v61, &qword_1EAE3BD60, &qword_1939599F8);
    v30 = v27;
  }

  OUTLINED_FUNCTION_47_5(v27, v28, v29, v30);
  OUTLINED_FUNCTION_4(v32, v33);
  if (v1 + 6 > (v38 >> 1))
  {
    v62 = OUTLINED_FUNCTION_39(v38);
    v34 = OUTLINED_FUNCTION_84_2(v62, v63, v64, v65, &qword_1EAE3BD60, &qword_1939599F8);
    v37 = v34;
  }

  OUTLINED_FUNCTION_50(v34, v35, v36, v37);
  *(v39 + 32) = 4;
  *(v39 + 40) = 1;
  return v40;
}

unint64_t IFPayload.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x72436E6F69746341;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_18_16();
      break;
    case 2:
      result = OUTLINED_FUNCTION_20_11();
      break;
    case 3:
      result = OUTLINED_FUNCTION_19_19();
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

void IFPayload.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x72436E6F69746341 ? (v4 = v0 == 0xED00006465746165) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v7 = v1 == OUTLINED_FUNCTION_18_16() && v0 == v6;
    if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      v9 = v1 == OUTLINED_FUNCTION_20_11() && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 2;
      }

      else
      {
        v11 = v1 == OUTLINED_FUNCTION_19_19() && v0 == v10;
        if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v5 = 3;
        }

        else if (v1 == 0xD000000000000015 && 0x8000000193A19090 == v0)
        {

          v5 = 4;
        }

        else
        {
          v13 = OUTLINED_FUNCTION_0_9();

          v5 = 4;
          if ((v13 & 1) == 0)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IFOutcome.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IFOutcome.allCases.getter()
{
  v2 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3BD58, &qword_1939599F0);
  v3 = OUTLINED_FUNCTION_16_0(v2);
  if (!(!v9 & v8))
  {
    v91 = OUTLINED_FUNCTION_39(v7);
    v95 = OUTLINED_FUNCTION_84_2(v91, v92, v93, v94, &qword_1EAE3BD58, &qword_1939599F0);
    v3 = OUTLINED_FUNCTION_17_2(v95);
  }

  OUTLINED_FUNCTION_13_6(v3, v4, v5, v6);
  if (v15 != v16)
  {
    v96 = OUTLINED_FUNCTION_39(v14);
    v100 = OUTLINED_FUNCTION_85(v96, v97, v98, v99, &qword_1EAE3BD58, &qword_1939599F0);
    v10 = OUTLINED_FUNCTION_17_2(v100);
  }

  OUTLINED_FUNCTION_8_5(v10, v11, v12, v13);
  if (v15 != v16)
  {
    v101 = OUTLINED_FUNCTION_39(v21);
    v17 = sub_1934B0FCC(v101, v0, 1, v102, &qword_1EAE3BD58, &qword_1939599F0);
    v20 = v17;
  }

  OUTLINED_FUNCTION_9_7(v17, v18, v19, v20);
  if (!(v15 ^ v16 | v9))
  {
    v103 = OUTLINED_FUNCTION_39(v26);
    v22 = OUTLINED_FUNCTION_84_2(v103, v104, v105, v106, &qword_1EAE3BD58, &qword_1939599F0);
    v25 = v22;
  }

  OUTLINED_FUNCTION_3_7(v22, v23, v24, v25);
  if (!(v15 ^ v16 | v9))
  {
    v107 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_85(v107, v108, v109, v110, &qword_1EAE3BD58, &qword_1939599F0);
    v30 = v27;
  }

  OUTLINED_FUNCTION_47_5(v27, v28, v29, v30);
  OUTLINED_FUNCTION_4(v32, v33);
  if (v1 + 6 > (v38 >> 1))
  {
    v111 = OUTLINED_FUNCTION_39(v38);
    v34 = OUTLINED_FUNCTION_84_2(v111, v112, v113, v114, &qword_1EAE3BD58, &qword_1939599F0);
    v37 = v34;
  }

  OUTLINED_FUNCTION_50(v34, v35, v36, v37);
  OUTLINED_FUNCTION_4(v39, v40);
  if (v1 + 7 > (v45 >> 1))
  {
    v115 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v115, v116, v117, v118, &qword_1EAE3BD58, &qword_1939599F0);
    v44 = v41;
  }

  OUTLINED_FUNCTION_47_5(v41, v42, v43, v44);
  OUTLINED_FUNCTION_4(v46, v47);
  if (v1 + 8 > (v52 >> 1))
  {
    v119 = OUTLINED_FUNCTION_39(v52);
    v48 = OUTLINED_FUNCTION_84_2(v119, v120, v121, v122, &qword_1EAE3BD58, &qword_1939599F0);
    v51 = v48;
  }

  OUTLINED_FUNCTION_50(v48, v49, v50, v51);
  OUTLINED_FUNCTION_4(v53, v54);
  if (v1 + 9 > (v59 >> 1))
  {
    v123 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_85(v123, v124, v125, v126, &qword_1EAE3BD58, &qword_1939599F0);
    v58 = v55;
  }

  OUTLINED_FUNCTION_47_5(v55, v56, v57, v58);
  OUTLINED_FUNCTION_4(v60, v61);
  if (v1 + 10 > (v66 >> 1))
  {
    v127 = OUTLINED_FUNCTION_39(v66);
    v62 = OUTLINED_FUNCTION_84_2(v127, v128, v129, v130, &qword_1EAE3BD58, &qword_1939599F0);
    v65 = v62;
  }

  OUTLINED_FUNCTION_50(v62, v63, v64, v65);
  OUTLINED_FUNCTION_4(v67, v68);
  if (v1 + 11 > (v73 >> 1))
  {
    v131 = OUTLINED_FUNCTION_39(v73);
    v69 = OUTLINED_FUNCTION_85(v131, v132, v133, v134, &qword_1EAE3BD58, &qword_1939599F0);
    v72 = v69;
  }

  OUTLINED_FUNCTION_47_5(v69, v70, v71, v72);
  OUTLINED_FUNCTION_4(v74, v75);
  if (v1 + 12 > (v80 >> 1))
  {
    v135 = OUTLINED_FUNCTION_39(v80);
    v76 = OUTLINED_FUNCTION_84_2(v135, v136, v137, v138, &qword_1EAE3BD58, &qword_1939599F0);
    v79 = v76;
  }

  OUTLINED_FUNCTION_50(v76, v77, v78, v79);
  OUTLINED_FUNCTION_4(v81, v82);
  if (v1 + 13 > (v87 >> 1))
  {
    v139 = OUTLINED_FUNCTION_39(v87);
    v83 = OUTLINED_FUNCTION_85(v139, v140, v141, v142, &qword_1EAE3BD58, &qword_1939599F0);
    v86 = v83;
  }

  OUTLINED_FUNCTION_47_5(v83, v84, v85, v86);
  *(v88 + 32) = 11;
  *(v88 + 40) = v0;
  return v89;
}

unint64_t IFOutcome.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x73736563637553;
  switch(*v0)
  {
    case 1:
    case 8:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 0xALL:
      result = 0x6572756C696146;
      break;
    case 0xBLL:
      result = OUTLINED_FUNCTION_17_14();
      break;
    default:
      return result;
  }

  return result;
}

void IFOutcome.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x73736563637553 ? (v4 = v0 == 0xE700000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v6 = v1 == 0xD000000000000012 && 0x8000000193A191B0 == v0;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_60();
      v8 = v3 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 2;
      }

      else
      {
        v9 = v1 == 0xD000000000000015 && 0x8000000193A19170 == v0;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v5 = 3;
        }

        else
        {
          v10 = v1 == 0xD000000000000017 && 0x8000000193A19150 == v0;
          if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v5 = 4;
          }

          else
          {
            OUTLINED_FUNCTION_60();
            v12 = v3 && v11 == v0;
            if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              v5 = 5;
            }

            else
            {
              v13 = v1 == 0xD00000000000001BLL && 0x8000000193A19110 == v0;
              if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                v5 = 6;
              }

              else
              {
                v14 = v1 == 0xD000000000000011 && 0x8000000193A190F0 == v0;
                if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  v5 = 7;
                }

                else
                {
                  v15 = v1 == 0xD000000000000012 && 0x8000000193A190D0 == v0;
                  if (v15 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    v5 = 8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_60();
                    v17 = v3 && v16 == v0;
                    if (v17 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      v5 = 9;
                    }

                    else
                    {
                      v18 = v1 == 0x6572756C696146 && v0 == 0xE700000000000000;
                      if (v18 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                      {

                        v5 = 10;
                      }

                      else if (v1 == OUTLINED_FUNCTION_17_14() && v0 == v19)
                      {

                        v5 = 11;
                      }

                      else
                      {
                        v21 = OUTLINED_FUNCTION_0_9();

                        v5 = 11;
                        if ((v21 & 1) == 0)
                        {
                          v5 = 0;
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
  }

  OUTLINED_FUNCTION_12_1(v5);
}

unint64_t sub_1934FED28()
{
  result = qword_1EAE3BD48;
  if (!qword_1EAE3BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BD48);
  }

  return result;
}

unint64_t sub_1934FED80()
{
  result = qword_1EAE3BD50;
  if (!qword_1EAE3BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BD50);
  }

  return result;
}

uint64_t sub_1934FEDD8()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9140);
  __swift_project_value_buffer(v0, qword_1EAEA9140);
  return sub_19393C410();
}

uint64_t sub_1934FEE30()
{
  OUTLINED_FUNCTION_110();
  do
  {
    result = sub_19393C0E0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1934FEED8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_193497890(v3);
    }
  }

  return result;
}

uint64_t sub_1934FEF4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v12 - v4;
  v6 = sub_19393BE60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_193458F7C(a1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_193458FEC(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_19344652C();
  return (*(v7 + 8))(v10, v6);
}

void sub_1934FF150()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9170);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v6, xmmword_19394FBC0);
  *v1 = 1;
  *v0 = "major";
  *(v0 + 8) = 5;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 2;
  *v11 = "minor";
  v11[1] = 5;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  *v14 = "patch";
  *(v14 + 1) = 5;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_13((v1 + 3 * v5));
  *v16 = "prerelease";
  *(v16 + 1) = 10;
  v16[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934FF300()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_1934FF394()
{
  OUTLINED_FUNCTION_110();
  v2 = v0[2];
  v3 = *(v0 + 12);
  v4 = v0[4];
  v5 = *(v0 + 20);
  v6 = *(v0 + 4);
  v8 = *(v0 + 3);
  if ((v0[1] & 1) == 0)
  {
    v7 = *v0;
    OUTLINED_FUNCTION_95_3();
    sub_19393C3D0();
  }

  if (!v1)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if (v6)
    {
      sub_19393C3C0();
    }
  }
}

void sub_1934FF4D0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9188);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = OUTLINED_FUNCTION_156();
  *(v6 + 16) = xmmword_19394FBB0;
  v7 = (v6 + v5);
  v8 = v6 + v5 + dword_1EAEA91C0;
  *v7 = 2;
  *v8 = "didShowInAppResult";
  *(v8 + 8) = 18;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_10_0();
  v12();
  v13 = OUTLINED_FUNCTION_9_4((v7 + v3));
  *v13 = "followUpActionBundleId";
  *(v13 + 1) = 22;
  v13[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v12();
  v14 = OUTLINED_FUNCTION_13((v7 + 2 * v3));
  *v14 = "shouldOpen";
  *(v14 + 1) = 10;
  v14[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v12();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934FF66C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 4:
        goto LABEL_9;
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 2:
LABEL_9:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
    }
  }
}

void sub_1934FF6E4()
{
  OUTLINED_FUNCTION_110();
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C2E0();
  }

  if (!v1)
  {
    if (v3)
    {
      sub_19393C3C0();
    }

    if (v4 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }
  }
}

uint64_t sub_1934FF810(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_19393C420();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19394FAC0;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = a3;
  *v14 = a4;
  *(v14 + 8) = a5;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v16 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v16);
  (*(v17 + 104))(v14, v15);
  return sub_19393C410();
}

uint64_t sub_1934FF97C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

uint64_t sub_1934FF9C8()
{
  if (v0[1])
  {
    v1 = *v0;
    return sub_19393C3C0();
  }

  return result;
}

void sub_1934FFA6C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEA91B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = OUTLINED_FUNCTION_156();
  *(v6 + 16) = xmmword_19394FBE0;
  v7 = (v6 + v5);
  v8 = v6 + v5 + dword_1EAEA91F0;
  *v7 = 1;
  *v8 = "domain";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_10_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v7 + v3);
  *v14 = 2;
  *v13 = "code";
  *(v13 + 8) = 4;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v12();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934FFBE0()
{
  OUTLINED_FUNCTION_110();
  v2 = v0[2];
  v3 = *(v0 + 24);
  if (v0[1])
  {
    v4 = *v0;
    sub_19393C3C0();
  }

  if (!v1 && (v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C360();
  }
}

void sub_1934FFCA0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA91D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  *(v4 + 16) = xmmword_1939526E0;
  v5 = v4 + v0 + dword_1EAEA9208;
  *(v4 + v0) = 0;
  *v5 = "IFPayloadUnknown";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v4 + v0 + v3);
  *v11 = 1;
  *v10 = "IFPayload_Action_Created";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v12 = OUTLINED_FUNCTION_3_1(v4 + v0 + 2 * v3);
  *v13 = 2;
  *v12 = "IFPayload_Queries_Created";
  *(v12 + 8) = 25;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v14 = OUTLINED_FUNCTION_9_4((v4 + v0 + 3 * v3));
  *v14 = "IFPayload_Action_Canceled";
  *(v14 + 1) = 25;
  v14[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v15 = OUTLINED_FUNCTION_13((v4 + v0 + 4 * v3));
  *v15 = "IFPayload_Undo_Redo_Request";
  *(v15 + 1) = 27;
  v15[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v16 = OUTLINED_FUNCTION_3_1(v4 + v0 + 5 * v3);
  *v17 = 5;
  *v16 = "IFPayload_Type_Conversion_Request";
  *(v16 + 8) = 33;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934FFEFC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEA91E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v6, xmmword_193952680);
  *v1 = 0;
  *v0 = "IFOutcomeUnknown";
  *(v0 + 8) = 16;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 1;
  v13 = OUTLINED_FUNCTION_0_0(v11, "IFOutcome_Success");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v15 = 2;
  v16 = OUTLINED_FUNCTION_0_0(v14, "IFOutcome_Action_Confirmation");
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  *v17 = "IFOutcome_Parameter_Needs_Value";
  *(v17 + 1) = 31;
  v18 = OUTLINED_FUNCTION_1_3(v17);
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  v20 = OUTLINED_FUNCTION_0_0(v19, "IFOutcome_Parameter_Confirmation");
  (v10)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v1 + 5 * v5);
  *v22 = 5;
  v23 = OUTLINED_FUNCTION_0_0(v21, "IFOutcome_Parameter_Disambiguation");
  (v10)(v23);
  v24 = OUTLINED_FUNCTION_14_4(6);
  *v24 = "IFOutcome_Parameter_Not_Allowed";
  *(v24 + 1) = 31;
  v25 = OUTLINED_FUNCTION_1_3(v24);
  (v10)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v1 + 7 * v5);
  *v27 = 7;
  v28 = OUTLINED_FUNCTION_0_0(v26, "IFOutcome_Parameter_Candidates_Not_Found");
  (v10)(v28);
  v29 = OUTLINED_FUNCTION_3_1(&v1[v5]);
  *v30 = 8;
  v31 = OUTLINED_FUNCTION_0_0(v29, "IFOutcome_Action_Requirement");
  (v10)(v31);
  v32 = OUTLINED_FUNCTION_3_1(v1 + 9 * v5);
  *v33 = 9;
  *v32 = "IFOutcome_Tool_Disambiguation";
  v32[1] = 29;
  v34 = OUTLINED_FUNCTION_1_3(v32);
  (v10)(v34);
  v35 = OUTLINED_FUNCTION_14_4(10);
  v36 = OUTLINED_FUNCTION_0_0(v35, "IFOutcome_Value_Disambiguation");
  (v10)(v36);
  v37 = OUTLINED_FUNCTION_14_4(11);
  *v37 = "IFOutcome_Failure";
  *(v37 + 1) = 17;
  v38 = OUTLINED_FUNCTION_1_3(v37);
  (v10)(v38);
  v39 = OUTLINED_FUNCTION_14_4(12);
  *v39 = "IFOutcome_Snippet_Stream";
  *(v39 + 1) = 24;
  v39[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

BOOL static AIML.UUID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE60();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v29 - v19;
  v21 = *(v18 + 56);
  sub_193458F7C(a1, &v29 - v19);
  sub_193458F7C(a2, &v20[v21]);
  OUTLINED_FUNCTION_31(v20);
  if (!v22)
  {
    sub_193458F7C(v20, v15);
    OUTLINED_FUNCTION_31(&v20[v21]);
    if (!v22)
    {
      (*(v7 + 32))(v11, &v20[v21], v4);
      OUTLINED_FUNCTION_2_30();
      sub_193501374(v24, v25);
      v26 = sub_19393C550();
      v27 = *(v7 + 8);
      v28 = OUTLINED_FUNCTION_13_0();
      v27(v28);
      (v27)(v15, v4);
      sub_193442B60(v20, &qword_1EAE3AA88, &qword_19394F9C0);
      return (v26 & 1) != 0;
    }

    (*(v7 + 8))(v15, v4);
LABEL_9:
    sub_193442B60(v20, &qword_1EAE3B4E8, &unk_193952CF0);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v20[v21]);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_193442B60(v20, &qword_1EAE3AA88, &qword_19394F9C0);
  return 1;
}

uint64_t AIML.UUID.hash(into:)()
{
  v1 = sub_19393BE60();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - v11;
  sub_193458F7C(v0, &v16 - v11);
  if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
  {
    return sub_19393CAD0();
  }

  (*(v4 + 32))(v8, v12, v1);
  sub_19393CAD0();
  OUTLINED_FUNCTION_2_30();
  sub_193501374(v14, v15);
  sub_19393C540();
  return (*(v4 + 8))(v8, v1);
}

uint64_t AIML.UUID.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AIML.UUID.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935006EC()
{
  sub_19393CAB0();
  AIML.UUID.hash(into:)();
  return sub_19393CB00();
}

uint64_t AIML.Version.major.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t AIML.Version.minor.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t AIML.Version.patch.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t AIML.Version.prerelease.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AIML.Version.prerelease.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

void AIML.Version.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

BOOL static AIML.Version.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a2 + 32);
  if (v4)
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (v5 == *(a2 + 8))
    {
      v13 = *(a2 + 12);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v7 == *(a2 + 16))
    {
      v14 = *(a2 + 20);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v15 = v9 == *(a2 + 24) && v10 == v11;
    return v15 || (sub_19393CA30() & 1) != 0;
  }

  return !v11;
}

uint64_t AIML.Version.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 12);
  v3 = v0[4];
  v4 = *(v0 + 20);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  if (*(v0 + 4) == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *v0;
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v2)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393CAE0();
      if (!v4)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_19393CAD0();
      if (v6)
      {
        goto LABEL_5;
      }

      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_19393CAD0();
  sub_19393CAE0();
  if (!v6)
  {
    return sub_19393CAD0();
  }

LABEL_5:
  sub_19393CAD0();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

uint64_t AIML.Version.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AIML.Version.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193500A8C()
{
  sub_19393CAB0();
  AIML.Version.hash(into:)();
  return sub_19393CB00();
}

uint64_t IFOutcomeSuccess.followUpActionBundleId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IFOutcomeSuccess.followUpActionBundleId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

IntelligencePlatformLibrary::IFOutcomeSuccess __swiftcall IFOutcomeSuccess.init()()
{
  *v0 = 2;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 2;
  return result;
}

uint64_t static IFOutcomeSuccess.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = a1[24];
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = a2[24];
  if (v4 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    v12 = 0;
    if (v8 == 2 || ((v8 ^ v4) & 1) != 0)
    {
      return v12;
    }
  }

  if (v6)
  {
    if (!v10)
    {
      return 0;
    }

    v13 = v5 == v9 && v6 == v10;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v7 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v11 ^ v7) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t IFOutcomeSuccess.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  if (v3 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t IFOutcomeSuccess.hashValue.getter()
{
  OUTLINED_FUNCTION_4_22();
  sub_19393CAB0();
  IFOutcomeSuccess.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193500DB8()
{
  OUTLINED_FUNCTION_4_22();
  sub_19393CAB0();
  IFOutcomeSuccess.hash(into:)();
  return sub_19393CB00();
}

uint64_t IFOutcomeToolDisambiguation.assistantSchemaKind.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IFOutcomeToolDisambiguation.assistantSchemaKind.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::IFOutcomeToolDisambiguation __swiftcall IFOutcomeToolDisambiguation.init()()
{
  v1 = v0;

  *v1 = 0;
  v1[1] = 0;
  result.assistantSchemaKind.value._object = v3;
  result.assistantSchemaKind.value._countAndFlagsBits = v2;
  return result;
}

uint64_t static IFOutcomeToolDisambiguation.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t IFOutcomeToolDisambiguation.hash(into:)()
{
  if (!v0[1])
  {
    return sub_19393CAD0();
  }

  v1 = *v0;
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t IFOutcomeToolDisambiguation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_193500FE8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t IFError.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IFError.domain.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IFError.code.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t IFError.code.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void IFError.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t static IFError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IFError.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (v0[1])
  {
    v3 = *v0;
    sub_19393CAD0();
    sub_19393C640();
    if (v2)
    {
      return sub_19393CAD0();
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  return MEMORY[0x193B18060](v1);
}

uint64_t IFError.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (!v4)
  {
    MEMORY[0x193B18060](v3);
  }

  return sub_19393CB00();
}

uint64_t sub_1935012D4()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_19393CAB0();
  IFError.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193501374(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1935013C0()
{
  result = qword_1EAE3BDC8;
  if (!qword_1EAE3BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BDC8);
  }

  return result;
}

unint64_t sub_193501418()
{
  result = qword_1EAE3BDD0;
  if (!qword_1EAE3BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BDD0);
  }

  return result;
}

unint64_t sub_193501470()
{
  result = qword_1EAE3BDD8;
  if (!qword_1EAE3BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BDD8);
  }

  return result;
}

unint64_t sub_1935014C8()
{
  result = qword_1EAE3BDE0;
  if (!qword_1EAE3BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BDE0);
  }

  return result;
}

unint64_t sub_193501520()
{
  result = qword_1EAE3BDE8;
  if (!qword_1EAE3BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BDE8);
  }

  return result;
}

uint64_t sub_193501580@<X0>(uint64_t *a1@<X8>)
{
  result = IFPayload.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935015D8@<X0>(uint64_t *a1@<X8>)
{
  result = static IFPayload.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_193501604()
{
  result = qword_1EAE3BE00;
  if (!qword_1EAE3BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BE00);
  }

  return result;
}

uint64_t sub_19350168C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193501794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1935018A0@<X0>(uint64_t *a1@<X8>)
{
  result = IFOutcome.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935018F8@<X0>(uint64_t *a1@<X8>)
{
  result = static IFOutcome.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_193501924()
{
  result = qword_1EAE3BE18;
  if (!qword_1EAE3BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BE18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AIML(_BYTE *result, int a2, int a3)
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

void sub_193501AF4()
{
  sub_1934D6C4C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_193501B60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 32);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_193501BAC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_193501C18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 16);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_193501C64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowFeedbackLearning.TaskStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_193501D18(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return 0;
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LLMCacheManagerTelemetry.json()()
{
  OUTLINED_FUNCTION_26();
  v30 = v1;
  v31 = v2;
  v3 = sub_19393C090();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for LLMCacheManagerTelemetry(0);
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE20, &qword_19395A0A0);
  OUTLINED_FUNCTION_4_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v29 - v23;
  OUTLINED_FUNCTION_3_30();
  sub_19350346C(v0, v18, v25);
  sub_1934470C8(v18, v12, v24);
  sub_19393C080();
  sub_193501EF8();
  sub_19393C250();
  (*(v6 + 8))(v11, v3);
  sub_19344E6DC(v24, &qword_1EAE3BE20, &qword_19395A0A0);
  OUTLINED_FUNCTION_27();
  result._object = v27;
  result._countAndFlagsBits = v26;
  return result;
}

unint64_t sub_193501EF8()
{
  result = qword_1EAE3BE28;
  if (!qword_1EAE3BE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3BE20, &qword_19395A0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BE28);
  }

  return result;
}

uint64_t static LLMCacheManagerTelemetry.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = OUTLINED_FUNCTION_47(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE20, &qword_19395A0A0);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;

  sub_19393C060();
  sub_193501EF8();
  result = sub_19393C260();
  if (!v1)
  {
    OUTLINED_FUNCTION_7_23();
    return sub_1935030F4(v12, a1, v14);
  }

  return result;
}

void static LLMCacheManagerTelemetry.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v36 = v2;
  v37 = v1;
  v35 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE20, &qword_19395A0A0);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  if (*sub_193509008() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v15 + 16))(v20, v23, v12);
    v24 = OUTLINED_FUNCTION_19_3();
    sub_193450688(v24, v25);
    sub_193501EF8();
    OUTLINED_FUNCTION_19_3();
    sub_19393C280();
    (*(v15 + 8))(v23, v12);
    if (!v0)
    {
      OUTLINED_FUNCTION_7_23();
      v27 = v36;
      sub_1935030F4(v11, v36, v28);
      v29 = type metadata accessor for LLMCacheManagerTelemetry(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v27 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v31);
      (*(v32 + 16))(v27 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v27 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v27 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v37, v27 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v26 = v5;
    *(v26 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t LLMCacheManagerTelemetry.serialize()()
{
  v1 = type metadata accessor for LLMCacheManagerTelemetry(0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE20, &qword_19395A0A0);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  OUTLINED_FUNCTION_3_30();
  sub_19350346C(v0, v7, v14);
  sub_1934470C8(v7, v1, v13);
  sub_193501EF8();
  sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3BE20, &qword_19395A0A0);
  return OUTLINED_FUNCTION_13_0();
}

void sub_1935024D4()
{
  OUTLINED_FUNCTION_26();
  v76 = v2;
  v77 = v1;
  v78 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE38, &qword_19395A0B0);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v74 - v11;
  v75 = type metadata accessor for CacheManagerTarget(0);
  v13 = OUTLINED_FUNCTION_4_1(v75);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v74 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v74 - v22;
  v24 = type metadata accessor for MonotonicTimestamp();
  v25 = OUTLINED_FUNCTION_4_1(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_1();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE30, &qword_19395A0A8);
  OUTLINED_FUNCTION_47(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v74 - v35;
  v37 = type metadata accessor for CacheManagerTelemetryEventMetadata(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](0x74654D746E657665);
  OUTLINED_FUNCTION_5_1();
  v42 = v41 - v40;
  v44 = v6 == v43 && v4 == v39;
  if (!v44 && (OUTLINED_FUNCTION_0_18() & 1) == 0)
  {
    v58 = v6 == 0xD000000000000012 && 0x8000000193A17A30 == v4;
    if (v58 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
    {
      v59 = type metadata accessor for LLMCacheManagerTelemetry(0);
      v60 = OUTLINED_FUNCTION_27_4(*(v59 + 32));
      sub_193448758(v60, v23, v61, v62);
      if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
      {
        v49 = &qword_1EAE3B498;
        v50 = &unk_193959120;
        v51 = v23;
        goto LABEL_8;
      }

      sub_1935030F4(v23, v30, type metadata accessor for MonotonicTimestamp);
      sub_193494798(v24, &off_1F07BD958, v76);
      v56 = type metadata accessor for MonotonicTimestamp;
      v57 = v30;
    }

    else
    {
      v63 = v6 == 0x746567726174 && v4 == 0xE600000000000000;
      if (!v63 && (OUTLINED_FUNCTION_0_18() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        v71 = v70;
        *v70 = v6;
        v70[1] = v4;
        v70[5] = type metadata accessor for LLMCacheManagerTelemetry(0);
        __swift_allocate_boxed_opaque_existential_1Tm(v71 + 2);
        OUTLINED_FUNCTION_3_30();
        sub_19350346C(v78, v72, v73);
        OUTLINED_FUNCTION_9_36();

        goto LABEL_11;
      }

      v64 = type metadata accessor for LLMCacheManagerTelemetry(0);
      v65 = OUTLINED_FUNCTION_27_4(*(v64 + 36));
      sub_193448758(v65, v12, v66, v67);
      v68 = v75;
      if (__swift_getEnumTagSinglePayload(v12, 1, v75) == 1)
      {
        v49 = &qword_1EAE3BE38;
        v50 = &qword_19395A0B0;
        v51 = v12;
        goto LABEL_8;
      }

      v69 = v74;
      sub_1935030F4(v12, v74, type metadata accessor for CacheManagerTarget);
      sub_193494798(v68, &off_1F07C4648, v76);
      OUTLINED_FUNCTION_1_32();
      v57 = v69;
    }

LABEL_10:
    sub_193503150(v57, v56);
    goto LABEL_11;
  }

  v45 = type metadata accessor for LLMCacheManagerTelemetry(0);
  v46 = OUTLINED_FUNCTION_27_4(*(v45 + 28));
  sub_193448758(v46, v36, v47, v48);
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) != 1)
  {
    sub_1935030F4(v36, v42, type metadata accessor for CacheManagerTelemetryEventMetadata);
    OUTLINED_FUNCTION_19_3();
    sub_193494798(v53, v54, v55);
    v56 = type metadata accessor for CacheManagerTelemetryEventMetadata;
    v57 = v42;
    goto LABEL_10;
  }

  v49 = &qword_1EAE3BE30;
  v50 = &qword_19395A0A8;
  v51 = v36;
LABEL_8:
  sub_19344E6DC(v51, v49, v50);
  v52 = v76;
  *v76 = 0u;
  *(v52 + 1) = 0u;
LABEL_11:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

void sub_1935029B4()
{
  OUTLINED_FUNCTION_26();
  v40 = v2;
  v41 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v8 = OUTLINED_FUNCTION_47(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = sub_19393BE60();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v40 - v27;
  v29 = v6 == 0x6449776F72 && v4 == 0xE500000000000000;
  if (v29 || (sub_19393CA30() & 1) != 0)
  {
    sub_193448758(v0, v16, &qword_1EAE3AA88, &qword_19394F9C0);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      (*(v20 + 32))(v28, v16, v17);
      sub_1934948FC();
      (*(v20 + 8))(v28, v17);
      goto LABEL_10;
    }

    v30 = v16;
  }

  else
  {
    v32 = v6 == 0x6E614D6568636163 && v4 == 0xEE00644972656761;
    if (!v32 && (sub_19393CA30() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      v38 = v37;
      *v37 = v6;
      v37[1] = v4;
      v37[5] = type metadata accessor for CacheManagerTelemetryEventMetadata(0);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v38 + 2);
      sub_19350346C(v0, boxed_opaque_existential_1Tm, type metadata accessor for CacheManagerTelemetryEventMetadata);
      OUTLINED_FUNCTION_9_36();

      goto LABEL_10;
    }

    v33 = type metadata accessor for CacheManagerTelemetryEventMetadata(0);
    v34 = OUTLINED_FUNCTION_27_4(*(v33 + 20));
    sub_193448758(v34, v13, v35, v36);
    if (__swift_getEnumTagSinglePayload(v13, 1, v17) != 1)
    {
      (*(v20 + 32))(v25, v13, v17);
      sub_1934948FC();
      (*(v20 + 8))(v25, v17);
      goto LABEL_10;
    }

    v30 = v13;
  }

  sub_19344E6DC(v30, &qword_1EAE3AA88, &qword_19394F9C0);
  v31 = v40;
  *v40 = 0u;
  v31[1] = 0u;
LABEL_10:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

void sub_193502D10()
{
  OUTLINED_FUNCTION_26();
  v57 = v2;
  v58 = v1;
  v63 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for CacheManagerRequestInvocation(0);
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  v14 = type metadata accessor for CacheManagerTarget(0);
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v20 = v18 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v57 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v57 - v25;
  v27 = v6 == 0x697461636F766E69 && v4 == 0xEA00000000006E6FLL;
  if (!v27 && (OUTLINED_FUNCTION_19_20() & 1) == 0)
  {
    v35 = v6 == 0x6F43747265736E69 && v4 == 0xED0000747865746ELL;
    if (v35 || (OUTLINED_FUNCTION_19_20() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_33();
      sub_19350346C(v63, v24, v36);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_19349AB64();
        v41 = OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_6_22(v41, v42);
        OUTLINED_FUNCTION_0_33();
        sub_19350346C(v63, v43, v44);
        OUTLINED_FUNCTION_9_36();

        OUTLINED_FUNCTION_1_32();
        v34 = v24;
        goto LABEL_8;
      }

      v37 = *(v24 + 4);
      v38 = v24[10];
      *&v59 = *v24;
      BYTE10(v59) = v38;
      WORD4(v59) = v37;
      v39 = &type metadata for CacheManagerInsert;
      v40 = &off_1F07C4668;
    }

    else
    {
      v45 = v6 == 0x6F43686372616573 && v4 == 0xED0000747865746ELL;
      if (!v45 && (OUTLINED_FUNCTION_19_20() & 1) == 0)
      {
        sub_19349AB64();
        v53 = OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_6_22(v53, v54);
        OUTLINED_FUNCTION_0_33();
        sub_19350346C(v63, v55, v56);
        OUTLINED_FUNCTION_9_36();

        goto LABEL_18;
      }

      OUTLINED_FUNCTION_0_33();
      sub_19350346C(v63, v20, v46);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_19349AB64();
        v49 = OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_6_22(v49, v50);
        OUTLINED_FUNCTION_0_33();
        sub_19350346C(v63, v51, v52);
        OUTLINED_FUNCTION_9_36();

        OUTLINED_FUNCTION_1_32();
        v34 = v20;
        goto LABEL_8;
      }

      v47 = *(v20 + 48);
      v48 = *(v20 + 16);
      v59 = *v20;
      v60 = v48;
      v61 = *(v20 + 32);
      v62 = v47;
      v39 = &type metadata for CacheManagerSearch;
      v40 = &off_1F07C46A8;
    }

    sub_193494798(v39, v40, v57);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_33();
  sub_19350346C(v63, v26, v28);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_1935030F4(v26, v13, type metadata accessor for CacheManagerRequestInvocation);
    sub_193494798(v7, &off_1F07C4658, v57);
    sub_193503150(v13, type metadata accessor for CacheManagerRequestInvocation);
    goto LABEL_18;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v30 = v29;
  *v29 = v6;
  v29[1] = v4;
  v29[5] = v14;
  __swift_allocate_boxed_opaque_existential_1Tm(v29 + 2);
  OUTLINED_FUNCTION_0_33();
  sub_19350346C(v63, v31, v32);
  *(v30 + 48) = 1;
  swift_willThrow();

  OUTLINED_FUNCTION_1_32();
  v34 = v26;
LABEL_8:
  sub_193503150(v34, v33);
LABEL_18:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935030F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t sub_193503150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1935031C0()
{
  OUTLINED_FUNCTION_26();
  v34 = v1;
  v37 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = sub_19393BE60();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v22 = v21 - v20;
  v23 = v5 == 0x7254746E65696C63 && v3 == 0xED00006449656361;
  if (v23 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    sub_193448758(v37, v13, &qword_1EAE3AA88, &qword_19394F9C0);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      v24 = *(v17 + 32);
      v25 = OUTLINED_FUNCTION_19_3();
      v26(v25);
      sub_1934948FC();
      (*(v17 + 8))(v22, v14);
      goto LABEL_10;
    }

    sub_19344E6DC(v13, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v27 = v5 == 0x63617073656D616ELL && v3 == 0xE900000000000065;
    if (!v27 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      v31 = v30;
      *v30 = v5;
      v30[1] = v3;
      v30[5] = type metadata accessor for CacheManagerRequestInvocation(0);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v31 + 2);
      sub_19350346C(v37, boxed_opaque_existential_1Tm, type metadata accessor for CacheManagerRequestInvocation);
      OUTLINED_FUNCTION_9_36();

      goto LABEL_10;
    }

    v28 = v37 + *(type metadata accessor for CacheManagerRequestInvocation(0) + 20);
    if ((*(v28 + 9) & 1) == 0)
    {
      v29 = *(v28 + 8);
      v35 = *v28;
      v36 = v29 & 1;
      sub_1934948FC();
      goto LABEL_10;
    }
  }

  *v7 = 0u;
  v7[1] = 0u;
LABEL_10:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19350346C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

id sub_1935034E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_26_9();
  v9 = *v3;
  v10 = *(v3 + 4) | (*(v3 + 10) << 16);
  v11 = a1 == v7 && v8 == 0xE700000000000000;
  if (v11 || (OUTLINED_FUNCTION_91_2() & 1) != 0)
  {
    if (!(v10 >> 22))
    {
      v12 = &type metadata for CacheManagerInsert.Started;
      v13 = &off_1F07C4678;
      return sub_193494798(v12, v13, a3);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    v15 = v11 && a2 == 0xE500000000000000;
    if (v15 || (OUTLINED_FUNCTION_91_2() & 1) != 0)
    {
      if ((v10 & 0xC00000) == 0x400000)
      {
        v12 = &type metadata for CacheManagerInsert.Ended;
        v13 = &off_1F07C4688;
        return sub_193494798(v12, v13, a3);
      }
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      v16 = v11 && a2 == 0xE600000000000000;
      if (v16 || (OUTLINED_FUNCTION_91_2()) && (v10 & 0xC00000) == 0x800000)
      {
        v12 = &type metadata for CacheManagerInsert.Failed;
        v13 = &off_1F07C4698;
        return sub_193494798(v12, v13, a3);
      }
    }
  }

  sub_19349AB64();
  v17 = OUTLINED_FUNCTION_13_9();
  *v18 = a1;
  *(v18 + 8) = a2;
  *(v18 + 40) = &type metadata for CacheManagerInsert;
  *(v18 + 16) = v9;
  *(v18 + 26) = BYTE2(v10);
  *(v18 + 24) = v10;
  OUTLINED_FUNCTION_23_2(v17, v18);
}

id sub_1935036D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_26_9();
  v10 = *v3;
  v9 = v3[1];
  v11 = v3[2];
  v23 = v3[3];
  v12 = v3[4];
  v24 = v3[5];
  v13 = a1 == v7 && v8 == 0xE700000000000000;
  v14 = *(v3 + 48);
  if (v13 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (v14 <= 0x3F)
    {
      v15 = &type metadata for CacheManagerSearch.Started;
      v16 = &off_1F07C46B8;
      return sub_193494798(v15, v16, a3);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    v18 = v13 && a2 == 0xE500000000000000;
    if (v18 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
    {
      if ((v14 & 0xC0) == 0x40)
      {
        v15 = &type metadata for CacheManagerSearch.Ended;
        v16 = &off_1F07C46C8;
        return sub_193494798(v15, v16, a3);
      }
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      v19 = v13 && a2 == 0xE600000000000000;
      if (v19 || (OUTLINED_FUNCTION_5_5()) && (v14 & 0xC0) == 0x80)
      {
        v15 = &type metadata for CacheManagerSearch.Failed;
        v16 = &off_1F07C46D8;
        return sub_193494798(v15, v16, a3);
      }
    }
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v21 = v20;
  *v20 = a1;
  v20[1] = a2;
  v20[5] = &type metadata for CacheManagerSearch;
  v22 = swift_allocObject();
  v21[2] = v22;
  *(v22 + 16) = v10;
  *(v22 + 24) = v9;
  *(v22 + 32) = v11;
  *(v22 + 40) = v23;
  *(v22 + 48) = v12;
  *(v22 + 56) = v24;
  *(v22 + 64) = v14;
  *(v21 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1935038F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  result = 0x737473697865;
  v8 = *v4;
  v9 = a1 == 0x737473697865 && a2 == 0xE600000000000000;
  if (v9 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v8 == 2)
    {
      *a4 = 0u;
      a4[1] = 0u;
    }

    else
    {
      return sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    v12 = OUTLINED_FUNCTION_13_9();
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 40) = a3;
    *(v13 + 16) = v8;
    OUTLINED_FUNCTION_23_2(v12, v13);
  }

  return result;
}

uint64_t sub_193503A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x7453686372616573;
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 9);
  if (a1 == 0x7453686372616573 && a2 == 0xEE00796765746172)
  {
    goto LABEL_6;
  }

  v19 = *(v3 + 5);
  v12 = *(v3 + 16);
  v22 = v3[3];
  v23 = *(v3 + 32);
  v24 = *(v3 + 3);
  v20 = v3[5];
  v21 = *(v3 + 48);
  result = OUTLINED_FUNCTION_59_0();
  if (result)
  {
LABEL_6:
    if (v10)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    return sub_1934948FC();
  }

  result = 0x6F43746C75736572;
  v13 = a1 == 0x6F43746C75736572 && a2 == 0xEB00000000746E75;
  if (v13 || (result = OUTLINED_FUNCTION_59_0(), (result & 1) != 0))
  {
    if (v12)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  v14 = a1 == 0xD000000000000011 && 0x8000000193A194E0 == a2;
  if (v14 || (result = OUTLINED_FUNCTION_59_0(), (result & 1) != 0))
  {
    if (v23)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  v15 = a1 == 0xD000000000000010 && 0x8000000193A19500 == a2;
  if (v15 || (result = OUTLINED_FUNCTION_59_0(), (result & 1) != 0))
  {
    if (v21)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v17 = v16;
  *v16 = a1;
  v16[1] = a2;
  v16[5] = &type metadata for CacheManagerSearch.Ended;
  v18 = swift_allocObject();
  v17[2] = v18;
  *(v18 + 16) = v8;
  *(v18 + 24) = v9;
  *(v18 + 25) = v10;
  *(v18 + 26) = v19;
  *(v18 + 28) = v24;
  *(v18 + 32) = v12;
  *(v18 + 36) = *(v3 + 5);
  *(v18 + 33) = *(v3 + 17);
  *(v18 + 40) = v22;
  *(v18 + 48) = v23;
  *(v18 + 52) = *(v3 + 9);
  *(v18 + 49) = *(v3 + 33);
  *(v18 + 56) = v20;
  *(v18 + 64) = v21;
  *(v17 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_193503CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = 0x6E6F73616572;
  v8 = *v4;
  v9 = *(v4 + 4);
  v10 = *(v4 + 10);
  v11 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
  if (v11 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v10)
    {
      *a4 = 0u;
      *(a4 + 16) = 0u;
    }

    else
    {
      return sub_193494798(&type metadata for CacheManagerError, &off_1F07C46E8, a4);
    }
  }

  else
  {
    sub_19349AB64();
    v14 = OUTLINED_FUNCTION_13_9();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 40) = a3;
    *(v15 + 16) = v8;
    *(v15 + 24) = v9;
    *(v15 + 26) = v10;
    OUTLINED_FUNCTION_23_2(v14, v15);
  }

  return result;
}

uint64_t sub_193503DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x707954726F727265;
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 9);
  v10 = a1 == 0x707954726F727265 && a2 == 0xE900000000000065;
  if (v10 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v9)
    {
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      return sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    v12 = OUTLINED_FUNCTION_13_9();
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 40) = &type metadata for CacheManagerError;
    *(v13 + 16) = v7;
    *(v13 + 24) = v8;
    *(v13 + 25) = v9;
    OUTLINED_FUNCTION_23_2(v12, v13);
  }

  return result;
}

uint64_t LLMCacheManagerTelemetry.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for LLMCacheManagerTelemetry(0);
  v3 = v2[5];
  sub_193509014();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_1935091B8();
  v6 = v2[8];
  sub_1935092CC();
  v7 = v2[9];
  sub_1935093C0();
  *a1 = *sub_193509008();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  sub_19393BE00();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3BE30, &qword_19395A0A8);
  type metadata accessor for CacheManagerTelemetryEventMetadata(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  sub_19344E6DC(a1 + v6, &qword_1EAE3B498, &unk_193959120);
  type metadata accessor for MonotonicTimestamp();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  sub_19344E6DC(a1 + v7, &qword_1EAE3BE38, &qword_19395A0B0);
  type metadata accessor for CacheManagerTarget(0);
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

uint64_t static LLMCacheManagerTelemetry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v88 = type metadata accessor for CacheManagerTarget(0);
  v4 = OUTLINED_FUNCTION_4_1(v88);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v83 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE38, &qword_19395A0B0);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_53_1();
  v84 = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE40, &qword_19395A1C0);
  OUTLINED_FUNCTION_4_1(v86);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_53_1();
  v87 = v17;
  v93 = type metadata accessor for MonotonicTimestamp();
  v18 = OUTLINED_FUNCTION_4_1(v93);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  v85 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_53_1();
  v89 = v27;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1(v90);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_53_1();
  v92 = v31;
  v32 = type metadata accessor for CacheManagerTelemetryEventMetadata(0);
  v33 = OUTLINED_FUNCTION_4_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_1();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE30, &qword_19395A0A8);
  OUTLINED_FUNCTION_47(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v82 - v43;
  v45 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE48, &qword_19395A1C8) - 8);
  v46 = *(*v45 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v82 - v48;
  v91 = type metadata accessor for LLMCacheManagerTelemetry(0);
  v50 = *(v91 + 28);
  v51 = v45[14];
  v94 = a1;
  sub_1934486F8(a1 + v50, v49, &qword_1EAE3BE30, &qword_19395A0A8);
  v95 = a2;
  sub_1934486F8(a2 + v50, &v49[v51], &qword_1EAE3BE30, &qword_19395A0A8);
  OUTLINED_FUNCTION_31(v49);
  if (v52)
  {
    OUTLINED_FUNCTION_31(&v49[v51]);
    if (v52)
    {
      sub_19344E6DC(v49, &qword_1EAE3BE30, &qword_19395A0A8);
      goto LABEL_11;
    }
  }

  else
  {
    sub_1934486F8(v49, v44, &qword_1EAE3BE30, &qword_19395A0A8);
    OUTLINED_FUNCTION_31(&v49[v51]);
    if (!v52)
    {
      OUTLINED_FUNCTION_9_37();
      sub_193505174(&v49[v51], v38, v56);
      OUTLINED_FUNCTION_8_27();
      sub_193505418(v57, v58);
      v59 = sub_19393C550();
      sub_193503150(v38, &qword_19395A0A8);
      sub_193503150(v44, &qword_19395A0A8);
      sub_19344E6DC(v49, &qword_1EAE3BE30, &qword_19395A0A8);
      if ((v59 & 1) == 0)
      {
        return 0;
      }

LABEL_11:
      v60 = v91;
      v61 = *(v91 + 32);
      v62 = *(v90 + 48);
      v63 = v94;
      v64 = v92;
      sub_1934486F8(v94 + v61, v92, &qword_1EAE3B498, &unk_193959120);
      v65 = v95;
      sub_1934486F8(v95 + v61, v64 + v62, &qword_1EAE3B498, &unk_193959120);
      if (__swift_getEnumTagSinglePayload(v64, 1, v93) == 1)
      {
        OUTLINED_FUNCTION_31(v64 + v62);
        if (!v52)
        {
          goto LABEL_18;
        }

        sub_19344E6DC(v64, &qword_1EAE3B498, &unk_193959120);
      }

      else
      {
        v66 = v89;
        sub_1934486F8(v64, v89, &qword_1EAE3B498, &unk_193959120);
        OUTLINED_FUNCTION_31(v64 + v62);
        if (v52)
        {
          sub_193503150(v66, type metadata accessor for MonotonicTimestamp);
LABEL_18:
          v53 = &qword_1EAE3B958;
          v54 = &qword_193957B50;
          v55 = v64;
          goto LABEL_28;
        }

        v67 = v85;
        sub_193505174(v64 + v62, v85, type metadata accessor for MonotonicTimestamp);
        OUTLINED_FUNCTION_6_23();
        sub_193505418(v68, v69);
        v70 = sub_19393C550();
        sub_193503150(v67, type metadata accessor for MonotonicTimestamp);
        sub_193503150(v66, type metadata accessor for MonotonicTimestamp);
        sub_19344E6DC(v64, &qword_1EAE3B498, &unk_193959120);
        if ((v70 & 1) == 0)
        {
          return 0;
        }
      }

      v71 = *(v60 + 36);
      v72 = v87;
      v73 = *(v86 + 48);
      sub_1934486F8(v63 + v71, v87, &qword_1EAE3BE38, &qword_19395A0B0);
      sub_1934486F8(v65 + v71, v72 + v73, &qword_1EAE3BE38, &qword_19395A0B0);
      if (__swift_getEnumTagSinglePayload(v72, 1, v88) == 1)
      {
        OUTLINED_FUNCTION_31(v72 + v73);
        if (!v52)
        {
          goto LABEL_27;
        }

        sub_19344E6DC(v72, &qword_1EAE3BE38, &qword_19395A0B0);
      }

      else
      {
        v74 = v84;
        sub_1934486F8(v72, v84, &qword_1EAE3BE38, &qword_19395A0B0);
        OUTLINED_FUNCTION_31(v72 + v73);
        if (v52)
        {
          OUTLINED_FUNCTION_1_32();
          sub_193503150(v74, v75);
LABEL_27:
          v53 = &qword_1EAE3BE40;
          v54 = &qword_19395A1C0;
          v55 = v72;
          goto LABEL_28;
        }

        v77 = v72 + v73;
        v78 = v83;
        sub_193505174(v77, v83, type metadata accessor for CacheManagerTarget);
        OUTLINED_FUNCTION_10_20();
        sub_193505418(v79, v80);
        v81 = sub_19393C550();
        sub_193503150(v78, type metadata accessor for CacheManagerTarget);
        sub_193503150(v74, type metadata accessor for CacheManagerTarget);
        sub_19344E6DC(v72, &qword_1EAE3BE38, &qword_19395A0B0);
        if ((v81 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    sub_193503150(v44, type metadata accessor for CacheManagerTelemetryEventMetadata);
  }

  v53 = &qword_1EAE3BE48;
  v54 = &qword_19395A1C8;
  v55 = v49;
LABEL_28:
  sub_19344E6DC(v55, v53, v54);
  return 0;
}

uint64_t LLMCacheManagerTelemetry.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  v58 = type metadata accessor for CacheManagerTarget(0);
  v3 = OUTLINED_FUNCTION_4_1(v58);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v55 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE38, &qword_19395A0B0);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  v57 = type metadata accessor for MonotonicTimestamp();
  v14 = OUTLINED_FUNCTION_4_1(v57);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v54 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  v25 = type metadata accessor for CacheManagerTelemetryEventMetadata(0);
  v26 = OUTLINED_FUNCTION_4_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE30, &qword_19395A0A8);
  OUTLINED_FUNCTION_47(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v53 - v36;
  v38 = type metadata accessor for LLMCacheManagerTelemetry(0);
  sub_1934486F8(v2 + v38[7], v37, &qword_1EAE3BE30, &qword_19395A0A8);
  if (__swift_getEnumTagSinglePayload(v37, 1, v25) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_9_37();
    sub_193505174(v37, v31, v39);
    sub_19393CAD0();
    OUTLINED_FUNCTION_8_27();
    sub_193505418(v40, v41);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    v42 = OUTLINED_FUNCTION_24_1();
    sub_193503150(v42, v43);
  }

  sub_1934486F8(v2 + v38[8], v24, &qword_1EAE3B498, &unk_193959120);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v57);
  v45 = v58;
  if (EnumTagSinglePayload == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v46 = v54;
    sub_193505174(v24, v54, type metadata accessor for MonotonicTimestamp);
    sub_19393CAD0();
    OUTLINED_FUNCTION_6_23();
    sub_193505418(v47, v48);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_193503150(v46, type metadata accessor for MonotonicTimestamp);
  }

  sub_1934486F8(v2 + v38[9], v13, &qword_1EAE3BE38, &qword_19395A0B0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v45) == 1)
  {
    return sub_19393CAD0();
  }

  v50 = v55;
  sub_193505174(v13, v55, type metadata accessor for CacheManagerTarget);
  sub_19393CAD0();
  OUTLINED_FUNCTION_10_20();
  sub_193505418(v51, v52);
  OUTLINED_FUNCTION_21_1();
  sub_19393C540();
  return sub_193503150(v50, type metadata accessor for CacheManagerTarget);
}

uint64_t static CacheManagerTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheManagerRequestInvocation(0);
  v5 = OUTLINED_FUNCTION_47(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v48 - v11;
  v13 = type metadata accessor for CacheManagerTarget(0);
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v48 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v48 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE70, &qword_19395A1D0);
  OUTLINED_FUNCTION_47(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_3_0();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = v48 - v30;
  v32 = v48 + *(v29 + 56) - v30;
  sub_193504ED4(a1, v48 - v30);
  sub_193504ED4(a2, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_193504ED4(v31, v22);
      OUTLINED_FUNCTION_24_1();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = *(v22 + 4);
        v35 = v22[10];
        v36 = *v32;
        v37 = *(v32 + 4);
        v38 = v32[10];
        *&v50[0] = *v22;
        BYTE10(v50[0]) = v35;
        WORD4(v50[0]) = v34;
        *&v48[0] = v36;
        BYTE10(v48[0]) = v38;
        WORD4(v48[0]) = v37;
        v39 = static CacheManagerInsert.== infix(_:_:)(v50, v48);
LABEL_9:
        v44 = v39;
LABEL_12:
        OUTLINED_FUNCTION_1_32();
        sub_193503150(v31, v46);
        return v44 & 1;
      }
    }

    else
    {
      sub_193504ED4(v31, v19);
      OUTLINED_FUNCTION_24_1();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v40 = v19[48];
        v41 = v32[48];
        v42 = *(v19 + 1);
        v50[0] = *v19;
        v50[1] = v42;
        v50[2] = *(v19 + 2);
        v51 = v40;
        v43 = *(v32 + 1);
        v48[0] = *v32;
        v48[1] = v43;
        v48[2] = *(v32 + 2);
        v49 = v41;
        v39 = static CacheManagerSearch.== infix(_:_:)(v50, v48);
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_193504ED4(v31, v24);
    OUTLINED_FUNCTION_24_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_7_24();
      sub_193505174(v24, v12, v45);
      sub_193505174(v32, v10, v13);
      v44 = static CacheManagerRequestInvocation.== infix(_:_:)(v12, v10);
      sub_193503150(v10, v13);
      sub_193503150(v12, v13);
      goto LABEL_12;
    }

    sub_193503150(v24, type metadata accessor for CacheManagerRequestInvocation);
  }

  sub_19344E6DC(v31, &qword_1EAE3BE70, &qword_19395A1D0);
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_193504ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheManagerTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static CacheManagerInsert.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 10);
  v3 = *a2;
  v4 = *(a2 + 4) | (*(a2 + 10) << 16);
  if (!(v2 >> 6))
  {
    if (v4 < 0x400000)
    {
      OUTLINED_FUNCTION_23_19();
      v7 = static CacheManagerInsert.Started.== infix(_:_:)();
      return v7 & 1;
    }

LABEL_9:
    v7 = 0;
    return v7 & 1;
  }

  if (v2 >> 6 != 1)
  {
    if ((v4 & 0xC00000) == 0x800000)
    {
      v8 = *(a1 + 4) | (*(a1 + 10) << 16);
      v13 = *a1;
      v14 = v8;
      v15 = BYTE2(v8) & 1;
      v10 = v3;
      v11 = v4;
      v12 = BYTE2(v4) & 1;
      v7 = static CacheManagerInsert.Failed.== infix(_:_:)(&v13, &v10);
      return v7 & 1;
    }

    goto LABEL_9;
  }

  if ((v4 & 0xC00000) != 0x400000)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_23_19();
  v7 = static CacheManagerInsert.Ended.== infix(_:_:)(v5, v6);
  return v7 & 1;
}

uint64_t static CacheManagerSearch.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 48);
  v4 = *a2;
  v5 = *(a2 + 48);
  if (!(v3 >> 6))
  {
    if (v5 < 0x40)
    {
      LOBYTE(v26) = *a1;
      LOBYTE(v18) = v4;
      v16 = static CacheManagerSearch.Started.== infix(_:_:)(&v26, &v18);
      return v16 & 1;
    }

LABEL_9:
    v16 = 0;
    return v16 & 1;
  }

  v6 = a1[1];
  v7 = a2[1];
  if (v3 >> 6 != 1)
  {
    if ((v5 & 0xC0) == 0x80)
    {
      v26 = *a1;
      v27 = v6;
      v28 = BYTE2(v6) & 1;
      OUTLINED_FUNCTION_19_21();
      v16 = static CacheManagerSearch.Failed.== infix(_:_:)(&v26, &v18);
      return v16 & 1;
    }

    goto LABEL_9;
  }

  v8 = a1[3];
  v9 = a1[5];
  v10 = a2[2];
  v11 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  v14 = *(a1 + 8);
  v15 = *(a1 + 4);
  v42 = BYTE1(v6) & 1;
  v41 = v15 & 1;
  v40 = v14 & 1;
  v39 = v3 & 1;
  if ((v5 & 0xC0) != 0x40)
  {
    goto LABEL_9;
  }

  v38 = BYTE1(v7) & 1;
  v37 = v10 & 1;
  v36 = v13 & 1;
  v35 = v5 & 1;
  v26 = v2;
  LOBYTE(v27) = v6;
  HIBYTE(v27) = v42;
  v29 = HIDWORD(v6);
  v30 = v41;
  v31 = v8;
  v32 = v40;
  v33 = v9;
  v34 = v39;
  v18 = v4;
  v19 = v7 & 0x1FF;
  v20 = HIDWORD(v7);
  v21 = v10 & 1;
  v22 = v11;
  v23 = v13 & 1;
  v24 = v12;
  v25 = v5 & 1;
  v16 = static CacheManagerSearch.Ended.== infix(_:_:)(&v26, &v18);
  return v16 & 1;
}

uint64_t sub_193505174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t CacheManagerTarget.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for CacheManagerRequestInvocation(0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for CacheManagerTarget(0);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  sub_193504ED4(v1, v14 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *v15;
      v22 = *(v15 + 10);
      v21 = *(v15 + 8);
      sub_1935053C4();
    }

    else
    {
      v20 = *v15;
      v23 = *(v15 + 16);
      v24 = *(v15 + 32);
      v25 = *(v15 + 48);
      sub_193505370();
    }

    return sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_7_24();
    sub_193505174(v15, v8, v17);
    sub_193505418(&qword_1EAE3BE88, type metadata accessor for CacheManagerRequestInvocation);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    return sub_193503150(v8, v1);
  }
}

unint64_t sub_193505370()
{
  result = qword_1EAE3BE78;
  if (!qword_1EAE3BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BE78);
  }

  return result;
}

unint64_t sub_1935053C4()
{
  result = qword_1EAE3BE80;
  if (!qword_1EAE3BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BE80);
  }

  return result;
}

uint64_t sub_193505418(unint64_t *a1, void (*a2)(uint64_t))
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

void CacheManagerRequestInvocation.CacheManagerNamespace.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

char *static CacheManagerRequestInvocation.CacheManagerNamespace.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3BEE8, &qword_19395A2F8);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    v15 = sub_1934B0FCC(v13, v2 + 1, 1, v14, &qword_1EAE3BEE8, &qword_19395A2F8);
    OUTLINED_FUNCTION_17_2(v15);
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v16 = OUTLINED_FUNCTION_39(v1);
    v18 = sub_1934B0FCC(v16, v2 + 2, 1, v17, &qword_1EAE3BEE8, &qword_19395A2F8);
    OUTLINED_FUNCTION_17_2(v18);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v19 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v19, v2 + 3, 1, v20, &qword_1EAE3BEE8, &qword_19395A2F8);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v21 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1934B0FCC(v21, v2 + 4, 1, v22, &qword_1EAE3BEE8, &qword_19395A2F8);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

uint64_t CacheManagerRequestInvocation.CacheManagerNamespace.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x72656E6E616C50;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726574756F524C4ELL;
  }
}

void CacheManagerRequestInvocation.CacheManagerNamespace.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x726574756F524C4ELL ? (v4 = v0 == 0xE800000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v6 = v1 == 0x72656E6E616C50 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else if (v1 == 0xD000000000000012 && 0x8000000193A19520 == v0)
    {

      v5 = 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_0_9();

      v5 = 2;
      if ((v8 & 1) == 0)
      {
        v5 = 0;
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v5);
}

uint64_t CacheManagerInsert.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 10);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      v5 = *v0;
      sub_193505DD4();
    }

    else
    {
      v6 = *v0;
      v7 = *(v0 + 4);
      sub_193505D80();
    }
  }

  else
  {
    v4 = *v0;
    sub_193505E28();
  }

  return sub_19393C540();
}

uint64_t CacheManagerSearch.hash(into:)()
{
  v1 = *(v0 + 48);
  if (v1 >> 6)
  {
    v2 = v0[1];
    if (v1 >> 6 == 1)
    {
      v4 = *v0;
      v6 = v0[2] & 1;
      v7 = v0[3];
      v8 = v0[4] & 1;
      v9 = v0[5];
      sub_193505ED0();
    }

    else
    {
      OUTLINED_FUNCTION_19_21();
      sub_193505E7C();
    }
  }

  else
  {
    v5 = *v0;
    sub_193505F24();
  }

  return sub_19393C540();
}

uint64_t CacheManagerSearch.CacheManagerSearchStrategy.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x74614D7463617845;
  }

  *v0;
  return result;
}

void CacheManagerSearch.CacheManagerSearchStrategy.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x74614D7463617845 ? (v4 = v0 == 0xEA00000000006863) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0xD000000000000010 && 0x8000000193A19540 == v0)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_19_5(v5);
}

void CacheManagerError.ErrorType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t CacheManagerError.ErrorType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *sub_193505B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_51(0, 1, a3, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    v14 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 1, v3, v4);
    OUTLINED_FUNCTION_17_2(v14);
  }

  *(v4 + 2) = v8;
  v9 = &v4[16 * v6];
  *(v9 + 4) = 0;
  v9[40] = 0;
  v10 = v6 + 2;
  if (v7 < (v6 + 2))
  {
    v15 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 2, v3, v4);
    OUTLINED_FUNCTION_17_2(v15);
  }

  *(v4 + 2) = v10;
  v11 = &v4[16 * v8];
  *(v11 + 4) = 0;
  v11[40] = 1;
  if (v7 < (v6 + 3))
  {
    v4 = OUTLINED_FUNCTION_51((v5 > 1), v6 + 3, v3, v4);
  }

  *(v4 + 2) = v6 + 3;
  v12 = &v4[16 * v10];
  *(v12 + 4) = 1;
  v12[40] = 1;
  return v4;
}

uint64_t CacheManagerError.ErrorType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x6C616E7265746E49;
  }

  else
  {
    result = 0x4964696C61766E49;
  }

  *v0;
  return result;
}

void CacheManagerError.ErrorType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x4964696C61766E49 ? (v4 = v0 == 0xE900000000000064) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0x6C616E7265746E49 && v0 == 0xEF6572756C696146)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_19_5(v5);
}

unint64_t sub_193505D80()
{
  result = qword_1EAE3BE90;
  if (!qword_1EAE3BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BE90);
  }

  return result;
}

unint64_t sub_193505DD4()
{
  result = qword_1EAE3BE98;
  if (!qword_1EAE3BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BE98);
  }

  return result;
}

unint64_t sub_193505E28()
{
  result = qword_1EAE3BEA0;
  if (!qword_1EAE3BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BEA0);
  }

  return result;
}

unint64_t sub_193505E7C()
{
  result = qword_1EAE3BEA8;
  if (!qword_1EAE3BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BEA8);
  }

  return result;
}

unint64_t sub_193505ED0()
{
  result = qword_1EAE3BEB0;
  if (!qword_1EAE3BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BEB0);
  }

  return result;
}

unint64_t sub_193505F24()
{
  result = qword_1EAE3BEB8;
  if (!qword_1EAE3BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BEB8);
  }

  return result;
}

unint64_t sub_193505F7C()
{
  result = qword_1EAE3BEC0;
  if (!qword_1EAE3BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BEC0);
  }

  return result;
}

unint64_t sub_193505FD4()
{
  result = qword_1EAE3BEC8;
  if (!qword_1EAE3BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BEC8);
  }

  return result;
}

unint64_t sub_19350602C()
{
  result = qword_1EAE3BED0;
  if (!qword_1EAE3BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BED0);
  }

  return result;
}

void sub_193506088()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEA9200);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("eventMetadata");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "monotonicTimestamp");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "target");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935061DC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v5 = *(type metadata accessor for LLMCacheManagerTelemetry(0) + 36);
        type metadata accessor for CacheManagerTarget(0);
        OUTLINED_FUNCTION_36_3();
LABEL_10:
        sub_193498018();
        break;
      case 2:
        v4 = *(type metadata accessor for LLMCacheManagerTelemetry(0) + 32);
        type metadata accessor for MonotonicTimestamp();
        OUTLINED_FUNCTION_36_3();
        goto LABEL_10;
      case 1:
        v3 = *(type metadata accessor for LLMCacheManagerTelemetry(0) + 28);
        type metadata accessor for CacheManagerTelemetryEventMetadata(0);
        OUTLINED_FUNCTION_36_3();
        goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1935062BC()
{
  OUTLINED_FUNCTION_46_5();
  sub_193506310();
  if (!v0)
  {
    OUTLINED_FUNCTION_46_5();
    sub_193506430();
    OUTLINED_FUNCTION_46_5();
    sub_193506550();
  }
}

void sub_193506310()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_35_10();
  v9 = type metadata accessor for CacheManagerTelemetryEventMetadata(v8);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v13 = OUTLINED_FUNCTION_14_5();
  v14 = type metadata accessor for LLMCacheManagerTelemetry(v13);
  OUTLINED_FUNCTION_39_1(*(v14 + 28));
  OUTLINED_FUNCTION_20_10();
  if (v15)
  {
    sub_19344E6DC(v0, &qword_1EAE3BE30, &qword_19395A0A8);
  }

  else
  {
    OUTLINED_FUNCTION_66_8();
    OUTLINED_FUNCTION_17();
    sub_193508F34(v1, type metadata accessor for CacheManagerTelemetryEventMetadata);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193506430()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_35_10();
  v8 = type metadata accessor for MonotonicTimestamp();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = OUTLINED_FUNCTION_14_5();
  v13 = type metadata accessor for LLMCacheManagerTelemetry(v12);
  OUTLINED_FUNCTION_39_1(*(v13 + 32));
  OUTLINED_FUNCTION_20_10();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    OUTLINED_FUNCTION_66_8();
    OUTLINED_FUNCTION_17();
    sub_193508F34(v1, type metadata accessor for MonotonicTimestamp);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193506550()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_35_10();
  v9 = type metadata accessor for CacheManagerTarget(v8);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v13 = OUTLINED_FUNCTION_14_5();
  v14 = type metadata accessor for LLMCacheManagerTelemetry(v13);
  OUTLINED_FUNCTION_39_1(*(v14 + 36));
  OUTLINED_FUNCTION_20_10();
  if (v15)
  {
    sub_19344E6DC(v0, &qword_1EAE3BE38, &qword_19395A0B0);
  }

  else
  {
    OUTLINED_FUNCTION_66_8();
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_4_23();
    sub_193508F34(v1, v16);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935066C4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9218);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_30_3();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("rowId");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "cacheManagerId");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193506804()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v4 = v1 + *(type metadata accessor for CacheManagerTelemetryEventMetadata(0) + 20);
LABEL_8:
      sub_193497890(v4);
    }

    else if (result == 1)
    {
      v4 = v1;
      goto LABEL_8;
    }
  }
}

void sub_193506888()
{
  OUTLINED_FUNCTION_46_5();
  sub_193507528();
  if (!v0)
  {
    OUTLINED_FUNCTION_46_5();
    sub_1935068D0();
  }
}

void sub_1935068D0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_5();
  v11 = sub_19393BE60();
  v12 = OUTLINED_FUNCTION_76(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_71_6();
  v15 = type metadata accessor for CacheManagerTelemetryEventMetadata(0);
  sub_1934486F8(v2 + *(v15 + 20), v1, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_78_0();
    v17(v16);
    OUTLINED_FUNCTION_116_0();
    v18 = OUTLINED_FUNCTION_86_0();
    v19(v18);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193506A84()
{
  CacheManagerRequestInvocation.init()();
  type metadata accessor for CacheManagerTarget(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_193506ACC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9230);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("invocation");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  (v9)(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  *v11 = "insertContext";
  *(v11 + 8) = 13;
  *(v11 + 16) = v0;
  v9();
  v12 = OUTLINED_FUNCTION_13_12();
  *v12 = "searchContext";
  *(v12 + 1) = 13;
  v12[16] = v0;
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193506C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  v16 = type metadata accessor for CacheManagerRequestInvocation(0);
  v17 = OUTLINED_FUNCTION_4_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_71_6();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BFC0, &qword_19395A320);
  v21 = OUTLINED_FUNCTION_47(v20);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v45[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v45[-v27];
  v46 = xmmword_19395A300;
  while (1)
  {
    v29 = OUTLINED_FUNCTION_124();
    if (v13 || (v30 & 1) != 0)
    {
      break;
    }

    switch(v29)
    {
      case 3:
        v47 = v46;
        v48 = 0x3FFFEuLL;
        v49 = 0uLL;
        LOBYTE(v50) = 0;
        sub_193498018();
        OUTLINED_FUNCTION_4_23();
        sub_193508F34(v14, v35);
        v36 = *(&v47 + 1);
        v37 = v47;
        v38 = v48;
        v39 = v49;
        v40 = v50;
        if ((~DWORD2(v47) & 0xFFFE0000) == 0)
        {
          v41 = (v48 & 0xFFFFFFFFFFFFFFFELL) != 0x3FFFE || v49 > 1;
          if (!v41 && v50 <= 1u)
          {
            CacheManagerSearch.Started.init()();
            v36 = 0;
            v40 = 0;
            v37 = a13;
            v38 = 0uLL;
            v39 = 0uLL;
          }
        }

        *v14 = v37;
        *(v14 + 8) = v36;
        *(v14 + 16) = v38;
        *(v14 + 32) = v39;
        *(v14 + 48) = v40;
        type metadata accessor for CacheManagerTarget(0);
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        *&v47 = 0;
        BYTE10(v47) = -2;
        WORD4(v47) = 0;
        sub_193498018();
        OUTLINED_FUNCTION_4_23();
        sub_193508F34(v14, v32);
        v33 = WORD4(v47) | (BYTE10(v47) << 16);
        if (v33 < 0xFE0000)
        {
          v34 = v47;
        }

        else
        {
          CacheManagerInsert.Started.init()();
          v33 = 0;
          v34 = a13;
        }

        *v14 = v34;
        *(v14 + 8) = v33;
        *(v14 + 10) = BYTE2(v33);
        type metadata accessor for CacheManagerTarget(0);
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        __swift_storeEnumTagSinglePayload(v28, 1, 1, v16);
        sub_193498018();
        OUTLINED_FUNCTION_4_23();
        sub_193508F34(v14, v31);
        sub_1934486F8(v28, v26, &qword_1EAE3BFC0, &qword_19395A320);
        if (__swift_getEnumTagSinglePayload(v26, 1, v16) == 1)
        {
          CacheManagerRequestInvocation.init()();
          sub_19344E6DC(v28, &qword_1EAE3BFC0, &qword_19395A320);
          if (__swift_getEnumTagSinglePayload(v26, 1, v16) != 1)
          {
            sub_19344E6DC(v26, &qword_1EAE3BFC0, &qword_19395A320);
          }
        }

        else
        {
          sub_19344E6DC(v28, &qword_1EAE3BFC0, &qword_19395A320);
          OUTLINED_FUNCTION_15_25();
          sub_193508ED4(v26, v15, v43);
        }

        OUTLINED_FUNCTION_15_25();
        sub_193508ED4(v15, v14, v44);
        type metadata accessor for CacheManagerTarget(0);
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

IntelligencePlatformLibrary::CacheManagerInsert::Started sub_193507004@<W0>(uint64_t a1@<X8>)
{
  result.exists.value = CacheManagerInsert.Started.init()().exists.value;
  *a1 = v3;
  *(a1 + 10) = 0;
  *(a1 + 8) = 0;
  return result;
}

double sub_193507044@<D0>(uint64_t a1@<X8>)
{
  CacheManagerSearch.Started.init()();
  *a1 = v3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 33) = 0u;
  return result;
}

void sub_19350708C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_22_0();
  v3 = type metadata accessor for CacheManagerRequestInvocation(0);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = OUTLINED_FUNCTION_35_10();
  v8 = type metadata accessor for CacheManagerTarget(v7);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_71_6();
  sub_193504ED4(v0, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v2;
      v17 = *(v2 + 10);
      v16 = *(v2 + 8);
    }

    else
    {
      v15 = *v2;
      v18 = *(v2 + 16);
      v19 = *(v2 + 32);
      v20 = *(v2 + 48);
    }

    sub_193447600();
  }

  else
  {
    OUTLINED_FUNCTION_15_25();
    sub_193508ED4(v2, v1, v13);
    sub_193447600();
    sub_193508F34(v1, type metadata accessor for CacheManagerRequestInvocation);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193507290()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9248);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_30_3();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("clientTraceId");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "namespace");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935073D0()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      v4 = *(type metadata accessor for CacheManagerRequestInvocation(0) + 20);
      OUTLINED_FUNCTION_28_7();
      sub_1934982A8();
    }

    else if (v2 == 1)
    {
      sub_193497890(v1);
    }
  }
}

void sub_193507474()
{
  OUTLINED_FUNCTION_22_0();
  sub_193507528();
  if (!v1)
  {
    v4 = (v0 + *(type metadata accessor for CacheManagerRequestInvocation(0) + 20));
    if ((*(v4 + 9) & 1) == 0)
    {
      v5 = *(v4 + 8);
      v6 = *v4;
      v7 = v5 & 1;
      sub_193447324(&v6, 2, v3, &type metadata for CacheManagerRequestInvocation.CacheManagerNamespace, v2, &off_1F07C47B8);
    }
  }
}

void sub_193507528()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_5();
  v11 = sub_19393BE60();
  v12 = OUTLINED_FUNCTION_76(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_71_6();
  sub_1934486F8(v2, v1, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_78_0();
    v16(v15);
    OUTLINED_FUNCTION_116_0();
    v17 = OUTLINED_FUNCTION_86_0();
    v18(v17);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935076D0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9260);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_30_3();
  v6 = v5 & ~v4;
  v7 = OUTLINED_FUNCTION_156();
  *(v7 + 16) = xmmword_19394FBC0;
  v8 = v7 + v6 + dword_1EAEA9298;
  *(v7 + v6) = 0;
  *v8 = "Unknown";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  OUTLINED_FUNCTION_3_1(v7 + v6 + v3);
  OUTLINED_FUNCTION_69_6(v13);
  *v14 = "NLRouter";
  *(v14 + 8) = 8;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v15 = OUTLINED_FUNCTION_3_1(v7 + v6 + 2 * v3);
  *v16 = 2;
  *v15 = "Planner";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v17 = OUTLINED_FUNCTION_3_1(v7 + v6 + 3 * v3);
  *v18 = 3;
  *v17 = "ResponseGeneration";
  *(v17 + 8) = 18;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935078D0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9278);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("started");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "ended");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "failed");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193507A24()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 3:
        v13 = 0;
        v14 = 0x1000000;
        sub_193498018();
        if ((v14 & 0x1000000) != 0)
        {
          v6 = &v10;
          CacheManagerInsert.Failed.init()(&v10);
          v7 = v11;
          v8 = v12;
        }

        else
        {
          v7 = v14;
          v8 = BYTE2(v14) & 1;
          v6 = &v13;
        }

        if (v8)
        {
          v9 = 0x10000;
        }

        else
        {
          v9 = 0;
        }

        *v1 = *v6;
        *(v1 + 8) = v7;
        *(v1 + 10) = (v9 | 0x800000u) >> 16;
        break;
      case 2:
        LOBYTE(v13) = 3;
        sub_193498018();
        v5 = v13;
        if (v13 == 3)
        {
          CacheManagerInsert.Ended.init()();
          v5 = v10;
        }

        *v1 = v5;
        *(v1 + 10) = 64;
        *(v1 + 8) = 0;
        break;
      case 1:
        LOBYTE(v13) = 3;
        OUTLINED_FUNCTION_28_7();
        sub_193498018();
        v4 = v13;
        if (v13 == 3)
        {
          CacheManagerInsert.Started.init()();
          v4 = v10;
        }

        *v1 = v4;
        *(v1 + 10) = 0;
        *(v1 + 8) = 0;
        break;
    }
  }
}

void sub_193507BE4()
{
  OUTLINED_FUNCTION_279();
  v1 = *(v0 + 10);
  if (v1 >> 6 && v1 >> 6 != 1)
  {
    v2 = *(v0 + 8);
  }

  sub_193447600();
}

uint64_t sub_193507D58()
{
  if (*v0 != 2)
  {
    return sub_19393C2E0();
  }

  return result;
}

void sub_193507E78()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA92D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("started");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "ended");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "failed");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193507FCC()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 3:
        *&v17 = 0;
        DWORD2(v17) = 0x1000000;
        sub_193498018();
        if (BYTE11(v17))
        {
          v5 = v14;
          CacheManagerSearch.Failed.init()(v14);
          v6 = *&v14[8];
          v7 = v14[10];
        }

        else
        {
          v6 = WORD4(v17);
          v7 = BYTE10(v17) & 1;
          v5 = &v17;
        }

        v12 = v7 == 0;
        v13 = 0x10000;
        if (v12)
        {
          v13 = 0;
        }

        *v1 = *v5;
        *(v1 + 8) = v13 | v6;
        *(v1 + 16) = 0u;
        *(v1 + 32) = 0u;
        *(v1 + 48) = 0x80;
        break;
      case 2:
        v21 = 1;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 256;
        sub_193498018();
        if ((v20 & 0x100) != 0)
        {
          CacheManagerSearch.Ended.init()(v14);
        }

        else
        {
          *v14 = v17;
          *&v14[16] = v18;
          v15 = v19;
          v16 = v20;
        }

        v8 = *&v14[24];
        v9 = *(&v15 + 1);
        v10 = v15 & 1;
        v11 = v16 & 1 | 0x40;
        *v1 = *v14;
        *(v1 + 8) = vandq_s8(*&v14[8], xmmword_19395A310);
        *(v1 + 24) = v8;
        *(v1 + 32) = v10;
        *(v1 + 40) = v9;
        *(v1 + 48) = v11;
        break;
      case 1:
        LOBYTE(v17) = 3;
        OUTLINED_FUNCTION_28_7();
        sub_193498018();
        v4 = v17;
        if (v17 == 3)
        {
          CacheManagerSearch.Started.init()();
          v4 = v14[0];
        }

        *v1 = v4;
        *(v1 + 8) = 0u;
        *(v1 + 24) = 0u;
        *(v1 + 33) = 0u;
        break;
    }
  }
}

void sub_1935081F8()
{
  OUTLINED_FUNCTION_279();
  v1 = *(v0 + 48);
  if (v1 >> 6)
  {
    v2 = *(v0 + 8);
    if (v1 >> 6 == 1)
    {
      v3 = *(v0 + 16) & 1;
      v4 = *(v0 + 24);
      v5 = *(v0 + 32) & 1;
      v6 = *(v0 + 40);
    }
  }

  sub_193447600();
}

void sub_193508368()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA92F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("Unknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  v10(v11);
  OUTLINED_FUNCTION_3_1(v0 + v5);
  OUTLINED_FUNCTION_69_6(v12);
  v14 = OUTLINED_FUNCTION_48(v13, "ExactMatch");
  v10(v14);
  v15 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v16 = v1;
  v17 = OUTLINED_FUNCTION_48(v15, "ApproximateMatch");
  v10(v17);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193508510()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_19393C0F0();
    }
  }

  return result;
}

void sub_193508598()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9320);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_30_3();
  v6 = v5 & ~v4;
  v7 = OUTLINED_FUNCTION_156();
  *(v7 + 16) = xmmword_19394FBC0;
  v8 = v7 + v6 + dword_1EAEA9358;
  *(v7 + v6) = 1;
  *v8 = "searchStrategy";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_29_1();
  *v13 = "resultCount";
  *(v13 + 8) = 11;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v14 = OUTLINED_FUNCTION_13_12();
  *v14 = "highestMatchScore";
  *(v14 + 1) = 17;
  v14[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v15 = OUTLINED_FUNCTION_3_1(v7 + v6 + 3 * v3);
  *v16 = 4;
  *v15 = "lowestMatchScore";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193508760()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_27_5();
        sub_1934982A8();
        break;
      case 2:
        sub_19393C170();
        break;
      case 3:
      case 4:
        sub_19393C1E0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_193508820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 3);
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = *(v3 + 32);
  v9 = v3[5];
  v10 = *(v3 + 48);
  if ((*(v3 + 9) & 1) == 0)
  {
    v12 = *v3;
    v13 = *(v3 + 8);
    result = sub_193447324(&v12, 1, a2, &type metadata for CacheManagerSearch.CacheManagerSearchStrategy, a3, &off_1F07C48D0);
  }

  if (!v4)
  {
    if ((v6 & 1) == 0)
    {
      result = sub_19393C350();
    }

    if ((v8 & 1) == 0)
    {
      result = sub_19393C3B0();
    }

    if ((v10 & 1) == 0)
    {
      return sub_19393C3B0();
    }
  }

  return result;
}

void sub_1935089A4()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_27_5();
      sub_193498018();
    }
  }
}

void sub_193508A08()
{
  if ((*(v0 + 10) & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    v1 = *(v0 + 8) & 0x1FF;
    sub_193447600();
  }
}

uint64_t sub_193508AB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_19393C420();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_19394FAC0;
  v12 = v11 + v10 + v8[14];
  OUTLINED_FUNCTION_69_6((v11 + v10));
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v14 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v14);
  (*(v15 + 104))(v12, v13);
  return sub_19393C410();
}

void sub_193508C18()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_27_5();
      sub_1934982A8();
    }
  }
}

uint64_t sub_193508C7C()
{
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    v1 = *(v0 + 8);
    v6 = v2;
    v7 = v1 & 1;
    return sub_193447324(&v6, 1, v3, &type metadata for CacheManagerError.ErrorType, v4, &off_1F07C49B8);
  }

  return result;
}

void sub_193508D40()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9368);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("Unknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  v10(v11);
  OUTLINED_FUNCTION_3_1(v0 + v5);
  OUTLINED_FUNCTION_69_6(v12);
  v14 = OUTLINED_FUNCTION_48(v13, "InvalidId");
  v10(v14);
  v15 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v16 = v1;
  v17 = OUTLINED_FUNCTION_48(v15, "InternalFailure");
  v10(v17);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193508ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_193508F34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_66_8()
{

  return sub_193508ED4(v1, v2, v0);
}

uint64_t sub_193509014()
{
  OUTLINED_FUNCTION_8_4();
  sub_19393BE00();
  v0 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t LLMCacheManagerTelemetry.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for LLMCacheManagerTelemetry(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t LLMCacheManagerTelemetry.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t LLMCacheManagerTelemetry.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t LLMCacheManagerTelemetry.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for LLMCacheManagerTelemetry(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935091B8()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for CacheManagerTelemetryEventMetadata(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t LLMCacheManagerTelemetry.eventMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3BE30, &qword_19395A0A8, *(v1 + 28));
}

uint64_t LLMCacheManagerTelemetry.eventMetadata.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3BE30, &qword_19395A0A8, *(v1 + 28));
}

uint64_t LLMCacheManagerTelemetry.eventMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for LLMCacheManagerTelemetry(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935092CC()
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for MonotonicTimestamp();
  v0 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t LLMCacheManagerTelemetry.monotonicTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3B498, &unk_193959120, *(v1 + 32));
}

uint64_t LLMCacheManagerTelemetry.monotonicTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3B498, &unk_193959120, *(v1 + 32));
}

uint64_t LLMCacheManagerTelemetry.monotonicTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for LLMCacheManagerTelemetry(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935093C0()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for CacheManagerTarget(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t LLMCacheManagerTelemetry.target.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3BE38, &qword_19395A0B0, *(v1 + 36));
}

uint64_t LLMCacheManagerTelemetry.target.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for LLMCacheManagerTelemetry(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3BE38, &qword_19395A0B0, *(v1 + 36));
}

uint64_t LLMCacheManagerTelemetry.target.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for LLMCacheManagerTelemetry(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t CacheManagerTelemetryEventMetadata.cacheManagerId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for CacheManagerTelemetryEventMetadata(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}