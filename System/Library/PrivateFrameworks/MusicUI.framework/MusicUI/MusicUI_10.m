uint64_t sub_216779DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v14 = v12[27];
  v13 = v12[28];
  v15 = v12[26];

  v16 = OUTLINED_FUNCTION_8();
  sub_21677A510(v16, v17);
  (*(v14 + 8))(v13, v15);
  OUTLINED_FUNCTION_0_14();
  __swift_destroy_boxed_opaque_existential_1Tm((v12 + 2));

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_216779EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v29 = v12[47];
  v14 = v12[27];
  v13 = v12[28];
  v16 = v12[25];
  v15 = v12[26];
  v17 = v12[21];

  v18 = OUTLINED_FUNCTION_8();
  sub_21677A510(v18, v19);
  v29(v16, v17);
  (*(v14 + 8))(v13, v15);
  OUTLINED_FUNCTION_0_14();
  __swift_destroy_boxed_opaque_existential_1Tm((v12 + 2));

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t sub_21677A004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21677A0BC;

  return sub_2167789D0(a1, a2, a3, v8);
}

uint64_t sub_21677A0BC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

unint64_t sub_21677A1A8(uint64_t a1)
{
  result = sub_2166E1A80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21677A1D0(uint64_t a1)
{
  result = sub_21677A1F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21677A1F8()
{
  result = qword_27CAB6A20;
  if (!qword_27CAB6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6A20);
  }

  return result;
}

unint64_t sub_21677A250()
{
  result = qword_27CAB6A28;
  if (!qword_27CAB6A28)
  {
    type metadata accessor for PlayGenericMusicItemCollectionAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6A28);
  }

  return result;
}

uint64_t sub_21677A2B0()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAB6A08);
  __swift_project_value_buffer(v0, qword_27CAB6A08);
  return sub_217007C94();
}

uint64_t sub_21677A330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayGenericMusicItemCollectionAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21677A394(uint64_t a1)
{
  v2 = type metadata accessor for PlayGenericMusicItemCollectionAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21677A3F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21677A404(a1, a2);
  }

  return a1;
}

uint64_t sub_21677A404(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_21677A45C()
{
  result = qword_27CAB6A40;
  if (!qword_27CAB6A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6A40);
  }

  return result;
}

void sub_21677A4C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 1)
  {

    sub_21677A510(a3, a4);
  }
}

uint64_t sub_21677A510(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21677A524(a1, a2);
  }

  return a1;
}

uint64_t sub_21677A524(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t MusicPageProvider.__allocating_init(configuration:appTabs:appDestinationPageProvider:)()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_35_3();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_86_0();
  MusicPageProvider.init(configuration:appTabs:appDestinationPageProvider:)();
  return v0;
}

void MusicPageProvider.init(configuration:appTabs:appDestinationPageProvider:)()
{
  OUTLINED_FUNCTION_49();
  v16 = v2;
  v3 = *v0;
  OUTLINED_FUNCTION_107_3();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_16();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_85(v8);
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  v12 = *(v9 + 48);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_107_3();
  type metadata accessor for InternalBootstrap();
  v17 = v15;
  v18 = v14;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  type metadata accessor for Bootstrap();
  OUTLINED_FUNCTION_91_1();
  Bootstrap.init(configuration:)(&v17);
  (*(v6 + 16))(v1, v16, v4);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  OUTLINED_FUNCTION_55_2(0);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_101_0();
  sub_21683A0DC();
  OUTLINED_FUNCTION_121_0(v13);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v16, v4);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t MusicPageProvider.__allocating_init(configuration:appTabs:appDestinationPageProvider:appPlayer:)()
{
  OUTLINED_FUNCTION_35_3();
  v0 = swift_allocObject();
  MusicPageProvider.init(configuration:appTabs:appDestinationPageProvider:appPlayer:)();
  return v0;
}

void MusicPageProvider.init(configuration:appTabs:appDestinationPageProvider:appPlayer:)()
{
  OUTLINED_FUNCTION_49();
  v21 = v1;
  v20 = v2;
  v3 = *v0;
  v4 = *(*v0 + 88);
  OUTLINED_FUNCTION_16();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v19 - v9;
  OUTLINED_FUNCTION_85(v8);
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);
  v14 = *(v11 + 48);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_107_3();
  *&v23 = *(v15 + 80);
  *(&v23 + 1) = v4;
  v24 = *(v3 + 96);
  type metadata accessor for InternalBootstrap();
  v23 = v19[1];
  v24 = v19[0];
  v25 = v12;
  v26 = v13;
  v27 = v14;
  type metadata accessor for Bootstrap();
  OUTLINED_FUNCTION_91_1();
  Bootstrap.init(configuration:)(&v23);
  v16 = v20;
  (*(v6 + 16))(v10, v20, v4);
  v17 = v21;
  sub_216681AA4(v21, &v23);
  v22 = 0;
  OUTLINED_FUNCTION_55_2(0);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_101_0();
  sub_21683A0DC();
  OUTLINED_FUNCTION_121_0(v18);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  (*(v6 + 8))(v16, v4);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t MusicPageProvider.__allocating_init(bootstrap:appTabs:appDestinationPageProvider:appPlayer:singConnectedStatusProvider:)()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_35_3();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_94_3();
  MusicPageProvider.init(bootstrap:appTabs:appDestinationPageProvider:appPlayer:singConnectedStatusProvider:)();
  return v0;
}

void MusicPageProvider.init(bootstrap:appTabs:appDestinationPageProvider:appPlayer:singConnectedStatusProvider:)()
{
  OUTLINED_FUNCTION_49();
  v13 = v1;
  v3 = v2;
  v5 = v4;
  v14 = v4;
  v6 = *v0;
  v7 = *v0;
  v8 = *(*v0 + 88);
  OUTLINED_FUNCTION_16();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_46_2();
  v21[0] = *(v6 + 80);
  v21[1] = v8;
  v22 = *(v7 + 96);
  type metadata accessor for InternalBootstrap();
  (*(v10 + 16))(v0, v5, v8);
  sub_216681B04(v3, v21, &qword_27CAB6A50);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0;
  *&v15[40] = 0u;
  v16 = 0u;
  sub_216681B04(v13, v15, &qword_27CAB6A58);

  swift_unknownObjectRetain();
  sub_21683A0DC();
  OUTLINED_FUNCTION_121_0(v12);

  swift_unknownObjectRelease();
  sub_216699778(v13, &qword_27CAB6A58);
  sub_216699778(v3, &qword_27CAB6A50);
  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void MusicPageProvider.__allocating_init(bootstrap:appTabs:appDestinationPageProvider:appPlayer:entityAnnotationProvider:pinsCoordinator:singConnectedStatusProvider:sceneConnectionOptions:)()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_35_3();
  swift_allocObject();
  MusicPageProvider.init(bootstrap:appTabs:appDestinationPageProvider:appPlayer:entityAnnotationProvider:pinsCoordinator:singConnectedStatusProvider:sceneConnectionOptions:)();
  OUTLINED_FUNCTION_26();
}

void MusicPageProvider.init(bootstrap:appTabs:appDestinationPageProvider:appPlayer:entityAnnotationProvider:pinsCoordinator:singConnectedStatusProvider:sceneConnectionOptions:)()
{
  OUTLINED_FUNCTION_49();
  v22 = v2;
  v4 = v3;
  v19 = v5;
  v23 = v6;
  v8 = v7;
  v20 = v7;
  v10 = v9;
  v21 = v9;
  v11 = *v0;
  v12 = *(*v0 + 88);
  OUTLINED_FUNCTION_16();
  v14 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_107_3();
  v27[0] = *(v16 + 80);
  v27[1] = v12;
  v28 = *(v11 + 96);
  type metadata accessor for InternalBootstrap();
  (*(v14 + 16))(v1, v10, v12);
  sub_216681AA4(v8, v27);
  sub_216681AA4(v23, &v26);
  sub_216681B04(v19, &v25, &qword_27CAB6A60);
  sub_216681B04(v4, &v24, &qword_27CAB6A58);

  swift_unknownObjectRetain();
  v17 = v22;
  sub_21683A0DC();
  OUTLINED_FUNCTION_121_0(v18);

  swift_unknownObjectRelease();

  sub_216699778(v4, &qword_27CAB6A58);
  sub_216699778(v19, &qword_27CAB6A60);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  (*(v14 + 8))(v21, v12);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t MusicPageProvider.start()()
{

  Bootstrap.load()();
}

void MusicPageProvider.page(for:stackAuthority:)()
{
  OUTLINED_FUNCTION_49();
  v45[4] = v1;
  v45[0] = v2;
  v46 = v3;
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A68);
  v5 = *(v4 + 96);
  v59 = *(v4 + 80);
  v60 = v5;
  type metadata accessor for SearchPageView();
  type metadata accessor for FlowActionPageView();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A70);
  OUTLINED_FUNCTION_19_0();
  v45[2] = sub_217009564();
  v45[1] = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A78);
  OUTLINED_FUNCTION_19_0();
  v45[3] = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A80);
  OUTLINED_FUNCTION_72_0();
  v6 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v45 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A88);
  OUTLINED_FUNCTION_72_0();
  v12 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v45 - v20;
  sub_2166BA08C();
  v45[0] = type metadata accessor for MusicStackAuthority();
  OUTLINED_FUNCTION_11_8();
  v24 = sub_2166B5148(v22, &qword_27CAB6A68, &unk_21701D690, v23);
  OUTLINED_FUNCTION_10_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_9_13();
  v28 = sub_2166B52EC(v26, v27);
  v57 = WitnessTable;
  v58 = v28;
  OUTLINED_FUNCTION_43_5();
  v29 = swift_getWitnessTable();
  v30 = sub_2166B53E0();
  v55 = v29;
  v56 = v30;
  v31 = swift_getWitnessTable();
  v53 = v24;
  v54 = v31;
  v32 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_4();
  v35 = sub_2166B5148(v33, &qword_27CAB6A78, &unk_217013DD8, v34);
  v51 = v32;
  v52 = v35;
  v36 = swift_getWitnessTable();
  v37 = sub_2166B58AC();
  v49 = v36;
  v50 = v37;
  v38 = swift_getWitnessTable();
  OUTLINED_FUNCTION_17_8();
  sub_2166B52EC(v39, v40);
  sub_21700A654();
  (*(v8 + 8))(v11, v6);
  OUTLINED_FUNCTION_7_5();
  v42 = sub_21669E098(v41, &qword_27CAB6A88);
  v47 = v38;
  v48 = v42;
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  v43 = *(v14 + 16);
  v43(v21, v18, v12);
  v44 = *(v14 + 8);
  v44(v18, v12);
  v43(v46, v21, v12);
  v44(v21, v12);
  OUTLINED_FUNCTION_26();
}

