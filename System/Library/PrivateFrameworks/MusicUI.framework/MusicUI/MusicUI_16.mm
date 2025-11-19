uint64_t sub_216825778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  v6[15] = swift_task_alloc();
  sub_21700EA34();
  v6[16] = sub_21700EA24();
  v8 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_21682584C, v8, v7);
}

uint64_t sub_21682584C()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
  MEMORY[0x21CE9BEE0]();
  if ((*(v0 + 57) & 1) == 0)
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    type metadata accessor for MusicPageMetricsProvider();
    type metadata accessor for ObjectGraph();
    sub_21700E094();
    v7 = *(v0 + 88);
    v8 = *(type metadata accessor for MappedReplayPage(0) + 24);
    v9 = sub_21700D194();
    OUTLINED_FUNCTION_34();
    (*(v10 + 16))(v5, v6 + v8, v9);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
    v11 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
    swift_beginAccess();
    sub_216826A18(v5, v7 + v11);
    swift_endAccess();

    *(v0 + 64) = v2;
    *(v0 + 72) = v3;
    *(v0 + 80) = v4;
    *(v0 + 58) = 1;
    sub_21700B0D4();

    sub_217007D74();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_216825A28()
{
  v2 = type metadata accessor for ReplayPageContentView();
  OUTLINED_FUNCTION_36(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2166DFAC0;

  return sub_216823670(v5, v6, v0 + v4);
}

unint64_t sub_216825B00()
{
  result = qword_27CAB9208;
  if (!qword_27CAB9208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91E8);
    sub_216825BB8();
    sub_2166D9530(&qword_27CAB92D0, &qword_27CAB92D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9208);
  }

  return result;
}

unint64_t sub_216825BB8()
{
  result = qword_27CAB9210;
  if (!qword_27CAB9210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91E0);
    sub_216825C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9210);
  }

  return result;
}

unint64_t sub_216825C44()
{
  result = qword_27CAB9218;
  if (!qword_27CAB9218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91D8);
    sub_216825CFC();
    sub_2166D9530(&qword_27CAB92C0, &qword_27CAB92C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9218);
  }

  return result;
}

unint64_t sub_216825CFC()
{
  result = qword_27CAB9220;
  if (!qword_27CAB9220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91D0);
    sub_216825DB4();
    sub_2166D9530(&qword_280E2A7F8, &qword_27CAB92B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9220);
  }

  return result;
}

unint64_t sub_216825DB4()
{
  result = qword_27CAB9228;
  if (!qword_27CAB9228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91C8);
    sub_216825E6C();
    sub_2166D9530(&qword_280E2A788, &qword_27CAB92B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9228);
  }

  return result;
}

unint64_t sub_216825E6C()
{
  result = qword_27CAB9230;
  if (!qword_27CAB9230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91C0);
    sub_216825F24();
    sub_2166D9530(&qword_280E2A770, &qword_27CAB92A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9230);
  }

  return result;
}

unint64_t sub_216825F24()
{
  result = qword_27CAB9238;
  if (!qword_27CAB9238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91B8);
    sub_216825FDC();
    sub_2166D9530(&qword_280E2A7B8, &qword_27CAB92A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9238);
  }

  return result;
}

unint64_t sub_216825FDC()
{
  result = qword_27CAB9240;
  if (!qword_27CAB9240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91B0);
    sub_216826094();
    sub_2166D9530(&qword_280E2A778, &qword_27CAB9298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9240);
  }

  return result;
}

unint64_t sub_216826094()
{
  result = qword_27CAB9248;
  if (!qword_27CAB9248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91A8);
    sub_21682614C();
    sub_2166D9530(&qword_280E2A768, &qword_27CAB9290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9248);
  }

  return result;
}

unint64_t sub_21682614C()
{
  result = qword_27CAB9250;
  if (!qword_27CAB9250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9258);
    sub_216826204();
    sub_2166D9530(&qword_280E2A768, &qword_27CAB9290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9250);
  }

  return result;
}

unint64_t sub_216826204()
{
  result = qword_27CAB9260;
  if (!qword_27CAB9260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB91A0);
    sub_2168262BC();
    sub_2166D9530(&qword_27CAB9280, &qword_27CAB9288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9260);
  }

  return result;
}

unint64_t sub_2168262BC()
{
  result = qword_27CAB9268;
  if (!qword_27CAB9268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9188);
    sub_2166D9530(&qword_27CAB9270, &qword_27CAB9188);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A738, &qword_27CAB9278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9268);
  }

  return result;
}

unint64_t sub_2168263E4()
{
  result = qword_27CAB92E0;
  if (!qword_27CAB92E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9140);
    sub_2166D9530(qword_280E48638, &qword_27CAB9140);
    swift_getOpaqueTypeConformance2();
    sub_216825B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB92E0);
  }

  return result;
}

uint64_t sub_2168264E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216826548()
{
  result = qword_27CAB92F0;
  if (!qword_27CAB92F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9300);
    sub_2166D9530(&qword_27CAB9308, &qword_27CAB9300);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB92F0);
  }

  return result;
}

uint64_t sub_216826680()
{
  v1 = type metadata accessor for ReplayPageContentView();
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = (*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for MappedReplayPage(0);
  OUTLINED_FUNCTION_36(v6);
  v8 = *(v0 + v5);
  v9 = v0 + ((v5 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return sub_216824694(v0 + v3, v8, v9);
}

uint64_t sub_216826750(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for ReplayPageContentView();
  OUTLINED_FUNCTION_2(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for MappedReplayPage(0);
  OUTLINED_FUNCTION_36(v10);
  v12 = (v9 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v9);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_216826D94;

  return sub_216825778(a1, v13, v14, v1 + v7, v15, v1 + v12);
}

uint64_t sub_2168268B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216826960(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_216826A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216826A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MappedReplayPage(0);
  OUTLINED_FUNCTION_2(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = *(v3 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_216823D30(a1, a2, v3 + v12, v13, a3);
}

uint64_t sub_216826B40(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216826B9C()
{
  result = qword_27CAB9340;
  if (!qword_27CAB9340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB62D8);
    sub_216826C54();
    sub_2166D9530(&qword_27CAB9358, &qword_27CAB9360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9340);
  }

  return result;
}

unint64_t sub_216826C54()
{
  result = qword_27CAB9348;
  if (!qword_27CAB9348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9350);
    sub_2168263E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9158);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9150);
    sub_2166D9530(&qword_280E48630, &qword_27CAB9150);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9348);
  }

  return result;
}

BOOL sub_216826E78(uint64_t a1, int a2)
{
  v37 = a2;
  v36 = a1;
  OUTLINED_FUNCTION_5_6();
  v3 = OUTLINED_FUNCTION_6_26();
  sub_21700F164();
  OUTLINED_FUNCTION_1();
  v34 = v5;
  v35 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v33 = &v30 - v7;
  v8 = OUTLINED_FUNCTION_6_26();
  sub_21700F164();
  OUTLINED_FUNCTION_1();
  v31 = v10;
  v32 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for MusicAppDestination(0);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_110();
  v18 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v23 = &v30 - v22;
  OUTLINED_FUNCTION_0_44();
  sub_216828330(v36, v17);
  if (v37)
  {
    if (v37 == 1)
    {
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_9_25();
      v24 = v33;
      v25(v17, v3);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v3);
      (*(v34 + 8))(v24, v35);
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_9_25();
      v28(v17, v2);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v2);
      (*(v20 + 8))(v23, v18);
    }
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_9_25();
    v27(v17, v8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v8);
    (*(v31 + 8))(v13, v32);
  }

  return EnumTagSinglePayload != 1;
}

uint64_t sub_2168271E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v89 = a2;
  v90 = a1;
  OUTLINED_FUNCTION_5_6();
  v5 = *(v4 + 128);
  v82 = v3;
  v7 = *(v6 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = v7;
  v81 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v79 = type metadata accessor for WrappedAppPageDestination();
  OUTLINED_FUNCTION_1();
  v78 = v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v77 = &v74 - v12;
  v85 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v84 = type metadata accessor for MusicAppDestinationContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v76 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - v20;
  v22 = type metadata accessor for MusicAppDestination(0);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_7();
  v25 = v24 - v23;
  v26 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  OUTLINED_FUNCTION_29();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v74 - v31;
  v88 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_0();
  v87 = v33;
  v35 = MEMORY[0x28223BE20](v34);
  v75 = &v74 - v36;
  MEMORY[0x28223BE20](v35);
  v95 = &v74 - v37;
  OUTLINED_FUNCTION_0_44();
  sub_216828330(v90, v25);
  v38 = *(AssociatedConformanceWitness + 16);
  v83 = AssociatedConformanceWitness;
  v38(v25, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (__swift_getEnumTagSinglePayload(v32, 1, AssociatedTypeWitness) == 1)
  {
    (*(v28 + 8))(v32, v26);
    sub_216828280();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v40 = v88;
    (*(v88 + 32))(v95, v32, AssociatedTypeWitness);
    sub_216828330(v89, v16);
    v41 = v85;
    sub_2168282D4(v16 + *(v85 + 40), v21, &qword_27CABF7B0);
    sub_2168282D4(v16 + *(v41 + 32), &v21[*(v84 + 20)], &qword_27CABA820);
    sub_216828388(v16, type metadata accessor for FlowAction);
    v42 = (*(v83 + 24))(AssociatedTypeWitness, v83);
    v74 = v21;
    if (v42)
    {
      if (qword_27CAB5930 != -1)
      {
        swift_once();
      }

      v43 = sub_217007CA4();
      __swift_project_value_buffer(v43, qword_27CAB9390);
      v44 = *(v40 + 16);
      v45 = v75;
      v46 = v95;
      v44(v75, v95, AssociatedTypeWitness);
      v47 = sub_217007C84();
      v48 = sub_21700EDA4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        LODWORD(v90) = v48;
        v50 = v49;
        v89 = swift_slowAlloc();
        *&v91 = v89;
        *v50 = 136446210;
        v44(v87, v45, AssociatedTypeWitness);
        v51 = sub_21700E594();
        v53 = v52;
        v54 = *(v40 + 8);
        v55 = OUTLINED_FUNCTION_12_18();
        v54(v55);
        v56 = sub_2166A85FC(v51, v53, &v91);

        *(v50 + 4) = v56;
        v57 = v54;
        _os_log_impl(&dword_216679000, v47, v90, "Delegating flow action navigation to app: %{public}s", v50, 0xCu);
        v58 = v89;
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        v46 = v95;
        MEMORY[0x21CEA1440](v58, -1, -1);
        MEMORY[0x21CEA1440](v50, -1, -1);
      }

      else
      {

        v57 = *(v40 + 8);
        v71 = OUTLINED_FUNCTION_12_18();
        v57(v71);
      }

      v72 = v74;
      (*(v81 + 128))(v46, v86, v74, v80);
      OUTLINED_FUNCTION_3_36();
      sub_216828388(v72, v73);
      return (v57)(v46, AssociatedTypeWitness);
    }

    else
    {
      v59 = v21;
      v85 = sub_216ED9748();
      v61 = v60;
      v62 = sub_216ED9884();
      v64 = v63;
      (*(v40 + 16))(v87, v95, AssociatedTypeWitness);
      *&v91 = v85;
      *(&v91 + 1) = v61;
      v92 = v62;
      v93 = v64;
      v65 = v59;
      v66 = v76;
      sub_216828330(v65, v76);
      OUTLINED_FUNCTION_0_44();
      sub_216828330(v90, v25);
      sub_21700DF14();
      v67 = v62;
      sub_21677A3F0(v62, v64);
      sub_216EB0ED4(v94);
      v68 = v77;
      sub_216827A04(v87, &v91, v66, v25, v94, AssociatedTypeWitness, v77);
      v69 = v79;
      swift_getWitnessTable();
      MusicStackAuthority.push<A>(_:)();

      sub_21677A510(v67, v64);
      (*(v78 + 8))(v68, v69);
      OUTLINED_FUNCTION_3_36();
      sub_216828388(v74, v70);
      return (*(v88 + 8))(v95, AssociatedTypeWitness);
    }
  }
}

__n128 sub_216827A04@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v12 = type metadata accessor for WrappedAppPageDestination();
  v13 = (a7 + v12[9]);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  sub_2168283E0(a3, a7 + v12[10]);
  sub_2168283E0(a4, a7 + v12[11]);
  v15 = a7 + v12[12];
  result = *a5;
  v17 = *(a5 + 16);
  *v15 = *a5;
  *(v15 + 16) = v17;
  *(v15 + 32) = *(a5 + 32);
  return result;
}

uint64_t sub_216827BD8()
{
  OUTLINED_FUNCTION_5_6();
  (*(*(*(v2 + 120) - 8) + 8))(v0 + *(v1 + 136));
  return v0;
}