{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_80_1(v2, v3);
  v4 = OUTLINED_FUNCTION_97_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
  v138 = v1;
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_103_1();
  v6 = *(v5 + 96);
  v7 = *(v0 + 104);
  v132 = v8;
  v131 = v9;
  v130 = v6;
  v154 = v6;
  v155 = v7;
  v129 = v7;
  OUTLINED_FUNCTION_22_11();
  type metadata accessor for SearchPageView();
  type metadata accessor for FlowActionPageView();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A70);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A78);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A80);
  OUTLINED_FUNCTION_72_0();
  v10 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v137 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v13);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A88);
  OUTLINED_FUNCTION_72_0();
  v133 = v10;
  v14 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v136 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v17);
  OUTLINED_FUNCTION_11_8();
  v20 = sub_2166B5148(v18, &qword_27CAB6A68, &unk_21701D690, v19);
  OUTLINED_FUNCTION_10_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_9_13();
  v150 = WitnessTable;
  v151 = sub_2166B52EC(v22, v23);
  OUTLINED_FUNCTION_42_3();
  v148 = swift_getWitnessTable();
  v149 = sub_2166B53E0();
  v146 = v20;
  v147 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_4();
  v144 = v24;
  v145 = sub_2166B5148(v25, &qword_27CAB6A78, &unk_217013DD8, v26);
  OUTLINED_FUNCTION_38();
  v142 = swift_getWitnessTable();
  v143 = sub_2166B58AC();
  v27 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_5();
  v140 = v27;
  v141 = sub_21669E098(v28, &qword_27CAB6A88);
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  v29 = v14;
  swift_getOpaqueTypeMetadata2();
  v30 = OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_60_1();
  v31 = OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_2_16(v31);
  OUTLINED_FUNCTION_60_1();
  v32 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v32);
  OUTLINED_FUNCTION_60_1();
  v33 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v33);
  OUTLINED_FUNCTION_60_1();
  v34 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v34);
  OUTLINED_FUNCTION_60_1();
  v35 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v35);
  OUTLINED_FUNCTION_60_1();
  v36 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v36);
  OUTLINED_FUNCTION_60_1();
  v37 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v37);
  OUTLINED_FUNCTION_60_1();
  v38 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v38);
  OUTLINED_FUNCTION_60_1();
  v39 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v39);
  OUTLINED_FUNCTION_60_1();
  v40 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v40);
  OUTLINED_FUNCTION_60_1();
  v41 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v41);
  OUTLINED_FUNCTION_60_1();
  v42 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v42);
  OUTLINED_FUNCTION_60_1();
  v43 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v43);
  OUTLINED_FUNCTION_60_1();
  v44 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v44);
  OUTLINED_FUNCTION_60_1();
  v45 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v45);
  OUTLINED_FUNCTION_60_1();
  v46 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v46);
  OUTLINED_FUNCTION_60_1();
  v47 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v47);
  OUTLINED_FUNCTION_60_1();
  v48 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v48);
  OUTLINED_FUNCTION_60_1();
  v49 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v49);
  OUTLINED_FUNCTION_60_1();
  v50 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v50);
  OUTLINED_FUNCTION_60_1();
  v51 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v51);
  OUTLINED_FUNCTION_60_1();
  v52 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v52);
  OUTLINED_FUNCTION_60_1();
  v53 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v53);
  OUTLINED_FUNCTION_60_1();
  v54 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v54);
  OUTLINED_FUNCTION_60_1();
  v55 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v55);
  OUTLINED_FUNCTION_60_1();
  v56 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v56);
  OUTLINED_FUNCTION_60_1();
  v57 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v57);
  OUTLINED_FUNCTION_60_1();
  v58 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v58);
  OUTLINED_FUNCTION_60_1();
  v59 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v59);
  OUTLINED_FUNCTION_60_1();
  v60 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v60);
  OUTLINED_FUNCTION_60_1();
  v61 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v61);
  OUTLINED_FUNCTION_60_1();
  v62 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v62);
  OUTLINED_FUNCTION_60_1();
  v63 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v63);
  OUTLINED_FUNCTION_60_1();
  v64 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v64);
  OUTLINED_FUNCTION_60_1();
  v65 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v65);
  OUTLINED_FUNCTION_60_1();
  v66 = OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_0_15(v66);
  OUTLINED_FUNCTION_60_1();
  v67 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_16(v67);
  OUTLINED_FUNCTION_60_1();
  v68 = OUTLINED_FUNCTION_12_9();
  v69 = OUTLINED_FUNCTION_60_1();
  OUTLINED_FUNCTION_1();
  v124 = v70;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v71);
  v73 = &v122 - v72;
  v152 = v30;
  v153 = v68;
  v74 = OUTLINED_FUNCTION_24_0();
  v126 = v69;
  v152 = v69;
  v153 = v74;
  v123 = v74;
  v128 = OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_1();
  v127 = v75;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_77();
  v125 = v77 - v78;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_70(&v122 - v80);
  sub_21700D584();
  sub_2166B6328(v139);
  v81 = v135;
  sub_2166BA08C();
  type metadata accessor for MusicStackAuthority();
  OUTLINED_FUNCTION_17_8();
  sub_2166B52EC(v82, v83);
  v84 = v134;
  v85 = v133;
  OUTLINED_FUNCTION_86_0();
  sub_21700A654();
  OUTLINED_FUNCTION_67();
  v86(v81, v85);
  v135 = v73;
  sub_2166C3314();
  OUTLINED_FUNCTION_67();
  v87(v84, v29);
  v88 = [objc_opt_self() sharedApplication];
  v89 = [v88 connectedScenes];

  v90 = sub_216685F4C(0, &qword_280E29B30);
  v91 = sub_2166CB5AC();
  OUTLINED_FUNCTION_86_0();
  v92 = sub_21700EB84();

  v134 = v92;
  v136 = v90;
  if ((v92 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21700F264();
    OUTLINED_FUNCTION_86_0();
    sub_21700EBC4();
    v92 = v152;
    v93 = v153;
    v91 = v154;
    v94 = v155;
    v95 = v156;
  }

  else
  {
    v93 = v92 + 56;
    OUTLINED_FUNCTION_81();
    v95 = v96 & v97;
    sub_21700DF14();
    v94 = 0;
  }

  v133 = v91;
  v98 = (v91 + 64) >> 6;
  v139 = *MEMORY[0x277D772C8];
  if (v92 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v99 = v94;
  v100 = v95;
  v101 = v94;
  if (v95)
  {
LABEL_9:
    v102 = (v100 - 1) & v100;
    v103 = *(*(v92 + 48) + ((v101 << 9) | (8 * __clz(__rbit64(v100)))));
    if (v103)
    {
      while (1)
      {
        v138 = v94;
        v137 = v95;
        v105 = v92;
        v106 = [v103 session];
        v107 = [v106 role];

        v108 = sub_21700E514();
        v110 = v109;
        if (v108 == sub_21700E514() && v110 == v111)
        {
          break;
        }

        v113 = sub_21700F7D4();

        if (v113)
        {
          goto LABEL_22;
        }

        v94 = v101;
        v95 = v102;
        v92 = v105;
        if ((v105 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        v104 = sub_21700F2E4();
        if (!v104)
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_102_2(v104);
        OUTLINED_FUNCTION_117_1();
        v103 = v157;
        v101 = v94;
        v102 = v95;
        if (!v157)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_22:
    OUTLINED_FUNCTION_109_0();
    sub_216687978();

    v114 = v126;
    v115 = v123;
    sub_21700A1D4();

    OUTLINED_FUNCTION_67();
    v116 = OUTLINED_FUNCTION_38();
    v117(v116);
    v157 = v114;
    v158 = v115;
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_72_0();
    type metadata accessor for PageHostingController();
    v118 = OUTLINED_FUNCTION_92_1();
    v119(v118);
    v157 = v132;
    v158 = v131;
    OUTLINED_FUNCTION_89_1(&v159);
    sub_2166CBBF4(v93);
    v120 = OUTLINED_FUNCTION_98();
    v121(v120);
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_26();
  }

  else
  {
    while (1)
    {
      v101 = v99 + 1;
      if (__OFADD__(v99, 1))
      {
        break;
      }

      if (v101 >= v98)
      {
LABEL_20:
        v103 = 0;
        goto LABEL_22;
      }

      v100 = *(v93 + 8 * v101);
      ++v99;
      if (v100)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t MusicPageProvider.albumRelatedContentProvider(for:)()
{
  OUTLINED_FUNCTION_111_0();
  v3 = type metadata accessor for ContentDescriptor();
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_88(v0 + v2, v6, v7, v5);
  OUTLINED_FUNCTION_41_3(4);
  v8 = type metadata accessor for AlbumDetailRecommendedShelvesIntent();
  v21[3] = v8;
  v21[4] = sub_2166B52EC(&qword_27CAB6AB0, type metadata accessor for AlbumDetailRecommendedShelvesIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  OUTLINED_FUNCTION_40_3(boxed_opaque_existential_1);
  v10 = *(v8 + 20);
  v11 = type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_88(v1 + v10, v12, v13, v11);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_52_1();
  type metadata accessor for RelatedContentProvider();
  v14 = OUTLINED_FUNCTION_91_1();
  sub_21700DF14();

  OUTLINED_FUNCTION_93_3();
  sub_216E494F8(v15, v16, v17);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_82_2();
  sub_216699778(v18, v19);
  return v14;
}

uint64_t MusicPageProvider.playlistRelatedContentProvider(for:)()
{
  OUTLINED_FUNCTION_111_0();
  v3 = type metadata accessor for ContentDescriptor();
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_88(v0 + v2, v6, v7, v5);
  OUTLINED_FUNCTION_41_3(14);
  v8 = type metadata accessor for PlaylistDetailRecommendedShelvesIntent();
  v21[3] = v8;
  v21[4] = sub_2166B52EC(&qword_27CAB6AC0, type metadata accessor for PlaylistDetailRecommendedShelvesIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  OUTLINED_FUNCTION_40_3(boxed_opaque_existential_1);
  v10 = *(v8 + 20);
  v11 = type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_88(v1 + v10, v12, v13, v11);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_52_1();
  type metadata accessor for RelatedContentProvider();
  v14 = OUTLINED_FUNCTION_91_1();
  sub_21700DF14();

  OUTLINED_FUNCTION_93_3();
  sub_216E494F8(v15, v16, v17);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_82_2();
  sub_216699778(v18, v19);
  return v14;
}

uint64_t sub_21677B744(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v6 = a1[1];
  v12[0] = *a1;
  v12[1] = v6;
  OUTLINED_FUNCTION_52_1();
  v9 = *(v8 + *(v7 + 208));
  v10(0);
  OUTLINED_FUNCTION_91_1();
  sub_21700DF14();
  sub_21700DF14();

  return a4(v12, a2, v9);
}

void *MusicPageProvider.popoverProvider(context:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52_1();
  v4 = *(v3 + *(v2 + 208));
  type metadata accessor for PopoverProvider();
  swift_allocObject();
  sub_21700DF14();

  return sub_216DF1918(a1, v4);
}

uint64_t MusicPageProvider.publishEngagementEvent(event:)(void *a1)
{
  sub_21683A160();
  OUTLINED_FUNCTION_110();
  type metadata accessor for UnifiedMessages.Coordinator();
  sub_21700D4B4();
  if (v5)
  {
    v2 = a1[3];
    v3 = __swift_project_boxed_opaque_existential_1(a1, v2);
    sub_216A07094(v3, v5, v2);
  }
}

uint64_t MusicPageProvider.reportFeatureEngagementEvent(_:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  v5 = *a1;
  sub_21683A160();
  type metadata accessor for UnifiedMessages.Coordinator();
  sub_21700D4B4();
  if (v13)
  {
    v6 = sub_21700EA74();
    OUTLINED_FUNCTION_88(v1, v7, v8, v6);
    sub_21700EA34();

    v9 = sub_21700EA24();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    *(v10 + 16) = v9;
    *(v10 + 24) = v11;
    *(v10 + 32) = v13;
    *(v10 + 40) = v5;
    sub_21677BBA0();
    OUTLINED_FUNCTION_47();
  }
}

uint64_t sub_21677BA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = sub_21700EA34();
  *(v5 + 32) = sub_21700EA24();
  *(v5 + 40) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21677BAB8, a4, 0);
}

uint64_t sub_21677BAB8()
{
  OUTLINED_FUNCTION_31();
  sub_2169FCA1C((v0 + 40));
  v2 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_21677BB48, v2, v1);
}

uint64_t sub_21677BB48()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

void sub_21677BBA0()
{
  OUTLINED_FUNCTION_49();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_76_1();
  v8 = &unk_21701B9F0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_93_3();
  sub_216681B04(v11, v12, v13);
  v14 = sub_21700EA74();
  v15 = OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_108_2(v15, v16, v14);
  if (&unk_21701B9F0 == 1)
  {
    sub_216699778(v0, &unk_27CABFAC0);
  }

  else
  {
    v8 = sub_21700EA64();
    OUTLINED_FUNCTION_50();
    (*(v17 + 8))(v0, v14);
  }

  OUTLINED_FUNCTION_122_0();

  if (v3)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_119_2();
    OUTLINED_FUNCTION_74_1();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_97_1();
      sub_21700E5D4();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_65_0();
      v18 = swift_allocObject();
      *(v18 + 16) = v7;
      *(v18 + 24) = v5;

      if (v8 | v0)
      {
        OUTLINED_FUNCTION_53_3();
      }

      else
      {
        v19 = 0;
      }

      OUTLINED_FUNCTION_27_3(v19);
      swift_task_create();

      sub_216699778(v2, &unk_27CABFAC0);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_106();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_216699778(v2, &unk_27CABFAC0);
  OUTLINED_FUNCTION_65_0();
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  *(v20 + 24) = v5;
  if (v8 | v0)
  {
    OUTLINED_FUNCTION_51_0();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_21677BDF8()
{
  OUTLINED_FUNCTION_49();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_76_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_118_0();
  v10 = sub_21700EA74();
  v11 = OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_108_2(v11, v12, v10);
  if (&unk_21701B9F0 == 1)
  {
    sub_216699778(v0, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    OUTLINED_FUNCTION_50();
    (*(v13 + 8))(v0, v10);
  }

  OUTLINED_FUNCTION_122_0();

  if (v3)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_119_2();
    OUTLINED_FUNCTION_74_1();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_97_1();
      sub_21700E5D4();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_65_0();
      v14 = swift_allocObject();
      *(v14 + 16) = v7;
      *(v14 + 24) = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B78);
      OUTLINED_FUNCTION_84_3();
      if (v15)
      {
        OUTLINED_FUNCTION_53_3();
      }

      OUTLINED_FUNCTION_27_3(v15);
      OUTLINED_FUNCTION_115_3();
      OUTLINED_FUNCTION_47();

      sub_216699778(v2, &unk_27CABFAC0);

      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_106();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_216699778(v2, &unk_27CABFAC0);
  OUTLINED_FUNCTION_65_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  *(v16 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B78);
  OUTLINED_FUNCTION_84_3();
  if (v17)
  {
    OUTLINED_FUNCTION_51_0();
  }

  swift_task_create();
LABEL_13:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_21677C03C()
{
  OUTLINED_FUNCTION_49();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_76_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_118_0();
  v10 = sub_21700EA74();
  v11 = OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_108_2(v11, v12, v10);
  if (&unk_21701B9F0 == 1)
  {
    sub_216699778(v0, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    OUTLINED_FUNCTION_50();
    (*(v13 + 8))(v0, v10);
  }

  OUTLINED_FUNCTION_122_0();

  if (v3)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_119_2();
    OUTLINED_FUNCTION_74_1();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_97_1();
      sub_21700E5D4();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_65_0();
      v14 = swift_allocObject();
      *(v14 + 16) = v7;
      *(v14 + 24) = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B98);
      OUTLINED_FUNCTION_84_3();
      if (v15)
      {
        OUTLINED_FUNCTION_53_3();
      }

      OUTLINED_FUNCTION_27_3(v15);
      OUTLINED_FUNCTION_115_3();
      OUTLINED_FUNCTION_47();

      sub_216699778(v2, &unk_27CABFAC0);

      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_106();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_216699778(v2, &unk_27CABFAC0);
  OUTLINED_FUNCTION_65_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  *(v16 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B98);
  OUTLINED_FUNCTION_84_3();
  if (v17)
  {
    OUTLINED_FUNCTION_51_0();
  }

  swift_task_create();
LABEL_13:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

uint64_t MusicPageProvider.OpenURLResult.hashValue.getter()
{
  v1 = *v0;
  sub_21700F8F4();
  MEMORY[0x21CEA0720](v1);
  return sub_21700F944();
}

uint64_t sub_21677C318()
{
  sub_21700F8F4();
  MusicPageProvider.OpenURLResult.hash(into:)();
  return sub_21700F944();
}

uint64_t MusicPageProvider.openURL(_:referrerInfo:)()
{
  OUTLINED_FUNCTION_33();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  sub_21700EA34();
  v1[6] = sub_21700EA24();
  OUTLINED_FUNCTION_47();
  v6 = sub_21700E9B4();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x2822009F8](sub_21677C3E8, v6, v5);
}

uint64_t sub_21677C3E8()
{
  OUTLINED_FUNCTION_33();
  v6 = v0;
  sub_21677C6BC(&v5);
  if (v5)
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_21677C4D8;

    return sub_21683A20C();
  }

  else
  {
    v3 = *(v0 + 16);

    *v3 = 0;
    OUTLINED_FUNCTION_23();

    return v4();
  }
}

uint64_t sub_21677C4D8()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_21677C660;
  }

  else
  {
    v7 = sub_21677C608;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21677C608()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_21677C660()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_21677C6BC@<X0>(char *a1@<X8>)
{
  v127 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v118 = *(v1 - 8);
  v119 = v1;
  MEMORY[0x28223BE20](v1);
  v117 = &v102 - v2;
  v3 = sub_21700D3B4();
  v115 = *(v3 - 8);
  v116 = v3;
  MEMORY[0x28223BE20](v3);
  v114 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_21700D284();
  v110 = *(v111 - 8);
  v5 = MEMORY[0x28223BE20](v111);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v108 = &v102 - v8;
  v112 = type metadata accessor for SearchAction();
  v9 = MEMORY[0x28223BE20](v112);
  v107 = (&v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v123 = &v102 - v11;
  v109 = type metadata accessor for SelectTabAction();
  MEMORY[0x28223BE20](v109);
  v122 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2170059B4();
  v13 = *(v129 - 8);
  v14 = MEMORY[0x28223BE20](v129);
  v128 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v102 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BC8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v105 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v106 = &v102 - v21;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v113 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v102 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v120 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v102 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v102 - v29;
  v31 = sub_217005E94();
  v33 = v32;
  sub_2170059E4();
  v34 = sub_217005E74();
  if (!v35)
  {
    sub_216699778(v30, &qword_27CAB6BD0);
LABEL_26:

    goto LABEL_27;
  }

  v36 = v34;
  v37 = v35;
  v126 = v30;

  v38 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v38 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {
    sub_216699778(v126, &qword_27CAB6BD0);
    goto LABEL_26;
  }

  v39 = v36 == 0x70612E636973756DLL && v37 == 0xEF6D6F632E656C70;
  if (v39 || (sub_21700F7D4() & 1) != 0 || (v36 == 0xD000000000000010 ? (v40 = v37 == 0x8000000217081B70) : (v40 = 0), v40))
  {
  }

  else
  {
    v41 = sub_21700F7D4();

    if ((v41 & 1) == 0)
    {
      v42 = v126;
LABEL_24:
      result = sub_216699778(v42, &qword_27CAB6BD0);
LABEL_27:
      v48 = 1;
LABEL_78:
      *v127 = v48;
      return result;
    }
  }

  v44 = sub_217005EA4() == 0x6863726165732FLL && v43 == 0xE700000000000000;
  v45 = v126;
  if (v44)
  {
  }

  else
  {
    v46 = sub_21700F7D4();

    if ((v46 & 1) == 0)
    {
      v42 = v45;
      goto LABEL_24;
    }
  }

  v49 = *(v121 + 40);
  v50 = sub_21683A160();
  type metadata accessor for ObjectGraph();
  v121 = v50;
  sub_21700E094();
  sub_216681B04(v45, v28, &qword_27CAB6BD0);
  v51 = sub_217005AB4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v51);
  v104 = v7;
  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v28, &qword_27CAB6BD0);
LABEL_41:
    v61 = 2;
LABEL_42:
    v62 = v120;
    sub_216681B04(v45, v120, &qword_27CAB6BD0);
    if (__swift_getEnumTagSinglePayload(v62, 1, v51) == 1)
    {
      sub_216699778(v62, &qword_27CAB6BD0);
      v63 = 0;
    }

    else
    {
      v63 = sub_2170059C4();
      result = (*(*(v51 - 8) + 8))(v62, v51);
      if (v63)
      {
        LODWORD(v120) = v61;
        v103 = v49;
        v64 = 0;
        v65 = *(v63 + 16);
        v66 = (v13 + 8);
        v67 = v129;
        while (1)
        {
          if (v65 == v64)
          {

            v74 = 1;
            v75 = v105;
            goto LABEL_70;
          }

          if (v64 >= *(v63 + 16))
          {
            goto LABEL_82;
          }

          (*(v13 + 16))(v128, v63 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v64, v67);
          if (sub_217005994() == 1836213620 && v68 == 0xE400000000000000)
          {
            break;
          }

          v70 = sub_21700F7D4();

          if (v70)
          {
            goto LABEL_69;
          }

          v67 = v129;
          result = (*v66)(v128, v129);
          ++v64;
        }

LABEL_69:

        v75 = v105;
        v67 = v129;
        (*(v13 + 32))(v105, v128, v129);
        v74 = 0;
LABEL_70:
        __swift_storeEnumTagSinglePayload(v75, v74, 1, v67);
        if (__swift_getEnumTagSinglePayload(v75, 1, v67) == 1)
        {
          sub_216699778(v75, &qword_27CAB6BC8);
          v63 = 0;
          v71 = 0;
        }

        else
        {
          v63 = sub_2170059A4();
          v71 = v81;
          (*v66)(v75, v67);
        }

        LOBYTE(v61) = v120;
        goto LABEL_74;
      }
    }

    v71 = 0;
LABEL_74:
    v82 = v122;
    sub_21700D234();
    v83 = v109;
    *(v82 + *(v109 + 20)) = 3;

    v84 = sub_21669DAC4();

    v85 = v108;
    sub_21700D234();
    if (v71)
    {
      v86 = v63;
    }

    else
    {
      v86 = 0;
    }

    v87 = v107;
    *v107 = v86;
    *(v87 + 8) = v71;
    *(v87 + 16) = 0u;
    *(v87 + 32) = 0u;
    *(v87 + 48) = 0u;
    *(v87 + 64) = 0;
    v88 = v112;
    *(v87 + *(v112 + 24)) = v61;
    (*(v110 + 32))(v87 + *(v88 + 20), v85, v111);
    *(v87 + *(v88 + 28)) = (v84 & 1) == 0;
    v89 = v123;
    sub_216782640(v87, v123);
    sub_21700D234();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_217013D90;
    *(v90 + 56) = v83;
    *(v90 + 64) = sub_2166B52EC(qword_280E42060, type metadata accessor for SelectTabAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v90 + 32));
    sub_2167826A4(v82, boxed_opaque_existential_1);
    *(v90 + 96) = v88;
    *(v90 + 104) = sub_2166B52EC(qword_280E44778, type metadata accessor for SearchAction);
    v92 = __swift_allocate_boxed_opaque_existential_1((v90 + 72));
    sub_2167826A4(v89, v92);
    v93 = v114;
    sub_21700D394();
    v94 = v116;
    v130[3] = v116;
    v130[4] = MEMORY[0x277D21D10];
    v95 = __swift_allocate_boxed_opaque_existential_1(v130);
    v96 = v115;
    (*(v115 + 16))(v95, v93, v94);
    v98 = v117;
    v97 = v118;
    v99 = v119;
    (*(v118 + 104))(v117, *MEMORY[0x277D21E18], v119);
    v100 = v124;
    v101 = v125;
    sub_21700D5E4();

    (*(v97 + 8))(v98, v99);
    (*(v96 + 8))(v93, v94);
    sub_216782700(v123, type metadata accessor for SearchAction);
    sub_216782700(v122, type metadata accessor for SelectTabAction);
    (*(v113 + 8))(v100, v101);
    sub_216699778(v126, &qword_27CAB6BD0);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v130);
    v48 = 0;
    goto LABEL_78;
  }

  v53 = sub_2170059C4();
  result = (*(*(v51 - 8) + 8))(v28, v51);
  if (!v53)
  {
    goto LABEL_41;
  }

  v102 = v51;
  v103 = v49;
  v54 = 0;
  v55 = *(v53 + 16);
  v56 = (v13 + 8);
  v57 = v129;
  while (1)
  {
    if (v55 == v54)
    {

      v72 = 1;
      v45 = v126;
      v73 = v106;
      goto LABEL_60;
    }

    if (v54 >= *(v53 + 16))
    {
      break;
    }

    (*(v13 + 16))(v17, v53 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v54, v57);
    if (sub_217005994() == 0x656372756F73 && v58 == 0xE600000000000000)
    {

LABEL_59:

      v73 = v106;
      v57 = v129;
      (*(v13 + 32))(v106, v17, v129);
      v72 = 0;
      v45 = v126;
LABEL_60:
      v51 = v102;
      __swift_storeEnumTagSinglePayload(v73, v72, 1, v57);
      if (__swift_getEnumTagSinglePayload(v73, 1, v57) == 1)
      {
        sub_216699778(v73, &qword_27CAB6BC8);
        v61 = 2;
        v49 = v103;
      }

      else
      {
        sub_2170059A4();
        v76 = v73;
        v78 = v77;
        (*v56)(v76, v57);
        if (v78)
        {
          v79 = sub_21700F5E4();

          if (v79 == 1)
          {
            v80 = 1;
          }

          else
          {
            v80 = 2;
          }

          if (v79)
          {
            v61 = v80;
          }

          else
          {
            v61 = 0;
          }
        }

        else
        {
          v61 = 2;
        }

        v49 = v103;
        v51 = v102;
      }

      goto LABEL_42;
    }

    v60 = sub_21700F7D4();

    if (v60)
    {
      goto LABEL_59;
    }

    v57 = v129;
    result = (*v56)(v17, v129);
    ++v54;
  }

  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_21677D5F0()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_26_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  v5[9] = v0;

  if (v0)
  {
    v9 = v5[6];
    v10 = v5[7];
    v11 = sub_21678275C;
  }

  else
  {
    v5[10] = v3;
    v9 = v5[6];
    v10 = v5[7];
    v11 = sub_21677D700;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_21677D700()
{
  OUTLINED_FUNCTION_31();

  type metadata accessor for NoticeManager();
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_71_0();
  sub_21700E094();
  sub_2167C5A50();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_21677D7B0()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_26_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  v5[9] = v0;

  if (v0)
  {
    v9 = v5[6];
    v10 = v5[7];
    v11 = sub_21677D970;
  }

  else
  {
    v5[10] = v3;
    v9 = v5[6];
    v10 = v5[7];
    v11 = sub_21677D8C0;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_21677D8C0()
{
  OUTLINED_FUNCTION_31();

  type metadata accessor for LibraryImportStatusProvider();
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_71_0();
  sub_21700E094();
  sub_21692ABB8();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_21677D970()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

Swift::Void __swiftcall MusicPageProvider.performSearch(for:in:)(Swift::String_optional a1, MusicUI::SearchScope_optional in)
{
  OUTLINED_FUNCTION_49();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_78_1();
  v9 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v4;
  sub_217005ED4();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    sub_216699778(v2, &qword_27CABA820);
    if (qword_280E2C138 != -1)
    {
      OUTLINED_FUNCTION_54_5();
    }

    v16 = sub_217007CA4();
    __swift_project_value_buffer(v16, qword_280E2C140);
    v17 = sub_217007C84();
    v18 = sub_21700ED84();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_2166A85FC(0xD000000000000016, 0x8000000217081990, &v24);
      _os_log_impl(&dword_216679000, v17, v18, "'%{public}s' was not performed.  Unable to construct base URL", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    v21 = OUTLINED_FUNCTION_109_0();
    v22(v21);
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AC8);
      sub_2170059B4();
      *(swift_allocObject() + 16) = xmmword_217013DA0;
      sub_217005984();
      sub_217005EB4();
    }

    if (v15 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AC8);
      OUTLINED_FUNCTION_110();
      sub_2170059B4();
      *(swift_allocObject() + 16) = xmmword_217013DA0;
      sub_217005984();

      sub_217005EB4();
    }

    sub_21677C6BC(&v23 + 7);
    (*(v11 + 8))(v14, v9);
  }

  OUTLINED_FUNCTION_26();
}

Swift::Void __swiftcall MusicPageProvider.reloadArtistFavoritesShelf()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  v5 = sub_21700EA74();
  OUTLINED_FUNCTION_88(v1, v6, v7, v5);
  sub_21700EA34();
  OUTLINED_FUNCTION_47();

  v8 = sub_21700EA24();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  sub_21677E95C();
}

uint64_t sub_21677DEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_21700EA34();
  v4[4] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21677DF78, v6, v5);
}

uint64_t sub_21677DF78()
{
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_99_0(v1);

  return sub_2166DE4E0();
}

uint64_t sub_21677E004()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_26_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  v5[8] = v0;

  if (v0)
  {
    v9 = v5[5];
    v10 = v5[6];
    v11 = sub_21677E1B8;
  }

  else
  {
    v5[9] = v3;
    v9 = v5[5];
    v10 = v5[6];
    v11 = sub_21677E114;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_21677E114()
{
  OUTLINED_FUNCTION_31();

  type metadata accessor for TasteStateChangePublisher();
  OUTLINED_FUNCTION_110();
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_38();
  sub_21700E094();
  sub_21700CC34();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_21677E1B8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

void sub_21677E268()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_95_1();
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_9();
  sub_216681B04(v5, v1, &unk_27CABFAC0);
  v10 = sub_21700EA74();
  v11 = OUTLINED_FUNCTION_58_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v1, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    OUTLINED_FUNCTION_50();
    (*(v14 + 8))(v1, v10);
  }

  v15 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21700E9B4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      sub_21700E5D4();
      v3(0);

      if (v18 | v16)
      {
        OUTLINED_FUNCTION_57_3();
      }

      else
      {
        v19 = 0;
      }

      OUTLINED_FUNCTION_27_3(v19);
      swift_task_create();

      sub_216699778(v5, &unk_27CABFAC0);

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_216699778(v5, &unk_27CABFAC0);
  v3(0);
  if (v18 | v16)
  {
    OUTLINED_FUNCTION_56_5();
  }

  OUTLINED_FUNCTION_94_3();
  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_21677E4E4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_64_3(v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_114_1();
  v10 = sub_21700EA74();
  v11 = OUTLINED_FUNCTION_58_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v1, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    OUTLINED_FUNCTION_50();
    v14 = OUTLINED_FUNCTION_75();
    v15(v14);
  }

  v16 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    sub_21700E9B4();
    swift_unknownObjectRelease();
    if (v2)
    {
LABEL_6:
      sub_21700E5D4();

      v17 = OUTLINED_FUNCTION_39();
      __swift_instantiateConcreteTypeFromMangledNameV2(v17);
      OUTLINED_FUNCTION_104_1();
      if (v18)
      {
        OUTLINED_FUNCTION_57_3();
      }

      OUTLINED_FUNCTION_66_1();
      OUTLINED_FUNCTION_47();

      sub_216699778(v3, &unk_27CABFAC0);

      goto LABEL_13;
    }
  }

  else if (v2)
  {
    goto LABEL_6;
  }

  sub_216699778(v3, &unk_27CABFAC0);
  v19 = OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19);
  OUTLINED_FUNCTION_104_1();
  if (v20)
  {
    OUTLINED_FUNCTION_56_5();
  }

  OUTLINED_FUNCTION_66_1();
LABEL_13:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_21677E72C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_64_3(v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_114_1();
  v10 = sub_21700EA74();
  v11 = OUTLINED_FUNCTION_58_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v1, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    OUTLINED_FUNCTION_50();
    v14 = OUTLINED_FUNCTION_75();
    v15(v14);
  }

  v16 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    sub_21700E9B4();
    swift_unknownObjectRelease();
    if (v2)
    {
LABEL_6:
      sub_21700E5D4();

      v17 = OUTLINED_FUNCTION_39();
      __swift_instantiateConcreteTypeFromMangledNameV2(v17);
      OUTLINED_FUNCTION_104_1();
      if (v18)
      {
        OUTLINED_FUNCTION_57_3();
      }

      OUTLINED_FUNCTION_66_1();

      sub_216699778(v3, &unk_27CABFAC0);

      goto LABEL_13;
    }
  }

  else if (v2)
  {
    goto LABEL_6;
  }

  sub_216699778(v3, &unk_27CABFAC0);
  v19 = OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19);
  OUTLINED_FUNCTION_104_1();
  if (v20)
  {
    OUTLINED_FUNCTION_56_5();
  }

  OUTLINED_FUNCTION_66_1();
LABEL_13:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_21677E95C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_95_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21_9();
  sub_216681B04(v3, v1, &unk_27CABFAC0);
  v8 = sub_21700EA74();
  v9 = OUTLINED_FUNCTION_58_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, v10, v8);

  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v1, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    OUTLINED_FUNCTION_50();
    v12 = OUTLINED_FUNCTION_75();
    v13(v12);
  }

  v14 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21700E9B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      sub_21700E5D4();
      OUTLINED_FUNCTION_83_1();

      if (v17 | v15)
      {
        OUTLINED_FUNCTION_57_3();
      }

      else
      {
        v18 = 0;
      }

      OUTLINED_FUNCTION_27_3(v18);
      swift_task_create();

      sub_216699778(v3, &unk_27CABFAC0);

      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_216699778(v3, &unk_27CABFAC0);
  if (v17 | v15)
  {
    OUTLINED_FUNCTION_56_5();
  }

  OUTLINED_FUNCTION_94_3();
  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_21677EBA0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_95_1();
  v3 = v2;
  v5 = v4;
  v6 = &unk_21701B9F0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_93_3();
  sub_216681B04(v9, v10, v11);
  v12 = sub_21700EA74();
  v13 = OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_108_2(v13, v14, v12);
  if (&unk_21701B9F0 == 1)
  {
    sub_216699778(v0, &unk_27CABFAC0);
  }

  else
  {
    v6 = sub_21700EA64();
    OUTLINED_FUNCTION_50();
    (*(v15 + 8))(v0, v12);
  }

  OUTLINED_FUNCTION_122_0();

  if (v1)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_119_2();
    OUTLINED_FUNCTION_74_1();
    if (v5)
    {
LABEL_6:
      sub_21700E5D4();
      OUTLINED_FUNCTION_83_1();
      sub_21700D2A4();

      if (v6 | v0)
      {
        OUTLINED_FUNCTION_53_3();
      }

      else
      {
        v16 = 0;
      }

      OUTLINED_FUNCTION_27_3(v16);
      swift_task_create();
      OUTLINED_FUNCTION_47();

      sub_216699778(v3, &unk_27CABFAC0);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_106();
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_216699778(v3, &unk_27CABFAC0);
  sub_21700D2A4();
  OUTLINED_FUNCTION_84_3();
  if (v17)
  {
    OUTLINED_FUNCTION_51_0();
  }

  OUTLINED_FUNCTION_94_3();
  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

uint64_t MusicPageProvider.accountButton(stackAuthority:)(uint64_t a1)
{
  sub_2166B6328(a1);
  HIBYTE(v11) = 0;
  v1 = sub_21683B2C0(&v11 + 7, &v12);
  OUTLINED_FUNCTION_45_1(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13);
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AD0));
  return sub_2170087C4();
}

uint64_t MusicPageProvider.accountButton(displayStyle:stackAuthority:)(char *a1, uint64_t a2)
{
  v2 = *a1;
  sub_2166B6328(a2);
  HIBYTE(v13) = v2;
  v3 = sub_21683B2C0(&v13 + 7, &v14);
  OUTLINED_FUNCTION_45_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AD0));
  return sub_2170087C4();
}

uint64_t MusicPageProvider.accountButtonCoordinator.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_21677FB34();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_21677FB34()
{
  type metadata accessor for AccountButtonCoordinator();
  v0 = swift_allocObject();

  sub_216780E78();
  return v0;
}

uint64_t (*MusicPageProvider.accountButtonCoordinator.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = MusicPageProvider.accountButtonCoordinator.getter();
  return sub_21677FBDC;
}

uint64_t sub_21677FBDC(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return MusicPageProvider.accountButtonCoordinator.setter(*a1);
  }

  MusicPageProvider.accountButtonCoordinator.setter(v2);
}

uint64_t sub_21677FC64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21677FCB4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return MusicPageProvider.presentationStackDelegate.setter(v2, v1);
}

void (*MusicPageProvider.presentationStackDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_120_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_21677FD68;
}

void sub_21677FD68(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_216699940();
  }

  free(v3);
}

uint64_t sub_21677FDF4()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_21677FE64(uint64_t a1)
{
  v2 = sub_217009BA4();
  MEMORY[0x28223BE20](v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v4 + 32);
      nullsub_1(*(v4 + 40), a1, v5);
      type metadata accessor for PresentationView();
      swift_getWitnessTable();
      sub_217009454();

      v6 = sub_217009434();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BA8);
      *(swift_allocObject() + 16) = xmmword_217013DA0;
      sub_217009B94();
      sub_2166B52EC(&qword_280E2A6E8, MEMORY[0x277CDE4B0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BB0);
      sub_21669E098(&qword_280E29E58, &qword_27CAB6BB0);
      sub_21700F214();
      sub_217009414();
      ObjectType = swift_getObjectType();
      v8 = type metadata accessor for PresentationItem.Destination();
      v9 = sub_216AF3084(v8);
      (*(v10 + 8))(v6, v9, ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_2167801D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v8 + 32);
      v11 = nullsub_1(*(v8 + 40), a1, v9);
      v13 = v12;
      v16 = a4;
      v17 = *(v6 + 512);
      type metadata accessor for PresentationView();
      swift_getWitnessTable();
      sub_217009454();

      v14 = sub_217009434();
      [v14 setModalPresentationStyle_];
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(v14, MEMORY[0x277D84FA0], ObjectType, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_2167803A8(uint64_t a1)
{
  v2 = sub_217009BA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v5 + 32);
      nullsub_1(*(v5 + 40), a1, v6);
      type metadata accessor for PresentationView();
      swift_getWitnessTable();
      sub_217009454();

      v7 = sub_217009434();
      v8 = [v7 view];
      if (v8)
      {
        v9 = v8;
        v10 = [objc_opt_self() clearColor];
        [v9 setBackgroundColor_];

        v11 = [v7 view];
        if (v11)
        {
          v12 = v11;
          [v11 setOpaque_];

          [v7 setModalTransitionStyle_];
          [v7 setModalPresentationStyle_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BA8);
          *(swift_allocObject() + 16) = xmmword_217013DA0;
          sub_217009B94();
          sub_2166B52EC(&qword_280E2A6E8, MEMORY[0x277CDE4B0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BB0);
          sub_21669E098(&qword_280E29E58, &qword_27CAB6BB0);
          sub_21700F214();
          sub_217009414();
          ObjectType = swift_getObjectType();
          (*(v14 + 8))(v7, MEMORY[0x277D84FA0], ObjectType);

          swift_unknownObjectRelease();

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void sub_2167807A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 32);
    sub_216A5D3A8(&v10);
    v5 = v11;
    if (v11)
    {
      v13 = v10;
      v14 = v11;
      v15 = v12;
      v6 = sub_216A5D50C();
      if (v6)
      {
        v7 = v6;
        ObjectType = swift_getObjectType();
        sub_216685F4C(0, &qword_27CABD750);

        v9 = sub_2168D261C(&v13, a2, v7);
        (*(v4 + 16))(v9, ObjectType, v4);
        swift_unknownObjectRelease();

        return;
      }

      v16 = v10;
      sub_216699778(&v16, &qword_27CABAA40);
      v17 = v5;
      sub_216699778(&v17, &qword_27CAB6BA0);
      v18 = v12;
      sub_216699778(&v18, &qword_27CABAA40);
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_21678092C()
{
  OUTLINED_FUNCTION_68_2();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = OUTLINED_FUNCTION_38();
    sub_2167807A8(v1, v2);
  }

  return result;
}

uint64_t sub_216780990()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 32);
      ObjectType = swift_getObjectType();
      (*(v2 + 24))(ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t MusicPageProvider.deinit()
{

  sub_216781DA8(v0 + 24);

  return v0;
}

uint64_t MusicPageProvider.__deallocating_deinit()
{
  MusicPageProvider.deinit();
  v0 = OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216780AA0()
{
  result = sub_21700E4D4();
  qword_27CAB6A48 = result;
  return result;
}

id sub_216780B20(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

void static PresentationOptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_49();
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  if (v4)
  {
    if (v7)
    {
      if (v2)
      {
        if (v5)
        {
          if (*v0 == *v1 && v2 == v5)
          {
            goto LABEL_15;
          }

          OUTLINED_FUNCTION_39();
          if (sub_21700F7D4())
          {
            goto LABEL_15;
          }
        }
      }

      else if (!v5)
      {
LABEL_15:
        if (v3 != v6 || v4 != v7)
        {
          OUTLINED_FUNCTION_82_2();
          sub_21700F7D4();
          v32 = OUTLINED_FUNCTION_30();
          sub_216781DD0(v32, v33, v34, v35);
          v36 = OUTLINED_FUNCTION_18_3();
          sub_216781DD0(v36, v37, v38, v39);
          v40 = OUTLINED_FUNCTION_18_3();
          sub_216781E14(v40, v41, v42, v43);
          v44 = OUTLINED_FUNCTION_30();
          sub_216781E14(v44, v45, v46, v47);
          goto LABEL_22;
        }

        v48 = OUTLINED_FUNCTION_38();
        sub_216781DD0(v48, v49, v3, v4);
        v50 = OUTLINED_FUNCTION_18_3();
        sub_216781DD0(v50, v51, v52, v53);
        v54 = OUTLINED_FUNCTION_18_3();
        sub_216781E14(v54, v55, v56, v57);
        v11 = OUTLINED_FUNCTION_38();
        v13 = v3;
        v14 = v4;
LABEL_21:
        sub_216781E14(v11, v12, v13, v14);
        goto LABEL_22;
      }
    }
  }

  else if (!v7)
  {
    v9 = OUTLINED_FUNCTION_39();
    sub_216781E14(v9, v10, v3, 0);
    v11 = OUTLINED_FUNCTION_38();
    v13 = v6;
    v14 = 0;
    goto LABEL_21;
  }

  v15 = OUTLINED_FUNCTION_30();
  sub_216781DD0(v15, v16, v17, v18);
  v19 = OUTLINED_FUNCTION_18_3();
  sub_216781DD0(v19, v20, v21, v22);
  v23 = OUTLINED_FUNCTION_18_3();
  sub_216781E14(v23, v24, v25, v26);
  v27 = OUTLINED_FUNCTION_30();
  sub_216781E14(v27, v28, v29, v30);
LABEL_22:
  OUTLINED_FUNCTION_26();
}

uint64_t PresentationOptions.hash(into:)()
{
  if (!*(v0 + 24))
  {
    return MEMORY[0x21CEA0720](1);
  }

  v1 = *(v0 + 8);
  MEMORY[0x21CEA0720](0);
  sub_21700F914();
  if (v1)
  {
    OUTLINED_FUNCTION_82_2();
    sub_21700E614();
  }

  OUTLINED_FUNCTION_86_0();

  return sub_21700E614();
}

uint64_t PresentationOptions.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_21700F8F4();
  if (v2)
  {
    MEMORY[0x21CEA0720](0);
    sub_21700F914();
    if (v1)
    {
      OUTLINED_FUNCTION_82_2();
      sub_21700E614();
    }

    OUTLINED_FUNCTION_71_0();
    sub_21700E614();
  }

  else
  {
    MEMORY[0x21CEA0720](1);
  }

  return sub_21700F944();
}

uint64_t sub_216780E2C()
{
  sub_21700F8F4();
  PresentationOptions.hash(into:)();
  return sub_21700F944();
}

void sub_216780E78()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC9DE0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_78_1();
  *(v0 + 24) = MEMORY[0x277D84FA0];
  *(v0 + 32) = 0;
  sub_217006704();
  *(v0 + 16) = v3;
  OUTLINED_FUNCTION_120_0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BB8);
  sub_217007DB4();
  swift_endAccess();
  sub_21669E098(&qword_280E484E0, &unk_27CAC9DE0);
  OUTLINED_FUNCTION_47();

  sub_217007E84();

  (*(v6 + 8))(v1, v4);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_2();
  sub_2166B52EC(v8, v9);
  OUTLINED_FUNCTION_96_0();
  sub_2170066D4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_96_0();
  sub_2170066F4();

  OUTLINED_FUNCTION_120_0();
  sub_217007D24();
  swift_endAccess();

  swift_getKeyPath();
  sub_2170066E4();

  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2167810DC(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_21700DF14();
  sub_2169FA130(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_216781700();
  }
}

uint64_t sub_2167811C4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 32) == v2)
  {
    *(v1 + 32) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_216781700();
  }

  return result;
}

uint64_t sub_2167812BC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_2();
  sub_2166B52EC(v0, v1);
  OUTLINED_FUNCTION_116_0();

  OUTLINED_FUNCTION_68_2();
  return sub_21700DF14();
}

uint64_t sub_216781374(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
  sub_21700DF14();
}

uint64_t sub_216781428@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216781480();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216781480()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_2();
  sub_2166B52EC(v1, v2);
  OUTLINED_FUNCTION_116_0();

  OUTLINED_FUNCTION_68_2();
  return *(v0 + 32);
}

uint64_t sub_216781508(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 32) = a2;
  return result;
}

void (*sub_21678155C(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC7MusicUI24AccountButtonCoordinator___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_1_2();
  v3[6] = sub_2166B52EC(v4, v5);
  OUTLINED_FUNCTION_109_0();
  sub_2170066D4();

  *v3 = v1;
  swift_getKeyPath();
  sub_2170066F4();

  v3[7] = sub_2167813DC();
  return sub_21678166C;
}

void sub_21678166C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_2170066E4();

  free(v1);
}

uint64_t sub_216781700()
{
  OUTLINED_FUNCTION_1_2();
  sub_2166B52EC(v0, v1);
  return sub_2170066C4();
}

uint64_t AccountButtonCoordinator.deinit()
{

  v1 = OBJC_IVAR____TtC7MusicUI24AccountButtonCoordinator___observationRegistrar;
  sub_217006714();
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t AccountButtonCoordinator.__deallocating_deinit()
{
  AccountButtonCoordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216781868(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2167818D8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2166A85FC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_216781934(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BC0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_216781A28(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_216781A38(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_216781B2C;

  return v5(v2 + 32);
}

uint64_t sub_216781B2C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v2 = v1;
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_28();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_23();

  return v8();
}

uint64_t sub_216781C20()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v5[1] = sub_2166AB4A4;
  v7 = OUTLINED_FUNCTION_19_10();

  return sub_21677BA24(v7, v8, v1, v2, v3);
}

uint64_t sub_216781CD4()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v4[1] = sub_2166AB4A4;
  v6 = OUTLINED_FUNCTION_19_10();

  return sub_21677DEE0(v6, v7, v1, v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_216781DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_21700DF14();

    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_216781E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t type metadata accessor for AccountButtonCoordinator()
{
  result = qword_280E371B8;
  if (!qword_280E371B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_216781EE4()
{
  result = qword_27CAB6AD8;
  if (!qword_27CAB6AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6AD8);
  }

  return result;
}

void sub_216781FA0()
{
  if (!qword_280E2A3C0)
  {
    sub_21700C1E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6AE8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E2A3C0);
    }
  }
}

void sub_216782020()
{
  if (!qword_280E2A350)
  {
    sub_21700C924();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CAB6AF0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E2A350);
    }
  }
}

uint64_t getEnumTagSinglePayload for Page.Header.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_216782128(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_7MusicUI19PresentationOptionsO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_216782260(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167822B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void *sub_216782308(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = (a2 - 1);
  }

  return result;
}

uint64_t sub_216782344()
{
  result = sub_217006714();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_216782480()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_73_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_16(v1);

  return v4(v3);
}

uint64_t sub_216782510()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_73_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_16(v1);

  return v4(v3);
}

uint64_t sub_216782640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167826A4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_216782700(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

double OUTLINED_FUNCTION_89_1@<D0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 112) = v1;
  *(v2 - 104) = v3;
  v4 = type metadata accessor for MusicPageProvider.Destination();

  return sub_2166CBA00(v4, v2 - 128);
}

uint64_t OUTLINED_FUNCTION_115_3()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_117_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_121_0(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_216697840();
}

uint64_t type metadata accessor for JSReplayPage()
{
  result = qword_27CAB6BF8;
  if (!qword_27CAB6BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216782904()
{
  sub_21700D194();
  if (v0 <= 0x3F)
  {
    sub_216782A30(319, &qword_280E29E68, _s7SectionVMa, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_216782A30(319, qword_280E2C858, type metadata accessor for Page.Header, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_216782A94();
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

void sub_216782A30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216782A94()
{
  if (!qword_27CAB6C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6C10);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB6C08);
    }
  }
}

uint64_t sub_216782AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  sub_21700D194();
  OUTLINED_FUNCTION_16();
  v41 = v7;
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v49 = v9 - v8;
  v10 = sub_21700CF34();
  v45 = v10;
  OUTLINED_FUNCTION_16();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v48 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  sub_21700CDF4();
  OUTLINED_FUNCTION_16();
  v51 = v19;
  v52 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v47 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - v22;
  v24 = type metadata accessor for JSReplayPage();
  v25 = *(v24 + 32);
  v26 = v24;
  v54 = v24;
  v56 = a3;
  v27 = (a3 + v25);
  *v27 = 0;
  v27[1] = 0;
  sub_21700CE04();
  v53 = v12;
  v44 = *(v12 + 16);
  v44(v17, a2, v10);
  _s7SectionVMa(0);
  OUTLINED_FUNCTION_0_16();
  sub_216691DF4(v28, v29);
  v30 = sub_21700E944();
  v31 = *(v26 + 20);
  v43 = v30;
  *(a3 + v31) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6C10);
  sub_21700CE04();
  v33 = v45;
  v32 = v46;
  v34 = v44;
  v44(v17, v46, v45);
  sub_216783A48();
  v39 = v23;
  v40 = v17;
  sub_21700D734();
  v35 = v57;
  *(v56 + *(v54 + 28)) = v57;
  v55 = a1;
  sub_21700CE04();
  v36 = v49;
  v34(v48, v32, v33);
  v37 = v50;
  sub_21700D134();
  if (v37)
  {
    (*(v53 + 8))(v32, v33);
    (*(v51 + 8))(v55, v52);

    return sub_216783AAC(v35);
  }

  else
  {
    (*(v41 + 32))(v56, v36, v42);
    type metadata accessor for Page.Header(0);
    sub_21700CE04();
    v34(v40, v32, v33);
    sub_216691DF4(&qword_280E2C8D0, type metadata accessor for Page.Header);
    sub_21700D734();
    (*(v53 + 8))(v32, v33);
    return (*(v51 + 8))(v55, v52);
  }
}

void sub_216782FBC()
{
  _s7SectionVMa(0);
  OUTLINED_FUNCTION_16();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = *(v0 + *(type metadata accessor for JSReplayPage() + 20));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    v11 = MEMORY[0x277D84F90];
    do
    {
      v12 = sub_21678389C(v9, v6);
      sub_2168C0B98(v12, v13, v14, v15, v16, v17, v18, v19, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, vars0, vars8);
      v21 = v20;
      sub_216783900(v6, _s7SectionVMa);
      if (v21)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216937908();
          v11 = v23;
        }

        v22 = *(v11 + 16);
        if (v22 >= *(v11 + 24) >> 1)
        {
          sub_216937908();
          v11 = v24;
        }

        *(v11 + 16) = v22 + 1;
        *(v11 + 8 * v22 + 32) = v21;
      }

      v9 += v10;
      --v8;
    }

    while (v8);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v25 = 0;
  v26 = *(v11 + 16);
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v26 == v25)
    {

      return;
    }

    if (v25 >= *(v11 + 16))
    {
      break;
    }

    v28 = *(v11 + 8 * v25 + 32);
    v29 = *(v28 + 16);
    v30 = *(v27 + 16);
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      goto LABEL_31;
    }

    sub_21700DF14();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v31 > *(v27 + 24) >> 1)
    {
      if (v30 <= v31)
      {
        v33 = v30 + v29;
      }

      else
      {
        v33 = v30;
      }

      sub_2169375D4(isUniquelyReferenced_nonNull_native, v33, 1, v27);
      v27 = v34;
    }

    if (*(v28 + 16))
    {
      v35 = (*(v27 + 24) >> 1) - *(v27 + 16);
      sub_217006924();
      if (v35 < v29)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v36 = *(v27 + 16);
        v37 = __OFADD__(v36, v29);
        v38 = v36 + v29;
        if (v37)
        {
          goto LABEL_34;
        }

        *(v27 + 16) = v38;
      }
    }

    else
    {

      if (v29)
      {
        goto LABEL_32;
      }
    }

    ++v25;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_21678328C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  sub_2167839C8(v2);
  return v2;
}

uint64_t sub_216783318(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  sub_21700DF14();
  return v2;
}