uint64_t sub_216827C40()
{
  sub_216827BD8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216827CAC(uint64_t a1, uint64_t a2)
{
  if (sub_21700E494() & 1) != 0 && (v4 = type metadata accessor for WrappedAppPageDestination(), v5 = v4[9], v6 = *(a1 + v5 + 8), v7 = *(a1 + v5 + 16), v8 = *(a1 + v5 + 24), *&v33 = *(a1 + v5), *(&v33 + 1) = v6, *&v34 = v7, *(&v34 + 1) = v8, v9 = (a2 + v5), v10 = v9[1], v11 = v9[2], v12 = v9[3], *&v29 = *v9, *(&v29 + 1) = v10, *&v30 = v11, *(&v30 + 1) = v12, sub_21700DF14(), sub_21677A3F0(v7, v8), sub_21700DF14(), sub_21677A3F0(v11, v12), LOBYTE(v7) = static MusicPlayActivityFields.== infix(_:_:)(&v33, &v29), v13 = v30, , sub_21677A510(v13, *(&v13 + 1)), v14 = v34, , sub_21677A510(v14, *(&v14 + 1)), (v7) && (static MusicAppDestinationContext.== infix(_:_:)(), (v21) && (static MusicAppDestination.== infix(_:_:)(a1 + v4[11], a2 + v4[11], v15, v16, v17, v18, v19, v20, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, v32, v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36), (v22))
  {
    v23 = v4[12];
    v24 = *(a1 + v23 + 16);
    v29 = *(a1 + v23);
    v30 = v24;
    LOWORD(v31) = *(a1 + v23 + 32);
    v25 = (a2 + v23);
    v26 = v25[1];
    v33 = *v25;
    v34 = v26;
    LOWORD(v35) = *(v25 + 16);
    v27 = sub_216EB3330(&v29, &v33);
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_216827E1C(uint64_t a1, int *a2)
{
  v5 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v23 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v22 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  sub_21700E434();
  v13 = v2 + a2[9];
  v14 = *(v13 + 24);
  if (*(v13 + 8))
  {
    OUTLINED_FUNCTION_15_14();
    sub_21700E614();
  }

  else
  {
    OUTLINED_FUNCTION_14_14();
  }

  if (v14 >> 60 == 15)
  {
    OUTLINED_FUNCTION_14_14();
  }

  else
  {
    OUTLINED_FUNCTION_15_14();
    sub_217005FC4();
  }

  v15 = v2 + a2[10];
  sub_2168282D4(v15, &v26, &qword_27CABF7B0);
  if (*(&v27 + 1))
  {
    v24[0] = v26;
    v24[1] = v27;
    v25 = v28;
    OUTLINED_FUNCTION_15_14();
    sub_21700F354();
    sub_216788110(v24);
  }

  else
  {
    OUTLINED_FUNCTION_14_14();
  }

  v16 = type metadata accessor for MusicAppDestinationContext(0);
  sub_2168282D4(v15 + *(v16 + 20), v12, &qword_27CABA820);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
  {
    OUTLINED_FUNCTION_14_14();
  }

  else
  {
    v18 = v22;
    v17 = v23;
    (*(v23 + 32))(v22, v12, v5);
    OUTLINED_FUNCTION_15_14();
    sub_216829E2C();
    sub_21700E434();
    (*(v17 + 8))(v18, v5);
  }

  MusicAppDestination.hash(into:)();
  v19 = (v2 + a2[12]);
  v20 = v19[1];
  v26 = *v19;
  v27 = v20;
  LOWORD(v28) = *(v19 + 16);
  return sub_216EB340C(a1);
}

uint64_t sub_2168280B8(int *a1)
{
  sub_21700F8F4();
  sub_216827E1C(v3, a1);
  return sub_21700F944();
}

uint64_t sub_216828140(uint64_t a1, int *a2)
{
  sub_21700F8F4();
  sub_216827E1C(v4, a2);
  return sub_21700F944();
}

uint64_t sub_216828190()
{
  v0 = OUTLINED_FUNCTION_8();
  sub_21677A3F0(v0, v1);
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216828200()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAB9390);
  __swift_project_value_buffer(v0, qword_27CAB9390);
  return sub_217007C94();
}

unint64_t sub_216828280()
{
  result = qword_27CAB93A8;
  if (!qword_27CAB93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB93A8);
  }

  return result;
}

uint64_t sub_2168282D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216828330(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216828388(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2168283E0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for AppDestinationPageProviderBox.Error(_BYTE *result, int a2, int a3)
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

uint64_t sub_2168284E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v69 = *(a3 + 16);
  v92 = *(v69 - 8);
  v3 = *(v92 + 84);
  v67 = sub_217005EF4();
  v4 = *(v67 - 8);
  v91 = *(v4 + 84);
  v5 = v91 - 1;
  if (!v91)
  {
    v5 = 0;
  }

  v85 = v3;
  if (v5 <= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v68 = v6;
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v86 = v7;
  v84 = *(sub_21700C384() - 8);
  v8 = *(v84 + 64);
  v83 = *(sub_2170072A4() - 8);
  if (v8 <= *(v83 + 64))
  {
    v9 = *(v83 + 64);
  }

  else
  {
    v9 = v8;
  }

  v82 = *(sub_21700C1E4() - 8);
  v10 = *(v82 + 64);
  v11 = *(sub_21700C084() - 8);
  v81 = v11;
  v12 = *(v11 + 64);
  if (v10 <= v12)
  {
    v13 = *(v11 + 64);
  }

  else
  {
    v13 = v10;
  }

  if (v13 <= 0x10)
  {
    v14 = 16;
  }

  else
  {
    v14 = v13;
  }

  if (v9 <= v14 + 1)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = v9;
  }

  v16 = *(sub_21700C924() - 8);
  v80 = v16;
  v17 = *(v16 + 64);
  if (v15 <= v17)
  {
    v15 = *(v16 + 64);
  }

  v79 = *(sub_21700C734() - 8);
  v18 = *(v79 + 64);
  if (v15 > v18)
  {
    v18 = v15;
  }

  if (v18 <= (v14 & 0xFFFFFFFFFFFFFFF8) + 24)
  {
    v18 = (v14 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  if (v17 <= 0x10)
  {
    v19 = 16;
  }

  else
  {
    v19 = v17;
  }

  v20 = *(v4 + 80);
  v21 = v19 + v20;
  v22 = (v19 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v18 <= v22)
  {
    v18 = v22;
  }

  v23 = *(v4 + 64);
  if (v18 <= ((v21 + 1) & ~v20) + v23)
  {
    v18 = ((v21 + 1) & ~v20) + v23;
  }

  if (v18 <= v17)
  {
    v18 = v17;
  }

  if (v18 <= v12)
  {
    v24 = v12;
  }

  else
  {
    v24 = v18;
  }

  v78 = *(sub_217006E94() - 8);
  v25 = *(v78 + 64);
  if (v25 <= v17)
  {
    v25 = v17;
  }

  if (v12 <= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v12;
  }

  v27 = *(sub_21700C4B4() - 8);
  v77 = v27;
  if (*(v27 + 84))
  {
    v28 = *(v27 + 64);
  }

  else
  {
    v28 = *(v27 + 64) + 1;
  }

  v88 = v28;
  v90 = v20 + 16;
  v29 = (v20 + 16 + ((((((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v20;
  v30 = v29 + v23;
  v31 = v29 + v23 + 2;
  if (v31 <= v26)
  {
    v32 = v26;
  }

  else
  {
    v32 = v29 + v23 + 2;
  }

  if (v32 <= 0x18)
  {
    v32 = 24;
  }

  if (v24 <= v32 + 1)
  {
    v24 = v32 + 1;
  }

  if (v9 <= v10)
  {
    v33 = v10;
  }

  else
  {
    v33 = v9;
  }

  v34 = *(sub_21700C554() - 8);
  if (*(v34 + 64) > v33)
  {
    v33 = *(v34 + 64);
  }

  v76 = *(sub_217006F54() - 8);
  v35 = *(v76 + 64);
  if (v35 <= v33)
  {
    v35 = v33;
  }

  if (((((v30 + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 <= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = ((((v30 + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v75 = *(sub_21700C254() - 8);
  if (*(v75 + 64) > v36)
  {
    v36 = *(v75 + 64);
  }

  v74 = *(sub_217006B84() - 8);
  if (*(v74 + 64) > v36)
  {
    v36 = *(v74 + 64);
  }

  v73 = *(sub_21700BA44() - 8);
  v37 = *(v73 + 64);
  if (v37 <= v36)
  {
    v37 = v36;
  }

  if (v17 <= v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = v17;
  }

  v72 = *(sub_21700C994() - 8);
  if (*(v72 + 64) > v38)
  {
    v38 = *(v72 + 64);
  }

  v71 = *(sub_21700BEA4() - 8);
  v39 = *(v71 + 64);
  if (v39 <= v38)
  {
    v39 = v38;
  }

  if (((v20 + (v88 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v20) + v23 > v39)
  {
    v39 = ((v20 + (v88 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v20) + v23;
  }

  if (v31 > v39)
  {
    v39 = v31;
  }

  if (v12 <= v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = v12;
  }

  v89 = *(sub_21700C644() - 8);
  if (*(v89 + 64) > v40)
  {
    v40 = *(v89 + 64);
  }

  v70 = *(sub_21700C2F4() - 8);
  if (*(v70 + 64) > v40)
  {
    v40 = *(v70 + 64);
  }

  v41 = *(sub_2170073D4() - 8);
  if (*(v41 + 64) > v40)
  {
    v40 = *(v41 + 64);
  }

  v42 = *(sub_217007324() - 8);
  if (*(v42 + 64) <= v40)
  {
    v43 = v40;
  }

  else
  {
    v43 = *(v42 + 64);
  }

  v44 = *(sub_217007264() - 8);
  if (*(v44 + 64) > v43)
  {
    v43 = *(v44 + 64);
  }

  v45 = *(sub_217007064() - 8);
  if (*(v45 + 64) > v43)
  {
    v43 = *(v45 + 64);
  }

  v46 = *(sub_2170070F4() - 8);
  v47 = *(v46 + 64);
  if (v47 <= v43)
  {
    v47 = v43;
  }

  if (v24 <= v47 + 1)
  {
    v48 = v47 + 1;
  }

  else
  {
    v48 = v24;
  }

  if (v48 <= v17)
  {
    v48 = v17;
  }

  if (v48 <= v23)
  {
    v48 = v23;
  }

  if (v48 <= (v90 & ~v20) + v23)
  {
    v48 = (v90 & ~v20) + v23;
  }

  if (v91)
  {
    v49 = v23;
  }

  else
  {
    v49 = v23 + 1;
  }

  if (v48 <= ((v20 + 17) & ~v20) + v49)
  {
    v48 = ((v20 + 17) & ~v20) + v49;
  }

  if (v48 <= 0x11)
  {
    v50 = 17;
  }

  else
  {
    v50 = v48;
  }

  v51 = *(v92 + 64);
  if (!a2)
  {
    return 0;
  }

  v52 = v20 | 7;
  result = a1;
  if (v86 < a2)
  {
    v54 = v20 | ((*(v81 + 80) | *(v80 + 80) | *(v79 + 80) | *(v78 + 80) | *(v77 + 80)) | (*(v34 + 80) | *(v76 + 80) | *(v75 + 80) | *(v74 + 80) | *(v73 + 80) | *(v72 + 80) | *(v71 + 80) | *(v89 + 80) | *(v70 + 80) | *(v41 + 80) | *(v42 + 80) | *(v44 + 80) | *(v45 + 80) | *(v46 + 80) | *(v84 + 80) | *(v83 + 80) | *(v82 + 80))) & 0xF8 | 7;
    v55 = ((v50 + ((v49 - ((-41 - v20) | v20) - ((-33 - v52 - ((v51 + 7) & 0xFFFFFFFFFFFFFFF8)) | v52) + v54 - 2) & ~v54) + 8) & 0xFFFFFFFFFFFFFFF8) + 34;
    if (v55 <= 3)
    {
      v56 = ((a2 - v86 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v56 = 2;
    }

    if (v56 >= 0x10000)
    {
      v57 = 4;
    }

    else
    {
      v57 = 2;
    }

    if (v56 < 0x100)
    {
      v57 = 1;
    }

    if (v56 >= 2)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    switch(v58)
    {
      case 1:
        v59 = *(a1 + v55);
        if (!*(a1 + v55))
        {
          goto LABEL_141;
        }

        goto LABEL_134;
      case 2:
        v59 = *(a1 + v55);
        if (!*(a1 + v55))
        {
          goto LABEL_141;
        }

        goto LABEL_134;
      case 3:
        __break(1u);
        return result;
      case 4:
        v59 = *(a1 + v55);
        if (!v59)
        {
          goto LABEL_141;
        }

LABEL_134:
        v60 = v55 > 3;
        if (v55 <= 3)
        {
          v61 = (v59 - 1) << (8 * v55);
        }

        else
        {
          v61 = 0;
        }

        if (v60)
        {
          v66 = *a1;
        }

        else
        {
          v66 = *a1;
        }

        v64 = v86 + (v66 | v61);
        break;
      default:
        goto LABEL_141;
    }

    return (v64 + 1);
  }

LABEL_141:
  if (v85 == v86)
  {

    return __swift_getEnumTagSinglePayload(a1, v85, v69);
  }

  else
  {
    v62 = (a1 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v68 <= 0x7FFFFFFE)
    {
      v63 = *(v62 + 8);
      if (v63 >= 0xFFFFFFFF)
      {
        LODWORD(v63) = -1;
      }

      v64 = v63 - 1;
      if (v64 < 0)
      {
        v64 = -1;
      }

      return (v64 + 1);
    }

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v20 + ((v20 + v62 + 32) & ~v52) + 40) & ~v20, v91, v67);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_2168290FC(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v73 = *(a4 + 16);
  v96 = *(v73 - 8);
  v4 = *(v96 + 84);
  v72 = sub_217005EF4();
  v5 = *(v72 - 8);
  v92 = *(v5 + 84);
  v6 = v92 - 1;
  if (!v92)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v6 = 2147483646;
  }

  v74 = v4;
  v75 = v6;
  if (v4 > v6)
  {
    v6 = v4;
  }

  v97 = v6;
  v95 = *(sub_21700C384() - 8);
  v7 = *(v95 + 64);
  v94 = *(sub_2170072A4() - 8);
  if (v7 <= *(v94 + 64))
  {
    v8 = *(v94 + 64);
  }

  else
  {
    v8 = v7;
  }

  v93 = *(sub_21700C1E4() - 8);
  v9 = *(v93 + 64);
  v10 = *(sub_21700C084() - 8);
  v91 = v10;
  v11 = *(v10 + 64);
  if (v9 <= v11)
  {
    v12 = *(v10 + 64);
  }

  else
  {
    v12 = v9;
  }

  if (v12 <= 0x10)
  {
    v13 = 16;
  }

  else
  {
    v13 = v12;
  }

  if (v8 <= v13 + 1)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = v8;
  }

  v15 = *(sub_21700C924() - 8);
  v90 = v15;
  v16 = *(v15 + 64);
  if (v14 <= v16)
  {
    v14 = *(v15 + 64);
  }

  v89 = *(sub_21700C734() - 8);
  v17 = *(v89 + 64);
  if (v14 > v17)
  {
    v17 = v14;
  }

  if (v17 <= (v13 & 0xFFFFFFFFFFFFFFF8) + 24)
  {
    v17 = (v13 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  if (v16 <= 0x10)
  {
    v18 = 16;
  }

  else
  {
    v18 = v16;
  }

  v19 = *(v5 + 80);
  v78 = v19;
  v20 = v18 + v19;
  v21 = (v18 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v17 <= v21)
  {
    v17 = v21;
  }

  v22 = *(v5 + 80);
  v23 = *(v5 + 64);
  if (v17 <= ((v20 + 1) & ~v19) + v23)
  {
    v17 = ((v20 + 1) & ~v19) + v23;
  }

  if (v17 <= v16)
  {
    v17 = v16;
  }

  if (v17 <= v11)
  {
    v24 = v11;
  }

  else
  {
    v24 = v17;
  }

  v88 = *(sub_217006E94() - 8);
  v25 = *(v88 + 64);
  if (v25 <= v16)
  {
    v25 = v16;
  }

  if (v11 <= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v11;
  }

  v87 = *(sub_21700C4B4() - 8);
  if (*(v87 + 84))
  {
    v27 = *(v87 + 64);
  }

  else
  {
    v27 = *(v87 + 64) + 1;
  }

  v101 = v27;
  v84 = v22 + 16;
  v28 = (v22 + 16 + ((((((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v22;
  v29 = v28 + v23;
  v30 = v28 + v23 + 2;
  if (v30 <= v26)
  {
    v31 = v26;
  }

  else
  {
    v31 = v28 + v23 + 2;
  }

  if (v31 <= 0x18)
  {
    v31 = 24;
  }

  if (v24 <= v31 + 1)
  {
    v32 = v31 + 1;
  }

  else
  {
    v32 = v24;
  }

  v83 = v32;
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v86 = *(sub_21700C554() - 8);
  if (*(v86 + 64) > v8)
  {
    v8 = *(v86 + 64);
  }

  v85 = *(sub_217006F54() - 8);
  v33 = *(v85 + 64);
  if (v33 <= v8)
  {
    v33 = v8;
  }

  if (((((v29 + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 <= v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = ((((v29 + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v82 = *(sub_21700C254() - 8);
  if (*(v82 + 64) > v34)
  {
    v34 = *(v82 + 64);
  }

  v81 = *(sub_217006B84() - 8);
  if (*(v81 + 64) > v34)
  {
    v34 = *(v81 + 64);
  }

  v80 = *(sub_21700BA44() - 8);
  v35 = *(v80 + 64);
  if (v35 <= v34)
  {
    v35 = v34;
  }

  if (v16 <= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = v16;
  }

  v79 = *(sub_21700C994() - 8);
  if (*(v79 + 64) > v36)
  {
    v36 = *(v79 + 64);
  }

  v77 = *(sub_21700BEA4() - 8);
  v37 = *(v77 + 64);
  if (v37 <= v36)
  {
    v37 = v36;
  }

  if ((((v101 & 0xFFFFFFFFFFFFFFF8) + v78 + 24) & ~v22) + v23 > v37)
  {
    v37 = (((v101 & 0xFFFFFFFFFFFFFFF8) + v78 + 24) & ~v22) + v23;
  }

  if (v30 > v37)
  {
    v37 = v30;
  }

  if (v11 <= v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = v11;
  }

  v76 = *(sub_21700C644() - 8);
  if (*(v76 + 64) > v38)
  {
    v38 = *(v76 + 64);
  }

  v39 = *(sub_21700C2F4() - 8);
  if (*(v39 + 64) > v38)
  {
    v38 = *(v39 + 64);
  }

  v40 = *(sub_2170073D4() - 8);
  if (*(v40 + 64) <= v38)
  {
    v41 = v38;
  }

  else
  {
    v41 = *(v40 + 64);
  }

  v42 = *(sub_217007324() - 8);
  if (*(v42 + 64) > v41)
  {
    v41 = *(v42 + 64);
  }

  v43 = *(sub_217007264() - 8);
  if (*(v43 + 64) <= v41)
  {
    v44 = v41;
  }

  else
  {
    v44 = *(v43 + 64);
  }

  v45 = *(sub_217007064() - 8);
  if (*(v45 + 64) > v44)
  {
    v44 = *(v45 + 64);
  }

  v46 = sub_2170070F4();
  v47 = v92;
  v102 = 0;
  v48 = *(v46 - 8);
  v49 = *(v48 + 64);
  if (v49 <= v44)
  {
    v49 = v44;
  }

  if (v83 <= v49 + 1)
  {
    v50 = v49 + 1;
  }

  else
  {
    v50 = v83;
  }

  if (v50 <= v16)
  {
    v50 = v16;
  }

  if (v50 <= v23)
  {
    v50 = v23;
  }

  if (v50 <= (v84 & ~v22) + v23)
  {
    v50 = (v84 & ~v22) + v23;
  }

  if (v92)
  {
    v51 = v23;
  }

  else
  {
    v51 = v23 + 1;
  }

  if (v50 <= ((v22 + 17) & ~v22) + v51)
  {
    v50 = ((v22 + 17) & ~v22) + v51;
  }

  if (v50 <= 0x11)
  {
    v52 = 17;
  }

  else
  {
    v52 = v50;
  }

  v53 = *(v96 + 64);
  v54 = v78 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v55 = v22 + 32;
  v56 = ((v22 + 40) & ~v22) + v51;
  v57 = v22 | ((*(v91 + 80) | *(v90 + 80) | *(v89 + 80) | *(v88 + 80) | *(v87 + 80)) | (*(v86 + 80) | *(v85 + 80) | *(v82 + 80) | *(v81 + 80) | *(v80 + 80) | *(v79 + 80) | *(v77 + 80) | *(v76 + 80) | *(v39 + 80) | *(v40 + 80) | *(v42 + 80) | *(v43 + 80) | *(v45 + 80) | *(v48 + 80) | *(v95 + 80) | *(v94 + 80) | *(v93 + 80))) & 0xF8 | 7;
  v58 = ((v52 + ((((v22 + 32 + ((v53 + 7) & 0xFFFFFFFFFFFFFFF8)) & v54) + v56 + v57) & ~v57) + 8) & 0xFFFFFFFFFFFFFFF8) + 34;
  if (v97 < a3)
  {
    if (v58 <= 3)
    {
      v59 = ((a3 - v97 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v59 = 2;
    }

    if (v59 >= 0x10000)
    {
      v60 = 4;
    }

    else
    {
      v60 = 2;
    }

    if (v59 < 0x100)
    {
      v60 = 1;
    }

    if (v59 >= 2)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    v102 = v61;
  }

  if (v97 >= a2)
  {
    v64 = a1;
    switch(v102)
    {
      case 1:
        *(a1 + v58) = 0;
        if (a2)
        {
          goto LABEL_142;
        }

        return;
      case 2:
        *(a1 + v58) = 0;
        if (a2)
        {
          goto LABEL_142;
        }

        return;
      case 3:
LABEL_168:
        __break(1u);
        return;
      case 4:
        *(a1 + v58) = 0;
        goto LABEL_141;
      default:
LABEL_141:
        if (!a2)
        {
          return;
        }

LABEL_142:
        if (v74 >= v75)
        {
          v66 = a2;
          v47 = v74;
          v67 = v73;
        }

        else
        {
          v65 = (a1 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v97 <= 0x7FFFFFFE)
          {
            *(v65 + 8) = a2;
            return;
          }

          v68 = (v55 + v65) & v54;
          if (v75 < a2)
          {
            if (v56 <= 3)
            {
              v69 = ~(-1 << (8 * v56));
            }

            else
            {
              v69 = -1;
            }

            if (v56)
            {
              v70 = v69 & (~v75 + a2);
              if (v56 <= 3)
              {
                v71 = ((v22 + 40) & ~v22) + v51;
              }

              else
              {
                v71 = 4;
              }

              bzero(((v55 + v65) & v54), v56);
              switch(v71)
              {
                case 2:
                  *v68 = v70;
                  break;
                case 3:
                  *v68 = v70;
                  *(v68 + 2) = BYTE2(v70);
                  break;
                case 4:
                  *v68 = v70;
                  break;
                default:
                  *v68 = v70;
                  break;
              }
            }

            return;
          }

          v64 = (v22 + 40 + v68) & ~v22;
          v66 = a2 + 1;
          v67 = v72;
        }

        __swift_storeEnumTagSinglePayload(v64, v66, v47, v67);
        break;
    }
  }

  else
  {
    v62 = ~v97 + a2;
    bzero(a1, v58);
    if (v58 <= 3)
    {
      v63 = HIWORD(v62) + 1;
    }

    else
    {
      v63 = 1;
    }

    if (v58 > 3)
    {
      *a1 = v62;
    }

    else
    {
      *a1 = v62;
    }

    switch(v102)
    {
      case 1:
        *(a1 + v58) = v63;
        break;
      case 2:
        *(a1 + v58) = v63;
        break;
      case 3:
        goto LABEL_168;
      case 4:
        *(a1 + v58) = v63;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_216829DD8()
{
  result = qword_27CAB93B0;
  if (!qword_27CAB93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB93B0);
  }

  return result;
}

unint64_t sub_216829E2C()
{
  result = qword_27CACA4D0;
  if (!qword_27CACA4D0)
  {
    sub_217005EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA4D0);
  }

  return result;
}

uint64_t sub_216829E84(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v114 = *(*(*(a3 + 16) - 8) + 64);
  v3 = *(sub_21700D7A4() - 8);
  v4 = *(v3 + 80);
  v113 = v4 + 16;
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = *(v3 + 64) + 1;
  }

  v119 = v5;
  v111 = ((v4 + 16) & ~v4) + v5;
  v117 = v4 | 7;
  v115 = *(sub_217005EF4() - 8);
  v6 = *(v115 + 80);
  v118 = v6 | 7;
  v7 = *(sub_21700C4B4() - 8);
  v8 = *(v7 + 80);
  v9 = *(sub_21700C444() - 8);
  v10 = *(v9 + 80);
  v11 = v10 | v8;
  v12 = v4 | 7 | v6 | v11;
  v13 = (v111 + v12) & ~v12;
  v106 = v4;
  v107 = v4 + 40;
  v14 = (v4 + 40) & ~v4;
  if (*(v9 + 84) <= *(v7 + 84))
  {
    v15 = *(v7 + 84);
  }

  else
  {
    v15 = *(v9 + 84);
  }

  v103 = v15;
  v16 = (v6 + 113) & ~v6;
  v92 = v6;
  v17 = *(v115 + 64);
  v18 = *(v9 + 80);
  v105 = *(v9 + 64);
  v19 = ((*(v7 + 64) + v10) & ~v10) + v105;
  v112 = v19;
  if (!*(v115 + 84))
  {
    ++v17;
  }

  v98 = v17;
  v104 = v14 + v119;
  v94 = (v14 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = v17 + v16;
  v90 = v17 + v16;
  if (v15)
  {
    v21 = v19;
  }

  else
  {
    v21 = v19 + 1;
  }

  v88 = v21;
  v22 = ((-2 - v12) | v12) & 0xFFFFFFFFFFFFFFFELL;
  v23 = ((-41 - v6 - ((((v94 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v118) - v20;
  if (v23 >= ((-161 - v11) | v11) - v21 - 3)
  {
    v23 = ((-161 - v11) | v11) - v21 - 3;
  }

  if (v23 >= 0xFFFFFFFFFFFFFFA7)
  {
    v23 = -89;
  }

  v24 = v22 + v23;
  v97 = v22 + v23;
  v25 = *(sub_21700CDF4() - 8);
  v26 = *(v25 + 80);
  v27 = *(v25 + 64);
  v108 = (-59 - (v26 | 7) - ((v13 - v24 + 9) & 0xFFFFFFFFFFFFFFF8)) | v26 | 7;
  v28 = (-17 - v26) | v26;
  v29 = *(sub_21700D284() - 8);
  v30 = *(v29 + 80);
  v116 = v30 | 7;
  v87 = v18 | 7;
  v101 = *(sub_2170061E4() - 8);
  v31 = *(v101 + 80);
  v99 = *(sub_21700D194() - 8);
  v96 = *(v99 + 80);
  v109 = (v27 - v28 - v108 + (v12 | v18 | v30 | v31 | v96) - 2) & ~(v12 | v18 | v30 | v31 | v96);
  v32 = v105 + ((v18 + 8) & ~v18);
  v33 = v119 + 7;
  v34 = (v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = v34;
  v35 = (v34 + 47) & 0xFFFFFFFFFFFFFFF8;
  v36 = ((v88 + v31 + ((v35 + 16 + v11) & ~v11) + 1) & ~v31) + *(v101 + 64);
  v37 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = *(v29 + 64) + ((v30 + 65) & ~v30);
  v93 = (v38 + ((((v37 + 15) & 0xFFFFFFFFFFFFFFF8) + v116 + 16) & ~v116)) & 0xFFFFFFFFFFFFFFF8;
  v95 = v11 + 16;
  v39 = v88 + (v18 | 7);
  v100 = v32;
  v40 = v32 + v118;
  v102 = (v35 + 47) & 0xFFFFFFFFFFFFFFF8;
  v41 = v102 + v117 + 16;
  v42 = v102 + 24 + ((v41 + ((v41 + ((v90 + v117 + ((v32 + v118 + ((v88 + v87 + ((v11 + 16 + ((v93 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v87)) & ~v118)) & ~v117)) & ~v117)) & ~v117);
  v43 = v90 + ((v92 + 8) & ~v118);
  if (v43 > v42)
  {
    v42 = v90 + ((v92 + 8) & ~v118);
  }

  if (v94 + 8 > v42)
  {
    v42 = v94 + 8;
  }

  v44 = v90 + v11;
  v45 = ((v39 + ((v90 + v11 + ((v92 + 40 + ((v36 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v118)) & ~v11)) & ~v87) + v32;
  if (v42 <= v45)
  {
    v42 = v45;
  }

  v46 = v88 + 7;
  v47 = ((((v88 + 7 + ((v44 + ((v118 + ((v37 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v118)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v42 <= v47)
  {
    v48 = ((((v88 + 7 + ((v44 + ((v118 + ((v37 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v118)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v48 = v42;
  }

  v49 = v34 + 40;
  v50 = v12 + v34 + 40;
  v51 = (v50 | v12) + v47;
  v52 = v50 & ~v12;
  v53 = ((v12 + (((v51 & ~v12) - v97 + 5) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) - v97 - 2;
  if (v48 > v53)
  {
    v53 = v48;
  }

  v91 = (v90 + 7 + ((v49 + v92) & ~v118)) & 0xFFFFFFFFFFFFFFF8;
  if (v53 <= ((((((v91 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v53 = ((((((v91 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v54 = v88 + v11;
  if (v53 <= ((v40 + ((v39 + ((v88 + v11 + ((((v35 + 16 + v92) & ~v92) + v11 + v98) & ~v11) + 1) & ~v11)) & ~v87)) & ~v118) + v90)
  {
    v53 = ((v40 + ((v39 + ((v88 + v11 + ((((v35 + 16 + v92) & ~v92) + v11 + v98) & ~v11) + 1) & ~v11)) & ~v87)) & ~v118) + v90;
  }

  if (v103 >= 2)
  {
    v55 = v88;
  }

  else
  {
    v55 = v88 + 1;
  }

  if (v53 <= v55 + (v54 & ~v11) + ((v54 + ((v11 + 16 + (((((v104 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11))
  {
    v53 = v55 + (v54 & ~v11) + ((v54 + ((v11 + 16 + (((((v104 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11);
  }

  if (v53 <= ((((((v33 + ((v106 + 48) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v53 = ((((((v33 + ((v106 + 48) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v56 = ((v38 + ((v49 + v30) & ~v116) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v53 > v56)
  {
    v56 = v53;
  }

  v57 = v90 + ((v94 + v118 + 17) & ~v118);
  if (v56 <= v57 + 1)
  {
    v56 = v57 + 1;
  }

  v58 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v59 = (((v58 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v56 <= ((((v59 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v56 = ((((v59 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  v60 = ((v54 + ((((((((v59 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v11 + 40) & ~v11)) & ~v11) + v88;
  if (v56 <= v60)
  {
    v61 = v60;
  }

  else
  {
    v61 = v56;
  }

  v62 = ((v96 + 40) & ~v96) + *(v99 + 64);
  if (v61 > v62)
  {
    v62 = v61;
  }

  v63 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v64 = v63 + 8;
  if (v62 > v63 + 8)
  {
    v64 = v62;
  }

  v65 = ((v63 + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  v66 = (v46 + v52 + ((v44 + ((v65 + v118) & ~v118)) & ~v11)) & 0xFFFFFFFFFFFFFFF8;
  if (v64 <= ((v92 + 8 + v66) & ~v118) + v90)
  {
    v67 = ((v92 + 8 + v66) & ~v118) + v90;
  }

  else
  {
    v67 = v64;
  }

  v68 = v102 + 24 + ((v41 + ((v41 + ((v90 + v117 + ((v40 + ((v39 + ((v11 + v93 + 24) & ~v11)) & ~v87)) & ~v118)) & ~v117)) & ~v117)) & ~v117);
  if (v67 <= v37 + 17)
  {
    v67 = v37 + 17;
  }

  if (v67 > v68)
  {
    v68 = v67;
  }

  if (v68 <= v43)
  {
    v68 = v90 + ((v92 + 8) & ~v118);
  }

  v69 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v68 <= v69 + 16)
  {
    v68 = v69 + 16;
  }

  if (v68 <= ((((((((v89 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v68 = ((((((((v89 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v68 <= ((v104 + 9) & 0xFFFFFFFFFFFFFFF8) + 17)
  {
    v68 = ((v104 + 9) & 0xFFFFFFFFFFFFFFF8) + 17;
  }

  if (v68 <= ((v106 + 81) & ~v106) + v119)
  {
    v68 = ((v106 + 81) & ~v106) + v119;
  }

  if (v68 <= ((v33 + ((v106 + 56) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v68 = ((v33 + ((v106 + 56) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v68 <= ((((v33 + ((v107 + (v46 & 0xFFFFFFFFFFFFFFF8)) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v68 = ((((v33 + ((v107 + (v46 & 0xFFFFFFFFFFFFFFF8)) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v70 = (v91 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v68 <= ((v11 + v70 + 18) & ~v11) + v88)
  {
    v68 = ((v11 + v70 + 18) & ~v11) + v88;
  }

  v71 = ((v46 + ((v11 + 8 + ((((((((((v70 + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v68 <= v71)
  {
    v68 = v71;
  }

  if (v68 <= v37 + 40)
  {
    v68 = v37 + 40;
  }

  if (v68 <= v69 + 8)
  {
    v68 = v69 + 8;
  }

  if (v68 <= v65)
  {
    v68 = v65;
  }

  v72 = v35 + 8;
  if (v68 <= v72)
  {
    v68 = v72;
  }

  if (v68 <= v94 + 8)
  {
    v68 = v94 + 8;
  }

  if (v68 <= ((v94 + 15) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v68 = ((v94 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v73 = v69 + 24;
  if (v68 > v73)
  {
    v73 = v68;
  }

  if (v73 <= v104)
  {
    v73 = v104;
  }

  v74 = (((v102 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v73 <= ((v90 + 7 + ((v92 + 40 + ((((((v100 + ((v100 + v87 + ((v39 + ((v54 + ((v11 + 8 + ((((v74 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11)) & ~v87)) & ~v87) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v118)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v73 = ((v90 + 7 + ((v92 + 40 + ((((((v100 + ((v100 + v87 + ((v39 + ((v54 + ((v11 + 8 + ((((v74 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11)) & ~v87)) & ~v87) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v118)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v75 = v90 + ((v118 + v37 + 17 + ((v113 + ((((v58 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v117) + 23) & ~v118);
  if (v73 > v75)
  {
    v75 = v73;
  }

  if (v75 <= ((v88 + v118 + ((v95 + ((v46 + ((v11 + ((((v46 + ((((v74 + v116 + 8) & ~v116) + v11 + v38) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v11)) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v118) + v90)
  {
    v75 = ((v88 + v118 + ((v95 + ((v46 + ((v11 + ((((v46 + ((((v74 + v116 + 8) & ~v116) + v11 + v38) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v11)) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v118) + v90;
  }

  if (v75 <= ((((((v95 + v94) & ~v11) + v112 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v75 = ((((((v95 + v94) & ~v11) + v112 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v75 <= 8)
  {
    v75 = 8;
  }

  v76 = ((v109 + v75 + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v76 <= v114)
  {
    v76 = v114;
  }

  if (v76 <= 8)
  {
    v76 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_126;
  }

  v77 = (((v76 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v78 = v77 & 0xFFFFFFF8;
  v79 = a2 - 2147483645;
  if ((v77 & 0xFFFFFFF8) != 0)
  {
    v79 = 2;
  }

  if (v79 >= 0x10000)
  {
    v80 = 4;
  }

  else
  {
    v80 = 2;
  }

  if (v79 < 0x100)
  {
    v81 = 1;
  }

  else
  {
    v81 = v80;
  }

  if (v81 == 4)
  {
    v82 = *(a1 + v77);
    if (v82)
    {
      goto LABEL_122;
    }

LABEL_126:
    v85 = *(((((a1 + v76 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v85 >= 0xFFFFFFFF)
    {
      LODWORD(v85) = -1;
    }

    if ((v85 + 1) >= 2)
    {
      return v85;
    }

    else
    {
      return 0;
    }
  }

  if (v81 != 2)
  {
    v82 = *(a1 + v77);
    if (v82)
    {
      goto LABEL_122;
    }

    goto LABEL_126;
  }

  v82 = *(a1 + v77);
  if (!v82)
  {
    goto LABEL_126;
  }

LABEL_122:
  v84 = v82 - 1;
  if (v78)
  {
    v84 = 0;
    LODWORD(v78) = *a1;
  }

  return (v78 | v84) + 0x7FFFFFFF;
}

void sub_21682AB44(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v113 = *(*(*(a4 + 16) - 8) + 64);
  v4 = *(sub_21700D7A4() - 8);
  v5 = *(v4 + 80);
  v112 = v5 + 16;
  if (*(v4 + 84))
  {
    v6 = *(v4 + 64);
  }

  else
  {
    v6 = *(v4 + 64) + 1;
  }

  v121 = v6;
  v116 = ((v5 + 16) & ~v5) + v6;
  v119 = v5 | 7;
  v7 = *(sub_217005EF4() - 8);
  v8 = *(v7 + 80);
  v120 = v8 | 7;
  v9 = *(sub_21700C4B4() - 8);
  v10 = *(v9 + 80);
  v11 = *(sub_21700C444() - 8);
  v12 = *(v11 + 80);
  v13 = v12 | v10;
  v14 = v5 | 7 | v8 | v13;
  v117 = (v116 + v14) & ~v14;
  v106 = v5;
  v107 = v5 + 40;
  v15 = (v5 + 40) & ~v5;
  if (*(v11 + 84) <= *(v9 + 84))
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  v102 = v16;
  v17 = (v8 + 113) & ~v8;
  v91 = v8;
  v18 = *(v7 + 64);
  v19 = *(v11 + 80);
  v104 = *(v11 + 64);
  v20 = ((*(v9 + 64) + v12) & ~v12) + v104;
  v111 = v20;
  if (!*(v7 + 84))
  {
    ++v18;
  }

  v99 = v18;
  v103 = v15 + v121;
  v94 = (v15 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v18 + v17;
  v90 = v18 + v17;
  if (v16)
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 + 1;
  }

  v88 = v22;
  v23 = ((-2 - v14) | v14) & 0xFFFFFFFFFFFFFFFELL;
  v24 = ((-41 - (((((v94 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v8)) | v120) - v21;
  if (v24 >= ((-161 - v13) | v13) - v22 - 3)
  {
    v24 = ((-161 - v13) | v13) - v22 - 3;
  }

  if (v24 >= 0xFFFFFFFFFFFFFFA7)
  {
    v24 = -89;
  }

  v25 = v23 + v24;
  v97 = v23 + v24;
  v26 = *(sub_21700CDF4() - 8);
  v27 = *(v26 + 80);
  v108 = *(v26 + 64);
  v28 = (-59 - ((v27 | 7) + ((v117 - v25 + 9) & 0xFFFFFFFFFFFFFFF8))) | v27 | 7;
  v29 = (-17 - v27) | v27;
  v30 = *(sub_21700D284() - 8);
  v31 = *(v30 + 80);
  v118 = v31 | 7;
  v87 = v19 | 7;
  v100 = *(sub_2170061E4() - 8);
  v32 = *(v100 + 80);
  v33 = sub_21700D194();
  v34 = *(*(v33 - 8) + 80);
  v109 = (v108 - (v29 + v28) + (v14 | v19 | v31 | v32 | v34) - 2) & ~(v14 | v19 | v31 | v32 | v34);
  v93 = v31;
  v35 = *(v30 + 64) + ((v31 + 65) & ~v31);
  v36 = v104 + ((v19 + 8) & ~v19);
  v89 = v121 + 7;
  v37 = (v121 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 47) & 0xFFFFFFFFFFFFFFF8;
  v39 = v38 + 16;
  v40 = ((v88 + v32 + ((v38 + 16 + v13) & ~v13) + 1) & ~v32) + *(v100 + 64);
  v95 = v38;
  v41 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v92 = (v35 + ((((v41 + 15) & 0xFFFFFFFFFFFFFFF8) + v118 + 16) & ~v118)) & 0xFFFFFFFFFFFFFFF8;
  v96 = v13 + 16;
  v42 = v88 + (v19 | 7);
  v43 = v36 + v120;
  v101 = (v38 + 47) & 0xFFFFFFFFFFFFFFF8;
  v44 = v101 + v119 + 16;
  v45 = v101 + 24 + ((v44 + ((v44 + ((v90 + v119 + ((v36 + v120 + ((v88 + v87 + ((v13 + 16 + ((v92 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v87)) & ~v120)) & ~v119)) & ~v119)) & ~v119);
  v46 = v90 + ((v91 + 8) & ~v120);
  if (v46 > v45)
  {
    v45 = v90 + ((v91 + 8) & ~v120);
  }

  if (v94 + 8 > v45)
  {
    v45 = v94 + 8;
  }

  v105 = v91 + 40;
  v47 = v90 + v13;
  v48 = ((v42 + ((v90 + v13 + ((v91 + 40 + ((v40 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v120)) & ~v13)) & ~v87) + v36;
  if (v45 > v48)
  {
    v48 = v45;
  }

  v49 = v88 + 7;
  v50 = ((((v88 + 7 + ((v47 + ((v120 + ((v41 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v120)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v48 <= v50)
  {
    v51 = ((((v88 + 7 + ((v47 + ((v120 + ((v41 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v120)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v51 = v48;
  }

  v52 = v37 + 40;
  v53 = v14 + v37 + 40;
  v54 = (v53 | v14) + v50;
  v55 = v53 & ~v14;
  v56 = ((v14 + (((v54 & ~v14) - v97 + 5) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) - v97 - 2;
  if (v51 > v56)
  {
    v56 = v51;
  }

  v98 = v90 + 7;
  v57 = (v90 + 7 + ((v52 + v91) & ~v120)) & 0xFFFFFFFFFFFFFFF8;
  if (v56 <= ((((((v57 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v56 = ((((((v57 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v58 = (((v39 + v91) & ~v91) + v13 + v99) & ~v13;
  v59 = v88 + v13;
  v60 = ((v43 + ((v42 + ((v88 + v13 + v58 + 1) & ~v13)) & ~v87)) & ~v120) + v90;
  if (v56 <= v60)
  {
    v56 = v60;
  }

  if (v102 >= 2)
  {
    v61 = v88;
  }

  else
  {
    v61 = v88 + 1;
  }

  if (v56 <= v61 + (v59 & ~v13) + ((v59 + ((v13 + 16 + (((((v103 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13))
  {
    v56 = v61 + (v59 & ~v13) + ((v59 + ((v13 + 16 + (((((v103 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13);
  }

  if (v56 <= ((((((v89 + ((v106 + 48) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v56 = ((((((v89 + ((v106 + 48) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v62 = ((v35 + ((v52 + v93) & ~v118) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v56 > v62)
  {
    v62 = v56;
  }

  v63 = v90 + ((v94 + v120 + 17) & ~v120);
  if (v62 <= v63 + 1)
  {
    v62 = v63 + 1;
  }

  v64 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v65 = (((v64 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v62 <= ((((v65 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v62 = ((((v65 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  v66 = ((v59 + ((((((((v65 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v13 + 40) & ~v13)) & ~v13) + v88;
  if (v62 <= v66)
  {
    v67 = v66;
  }

  else
  {
    v67 = v62;
  }

  v68 = ((v34 + 40) & ~v34) + *(*(v33 - 8) + 64);
  if (v67 > v68)
  {
    v68 = v67;
  }

  v69 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v70 = v69 + 8;
  if (v68 > v69 + 8)
  {
    v70 = v68;
  }

  v71 = ((v69 + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v70 <= ((v91 + 8 + ((v49 + v55 + ((v47 + ((v71 + v120) & ~v120)) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v120) + v90)
  {
    v72 = ((v91 + 8 + ((v49 + v55 + ((v47 + ((v71 + v120) & ~v120)) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v120) + v90;
  }

  else
  {
    v72 = v70;
  }

  v73 = v101 + 24 + ((v44 + ((v44 + ((v90 + v119 + ((v43 + ((v42 + ((v13 + v92 + 24) & ~v13)) & ~v87)) & ~v120)) & ~v119)) & ~v119)) & ~v119);
  if (v72 <= v41 + 17)
  {
    v72 = v41 + 17;
  }

  if (v72 > v73)
  {
    v73 = v72;
  }

  if (v73 <= v46)
  {
    v73 = v90 + ((v91 + 8) & ~v120);
  }

  v74 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v73 <= v74 + 16)
  {
    v73 = v74 + 16;
  }

  if (v73 <= ((((((((v37 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v73 = ((((((((v37 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v73 <= ((v103 + 9) & 0xFFFFFFFFFFFFFFF8) + 17)
  {
    v73 = ((v103 + 9) & 0xFFFFFFFFFFFFFFF8) + 17;
  }

  if (v73 <= ((v106 + 81) & ~v106) + v121)
  {
    v73 = ((v106 + 81) & ~v106) + v121;
  }

  if (v73 <= ((v89 + ((v106 + 56) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v73 = ((v89 + ((v106 + 56) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v73 <= ((((v89 + ((v107 + (v49 & 0xFFFFFFFFFFFFFFF8)) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v73 = ((((v89 + ((v107 + (v49 & 0xFFFFFFFFFFFFFFF8)) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v75 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v73 <= ((v13 + v75 + 18) & ~v13) + v88)
  {
    v73 = ((v13 + v75 + 18) & ~v13) + v88;
  }

  v76 = v13 + 8;
  v77 = ((v49 + ((v13 + 8 + ((((((((((v75 + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v73 <= v77)
  {
    v73 = v77;
  }

  if (v73 <= v41 + 40)
  {
    v73 = v41 + 40;
  }

  if (v73 <= v74 + 8)
  {
    v73 = v74 + 8;
  }

  if (v73 <= v71)
  {
    v73 = v71;
  }

  if (v73 <= v95 + 8)
  {
    v73 = v95 + 8;
  }

  if (v73 <= v94 + 8)
  {
    v73 = v94 + 8;
  }

  if (v73 <= ((v94 + 15) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v73 = ((v94 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v78 = v74 + 24;
  if (v73 > v78)
  {
    v78 = v73;
  }

  if (v78 <= v103)
  {
    v78 = v103;
  }

  v79 = (((v101 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v78 <= ((v98 + ((v105 + ((((((v36 + ((v36 + v87 + ((v42 + ((v59 + ((v76 + ((((v79 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13)) & ~v87)) & ~v87) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v120)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v78 = ((v98 + ((v105 + ((((((v36 + ((v36 + v87 + ((v42 + ((v59 + ((v76 + ((((v79 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13)) & ~v87)) & ~v87) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v120)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v80 = v90 + ((v120 + v41 + 17 + ((v112 + ((((v64 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v119) + 23) & ~v120);
  if (v78 > v80)
  {
    v80 = v78;
  }

  if (v80 <= ((v88 + v120 + ((v96 + ((v49 + ((v13 + ((((v49 + ((((v79 + v118 + 8) & ~v118) + v13 + v35) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v120) + v90)
  {
    v80 = ((v88 + v120 + ((v96 + ((v49 + ((v13 + ((((v49 + ((((v79 + v118 + 8) & ~v118) + v13 + v35) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v120) + v90;
  }

  if (v80 <= ((((((v96 + v94) & ~v13) + v111 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v80 = ((((((v96 + v94) & ~v13) + v111 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v80 <= 8)
  {
    v80 = 8;
  }

  v81 = ((v109 + v80 + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v81 <= v113)
  {
    v81 = v113;
  }

  if (v81 <= 8)
  {
    v81 = 8;
  }

  v82 = (((v81 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0x7FFFFFFF)
  {
    v85 = 0;
  }

  else
  {
    v83 = a3 - 2147483645;
    if ((((v81 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v83 = 2;
    }

    if (v83 >= 0x10000)
    {
      v84 = 4;
    }

    else
    {
      v84 = 2;
    }

    if (v83 < 0x100)
    {
      v85 = 1;
    }

    else
    {
      v85 = v84;
    }
  }

  if (a2 > 0x7FFFFFFE)
  {
    if ((((v81 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v86 = a2 - 2147483646;
    }

    else
    {
      v86 = 1;
    }

    if ((((v81 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      bzero(a1, v82);
      *a1 = a2 - 0x7FFFFFFF;
    }

    switch(v85)
    {
      case 1:
        *(a1 + v82) = v86;
        break;
      case 2:
        *(a1 + v82) = v86;
        break;
      case 3:
LABEL_135:
        __break(1u);
        break;
      case 4:
        *(a1 + v82) = v86;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v85)
    {
      case 1:
        *(a1 + v82) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_129;
      case 2:
        *(a1 + v82) = 0;
        goto LABEL_128;
      case 3:
        goto LABEL_135;
      case 4:
        *(a1 + v82) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_129;
      default:
LABEL_128:
        if (a2)
        {
LABEL_129:
          *(((((a1 + v81 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) = a2;
        }

        break;
    }
  }
}

uint64_t sub_21682B894()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21682B8D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v113 = *(*(*(a3 + 16) - 8) + 64);
  v3 = *(sub_21700D7A4() - 8);
  v4 = *(v3 + 80);
  v112 = v4 + 16;
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = *(v3 + 64) + 1;
  }

  v118 = v5;
  v110 = ((v4 + 16) & ~v4) + v5;
  v116 = v4 | 7;
  v114 = *(sub_217005EF4() - 8);
  v6 = *(v114 + 80);
  v117 = v6 | 7;
  v7 = *(sub_21700C4B4() - 8);
  v8 = *(v7 + 80);
  v9 = *(sub_21700C444() - 8);
  v10 = *(v9 + 80);
  v11 = v10 | v8;
  v12 = v4 | 7 | v6 | v11;
  v13 = (v110 + v12) & ~v12;
  v105 = v4;
  v106 = v4 + 40;
  v14 = (v4 + 40) & ~v4;
  if (*(v9 + 84) <= *(v7 + 84))
  {
    v15 = *(v7 + 84);
  }

  else
  {
    v15 = *(v9 + 84);
  }

  v102 = v15;
  v16 = (v6 + 113) & ~v6;
  v91 = v6;
  v17 = *(v114 + 64);
  v18 = *(v9 + 80);
  v104 = *(v9 + 64);
  v19 = ((*(v7 + 64) + v10) & ~v10) + v104;
  v111 = v19;
  if (!*(v114 + 84))
  {
    ++v17;
  }

  v97 = v17;
  v103 = v14 + v118;
  v93 = (v14 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = v17 + v16;
  v89 = v17 + v16;
  if (v15)
  {
    v21 = v19;
  }

  else
  {
    v21 = v19 + 1;
  }

  v87 = v21;
  v22 = ((-2 - v12) | v12) & 0xFFFFFFFFFFFFFFFELL;
  v23 = ((-41 - v6 - ((((v93 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v117) - v20;
  if (v23 >= ((-161 - v11) | v11) - v21 - 3)
  {
    v23 = ((-161 - v11) | v11) - v21 - 3;
  }

  if (v23 >= 0xFFFFFFFFFFFFFFA7)
  {
    v23 = -89;
  }

  v24 = v22 + v23;
  v96 = v22 + v23;
  v25 = *(sub_21700CDF4() - 8);
  v26 = *(v25 + 80);
  v27 = *(v25 + 64);
  v107 = (-59 - (v26 | 7) - ((v13 - v24 + 9) & 0xFFFFFFFFFFFFFFF8)) | v26 | 7;
  v28 = (-17 - v26) | v26;
  v29 = *(sub_21700D284() - 8);
  v30 = *(v29 + 80);
  v115 = v30 | 7;
  v86 = v18 | 7;
  v100 = *(sub_2170061E4() - 8);
  v31 = *(v100 + 80);
  v98 = *(sub_21700D194() - 8);
  v95 = *(v98 + 80);
  v108 = (v27 - v28 - v107 + (v12 | v18 | v30 | v31 | v95) - 2) & ~(v12 | v18 | v30 | v31 | v95);
  v32 = v104 + ((v18 + 8) & ~v18);
  v33 = v118 + 7;
  v34 = (v118 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = v34;
  v35 = (v34 + 47) & 0xFFFFFFFFFFFFFFF8;
  v36 = ((v87 + v31 + ((v35 + 16 + v11) & ~v11) + 1) & ~v31) + *(v100 + 64);
  v37 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = *(v29 + 64) + ((v30 + 65) & ~v30);
  v92 = (v38 + ((((v37 + 15) & 0xFFFFFFFFFFFFFFF8) + v115 + 16) & ~v115)) & 0xFFFFFFFFFFFFFFF8;
  v94 = v11 + 16;
  v39 = v87 + (v18 | 7);
  v99 = v32;
  v40 = v32 + v117;
  v101 = (v35 + 47) & 0xFFFFFFFFFFFFFFF8;
  v41 = v101 + v116 + 16;
  v42 = v101 + 24 + ((v41 + ((v41 + ((v89 + v116 + ((v32 + v117 + ((v87 + v86 + ((v11 + 16 + ((v92 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v86)) & ~v117)) & ~v116)) & ~v116)) & ~v116);
  v43 = v89 + ((v91 + 8) & ~v117);
  if (v43 > v42)
  {
    v42 = v89 + ((v91 + 8) & ~v117);
  }

  if (v93 + 8 > v42)
  {
    v42 = v93 + 8;
  }

  v44 = v89 + v11;
  v45 = ((v39 + ((v89 + v11 + ((v91 + 40 + ((v36 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v117)) & ~v11)) & ~v86) + v32;
  if (v42 <= v45)
  {
    v42 = v45;
  }

  v46 = v87 + 7;
  v47 = ((((v87 + 7 + ((v44 + ((v117 + ((v37 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v117)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v42 <= v47)
  {
    v48 = ((((v87 + 7 + ((v44 + ((v117 + ((v37 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v117)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v48 = v42;
  }

  v49 = v34 + 40;
  v50 = v12 + v34 + 40;
  v51 = (v50 | v12) + v47;
  v52 = v50 & ~v12;
  v53 = ((v12 + (((v51 & ~v12) - v96 + 5) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) - v96 - 2;
  if (v48 > v53)
  {
    v53 = v48;
  }

  v90 = (v89 + 7 + ((v49 + v91) & ~v117)) & 0xFFFFFFFFFFFFFFF8;
  if (v53 <= ((((((v90 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v53 = ((((((v90 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v54 = v87 + v11;
  if (v53 <= ((v40 + ((v39 + ((v87 + v11 + ((((v35 + 16 + v91) & ~v91) + v11 + v97) & ~v11) + 1) & ~v11)) & ~v86)) & ~v117) + v89)
  {
    v53 = ((v40 + ((v39 + ((v87 + v11 + ((((v35 + 16 + v91) & ~v91) + v11 + v97) & ~v11) + 1) & ~v11)) & ~v86)) & ~v117) + v89;
  }

  if (v102 >= 2)
  {
    v55 = v87;
  }

  else
  {
    v55 = v87 + 1;
  }

  if (v53 <= v55 + (v54 & ~v11) + ((v54 + ((v11 + 16 + (((((v103 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11))
  {
    v53 = v55 + (v54 & ~v11) + ((v54 + ((v11 + 16 + (((((v103 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11);
  }

  if (v53 <= ((((((v33 + ((v105 + 48) & ~v105)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v53 = ((((((v33 + ((v105 + 48) & ~v105)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v56 = ((v38 + ((v49 + v30) & ~v115) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v53 > v56)
  {
    v56 = v53;
  }

  v57 = v89 + ((v93 + v117 + 17) & ~v117);
  if (v56 <= v57 + 1)
  {
    v56 = v57 + 1;
  }

  v58 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
  v59 = (((v58 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v56 <= ((((v59 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v56 = ((((v59 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  v60 = ((v54 + ((((((((v59 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v11 + 40) & ~v11)) & ~v11) + v87;
  if (v56 <= v60)
  {
    v61 = v60;
  }

  else
  {
    v61 = v56;
  }

  v62 = ((v95 + 40) & ~v95) + *(v98 + 64);
  if (v61 > v62)
  {
    v62 = v61;
  }

  v63 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v64 = v63 + 8;
  if (v62 > v63 + 8)
  {
    v64 = v62;
  }

  v65 = ((v63 + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  v66 = (v46 + v52 + ((v44 + ((v65 + v117) & ~v117)) & ~v11)) & 0xFFFFFFFFFFFFFFF8;
  if (v64 <= ((v91 + 8 + v66) & ~v117) + v89)
  {
    v67 = ((v91 + 8 + v66) & ~v117) + v89;
  }

  else
  {
    v67 = v64;
  }

  v68 = v101 + 24 + ((v41 + ((v41 + ((v89 + v116 + ((v40 + ((v39 + ((v11 + v92 + 24) & ~v11)) & ~v86)) & ~v117)) & ~v116)) & ~v116)) & ~v116);
  if (v67 <= v37 + 17)
  {
    v67 = v37 + 17;
  }

  if (v67 > v68)
  {
    v68 = v67;
  }

  if (v68 <= v43)
  {
    v68 = v89 + ((v91 + 8) & ~v117);
  }

  v69 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v68 <= v69 + 16)
  {
    v68 = v69 + 16;
  }

  if (v68 <= ((((((((v88 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v68 = ((((((((v88 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v68 <= ((v103 + 9) & 0xFFFFFFFFFFFFFFF8) + 17)
  {
    v68 = ((v103 + 9) & 0xFFFFFFFFFFFFFFF8) + 17;
  }

  if (v68 <= ((v105 + 81) & ~v105) + v118)
  {
    v68 = ((v105 + 81) & ~v105) + v118;
  }

  if (v68 <= ((v33 + ((v105 + 56) & ~v105)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v68 = ((v33 + ((v105 + 56) & ~v105)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v68 <= ((((v33 + ((v106 + (v46 & 0xFFFFFFFFFFFFFFF8)) & ~v105)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v68 = ((((v33 + ((v106 + (v46 & 0xFFFFFFFFFFFFFFF8)) & ~v105)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v70 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v68 <= ((v11 + v70 + 18) & ~v11) + v87)
  {
    v68 = ((v11 + v70 + 18) & ~v11) + v87;
  }

  v71 = ((v46 + ((v11 + 8 + ((((((((((v70 + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v68 <= v71)
  {
    v68 = v71;
  }

  if (v68 <= v37 + 40)
  {
    v68 = v37 + 40;
  }

  if (v68 <= v69 + 8)
  {
    v68 = v69 + 8;
  }

  if (v68 <= v65)
  {
    v68 = v65;
  }

  v72 = v35 + 8;
  if (v68 <= v72)
  {
    v68 = v72;
  }

  if (v68 <= v93 + 8)
  {
    v68 = v93 + 8;
  }

  if (v68 <= ((v93 + 15) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v68 = ((v93 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v73 = v69 + 24;
  if (v68 > v73)
  {
    v73 = v68;
  }

  if (v73 <= v103)
  {
    v73 = v103;
  }

  v74 = (((v101 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v73 <= ((v89 + 7 + ((v91 + 40 + ((((((v99 + ((v99 + v86 + ((v39 + ((v54 + ((v11 + 8 + ((((v74 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11)) & ~v86)) & ~v86) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v117)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v73 = ((v89 + 7 + ((v91 + 40 + ((((((v99 + ((v99 + v86 + ((v39 + ((v54 + ((v11 + 8 + ((((v74 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11)) & ~v86)) & ~v86) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v117)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v75 = v89 + ((v117 + v37 + 17 + ((v112 + ((((v58 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v116) + 23) & ~v117);
  if (v73 > v75)
  {
    v75 = v73;
  }

  if (v75 <= ((v87 + v117 + ((v94 + ((v46 + ((v11 + ((((v46 + ((((v74 + v115 + 8) & ~v115) + v11 + v38) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v11)) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v117) + v89)
  {
    v75 = ((v87 + v117 + ((v94 + ((v46 + ((v11 + ((((v46 + ((((v74 + v115 + 8) & ~v115) + v11 + v38) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v11)) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v117) + v89;
  }

  if (v75 <= ((((((v94 + v93) & ~v11) + v111 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v75 = ((((((v94 + v93) & ~v11) + v111 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v76 = 8;
  if (v75 <= 8)
  {
    v75 = 8;
  }

  v77 = ((v108 + v75 + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v77 <= v113)
  {
    v77 = v113;
  }

  if (v77 > 8)
  {
    v76 = v77;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_125;
  }

  v78 = v76 + 1;
  v79 = 8 * (v76 + 1);
  if ((v76 + 1) <= 3)
  {
    v82 = ((a2 + ~(-1 << v79) - 250) >> v79) + 1;
    if (HIWORD(v82))
    {
      v80 = *(a1 + v78);
      if (!v80)
      {
        goto LABEL_125;
      }

      goto LABEL_117;
    }

    if (v82 > 0xFF)
    {
      v80 = *(a1 + v78);
      if (!*(a1 + v78))
      {
        goto LABEL_125;
      }

      goto LABEL_117;
    }

    if (v82 < 2)
    {
LABEL_125:
      v84 = *(a1 + v76);
      if (v84 >= 6)
      {
        return (v84 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v80 = *(a1 + v78);
  if (!*(a1 + v78))
  {
    goto LABEL_125;
  }

LABEL_117:
  v83 = (v80 - 1) << v79;
  if (v78 > 3)
  {
    v83 = 0;
  }

  if (v78)
  {
    if (v78 > 3)
    {
      LODWORD(v78) = 4;
    }

    switch(v78)
    {
      case 2:
        LODWORD(v78) = *a1;
        break;
      case 3:
        LODWORD(v78) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v78) = *a1;
        break;
      default:
        LODWORD(v78) = *a1;
        break;
    }
  }

  return (v78 | v83) + 251;
}

void sub_21682C5BC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v117 = *(*(*(a4 + 16) - 8) + 64);
  v4 = *(sub_21700D7A4() - 8);
  v5 = *(v4 + 80);
  v116 = v5 + 16;
  if (*(v4 + 84))
  {
    v6 = *(v4 + 64);
  }

  else
  {
    v6 = *(v4 + 64) + 1;
  }

  v125 = v6;
  v120 = ((v5 + 16) & ~v5) + v6;
  v123 = v5 | 7;
  v7 = *(sub_217005EF4() - 8);
  v8 = *(v7 + 80);
  v124 = v8 | 7;
  v9 = *(sub_21700C4B4() - 8);
  v10 = *(v9 + 80);
  v11 = *(sub_21700C444() - 8);
  v12 = *(v11 + 80);
  v13 = v12 | v10;
  v14 = v5 | 7 | v8 | v13;
  v121 = (v120 + v14) & ~v14;
  v110 = v5;
  v111 = v5 + 40;
  v15 = (v5 + 40) & ~v5;
  if (*(v11 + 84) <= *(v9 + 84))
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  v106 = v16;
  v17 = (v8 + 113) & ~v8;
  v96 = v8;
  v18 = *(v7 + 64);
  v19 = *(v11 + 80);
  v108 = *(v11 + 64);
  v20 = ((*(v9 + 64) + v12) & ~v12) + v108;
  v115 = v20;
  if (!*(v7 + 84))
  {
    ++v18;
  }

  v103 = v18;
  v107 = v15 + v125;
  v98 = (v15 + v125 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v18 + v17;
  v95 = v18 + v17;
  if (v16)
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 + 1;
  }

  v93 = v22;
  v23 = ((-2 - v14) | v14) & 0xFFFFFFFFFFFFFFFELL;
  v24 = ((-41 - v8 - ((((v98 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v124) - v21;
  if (v24 >= ((-161 - v13) | v13) - v22 - 3)
  {
    v24 = ((-161 - v13) | v13) - v22 - 3;
  }

  if (v24 >= 0xFFFFFFFFFFFFFFA7)
  {
    v24 = -89;
  }

  v25 = v23 + v24;
  v101 = v23 + v24;
  v26 = *(sub_21700CDF4() - 8);
  v27 = *(v26 + 80);
  v28 = *(v26 + 64);
  v112 = (-59 - (v27 | 7) - ((v121 - v25 + 9) & 0xFFFFFFFFFFFFFFF8)) | v27 | 7;
  v29 = (-17 - v27) | v27;
  v30 = *(sub_21700D284() - 8);
  v31 = *(v30 + 80);
  v122 = v31 | 7;
  v92 = v19 | 7;
  v104 = *(sub_2170061E4() - 8);
  v32 = *(v104 + 80);
  v33 = sub_21700D194();
  v34 = *(*(v33 - 8) + 80);
  v113 = (v28 - v29 - v112 + (v14 | v19 | v31 | v32 | v34) - 2) & ~(v14 | v19 | v31 | v32 | v34);
  v35 = *(v30 + 64) + ((v31 + 65) & ~v31);
  v36 = v108 + ((v19 + 8) & ~v19);
  v94 = v125 + 7;
  v37 = (v125 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 47) & 0xFFFFFFFFFFFFFFF8;
  v39 = v38 + 16;
  v40 = ((v93 + v32 + ((v38 + 16 + v13) & ~v13) + 1) & ~v32) + *(v104 + 64);
  v99 = v38;
  v41 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v97 = (v35 + ((((v41 + 15) & 0xFFFFFFFFFFFFFFF8) + v122 + 16) & ~v122)) & 0xFFFFFFFFFFFFFFF8;
  v100 = v13 + 16;
  v42 = v93 + v92;
  v43 = v36 + v124;
  v105 = (v38 + 47) & 0xFFFFFFFFFFFFFFF8;
  v44 = v105 + v123 + 16;
  v45 = v105 + 24 + ((v44 + ((v44 + ((v95 + v123 + ((v36 + v124 + ((v93 + v92 + ((v13 + 16 + ((v97 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v92)) & ~v124)) & ~v123)) & ~v123)) & ~v123);
  v46 = v95 + ((v96 + 8) & ~v124);
  if (v46 > v45)
  {
    v45 = v95 + ((v96 + 8) & ~v124);
  }

  if (v98 + 8 > v45)
  {
    v45 = v98 + 8;
  }

  v109 = v96 + 40;
  v47 = v95 + v13;
  v48 = ((v42 + ((v95 + v13 + ((v96 + 40 + ((v40 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v124)) & ~v13)) & ~v92) + v36;
  if (v45 > v48)
  {
    v48 = v45;
  }

  v49 = v93 + 7;
  v50 = ((((v93 + 7 + ((v47 + ((v124 + ((v41 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v124)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v48 <= v50)
  {
    v51 = ((((v93 + 7 + ((v47 + ((v124 + ((v41 + 47) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v124)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v51 = v48;
  }

  v52 = v37 + 40;
  v53 = v14 + v37 + 40;
  v54 = (v53 | v14) + v50;
  v55 = v53 & ~v14;
  v56 = ((v14 + (((v54 & ~v14) - v101 + 5) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) - v101 - 2;
  if (v51 > v56)
  {
    v56 = v51;
  }

  v102 = v95 + 7;
  v57 = (v95 + 7 + ((v52 + v96) & ~v124)) & 0xFFFFFFFFFFFFFFF8;
  if (v56 <= ((((((v57 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v56 = ((((((v57 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v58 = (((v39 + v96) & ~v96) + v13 + v103) & ~v13;
  v59 = v93 + v13;
  v60 = ((v43 + ((v42 + ((v93 + v13 + v58 + 1) & ~v13)) & ~v92)) & ~v124) + v95;
  if (v56 <= v60)
  {
    v56 = v60;
  }

  if (v106 >= 2)
  {
    v61 = v93;
  }

  else
  {
    v61 = v93 + 1;
  }

  if (v56 <= v61 + (v59 & ~v13) + ((v59 + ((v13 + 16 + (((((v107 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13))
  {
    v56 = v61 + (v59 & ~v13) + ((v59 + ((v13 + 16 + (((((v107 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13);
  }

  if (v56 <= ((((((v94 + ((v110 + 48) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v56 = ((((((v94 + ((v110 + 48) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v62 = ((v35 + ((v52 + v31) & ~v122) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v56 > v62)
  {
    v62 = v56;
  }

  v63 = v95 + ((v98 + v124 + 17) & ~v124);
  if (v62 <= v63 + 1)
  {
    v62 = v63 + 1;
  }

  v64 = (v98 + 23) & 0xFFFFFFFFFFFFFFF8;
  v65 = (((v64 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v62 <= ((((v65 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v62 = ((((v65 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  v66 = ((v59 + ((((((((v65 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v13 + 40) & ~v13)) & ~v13) + v93;
  if (v62 <= v66)
  {
    v67 = v66;
  }

  else
  {
    v67 = v62;
  }

  v68 = ((v34 + 40) & ~v34) + *(*(v33 - 8) + 64);
  if (v67 > v68)
  {
    v68 = v67;
  }

  v69 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v70 = v69 + 8;
  if (v68 > v69 + 8)
  {
    v70 = v68;
  }

  v71 = ((v69 + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v70 <= ((v96 + 8 + ((v49 + v55 + ((v47 + ((v71 + v124) & ~v124)) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v124) + v95)
  {
    v72 = ((v96 + 8 + ((v49 + v55 + ((v47 + ((v71 + v124) & ~v124)) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v124) + v95;
  }

  else
  {
    v72 = v70;
  }

  v73 = v105 + 24 + ((v44 + ((v44 + ((v95 + v123 + ((v43 + ((v42 + ((v13 + v97 + 24) & ~v13)) & ~v92)) & ~v124)) & ~v123)) & ~v123)) & ~v123);
  if (v72 <= v41 + 17)
  {
    v72 = v41 + 17;
  }

  if (v72 > v73)
  {
    v73 = v72;
  }

  if (v73 <= v46)
  {
    v73 = v95 + ((v96 + 8) & ~v124);
  }

  v74 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v73 <= v74 + 16)
  {
    v73 = v74 + 16;
  }

  if (v73 <= ((((((((v37 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v73 = ((((((((v37 + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v73 <= ((v107 + 9) & 0xFFFFFFFFFFFFFFF8) + 17)
  {
    v73 = ((v107 + 9) & 0xFFFFFFFFFFFFFFF8) + 17;
  }

  if (v73 <= ((v110 + 81) & ~v110) + v125)
  {
    v73 = ((v110 + 81) & ~v110) + v125;
  }

  if (v73 <= ((v94 + ((v110 + 56) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v73 = ((v94 + ((v110 + 56) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v73 <= ((((v94 + ((v111 + (v49 & 0xFFFFFFFFFFFFFFF8)) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v73 = ((((v94 + ((v111 + (v49 & 0xFFFFFFFFFFFFFFF8)) & ~v110)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v75 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v73 <= ((v13 + v75 + 18) & ~v13) + v93)
  {
    v73 = ((v13 + v75 + 18) & ~v13) + v93;
  }

  v76 = v13 + 8;
  v77 = ((v49 + ((v13 + 8 + ((((((((((v75 + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v73 <= v77)
  {
    v73 = v77;
  }

  if (v73 <= v41 + 40)
  {
    v73 = v41 + 40;
  }

  if (v73 <= v74 + 8)
  {
    v73 = v74 + 8;
  }

  if (v73 <= v71)
  {
    v73 = v71;
  }

  if (v73 <= v99 + 8)
  {
    v73 = v99 + 8;
  }

  if (v73 <= v98 + 8)
  {
    v73 = v98 + 8;
  }

  if (v73 <= ((v98 + 15) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v73 = ((v98 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v78 = v74 + 24;
  if (v73 > v78)
  {
    v78 = v73;
  }

  if (v78 <= v107)
  {
    v78 = v107;
  }

  v79 = (((v105 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v78 <= ((v102 + ((v109 + ((((((v36 + ((v36 + v92 + ((v42 + ((v59 + ((v76 + ((((v79 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13)) & ~v92)) & ~v92) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v124)) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v78 = ((v102 + ((v109 + ((((((v36 + ((v36 + v92 + ((v42 + ((v59 + ((v76 + ((((v79 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13)) & ~v92)) & ~v92) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v124)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v80 = v95 + ((v124 + v41 + 17 + ((v116 + ((((v64 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v123) + 23) & ~v124);
  if (v78 > v80)
  {
    v80 = v78;
  }

  if (v80 <= ((v93 + v124 + ((v100 + ((v49 + ((v13 + ((((v49 + ((((v79 + v122 + 8) & ~v122) + v13 + v35) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v124) + v95)
  {
    v80 = ((v93 + v124 + ((v100 + ((v49 + ((v13 + ((((v49 + ((((v79 + v122 + 8) & ~v122) + v13 + v35) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v124) + v95;
  }

  if (v80 <= ((((((v100 + v98) & ~v13) + v115 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v80 = ((((((v100 + v98) & ~v13) + v115 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v80 <= 8)
  {
    v80 = 8;
  }

  v81 = ((v113 + v80 + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v81 <= v117)
  {
    v81 = v117;
  }

  if (v81 <= 8)
  {
    v81 = 8;
  }

  v82 = v81 + 1;
  v83 = 8 * (v81 + 1);
  if (a3 < 0xFB)
  {
    v86 = 0;
    v84 = a1;
    v85 = a2;
  }

  else
  {
    v84 = a1;
    v85 = a2;
    if (v82 <= 3)
    {
      v89 = ((a3 + ~(-1 << v83) - 250) >> v83) + 1;
      if (HIWORD(v89))
      {
        v86 = 4;
      }

      else
      {
        if (v89 < 0x100)
        {
          v90 = 1;
        }

        else
        {
          v90 = 2;
        }

        if (v89 >= 2)
        {
          v86 = v90;
        }

        else
        {
          v86 = 0;
        }
      }
    }

    else
    {
      v86 = 1;
    }
  }

  if (v85 > 0xFA)
  {
    v87 = v85 - 251;
    if (v82 < 4)
    {
      v88 = (v87 >> v83) + 1;
      if (v81 != -1)
      {
        v91 = v87 & ~(-1 << v83);
        bzero(v84, v82);
        if (v82 == 3)
        {
          *v84 = v91;
          v84[2] = BYTE2(v91);
        }

        else if (v82 == 2)
        {
          *v84 = v91;
        }

        else
        {
          *v84 = v87;
        }
      }
    }

    else
    {
      bzero(v84, v81 + 1);
      *v84 = v87;
      v88 = 1;
    }

    switch(v86)
    {
      case 1:
        v84[v82] = v88;
        break;
      case 2:
        *&v84[v82] = v88;
        break;
      case 3:
LABEL_140:
        __break(1u);
        break;
      case 4:
        *&v84[v82] = v88;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v86)
    {
      case 1:
        v84[v82] = 0;
        if (!v85)
        {
          return;
        }

        goto LABEL_129;
      case 2:
        *&v84[v82] = 0;
        goto LABEL_128;
      case 3:
        goto LABEL_140;
      case 4:
        *&v84[v82] = 0;
        if (!v85)
        {
          return;
        }

        goto LABEL_129;
      default:
LABEL_128:
        if (v85)
        {
LABEL_129:
          v84[v81] = -v85;
        }

        break;
    }
  }
}

void sub_21682D344()
{
  if (!qword_280E29E68)
  {
    _s7SectionVMa(255);
    v0 = sub_21700E984();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29E68);
    }
  }
}

uint64_t sub_21682D3CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21682D408(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21682D448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21682D48C()
{
  result = type metadata accessor for SectionContent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21682D528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2166C62F8(a1, a4, type metadata accessor for SectionContent);
  result = type metadata accessor for PageChangeInstruction.Instruction.ItemUpdateDescriptor();
  v8 = (a4 + *(result + 36));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

void sub_21682D5A0()
{
  OUTLINED_FUNCTION_22_3();
  v62 = v0;
  v63 = v1;
  v59 = v2;
  v60 = v3;
  v5 = v4;
  v61 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v58 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  v12 = v53 - v11;
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v53 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v53 - v23;
  sub_21700CE04();
  sub_21682FF4C();
  v25 = v62;
  sub_21700CCD4();
  v62 = v25;
  if (v25)
  {
    (*(v7 + 8))(v63, v61);
    v26 = *(v15 + 8);
    v26(v5, v13);
    v26(v24, v13);
  }

  else
  {
    v53[1] = v19;
    v54 = v22;
    v56 = v7;
    v29 = *(v15 + 8);
    v27 = (v15 + 8);
    v28 = v29;
    v29(v24, v13);
    if (qword_280E2A288 != -1)
    {
      swift_once();
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93D0);
    __swift_project_value_buffer(v30, qword_280E2A290);
    v55 = v12;
    v31 = v63;
    sub_21700CEF4();
    v32 = v54;
    v57 = v5;
    sub_21700CE04();
    sub_21700CDB4();
    v34 = v33;
    v28(v32, v13);
    if (v34)
    {
      v53[0] = v28;
      v54 = v27;
      sub_21700CE04();
      v36 = v55;
      v35 = v56;
      v37 = v61;
      (*(v56 + 16))(v58, v55, v61);
      type metadata accessor for PageChangeInstruction.Instruction.InsertItemsUpdateDescriptor.Item();
      swift_getWitnessTable();
      v38 = v62;
      sub_21700E924();
      if (v38)
      {
        v39 = *(v35 + 8);
        v39(v63, v37);
        v40 = OUTLINED_FUNCTION_15_15();
        v41(v40);
        v39(v36, v37);
      }

      else
      {
        v62 = 0;
        v50 = *(v35 + 8);
        v50(v63, v37);
        v51 = OUTLINED_FUNCTION_15_15();
        v52(v51);
        v50(v36, v37);
      }
    }

    else
    {
      sub_21700E2E4();
      OUTLINED_FUNCTION_0_45();
      sub_21668EF88(v42, v43);
      OUTLINED_FUNCTION_12();
      v45 = v44;
      v46 = type metadata accessor for PageChangeInstruction.Instruction.InsertItemsUpdateDescriptor();
      *v45 = 0x496E6F6974636573;
      v45[1] = 0xE900000000000044;
      v45[2] = v46;
      OUTLINED_FUNCTION_50();
      (*(v47 + 104))(v45);
      swift_willThrow();
      v48 = *(v56 + 8);
      v49 = v61;
      v48(v31, v61);
      v28(v57, v13);
      v48(v55, v49);
    }
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_21682DAEC()
{
  OUTLINED_FUNCTION_22_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  if (qword_280E2A260 != -1)
  {
    swift_once();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93D0);
  __swift_project_value_buffer(v13, qword_280E2A268);
  sub_21700CF44();
  if (LOBYTE(v34[0]) == 62)
  {
    v14 = 0xE800000000000000;
    v15 = 0x646E694B6D657469;
  }

  else
  {
    v31 = v5;
    if (qword_280E2C7F0 != -1)
    {
      swift_once();
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93D8);
    __swift_project_value_buffer(v24, qword_280E73B58);
    sub_216830000();
    sub_21700D534();
    if (v33)
    {
      sub_21700CF34();
      OUTLINED_FUNCTION_34();
      (*(v25 + 8))(v1);
      (*(v8 + 8))(v3, v6);
      sub_2166A0F18(&v32, v34);
      sub_2166A0F18(v34, v5);
      *(v5 + 40) = 0;
      goto LABEL_12;
    }

    sub_216697664(&v32, &qword_27CAB93E0);
    sub_21700CE04();
    v30 = sub_21700CDB4();
    v27 = v26;
    v28 = *(v8 + 8);
    v28(v12, v6);
    if (v27)
    {
      sub_21700CF34();
      OUTLINED_FUNCTION_34();
      (*(v29 + 8))(v1);
      v28(v3, v6);
      *v31 = v30;
      *(v31 + 8) = v27;
      *(v31 + 40) = 1;
      goto LABEL_12;
    }

    v14 = 0xEC0000006D657469;
    v15 = 0x2064657461647075;
  }

  sub_21700E2E4();
  OUTLINED_FUNCTION_0_45();
  sub_21668EF88(v16, v17);
  OUTLINED_FUNCTION_12();
  v19 = v18;
  v20 = type metadata accessor for PageChangeInstruction.Instruction.InsertItemsUpdateDescriptor.Item();
  v21 = MEMORY[0x277D84F90];
  *v19 = v15;
  v19[1] = v14;
  v19[2] = v20;
  v19[3] = v21;
  OUTLINED_FUNCTION_50();
  (*(v22 + 104))(v19);
  swift_willThrow();
  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v23 + 8))(v1);
  (*(v8 + 8))(v3, v6);
LABEL_12:
  OUTLINED_FUNCTION_21_4();
}

void sub_21682DEFC(uint64_t a1@<X8>)
{
  sub_21682D5A0();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

void sub_21682DF38()
{
  OUTLINED_FUNCTION_22_3();
  v141 = v0;
  v2 = v1;
  v4 = v3;
  v144 = v5;
  v7 = v6;
  v136 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  MEMORY[0x28223BE20](v9 - 8);
  v122 = &v118 - v10;
  v123 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v120 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v119 = v14 - v13;
  v126 = _s7SectionVMa(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v129 = v17 - v16;
  v130 = *(v4 - 8);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v133 = (v20 - v19);
  v143 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v145 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v125 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  v128 = v25;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  v132 = v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  v30 = &v118 - v29;
  v31 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  v121 = v35;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  v124 = v37;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_4();
  v127 = v39;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_4();
  v131 = v41;
  OUTLINED_FUNCTION_3_1();
  v43 = MEMORY[0x28223BE20](v42);
  MEMORY[0x28223BE20](v43);
  v45 = &v118 - v44;
  v139 = v2;
  v140 = v4;
  v46 = type metadata accessor for PageChangeInstruction.Instruction();
  OUTLINED_FUNCTION_1();
  v135 = v47;
  MEMORY[0x28223BE20](v48);
  v134 = (&v118 - v49);
  v50 = v7;
  sub_21700CE04();
  v142 = sub_21700CDB4();
  v52 = v51;
  v55 = *(v33 + 8);
  v53 = v33 + 8;
  v54 = v55;
  v55(v45, v31);
  if (!v52)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_45();
    sub_21668EF88(v67, v68);
    OUTLINED_FUNCTION_12();
    *v69 = 0x7463757274736E69;
    v69[1] = 0xEB000000006E6F69;
    v69[2] = v46;
    OUTLINED_FUNCTION_50();
    (*(v70 + 104))();
    swift_willThrow();
    v54(v50, v31);
    v61 = v143;
    v60 = v144;
    goto LABEL_11;
  }

  v137 = v54;
  v138 = v53;
  v56 = v31;
  v57 = v50;
  v58 = v142;
  v59 = v142 == 0x7449747265736E69 && v52 == 0xEB00000000736D65;
  if (!v59 && (OUTLINED_FUNCTION_8_18() & 1) == 0)
  {
    v75 = v58 == 0x506563616C706572 && v52 == 0xEB00000000656761;
    v76 = v144;
    if (v75 || (OUTLINED_FUNCTION_8_18() & 1) != 0)
    {

      sub_21700CE04();
      OUTLINED_FUNCTION_10_16();
      v61 = v143;
      v77(v132, v76, v143);
      v78 = v141;
      sub_21700D714();
      if (v78)
      {
        v137(v50, v56);
LABEL_20:
        v60 = v76;
        goto LABEL_24;
      }

      v137(v50, v56);
      v73 = v134;
      v79 = OUTLINED_FUNCTION_7_23();
      v80(v79);
      v74 = v46;
LABEL_22:
      v60 = v76;
      goto LABEL_23;
    }

    v81 = v58 == 0xD000000000000011 && 0x8000000217082C10 == v52;
    v82 = v56;
    if (v81 || (OUTLINED_FUNCTION_8_18() & 1) != 0)
    {

      sub_21700CE04();
      OUTLINED_FUNCTION_10_16();
      v60 = v76;
      v61 = v143;
      v83(v128, v76, v143);
      v84 = v129;
      v85 = v141;
      sub_216C26B08();
      if (v85)
      {
        v65 = OUTLINED_FUNCTION_7_23();
        goto LABEL_9;
      }

      v74 = v46;
      v86 = OUTLINED_FUNCTION_7_23();
      (v137)(v86);
      v73 = v134;
      sub_2166C62F8(v84, v134, _s7SectionVMa);
LABEL_23:
      swift_storeEnumTagMultiPayload();
      (*(v135 + 32))(v136, v73, v74);
      goto LABEL_24;
    }

    v87 = v58 == 0x6974636553646461 && v52 == 0xEB00000000736E6FLL;
    v74 = v46;
    v60 = v76;
    if (!v87 && (OUTLINED_FUNCTION_8_18() & 1) == 0)
    {
      v92 = v58 == 0x7449657461647075 && v52 == 0xEB00000000736D65;
      v93 = v137;
      if (v92 || (sub_21700F7D4() & 1) != 0)
      {

        sub_21700CE04();
        v94 = v122;
        sub_21700CD74();
        v95 = OUTLINED_FUNCTION_7_23();
        v93(v95);
        v96 = v123;
        v97 = v57;
        v57 = v145;
        if (__swift_getEnumTagSinglePayload(v94, 1, v123) != 1)
        {
          v142 = v97;
          v104 = v120;
          v105 = v94;
          v106 = v119;
          v107 = (*(v120 + 32))(v119, v105, v96);
          v133 = &v118;
          MEMORY[0x28223BE20](v107);
          v108 = v139;
          *(&v118 - 4) = v140;
          *(&v118 - 3) = v108;
          *(&v118 - 2) = v76;
          type metadata accessor for PageChangeInstruction.Instruction.ItemUpdateDescriptor();
          v109 = v141;
          v110 = sub_21700E2B4();
          v61 = v143;
          if (v109)
          {
            v137(v142, v82);
            (*(v104 + 8))(v106, v96);
            goto LABEL_20;
          }

          v141 = v110;
          v137(v142, v82);
          (*(v104 + 8))(v106, v96);
          v73 = v134;
          *v134 = v141;
          goto LABEL_22;
        }

        sub_216697664(v94, &qword_27CAB78D0);
        sub_21700E2E4();
        OUTLINED_FUNCTION_0_45();
        sub_21668EF88(v98, v99);
        OUTLINED_FUNCTION_12();
        v100 = MEMORY[0x277D84F90];
        *v101 = 0x736D657469;
        v101[1] = 0xE500000000000000;
        v101[2] = v74;
        v101[3] = v100;
        OUTLINED_FUNCTION_50();
        (*(v102 + 104))();
        swift_willThrow();
        v103 = OUTLINED_FUNCTION_7_23();
        v93(v103);
      }

      else
      {
        v111 = v142 == 0x74617265704F6F6ELL && v52 == 0xEB000000006E6F69;
        v57 = v145;
        if (v111 || (OUTLINED_FUNCTION_8_18() & 1) != 0)
        {
          v112 = OUTLINED_FUNCTION_7_23();
          v93(v112);

          v61 = v143;
          v60 = v76;
          v73 = v134;
          goto LABEL_23;
        }

        sub_21700E2E4();
        OUTLINED_FUNCTION_0_45();
        sub_21668EF88(v113, v114);
        OUTLINED_FUNCTION_12();
        *v115 = v142;
        v115[1] = v52;
        v115[2] = v74;
        OUTLINED_FUNCTION_50();
        (*(v116 + 104))();
        swift_willThrow();
        v117 = OUTLINED_FUNCTION_7_23();
        v93(v117);
      }

      v61 = v143;
      goto LABEL_20;
    }

    sub_21700CE04();
    v61 = v143;
    (*(v145 + 16))(v125, v76, v143);
    sub_21668EF88(&qword_280E2C638, _s7SectionVMa);
    v88 = v141;
    v89 = sub_21700E924();
    if (!v88)
    {
      v90 = v89;
      v137(v57, v82);
      v91 = v134;
      *v134 = v90;
      v73 = v91;
      v57 = v145;
      goto LABEL_23;
    }

    v137(v57, v82);
LABEL_11:
    v57 = v145;
    goto LABEL_24;
  }

  sub_21700CE04();
  OUTLINED_FUNCTION_10_16();
  v61 = v143;
  v60 = v144;
  v62(v30, v144, v143);
  type metadata accessor for PageChangeInstruction.Instruction.InsertItemsUpdateDescriptor();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_23();
  v63 = v141;
  v64 = sub_21700E924();
  if (!v63)
  {
    v71 = v64;
    v137(v57, v31);
    v72 = v134;
    *v134 = v71;
    v73 = v72;
    v74 = v46;
    goto LABEL_23;
  }

  v65 = v57;
  v66 = v31;
LABEL_9:
  v137(v65, v66);
LABEL_24:
  (*(v57 + 8))(v60, v61);
  OUTLINED_FUNCTION_21_4();
}

void sub_21682ECB4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v63 = a1;
  v69 = a3;
  v66 = a2;
  v55 = a4;
  v4 = sub_21700CF34();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SectionContent();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v53 - v11;
  v13 = sub_21700CDF4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v58 = &v53 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v53 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v53 - v25;
  sub_21700CE04();
  v53 = sub_21700CDB4();
  v28 = v27;
  v56 = v14;
  v29 = *(v14 + 8);
  v29(v26, v13);
  if (!v28)
  {
    v31 = sub_21700E2E4();
    sub_21668EF88(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v33 = v36;
    v34 = type metadata accessor for PageChangeInstruction.Instruction();
    *v33 = 0x496E6F6974636573;
    v35 = 0xE900000000000044;
    goto LABEL_12;
  }

  v65 = v28;
  sub_21700CE04();
  sub_21682FF4C();
  sub_21700CD14();
  v29(v24, v13);
  v30 = v67;
  if (v67 == 62)
  {

    v31 = sub_21700E2E4();
    sub_21668EF88(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v33 = v32;
    v34 = type metadata accessor for PageChangeInstruction.Instruction();
    *v33 = 1684957547;
    v35 = 0xE400000000000000;
LABEL_12:
    v33[1] = v35;
    v33[2] = v34;
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    return;
  }

  sub_21700CE04();
  sub_21700CCB4();
  v29(v21, v13);
  v37 = sub_21700D3E4();
  if (__swift_getEnumTagSinglePayload(v12, 1, v37) == 1)
  {

    sub_216697664(v12, &qword_27CAB7D20);
LABEL_11:
    v31 = sub_21700E2E4();
    sub_21668EF88(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v33 = v51;
    v34 = type metadata accessor for PageChangeInstruction.Instruction();
    v35 = 0xE400000000000000;
    *v33 = 1835365481;
    goto LABEL_12;
  }

  v38 = MEMORY[0x277D837D0];
  v39 = sub_21700D3D4();
  (*(*(v37 - 8) + 8))(v12, v37);
  if (!v39)
  {

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93B8);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_217013D90;
  *(v40 + 56) = v38;
  *(v40 + 32) = 0x646E694B6D657469;
  *(v40 + 40) = 0xE800000000000000;
  *(v40 + 64) = v30;
  *(v40 + 120) = v38;
  *(v40 + 88) = &_s7SectionV8ItemKindON;
  *(v40 + 96) = 0x736D657469;
  *(v40 + 104) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_217013DA0;
  v42 = sub_21700E344();

  v43 = sub_216685F4C(0, &qword_280E29D88);
  *(v41 + 56) = v43;
  *(v41 + 32) = v42;
  v44 = sub_216685F4C(0, &qword_27CAB93C8);
  v45 = MEMORY[0x21CE9FEE0](v41);
  *(v40 + 152) = v44;
  *(v40 + 128) = v45;
  v46 = sub_21700ED24();
  v68 = v43;
  v67 = v46;
  v47 = v46;
  v48 = v58;
  sub_21700CDE4();
  (*(v56 + 16))(v57, v48, v13);
  (*(v61 + 16))(v60, v63, v62);
  v49 = v59;
  v50 = v64;
  sub_21699CE4C();
  v29(v48, v13);
  if (v50)
  {
  }

  else
  {

    v52 = v54;
    sub_2166C62F8(v49, v54, type metadata accessor for SectionContent);
    sub_21682D528(v52, v53, v65, v55);
  }
}

void sub_21682F4E4()
{
  OUTLINED_FUNCTION_22_3();
  v37 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v35 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v38 = v19;
  v39 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v34 = v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  type metadata accessor for PageChangeInstruction.Instruction();
  OUTLINED_FUNCTION_1();
  v31 = v23;
  v32 = v22;
  MEMORY[0x28223BE20](v22);
  v25 = &v31 - v24;
  v33 = type metadata accessor for PageChangeInstruction();
  v26 = *(v33 + 40);
  v36 = v9;
  v27 = (v9 + v26);
  *v27 = 0;
  v27[1] = 0;
  v46 = v7;
  sub_21700CE04();
  v28 = v37;
  v40 = v12;
  v41 = v10;
  v29 = *(v12 + 16);
  v29(v17, v37, v10);
  sub_21682DF38();
  if (v0)
  {
    (*(v40 + 8))(v28, v41);
    (*(v38 + 8))(v46, v39);
  }

  else
  {
    (*(v31 + 32))(v36, v25, v32);
    v42 = v5;
    v43 = v5;
    v44 = v3;
    v45 = v3;
    type metadata accessor for PageChangeInstruction.InvalidationRulesChange();
    sub_21700CE04();
    v30 = v41;
    v29(v35, v28, v41);
    swift_getWitnessTable();
    sub_21700D734();
    (*(v40 + 8))(v28, v30);
    (*(v38 + 8))(v46, v39);
    *(v36 + *(v33 + 36)) = v42;
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_21682F864()
{
  OUTLINED_FUNCTION_22_3();
  v42[0] = v0;
  v42[1] = v1;
  v44 = v2;
  v45 = v3;
  v43 = v4;
  v47 = v5;
  v7 = v6;
  v49 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v42 - v21;
  v48 = v7;
  sub_21700CE04();
  v23 = sub_21700CDB4();
  v25 = v24;
  v46 = *(v16 + 8);
  v46(v22, v14);
  if (!v25)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_45();
    sub_21668EF88(v30, v31);
    OUTLINED_FUNCTION_12();
    v33 = v32;
    v34 = OUTLINED_FUNCTION_9_26();
    *v33 = 0x6F6974617265706FLL;
    v33[1] = 0xE90000000000006ELL;
    v33[2] = v34;
    OUTLINED_FUNCTION_50();
    (*(v35 + 104))(v33);
LABEL_12:
    swift_willThrow();
    v28 = v47;
    v27 = v48;
    goto LABEL_13;
  }

  v26 = v23 == 0x6563616C706572 && v25 == 0xE700000000000000;
  if (!v26 && (sub_21700F7D4() & 1) == 0)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_45();
    sub_21668EF88(v36, v37);
    OUTLINED_FUNCTION_12();
    v39 = v38;
    v40 = OUTLINED_FUNCTION_9_26();
    *v39 = v23;
    v39[1] = v25;
    v39[2] = v40;
    OUTLINED_FUNCTION_50();
    (*(v41 + 104))(v39);
    goto LABEL_12;
  }

  v43 = v14;

  v27 = v48;
  sub_21700CE04();
  v28 = v47;
  (*(v9 + 16))(v13, v47, v49);
  v29 = v42[0];
  sub_216BA1950(v20, v13);
  if (v29)
  {
    v14 = v43;
LABEL_13:
    (*(v9 + 8))(v28, v49);
    v46(v27, v14);
    goto LABEL_14;
  }

  (*(v9 + 8))(v28, v49);
  v46(v27, v43);
LABEL_14:
  OUTLINED_FUNCTION_21_4();
}

void sub_21682FC44(void *a1@<X8>)
{
  sub_21682F864();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_21682FC9C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  sub_21700DF14();
  return v2;
}

uint64_t sub_21682FCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 40));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_21682FD5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93D0);
  __swift_allocate_value_buffer(v0, qword_280E2A290);
  v1 = __swift_project_value_buffer(v0, qword_280E2A290);
  if (qword_280E2A260 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E2A268);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21682FE30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93D0);
  __swift_allocate_value_buffer(v0, qword_280E2A268);
  __swift_project_value_buffer(v0, qword_280E2A268);
  return sub_21700CF14();
}

uint64_t sub_21682FEF0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21682FF4C()
{
  result = qword_280E2C648;
  if (!qword_280E2C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C648);
  }

  return result;
}

uint64_t sub_21682FFB8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_216830000()
{
  result = qword_280E2A220;
  if (!qword_280E2A220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A220);
  }

  return result;
}

__n128 sub_216830064@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = type metadata accessor for GridView();
  v19 = a9 + v18[22];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = v18[23];
  *(a9 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_50();
  (*(v21 + 32))(a9, a1, a12);
  sub_2166A0F18(a2, a9 + v18[17]);
  v22 = a9 + v18[18];
  *v22 = a3;
  *(v22 + 8) = a4;
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;
  v23 = (a9 + v18[20]);
  *v23 = a10;
  v23[1] = a11;
  v24 = a9 + v18[19];
  result = *a7;
  v26 = *(a7 + 16);
  *v24 = *a7;
  *(v24 + 16) = v26;
  *(v24 + 32) = *(a7 + 32);
  *(a9 + v18[21]) = a8;
  return result;
}

uint64_t sub_2168301EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_50();
  (*(v4 + 32))(a2);
  result = type metadata accessor for GridItemDescriptor();
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_216830264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v138 = sub_217009B64();
  v137 = *(v138 - 8);
  v3 = MEMORY[0x28223BE20](v138);
  v134 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v133 = &v112 - v5;
  v144 = sub_217009B84();
  v136 = *(v144 - 8);
  v6 = MEMORY[0x28223BE20](v144);
  v135 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = a1;
  v8 = *(a1 - 8);
  a1 -= 8;
  v132 = v8;
  MEMORY[0x28223BE20](v6);
  v130 = v9;
  v131 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = *(a1 + 24);
  v10 = v141;
  v140 = *(a1 + 40);
  v11 = v140;
  v12 = sub_2170075B4();
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  *&v15 = v10;
  *(&v15 + 1) = *(a1 + 32);
  *&v16 = v11;
  *(&v16 + 1) = *(a1 + 48);
  v126 = v16;
  v168 = v16;
  v127 = v15;
  v167 = v15;
  v129 = v13;
  v169 = v13;
  v170 = v14;
  v128 = v14;
  type metadata accessor for GridView.ItemView();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8);
  sub_2170089F4();
  sub_217009B44();
  v17 = sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  *&v167 = v12;
  *(&v167 + 1) = MEMORY[0x277D84030];
  *&v168 = v17;
  *(&v168 + 1) = WitnessTable;
  v169 = MEMORY[0x277D84038];
  sub_21700B174();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9438);
  sub_2170089F4();
  v165 = swift_getWitnessTable();
  v166 = MEMORY[0x277CDF678];
  v19 = swift_getWitnessTable();
  v20 = sub_2166D9530(&qword_280E2AD08, &qword_27CAB93E8);
  v163 = v19;
  v164 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_216839810(&qword_280E2A6F0, MEMORY[0x277CDE470]);
  v161 = v21;
  v162 = v22;
  v160 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v24 = sub_2166D9530(&qword_280E2AC38, &qword_27CAB9438);
  v158 = v23;
  v159 = v24;
  swift_getWitnessTable();
  v25 = sub_21700B454();
  v26 = swift_getWitnessTable();
  *&v167 = v25;
  *(&v167 + 1) = v26;
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  *&v167 = v25;
  *(&v167 + 1) = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = MEMORY[0x277CDF918];
  v156 = OpaqueTypeConformance2;
  v157 = MEMORY[0x277CDF918];
  v154 = swift_getWitnessTable();
  v155 = v28;
  v152 = swift_getWitnessTable();
  v153 = v28;
  v150 = swift_getWitnessTable();
  v151 = v28;
  swift_getWitnessTable();
  sub_217008044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9440);
  v29 = sub_2170089F4();
  v30 = swift_getWitnessTable();
  v31 = sub_2166D9530(&qword_280E2A8D0, &qword_27CAB9440);
  v148 = v30;
  v149 = v31;
  v32 = swift_getWitnessTable();
  *&v167 = v29;
  *(&v167 + 1) = v32;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v167 = v29;
  *(&v167 + 1) = v32;
  v34 = swift_getOpaqueTypeConformance2();
  v115 = OpaqueTypeMetadata2;
  v116 = v34;
  v35 = sub_217008B64();
  v36 = swift_getWitnessTable();
  v117 = v35;
  *&v167 = v35;
  *(&v167 + 1) = v144;
  v119 = v36;
  *&v168 = v36;
  *(&v168 + 1) = MEMORY[0x277CDE478];
  v37 = swift_getOpaqueTypeMetadata2();
  v121 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v118 = &v112 - v38;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
  v123 = v37;
  v125 = sub_2170089F4();
  v124 = *(v125 - 8);
  v39 = MEMORY[0x28223BE20](v125);
  v120 = &v112 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v122 = &v112 - v41;
  v42 = sub_21700B264();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v114 = (&v112 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_21700B274();
  MEMORY[0x28223BE20](v45 - 8);
  v113 = &v112 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2170090F4();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v112 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v142;
  result = sub_21700EC74();
  v53 = result;
  v55 = *v51;
  v54 = *(v51 + 8);
  v56 = *(v51 + 16);
  v57 = *(v51 + 24);
  v58 = *(a1 + 116);
  v59 = v51;
  v60 = v51 + v58;
  v61 = *v60;
  if (*(v60 + 8) == 1)
  {
    v62 = *v60;
  }

  else
  {
    LODWORD(v141) = *(v51 + 24);
    v140 = v54;

    sub_21700ED94();
    v63 = sub_217009C34();
    v112 = v47;
    v64 = v43;
    v65 = v53;
    v66 = v42;
    v67 = v63;
    sub_217007BC4();

    v42 = v66;
    v53 = v65;
    v43 = v64;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v61, 0);
    result = (*(v48 + 8))(v50, v112);
    v54 = v140;
    v57 = v141;
    v62 = *&v167;
  }

  v68 = v143;
  v69 = v51 + v143[22];
  v70 = *(v69 + 8);
  v71 = *(v69 + 24);
  v72 = *(v51 + v143[21]);
  v73 = *(v51 + v143[25]);
  if ((v57 & 0x80000000) == 0)
  {
    if (v55 > 0.0)
    {
      v74 = v62 - (v70 + v71);
      v75 = v72 * 0.0 + (v74 * v73 - ceil(v55 + -1.0) * v72) / v55;
      if (v74 >= v75)
      {
        v76 = v75;
      }

      else
      {
        v76 = v74;
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  if (*&v55 < 1 || v54 < 1)
  {
    goto LABEL_35;
  }

  v78 = v62 - (v70 + v71);
  v80 = v53 == 1 && *&v55 == 1;
  if (v57)
  {
    if (!v80)
    {
LABEL_25:
      v81 = v78;
      goto LABEL_27;
    }

LABEL_23:
    if (v73 < 1.0)
    {
      v73 = 1.0;
    }

    goto LABEL_25;
  }

  if (v80)
  {
    goto LABEL_23;
  }

  v81 = v62 - v56;
LABEL_27:
  v82 = (v54 + -1.0) * v72 + (v73 * v81 - ceil(*&v55 + -1.0) * v72) / *&v55 * v54;
  if (v78 >= v82)
  {
    v76 = v82;
  }

  else
  {
    v76 = v78;
  }

LABEL_30:
  v83 = v114;
  *v114 = xmmword_21701D000;
  (*(v43 + 104))(v83, *MEMORY[0x277CDF108], v42);
  sub_21700B394();
  v84 = v113;
  sub_21700B284();
  if (*(v59 + 32) >= v53)
  {
    v85 = v53;
  }

  else
  {
    v85 = *(v59 + 32);
  }

  v86 = sub_216831270(v84, v85);
  v87 = v132;
  v88 = v131;
  (*(v132 + 16))(v131, v59, v68);
  v89 = (*(v87 + 80) + 72) & ~*(v87 + 80);
  v90 = (v130 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  v92 = v126;
  *(v91 + 16) = v127;
  *(v91 + 32) = v92;
  v93 = v128;
  *(v91 + 48) = v129;
  *(v91 + 56) = v93;
  *(v91 + 64) = v86;
  (*(v87 + 32))(v91 + v89, v88, v68);
  *(v91 + v90) = v76;
  *(v91 + ((v90 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;
  swift_checkMetadataState();
  *&v167 = sub_217008B54();
  *(&v167 + 1) = v94;
  v95 = v133;
  sub_217009B54();
  v96 = v137;
  v97 = v138;
  (*(v137 + 16))(v134, v95, v138);
  v98 = v135;
  sub_217009B74();
  (*(v96 + 8))(v95, v97);
  v99 = swift_checkMetadataState();
  v100 = v118;
  v101 = v144;
  v102 = v119;
  v103 = MEMORY[0x277CDE478];
  sub_21700A7B4();
  (*(v136 + 8))(v98, v101);

  swift_getKeyPath();
  v147 = v76;
  *&v167 = v99;
  *(&v167 + 1) = v101;
  *&v168 = v102;
  *(&v168 + 1) = v103;
  v104 = swift_getOpaqueTypeConformance2();
  v105 = v120;
  v106 = v123;
  sub_21700A3D4();

  (*(v121 + 8))(v100, v106);
  v107 = sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
  v145 = v104;
  v146 = v107;
  v108 = v125;
  v109 = swift_getWitnessTable();
  v110 = v122;
  sub_2166C24DC(v105, v108, v109);
  v111 = *(v124 + 8);
  v111(v105, v108);
  sub_2166C24DC(v110, v108, v109);
  return (v111)(v110, v108);
}

uint64_t sub_216831270(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = sub_21700B274();
      v5 = sub_21700E8A4();
      *(v5 + 16) = v2;
      OUTLINED_FUNCTION_16();
      v7 = v6;
      v9 = v8 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v11 = *(v10 + 16);
      while (1)
      {
        --v2;
        v11(v9, v3, v4);
        if (!v2)
        {
          break;
        }

        v9 += *(v7 + 72);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    sub_21700B274();
    OUTLINED_FUNCTION_9_0();
    (*(v12 + 8))(v3);
    return v5;
  }

  return result;
}

void *sub_21683138C(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_216839A30();
      v4 = sub_21700E8A4();
      *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
      for (i = ((v4 & 0xFFFFFFFFFFFFFF8) + 32); ; ++i)
      {
        --v2;
        *i = v3;
        if (!v2)
        {
          break;
        }

        v6 = v3;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

uint64_t sub_216831410@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, uint64_t a10, uint64_t a11)
{
  v45 = a6;
  v46 = a7;
  v43 = a4;
  v44 = a5;
  v48 = a2;
  v49 = a3;
  v47 = a1;
  v50 = a8;
  v42 = a11;
  v41 = a10;
  sub_2170075B4();
  v85 = a11;
  type metadata accessor for GridView.ItemView();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8);
  sub_2170089F4();
  sub_217009B44();
  v82 = sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  v84 = MEMORY[0x277D84038];
  sub_21700B174();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9438);
  sub_2170089F4();
  v78 = swift_getWitnessTable();
  v79 = MEMORY[0x277CDF678];
  v76 = swift_getWitnessTable();
  v77 = sub_2166D9530(&qword_280E2AD08, &qword_27CAB93E8);
  v74 = swift_getWitnessTable();
  v75 = sub_216839810(&qword_280E2A6F0, MEMORY[0x277CDE470]);
  v73 = swift_getWitnessTable();
  v71 = swift_getWitnessTable();
  v72 = sub_2166D9530(&qword_280E2AC38, &qword_27CAB9438);
  swift_getWitnessTable();
  v12 = sub_21700B454();
  v13 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  v14 = sub_2170089F4();
  v80 = v12;
  v81 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = MEMORY[0x277CDF918];
  v69 = OpaqueTypeConformance2;
  v70 = MEMORY[0x277CDF918];
  v67 = swift_getWitnessTable();
  v68 = v16;
  v65 = swift_getWitnessTable();
  v66 = v16;
  v63 = swift_getWitnessTable();
  v64 = v16;
  v39 = v14;
  v38 = swift_getWitnessTable();
  v17 = sub_217008044();
  v40 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v36 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9440);
  v20 = sub_2170089F4();
  v37 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v36 - v21;
  v23 = swift_getWitnessTable();
  v36[0] = v23;
  v24 = sub_2166D9530(&qword_280E2A8D0, &qword_27CAB9440);
  v61 = v23;
  v62 = v24;
  v25 = swift_getWitnessTable();
  v80 = v20;
  v81 = v25;
  v36[1] = MEMORY[0x277CDEA30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v27 = *(OpaqueTypeMetadata2 - 8);
  v28 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v30 = v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = v36 - v31;
  sub_217009C44();
  v51 = v43;
  v52 = v44;
  v53 = v45;
  v54 = v46;
  v55 = v41;
  v56 = v42;
  v57 = v47;
  v58 = v48;
  v59 = a9;
  v60 = v49;
  sub_217008054();
  sub_21700A564();
  (*(v40 + 8))(v19, v17);
  sub_21700A6F4();
  (*(v37 + 8))(v22, v20);
  v80 = v20;
  v81 = v25;
  v33 = swift_getOpaqueTypeConformance2();
  sub_2166C24DC(v30, OpaqueTypeMetadata2, v33);
  v34 = *(v27 + 8);
  v34(v30, OpaqueTypeMetadata2);
  sub_2166C24DC(v32, OpaqueTypeMetadata2, v33);
  return (v34)(v32, OpaqueTypeMetadata2);
}

uint64_t sub_216831B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v96 = a7;
  v97 = a8;
  v94 = a6;
  v95 = a5;
  v93 = a4;
  v100 = a2;
  v101 = a3;
  v98 = a1;
  v102 = a9;
  v92 = a11;
  v17 = sub_217009714();
  MEMORY[0x28223BE20](v17 - 8);
  v99 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2170075B4();
  v129 = a4;
  v130 = a5;
  v131 = a6;
  v132 = a7;
  v133 = a8;
  v134 = a11;
  type metadata accessor for GridView.ItemView();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8);
  sub_2170089F4();
  sub_217009B44();
  v20 = sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  v129 = v19;
  v130 = MEMORY[0x277D84030];
  v131 = v20;
  v132 = WitnessTable;
  v133 = MEMORY[0x277D84038];
  sub_21700B174();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9438);
  v22 = sub_2170089F4();
  v127 = swift_getWitnessTable();
  v128 = MEMORY[0x277CDF678];
  v23 = MEMORY[0x277CDFAD8];
  v24 = swift_getWitnessTable();
  v25 = sub_2166D9530(&qword_280E2AD08, &qword_27CAB93E8);
  v125 = v24;
  v126 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_216839810(&qword_280E2A6F0, MEMORY[0x277CDE470]);
  v123 = v26;
  v124 = v27;
  v91 = v23;
  v122 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v29 = sub_2166D9530(&qword_280E2AC38, &qword_27CAB9438);
  v120 = v28;
  v121 = v29;
  v74 = v22;
  v72 = swift_getWitnessTable();
  v30 = sub_21700B454();
  v78 = v30;
  v85 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v73 = &v67 - v31;
  v76 = swift_getWitnessTable();
  v129 = v30;
  v130 = v76;
  v81 = MEMORY[0x277CDEA40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v83 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v68 = &v67 - v32;
  v77 = sub_2170089F4();
  v86 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v69 = &v67 - v33;
  v80 = sub_2170089F4();
  v87 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v70 = &v67 - v34;
  v82 = sub_2170089F4();
  v89 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v71 = &v67 - v35;
  v88 = sub_2170089F4();
  v90 = *(v88 - 8);
  v36 = MEMORY[0x28223BE20](v88);
  v79 = &v67 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v84 = &v67 - v38;
  sub_21700DF14();
  v67 = sub_217009184();
  v40 = v93;
  v39 = v94;
  v41 = v95;
  v42 = v96;
  v129 = v93;
  v130 = v95;
  v131 = v94;
  v132 = v96;
  v43 = v97;
  v44 = v92;
  v133 = v97;
  v134 = v92;
  type metadata accessor for GridView.HorizontalGridView();
  v103 = v40;
  v104 = v41;
  v105 = v39;
  v106 = v42;
  v107 = v43;
  v108 = v44;
  v109 = v100;
  v110 = a10;
  v111 = v101;
  sub_216838394();
  v45 = v73;
  sub_21700B444();
  v46 = v68;
  v47 = v78;
  v48 = v76;
  sub_21700A714();
  (*(v85 + 8))(v45, v47);
  sub_217009CB4();
  v129 = v47;
  v130 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v69;
  v51 = OpaqueTypeMetadata2;
  sub_21700AAB4();
  (*(v83 + 8))(v46, v51);
  sub_217009CD4();
  v118 = OpaqueTypeConformance2;
  v119 = MEMORY[0x277CDF918];
  v52 = MEMORY[0x277CDF918];
  v53 = v77;
  v54 = swift_getWitnessTable();
  v55 = v70;
  sub_21700AAB4();
  (*(v86 + 8))(v50, v53);
  sub_217009C94();
  v116 = v54;
  v117 = v52;
  v56 = v80;
  v57 = swift_getWitnessTable();
  v58 = v71;
  sub_21700AAB4();
  (*(v87 + 8))(v55, v56);
  sub_217009CA4();
  v114 = v57;
  v115 = v52;
  v59 = v82;
  v60 = swift_getWitnessTable();
  v61 = v79;
  sub_21700AAB4();
  (*(v89 + 8))(v58, v59);
  v112 = v60;
  v113 = v52;
  v62 = v88;
  v63 = swift_getWitnessTable();
  v64 = v84;
  sub_2166C24DC(v61, v62, v63);
  v65 = *(v90 + 8);
  v65(v61, v62);
  sub_2166C24DC(v64, v62, v63);
  return (v65)(v64, v62);
}

uint64_t sub_216832538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v76 = a2;
  v80 = a9;
  v98 = a3;
  v99 = a4;
  v100 = a5;
  v101 = a6;
  v102 = a7;
  v103 = a8;
  v81 = a8;
  v18 = type metadata accessor for GridView.HorizontalGridView();
  v64 = *(v18 - 8);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v18);
  v82 = &v57 - v19;
  v20 = sub_2170075B4();
  v75 = v20;
  MEMORY[0x28223BE20](v20);
  v63 = &v57 - v21;
  v98 = a3;
  v99 = a4;
  v100 = a5;
  v101 = a6;
  v102 = a7;
  v103 = a8;
  v66 = type metadata accessor for GridView.ItemView();
  v67 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8);
  v71 = sub_2170089F4();
  sub_217009B44();
  v22 = sub_2170089F4();
  v72 = v22;
  WitnessTable = swift_getWitnessTable();
  v98 = v20;
  v99 = MEMORY[0x277D84030];
  v100 = v22;
  v101 = WitnessTable;
  v102 = MEMORY[0x277D84038];
  v73 = sub_21700B174();
  v78 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v57 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9438);
  v69 = sub_2170089F4();
  v79 = *(v69 - 8);
  v24 = MEMORY[0x28223BE20](v69);
  v70 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v77 = &v57 - v26;
  v59 = v18;
  v62 = a1;
  v27 = a3;
  v60 = a5;
  sub_21700EC34();
  v83 = a3;
  v28 = a4;
  v58 = a4;
  v84 = a4;
  v85 = a5;
  v86 = a6;
  v29 = a6;
  v30 = a7;
  v31 = v81;
  v87 = a7;
  v88 = v81;
  KeyPath = swift_getKeyPath();
  v32 = v64;
  (*(v64 + 16))(v82, a1, v18);
  v33 = (*(v32 + 80) + 64) & ~*(v32 + 80);
  v34 = (v65 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v35[2] = v27;
  v35[3] = v28;
  v36 = v60;
  v35[4] = v60;
  v35[5] = v29;
  v35[6] = v30;
  v35[7] = v31;
  v37 = v35 + v33;
  v38 = v59;
  (*(v32 + 32))(v37, v82, v59);
  *(v35 + v34) = a10;
  *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v39 = swift_allocObject();
  v40 = v58;
  v39[2] = v27;
  v39[3] = v40;
  v39[4] = v36;
  v39[5] = v29;
  v41 = v81;
  v39[6] = v30;
  v39[7] = v41;
  v39[8] = sub_216839980;
  v39[9] = v35;
  v96 = swift_getWitnessTable();
  v97 = MEMORY[0x277CDF678];
  v42 = swift_getWitnessTable();
  v43 = sub_2166D9530(&qword_280E2AD08, &qword_27CAB93E8);
  v94 = v42;
  v95 = v43;
  v44 = swift_getWitnessTable();
  v45 = sub_216839810(&qword_280E2A6F0, MEMORY[0x277CDE470]);
  v92 = v44;
  v93 = v45;
  v56 = swift_getWitnessTable();
  v46 = v68;
  sub_21700B154();
  sub_21700B414();
  v98 = *(v62 + *(v38 + 104));
  v91 = v56;
  v47 = v73;
  v48 = swift_getWitnessTable();
  v49 = v70;
  sub_21700AB54();

  (*(v78 + 8))(v46, v47);
  v50 = sub_2166D9530(&qword_280E2AC38, &qword_27CAB9438);
  v89 = v48;
  v90 = v50;
  v51 = v69;
  v52 = swift_getWitnessTable();
  v53 = v77;
  sub_2166C24DC(v49, v51, v52);
  v54 = *(v79 + 8);
  v54(v49, v51);
  sub_2166C24DC(v53, v51, v52);
  return (v54)(v53, v51);
}

uint64_t sub_216832D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v75 = a4;
  v76 = a3;
  v70 = a2;
  v73 = a1;
  v60 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v53 - v16;
  v61 = &v53 - v16;
  v91 = a5;
  v92 = a6;
  v93 = a7;
  v94 = a8;
  v95 = a10;
  v96 = a11;
  v69 = type metadata accessor for GridView.ItemView();
  v72 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v53 - v18;
  v71 = sub_2170089F4();
  v74 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v67 = &v53 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8);
  v20 = sub_2170089F4();
  v56 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v65 = &v53 - v21;
  sub_217009B44();
  v58 = v20;
  v54 = sub_2170089F4();
  v59 = *(v54 - 8);
  v22 = MEMORY[0x28223BE20](v54);
  v55 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v57 = &v53 - v24;
  (*(v15 + 16))(v17, v70, AssociatedTypeWitness);
  v25 = a5;
  v91 = a5;
  v92 = a6;
  v26 = a6;
  v93 = a7;
  v94 = a8;
  v62 = a8;
  v63 = a10;
  v95 = a10;
  v96 = a11;
  v64 = a11;
  v27 = type metadata accessor for GridView.HorizontalGridView();
  v28 = v76;
  v29 = (v76 + *(v27 + 92));
  v30 = *v29;
  v31 = v29[1];
  sub_21700DF14();
  v32 = a7;
  v33 = v66;
  v34 = v73;
  v35 = v31;
  v36 = v25;
  sub_216833534(v61, v73, v30, v35, *(v28 + 80), *(v28 + 88), v66);

  v37 = v69;
  WitnessTable = swift_getWitnessTable();
  sub_2166BF464();
  v39 = v67;
  sub_21700A9C4();
  (*(v72 + 8))(v33, v37);
  v77 = v36;
  v78 = v26;
  v79 = v32;
  v80 = v62;
  v40 = v65;
  v81 = v63;
  v82 = v64;
  v83 = v76;
  v84 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9430);
  v89 = WitnessTable;
  v90 = MEMORY[0x277CDF678];
  v41 = v71;
  v42 = swift_getWitnessTable();
  sub_216838A00();
  sub_2166BF464();
  sub_21700AA94();
  result = (*(v74 + 8))(v39, v41);
  if (__OFSUB__(v75, v34))
  {
    __break(1u);
  }

  else
  {
    v44 = sub_2166D9530(&qword_280E2AD08, &qword_27CAB93E8);
    v87 = v42;
    v88 = v44;
    v45 = v58;
    v46 = swift_getWitnessTable();
    v47 = v55;
    sub_21700A8B4();
    (*(v56 + 8))(v40, v45);
    v48 = sub_216839810(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    v85 = v46;
    v86 = v48;
    v49 = v54;
    v50 = swift_getWitnessTable();
    v51 = v57;
    sub_2166C24DC(v47, v49, v50);
    v52 = *(v59 + 8);
    v52(v47, v49);
    sub_2166C24DC(v51, v49, v50);
    return (v52)(v51, v49);
  }

  return result;
}

int *sub_216833534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  result = type metadata accessor for GridView.ItemView();
  *(a7 + result[17]) = a2;
  v15 = (a7 + result[18]);
  *v15 = a3;
  v15[1] = a4;
  v16 = (a7 + result[19]);
  *v16 = a5;
  v16[1] = a6;
  return result;
}

uint64_t sub_21683364C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (a1 + *(type metadata accessor for GridView.HorizontalGridView() + 96));
  v7 = *v6;
  if (v7 == 3)
  {
    result = 0;
    a2 = 0;
    v9 = 0;
    v10 = 0;
    v7 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 255;
    v14 = 0uLL;
  }

  else
  {
    v15 = v6[24];
    v17 = *(a1 + 40);
    v18 = *(v6 + 8);
    v16 = *(a1 + 56);
    v9 = *(a1 + 72);
    result = swift_getKeyPath();
    v14 = v16;
    v12 = v17;
    v11 = v18;
    v13 = 0;
    v10 = v15 & 1;
  }

  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = v13;
  *(a3 + 40) = v7;
  *(a3 + 48) = v11;
  *(a3 + 64) = v10;
  *(a3 + 72) = a2;
  *(a3 + 80) = v12;
  *(a3 + 96) = v14;
  *(a3 + 112) = v9;
  return result;
}

double sub_216833740()
{
  sub_2168337B8();
  sub_217009104();
  return v1;
}

unint64_t sub_2168337B8()
{
  result = qword_280E37F28[0];
  if (!qword_280E37F28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E37F28);
  }

  return result;
}

void sub_21683383C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_216833EE8();
    if (v1 <= 0x3F)
    {
      sub_2166D9E00(319, &qword_280E402C8, &unk_282927B80, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2166B0B84();
        if (v3 <= 0x3F)
        {
          sub_2166D9E00(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_216833F44();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21683397C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = *(sub_217008844() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_25;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((v12 + ((((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v12) + 1;
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
      if (v7 < 0x7FFFFFFF)
      {
        v19 = *(((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }

      else
      {

        return __swift_getEnumTagSinglePayload(a1, v7, v5);
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

void sub_216833BE8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

  v11 = *(sub_217008844() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((v14 + ((((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v14) + 1;
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
LABEL_46:
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
          if (v9 < 0x7FFFFFFF)
          {
            v23 = &a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v23 + 8) = 0u;
              *(v23 + 24) = 0u;
              *v23 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v23 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
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
        goto LABEL_46;
      case 4:
        *&a1[v15] = v19;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_216833EE8()
{
  result = qword_280E402C0;
  if (!qword_280E402C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E402C0);
  }

  return result;
}

void sub_216833F44()
{
  if (!qword_280E2B450)
  {
    sub_217008844();
    v0 = sub_2170080E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B450);
    }
  }
}

uint64_t sub_216833FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23)
{
  v31 = *(a6 + 16);
  *(a9 + 40) = *a6;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 56) = v31;
  *(a9 + 72) = *(a6 + 32);
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  v32 = type metadata accessor for GridView.HorizontalGridView();
  (*(*(a23 - 8) + 32))(a9 + v32[20], a17, a23);
  v33 = (a9 + v32[21]);
  *v33 = a10;
  v33[1] = a11;
  v34 = (a9 + v32[22]);
  *v34 = a12;
  v34[1] = a13;
  v34[2] = a14;
  v34[3] = a15;
  v35 = a9 + v32[23];
  v36 = *(a18 + 16);
  *v35 = *a18;
  *(v35 + 16) = v36;
  *(v35 + 32) = *(a18 + 32);
  v37 = a9 + v32[24];
  *v37 = a19;
  *(v37 + 16) = a20;
  *(v37 + 24) = a21;
  *(a9 + v32[25]) = a16;
  *(a9 + v32[26]) = a22;
  v38 = a9 + v32[27];
  result = swift_getKeyPath();
  *v38 = result;
  *(v38 + 8) = 0;
  return result;
}

uint64_t sub_216834154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v4 = sub_21700D8E4();
  v90 = *(v4 - 8);
  v91 = v4;
  MEMORY[0x28223BE20](v4);
  v89 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170099D4();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x28223BE20](v6);
  v86 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = sub_21700F164();
  v80 = *(v82 - 8);
  v9 = MEMORY[0x28223BE20](v82);
  v76 = v63 - v10;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v63 - v12;
  v71 = *(a1 + 48);
  v73 = type metadata accessor for GridItemDescriptor();
  v72 = *(v73 - 8);
  v14 = MEMORY[0x28223BE20](v73);
  v16 = v63 - v15;
  v75 = *(*(a1 + 24) - 8);
  MEMORY[0x28223BE20](v14);
  v70 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 40);
  v94 = v19;
  v95 = v18;
  v20 = v19;
  v68 = v19;
  v21 = v18;
  v69 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v67 = v63 - v23;
  v94 = v20;
  v95 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v94 = OpaqueTypeMetadata2;
  v95 = OpaqueTypeConformance2;
  v25 = OpaqueTypeMetadata2;
  v65 = OpaqueTypeMetadata2;
  v26 = OpaqueTypeConformance2;
  v66 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeMetadata2();
  v83 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v64 = v63 - v28;
  v94 = v25;
  v95 = v26;
  v29 = swift_getOpaqueTypeConformance2();
  v85 = v27;
  v94 = v27;
  v95 = v29;
  v79 = v29;
  v84 = swift_getOpaqueTypeMetadata2();
  v81 = *(v84 - 8);
  v30 = MEMORY[0x28223BE20](v84);
  v77 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v78 = v63 - v32;
  v33 = a1;
  v34 = *(v2 + *(a1 + 76));
  v35 = *(v11 + 16);
  v63[1] = v11 + 16;
  v35(v13);
  v36 = *(v2 + *(a1 + 68));
  v37 = v71;
  sub_2168301EC(v36, v16);
  v38 = v70;
  v34(v16);
  (*(v72 + 8))(v16, v73);
  v39 = v76;
  (v35)(v76, v2, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v39, 0, 1, AssociatedTypeWitness);
  v40 = v67;
  v41 = v36;
  v42 = v68;
  sub_216BE53B0(v39, v41, 0, v68, AssociatedTypeWitness, v69, v37, v67);
  (*(v80 + 8))(v39, v82);
  v43 = v38;
  v44 = v64;
  (*(v75 + 8))(v43, v42);
  v45 = v86;
  sub_2170099B4();
  v46 = v65;
  sub_21700A784();
  (*(v87 + 8))(v45, v88);
  (*(v74 + 8))(v40, v46);
  v47 = *(v33 + 56);
  (*(v47 + 8))(AssociatedTypeWitness, v47);
  v48 = (*(v47 + 16))(AssociatedTypeWitness, v47);
  if (v49)
  {
    v50 = MEMORY[0x277D837D0];
  }

  else
  {
    v48 = 0;
    v50 = 0;
    v96 = 0;
  }

  v94 = v48;
  v95 = v49;
  v97 = v50;
  v51 = (v2 + *(v33 + 72));
  v53 = *v51;
  v52 = v51[1];
  v93[3] = MEMORY[0x277D837D0];
  v93[0] = v53;
  v93[1] = v52;
  sub_21700DF14();
  v54 = v89;
  sub_21700D8D4();

  sub_2166997CC(v93, &unk_27CABF7A0);
  sub_2166997CC(&v94, &unk_27CABF7A0);
  v55 = v77;
  v56 = v85;
  v57 = v79;
  sub_21700A204();
  (*(v90 + 8))(v54, v91);
  (*(v83 + 8))(v44, v56);
  v94 = v56;
  v95 = v57;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v78;
  v60 = v84;
  sub_2166C24DC(v55, v84, v58);
  v61 = *(v81 + 8);
  v61(v55, v60);
  sub_2166C24DC(v59, v60, v58);
  return (v61)(v59, v60);
}

uint64_t sub_216834AC4(double *a1)
{
  v2 = sub_217009714();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_1();
  v210 = sub_21700B264();
  OUTLINED_FUNCTION_1();
  v208 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v209 = (v6 - v5);
  OUTLINED_FUNCTION_4_1();
  v7 = sub_21700B274();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_7();
  v207 = v9 - v8;
  v10 = *(a1 + 2);
  v249 = v10;
  v11 = *(a1 + 4);
  sub_2170075B4();
  v244 = a1;
  v259 = *(a1 + 6);
  *&v12 = v10;
  *(&v12 + 1) = a1[3];
  *&v13 = v11;
  *(&v13 + 1) = a1[5];
  v250 = v13;
  v252 = v12;
  v273 = a1[7];
  OUTLINED_FUNCTION_33_13();
  type metadata accessor for GridView.ItemView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_33_13();
  sub_21700B174();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
  sub_2170089F4();
  OUTLINED_FUNCTION_11_20();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_17();
  v268 = WitnessTable;
  v269 = sub_2166D9530(v14, &qword_27CAB93E8);
  OUTLINED_FUNCTION_4_24();
  v267 = swift_getWitnessTable();
  OUTLINED_FUNCTION_9_27();
  v15 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_5();
  v265[52] = v15;
  v266 = sub_2166D9530(v16, &qword_27CAB93F0);
  v192 = swift_getWitnessTable();
  sub_21700B494();
  OUTLINED_FUNCTION_1();
  v195 = v17;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  v193 = v19;
  v258 = v20;
  sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v200 = v21;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_105();
  v197 = v23;
  OUTLINED_FUNCTION_4_1();
  v257 = v24;
  sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v202 = v25;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_105();
  v198 = v27;
  OUTLINED_FUNCTION_4_1();
  v262 = v28;
  sub_2170089F4();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_105();
  v201 = v30;
  OUTLINED_FUNCTION_4_1();
  v248 = v31;
  v261 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v206 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  v205 = v34;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47_1();
  v204 = v36;
  v254 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F8);
  v272 = MEMORY[0x277D84038];
  OUTLINED_FUNCTION_33_13();
  sub_21700B174();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8860);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB88D8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_2170089F4();
  v265[51] = WitnessTable;
  v265[49] = swift_getWitnessTable();
  v265[50] = MEMORY[0x277CE0760];
  v37 = swift_getWitnessTable();
  v38 = MEMORY[0x277CE04A0];
  v265[47] = v37;
  v265[48] = sub_2166D9530(&qword_280E2A8D8, &qword_27CAB8860);
  v265[45] = swift_getWitnessTable();
  v265[46] = sub_2166D9530(&qword_280E2A8C8, &qword_27CAB88D8);
  v265[43] = swift_getWitnessTable();
  v265[44] = v266;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_33_13();
  sub_217009EE4();
  sub_2170086D4();
  OUTLINED_FUNCTION_23_9();
  v39 = swift_getWitnessTable();
  v40 = MEMORY[0x277CDD980];
  OUTLINED_FUNCTION_22_21();
  *&v271 = v39;
  *(&v271 + 1) = v40;
  *&v270 = swift_getOpaqueTypeMetadata2();
  v227 = OUTLINED_FUNCTION_45_7();
  *(&v270 + 1) = v227;
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_33_13();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_27_11();
  sub_2170089F4();
  OUTLINED_FUNCTION_36_7();
  v41 = sub_2170089F4();
  swift_getTupleTypeMetadata2();
  v42 = sub_21700B4E4();
  OUTLINED_FUNCTION_1();
  v230 = v43;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_105();
  v235 = v45;
  OUTLINED_FUNCTION_4_1();
  v222 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  v220 = v46;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_105();
  v219 = v48;
  OUTLINED_FUNCTION_4_1();
  v218 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_4_1();
  v217 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  v216 = v50;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_105();
  v215 = v52;
  v228 = v38;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_105();
  v229 = v39;
  v223 = *(v39 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_105();
  v221 = v55;
  v231 = v41;
  v224 = *(v41 - 8);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_0();
  v226 = v57;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_47_1();
  v234 = v59;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_1_0();
  v225 = v61;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47_1();
  v246 = v63;
  v270 = v252;
  v271 = v250;
  v272 = v259;
  OUTLINED_FUNCTION_33_13();
  v64 = type metadata accessor for GridView.HorizontalGridView();
  v247 = v42;
  v65 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v237 = v66;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_105();
  v236 = v68;
  OUTLINED_FUNCTION_16();
  v212 = v69;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_7();
  v213 = v72 - v71;
  v240 = v64;
  v73 = v244;
  OUTLINED_FUNCTION_16();
  v214 = v74;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_1_0();
  v233 = v76;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_47_1();
  v232 = v78;
  OUTLINED_FUNCTION_4_1();
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v238 = v80;
  v239 = v79;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_105();
  v256 = v82;
  OUTLINED_FUNCTION_4_1();
  v83 = sub_217008844();
  OUTLINED_FUNCTION_1();
  v243 = v84;
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_7();
  v88 = v87 - v86;
  v89 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v91 = v90;
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_7();
  v95 = v94 - v93;
  v96 = (v263 + *(v244 + 17));
  v97 = v96[4];
  v242 = v96[3];
  v98 = __swift_project_boxed_opaque_existential_1(v96, v242);
  v241 = v65;
  v106 = v263 + *(v244 + 22);
  v107 = *v106;
  v211 = *(v106 + 8);
  if (v211 == 1)
  {
    v108 = *v106;
  }

  else
  {

    sub_21700ED94();
    v189 = v83;
    v109 = sub_217009C34();
    sub_217007BC4();

    v73 = v244;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v107, 0);
    v110 = OUTLINED_FUNCTION_39_6();
    v98 = v111(v110);
    v108 = *&v270;
  }

  sub_216C0C570(v98, v99, v100, v101, v102, v103, v104, v105, v188, v189, v95, v89, v192, v193, v195, v197, v198, v200, v201, v202);
  (*(v97 + 8))(&v270, v88, v242, v97, v108);
  result = (*(v243 + 8))(v88, v83);
  v113 = v275;
  v114 = v276;
  v115 = v277;
  v116 = v278;
  v117 = v273;
  v118 = v274;
  v119 = v272;
  v282 = v272;
  v280 = v270;
  v281 = v271;
  v120 = v279;
  v121 = v270;
  v122 = (v272 >> 5) & 3;
  if (!v122)
  {
    v255 = *(&v281 + 1);
    v253 = v281;
    v124 = *(&v280 + 1);
    v125 = (v263 + v73[20]);
    v251 = *v125;
    v126 = v73;
    v127 = v125[1];
    (*(v212 + 16))(v213, v263, v249);
    v128 = v126[18];
    v129 = v263 + v126[19];
    v130 = *(v129 + 16);
    v283[0] = *v129;
    v283[1] = v130;
    v284 = *(v129 + 32);
    v131 = v119 & 0x9F;
    v132 = MEMORY[0x277CDF918];
    sub_216833FB4(v124, v253, v255, v131, v121, &v280, v251, v127, v233, v117, v118, v113, v114, v115, v116, v120, v213, v283, *(v263 + v128), *(v263 + v128 + 16), *(v263 + v128 + 24), *(v263 + v126[21]), v249);
    OUTLINED_FUNCTION_1_33();
    v133 = swift_getWitnessTable();
    v134 = OUTLINED_FUNCTION_39_6();
    sub_2166C24DC(v134, v135, v133);

    sub_2168387D4(v283, v265);
    v264 = *(v214 + 8);
    v136 = OUTLINED_FUNCTION_39_6();
    v137(v136);
    sub_2166C24DC(v232, v240, v133);
    OUTLINED_FUNCTION_0_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_39_6();
    sub_2166C2718();
    OUTLINED_FUNCTION_6_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_2_32();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_24();
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_2166C2718();
    (*(v237 + 8))(v236, v241);
    v264(v233, v240);
    v264(v232, v240);
LABEL_16:
    OUTLINED_FUNCTION_1_33();
    v183 = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_2();
    v184 = swift_getWitnessTable();
    v265[31] = v183;
    v265[32] = v184;
    v185 = swift_getWitnessTable();
    OUTLINED_FUNCTION_2_32();
    v265[29] = swift_getWitnessTable();
    v265[30] = v132;
    v265[27] = swift_getWitnessTable();
    v265[28] = v132;
    v265[25] = swift_getWitnessTable();
    v265[26] = v132;
    v265[23] = swift_getWitnessTable();
    v265[24] = v132;
    v186 = swift_getWitnessTable();
    v265[21] = v185;
    v265[22] = v186;
    v187 = swift_getWitnessTable();
    sub_2166C24DC(v256, v239, v187);
    return (*(v238 + 8))(v256, v239);
  }

  if (v122 != 1)
  {
    sub_21700B124();
    sub_21700AD34();
    v138 = sub_21700AD04();

    v139 = sub_217009C84();
    v140 = v246 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9400) + 36);
    *v140 = v138;
    *(v140 + 8) = v139;
    v141 = sub_217009CB4();
    sub_217007F24();
    v143 = v142;
    v145 = v144;
    v147 = v146;
    v149 = v148;
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9408);
    v151 = v246 + *(v150 + 36);
    *v151 = v141;
    *(v151 + 8) = v143;
    *(v151 + 16) = v145;
    *(v151 + 24) = v147;
    *(v151 + 32) = v149;
    *(v151 + 40) = 0;
    *(v246 + *(v254 + 36)) = xmmword_21701D010;
    MEMORY[0x28223BE20](v150);
    swift_checkMetadataState();
    sub_217009ED4();
    sub_2170086C4();
    sub_21700ABC4();
    (*(v220 + 8))(v219, v222);
    v152 = OUTLINED_FUNCTION_42_11();
    v153(v152, v218);
    sub_21700A794();
    (*(v216 + 8))(v215, v217);
    sub_217009C94();
    *&v283[0] = v217;
    *(&v283[0] + 1) = v227;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_21700AAB4();
    v155 = OUTLINED_FUNCTION_42_11();
    v156(v155, v228);
    sub_217009CA4();
    v265[19] = OpaqueTypeConformance2;
    v157 = MEMORY[0x277CDF918];
    v265[20] = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_4_24();
    v158 = swift_getWitnessTable();
    OUTLINED_FUNCTION_25_8();
    sub_21700AAB4();
    (*(v223 + 8))(v221, v229);
    v265[17] = v158;
    v265[18] = v157;
    v159 = swift_getWitnessTable();
    sub_2166C24DC(v226, v231, v159);
    v160 = *(v224 + 8);
    v160(v226, v231);
    v260 = v160;
    sub_216838564(v246, v225);
    *&v283[0] = v225;
    (*(v224 + 16))(v226, v234, v231);
    *(&v283[0] + 1) = v226;
    v265[0] = v254;
    v265[1] = v231;
    v265[15] = sub_2168385D4();
    v265[16] = v159;
    sub_216984F84(v283, 2, v265);
    v160(v226, v231);
    sub_2166997CC(v225, &qword_27CAB93F8);
    OUTLINED_FUNCTION_1_33();
    v161 = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_2();
    v162 = swift_getWitnessTable();
    sub_2166C2CB0();
    v265[13] = v161;
    v265[14] = v162;
    OUTLINED_FUNCTION_6_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_2_32();
    v265[11] = swift_getWitnessTable();
    v163 = MEMORY[0x277CDF918];
    v265[12] = MEMORY[0x277CDF918];
    v265[9] = swift_getWitnessTable();
    v265[10] = v163;
    v265[7] = swift_getWitnessTable();
    v265[8] = v163;
    v265[5] = swift_getWitnessTable();
    v265[6] = v163;
    swift_getWitnessTable();
    sub_2166C2718();
    (*(v237 + 8))(v236, v241);
    (*(v230 + 8))(v235, v247);
    v260(v234, v231);
    v132 = v163;
    sub_2166997CC(v246, &qword_27CAB93F8);
    goto LABEL_16;
  }

  if (v211)
  {
    v123 = *&v107;
  }

  else
  {

    sub_21700ED94();
    v164 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v107, 0);
    result = (*(v91 + 8))(v190, v191);
    v123 = *v283;
  }

  if (v121 >= 1)
  {
    v165 = v123 - (v114 + v116);
    v166 = v117 * ceil(v121 + -1.0);
    if (v165 >= v117 * 0.0 + (v120 * v165 - v166) / v121)
    {
      v167 = v117 * 0.0 + (v120 * v165 - v166) / v121;
    }

    else
    {
      v167 = v165;
    }

    v168 = sub_216A4C914(v165, v117, v167);
    *v209 = v169;
    (*(v208 + 104))(v209, *MEMORY[0x277CDF0F0], v210);
    sub_21700B394();
    sub_21700B284();
    sub_216831270(v207, v168);
    v170 = sub_2170093C4();
    MEMORY[0x28223BE20](v170);
    sub_216838394();
    sub_21700B484();
    sub_217009CB4();
    OUTLINED_FUNCTION_2_32();
    v171 = swift_getWitnessTable();
    sub_21700AAB4();
    (*(v196 + 8))(v194, v258);
    sub_217009CD4();
    v265[41] = v171;
    v172 = MEMORY[0x277CDF918];
    v265[42] = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_4_24();
    v173 = swift_getWitnessTable();
    OUTLINED_FUNCTION_25_8();
    sub_21700AAB4();
    v174 = OUTLINED_FUNCTION_42_11();
    v175(v174, v257);
    sub_217009C94();
    v265[39] = v173;
    v265[40] = v172;
    v176 = swift_getWitnessTable();
    OUTLINED_FUNCTION_25_8();
    sub_21700AAB4();
    (*(v203 + 8))(v199, v262);
    sub_217009CA4();
    v265[37] = v176;
    v265[38] = v172;
    v177 = swift_getWitnessTable();
    OUTLINED_FUNCTION_25_8();
    sub_21700AAB4();
    v178 = OUTLINED_FUNCTION_42_11();
    v179(v178, v248);
    v265[35] = v177;
    v265[36] = v172;
    v180 = swift_getWitnessTable();
    sub_2166C24DC(v205, v261, v180);
    v181 = *(v206 + 8);
    v181(v205, v261);
    sub_2166C24DC(v204, v261, v180);
    OUTLINED_FUNCTION_1_33();
    v182 = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_2();
    v265[33] = v182;
    v265[34] = swift_getWitnessTable();
    OUTLINED_FUNCTION_6_1();
    swift_getWitnessTable();
    sub_2166C2CB0();
    v181(v205, v261);
    v132 = MEMORY[0x277CDF918];
    v181(v204, v261);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2168367B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, uint64_t a4@<X3>, double a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D1>, double a10@<D3>)
{
  v101 = a8;
  v72 = sub_2170090F4();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a2;
  v120 = a3;
  v121 = a4;
  v122 = a5;
  v123 = a6;
  v124 = a7;
  v76 = a6;
  v87 = type metadata accessor for GridView();
  v82 = *(v87 - 8);
  v86 = *(v82 + 64);
  MEMORY[0x28223BE20](v87);
  v81 = &v69 - v20;
  v21 = sub_2170075B4();
  v90 = v21;
  MEMORY[0x28223BE20](v21);
  v75 = &v69 - v22;
  v119 = a2;
  v120 = a3;
  v121 = a4;
  v122 = a5;
  v123 = a6;
  v124 = a7;
  v23 = type metadata accessor for GridView.ItemView();
  v83 = v23;
  *&v89 = COERCE_DOUBLE(swift_getWitnessTable());
  v119 = v21;
  v120 = MEMORY[0x277D84030];
  v121 = v23;
  v122 = *&v89;
  v123 = MEMORY[0x277D84038];
  v85 = sub_21700B174();
  v92 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v79 = &v69 - v24;
  v88 = sub_2170089F4();
  v93 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v80 = &v69 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8860);
  v91 = sub_2170089F4();
  v94 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v84 = &v69 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB88D8);
  v27 = sub_2170089F4();
  v97 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v78 = &v69 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
  v98 = v27;
  v100 = sub_2170089F4();
  v99 = *(v100 - 8);
  v29 = MEMORY[0x28223BE20](v100);
  v95 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v96 = &v69 - v31;
  v102 = a4;
  v32 = a1;
  v77 = a1;
  sub_21700EC34();
  v103 = a2;
  v73 = a3;
  v104 = a3;
  v105 = a4;
  v106 = a5;
  v33 = v76;
  v107 = v76;
  v108 = a7;
  v34 = a7;
  KeyPath = swift_getKeyPath();
  v35 = v82;
  v36 = v81;
  v37 = v87;
  (*(v82 + 16))(v81, v32, v87);
  v38 = (*(v35 + 80) + 64) & ~*(v35 + 80);
  v39 = swift_allocObject();
  *(v39 + 2) = a2;
  v39[3] = a3;
  *(v39 + 4) = v102;
  v39[5] = a5;
  *(v39 + 6) = v33;
  *(v39 + 7) = v34;
  (*(v35 + 32))(v39 + v38, v36, v37);
  v40 = swift_allocObject();
  v41 = v73;
  *(v40 + 2) = a2;
  v40[3] = v41;
  *(v40 + 4) = v102;
  v40[5] = a5;
  *(v40 + 6) = v33;
  *(v40 + 7) = v34;
  *(v40 + 8) = sub_216838880;
  *(v40 + 9) = v39;
  WitnessTable = swift_getWitnessTable();
  v42 = v79;
  sub_21700B154();
  sub_217009394();
  v118 = WitnessTable;
  v43 = v85;
  v44 = swift_getWitnessTable();
  v45 = v80;
  sub_21700A544();
  (*(v92 + 8))(v42, v43);
  v119 = 0;
  v120 = a9;
  v121 = 0;
  v122 = a10;
  LOBYTE(v123) = 0;
  v116 = v44;
  v117 = MEMORY[0x277CE0760];
  v46 = v88;
  v47 = swift_getWitnessTable();
  v48 = v84;
  sub_21700A514();
  v49 = v78;
  (*(v93 + 8))(v45, v46);
  v115 = COERCE_DOUBLE(sub_21700ACD4());
  v50 = sub_2166D9530(&qword_280E2A8D8, &qword_27CAB8860);
  v113 = v47;
  v114 = v50;
  v51 = v91;
  v52 = swift_getWitnessTable();
  sub_21700A674();

  (*(v94 + 8))(v48, v51);
  swift_getKeyPath();
  v53 = v77 + *(v37 + 88);
  v54 = *v53;
  if (*(v53 + 8) == 1)
  {
    v55 = *v53;
  }

  else
  {

    sub_21700ED94();
    v56 = sub_217009C34();
    sub_217007BC4();

    v57 = v70;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v54, 0);
    (*(v71 + 8))(v57, v72);
    v55 = v115;
  }

  v115 = v55 - (a9 + a10);
  v58 = sub_2166D9530(&qword_280E2A8C8, &qword_27CAB88D8);
  v111 = v52;
  v112 = v58;
  v59 = v98;
  v60 = swift_getWitnessTable();
  v61 = v95;
  sub_21700A3D4();

  (*(v97 + 8))(v49, v59);
  v62 = sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
  v109 = v60;
  v110 = v62;
  v63 = v100;
  v64 = swift_getWitnessTable();
  v65 = v96;
  sub_2166C24DC(v61, v63, v64);
  v66 = *(v99 + 8);
  v66(v61, v63);
  sub_2166C24DC(v65, v63, v64);
  return (v66)(v65, v63);
}

uint64_t sub_21683733C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v42 = a2;
  v43 = a3;
  v44 = a1;
  v45 = a9;
  v38 = a10;
  v39 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v34 - v16;
  v35 = &v34 - v16;
  v36 = a4;
  v46 = a4;
  v47 = a5;
  v18 = a4;
  v19 = a5;
  v37 = a5;
  v34 = a6;
  v48 = a6;
  v49 = a7;
  v50 = a8;
  v51 = a10;
  v20 = type metadata accessor for GridView.ItemView();
  v41 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v34 - v24;
  (*(v15 + 16))(v17, v42, AssociatedTypeWitness);
  v46 = v18;
  v47 = v19;
  v48 = a6;
  v49 = v39;
  v50 = a8;
  v51 = v38;
  v26 = type metadata accessor for GridView();
  v27 = v43;
  v28 = (v43 + *(v26 + 76));
  v29 = *v28;
  v30 = v28[1];
  sub_21700DF14();
  sub_216833534(v35, v44, v29, v30, *(v27 + *(v26 + 80)), *(v27 + *(v26 + 80) + 8), v23);
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v23, v20, WitnessTable);
  v32 = *(v41 + 8);

  v32(v23, v20);
  sub_2166C24DC(v25, v20, WitnessTable);
  return (v32)(v25, v20);
}

uint64_t sub_216837618@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, double a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v74 = a2;
  v77 = a9;
  v91 = a3;
  v92 = a4;
  v79 = a4;
  v93 = a5;
  v94 = a6;
  v95 = a7;
  v96 = a8;
  v65 = type metadata accessor for GridView();
  v63 = *(v65 - 8);
  v18 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = &v58 - v19;
  *&v20 = COERCE_DOUBLE(sub_2170075B4());
  v72 = v20;
  MEMORY[0x28223BE20](v20);
  v61 = &v58 - v21;
  v91 = a3;
  v92 = a4;
  v93 = a5;
  v94 = a6;
  v22 = a6;
  v95 = a7;
  v96 = a8;
  v23 = a7;
  v24 = a8;
  v67 = type metadata accessor for GridView.ItemView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8);
  v25 = sub_2170089F4();
  v69 = v25;
  WitnessTable = swift_getWitnessTable();
  v91 = *&v20;
  v92 = MEMORY[0x277D84030];
  v93 = v25;
  v94 = WitnessTable;
  v95 = MEMORY[0x277D84038];
  v68 = sub_21700B174();
  v75 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v58 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
  v70 = sub_2170089F4();
  v76 = *(v70 - 8);
  v27 = MEMORY[0x28223BE20](v70);
  v66 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v73 = &v58 - v29;
  v78 = a3;
  v30 = a5;
  v59 = a5;
  v31 = a1;
  sub_21700EC34();
  v32 = v79;
  v80 = a3;
  v81 = v79;
  v82 = v30;
  v83 = v22;
  v84 = v23;
  v85 = v24;
  KeyPath = swift_getKeyPath();
  v33 = v63;
  v34 = v62;
  v35 = v65;
  (*(v63 + 16))(v62, v31, v65);
  v36 = (*(v33 + 80) + 64) & ~*(v33 + 80);
  v37 = (v18 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 2) = v78;
  *(v38 + 3) = v32;
  v39 = v59;
  *(v38 + 4) = v59;
  *(v38 + 5) = v22;
  *(v38 + 6) = v23;
  *(v38 + 7) = v24;
  (*(v33 + 32))(&v38[v36], v34, v35);
  v40 = &v38[v37];
  v41 = v74;
  v42 = v74[1];
  *v40 = *v74;
  *(v40 + 1) = v42;
  v40[32] = *(v41 + 32);
  v43 = swift_allocObject();
  v44 = v79;
  v43[2] = v78;
  *(v43 + 3) = v44;
  *(v43 + 4) = v39;
  *(v43 + 5) = v22;
  *(v43 + 6) = v23;
  *(v43 + 7) = v24;
  *(v43 + 8) = sub_216838914;
  *(v43 + 9) = v38;
  v45 = swift_getWitnessTable();
  v46 = sub_2166D9530(&qword_280E2AD08, &qword_27CAB93E8);
  v89 = v45;
  v90 = v46;
  v57 = swift_getWitnessTable();
  v47 = v64;
  sub_21700B154();
  swift_getKeyPath();
  v91 = a10;
  v88 = v57;
  v48 = v68;
  v49 = swift_getWitnessTable();
  v50 = v66;
  sub_21700A3D4();

  (*(v75 + 8))(v47, v48);
  v51 = sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
  v86 = v49;
  v87 = v51;
  v52 = v70;
  v53 = swift_getWitnessTable();
  v54 = v73;
  sub_2166C24DC(v50, v52, v53);
  v55 = *(v76 + 8);
  v55(v50, v52);
  sub_2166C24DC(v54, v52, v53);
  return (v55)(v54, v52);
}

uint64_t sub_216837CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v57 = a4;
  v53 = a3;
  v51 = a2;
  v54 = a1;
  v59 = a9;
  v48 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v45 - v17;
  v72 = a5;
  v73 = a6;
  v46 = a5;
  v47 = a6;
  v74 = a7;
  v75 = a8;
  v76 = a10;
  v77 = a11;
  v49 = type metadata accessor for GridView.ItemView();
  v56 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v60 = &v45 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8);
  v52 = sub_2170089F4();
  v58 = *(v52 - 8);
  v20 = MEMORY[0x28223BE20](v52);
  v50 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v55 = &v45 - v22;
  (*(v16 + 16))(v18, v51, AssociatedTypeWitness);
  v72 = a5;
  v73 = a6;
  v23 = v48;
  v74 = v48;
  v75 = a8;
  v24 = a8;
  v76 = a10;
  v77 = a11;
  v25 = type metadata accessor for GridView();
  v26 = v53;
  v27 = (v53 + *(v25 + 76));
  v29 = *v27;
  v28 = v27[1];
  sub_21700DF14();
  v30 = v18;
  v31 = v54;
  v32 = v28;
  v33 = v46;
  v34 = v47;
  sub_216833534(v30, v54, v29, v32, *(v26 + *(v25 + 80)), *(v26 + *(v25 + 80) + 8), v60);
  v61 = v33;
  v62 = v34;
  v63 = v23;
  v64 = v24;
  v65 = a10;
  v66 = a11;
  v67 = v26;
  v68 = v31;
  v69 = v57;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9430);
  v35 = v49;
  WitnessTable = swift_getWitnessTable();
  sub_216838A00();
  sub_2166BF464();
  v37 = v50;
  v38 = v60;
  sub_21700AA94();
  (*(v56 + 8))(v38, v35);
  v39 = sub_2166D9530(&qword_280E2AD08, &qword_27CAB93E8);
  v70 = WitnessTable;
  v71 = v39;
  v40 = v52;
  v41 = swift_getWitnessTable();
  v42 = v55;
  sub_2166C24DC(v37, v40, v41);
  v43 = *(v58 + 8);
  v43(v37, v40);
  sub_2166C24DC(v42, v40, v41);
  return (v43)(v42, v40);
}

uint64_t sub_2168381E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = *(a3 + 32);
  v11 = (a1 + *(type metadata accessor for GridView() + 72));
  v12 = *v11;
  if (v12 == 3)
  {
    result = 0;
    a2 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v14 = 0;
    v12 = 0;
    v15 = 0uLL;
    v16 = 255;
  }

  else
  {
    v17 = v11[24];
    v18 = *(v11 + 8);
    result = swift_getKeyPath();
    v15 = v18;
    v16 = 0;
    v14 = v17 & 1;
  }

  *a4 = result;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = v16;
  *(a4 + 40) = v12;
  *(a4 + 48) = v15;
  *(a4 + 64) = v14;
  *(a4 + 72) = a2;
  *(a4 + 80) = v6;
  *(a4 + 88) = v7;
  *(a4 + 96) = v8;
  *(a4 + 104) = v9;
  *(a4 + 112) = v10;
  return result;
}

uint64_t sub_2168382F0(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_216838394()
{
  sub_217009714();
  sub_216839810(&qword_280E2A8F0, MEMORY[0x277CE0428]);
  return sub_21700F9B4();
}

uint64_t sub_216838448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2168384AC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_2168384AC()
{
  result = qword_280E4A498;
  if (!qword_280E4A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E4A498);
  }

  return result;
}

uint64_t sub_216838564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2168385D4()
{
  result = qword_27CAB9410;
  if (!qword_27CAB9410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F8);
    sub_216838660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9410);
  }

  return result;
}

unint64_t sub_216838660()
{
  result = qword_27CAB9418;
  if (!qword_27CAB9418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9408);
    sub_2168386EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9418);
  }

  return result;
}

unint64_t sub_2168386EC()
{
  result = qword_27CAB9420;
  if (!qword_27CAB9420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9400);
    sub_216839810(&qword_27CAB9428, MEMORY[0x277CDF088]);
    sub_2166D9530(&qword_280E2A840, &qword_27CAB7BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9420);
  }

  return result;
}

uint64_t sub_216838830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

unint64_t sub_216838A00()
{
  result = qword_280E43760;
  if (!qword_280E43760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9430);
    sub_216838A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E43760);
  }

  return result;
}

unint64_t sub_216838A84()
{
  result = qword_280E43768;
  if (!qword_280E43768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E43768);
  }

  return result;
}

unint64_t sub_216838AE0()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = sub_2166B0B84();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216838BA0(_DWORD *a1, unsigned int a2)
{
  result = swift_getAssociatedTypeWitness();
  v5 = *(*(result - 8) + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(*(result - 8) + 84);
  }

  v7 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v15 = *(((((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v5, result);
    }
  }

  else
  {
    v8 = ((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = a2 - v6 + 1;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = v13 - 1;
        if (v9)
        {
          v14 = 0;
          LODWORD(v9) = *a1;
        }

        result = v6 + (v9 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_216838D58(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v13 = 0;
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = a3 - v8 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v13)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v16 = ((((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v16 = a2 & 0x7FFFFFFF;
              v16[1] = 0;
            }

            else
            {
              v16[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v8;
    }

    else
    {
      v14 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v8 + a2;
      bzero(a1, v10);
      *a1 = v15;
    }

    switch(v13)
    {
      case 1:
        *(a1 + v10) = v14;
        break;
      case 2:
        *(a1 + v10) = v14;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v10) = v14;
        break;
      default:
        return;
    }
  }
}

void sub_216838F7C()
{
  sub_2166B0B84();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_2166D9E00(319, &qword_280E402C8, &unk_282927B80, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2166D9E00(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2168390C8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    v17 = (((result & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((v17 + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  else
  {
    v9 = ((((((((((*(*(v4 - 8) + 64) + ((v7 + 96) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = (v14 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v16 = *result;
        }

        else
        {
          v15 = 0;
          v16 = *result;
        }

        result = v8 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_216839254(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((((((*(*(v6 - 8) + 64) + ((v10 + 96) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          v18 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8);
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((v18 + v10 + 16) & ~v10, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
              v18[1] = 0;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *v18 = v19;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v17;
        break;
      case 2:
        *(a1 + v11) = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v11) = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216839478()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_2168394F0(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return __swift_getEnumTagSinglePayload(result, v5, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload(result, v5, v4);
}

void sub_2168395F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216839810(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216839A30()
{
  result = qword_27CAB9448;
  if (!qword_27CAB9448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CAB9448);
  }

  return result;
}

uint64_t sub_216839AA0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v58 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  sub_21700D7A4();
  OUTLINED_FUNCTION_2_0();
  sub_21700CE04();
  v47 = v7;
  v19 = *(v7 + 16);
  v55 = a2;
  v53 = v5;
  v20 = v5;
  v21 = v58;
  v48 = v19;
  v49 = v7 + 16;
  v19(v10, a2, v20);
  v50 = v10;
  sub_21700D734();
  v51 = a1;
  sub_21700CE04();
  v22 = sub_21700CDB4();
  v24 = v23;
  v25 = *(v21 + 8);
  v52 = v11;
  v58 = v21 + 8;
  v25(v16, v11);
  if (v24)
  {
    v26 = type metadata accessor for SearchLandingBrickLockup();
    v56 = v22;
    v57 = v24;
    v27 = v25;
    v28 = v54;
    sub_21700F364();
    type metadata accessor for Artwork();
    sub_21700CE04();
    v48(v50, v55, v53);
    sub_2166D5F54(&qword_280E2BF60, type metadata accessor for Artwork);
    sub_21700D734();
    OUTLINED_FUNCTION_3_37();
    v29 = sub_21700CDB4();
    v31 = v30;
    v32 = v52;
    v27(v18, v52);
    v33 = (v28 + *(v26 + 28));
    *v33 = v29;
    v33[1] = v31;
    OUTLINED_FUNCTION_3_37();
    sub_21700D2E4();
    v27(v18, v32);
    v46 = v27;
    sub_21700CE04();
    v34 = sub_21700CDB4();
    v36 = v35;
    v27(v18, v32);
    v37 = (v28 + *(v26 + 32));
    *v37 = v34;
    v37[1] = v36;
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    v38 = v55;
    v39 = v53;
    v48(v50, v55, v53);
    sub_2166D5F54(qword_280E40390, type metadata accessor for ContentDescriptor);
    sub_21700D734();
    (*(v47 + 8))(v38, v39);
    return v46(v51, v52);
  }

  else
  {
    v41 = sub_21700E2E4();
    sub_2166D5F54(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v43 = v42;
    v44 = type metadata accessor for SearchLandingBrickLockup();
    *v43 = 25705;
    v43[1] = 0xE200000000000000;
    v43[2] = v44;
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D22530], v41);
    swift_willThrow();
    (*(v47 + 8))(v55, v53);
    v25(v51, v52);
    return sub_2167B0250(v54);
  }
}

void sub_21683A0DC()
{
  OUTLINED_FUNCTION_49();
  swift_allocObject();
  OUTLINED_FUNCTION_194();
  sub_21683D578();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21683A160()
{
  OUTLINED_FUNCTION_0_1();

  v0 = sub_2166DDC34();

  if ((~v0 & 0xF000000000000007) != 0)
  {
    result = v0;
    if (!(v0 >> 62))
    {
      return result;
    }

    OUTLINED_FUNCTION_51();
    sub_2166DE78C(v2);
  }

  return sub_21684202C();
}

uint64_t sub_21683A20C()
{
  OUTLINED_FUNCTION_33();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v5 = sub_217007CA4();
  v1[15] = v5;
  OUTLINED_FUNCTION_2(v5);
  v1[16] = v6;
  v1[17] = OUTLINED_FUNCTION_255();
  v1[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v1[19] = v7;
  OUTLINED_FUNCTION_2(v7);
  v1[20] = v8;
  v1[21] = OUTLINED_FUNCTION_80();
  v9 = sub_21700D2A4();
  v1[22] = v9;
  OUTLINED_FUNCTION_2(v9);
  v1[23] = v10;
  v1[24] = OUTLINED_FUNCTION_255();
  v1[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v1[26] = v11;
  OUTLINED_FUNCTION_2(v11);
  v1[27] = v12;
  v1[28] = OUTLINED_FUNCTION_80();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  OUTLINED_FUNCTION_36(v13);
  v1[29] = OUTLINED_FUNCTION_255();
  v1[30] = swift_task_alloc();
  v14 = sub_217005EF4();
  v1[31] = v14;
  OUTLINED_FUNCTION_2(v14);
  v1[32] = v15;
  v1[33] = OUTLINED_FUNCTION_80();
  v16 = sub_21700D284();
  v1[34] = v16;
  OUTLINED_FUNCTION_2(v16);
  v1[35] = v17;
  v1[36] = OUTLINED_FUNCTION_80();
  v18 = type metadata accessor for ProcessDeepLinkAction();
  v1[37] = v18;
  OUTLINED_FUNCTION_36(v18);
  v1[38] = OUTLINED_FUNCTION_255();
  v1[39] = swift_task_alloc();
  v19 = swift_task_alloc();
  v1[40] = v19;
  *v19 = v1;
  v19[1] = sub_21683A4FC;

  return sub_2166DE4E0();
}

uint64_t sub_21683A4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_69_0();
  v17 = v16;
  OUTLINED_FUNCTION_11();
  *v18 = v17;
  *v18 = *v15;
  v17[41] = v19;

  if (v14)
  {
    v33 = v17[21];
    v34 = v17[18];

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_120();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, v33, v34, v14, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_120();

    return MEMORY[0x2822009F8](v29, v30, v31);
  }
}

uint64_t sub_21683A6B4()
{
  OUTLINED_FUNCTION_15_11();
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[30];
  v5 = v0[12];
  v4 = v0[13];
  sub_21700D234();
  OUTLINED_FUNCTION_29_9();
  v6(v1, v5, v2);
  sub_216683A80(v4, v3, &qword_27CAB6FD0);
  v7 = OUTLINED_FUNCTION_38();
  v8(v7);
  OUTLINED_FUNCTION_103_4();
  v9();
  v10 = type metadata accessor for ReferrerInfo();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v10);
  v13 = v0[29];
  v12 = v0[30];
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
    if (__swift_getEnumTagSinglePayload(v12, 1, v10) != 1)
    {
      sub_216697664(v0[30], &qword_27CAB6FD0);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_116();
    sub_216845158(v17, v18);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v10);
  }

  v20 = v0[38];
  v19 = v0[39];
  v21 = v0[37];
  v23 = v0[20];
  v22 = v0[21];
  v24 = v0[19];
  sub_2167C5834(v0[29], v20 + *(v21 + 24), &qword_27CAB6FD0);
  *(v20 + *(v21 + 28)) = 1;
  sub_216845158(v20, v19);
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_229();
  sub_21700E094();
  v0[5] = v21;
  v0[6] = sub_2166C2594(&qword_27CAB7D08);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2168451B0(v19, boxed_opaque_existential_1);
  (*(v23 + 104))(v22, *MEMORY[0x277D21E18], v24);
  OUTLINED_FUNCTION_191();
  v0[42] = sub_21700D5E4();
  v26 = OUTLINED_FUNCTION_116();
  v27(v26);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v28 = OUTLINED_FUNCTION_116();
  __swift_instantiateConcreteTypeFromMangledNameV2(v28);
  sub_216844C20(&qword_280E2A120);
  v29 = swift_task_alloc();
  v0[43] = v29;
  *v29 = v0;
  v29[1] = sub_21683AA18;
  OUTLINED_FUNCTION_120();

  return MEMORY[0x282180360](v30);
}

uint64_t sub_21683AA18()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 352) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21683AB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v18 = v16[24];
  OUTLINED_FUNCTION_29_9();
  v19(v18);
  v20 = OUTLINED_FUNCTION_38();
  v22 = v21(v20);
  if (v22 == *MEMORY[0x277D21CA8])
  {
    OUTLINED_FUNCTION_176_1();
    v23 = OUTLINED_FUNCTION_108();
    v24(v23);
    v25 = OUTLINED_FUNCTION_116();
    v26(v25);
    OUTLINED_FUNCTION_23_10();
    sub_216845208(v18, v27);
    *v17 = 0;
  }

  else if (v22 == *MEMORY[0x277D21CA0])
  {
    OUTLINED_FUNCTION_176_1();
    v28 = OUTLINED_FUNCTION_108();
    v29(v28);
    v30 = OUTLINED_FUNCTION_116();
    v31(v30);
    OUTLINED_FUNCTION_23_10();
    sub_216845208(v18, v32);
    *v17 = 1;
  }

  else
  {
    sub_2166C7454(v16[17]);
    v33 = sub_217007C84();
    v34 = sub_21700ED84();
    if (OUTLINED_FUNCTION_9_3(v34))
    {
      v35 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v35);
      OUTLINED_FUNCTION_121(&dword_216679000, v36, v37, "Unknown ActionOutcome case.");
      OUTLINED_FUNCTION_26_4();
    }

    v38 = v16[27];
    v40 = v16[25];
    v39 = v16[26];
    v41 = v16[23];
    v57 = v16[39];
    v59 = v16[24];
    v42 = v16[22];
    v43 = v16[16];
    v44 = v16[17];
    v45 = v16[15];
    a10 = v16[28];
    a11 = v16[11];

    (*(v43 + 8))(v44, v45);
    v46 = *(v41 + 8);
    v46(v40, v42);
    (*(v38 + 8))(a10, v39);
    OUTLINED_FUNCTION_23_10();
    sub_216845208(v57, v47);
    *a11 = 1;
    v46(v59, v42);
  }

  v58 = v16[18];
  v60 = v16[17];

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, v58, v60, a14, a15, a16);
}

uint64_t sub_21683ADEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_142();
  a22 = v24;
  v27 = v24[44];
  sub_2166C7454(v24[18]);
  v28 = v27;
  v29 = sub_217007C84();
  v30 = sub_21700ED84();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    a12 = swift_slowAlloc();
    *v31 = 136446466;
    *(v31 + 4) = sub_2166A85FC(0xD000000000000018, 0x8000000217082DC0, &a12);
    *(v31 + 12) = 2082;
    swift_getErrorValue();
    v32 = sub_21700F884();
    v34 = sub_2166A85FC(v32, v33, &a12);

    *(v31 + 14) = v34;
    _os_log_impl(&dword_216679000, v29, v30, "Unable to perform '%{public}s' error='%{public}s'", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    v35 = OUTLINED_FUNCTION_115();
    v36(v35);
  }

  else
  {
    v37 = v24[18];
    v38 = v24[15];
    v39 = v24[16];

    (*(v39 + 8))(v37, v38);
  }

  v40 = v24[39];
  swift_willThrow();

  v41 = OUTLINED_FUNCTION_108();
  v42(v41);
  OUTLINED_FUNCTION_23_10();
  sub_216845208(v40, v43);
  v53 = v24[18];
  v54 = v24[17];
  v55 = v24[44];

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, v53, v54, v55, a12, a13, a14, a15, a16);
}

uint64_t sub_21683B084()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[17] = v5;
  if (v5)
  {
    swift_willThrow();
  }

  else
  {

    v2[18] = v2[10];
  }

  OUTLINED_FUNCTION_256();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21683B1C4()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21683B228()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_21683B284@<X0>(void *a1@<X8>)
{
  sub_2166EF8A4(*(v1 + 32), a1);
}

uint64_t sub_21683B2C0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_0_1();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  type metadata accessor for BootstrapState();
  sub_2166C2594(&qword_280E43828);

  OUTLINED_FUNCTION_82_2();
  result = sub_217008684();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = sub_216844C10;
  *(a2 + 24) = v4;
  *(a2 + 32) = 0;
  return result;
}

void sub_21683B394()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v384 = v2;
  v387 = v3;
  v4 = *(*v0 + 88);
  OUTLINED_FUNCTION_230();
  v5 = type metadata accessor for AppDestinationFullScreenCoverPageView();
  v6 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v370 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v369 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D40);
  v397 = v6;
  v377 = v10;
  v11 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v380 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  v381 = v14;
  v395 = v5;
  v375 = *(v5 - 8);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v350 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47_1();
  v368 = v18;
  OUTLINED_FUNCTION_28_6();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v366 = v20;
  v367 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v349 = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_47_1();
  v365 = v23;
  v24 = OUTLINED_FUNCTION_4_1();
  v25 = type metadata accessor for MusicAppDestinationContext(v24);
  v26 = OUTLINED_FUNCTION_36(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  v355 = v27;
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_230();
  v28 = type metadata accessor for AppDestinationSheetPageView();
  OUTLINED_FUNCTION_1();
  v374 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_0();
  v364 = v31;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47_1();
  v363 = v33;
  OUTLINED_FUNCTION_28_6();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v361 = v35;
  v362 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  v348 = v36;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47_1();
  v360 = v38;
  OUTLINED_FUNCTION_230();
  v39 = type metadata accessor for ModalNavigationStack();
  v396 = v28;
  v40 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v359 = v41;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_105();
  v358 = v43;
  v371 = *(v4 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_105();
  v372 = v45;
  v394 = v39;
  v373 = *(v39 - 8);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_0();
  v357 = v47;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_47_1();
  v356 = v49;
  v50 = OUTLINED_FUNCTION_4_1();
  v51 = type metadata accessor for FlowAction(v50);
  v52 = OUTLINED_FUNCTION_36(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1_0();
  v347 = v53;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_47_1();
  v354 = v55;
  OUTLINED_FUNCTION_4_1();
  v351 = type metadata accessor for CommerceWebView();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_0();
  v353 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9500);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v59);
  v61 = &v346 - v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D38);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_105();
  v352 = v63;
  OUTLINED_FUNCTION_4_1();
  v376 = v64;
  v393 = v40;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v379 = v65;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_105();
  v378 = v67;
  OUTLINED_FUNCTION_4_1();
  v390 = v68;
  v392 = v11;
  v69 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v383 = v70;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_105();
  v382 = v72;
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_230();
  v73 = type metadata accessor for PresentationItem.Destination();
  OUTLINED_FUNCTION_1();
  v75 = v74;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v76);
  v78 = &v346 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D48);
  v391 = v69;
  v80 = v384;
  v388 = v79;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v385 = v82;
  v386 = v81;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_105();
  v389 = v84;
  (*(v75 + 16))(v78, &v80[*(*v80 + 520)], v73);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_108_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30);
      type metadata accessor for ObjectGraph();

      OUTLINED_FUNCTION_227();
      OUTLINED_FUNCTION_60_0();
      sub_21700E094();

      sub_2168450A8(v489, &v478);
      v483 = 1;
      sub_216785EF8();
      OUTLINED_FUNCTION_138_1();
      OUTLINED_FUNCTION_149_1();
      OUTLINED_FUNCTION_1_5();
      WitnessTable = swift_getWitnessTable();
      v226 = sub_216785E20();
      v476 = WitnessTable;
      v477 = v226;
      OUTLINED_FUNCTION_42_3();
      v227 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      OUTLINED_FUNCTION_103_4();
      v229 = sub_2166B51C0(v228);
      OUTLINED_FUNCTION_72_5();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_103_4();
      sub_216697664(v230, v231);
      v232 = sub_216785CE8();
      OUTLINED_FUNCTION_0_17();
      v233 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v234 = swift_getWitnessTable();
      v474 = v233;
      v475 = v234;
      v235 = OUTLINED_FUNCTION_197_0();
      v472 = v232;
      v473 = v235;
      v236 = OUTLINED_FUNCTION_135_0();
      v470 = v227;
      v471 = v229;
      v237 = OUTLINED_FUNCTION_134_0();
      OUTLINED_FUNCTION_30_8();
      sub_2166C2CB0();
      v238 = OUTLINED_FUNCTION_237_0();
      v239(v238);
      v468 = v236;
      v469 = v237;
      goto LABEL_9;
    case 2u:
      v142 = v365;
      v141 = v366;
      v143 = v78;
      v144 = v367;
      (*(v366 + 32))(v365, v143, v367);
      (*(v141 + 16))(v349, v142, v144);
      OUTLINED_FUNCTION_235();
      (*(v371 + 16))(v372, v1 + *(v145 + 200), v4);
      v146 = v355;
      sub_2168451B0(&v80[*(*v80 + 528)], v355);
      v147 = v350;
      v148 = OUTLINED_FUNCTION_108();
      sub_216B46820(v148, v149, v146, v4, v150);
      OUTLINED_FUNCTION_1_5();
      v151 = v395;
      v152 = swift_getWitnessTable();
      OUTLINED_FUNCTION_28_6();
      sub_2166C24DC(v153, v154, v155);
      v156 = *(v375 + 8);
      v375 += 8;
      v384 = v156;
      (v156)(v147, v151);
      OUTLINED_FUNCTION_28_6();
      sub_2166C24DC(v157, v158, v159);
      v160 = sub_216785E20();
      sub_2166C2718();
      v446 = v152;
      v447 = v160;
      OUTLINED_FUNCTION_42_3();
      v161 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v163 = sub_2166B51C0(v162);
      OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2718();
      v164 = OUTLINED_FUNCTION_104_0();
      v165(v164);
      v166 = sub_216785CE8();
      OUTLINED_FUNCTION_0_17();
      v167 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v168 = swift_getWitnessTable();
      v444 = v167;
      v445 = v168;
      v169 = OUTLINED_FUNCTION_197_0();
      v442 = v166;
      v443 = v169;
      v170 = OUTLINED_FUNCTION_135_0();
      v440 = v161;
      v441 = v163;
      v171 = OUTLINED_FUNCTION_134_0();
      v173 = v381;
      v172 = v382;
      sub_2166C2CB0();
      (*(v380 + 8))(v173, v73);
      v438 = v170;
      v439 = v171;
      OUTLINED_FUNCTION_198();
      sub_216785F4C();
      OUTLINED_FUNCTION_29_11();
      sub_2166C2718();
      v174 = OUTLINED_FUNCTION_42_12();
      v175(v174, v173);
      v176 = v384;
      (v384)(v147, v172);
      (v176)(v368, v172);
      (*(v366 + 8))(v365, v367);
      break;
    case 3u:
      v178 = v360;
      v177 = v361;
      v179 = v78;
      v180 = v362;
      (*(v361 + 32))(v360, v179, v362);
      v181 = v348;
      (*(v177 + 16))(v348, v178, v180);
      OUTLINED_FUNCTION_235();
      v182 = OUTLINED_FUNCTION_190();
      v183(v182);
      v184 = v355;
      sub_2168451B0(&v80[*(*v80 + 528)], v355);
      sub_216C43050(v181, v177, v184, v4, v364);
      OUTLINED_FUNCTION_4_8();
      v185 = v396;
      v186 = swift_getWitnessTable();
      v187 = v363;
      v188 = OUTLINED_FUNCTION_119();
      sub_2166C24DC(v188, v189, v186);
      v190 = *(v374 + 8);
      v374 += 8;
      v384 = v190;
      v191 = OUTLINED_FUNCTION_119();
      v192(v191);
      sub_2166C24DC(v187, v185, v186);
      OUTLINED_FUNCTION_0_17();
      v193 = swift_getWitnessTable();
      sub_2166C2CB0();
      v194 = sub_216785CE8();
      v436 = v193;
      v437 = v186;
      OUTLINED_FUNCTION_42_3();
      v195 = v393;
      v196 = swift_getWitnessTable();
      sub_2166C2CB0();
      v197 = OUTLINED_FUNCTION_42_11();
      v198(v197, v195);
      v434 = v194;
      v435 = v196;
      v199 = OUTLINED_FUNCTION_135_0();
      OUTLINED_FUNCTION_1_5();
      v200 = swift_getWitnessTable();
      v201 = sub_216785E20();
      v432 = v200;
      v433 = v201;
      v202 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v204 = sub_2166B51C0(v203);
      v430 = v202;
      v431 = v204;
      OUTLINED_FUNCTION_134_0();
      OUTLINED_FUNCTION_167();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2718();
      v205 = OUTLINED_FUNCTION_114_2();
      v206(v205, v195);
      v428 = v199;
      v429 = v202;
      v207 = v391;
      swift_getWitnessTable();
      sub_216785F4C();
      sub_2166C2718();
      v208 = OUTLINED_FUNCTION_42_11();
      v209(v208, v207);
      v210 = v384;
      (v384)(v364, v185);
      (v210)(v363, v185);
      (*(v361 + 8))(v360, v362);
      break;
    case 4u:
      v100 = *v78;
      v101 = *(v78 + 1);
      type metadata accessor for CommerceWebViewModel();
      sub_2166C2594(&qword_27CAB9508);
      v384 = v100;

      v102 = v353;
      OUTLINED_FUNCTION_51();
      sub_21700B204();
      *(v102 + *(v351 + 20)) = v101;
      v103 = OUTLINED_FUNCTION_109_2();
      sub_2168451B0(v103, v104);
      swift_storeEnumTagMultiPayload();
      sub_216785D74();
      OUTLINED_FUNCTION_98_3();
      sub_2166C2594(v105);
      v106 = v352;
      sub_217009554();
      v107 = sub_216785CE8();
      OUTLINED_FUNCTION_0_17();
      v108 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v109 = swift_getWitnessTable();
      v416 = v108;
      v417 = v109;
      OUTLINED_FUNCTION_95_5();
      v110 = OUTLINED_FUNCTION_197_0();
      OUTLINED_FUNCTION_124_1();
      OUTLINED_FUNCTION_217();
      sub_2166C2718();
      sub_216697664(v106, &qword_27CAB6D38);
      v414 = v107;
      v415 = v110;
      v111 = v390;
      v112 = swift_getWitnessTable();
      OUTLINED_FUNCTION_1_5();
      v113 = swift_getWitnessTable();
      v114 = sub_216785E20();
      v412 = v113;
      v413 = v114;
      v115 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v117 = sub_2166B51C0(v116);
      v410 = v115;
      v411 = v117;
      v118 = OUTLINED_FUNCTION_174();
      OUTLINED_FUNCTION_30_8();
      OUTLINED_FUNCTION_217();
      sub_2166C2718();
      v119 = OUTLINED_FUNCTION_109_2();
      v120(v119);
      v408 = v112;
      v409 = v118;
      OUTLINED_FUNCTION_198();
      sub_216785F4C();
      OUTLINED_FUNCTION_29_11();
      sub_2166C2718();

      v121 = OUTLINED_FUNCTION_42_12();
      v122(v121, v111);
      v123 = type metadata accessor for CommerceWebView;
      v124 = v353;
      goto LABEL_11;
    case 5u:
      v242 = OUTLINED_FUNCTION_69_5();
      sub_216845158(v242, v354);
      v243 = OUTLINED_FUNCTION_69_5();
      v244 = v347;
      sub_2168451B0(v243, v347);
      OUTLINED_FUNCTION_235();
      v245 = OUTLINED_FUNCTION_190();
      v246(v245);
      OUTLINED_FUNCTION_235();
      v248 = *(v1 + *(v247 + 208));
      v249 = sub_216EE7808();
      v250 = v357;
      sub_216EE7824(v244, v58, v248, v249, v251, v4, v357);
      OUTLINED_FUNCTION_0_17();
      v252 = v394;
      v253 = swift_getWitnessTable();
      v254 = v356;
      v255 = OUTLINED_FUNCTION_104_0();
      sub_2166C24DC(v255, v256, v253);
      v257 = *(v373 + 8);
      v373 += 8;
      v384 = v257;

      v258 = OUTLINED_FUNCTION_104_0();
      (v257)(v258);
      sub_2166C24DC(v254, v252, v253);
      OUTLINED_FUNCTION_4_8();
      v259 = swift_getWitnessTable();
      OUTLINED_FUNCTION_104_0();
      sub_2166C2718();
      v260 = sub_216785CE8();
      v426 = v253;
      v427 = v259;
      OUTLINED_FUNCTION_42_3();
      v261 = OUTLINED_FUNCTION_197_0();
      OUTLINED_FUNCTION_124_1();
      sub_2166C2CB0();
      v262 = OUTLINED_FUNCTION_42_11();
      v263(v262, v250);
      v424 = v260;
      v425 = v261;
      v264 = OUTLINED_FUNCTION_135_0();
      OUTLINED_FUNCTION_1_5();
      v265 = swift_getWitnessTable();
      v266 = sub_216785E20();
      v422 = v265;
      v423 = v266;
      v267 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v269 = sub_2166B51C0(v268);
      v420 = v267;
      v421 = v269;
      v270 = OUTLINED_FUNCTION_134_0();
      OUTLINED_FUNCTION_30_8();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2718();
      v271 = OUTLINED_FUNCTION_109_2();
      v272(v271);
      v418 = v264;
      v419 = v270;
      v273 = v391;
      swift_getWitnessTable();
      sub_216785F4C();
      sub_2166C2718();
      v274 = OUTLINED_FUNCTION_42_12();
      v275(v274, v273);
      v276 = v384;
      (v384)(v357, v252);
      (v276)(v356, v252);
      OUTLINED_FUNCTION_5_23();
      v124 = v354;
LABEL_11:
      sub_216845208(v124, v123);
      break;
    case 6u:
      v277 = *v78;
      v278 = *(v78 + 1);
      *v61 = sub_2167D8C58;
      *(v61 + 1) = v277;
      v384 = v277;
      v61[16] = 0;
      *(v61 + 3) = v278;
      v381 = v278;
      swift_storeEnumTagMultiPayload();
      sub_216785D74();
      OUTLINED_FUNCTION_98_3();
      sub_2166C2594(v279);
      swift_retain_n();

      v280 = v352;
      OUTLINED_FUNCTION_217();
      sub_217009554();
      v281 = sub_216785CE8();
      OUTLINED_FUNCTION_0_17();
      v282 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v283 = swift_getWitnessTable();
      v406 = v282;
      v407 = v283;
      v284 = swift_getWitnessTable();
      OUTLINED_FUNCTION_124_1();
      sub_2166C2718();
      sub_216697664(v280, &qword_27CAB6D38);
      v404 = v281;
      v405 = v284;
      v136 = v390;
      v285 = swift_getWitnessTable();
      OUTLINED_FUNCTION_1_5();
      v286 = swift_getWitnessTable();
      v287 = sub_216785E20();
      v402 = v286;
      v403 = v287;
      v288 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v290 = sub_2166B51C0(v289);
      v400 = v288;
      v401 = v290;
      v291 = OUTLINED_FUNCTION_174();
      OUTLINED_FUNCTION_30_8();
      sub_2166C2718();
      v292 = OUTLINED_FUNCTION_109_2();
      v293(v292);
      v398 = v285;
      v399 = v291;
      OUTLINED_FUNCTION_198();
      sub_216785F4C();
      OUTLINED_FUNCTION_29_11();
      sub_2166C2718();

      goto LABEL_13;
    case 7u:
      v211 = *v78;
      OUTLINED_FUNCTION_143();
      v212 = swift_allocObject();
      *(v212 + 16) = v211;
      v478 = sub_2168450A0;
      v479 = v212;
      LOWORD(v480) = 256;
      sub_216786064();
      sub_2167860B8();
      v384 = v211;

      OUTLINED_FUNCTION_138_1();
      sub_217009554();
      OUTLINED_FUNCTION_166(v486);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D50);
      sub_216785FD8();
      sub_21678610C();
      OUTLINED_FUNCTION_138_1();
      sub_217009554();
      v379 = v484;
      v382 = v486;
      v383 = v485;
      v381 = v487;
      LODWORD(v380) = v488;
      v213 = sub_216785CE8();
      OUTLINED_FUNCTION_0_17();
      v214 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v215 = swift_getWitnessTable();
      v489[30] = v214;
      v489[31] = v215;
      v216 = OUTLINED_FUNCTION_197_0();
      v489[28] = v213;
      v489[29] = v216;
      v217 = swift_getWitnessTable();
      OUTLINED_FUNCTION_1_5();
      v218 = swift_getWitnessTable();
      v219 = sub_216785E20();
      v489[26] = v218;
      v489[27] = v219;
      v220 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v222 = sub_2166B51C0(v221);
      v489[24] = v220;
      v489[25] = v222;
      v223 = swift_getWitnessTable();
      v489[22] = v217;
      v489[23] = v223;
      OUTLINED_FUNCTION_198();
      sub_216785F4C();
      OUTLINED_FUNCTION_185();
      sub_2166C2CB0();

      v224 = v379;
      goto LABEL_16;
    case 8u:
      v312 = *v78;
      v311 = *(v78 + 1);
      type metadata accessor for MusicStackAuthority();
      OUTLINED_FUNCTION_93_5();
      sub_2166C2594(v313);

      v314 = sub_217008CF4();
      v478 = v312;
      v479 = v311;
      v480 = v314;
      v481 = v315;
      v482 = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D50);
      sub_216785FD8();
      sub_21678610C();
      OUTLINED_FUNCTION_138_1();
      sub_217009554();
      v316 = OUTLINED_FUNCTION_99_5();
      OUTLINED_FUNCTION_0_17();
      v317 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v318 = swift_getWitnessTable();
      v489[52] = v317;
      v489[53] = v318;
      v319 = swift_getWitnessTable();
      v489[50] = v316;
      v489[51] = v319;
      v320 = swift_getWitnessTable();
      OUTLINED_FUNCTION_1_5();
      v321 = swift_getWitnessTable();
      v322 = sub_216785E20();
      v489[48] = v321;
      v489[49] = v322;
      v323 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v325 = sub_2166B51C0(v324);
      v489[46] = v323;
      v489[47] = v325;
      v326 = swift_getWitnessTable();
      v489[44] = v320;
      v489[45] = v326;
      swift_getWitnessTable();
      sub_216785F4C();
      sub_2166C2CB0();

      v307 = v383;
      v224 = v384;
      v309 = v381;
      v308 = v382;
      v310 = v380;
      goto LABEL_18;
    case 9u:
      v484 = *v78;
      v384 = v484;
      OUTLINED_FUNCTION_1_5();
      v125 = swift_getWitnessTable();
      v126 = sub_216785E20();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2CB0();
      v456 = v125;
      v457 = v126;
      v127 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v129 = sub_2166B51C0(v128);
      OUTLINED_FUNCTION_229();
      sub_2166C2718();
      v130 = OUTLINED_FUNCTION_229();
      v131(v130);
      v132 = sub_216785CE8();
      OUTLINED_FUNCTION_0_17();
      v133 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v134 = swift_getWitnessTable();
      v454 = v133;
      v455 = v134;
      v135 = swift_getWitnessTable();
      v452 = v132;
      v453 = v135;
      v136 = v390;
      v137 = swift_getWitnessTable();
      v450 = v127;
      v451 = v129;
      OUTLINED_FUNCTION_174();
      OUTLINED_FUNCTION_167();
      sub_2166C2CB0();
      v138 = OUTLINED_FUNCTION_114_2();
      v139(v138, v73);
      v448 = v137;
      v449 = v127;
      OUTLINED_FUNCTION_198();
      sub_216785F4C();
      OUTLINED_FUNCTION_29_11();
      sub_2166C2718();
      v140 = v384;

LABEL_13:
      v294 = OUTLINED_FUNCTION_42_12();
      v295(v294, v136);
      break;
    case 0xAu:
      v478 = *(v1 + 24);
      v479 = 0;
      LOWORD(v480) = 0;
      sub_216786064();
      sub_2167860B8();
      swift_retain_n();
      OUTLINED_FUNCTION_138_1();
      OUTLINED_FUNCTION_72_5();
      sub_217009554();
      OUTLINED_FUNCTION_166(v486);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D50);
      sub_216785FD8();
      sub_21678610C();
      OUTLINED_FUNCTION_138_1();
      sub_217009554();
      v296 = OUTLINED_FUNCTION_99_5();
      OUTLINED_FUNCTION_0_17();
      v297 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v298 = swift_getWitnessTable();
      v489[20] = v297;
      v489[21] = v298;
      v299 = OUTLINED_FUNCTION_197_0();
      v489[18] = v296;
      v489[19] = v299;
      v300 = swift_getWitnessTable();
      OUTLINED_FUNCTION_1_5();
      v301 = swift_getWitnessTable();
      v302 = sub_216785E20();
      v489[16] = v301;
      v489[17] = v302;
      v303 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      v305 = sub_2166B51C0(v304);
      v489[14] = v303;
      v489[15] = v305;
      v306 = OUTLINED_FUNCTION_174();
      v489[12] = v300;
      v489[13] = v306;
      OUTLINED_FUNCTION_198();
      sub_216785F4C();
      OUTLINED_FUNCTION_185();
      sub_2166C2CB0();

      v224 = v384;
LABEL_16:
      v308 = v382;
      v307 = v383;
      v309 = v381;
      v310 = v380;
LABEL_18:
      sub_216845010(v224, v307, v308, v309, v310);
      break;
    default:
      OUTLINED_FUNCTION_108_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30);
      type metadata accessor for ObjectGraph();

      OUTLINED_FUNCTION_227();
      OUTLINED_FUNCTION_60_0();
      sub_21700E094();

      sub_2168450A8(v489, &v478);
      v483 = 0;
      sub_216785EF8();
      OUTLINED_FUNCTION_138_1();
      OUTLINED_FUNCTION_149_1();
      OUTLINED_FUNCTION_1_5();
      v85 = swift_getWitnessTable();
      v86 = sub_216785E20();
      v466 = v85;
      v467 = v86;
      OUTLINED_FUNCTION_42_3();
      v87 = swift_getWitnessTable();
      OUTLINED_FUNCTION_12_19();
      OUTLINED_FUNCTION_103_4();
      v89 = sub_2166B51C0(v88);
      OUTLINED_FUNCTION_72_5();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_103_4();
      sub_216697664(v90, v91);
      v92 = sub_216785CE8();
      OUTLINED_FUNCTION_0_17();
      v93 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_8();
      v94 = swift_getWitnessTable();
      v464 = v93;
      v465 = v94;
      v95 = OUTLINED_FUNCTION_197_0();
      v462 = v92;
      v463 = v95;
      v96 = OUTLINED_FUNCTION_135_0();
      v460 = v87;
      v461 = v89;
      v97 = OUTLINED_FUNCTION_134_0();
      OUTLINED_FUNCTION_30_8();
      sub_2166C2CB0();
      v98 = OUTLINED_FUNCTION_237_0();
      v99(v98);
      v458 = v96;
      v459 = v97;
LABEL_9:
      OUTLINED_FUNCTION_198();
      sub_216785F4C();
      OUTLINED_FUNCTION_29_11();
      sub_2166C2718();
      v240 = OUTLINED_FUNCTION_42_12();
      v241(v240, v61);
      sub_216845104(v489);
      break;
  }

  v327 = sub_216785CE8();
  OUTLINED_FUNCTION_0_17();
  v328 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_8();
  v329 = swift_getWitnessTable();
  v489[42] = v328;
  v489[43] = v329;
  OUTLINED_FUNCTION_42_3();
  v330 = swift_getWitnessTable();
  v489[40] = v327;
  v489[41] = v330;
  v331 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_5();
  v332 = swift_getWitnessTable();
  v333 = sub_216785E20();
  v489[38] = v332;
  v489[39] = v333;
  v334 = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_19();
  v336 = sub_2166B51C0(v335);
  v489[36] = v334;
  v489[37] = v336;
  v337 = swift_getWitnessTable();
  v489[34] = v331;
  v489[35] = v337;
  v338 = swift_getWitnessTable();
  v339 = sub_216785F4C();
  v489[32] = v338;
  v489[33] = v339;
  v340 = v386;
  swift_getWitnessTable();
  v341 = OUTLINED_FUNCTION_158();
  sub_2166C24DC(v341, v342, v343);
  v344 = OUTLINED_FUNCTION_114_2();
  v345(v344, v340);
  OUTLINED_FUNCTION_26();
}