uint64_t sub_216783350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_216783390@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21700D194();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21678344C(uint64_t a1)
{
  result = sub_216691DF4(&qword_27CAB6C20, type metadata accessor for JSReplayPage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167834EC(uint64_t a1)
{
  result = sub_216691DF4(&qword_27CAB6C30, type metadata accessor for JSReplayPage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216783544(void *a1)
{
  a1[1] = sub_216691DF4(&qword_27CAB6C38, type metadata accessor for JSReplayPage);
  a1[2] = sub_216691DF4(&qword_27CAB6C40, type metadata accessor for JSReplayPage);
  result = sub_216691DF4(&qword_27CAB6C48, type metadata accessor for JSReplayPage);
  a1[3] = result;
  return result;
}

uint64_t sub_216783638(uint64_t a1)
{
  result = sub_216691DF4(&qword_27CAB6C58, type metadata accessor for JSReplayPage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167836D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_21700D704();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_7();
  v7 = type metadata accessor for JSReplayPage();
  v8 = v7[6];
  v9 = type metadata accessor for Page.Header(0);
  __swift_storeEnumTagSinglePayload(a2 + v8, 1, 1, v9);
  v10 = _s7SectionVMa(0);
  OUTLINED_FUNCTION_0_16();
  v13 = sub_216691DF4(v11, v12);
  v14 = sub_21700DF14();
  v16 = sub_216F76E04(v14, v15, v10, v13);
  if (v3)
  {
    OUTLINED_FUNCTION_1_3();
    return sub_216783960(a2 + v8);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    if (v16)
    {
      v18 = v16;
    }

    *(a2 + v7[5]) = v18;
    *(a2 + v7[7]) = 1;
    v19 = (a1 + *(type metadata accessor for ReplayPage() + 36));
    v20 = v19[1];
    if (v20)
    {
      v21 = *v19;
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = (a2 + v7[8]);
    *v23 = v21;
    v23[1] = v22;
    sub_21700DF14();
    sub_21700D6F4();
    sub_216C5570C(MEMORY[0x277D84F90]);
    sub_21700D124();
    return OUTLINED_FUNCTION_1_3();
  }
}

uint64_t sub_21678389C(uint64_t a1, uint64_t a2)
{
  v4 = _s7SectionVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216783900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_216783960(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2167839C8(uint64_t result)
{
  if (result != 1)
  {
    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_2167839D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_216783A48()
{
  result = qword_27CAB6C70;
  if (!qword_27CAB6C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6C70);
  }

  return result;
}

uint64_t sub_216783AAC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

MusicUI::DefaultsKeys::SwiftMusic_optional __swiftcall DefaultsKeys.SwiftMusic.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_0_6();
  sub_21700F5E4();
  result.value = OUTLINED_FUNCTION_8_5();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_216783BE0(void *a1@<X8>)
{
  DefaultsKeys.SwiftMusic.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

MusicUI::DefaultsKeys::ScriptURL_optional __swiftcall DefaultsKeys.ScriptURL.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_0_6();
  sub_21700F5E4();
  result.value = OUTLINED_FUNCTION_8_5();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_216783CF4(void *a1@<X8>)
{
  DefaultsKeys.ScriptURL.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

MusicUI::DefaultsKeys::GDPR_optional __swiftcall DefaultsKeys.GDPR.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_0_6();
  sub_21700F5E4();
  result.value = OUTLINED_FUNCTION_8_5();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_216783E08(void *a1@<X8>)
{
  DefaultsKeys.GDPR.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

void sub_216783EC0(void *a1@<X8>)
{
  DefaultsKeys.NewFeatures.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

MusicUI::DefaultsKeys::Engagement_optional __swiftcall DefaultsKeys.Engagement.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_0_6();
  sub_21700F5E4();
  result.value = OUTLINED_FUNCTION_8_5();
  v4 = 12;
  if (v2 < 0xC)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void DefaultsKeys.Engagement.rawValue.getter()
{
  switch(*v0)
  {
    case 7:
    case 0xB:
      OUTLINED_FUNCTION_17_5();
      break;
    case 9:
      return;
    default:
      OUTLINED_FUNCTION_16_9();
      break;
  }
}

void sub_216784120(void *a1@<X8>)
{
  DefaultsKeys.Engagement.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t DefaultsKeys.EngagementOverrides.init(rawValue:)()
{
  OUTLINED_FUNCTION_0_6();
  sub_21700F5E4();
  result = OUTLINED_FUNCTION_8_5();
  *v0 = v1 != 0;
  return result;
}

unint64_t sub_2167841F0@<X0>(void *a1@<X8>)
{
  result = DefaultsKeys.EngagementOverrides.rawValue.getter();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

uint64_t sub_21678423C()
{
  OUTLINED_FUNCTION_0_6();
  sub_21700F5E4();
  result = OUTLINED_FUNCTION_8_5();
  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!v1)
  {
    v3 = 0;
  }

  *v0 = v3;
  return result;
}

void sub_216784300(void *a1@<X8>)
{
  DefaultsKeys.LegacyDefaultsKeys.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t DefaultsSuiteNames.Legacy.init(rawValue:)()
{
  OUTLINED_FUNCTION_0_6();
  sub_21700F5E4();
  result = OUTLINED_FUNCTION_8_5();
  *v0 = v1 != 0;
  return result;
}

unint64_t sub_2167843C4@<X0>(void *a1@<X8>)
{
  result = DefaultsSuiteNames.Legacy.rawValue.getter();
  *a1 = 0xD000000000000014;
  a1[1] = v3;
  return result;
}

void sub_216784404(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21700E4D4();
  }

  OUTLINED_FUNCTION_9_14();
  sub_21700E4D4();
  OUTLINED_FUNCTION_3_19();
  v2 = OUTLINED_FUNCTION_2_17();
  [v2 v3];
  swift_unknownObjectRelease();
}

uint64_t sub_216784490()
{
  v0 = OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_5_9();
  v3 = [v1 v2];

  if (v3)
  {
    sub_21700E514();
    OUTLINED_FUNCTION_12_10();
  }

  else
  {
    OUTLINED_FUNCTION_13_7();
  }

  return OUTLINED_FUNCTION_7_4();
}

void sub_216784500(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21700E4D4();
  }

  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_3_19();
  v2 = OUTLINED_FUNCTION_2_17();
  [v2 v3];
  swift_unknownObjectRelease();
}

uint64_t sub_216784588()
{
  v0 = OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_5_9();
  v3 = [v1 v2];

  if (v3)
  {
    sub_21700E514();
    OUTLINED_FUNCTION_12_10();
  }

  else
  {
    OUTLINED_FUNCTION_13_7();
  }

  return OUTLINED_FUNCTION_7_4();
}

uint64_t sub_2167845F8()
{
  v0 = OUTLINED_FUNCTION_6_13();
  v1 = OUTLINED_FUNCTION_5_9();
  v3 = [v1 v2];

  if (v3)
  {
    sub_21700E514();
    OUTLINED_FUNCTION_12_10();
  }

  else
  {
    OUTLINED_FUNCTION_13_7();
  }

  return OUTLINED_FUNCTION_7_4();
}

uint64_t sub_216784668()
{
  v0 = OUTLINED_FUNCTION_6_13();
  v1 = OUTLINED_FUNCTION_2_17();
  v3 = [v1 v2];

  return v3 & ~(v3 >> 63);
}

uint64_t sub_2167846B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217005AB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216784588();
  v7 = v6;
  v8 = sub_2167845F8();
  v10 = v9;
  v11 = sub_216784668();
  v13 = v12;
  if (v7 || v10 || (v12 & 1) == 0)
  {
    v15[1] = v11;
    sub_217005AA4();
    if (v7)
    {
      sub_217005A84();
    }

    if (v10)
    {
      MEMORY[0x21CE96830](v8, v10);
    }

    if ((v13 & 1) == 0)
    {
      sub_217005A44();
    }

    (*(v3 + 32))(a1, v5, v2);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

id sub_21678485C()
{
  v0 = OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_2_17();
  v3 = [v1 v2];

  return v3;
}

uint64_t sub_2167848A4()
{
  v0 = sub_21700F5E4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2167848F0(char a1)
{
  if (!a1)
  {
    return 0x746C7561666564;
  }

  if (a1 == 1)
  {
    return 0x6948737961776C61;
  }

  return 0x6853737961776C61;
}

uint64_t sub_216784950@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167848F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21678497C()
{
  OUTLINED_FUNCTION_17_5();
  v0 = sub_21700E4D4();
  v1 = OUTLINED_FUNCTION_5_9();
  v3 = [v1 v2];

  if (!v3)
  {
    return 0;
  }

  sub_21700E514();
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_7_4();
  LODWORD(result) = sub_2167848A4();
  if (result == 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void sub_216784A08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21700E4D4();
  }

  OUTLINED_FUNCTION_17_5();
  sub_21700E4D4();
  OUTLINED_FUNCTION_3_19();
  v2 = OUTLINED_FUNCTION_2_17();
  [v2 v3];
  swift_unknownObjectRelease();
}

void sub_216784A9C()
{
  v0 = sub_21700EBE4();
  OUTLINED_FUNCTION_17_5();
  sub_21700E4D4();
  OUTLINED_FUNCTION_3_19();
  v1 = OUTLINED_FUNCTION_2_17();
  [v1 v2];
}

void sub_216784B0C()
{
  v0 = sub_21700EBE4();
  OUTLINED_FUNCTION_17_5();
  sub_21700E4D4();
  OUTLINED_FUNCTION_3_19();
  v1 = OUTLINED_FUNCTION_2_17();
  [v1 v2];
}

void sub_216784B7C()
{
  v0 = sub_21700EBE4();
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_3_19();
  v1 = OUTLINED_FUNCTION_2_17();
  [v1 v2];
}

void sub_216784BE0()
{
  v0 = sub_21700EBE4();
  OUTLINED_FUNCTION_17_5();
  sub_21700E4D4();
  OUTLINED_FUNCTION_3_19();
  v1 = OUTLINED_FUNCTION_2_17();
  [v1 v2];
}

void sub_216784C50()
{
  v0 = sub_21700EBE4();
  OUTLINED_FUNCTION_17_5();
  sub_21700E4D4();
  OUTLINED_FUNCTION_3_19();
  v1 = OUTLINED_FUNCTION_2_17();
  [v1 v2];
}

unint64_t sub_216784CC4()
{
  result = qword_27CAB6C78;
  if (!qword_27CAB6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6C78);
  }

  return result;
}

unint64_t sub_216784D4C()
{
  result = qword_27CAB6C90;
  if (!qword_27CAB6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6C90);
  }

  return result;
}

unint64_t sub_216784DD4()
{
  result = qword_27CAB6CA8;
  if (!qword_27CAB6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6CA8);
  }

  return result;
}

unint64_t sub_216784E5C()
{
  result = qword_27CAB6CC0;
  if (!qword_27CAB6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6CC0);
  }

  return result;
}

unint64_t sub_216784EE4()
{
  result = qword_27CAB6CD8;
  if (!qword_27CAB6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6CD8);
  }

  return result;
}

unint64_t sub_216784F6C()
{
  result = qword_27CAB6CF0;
  if (!qword_27CAB6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6CF0);
  }

  return result;
}

unint64_t sub_216784FF4()
{
  result = qword_27CAB6D08;
  if (!qword_27CAB6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6D08);
  }

  return result;
}

unint64_t sub_21678507C()
{
  result = qword_27CAB6D20;
  if (!qword_27CAB6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6D20);
  }

  return result;
}

uint64_t sub_216785100(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for Page.Header.TitleDisplayMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DefaultsKeys.SwiftMusic(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicConfiguration.PrivacyDisclaimerPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_216785358(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          result = OUTLINED_FUNCTION_11_9(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultsKeys.Engagement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DefaultsKeys.Engagement(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2167855A4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_11_9(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216785684(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_10_3(a1);
}

_BYTE *sub_2167856D0(_BYTE *result, int a2, int a3)
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

uint64_t sub_216785794()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2167857D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_216785810(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2167858A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a7;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D38);
  OUTLINED_FUNCTION_5_10();
  type metadata accessor for ModalNavigationStack();
  OUTLINED_FUNCTION_5_10();
  v43[1] = type metadata accessor for AppDestinationSheetPageView();
  v43[2] = sub_217009564();
  v43[0] = sub_217009564();
  OUTLINED_FUNCTION_5_10();
  v43[3] = type metadata accessor for AppDestinationFullScreenCoverPageView();
  v43[4] = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D40);
  v43[7] = sub_217009564();
  v43[5] = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D48);
  v12 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v44 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = v43 - v15;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v64 = a6;
  v43[6] = type metadata accessor for NestedPresentationModifier();
  v17 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v43 - v24;
  sub_21683B394();
  v26 = sub_216785CE8();
  OUTLINED_FUNCTION_0_17();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_8();
  v28 = swift_getWitnessTable();
  v59 = WitnessTable;
  v60 = v28;
  v29 = swift_getWitnessTable();
  v57 = v26;
  v58 = v29;
  v30 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_5();
  v31 = swift_getWitnessTable();
  v32 = sub_216785E20();
  v55 = v31;
  v56 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_216785E74();
  v53 = v33;
  v54 = v34;
  v35 = swift_getWitnessTable();
  v51 = v30;
  v52 = v35;
  v36 = swift_getWitnessTable();
  v37 = sub_216785F4C();
  v49 = v36;
  v50 = v37;
  v38 = swift_getWitnessTable();
  sub_216A26C9C(v46, a2, v12, v38);
  (*(v44 + 8))(v16, v12);
  OUTLINED_FUNCTION_3_20();
  v39 = swift_getWitnessTable();
  v47 = v38;
  v48 = v39;
  OUTLINED_FUNCTION_0_9();
  v40 = swift_getWitnessTable();
  sub_2166C24DC(v23, v17, v40);
  v41 = *(v19 + 8);
  v41(v23, v17);
  sub_2166C24DC(v25, v17, v40);
  return (v41)(v25, v17);
}

unint64_t sub_216785CE8()
{
  result = qword_280E2ABA0;
  if (!qword_280E2ABA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D38);
    sub_216785D74();
    sub_216785DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ABA0);
  }

  return result;
}

unint64_t sub_216785D74()
{
  result = qword_280E3EBA0;
  if (!qword_280E3EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3EBA0);
  }

  return result;
}

unint64_t sub_216785DC8()
{
  result = qword_280E42898[0];
  if (!qword_280E42898[0])
  {
    type metadata accessor for CommerceWebView();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E42898);
  }

  return result;
}

unint64_t sub_216785E20()
{
  result = qword_280E47DA8[0];
  if (!qword_280E47DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E47DA8);
  }

  return result;
}

unint64_t sub_216785E74()
{
  result = qword_280E2AB38;
  if (!qword_280E2AB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D40);
    sub_216785EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB38);
  }

  return result;
}

unint64_t sub_216785EF8()
{
  result = qword_280E2FB20[0];
  if (!qword_280E2FB20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2FB20);
  }

  return result;
}

unint64_t sub_216785F4C()
{
  result = qword_280E2A9D8;
  if (!qword_280E2A9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D48);
    sub_216785FD8();
    sub_21678610C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9D8);
  }

  return result;
}

unint64_t sub_216785FD8()
{
  result = qword_280E2AB98;
  if (!qword_280E2AB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D50);
    sub_216786064();
    sub_2167860B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB98);
  }

  return result;
}

unint64_t sub_216786064()
{
  result = qword_280E3E2E0[0];
  if (!qword_280E3E2E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3E2E0);
  }

  return result;
}

unint64_t sub_2167860B8()
{
  result = qword_280E35ED0[0];
  if (!qword_280E35ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35ED0);
  }

  return result;
}

unint64_t sub_21678610C()
{
  result = qword_280E35E28;
  if (!qword_280E35E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E35E28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HorizontalLockup.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_216786274(_BYTE *result, unsigned int a2, unsigned int a3)
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

ValueMetadata *type metadata accessor for HorizontalLockup.HeadlineColor()
{
  return &type metadata for HorizontalLockup.HeadlineColor;
}

{
  return &type metadata for HorizontalLockup.HeadlineColor;
}

uint64_t sub_216786350()
{
  v0 = sub_21700F5E4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21678639C(char a1)
{
  if (!a1)
  {
    return 0x6C6C616D73;
  }

  if (a1 == 1)
  {
    return 0x72616C75676572;
  }

  return 0x656772616CLL;
}

uint64_t sub_2167863F8(char a1)
{
  if (a1)
  {
    return 0x6F6C6F43746E6974;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_216786440()
{
  v0 = sub_21700F5E4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216786490(char a1)
{
  if (a1)
  {
    return 0x656C63726963;
  }

  else
  {
    return 0x657261757173;
  }
}

uint64_t sub_2167864DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216786350();
  *a1 = result;
  return result;
}

uint64_t sub_21678650C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21678639C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21678655C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216786440();
  *a1 = result;
  return result;
}

uint64_t sub_216786594@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167863F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2167865C4()
{
  result = qword_27CAB6D70;
  if (!qword_27CAB6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6D70);
  }

  return result;
}

unint64_t sub_21678661C()
{
  result = qword_27CAB6D78;
  if (!qword_27CAB6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6D78);
  }

  return result;
}

uint64_t sub_216786694@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216786440();
  *a1 = result;
  return result;
}

uint64_t sub_2167866CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216786490(*v1);
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

unint64_t sub_216786700()
{
  result = qword_27CAB6D80;
  if (!qword_27CAB6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6D80);
  }

  return result;
}

void sub_216786754()
{
  OUTLINED_FUNCTION_22_3();
  v96 = v0;
  v109 = v1;
  v3 = v2;
  v104 = v4;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  v95 = v16 - v17;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v93 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v93 - v22;
  sub_21700D7A4();
  OUTLINED_FUNCTION_2_0();
  sub_21700CE04();
  v98 = v7;
  v24 = v7;
  v25 = v3;
  v26 = *(v24 + 16);
  v103 = v5;
  v99 = v26;
  v100 = v24 + 16;
  v26(v11, v109, v5);
  v105 = type metadata accessor for HorizontalLockup();
  v94 = v105[5];
  v101 = v11;
  sub_21700D734();
  sub_21700CE04();
  v27 = sub_21700CDB4();
  v29 = v28;
  v30 = *(v14 + 8);
  v106 = v12;
  v102 = v14 + 8;
  v31 = v30;
  (v30)(v21, v12);
  if (v29)
  {
    *&v107 = v27;
    *(&v107 + 1) = v29;
    sub_21700F364();
    v93 = v25;
    sub_21700CE04();
    sub_21700D2E4();
    v97 = v31;
    v31(v23, v106);
    type metadata accessor for Artwork();
    sub_21700CE04();
    v32 = v101;
    v33 = v103;
    v34 = v99;
    v99(v101, v109, v103);
    sub_2166D4B78(&qword_280E2BF60, type metadata accessor for Artwork);
    v35 = v104;
    sub_21700D734();
    OUTLINED_FUNCTION_18_0();
    v36 = v93;
    sub_21700CE04();
    v34(v32, v109, v33);
    sub_2167882F0();
    sub_21700D734();
    v37 = v108;
    v38 = v105;
    v39 = v35;
    v40 = v35 + v105[6];
    *v40 = v107;
    *(v40 + 16) = v37;
    OUTLINED_FUNCTION_18_0();
    sub_21700CE04();
    sub_216788344();
    OUTLINED_FUNCTION_10_5();
    v41 = v106;
    v42 = v97;
    v97(v23, v106);
    *(v39 + v38[7]) = v107;
    v43 = v36;
    sub_21700CE04();
    v44 = sub_21700CDB4();
    v46 = v45;
    v42(v23, v41);
    v47 = (v39 + v38[8]);
    *v47 = v44;
    v47[1] = v46;
    sub_21700CE04();
    v48 = sub_21700CDB4();
    v50 = v49;
    v42(v23, v106);
    v51 = (v39 + v38[9]);
    *v51 = v48;
    v51[1] = v50;
    sub_21700CE04();
    sub_21700D2E4();
    v52 = OUTLINED_FUNCTION_9_6();
    (v42)(v52);
    sub_21700CE04();
    sub_216788398();
    OUTLINED_FUNCTION_10_5();
    v53 = OUTLINED_FUNCTION_9_6();
    (v42)(v53);
    *(v39 + v38[11]) = v107;
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_2_0();
    v54 = v43;
    sub_21700CE04();
    v99(v101, v109, v103);
    sub_2166D4B78(qword_280E40390, type metadata accessor for ContentDescriptor);
    v55 = v39;
    OUTLINED_FUNCTION_9_6();
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    sub_21700CE04();
    v56 = sub_21700CDB4();
    v57 = v97;
    v59 = v58;
    v60 = v106;
    v97(v23, v106);
    v61 = (v55 + v38[12]);
    *v61 = v56;
    v61[1] = v59;
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    LOBYTE(v56) = sub_21700CD44();
    v62 = OUTLINED_FUNCTION_9_6();
    v63 = v60;
    v57(v62);
    *(v55 + v38[13]) = v56;
    OUTLINED_FUNCTION_11_0();
    v64 = v95;
    sub_21700CE04();
    v65 = sub_21700CD24();
    LOBYTE(v59) = v66;
    (v57)(v64, v63);
    if (v59)
    {
      v67 = 0;
    }

    else
    {
      v67 = v65;
    }

    v68 = v105;
    *(v55 + v105[14]) = v67;
    OUTLINED_FUNCTION_11_0();
    sub_21700CE04();
    sub_2167883EC();
    OUTLINED_FUNCTION_10_5();
    v69 = v63;
    (v57)(v23, v63);
    v70 = v68;
    *(v55 + v68[15]) = v107;
    sub_21700CE04();
    v71 = sub_21700CDB4();
    v73 = v72;
    v74 = OUTLINED_FUNCTION_9_6();
    v57(v74);
    v75 = (v55 + v70[20]);
    *v75 = v71;
    v75[1] = v73;
    sub_21700CE04();
    v76 = sub_21700CDB4();
    v78 = v77;
    v79 = OUTLINED_FUNCTION_9_6();
    v57(v79);
    v80 = (v55 + v70[16]);
    *v80 = v76;
    v80[1] = v78;
    sub_21700CE04();
    v81 = sub_21700CDB4();
    v83 = v82;
    v84 = OUTLINED_FUNCTION_15_3();
    v85(v84);
    (v57)(v54, v69);
    v86 = OUTLINED_FUNCTION_9_6();
    v57(v86);
    v87 = (v55 + v70[17]);
    *v87 = v81;
    v87[1] = v83;
  }

  else
  {
    v88 = sub_21700E2E4();
    sub_2166D4B78(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    *v89 = 25705;
    v90 = v105;
    v89[1] = 0xE200000000000000;
    v89[2] = v90;
    (*(*(v88 - 8) + 104))(v89, *MEMORY[0x277D22530], v88);
    swift_willThrow();
    v91 = OUTLINED_FUNCTION_15_3();
    v92(v91);
    v31(v25, v106);
    sub_216697664(v104 + v94, &qword_27CAB6D58);
  }

  OUTLINED_FUNCTION_21_4();
}

unint64_t sub_21678724C()
{
  result = qword_27CAB6D88;
  if (!qword_27CAB6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6D88);
  }

  return result;
}

void sub_2167872A0()
{
  OUTLINED_FUNCTION_22_3();
  HIDWORD(v96) = v1;
  v97 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for ContentDescriptor(0);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  v94 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v99 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  v95 = &v89 - v17;
  v18 = type metadata accessor for AttributedDateRange();
  v19 = OUTLINED_FUNCTION_36(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  v22 = (v20 - v21);
  MEMORY[0x28223BE20](v23);
  v98 = (&v89 - v24);
  v25 = type metadata accessor for Artwork(0);
  v26 = OUTLINED_FUNCTION_36(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v89 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v34 = OUTLINED_FUNCTION_36(v33);
  MEMORY[0x28223BE20](v34);
  v36 = &v89 - v35;
  if (!sub_216F39084())
  {

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DA0);
    sub_2167880BC();
    swift_allocError();
    *v50 = xmmword_217014E10;
    *(v50 + 16) = v49;
    swift_willThrow();
    OUTLINED_FUNCTION_0_18();
    goto LABEL_36;
  }

  v90 = v6;
  v93 = v4;
  v101 = sub_216F38ED4();
  v102 = v37;
  sub_21700F364();
  v38 = type metadata accessor for HorizontalLockup();
  v39 = v8;
  v40 = *(v38 + 20);
  v41 = sub_21700D7A4();
  v42 = 1;
  v91 = v40;
  v43 = v39 + v40;
  v44 = v39;
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v41);
  v100 = v38;
  OUTLINED_FUNCTION_19_8(*(v38 + 40));
  v92 = v45;
  if (sub_216F3AF6C())
  {
    sub_216F3AC10(v32);
    sub_2167881DC(v32, v29, type metadata accessor for Artwork);
    sub_216C7DA84(v29, v36);
    if (v0)
    {
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_0_18();

      v46 = 0;
      v47 = 0;
      v48 = 0;
LABEL_10:
      v55 = v100;
LABEL_26:
      sub_216788110(v44);
      sub_216697664(v44 + v91, &qword_27CAB6D58);
      if (v46)
      {
        sub_216788164(*(v44 + v55[6]), *(v44 + v55[6] + 8), *(v44 + v55[6] + 16));
      }

      if (v47)
      {
      }

      sub_216697664(v92, &qword_27CAB6DB0);
      if (v47)
      {
        sub_216697664(v44 + v55[18], &qword_27CAB6DB0);
      }

      if (v48)
      {
        sub_216697664(v44 + v55[21], &qword_27CAB6D60);
      }

      goto LABEL_36;
    }

    OUTLINED_FUNCTION_5_11();
    v42 = 0;
  }

  v51 = type metadata accessor for Artwork();
  __swift_storeEnumTagSinglePayload(v36, v42, 1, v51);
  sub_21678818C(v36, v39 + v100[21], &qword_27CAB6D60);
  if (sub_216F398C8())
  {
    v52 = v98;
    sub_216F39538(v98);
    type metadata accessor for AttributedDateRange();
    sub_2167881DC(v52, v22, type metadata accessor for AttributedDateRange);
    v53 = sub_216B6D284(v22);
    v54 = v93;
    if (v0)
    {

      OUTLINED_FUNCTION_0_18();
      OUTLINED_FUNCTION_6_15();
      v46 = 0;
      v47 = 0;
      v48 = 1;
      goto LABEL_10;
    }

    v56 = v53;
    OUTLINED_FUNCTION_6_15();
    v57 = 1;
  }

  else
  {
    v56 = 0;
    v57 = -1;
    v54 = v93;
  }

  v55 = v100;
  v58 = v39 + v100[6];
  *v58 = v56;
  *(v58 + 8) = 0;
  *(v58 + 16) = v57;
  if (sub_216F399CC())
  {
    sub_216F39928();
    sub_216787D48();
    v60 = v99;
    if (v0)
    {
      OUTLINED_FUNCTION_0_18();

      v47 = 0;
      v46 = 1;
LABEL_25:
      v48 = 1;
      goto LABEL_26;
    }
  }

  else
  {
    v59 = 0;
    v60 = v99;
  }

  *(v39 + v55[7]) = v59 & 1;
  if (sub_216F39290())
  {
    v61 = sub_216F39120();
  }

  else
  {
    v61 = OUTLINED_FUNCTION_138();
  }

  OUTLINED_FUNCTION_13_8(v61, v62, v55[8]);
  if (sub_216F3949C())
  {
    v63 = sub_216F3932C();
  }

  else
  {
    v63 = OUTLINED_FUNCTION_138();
  }

  v65 = (v39 + v55[9]);
  *v65 = v63;
  v65[1] = v64;
  OUTLINED_FUNCTION_19_8(v55[18]);
  sub_216787B0C();
  if (v0)
  {

    OUTLINED_FUNCTION_0_18();
    v46 = 1;
    v47 = 1;
    goto LABEL_25;
  }

  *(v39 + v55[11]) = v66;
  if (sub_216F39E04())
  {
    sub_216F399E4(v60);
    v67 = v94;
    sub_2167881DC(v60, v94, type metadata accessor for ContentDescriptor);
    v68 = v95;
    sub_21689C518(v67, v69, v70, v71, v72, v73, v74, v75, v89, v90, SWORD1(v90), SWORD2(v90), SBYTE6(v90), SHIBYTE(v90), v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
    OUTLINED_FUNCTION_4_9();
    v76 = 0;
  }

  else
  {
    v76 = 1;
    v68 = v95;
  }

  v77 = type metadata accessor for ContentDescriptor();
  __swift_storeEnumTagSinglePayload(v68, v76, 1, v77);
  sub_21678818C(v68, v39 + v55[19], &qword_27CAB6A00);
  sub_216F3B544();
  v78 = OUTLINED_FUNCTION_138();
  if (v80)
  {
    v78 = sub_216F3B3A4();
  }

  OUTLINED_FUNCTION_13_8(v78, v79, v55[12]);
  *(v39 + v55[13]) = sub_216F3A6DC() & 1;
  *(v39 + v55[14]) = sub_216F3A960();
  if (sub_216F3B200())
  {
    sub_216F3AFCC();
    sub_216787D48();
  }

  else
  {
    v81 = 0;
  }

  *(v39 + v55[15]) = v81 & 1;
  v82 = (v39 + v55[20]);
  *v82 = v90;
  v82[1] = v54;
  if (sub_216F3B38C())
  {
    v83 = sub_216F3B2C0();
  }

  else
  {
    v83 = OUTLINED_FUNCTION_138();
  }

  OUTLINED_FUNCTION_13_8(v83, v84, v55[16]);
  if (sub_216F3B750())
  {
    v85 = sub_216F3B600();
    v87 = v86;
  }

  else
  {
    v85 = 0;
    v87 = 0;
  }

  OUTLINED_FUNCTION_0_18();
  v88 = (v39 + v55[17]);
  *v88 = v85;
  v88[1] = v87;
LABEL_36:
  OUTLINED_FUNCTION_21_4();
}

void sub_216787B0C()
{
  OUTLINED_FUNCTION_22_3();
  v1 = v0;
  v2 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_6();
    v9 = sub_217007C84();
    v10 = sub_21700ED84();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      swift_slowAlloc();
      *v11 = 136315394;
      v12 = sub_21700F784();
      v14 = OUTLINED_FUNCTION_24_5(v12, v13);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DA0);
      v15 = sub_21700E594();
      v17 = OUTLINED_FUNCTION_24_5(v15, v16);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_216679000, v9, v10, "Unrecognized value '%s' for type '%s'", v11, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216787D48()
{
  OUTLINED_FUNCTION_22_3();
  v1 = v0;
  v3 = v2;
  v4 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_6();
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      swift_slowAlloc();
      *v13 = 136315394;
      v14 = sub_21700F784();
      v16 = OUTLINED_FUNCTION_24_5(v14, v15);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(v1);
      v17 = sub_21700E594();
      v19 = OUTLINED_FUNCTION_24_5(v17, v18);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_216679000, v11, v12, "Unrecognized value '%s' for type '%s'", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    (*(v6 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216787FD8(_BYTE *a1@<X8>)
{
  sub_216787D48();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_216788020()
{
  result = qword_27CAB6D90;
  if (!qword_27CAB6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6D90);
  }

  return result;
}

unint64_t sub_2167880BC()
{
  result = qword_27CAB6DA8;
  if (!qword_27CAB6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6DA8);
  }

  return result;
}

uint64_t sub_216788164(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21678817C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21678817C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21678818C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_20(a1, a2, a3);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t sub_2167881DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21678823C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2167882F0()
{
  result = qword_27CAB6DC8;
  if (!qword_27CAB6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6DC8);
  }

  return result;
}

unint64_t sub_216788344()
{
  result = qword_27CAB6DD0;
  if (!qword_27CAB6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6DD0);
  }

  return result;
}

unint64_t sub_216788398()
{
  result = qword_27CAB6DD8;
  if (!qword_27CAB6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6DD8);
  }

  return result;
}

unint64_t sub_2167883EC()
{
  result = qword_27CAB6DE0;
  if (!qword_27CAB6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6DE0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_216788454(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_2167884A8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_216788520(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  v1[2] = a1;
  type metadata accessor for PlaybackPresenter();
  type metadata accessor for ObjectGraph();

  sub_21700E094();
  v1[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30);
  OUTLINED_FUNCTION_95_2();
  sub_2166A0F18(&v11, (v1 + 4));
  type metadata accessor for SubscriptionStatusCoordinator();
  OUTLINED_FUNCTION_95_2();
  v1[9] = v11;
  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI26PlaybackMenuActionProvider_actionDispatcher, v8, v3);
  return v1;
}

void sub_216788694()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_35_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_25_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_16_10();
  v6 = type metadata accessor for MenuContext(v5);
  v7 = OUTLINED_FUNCTION_23_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = MEMORY[0x277CD8280];
  v51 = MEMORY[0x277CD8280];
  v52 = MEMORY[0x277CD82B8];
  v50 = MEMORY[0x277CD82C8];
  OUTLINED_FUNCTION_5_12();
  sub_21678A7D4();
  OUTLINED_FUNCTION_44_5();
  sub_21678C1C4();
  sub_2166997CC(v0, &qword_27CAB6DF0);
  v11 = OUTLINED_FUNCTION_23_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  v49 = MEMORY[0x277CD82B8];
  v48 = MEMORY[0x277CD82C8];
  OUTLINED_FUNCTION_5_12();
  sub_21678C364();
  OUTLINED_FUNCTION_44_5();
  sub_21678C1C4();
  sub_2166997CC(v0, &qword_27CAB6DF0);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_91_4();
  sub_21678CCBC(v14, v15, v16, v17, v18, v19, v20);
  sub_21678C1C4();
  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_91_4();
  sub_216792A5C(v21, v22, v23, v24, v25, v26, v27);
  sub_21678C1C4();
  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_91_4();
  sub_216798848(v28, v29, v30, v31, v32, v33, v34);
  sub_21678C1C4();
  OUTLINED_FUNCTION_21_10();
  v46 = MEMORY[0x277CD82B8];
  v44 = MEMORY[0x277CD82C8];
  v45 = MEMORY[0x277CD8280];
  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_91_4();
  sub_2167A093C(v35, v36, v37, v38, v39, v40, v41, v42, v44, v45, v46, &qword_27CAB6F10, &unk_2170153B0, &unk_282913BE0, sub_2167A4AD0, v47, &unk_2170153B8, v48, v10, v49, &unk_282913C80, sub_2167A47E0, &unk_2170153B8, v50, v51, v52, &unk_282913CA8);
  sub_21678C1C4();
  OUTLINED_FUNCTION_21_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_73_3(inited, xmmword_217015220);
  OUTLINED_FUNCTION_55_3();
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2167889CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v100 = a6;
  v96 = a5;
  v95 = a4;
  v98 = a3;
  v116 = a2;
  v123 = a1;
  v121 = a7;
  v119 = sub_2170075A4();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v115 = v8;
  v117 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6EF0);
  v112 = *(v111 - 8);
  v9 = MEMORY[0x28223BE20](v111);
  v114 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v10;
  MEMORY[0x28223BE20](v9);
  v110 = &v88 - v11;
  v109 = sub_21700CFB4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_217005EF4();
  v92 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v91 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_21700D704();
  v105 = *(v106 - 8);
  v14 = MEMORY[0x28223BE20](v106);
  v102 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v94 = &v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v99 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v93 = &v88 - v20;
  v104 = sub_21700D284();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BAB4();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v88 - v27;
  v30 = v7[7];
  v29 = v7[8];
  v120 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 4, v30);
  v31 = *(v29 + 144);
  v32 = sub_217006B84();
  v33 = sub_2167A46B8(&qword_27CAB6ED0, MEMORY[0x277D2A7C8]);
  v122 = v32;
  v31(v123, v32, v33, v30, v29);
  (*(v23 + 104))(v26, *MEMORY[0x277D2AEE0], v22);
  v34 = sub_21700BAA4();
  v35 = *(v23 + 8);
  v35(v26, v22);
  v35(v28, v22);
  if ((v34 & 1) == 0)
  {
    v56 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v121, 1, 1, v56);
  }

  sub_2167A46B8(&qword_27CAB6ED8, MEMORY[0x277D2A7C8]);
  v89 = sub_21700B934();
  v90 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = 0x4E6E6F6974636573;
  *(inited + 40) = 0xEB00000000656D61;
  v38 = type metadata accessor for MenuConfiguration(0);
  v39 = v98;
  v40 = (v98 + *(v38 + 36));
  v41 = v40[1];
  v42 = MEMORY[0x277D837D0];
  *(inited + 48) = *v40;
  *(inited + 56) = v41;
  *(inited + 72) = v42;
  *(inited + 80) = 1684957547;
  v43 = v95;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v43;
  *(inited + 104) = v96;
  *(inited + 120) = v42;
  *(inited + 128) = 0x6F54646461;
  v44 = 0xE500000000000000;
  *(inited + 168) = v42;
  *(inited + 136) = 0xE500000000000000;
  strcpy((inited + 144), "StartOfQueue");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  sub_21700DF14();
  sub_21700DF14();
  v45 = sub_21700E384();
  v46 = v93;
  v47 = v97;
  __swift_storeEnumTagSinglePayload(v93, 1, 1, v97);
  v48 = (v39 + *(v38 + 24));
  v49 = v48[1];
  v98 = *v48;
  v50 = v94;
  sub_21700D6F4();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v126 = v45;
  sub_2166EF9C4(&v126, &v125);
  v51 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v124 = v51;
  sub_2166EF9D4();
  v52 = v124;
  v127 = v42;
  *&v126 = 2036427888;
  *(&v126 + 1) = 0xE400000000000000;
  sub_2166EF9C4(&v126, &v125);
  swift_isUniquelyReferenced_nonNull_native();
  v124 = v52;
  sub_2166EF9D4();
  v53 = v124;
  v54 = 0x79726F7473;
  v55 = v47;
  switch(v100)
  {
    case 1:
      break;
    case 2:
      v44 = 0xE400000000000000;
      v54 = 1701998445;
      break;
    case 3:
      v54 = 0x636972796CLL;
      break;
    case 4:
      v54 = 0xD000000000000010;
      v44 = 0x80000002170801D0;
      break;
    case 5:
      v44 = 0x80000002170801F0;
      v54 = 0xD000000000000012;
      break;
    case 6:
      v44 = 0xE900000000000075;
      v54 = 0x6E654D6570697773;
      break;
    case 7:
      v44 = 0x8000000217080210;
      v54 = 0xD000000000000015;
      break;
    default:
      v44 = 0xE800000000000000;
      v54 = 0x6472616F6279656BLL;
      break;
  }

  v127 = v42;
  *&v126 = v54;
  *(&v126 + 1) = v44;
  sub_2166EF9C4(&v126, &v125);
  swift_isUniquelyReferenced_nonNull_native();
  v124 = v53;
  sub_2166EF9D4();
  v58 = v124;
  v59 = v99;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v59, 1, v47) == 1)
  {
    sub_2166997CC(v59, &qword_27CABA820);
    if (!v49)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v60 = v92;
  v61 = v91;
  (*(v92 + 32))(v91, v59, v55);
  v62 = sub_217005DE4();
  v127 = v42;
  *&v126 = v62;
  *(&v126 + 1) = v63;
  sub_2166EF9C4(&v126, &v125);
  swift_isUniquelyReferenced_nonNull_native();
  v124 = v58;
  sub_2166EF9D4();
  v58 = v124;
  (*(v60 + 8))(v61, v55);
  if (v49)
  {
LABEL_15:
    sub_21700DF14();
    sub_21700D6D4();
  }

LABEL_16:
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v64 = sub_21700CF84();
  v65 = __swift_project_value_buffer(v64, qword_280E73DB0);
  v66 = v107;
  MEMORY[0x21CE9DD70](v89, v90, 0x6E6F74747562, 0xE600000000000000, v58, v65);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v67 = v108;
  v68 = (*(v108 + 80) + 32) & ~*(v108 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_217013DA0;
  v70 = v69 + v68;
  v71 = v109;
  (*(v67 + 16))(v70, v66, v109);
  v72 = v105;
  v73 = v50;
  v74 = v50;
  v75 = v106;
  (*(v105 + 16))(v102, v73, v106);
  v76 = v101;
  sub_21700D244();
  (*(v67 + 8))(v66, v71);
  (*(v72 + 8))(v74, v75);
  sub_2166997CC(v46, &qword_27CABA820);
  v77 = v110;
  (*(*(v122 - 8) + 16))(v110, v123);
  v78 = v111;
  v79 = &v77[*(v111 + 52)];
  *(v79 + 4) = 0;
  *v79 = 0u;
  *(v79 + 1) = 0u;
  *&v77[v78[9]] = 0;
  (*(v103 + 32))(&v77[v78[10]], v76, v104);
  v77[v78[11]] = 0;
  v77[v78[12]] = 0;
  type metadata accessor for MenuActionType();
  v80 = v121;
  swift_storeEnumTagMultiPayload();
  sub_2167A4788();
  v81 = v118;
  v82 = v117;
  v83 = v119;
  (*(v118 + 16))(v117, v116, v119);
  v84 = (v113 + *(v81 + 80) + ((*(v112 + 80) + 24) & ~*(v112 + 80))) & ~*(v81 + 80);
  v85 = swift_allocObject();
  *(v85 + 16) = v120;
  sub_2167A4788();
  (*(v81 + 32))(v85 + v84, v82, v83);
  v86 = type metadata accessor for MenuAction();
  v87 = (v80 + *(v86 + 20));
  *v87 = sub_2167A4510;
  v87[1] = v85;
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v86);
}

uint64_t sub_2167898E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v97 = a6;
  v94 = a5;
  v93 = a4;
  v95 = a3;
  v113 = a2;
  v121 = a1;
  v119 = a7;
  v116 = sub_2170075A4();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v112 = v8;
  v114 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6EB8);
  v109 = *(v108 - 8);
  v9 = MEMORY[0x28223BE20](v108);
  v111 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v10;
  MEMORY[0x28223BE20](v9);
  v107 = &v86 - v11;
  v106 = sub_21700CFB4();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_217005EF4();
  v90 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v89 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_21700D704();
  v102 = *(v103 - 8);
  v14 = MEMORY[0x28223BE20](v103);
  v99 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v92 = &v86 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v96 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v91 = &v86 - v20;
  v101 = sub_21700D284();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BAB4();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v86 - v27;
  v30 = v7[7];
  v29 = v7[8];
  v117 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 4, v30);
  v31 = *(v29 + 144);
  v32 = sub_21700BA44();
  v33 = sub_2167A46B8(&qword_280E2A420, MEMORY[0x277CD7E58]);
  v120 = v32;
  v31(v121, v32, v33, v30, v29);
  (*(v23 + 104))(v26, *MEMORY[0x277D2AEE0], v22);
  v34 = sub_21700BAA4();
  v35 = *(v23 + 8);
  v35(v26, v22);
  v35(v28, v22);
  if ((v34 & 1) == 0)
  {
    v54 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v54);
  }

  v87 = sub_21700B934();
  v88 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = 0x4E6E6F6974636573;
  *(inited + 40) = 0xEB00000000656D61;
  v38 = type metadata accessor for MenuConfiguration(0);
  v39 = v95;
  v40 = (v95 + *(v38 + 36));
  v41 = v40[1];
  v42 = MEMORY[0x277D837D0];
  *(inited + 48) = *v40;
  *(inited + 56) = v41;
  *(inited + 72) = v42;
  *(inited + 80) = 1684957547;
  v43 = v93;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v43;
  *(inited + 104) = v94;
  *(inited + 120) = v42;
  *(inited + 128) = 0x6F54646461;
  v44 = 0xE500000000000000;
  *(inited + 168) = v42;
  *(inited + 136) = 0xE500000000000000;
  strcpy((inited + 144), "StartOfQueue");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  sub_21700DF14();
  sub_21700DF14();
  v45 = sub_21700E384();
  v46 = v91;
  __swift_storeEnumTagSinglePayload(v91, 1, 1, v118);
  v47 = (v39 + *(v38 + 24));
  v48 = v47[1];
  v95 = *v47;
  v49 = v92;
  sub_21700D6F4();
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v124 = v45;
  sub_2166EF9C4(&v124, &v123);
  v50 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v122 = v50;
  sub_2166EF9D4();
  v51 = v122;
  v125 = v42;
  *&v124 = 2036427888;
  *(&v124 + 1) = 0xE400000000000000;
  sub_2166EF9C4(&v124, &v123);
  swift_isUniquelyReferenced_nonNull_native();
  v122 = v51;
  sub_2166EF9D4();
  v52 = v122;
  v53 = 0x79726F7473;
  switch(v97)
  {
    case 1:
      break;
    case 2:
      v44 = 0xE400000000000000;
      v53 = 1701998445;
      break;
    case 3:
      v53 = 0x636972796CLL;
      break;
    case 4:
      v53 = 0xD000000000000010;
      v44 = 0x80000002170801D0;
      break;
    case 5:
      v44 = 0x80000002170801F0;
      v53 = 0xD000000000000012;
      break;
    case 6:
      v44 = 0xE900000000000075;
      v53 = 0x6E654D6570697773;
      break;
    case 7:
      v44 = 0x8000000217080210;
      v53 = 0xD000000000000015;
      break;
    default:
      v44 = 0xE800000000000000;
      v53 = 0x6472616F6279656BLL;
      break;
  }

  v125 = v42;
  *&v124 = v53;
  *(&v124 + 1) = v44;
  sub_2166EF9C4(&v124, &v123);
  swift_isUniquelyReferenced_nonNull_native();
  v122 = v52;
  sub_2166EF9D4();
  v56 = v122;
  v57 = v96;
  sub_2166A6EA4();
  v58 = v118;
  if (__swift_getEnumTagSinglePayload(v57, 1, v118) == 1)
  {
    sub_2166997CC(v57, &qword_27CABA820);
    if (!v48)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v59 = v90;
  v60 = v89;
  (*(v90 + 32))(v89, v57, v58);
  v61 = sub_217005DE4();
  v125 = v42;
  *&v124 = v61;
  *(&v124 + 1) = v62;
  sub_2166EF9C4(&v124, &v123);
  swift_isUniquelyReferenced_nonNull_native();
  v122 = v56;
  sub_2166EF9D4();
  v56 = v122;
  (*(v59 + 8))(v60, v58);
  if (v48)
  {
LABEL_15:
    sub_21700DF14();
    sub_21700D6D4();
  }

LABEL_16:
  v63 = v49;
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v64 = sub_21700CF84();
  v65 = __swift_project_value_buffer(v64, qword_280E73DB0);
  v66 = v104;
  MEMORY[0x21CE9DD70](v87, v88, 0x6E6F74747562, 0xE600000000000000, v56, v65);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v67 = v105;
  v68 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_217013DA0;
  v70 = v69 + v68;
  v71 = v106;
  (*(v67 + 16))(v70, v66, v106);
  v72 = v102;
  v73 = v103;
  (*(v102 + 16))(v99, v63, v103);
  v74 = v98;
  sub_21700D244();
  (*(v67 + 8))(v66, v71);
  (*(v72 + 8))(v63, v73);
  sub_2166997CC(v46, &qword_27CABA820);
  v75 = v107;
  (*(*(v120 - 8) + 16))(v107, v121);
  v76 = v108;
  v77 = &v75[*(v108 + 52)];
  *(v77 + 4) = 0;
  *v77 = 0u;
  *(v77 + 1) = 0u;
  *&v75[v76[9]] = 0;
  (*(v100 + 32))(&v75[v76[10]], v74, v101);
  v75[v76[11]] = 0;
  v75[v76[12]] = 0;
  type metadata accessor for MenuActionType();
  v78 = v119;
  swift_storeEnumTagMultiPayload();
  sub_2167A4788();
  v79 = v115;
  v80 = v114;
  v81 = v116;
  (*(v115 + 16))(v114, v113, v116);
  v82 = (v110 + *(v79 + 80) + ((*(v109 + 80) + 24) & ~*(v109 + 80))) & ~*(v79 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = v117;
  sub_2167A4788();
  (*(v79 + 32))(v83 + v82, v80, v81);
  v84 = type metadata accessor for MenuAction();
  v85 = (v78 + *(v84 + 20));
  *v85 = sub_2167A44B0;
  v85[1] = v83;
  __swift_storeEnumTagSinglePayload(v78, 0, 1, v84);
}

void sub_21678A7D4()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v125 = v4;
  v122 = v5;
  v11 = OUTLINED_FUNCTION_42_7(v6, v7, v8, v9, v10);
  v12 = OUTLINED_FUNCTION_0(v11, &v138);
  v130 = v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_70(v14);
  v15 = OUTLINED_FUNCTION_72_1();
  v16 = OUTLINED_FUNCTION_0(v15, &v137);
  v129 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_9(v18, v19, v20, v21, v22, v23, v24, v25, v115[0]);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v27);
  v28 = sub_21700CFB4();
  v29 = OUTLINED_FUNCTION_0(v28, &v136);
  v128 = v30;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v31);
  v32 = sub_217005EF4();
  v33 = OUTLINED_FUNCTION_0(v32, &v131);
  v117 = v34;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v35);
  v36 = sub_21700D704();
  v37 = OUTLINED_FUNCTION_0(v36, &v135);
  v127 = v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v42 = OUTLINED_FUNCTION_36(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v44);
  v45 = sub_21700D284();
  v46 = OUTLINED_FUNCTION_0(v45, &v134);
  v126 = v47;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v48);
  v49 = sub_21700BAB4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v51);
  v53 = v115 - v52;
  v54 = OUTLINED_FUNCTION_78_3();
  v1(v54);
  v55 = OUTLINED_FUNCTION_53_4();
  v3(v55);
  v56 = OUTLINED_FUNCTION_90_0();
  v57(v56);
  sub_21700BAA4();
  v58 = OUTLINED_FUNCTION_88_1();
  v0(v58);
  (v0)(v53, v49);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for MenuAction();
    OUTLINED_FUNCTION_89_2();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
    goto LABEL_19;
  }

  v115[1] = OUTLINED_FUNCTION_46_3();
  v115[2] = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  v61 = OUTLINED_FUNCTION_20_6(inited, xmmword_217015230);
  v62 = v123;
  v63 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_69_2(*(v123 + *(v61 + 36) + 8));
  inited[4].n128_u64[1] = v63;
  inited[5].n128_u64[0] = v64;
  v65 = v121;
  inited[5].n128_u64[1] = 0xE400000000000000;
  inited[6].n128_u64[0] = v65;
  OUTLINED_FUNCTION_36_0(&v132);
  OUTLINED_FUNCTION_45_2(v66);
  sub_21700DF14();
  v67 = sub_21700E384();
  v68 = v119;
  OUTLINED_FUNCTION_38_2();
  v69 = v118;
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v118);
  v73 = (v62 + *(v61 + 24));
  v74 = v73[1];
  v123 = *v73;
  v75 = v120;
  sub_21700D6F4();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  OUTLINED_FUNCTION_67_3(v76);
  *(v77 - 256) = v67;
  OUTLINED_FUNCTION_65_1();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_37_1(2036427888);
  *(v78 - 256) = 0xE400000000000000;
  OUTLINED_FUNCTION_57_4();
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_43_2();
  sub_2166EF9D4();
  OUTLINED_FUNCTION_33_7();
  switch(v125)
  {
    case 1:
      break;
    case 2:
      v1 = 0xE400000000000000;
      v79 = 1701998445;
      break;
    case 3:
      OUTLINED_FUNCTION_70_2();
      break;
    case 4:
      OUTLINED_FUNCTION_66_2();
      v1 = 0x80000002170801D0;
      break;
    case 5:
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_66_2();
      v79 = v84 | 2;
      break;
    case 6:
      v1 = 0xE900000000000075;
      OUTLINED_FUNCTION_51_1();
      break;
    case 7:
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_52_2();
      break;
    default:
      v1 = 0xE800000000000000;
      OUTLINED_FUNCTION_56_4();
      break;
  }

  v133 = v63;
  OUTLINED_FUNCTION_37_1(v79);
  *(v85 - 256) = v1;
  OUTLINED_FUNCTION_57_4();
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_81_0();
  v86 = v124;
  sub_2166A6EA4();
  v87 = OUTLINED_FUNCTION_58_0();
  v88 = v69;
  if (__swift_getEnumTagSinglePayload(v87, v89, v69) == 1)
  {
    sub_2166997CC(v86, &qword_27CABA820);
    if (!v74)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v90 = v117;
  v91 = v116;
  (*(v117 + 32))(v116, v86, v88);
  v86 = v91;
  v92 = sub_217005DE4();
  v133 = v63;
  OUTLINED_FUNCTION_39_4(v92, v93);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_40_4();
  *(v94 - 256) = v68;
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_43_2();
  sub_2166EF9D4();
  OUTLINED_FUNCTION_81_0();
  (*(v90 + 8))(v91, v88);
  if (v74)
  {
LABEL_15:
    sub_21700DF14();
    OUTLINED_FUNCTION_68_3();
    OUTLINED_FUNCTION_75_0();
    v86 = v75;
    sub_21700D6D4();
  }

LABEL_16:
  if (qword_280E46040 != -1)
  {
    OUTLINED_FUNCTION_19_9();
  }

  v95 = sub_21700CF84();
  __swift_project_value_buffer(v95, qword_280E73DB0);
  OUTLINED_FUNCTION_34_6();
  v97 = *(v96 - 256);
  OUTLINED_FUNCTION_75_0();
  MEMORY[0x21CE9DD70]();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v98 = OUTLINED_FUNCTION_62_0();
  v99 = OUTLINED_FUNCTION_58_1(v98, xmmword_217013DA0);
  v100(v99);
  OUTLINED_FUNCTION_74_2();
  v101 = OUTLINED_FUNCTION_79_3();
  v103 = *(v102 - 256);
  v104(v101);
  OUTLINED_FUNCTION_93_4();
  sub_21700D244();
  (*(v75 + 8))(v97, v86);
  (*(v68 + 8))(v75, v103);
  sub_2166997CC(v68, &qword_27CABA820);
  OUTLINED_FUNCTION_76_2();
  v105 = OUTLINED_FUNCTION_77_1();
  v106(v105);
  v107 = OUTLINED_FUNCTION_32_5();
  v108(v107);
  *(v86 + v98[2].n128_i32[3]) = 0;
  *(v86 + v98[3].n128_i32[0]) = 0;
  type metadata accessor for MenuActionType();
  OUTLINED_FUNCTION_89_2();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_71_5();
  v109 = OUTLINED_FUNCTION_41_4();
  v110(v109);
  OUTLINED_FUNCTION_7_8();
  v111 = swift_allocObject();
  OUTLINED_FUNCTION_63_0(v111);
  v112 = OUTLINED_FUNCTION_84_4();
  v113(v112);
  v114 = type metadata accessor for MenuAction();
  OUTLINED_FUNCTION_64_4(v114);
LABEL_19:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21678B0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_21700BAB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = v2[7];
  v12 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v11);
  v13 = *(v12 + 144);
  v14 = sub_21700C084();
  v13(a1, v14, MEMORY[0x277CD81D0], v11, v12);
  (*(v5 + 104))(v8, *MEMORY[0x277D2AEE0], v4);
  sub_21700BAA4();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  v16 = type metadata accessor for MenuAction();
  return __swift_storeEnumTagSinglePayload(v19, 1, 1, v16);
}

uint64_t sub_21678B2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v100 = a6;
  v96 = a5;
  v95 = a4;
  v98 = a3;
  v116 = a2;
  v123 = a1;
  v121 = a7;
  v119 = sub_2170075A4();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v115 = v8;
  v117 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E40);
  v112 = *(v111 - 8);
  v9 = MEMORY[0x28223BE20](v111);
  v114 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v10;
  MEMORY[0x28223BE20](v9);
  v110 = &v88 - v11;
  v109 = sub_21700CFB4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_217005EF4();
  v92 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v91 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_21700D704();
  v105 = *(v106 - 8);
  v14 = MEMORY[0x28223BE20](v106);
  v102 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v94 = &v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v99 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v93 = &v88 - v20;
  v104 = sub_21700D284();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BAB4();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v88 - v27;
  v30 = v7[7];
  v29 = v7[8];
  v120 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 4, v30);
  v31 = *(v29 + 144);
  v32 = sub_2170070F4();
  v33 = sub_2167A46B8(&qword_27CAB6E10, MEMORY[0x277D2ABF0]);
  v122 = v32;
  v31(v123, v32, v33, v30, v29);
  (*(v23 + 104))(v26, *MEMORY[0x277D2AEE0], v22);
  v34 = sub_21700BAA4();
  v35 = *(v23 + 8);
  v35(v26, v22);
  v35(v28, v22);
  if ((v34 & 1) == 0)
  {
    v56 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v121, 1, 1, v56);
  }

  sub_2167A46B8(&qword_27CAB6E18, MEMORY[0x277D2ABF0]);
  v89 = sub_21700B934();
  v90 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = 0x4E6E6F6974636573;
  *(inited + 40) = 0xEB00000000656D61;
  v38 = type metadata accessor for MenuConfiguration(0);
  v39 = v98;
  v40 = (v98 + *(v38 + 36));
  v41 = v40[1];
  v42 = MEMORY[0x277D837D0];
  *(inited + 48) = *v40;
  *(inited + 56) = v41;
  *(inited + 72) = v42;
  *(inited + 80) = 1684957547;
  v43 = v95;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v43;
  *(inited + 104) = v96;
  *(inited + 120) = v42;
  *(inited + 128) = 0x6F54646461;
  v44 = 0xE500000000000000;
  *(inited + 168) = v42;
  *(inited + 136) = 0xE500000000000000;
  strcpy((inited + 144), "StartOfQueue");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  sub_21700DF14();
  sub_21700DF14();
  v45 = sub_21700E384();
  v46 = v93;
  v47 = v97;
  __swift_storeEnumTagSinglePayload(v93, 1, 1, v97);
  v48 = (v39 + *(v38 + 24));
  v49 = v48[1];
  v98 = *v48;
  v50 = v94;
  sub_21700D6F4();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v126 = v45;
  sub_2166EF9C4(&v126, &v125);
  v51 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v124 = v51;
  sub_2166EF9D4();
  v52 = v124;
  v127 = v42;
  *&v126 = 2036427888;
  *(&v126 + 1) = 0xE400000000000000;
  sub_2166EF9C4(&v126, &v125);
  swift_isUniquelyReferenced_nonNull_native();
  v124 = v52;
  sub_2166EF9D4();
  v53 = v124;
  v54 = 0x79726F7473;
  v55 = v47;
  switch(v100)
  {
    case 1:
      break;
    case 2:
      v44 = 0xE400000000000000;
      v54 = 1701998445;
      break;
    case 3:
      v54 = 0x636972796CLL;
      break;
    case 4:
      v54 = 0xD000000000000010;
      v44 = 0x80000002170801D0;
      break;
    case 5:
      v44 = 0x80000002170801F0;
      v54 = 0xD000000000000012;
      break;
    case 6:
      v44 = 0xE900000000000075;
      v54 = 0x6E654D6570697773;
      break;
    case 7:
      v44 = 0x8000000217080210;
      v54 = 0xD000000000000015;
      break;
    default:
      v44 = 0xE800000000000000;
      v54 = 0x6472616F6279656BLL;
      break;
  }

  v127 = v42;
  *&v126 = v54;
  *(&v126 + 1) = v44;
  sub_2166EF9C4(&v126, &v125);
  swift_isUniquelyReferenced_nonNull_native();
  v124 = v53;
  sub_2166EF9D4();
  v58 = v124;
  v59 = v99;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v59, 1, v47) == 1)
  {
    sub_2166997CC(v59, &qword_27CABA820);
    if (!v49)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v60 = v92;
  v61 = v91;
  (*(v92 + 32))(v91, v59, v55);
  v62 = sub_217005DE4();
  v127 = v42;
  *&v126 = v62;
  *(&v126 + 1) = v63;
  sub_2166EF9C4(&v126, &v125);
  swift_isUniquelyReferenced_nonNull_native();
  v124 = v58;
  sub_2166EF9D4();
  v58 = v124;
  (*(v60 + 8))(v61, v55);
  if (v49)
  {
LABEL_15:
    sub_21700DF14();
    sub_21700D6D4();
  }

LABEL_16:
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v64 = sub_21700CF84();
  v65 = __swift_project_value_buffer(v64, qword_280E73DB0);
  v66 = v107;
  MEMORY[0x21CE9DD70](v89, v90, 0x6E6F74747562, 0xE600000000000000, v58, v65);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v67 = v108;
  v68 = (*(v108 + 80) + 32) & ~*(v108 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_217013DA0;
  v70 = v69 + v68;
  v71 = v109;
  (*(v67 + 16))(v70, v66, v109);
  v72 = v105;
  v73 = v50;
  v74 = v50;
  v75 = v106;
  (*(v105 + 16))(v102, v73, v106);
  v76 = v101;
  sub_21700D244();
  (*(v67 + 8))(v66, v71);
  (*(v72 + 8))(v74, v75);
  sub_2166997CC(v46, &qword_27CABA820);
  v77 = v110;
  (*(*(v122 - 8) + 16))(v110, v123);
  v78 = v111;
  v79 = &v77[*(v111 + 52)];
  *(v79 + 4) = 0;
  *v79 = 0u;
  *(v79 + 1) = 0u;
  *&v77[v78[9]] = 0;
  (*(v103 + 32))(&v77[v78[10]], v76, v104);
  v77[v78[11]] = 0;
  v77[v78[12]] = 0;
  type metadata accessor for MenuActionType();
  v80 = v121;
  swift_storeEnumTagMultiPayload();
  sub_2167A4788();
  v81 = v118;
  v82 = v117;
  v83 = v119;
  (*(v118 + 16))(v117, v116, v119);
  v84 = (v113 + *(v81 + 80) + ((*(v112 + 80) + 24) & ~*(v112 + 80))) & ~*(v81 + 80);
  v85 = swift_allocObject();
  *(v85 + 16) = v120;
  sub_2167A4788();
  (*(v81 + 32))(v85 + v84, v82, v83);
  v86 = type metadata accessor for MenuAction();
  v87 = (v80 + *(v86 + 20));
  *v87 = sub_2167A4390;
  v87[1] = v85;
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v86);
}

uint64_t sub_21678C1C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - v2;
  v4 = type metadata accessor for MenuAction();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  sub_2166A6EA4();
  v6 = OUTLINED_FUNCTION_58_0();
  if (__swift_getEnumTagSinglePayload(v6, v7, v4) == 1)
  {
    sub_2166997CC(v3, &qword_27CAB6DF0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_2167A4540();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E38);
    v8 = OUTLINED_FUNCTION_94_4();
    *(v8 + 16) = xmmword_217013DA0;
    sub_2167A4540();
  }

  return v8;
}

void sub_21678C364()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v124 = v4;
  v120 = v5;
  v11 = OUTLINED_FUNCTION_42_7(v6, v7, v8, v9, v10);
  v12 = OUTLINED_FUNCTION_0(v11, &v138);
  v130 = v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_70(v14);
  v15 = OUTLINED_FUNCTION_72_1();
  v16 = OUTLINED_FUNCTION_0(v15, &v137);
  v129 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_9(v18, v19, v20, v21, v22, v23, v24, v25, v114);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v27);
  v28 = sub_21700CFB4();
  v29 = OUTLINED_FUNCTION_0(v28, &v136);
  v128 = v30;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v31);
  v32 = sub_217005EF4();
  v33 = OUTLINED_FUNCTION_0(v32, v132);
  v116 = v34;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v35);
  v36 = sub_21700D704();
  v37 = OUTLINED_FUNCTION_0(v36, &v135);
  v126 = v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v42 = OUTLINED_FUNCTION_36(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v44);
  v45 = sub_21700D284();
  v46 = OUTLINED_FUNCTION_0(v45, &v134);
  v125 = v47;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v48);
  v49 = sub_21700BAB4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v51);
  v53 = &v114 - v52;
  v54 = OUTLINED_FUNCTION_78_3();
  v1(v54);
  v55 = OUTLINED_FUNCTION_53_4();
  v3(v55);
  v56 = OUTLINED_FUNCTION_90_0();
  v57(v56);
  sub_21700BAA4();
  v58 = OUTLINED_FUNCTION_88_1();
  v0(v58);
  (v0)(v53, v49);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for MenuAction();
    OUTLINED_FUNCTION_89_2();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
    goto LABEL_19;
  }

  v114 = OUTLINED_FUNCTION_46_3();
  v60 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  v62 = OUTLINED_FUNCTION_20_6(inited, xmmword_217015230);
  v63 = v122;
  v64 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_69_2(*(v122 + *(v62 + 36) + 8));
  inited[4].n128_u64[1] = v64;
  inited[5].n128_u64[0] = v65;
  v66 = v119;
  inited[5].n128_u64[1] = 0xE400000000000000;
  inited[6].n128_u64[0] = v66;
  OUTLINED_FUNCTION_36_0(&v131);
  OUTLINED_FUNCTION_45_2(v67);
  sub_21700DF14();
  v68 = sub_21700E384();
  v69 = v117;
  OUTLINED_FUNCTION_38_2();
  v70 = v121;
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v121);
  v74 = *(v63 + *(v62 + 24) + 8);
  v75 = v118;
  sub_21700D6F4();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  OUTLINED_FUNCTION_67_3(v76);
  *(v77 - 256) = v68;
  OUTLINED_FUNCTION_65_1();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_80_2();
  v132[2] = 0x656C6666756873;
  v132[3] = 0xE700000000000000;
  OUTLINED_FUNCTION_57_4();
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_43_2();
  sub_2166EF9D4();
  OUTLINED_FUNCTION_33_7();
  switch(v124)
  {
    case 1:
      break;
    case 2:
      v1 = 0xE400000000000000;
      v78 = 1701998445;
      break;
    case 3:
      OUTLINED_FUNCTION_70_2();
      break;
    case 4:
      OUTLINED_FUNCTION_66_2();
      v1 = 0x80000002170801D0;
      break;
    case 5:
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_66_2();
      v78 = v83 | 2;
      break;
    case 6:
      v1 = 0xE900000000000075;
      OUTLINED_FUNCTION_51_1();
      break;
    case 7:
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_52_2();
      break;
    default:
      v1 = 0xE800000000000000;
      OUTLINED_FUNCTION_56_4();
      break;
  }

  v133 = v64;
  OUTLINED_FUNCTION_37_1(v78);
  *(v84 - 256) = v1;
  OUTLINED_FUNCTION_57_4();
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_81_0();
  v85 = v123;
  sub_2166A6EA4();
  v86 = OUTLINED_FUNCTION_58_0();
  if (__swift_getEnumTagSinglePayload(v86, v87, v70) == 1)
  {
    sub_2166997CC(v85, &qword_27CABA820);
    if (!v74)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v88 = v116;
  v89 = v60;
  v90 = v115;
  (*(v116 + 32))(v115, v85, v70);
  v85 = v90;
  v91 = sub_217005DE4();
  v133 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_39_4(v91, v92);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_40_4();
  *(v93 - 256) = v70;
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_43_2();
  sub_2166EF9D4();
  OUTLINED_FUNCTION_81_0();
  v94 = v90;
  v60 = v89;
  (*(v88 + 8))(v94, v70);
  if (v74)
  {
LABEL_15:
    sub_21700DF14();
    OUTLINED_FUNCTION_68_3();
    OUTLINED_FUNCTION_75_0();
    v85 = v75;
    sub_21700D6D4();
  }

LABEL_16:
  if (qword_280E46040 != -1)
  {
    OUTLINED_FUNCTION_19_9();
  }

  v95 = sub_21700CF84();
  __swift_project_value_buffer(v95, qword_280E73DB0);
  OUTLINED_FUNCTION_34_6();
  v97 = *(v96 - 256);
  MEMORY[0x21CE9DD70](v114, v60);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v98 = OUTLINED_FUNCTION_62_0();
  v99 = OUTLINED_FUNCTION_58_1(v98, xmmword_217013DA0);
  v100(v99);
  OUTLINED_FUNCTION_74_2();
  v102 = v127;
  v103(*(v101 - 256), v75, v127);
  OUTLINED_FUNCTION_93_4();
  sub_21700D244();
  (*(v69 + 8))(v97, v85);
  (*(v60 + 8))(v75, v102);
  sub_2166997CC(v69, &qword_27CABA820);
  OUTLINED_FUNCTION_76_2();
  v104 = OUTLINED_FUNCTION_77_1();
  v105(v104);
  v106 = OUTLINED_FUNCTION_32_5();
  v107(v106);
  *(v85 + v98[2].n128_i32[3]) = 1;
  *(v85 + v98[3].n128_i32[0]) = 0;
  type metadata accessor for MenuActionType();
  OUTLINED_FUNCTION_89_2();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_71_5();
  v108 = OUTLINED_FUNCTION_41_4();
  v109(v108);
  OUTLINED_FUNCTION_7_8();
  v110 = swift_allocObject();
  OUTLINED_FUNCTION_63_0(v110);
  v111 = OUTLINED_FUNCTION_84_4();
  v112(v111);
  v113 = type metadata accessor for MenuAction();
  OUTLINED_FUNCTION_64_4(v113);
LABEL_19:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21678CCBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v106 = a6;
  v103 = a5;
  v102 = a4;
  v104 = a3;
  v124 = a2;
  v128 = a7;
  v127 = sub_2170075A4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v123 = v10;
  v125 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F08);
  v120 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v122 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v13;
  MEMORY[0x28223BE20](v12);
  v119 = (&v95 - v14);
  v118 = sub_21700CFB4();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v107 = sub_217005EF4();
  v101 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v100 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_21700D704();
  v113 = *(v115 - 8);
  v17 = MEMORY[0x28223BE20](v115);
  v109 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v110 = &v95 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v105 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v95 - v23;
  v114 = sub_21700D284();
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v111 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21700BAB4();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v95 - v31;
  sub_216C6D16C();
  sub_217006D94();

  v33 = sub_217006D24();

  if (v33 & 1) != 0 && (v98 = v11, v108 = v24, v34 = v8[8], __swift_project_boxed_opaque_existential_1(v8 + 4, v8[7]), v99 = v8, v35 = *(v34 + 144), v97 = sub_21700C1E4(), v36 = a1, v37 = v108, v35(a1), (*(v27 + 104))(v30, *MEMORY[0x277D2AEE0], v26), v38 = sub_21700BAA4(), v39 = *(v27 + 8), v39(v30, v26), v39(v32, v26), (v38))
  {
    v96 = v36;
    v40 = v97;
    v95 = sub_21700B934();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v44 = type metadata accessor for MenuConfiguration(0);
    v45 = v104;
    v46 = (v104 + *(v44 + 36));
    v47 = v46[1];
    v48 = MEMORY[0x277D837D0];
    *(inited + 48) = *v46;
    *(inited + 56) = v47;
    *(inited + 72) = v48;
    *(inited + 80) = 1684957547;
    v49 = v102;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v49;
    *(inited + 104) = v103;
    *(inited + 120) = v48;
    *(inited + 128) = 0x6F54646461;
    *(inited + 168) = v48;
    *(inited + 136) = 0xE500000000000000;
    strcpy((inited + 144), "StartOfQueue");
    *(inited + 157) = 0;
    *(inited + 158) = -5120;
    sub_21700DF14();
    sub_21700DF14();
    v50 = sub_21700E384();
    v51 = v107;
    __swift_storeEnumTagSinglePayload(v37, 1, 1, v107);
    v52 = (v45 + *(v44 + 24));
    v54 = *v52;
    v53 = v52[1];
    v103 = v54;
    v104 = v53;
    v55 = v110;
    sub_21700D6F4();
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v131 = v50;
    sub_2166EF9C4(&v131, &v130);
    v56 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v129 = v56;
    sub_2166EF9D4();
    v57 = v129;
    v132 = v48;
    v58 = 0xE800000000000000;
    *&v131 = 0x7478654E79616C70;
    *(&v131 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v131, &v130);
    swift_isUniquelyReferenced_nonNull_native();
    v129 = v57;
    sub_2166EF9D4();
    v59 = v129;
    v60 = 0x6472616F6279656BLL;
    v61 = v40;
    switch(v106)
    {
      case 1:
        v58 = 0xE500000000000000;
        v60 = 0x79726F7473;
        break;
      case 2:
        v58 = 0xE400000000000000;
        v60 = 1701998445;
        break;
      case 3:
        v58 = 0xE500000000000000;
        v60 = 0x636972796CLL;
        break;
      case 4:
        v60 = 0xD000000000000010;
        v58 = 0x80000002170801D0;
        break;
      case 5:
        v58 = 0x80000002170801F0;
        v60 = 0xD000000000000012;
        break;
      case 6:
        v58 = 0xE900000000000075;
        v60 = 0x6E654D6570697773;
        break;
      case 7:
        v58 = 0x8000000217080210;
        v60 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v64 = MEMORY[0x277D837D0];
    v132 = MEMORY[0x277D837D0];
    *&v131 = v60;
    *(&v131 + 1) = v58;
    sub_2166EF9C4(&v131, &v130);
    swift_isUniquelyReferenced_nonNull_native();
    v129 = v59;
    sub_2166EF9D4();
    v65 = v129;
    v66 = v105;
    sub_2166A6EA4();
    if (__swift_getEnumTagSinglePayload(v66, 1, v51) == 1)
    {
      sub_2166997CC(v66, &qword_27CABA820);
    }

    else
    {
      v67 = v101;
      v68 = v100;
      (*(v101 + 32))(v100, v66, v51);
      v69 = sub_217005DE4();
      v132 = v64;
      *&v131 = v69;
      *(&v131 + 1) = v70;
      sub_2166EF9C4(&v131, &v130);
      swift_isUniquelyReferenced_nonNull_native();
      v129 = v65;
      sub_2166EF9D4();
      v65 = v129;
      (*(v67 + 8))(v68, v51);
      v61 = v40;
    }

    if (v104)
    {
      sub_21700DF14();
      sub_21700D6D4();
    }

    v71 = v61;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v72 = sub_21700CF84();
    v73 = __swift_project_value_buffer(v72, qword_280E73DB0);
    v74 = v116;
    MEMORY[0x21CE9DD70](v95, v42, 0x6E6F74747562, 0xE600000000000000, v65, v73);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v75 = v117;
    v76 = (*(v117 + 80) + 32) & ~*(v117 + 80);
    v77 = swift_allocObject();
    v107 = xmmword_217013DA0;
    *(v77 + 16) = xmmword_217013DA0;
    v78 = v77 + v76;
    v79 = v118;
    (*(v75 + 16))(v78, v74, v118);
    v80 = v113;
    v81 = v115;
    (*(v113 + 16))(v109, v55, v115);
    v82 = v111;
    sub_21700D244();
    (*(v75 + 8))(v74, v79);
    (*(v80 + 8))(v55, v81);
    sub_2166997CC(v108, &qword_27CABA820);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F10);
    v83 = *(v71 - 8);
    v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v107;
    (*(v83 + 16))(v85 + v84, v96, v71);
    v86 = v119;
    *v119 = v85;
    *(v86 + 8) = 0;
    (*(v112 + 32))(v86 + *(v98 + 40), v82, v114);
    type metadata accessor for MenuActionType();
    v87 = v128;
    swift_storeEnumTagMultiPayload();
    sub_2167A4788();
    v88 = v126;
    v89 = v125;
    v90 = v127;
    (*(v126 + 16))(v125, v124, v127);
    v91 = (v121 + *(v88 + 80) + ((*(v120 + 80) + 24) & ~*(v120 + 80))) & ~*(v88 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = v99;
    sub_2167A4788();
    (*(v88 + 32))(v92 + v91, v89, v90);
    v93 = type metadata accessor for MenuAction();
    v94 = (v87 + *(v93 + 20));
    *v94 = sub_2167A4758;
    v94[1] = v92;
    __swift_storeEnumTagSinglePayload(v87, 0, 1, v93);
  }

  else
  {
    v62 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v128, 1, 1, v62);
  }
}

uint64_t sub_21678DC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  *&v109 = a6;
  v106 = a5;
  v105 = a4;
  v107 = a3;
  v125 = a2;
  v130 = a7;
  v128 = sub_2170075A4();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v124 = v10;
  v126 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6EC8);
  v121 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v123 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = (&v97 - v14);
  v120 = sub_21700CFB4();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_217005EF4();
  v104 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v103 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_21700D704();
  v115 = *(v117 - 8);
  v18 = MEMORY[0x28223BE20](v117);
  v111 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v112 = &v97 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v108 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v129 = &v97 - v24;
  v116 = sub_21700D284();
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v113 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21700BAB4();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v97 - v31;
  sub_216C6D16C();
  sub_217006D94();

  v33 = sub_217006D24();

  if (v33 & 1) != 0 && (v100 = v11, v34 = a1, v99 = v15, v35 = v8[7], v36 = v8[8], __swift_project_boxed_opaque_existential_1(v8 + 4, v35), v101 = v8, v102 = *(v36 + 144), v37 = sub_217006B84(), v38 = sub_2167A46B8(&qword_27CAB6ED0, MEMORY[0x277D2A7C8]), v98 = v37, v102(a1, v37, v38, v35, v36), (*(v27 + 104))(v30, *MEMORY[0x277D2AEE0], v26), v39 = sub_21700BAA4(), v40 = *(v27 + 8), v40(v30, v26), v40(v32, v26), (v39))
  {
    sub_2167A46B8(&qword_27CAB6ED8, MEMORY[0x277D2A7C8]);
    v41 = v98;
    v97 = sub_21700B934();
    v102 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v44 = type metadata accessor for MenuConfiguration(0);
    v45 = v107;
    v46 = (v107 + *(v44 + 36));
    v47 = v46[1];
    v48 = MEMORY[0x277D837D0];
    *(inited + 48) = *v46;
    *(inited + 56) = v47;
    *(inited + 72) = v48;
    *(inited + 80) = 1684957547;
    v49 = v105;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v49;
    *(inited + 104) = v106;
    *(inited + 120) = v48;
    *(inited + 128) = 0x6F54646461;
    *(inited + 168) = v48;
    *(inited + 136) = 0xE500000000000000;
    strcpy((inited + 144), "StartOfQueue");
    *(inited + 157) = 0;
    *(inited + 158) = -5120;
    sub_21700DF14();
    sub_21700DF14();
    v50 = sub_21700E384();
    v51 = v110;
    __swift_storeEnumTagSinglePayload(v129, 1, 1, v110);
    v52 = (v45 + *(v44 + 24));
    v54 = *v52;
    v53 = v52[1];
    v106 = v54;
    v107 = v53;
    v55 = v112;
    sub_21700D6F4();
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v133 = v50;
    sub_2166EF9C4(&v133, &v132);
    v56 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v131 = v56;
    sub_2166EF9D4();
    v57 = v131;
    v58 = v48;
    v134 = v48;
    v59 = 0xE800000000000000;
    *&v133 = 0x7478654E79616C70;
    *(&v133 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v133, &v132);
    swift_isUniquelyReferenced_nonNull_native();
    v131 = v57;
    sub_2166EF9D4();
    v60 = v131;
    v61 = 0x6472616F6279656BLL;
    v62 = v34;
    switch(v109)
    {
      case 1:
        v59 = 0xE500000000000000;
        v61 = 0x79726F7473;
        break;
      case 2:
        v59 = 0xE400000000000000;
        v61 = 1701998445;
        break;
      case 3:
        v59 = 0xE500000000000000;
        v61 = 0x636972796CLL;
        break;
      case 4:
        v61 = 0xD000000000000010;
        v59 = 0x80000002170801D0;
        break;
      case 5:
        v59 = 0x80000002170801F0;
        v61 = 0xD000000000000012;
        break;
      case 6:
        v59 = 0xE900000000000075;
        v61 = 0x6E654D6570697773;
        break;
      case 7:
        v59 = 0x8000000217080210;
        v61 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v134 = v58;
    *&v133 = v61;
    *(&v133 + 1) = v59;
    sub_2166EF9C4(&v133, &v132);
    swift_isUniquelyReferenced_nonNull_native();
    v131 = v60;
    sub_2166EF9D4();
    v65 = v131;
    v66 = v108;
    sub_2166A6EA4();
    if (__swift_getEnumTagSinglePayload(v66, 1, v51) == 1)
    {
      sub_2166997CC(v66, &qword_27CABA820);
    }

    else
    {
      v67 = v104;
      v68 = v103;
      (*(v104 + 32))(v103, v66, v51);
      v69 = sub_217005DE4();
      v134 = v58;
      *&v133 = v69;
      *(&v133 + 1) = v70;
      sub_2166EF9C4(&v133, &v132);
      swift_isUniquelyReferenced_nonNull_native();
      v131 = v65;
      sub_2166EF9D4();
      v65 = v131;
      (*(v67 + 8))(v68, v51);
    }

    if (v107)
    {
      sub_21700DF14();
      sub_21700D6D4();
    }

    v110 = v62;
    v71 = v41;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v72 = sub_21700CF84();
    v73 = __swift_project_value_buffer(v72, qword_280E73DB0);
    v74 = v118;
    MEMORY[0x21CE9DD70](v97, v102, 0x6E6F74747562, 0xE600000000000000, v65, v73);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v75 = v119;
    v76 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v77 = swift_allocObject();
    v109 = xmmword_217013DA0;
    *(v77 + 16) = xmmword_217013DA0;
    v78 = v77 + v76;
    v79 = v120;
    (*(v75 + 16))(v78, v74, v120);
    v80 = v115;
    v81 = v55;
    v82 = v55;
    v83 = v117;
    (*(v115 + 16))(v111, v81, v117);
    v84 = v113;
    sub_21700D244();
    (*(v75 + 8))(v74, v79);
    (*(v80 + 8))(v82, v83);
    sub_2166997CC(v129, &qword_27CABA820);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6EE0);
    v85 = *(v71 - 8);
    v86 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = v109;
    (*(v85 + 16))(v87 + v86, v110, v71);
    v88 = v99;
    *v99 = v87;
    *(v88 + 8) = 0;
    (*(v114 + 32))(v88 + *(v100 + 40), v84, v116);
    type metadata accessor for MenuActionType();
    v89 = v130;
    swift_storeEnumTagMultiPayload();
    sub_2167A4788();
    v90 = v127;
    v91 = v126;
    v92 = v128;
    (*(v127 + 16))(v126, v125, v128);
    v93 = (v122 + *(v90 + 80) + ((*(v121 + 80) + 24) & ~*(v121 + 80))) & ~*(v90 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = v101;
    sub_2167A4788();
    (*(v90 + 32))(v94 + v93, v91, v92);
    v95 = type metadata accessor for MenuAction();
    v96 = (v89 + *(v95 + 20));
    *v96 = sub_2167A44E0;
    v96[1] = v94;
    __swift_storeEnumTagSinglePayload(v89, 0, 1, v95);
  }

  else
  {
    v63 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v130, 1, 1, v63);
  }
}

uint64_t sub_21678EC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v104 = a6;
  v101 = a5;
  v100 = a4;
  v102 = a3;
  v120 = a2;
  v125 = a7;
  v123 = sub_2170075A4();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v119 = v10;
  v121 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6EA0);
  v116 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v118 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v13;
  MEMORY[0x28223BE20](v12);
  v115 = (&v91 - v14);
  v15 = sub_21700CFB4();
  v114 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v113 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v105 = sub_217005EF4();
  v99 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v98 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_21700D704();
  v110 = *(v112 - 8);
  v18 = MEMORY[0x28223BE20](v112);
  v106 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v107 = &v91 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v103 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v124 = &v91 - v24;
  v111 = sub_21700D284();
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21700BAB4();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v91 - v31;
  sub_216C6D16C();
  sub_217006D94();

  v33 = sub_217006D24();

  if (v33 & 1) != 0 && (v94 = v15, v34 = a1, v95 = v11, v35 = v8[7], v36 = v8[8], __swift_project_boxed_opaque_existential_1(v8 + 4, v35), v96 = v8, v97 = *(v36 + 144), v37 = sub_21700BA44(), v38 = sub_2167A46B8(&qword_280E2A420, MEMORY[0x277CD7E58]), v93 = v37, v97(a1, v37, v38, v35, v36), (*(v27 + 104))(v30, *MEMORY[0x277D2AEE0], v26), v39 = sub_21700BAA4(), v40 = *(v27 + 8), v40(v30, v26), v40(v32, v26), (v39))
  {
    v41 = v93;
    v97 = sub_21700B934();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v45 = type metadata accessor for MenuConfiguration(0);
    v46 = v102;
    v47 = (v102 + *(v45 + 36));
    v48 = v47[1];
    v49 = MEMORY[0x277D837D0];
    *(inited + 48) = *v47;
    *(inited + 56) = v48;
    *(inited + 72) = v49;
    *(inited + 80) = 1684957547;
    v50 = v100;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v50;
    *(inited + 104) = v101;
    *(inited + 120) = v49;
    *(inited + 128) = 0x6F54646461;
    *(inited + 168) = v49;
    *(inited + 136) = 0xE500000000000000;
    strcpy((inited + 144), "StartOfQueue");
    *(inited + 157) = 0;
    *(inited + 158) = -5120;
    sub_21700DF14();
    sub_21700DF14();
    v51 = sub_21700E384();
    v52 = v105;
    __swift_storeEnumTagSinglePayload(v124, 1, 1, v105);
    v102 = *(v46 + *(v45 + 24) + 8);
    v53 = v107;
    sub_21700D6F4();
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v128 = v51;
    sub_2166EF9C4(&v128, &v127);
    v54 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v126 = v54;
    sub_2166EF9D4();
    v55 = v126;
    v129 = v49;
    v56 = 0xE800000000000000;
    *&v128 = 0x7478654E79616C70;
    *(&v128 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v128, &v127);
    swift_isUniquelyReferenced_nonNull_native();
    v126 = v55;
    sub_2166EF9D4();
    v57 = v126;
    v58 = 0x6472616F6279656BLL;
    switch(v104)
    {
      case 1:
        v56 = 0xE500000000000000;
        v58 = 0x79726F7473;
        break;
      case 2:
        v56 = 0xE400000000000000;
        v58 = 1701998445;
        break;
      case 3:
        v56 = 0xE500000000000000;
        v58 = 0x636972796CLL;
        break;
      case 4:
        v58 = 0xD000000000000010;
        v56 = 0x80000002170801D0;
        break;
      case 5:
        v56 = 0x80000002170801F0;
        v58 = 0xD000000000000012;
        break;
      case 6:
        v56 = 0xE900000000000075;
        v58 = 0x6E654D6570697773;
        break;
      case 7:
        v56 = 0x8000000217080210;
        v58 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v61 = MEMORY[0x277D837D0];
    v129 = MEMORY[0x277D837D0];
    *&v128 = v58;
    *(&v128 + 1) = v56;
    sub_2166EF9C4(&v128, &v127);
    swift_isUniquelyReferenced_nonNull_native();
    v126 = v57;
    sub_2166EF9D4();
    v62 = v126;
    v63 = v103;
    sub_2166A6EA4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v52);
    v92 = v34;
    if (EnumTagSinglePayload == 1)
    {
      sub_2166997CC(v63, &qword_27CABA820);
    }

    else
    {
      v65 = v99;
      v66 = v98;
      (*(v99 + 32))(v98, v63, v52);
      v67 = sub_217005DE4();
      v129 = v61;
      *&v128 = v67;
      *(&v128 + 1) = v68;
      sub_2166EF9C4(&v128, &v127);
      swift_isUniquelyReferenced_nonNull_native();
      v126 = v62;
      sub_2166EF9D4();
      v62 = v126;
      (*(v65 + 8))(v66, v52);
    }

    if (v102)
    {
      sub_21700DF14();
      sub_21700D6D4();
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v69 = sub_21700CF84();
    v70 = __swift_project_value_buffer(v69, qword_280E73DB0);
    v71 = v113;
    MEMORY[0x21CE9DD70](v97, v43, 0x6E6F74747562, 0xE600000000000000, v62, v70);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v72 = v114;
    v73 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v74 = swift_allocObject();
    v105 = xmmword_217013DA0;
    *(v74 + 16) = xmmword_217013DA0;
    v75 = v94;
    (*(v72 + 16))(v74 + v73, v71, v94);
    v76 = v110;
    v77 = v112;
    (*(v110 + 16))(v106, v53, v112);
    v78 = v108;
    sub_21700D244();
    (*(v72 + 8))(v71, v75);
    (*(v76 + 8))(v53, v77);
    sub_2166997CC(v124, &qword_27CABA820);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6EA8);
    v79 = *(v41 - 8);
    v80 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = v105;
    (*(v79 + 16))(v81 + v80, v92, v41);
    v82 = v115;
    *v115 = v81;
    *(v82 + 8) = 0;
    (*(v109 + 32))(v82 + *(v95 + 40), v78, v111);
    type metadata accessor for MenuActionType();
    v83 = v125;
    swift_storeEnumTagMultiPayload();
    sub_2167A4788();
    v84 = v122;
    v85 = v121;
    v86 = v123;
    (*(v122 + 16))(v121, v120, v123);
    v87 = (v117 + *(v84 + 80) + ((*(v116 + 80) + 24) & ~*(v116 + 80))) & ~*(v84 + 80);
    v88 = swift_allocObject();
    *(v88 + 16) = v96;
    sub_2167A4788();
    (*(v84 + 32))(v88 + v87, v85, v86);
    v89 = type metadata accessor for MenuAction();
    v90 = (v83 + *(v89 + 20));
    *v90 = sub_2167A4480;
    v90[1] = v88;
    __swift_storeEnumTagSinglePayload(v83, 0, 1, v89);
  }

  else
  {
    v59 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v125, 1, 1, v59);
  }
}

uint64_t sub_21678FBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v106 = a6;
  v103 = a5;
  v102 = a4;
  v104 = a3;
  v124 = a2;
  v128 = a7;
  v127 = sub_2170075A4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v123 = v10;
  v125 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E78);
  v120 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v122 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v13;
  MEMORY[0x28223BE20](v12);
  v119 = (&v95 - v14);
  v118 = sub_21700CFB4();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v107 = sub_217005EF4();
  v101 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v100 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_21700D704();
  v113 = *(v115 - 8);
  v17 = MEMORY[0x28223BE20](v115);
  v109 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v110 = &v95 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v105 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v95 - v23;
  v114 = sub_21700D284();
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v111 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21700BAB4();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v95 - v31;
  sub_216C6D16C();
  sub_217006D94();

  v33 = sub_217006D24();

  if (v33 & 1) != 0 && (v98 = v11, v108 = v24, v34 = v8[8], __swift_project_boxed_opaque_existential_1(v8 + 4, v8[7]), v99 = v8, v35 = *(v34 + 144), v97 = sub_21700C924(), v36 = a1, v37 = v108, v35(a1), (*(v27 + 104))(v30, *MEMORY[0x277D2AEE0], v26), v38 = sub_21700BAA4(), v39 = *(v27 + 8), v39(v30, v26), v39(v32, v26), (v38))
  {
    v96 = v36;
    v40 = v97;
    v95 = sub_21700B934();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v44 = type metadata accessor for MenuConfiguration(0);
    v45 = v104;
    v46 = (v104 + *(v44 + 36));
    v47 = v46[1];
    v48 = MEMORY[0x277D837D0];
    *(inited + 48) = *v46;
    *(inited + 56) = v47;
    *(inited + 72) = v48;
    *(inited + 80) = 1684957547;
    v49 = v102;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v49;
    *(inited + 104) = v103;
    *(inited + 120) = v48;
    *(inited + 128) = 0x6F54646461;
    *(inited + 168) = v48;
    *(inited + 136) = 0xE500000000000000;
    strcpy((inited + 144), "StartOfQueue");
    *(inited + 157) = 0;
    *(inited + 158) = -5120;
    sub_21700DF14();
    sub_21700DF14();
    v50 = sub_21700E384();
    v51 = v107;
    __swift_storeEnumTagSinglePayload(v37, 1, 1, v107);
    v52 = (v45 + *(v44 + 24));
    v54 = *v52;
    v53 = v52[1];
    v103 = v54;
    v104 = v53;
    v55 = v110;
    sub_21700D6F4();
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v131 = v50;
    sub_2166EF9C4(&v131, &v130);
    v56 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v129 = v56;
    sub_2166EF9D4();
    v57 = v129;
    v132 = v48;
    v58 = 0xE800000000000000;
    *&v131 = 0x7478654E79616C70;
    *(&v131 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v131, &v130);
    swift_isUniquelyReferenced_nonNull_native();
    v129 = v57;
    sub_2166EF9D4();
    v59 = v129;
    v60 = 0x6472616F6279656BLL;
    v61 = v40;
    switch(v106)
    {
      case 1:
        v58 = 0xE500000000000000;
        v60 = 0x79726F7473;
        break;
      case 2:
        v58 = 0xE400000000000000;
        v60 = 1701998445;
        break;
      case 3:
        v58 = 0xE500000000000000;
        v60 = 0x636972796CLL;
        break;
      case 4:
        v60 = 0xD000000000000010;
        v58 = 0x80000002170801D0;
        break;
      case 5:
        v58 = 0x80000002170801F0;
        v60 = 0xD000000000000012;
        break;
      case 6:
        v58 = 0xE900000000000075;
        v60 = 0x6E654D6570697773;
        break;
      case 7:
        v58 = 0x8000000217080210;
        v60 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v64 = MEMORY[0x277D837D0];
    v132 = MEMORY[0x277D837D0];
    *&v131 = v60;
    *(&v131 + 1) = v58;
    sub_2166EF9C4(&v131, &v130);
    swift_isUniquelyReferenced_nonNull_native();
    v129 = v59;
    sub_2166EF9D4();
    v65 = v129;
    v66 = v105;
    sub_2166A6EA4();
    if (__swift_getEnumTagSinglePayload(v66, 1, v51) == 1)
    {
      sub_2166997CC(v66, &qword_27CABA820);
    }

    else
    {
      v67 = v101;
      v68 = v100;
      (*(v101 + 32))(v100, v66, v51);
      v69 = sub_217005DE4();
      v132 = v64;
      *&v131 = v69;
      *(&v131 + 1) = v70;
      sub_2166EF9C4(&v131, &v130);
      swift_isUniquelyReferenced_nonNull_native();
      v129 = v65;
      sub_2166EF9D4();
      v65 = v129;
      (*(v67 + 8))(v68, v51);
      v61 = v40;
    }

    if (v104)
    {
      sub_21700DF14();
      sub_21700D6D4();
    }

    v71 = v61;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v72 = sub_21700CF84();
    v73 = __swift_project_value_buffer(v72, qword_280E73DB0);
    v74 = v116;
    MEMORY[0x21CE9DD70](v95, v42, 0x6E6F74747562, 0xE600000000000000, v65, v73);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v75 = v117;
    v76 = (*(v117 + 80) + 32) & ~*(v117 + 80);
    v77 = swift_allocObject();
    v107 = xmmword_217013DA0;
    *(v77 + 16) = xmmword_217013DA0;
    v78 = v77 + v76;
    v79 = v118;
    (*(v75 + 16))(v78, v74, v118);
    v80 = v113;
    v81 = v115;
    (*(v113 + 16))(v109, v55, v115);
    v82 = v111;
    sub_21700D244();
    (*(v75 + 8))(v74, v79);
    (*(v80 + 8))(v55, v81);
    sub_2166997CC(v108, &qword_27CABA820);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E80);
    v83 = *(v71 - 8);
    v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v107;
    (*(v83 + 16))(v85 + v84, v96, v71);
    v86 = v119;
    *v119 = v85;
    *(v86 + 8) = 0;
    (*(v112 + 32))(v86 + *(v98 + 40), v82, v114);
    type metadata accessor for MenuActionType();
    v87 = v128;
    swift_storeEnumTagMultiPayload();
    sub_2167A4788();
    v88 = v126;
    v89 = v125;
    v90 = v127;
    (*(v126 + 16))(v125, v124, v127);
    v91 = (v121 + *(v88 + 80) + ((*(v120 + 80) + 24) & ~*(v120 + 80))) & ~*(v88 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = v99;
    sub_2167A4788();
    (*(v88 + 32))(v92 + v91, v89, v90);
    v93 = type metadata accessor for MenuAction();
    v94 = (v87 + *(v93 + 20));
    *v94 = sub_2167A4420;
    v94[1] = v92;
    __swift_storeEnumTagSinglePayload(v87, 0, 1, v93);
  }

  else
  {
    v62 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v128, 1, 1, v62);
  }
}

uint64_t sub_216790B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v106 = a6;
  v103 = a5;
  v102 = a4;
  v104 = a3;
  v124 = a2;
  v128 = a7;
  v127 = sub_2170075A4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v123 = v10;
  v125 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E60);
  v120 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v122 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v13;
  MEMORY[0x28223BE20](v12);
  v119 = (&v95 - v14);
  v118 = sub_21700CFB4();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v107 = sub_217005EF4();
  v101 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v100 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_21700D704();
  v113 = *(v115 - 8);
  v17 = MEMORY[0x28223BE20](v115);
  v109 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v110 = &v95 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v105 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v95 - v23;
  v114 = sub_21700D284();
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v111 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21700BAB4();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v95 - v31;
  sub_216C6D16C();
  sub_217006D94();

  v33 = sub_217006D24();

  if (v33 & 1) != 0 && (v98 = v11, v108 = v24, v34 = v8[8], __swift_project_boxed_opaque_existential_1(v8 + 4, v8[7]), v99 = v8, v35 = *(v34 + 144), v97 = sub_21700C084(), v36 = a1, v37 = v108, v35(a1), (*(v27 + 104))(v30, *MEMORY[0x277D2AEE0], v26), v38 = sub_21700BAA4(), v39 = *(v27 + 8), v39(v30, v26), v39(v32, v26), (v38))
  {
    v96 = v36;
    v40 = v97;
    v95 = sub_21700B934();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v44 = type metadata accessor for MenuConfiguration(0);
    v45 = v104;
    v46 = (v104 + *(v44 + 36));
    v47 = v46[1];
    v48 = MEMORY[0x277D837D0];
    *(inited + 48) = *v46;
    *(inited + 56) = v47;
    *(inited + 72) = v48;
    *(inited + 80) = 1684957547;
    v49 = v102;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v49;
    *(inited + 104) = v103;
    *(inited + 120) = v48;
    *(inited + 128) = 0x6F54646461;
    *(inited + 168) = v48;
    *(inited + 136) = 0xE500000000000000;
    strcpy((inited + 144), "StartOfQueue");
    *(inited + 157) = 0;
    *(inited + 158) = -5120;
    sub_21700DF14();
    sub_21700DF14();
    v50 = sub_21700E384();
    v51 = v107;
    __swift_storeEnumTagSinglePayload(v37, 1, 1, v107);
    v52 = (v45 + *(v44 + 24));
    v54 = *v52;
    v53 = v52[1];
    v103 = v54;
    v104 = v53;
    v55 = v110;
    sub_21700D6F4();
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v131 = v50;
    sub_2166EF9C4(&v131, &v130);
    v56 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v129 = v56;
    sub_2166EF9D4();
    v57 = v129;
    v132 = v48;
    v58 = 0xE800000000000000;
    *&v131 = 0x7478654E79616C70;
    *(&v131 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v131, &v130);
    swift_isUniquelyReferenced_nonNull_native();
    v129 = v57;
    sub_2166EF9D4();
    v59 = v129;
    v60 = 0x6472616F6279656BLL;
    v61 = v40;
    switch(v106)
    {
      case 1:
        v58 = 0xE500000000000000;
        v60 = 0x79726F7473;
        break;
      case 2:
        v58 = 0xE400000000000000;
        v60 = 1701998445;
        break;
      case 3:
        v58 = 0xE500000000000000;
        v60 = 0x636972796CLL;
        break;
      case 4:
        v60 = 0xD000000000000010;
        v58 = 0x80000002170801D0;
        break;
      case 5:
        v58 = 0x80000002170801F0;
        v60 = 0xD000000000000012;
        break;
      case 6:
        v58 = 0xE900000000000075;
        v60 = 0x6E654D6570697773;
        break;
      case 7:
        v58 = 0x8000000217080210;
        v60 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v64 = MEMORY[0x277D837D0];
    v132 = MEMORY[0x277D837D0];
    *&v131 = v60;
    *(&v131 + 1) = v58;
    sub_2166EF9C4(&v131, &v130);
    swift_isUniquelyReferenced_nonNull_native();
    v129 = v59;
    sub_2166EF9D4();
    v65 = v129;
    v66 = v105;
    sub_2166A6EA4();
    if (__swift_getEnumTagSinglePayload(v66, 1, v51) == 1)
    {
      sub_2166997CC(v66, &qword_27CABA820);
    }

    else
    {
      v67 = v101;
      v68 = v100;
      (*(v101 + 32))(v100, v66, v51);
      v69 = sub_217005DE4();
      v132 = v64;
      *&v131 = v69;
      *(&v131 + 1) = v70;
      sub_2166EF9C4(&v131, &v130);
      swift_isUniquelyReferenced_nonNull_native();
      v129 = v65;
      sub_2166EF9D4();
      v65 = v129;
      (*(v67 + 8))(v68, v51);
      v61 = v40;
    }

    if (v104)
    {
      sub_21700DF14();
      sub_21700D6D4();
    }

    v71 = v61;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v72 = sub_21700CF84();
    v73 = __swift_project_value_buffer(v72, qword_280E73DB0);
    v74 = v116;
    MEMORY[0x21CE9DD70](v95, v42, 0x6E6F74747562, 0xE600000000000000, v65, v73);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v75 = v117;
    v76 = (*(v117 + 80) + 32) & ~*(v117 + 80);
    v77 = swift_allocObject();
    v107 = xmmword_217013DA0;
    *(v77 + 16) = xmmword_217013DA0;
    v78 = v77 + v76;
    v79 = v118;
    (*(v75 + 16))(v78, v74, v118);
    v80 = v113;
    v81 = v115;
    (*(v113 + 16))(v109, v55, v115);
    v82 = v111;
    sub_21700D244();
    (*(v75 + 8))(v74, v79);
    (*(v80 + 8))(v55, v81);
    sub_2166997CC(v108, &qword_27CABA820);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E68);
    v83 = *(v71 - 8);
    v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v107;
    (*(v83 + 16))(v85 + v84, v96, v71);
    v86 = v119;
    *v119 = v85;
    *(v86 + 8) = 0;
    (*(v112 + 32))(v86 + *(v98 + 40), v82, v114);
    type metadata accessor for MenuActionType();
    v87 = v128;
    swift_storeEnumTagMultiPayload();
    sub_2167A4788();
    v88 = v126;
    v89 = v125;
    v90 = v127;
    (*(v126 + 16))(v125, v124, v127);
    v91 = (v121 + *(v88 + 80) + ((*(v120 + 80) + 24) & ~*(v120 + 80))) & ~*(v88 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = v99;
    sub_2167A4788();
    (*(v88 + 32))(v92 + v91, v89, v90);
    v93 = type metadata accessor for MenuAction();
    v94 = (v87 + *(v93 + 20));
    *v94 = sub_2167A43F0;
    v94[1] = v92;
    __swift_storeEnumTagSinglePayload(v87, 0, 1, v93);
  }

  else
  {
    v62 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v128, 1, 1, v62);
  }
}

uint64_t sub_216791A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  *&v109 = a6;
  v106 = a5;
  v105 = a4;
  v107 = a3;
  v125 = a2;
  v130 = a7;
  v128 = sub_2170075A4();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v124 = v10;
  v126 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E00);
  v121 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v123 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = (&v97 - v14);
  v120 = sub_21700CFB4();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_217005EF4();
  v104 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v103 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_21700D704();
  v115 = *(v117 - 8);
  v18 = MEMORY[0x28223BE20](v117);
  v111 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v112 = &v97 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v108 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v129 = &v97 - v24;
  v116 = sub_21700D284();
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v113 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21700BAB4();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v97 - v31;
  sub_216C6D16C();
  sub_217006D94();

  v33 = sub_217006D24();

  if (v33 & 1) != 0 && (v100 = v11, v34 = a1, v99 = v15, v35 = v8[7], v36 = v8[8], __swift_project_boxed_opaque_existential_1(v8 + 4, v35), v101 = v8, v102 = *(v36 + 144), v37 = sub_2170070F4(), v38 = sub_2167A46B8(&qword_27CAB6E10, MEMORY[0x277D2ABF0]), v98 = v37, v102(a1, v37, v38, v35, v36), (*(v27 + 104))(v30, *MEMORY[0x277D2AEE0], v26), v39 = sub_21700BAA4(), v40 = *(v27 + 8), v40(v30, v26), v40(v32, v26), (v39))
  {
    sub_2167A46B8(&qword_27CAB6E18, MEMORY[0x277D2ABF0]);
    v41 = v98;
    v97 = sub_21700B934();
    v102 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v44 = type metadata accessor for MenuConfiguration(0);
    v45 = v107;
    v46 = (v107 + *(v44 + 36));
    v47 = v46[1];
    v48 = MEMORY[0x277D837D0];
    *(inited + 48) = *v46;
    *(inited + 56) = v47;
    *(inited + 72) = v48;
    *(inited + 80) = 1684957547;
    v49 = v105;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v49;
    *(inited + 104) = v106;
    *(inited + 120) = v48;
    *(inited + 128) = 0x6F54646461;
    *(inited + 168) = v48;
    *(inited + 136) = 0xE500000000000000;
    strcpy((inited + 144), "StartOfQueue");
    *(inited + 157) = 0;
    *(inited + 158) = -5120;
    sub_21700DF14();
    sub_21700DF14();
    v50 = sub_21700E384();
    v51 = v110;
    __swift_storeEnumTagSinglePayload(v129, 1, 1, v110);
    v52 = (v45 + *(v44 + 24));
    v54 = *v52;
    v53 = v52[1];
    v106 = v54;
    v107 = v53;
    v55 = v112;
    sub_21700D6F4();
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v133 = v50;
    sub_2166EF9C4(&v133, &v132);
    v56 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v131 = v56;
    sub_2166EF9D4();
    v57 = v131;
    v58 = v48;
    v134 = v48;
    v59 = 0xE800000000000000;
    *&v133 = 0x7478654E79616C70;
    *(&v133 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v133, &v132);
    swift_isUniquelyReferenced_nonNull_native();
    v131 = v57;
    sub_2166EF9D4();
    v60 = v131;
    v61 = 0x6472616F6279656BLL;
    v62 = v34;
    switch(v109)
    {
      case 1:
        v59 = 0xE500000000000000;
        v61 = 0x79726F7473;
        break;
      case 2:
        v59 = 0xE400000000000000;
        v61 = 1701998445;
        break;
      case 3:
        v59 = 0xE500000000000000;
        v61 = 0x636972796CLL;
        break;
      case 4:
        v61 = 0xD000000000000010;
        v59 = 0x80000002170801D0;
        break;
      case 5:
        v59 = 0x80000002170801F0;
        v61 = 0xD000000000000012;
        break;
      case 6:
        v59 = 0xE900000000000075;
        v61 = 0x6E654D6570697773;
        break;
      case 7:
        v59 = 0x8000000217080210;
        v61 = 0xD000000000000015;
        break;
      default:
        break;
    }

    v134 = v58;
    *&v133 = v61;
    *(&v133 + 1) = v59;
    sub_2166EF9C4(&v133, &v132);
    swift_isUniquelyReferenced_nonNull_native();
    v131 = v60;
    sub_2166EF9D4();
    v65 = v131;
    v66 = v108;
    sub_2166A6EA4();
    if (__swift_getEnumTagSinglePayload(v66, 1, v51) == 1)
    {
      sub_2166997CC(v66, &qword_27CABA820);
    }

    else
    {
      v67 = v104;
      v68 = v103;
      (*(v104 + 32))(v103, v66, v51);
      v69 = sub_217005DE4();
      v134 = v58;
      *&v133 = v69;
      *(&v133 + 1) = v70;
      sub_2166EF9C4(&v133, &v132);
      swift_isUniquelyReferenced_nonNull_native();
      v131 = v65;
      sub_2166EF9D4();
      v65 = v131;
      (*(v67 + 8))(v68, v51);
    }

    if (v107)
    {
      sub_21700DF14();
      sub_21700D6D4();
    }

    v110 = v62;
    v71 = v41;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v72 = sub_21700CF84();
    v73 = __swift_project_value_buffer(v72, qword_280E73DB0);
    v74 = v118;
    MEMORY[0x21CE9DD70](v97, v102, 0x6E6F74747562, 0xE600000000000000, v65, v73);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v75 = v119;
    v76 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v77 = swift_allocObject();
    v109 = xmmword_217013DA0;
    *(v77 + 16) = xmmword_217013DA0;
    v78 = v77 + v76;
    v79 = v120;
    (*(v75 + 16))(v78, v74, v120);
    v80 = v115;
    v81 = v55;
    v82 = v55;
    v83 = v117;
    (*(v115 + 16))(v111, v81, v117);
    v84 = v113;
    sub_21700D244();
    (*(v75 + 8))(v74, v79);
    (*(v80 + 8))(v82, v83);
    sub_2166997CC(v129, &qword_27CABA820);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E28);
    v85 = *(v71 - 8);
    v86 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = v109;
    (*(v85 + 16))(v87 + v86, v110, v71);
    v88 = v99;
    *v99 = v87;
    *(v88 + 8) = 0;
    (*(v114 + 32))(v88 + *(v100 + 40), v84, v116);
    type metadata accessor for MenuActionType();
    v89 = v130;
    swift_storeEnumTagMultiPayload();
    sub_2167A4788();
    v90 = v127;
    v91 = v126;
    v92 = v128;
    (*(v127 + 16))(v126, v125, v128);
    v93 = (v122 + *(v90 + 80) + ((*(v121 + 80) + 24) & ~*(v121 + 80))) & ~*(v90 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = v101;
    sub_2167A4788();
    (*(v90 + 32))(v94 + v93, v91, v92);
    v95 = type metadata accessor for MenuAction();
    v96 = (v89 + *(v95 + 20));
    *v96 = sub_2167A4360;
    v96[1] = v94;
    __swift_storeEnumTagSinglePayload(v89, 0, 1, v95);
  }

  else
  {
    v63 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v130, 1, 1, v63);
  }
}