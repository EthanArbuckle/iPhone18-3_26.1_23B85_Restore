void sub_21683D578()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v52 = v12;
  v14 = v13;
  v43 = *v0;
  v44 = v15;
  v46 = *(v43 + 88);
  v51 = *(v46 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  *(v0 + 36) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 17) = 0u;
  v19 = *(v18 + 208);
  type metadata accessor for BootstrapState();
  swift_allocObject();
  *&v0[v19] = sub_216683974();
  *&v0[*(*v0 + 216)] = 0;
  v49 = v11;
  v50 = v14;
  *(v0 + 11) = v14;
  sub_216683A80(v11, (v0 + 96), &qword_27CAB6A50);
  v48 = v9;
  sub_216683A80(v9, (v0 + 136), &qword_27CAB9450);
  v47 = v7;
  sub_216683A80(v7, (v0 + 176), &qword_27CAB6A60);
  v45 = v5;
  sub_216683A80(v5, (v0 + 216), &qword_27CAB6A58);
  if (v3)
  {
    v20 = sub_216685F4C(0, &qword_280E29BB8);
    v21 = sub_216685F8C(&unk_280E29BC0);
    v22 = v3;
  }

  else
  {
    v22 = 0;
    v20 = 0;
    v21 = 0;
    v53[1] = 0;
    v53[2] = 0;
  }

  v53[0] = v22;
  v53[3] = v20;
  v53[4] = v21;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v42 = v3;
  sub_2166861C8(v53, (v1 + 256), &qword_27CAB9458);
  swift_endAccess();
  v23 = v52;
  v24 = *(v51 + 16);
  v25 = v46;
  v24(&v1[*(*v1 + 200)], v52, v46);
  v26 = v43;
  v27 = type metadata accessor for ConcreteAppDestinationPageProvider();
  v24(v17, v23, v25);
  *(v1 + 5) = sub_2166863B0();
  v28 = *(v26 + 80);
  v29 = *(v26 + 96);
  v30 = OUTLINED_FUNCTION_108();
  nullsub_1(v30, v31, v29);
  OUTLINED_FUNCTION_110();
  *(v1 + 9) = _s11PageContextVMa();
  *(v1 + 10) = &off_282927E48;
  *(v1 + 6) = v27;
  type metadata accessor for PresentationStack();
  swift_unknownObjectRetain();
  v32 = sub_216692CE8();
  v33 = v44;
  v34 = *(v44 + 88);
  v35 = *(v44 + 72);
  OUTLINED_FUNCTION_181();
  v36 = swift_allocObject();
  v36[2] = v28;
  v36[3] = v29;
  v36[4] = v32;
  type metadata accessor for AcknowledgementPresenter();
  swift_allocObject();

  v37 = v34;
  v38 = v35;

  v39 = OUTLINED_FUNCTION_227();
  *(v1 + 3) = sub_216B945F8(v39, v40, v38, v41, v36);
  *(v1 + 4) = v32;
  *(v1 + 2) = v33;

  sub_216697024(0);
  swift_unknownObjectRelease();

  sub_216697664(v45, &qword_27CAB6A58);
  sub_216697664(v47, &qword_27CAB6A60);
  sub_216697664(v48, &qword_27CAB9450);
  sub_216697664(v49, &qword_27CAB6A50);
  (*(v51 + 8))(v52, v25);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21683DA24()
{
  v0 = type metadata accessor for MusicAppDestinationContext(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PresentationItem.Destination();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  swift_storeEnumTagMultiPayload();
  *(v3 + 4) = 0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v8 = *(v1 + 28);
  v9 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(&v3[v8], 1, 1, v9);
  sub_216AF3510();
  sub_216845208(v3, type metadata accessor for MusicAppDestinationContext);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21683DBC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21700DFD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v6 = type metadata accessor for ListenNowPageIntent();
  a1[3] = v6;
  a1[4] = sub_2166C2594(&unk_280E3DBD0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(v6 + 20);
  v9 = type metadata accessor for ReferrerInfo();
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v8, 1, 1, v9);
  sub_216B19908(0, 0x2D796E612F31762FLL, 0xEC00000065676170, boxed_opaque_existential_1);
  return (*(v3 + 8))(v5, v2);
}

void sub_21683DD48()
{
  OUTLINED_FUNCTION_49();
  v53 = v2;
  OUTLINED_FUNCTION_110();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v4 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v4);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1();
  v51 = v11;
  v52 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v12 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v50 = v14;
  OUTLINED_FUNCTION_4_1();
  type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  v16 = sub_21700C324();
  if (!v17)
  {
    v16 = sub_21700C344();
  }

  v18 = v16;
  v19 = v17;
  OUTLINED_FUNCTION_169();
  v20 = sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  *v0 = 5;
  OUTLINED_FUNCTION_33_14();
  *(v0 + 88) = v18;
  *(v0 + 96) = v19;
  *(v0 + 104) = 0;
  *(v0 + 112) = v1;
  if (sub_21688D828(3, 48))
  {
    OUTLINED_FUNCTION_214();
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    OUTLINED_FUNCTION_29_9();
    v24 = OUTLINED_FUNCTION_225();
    v25(v24);
    OUTLINED_FUNCTION_214();
    sub_21700D244();
    v26 = OUTLINED_FUNCTION_113_2();
    v27(v26);
  }

  v28 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0) + 48));
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v0, v7);
  *v28 = 0;
  v28[1] = 0;
  OUTLINED_FUNCTION_194();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v20);
  type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_228();
  v40 = OUTLINED_FUNCTION_104_0();
  v41(v40);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v7, v50 + v42);
  sub_217006214();
  sub_2170061F4();
  v43 = OUTLINED_FUNCTION_114_2();
  v44(v43);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v7, v45);
  (*(v51 + 8))(v18, v52);
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_211(v46, v47, &qword_27CABF7B0);
  sub_21683E974(v50, v53);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v50, v48);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v0, v49);
  OUTLINED_FUNCTION_26();
}

void sub_21683E188()
{
  OUTLINED_FUNCTION_49();
  v51 = v3;
  v49 = v4;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_75_2();
  v7 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v50 = OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v16 = OUTLINED_FUNCTION_71_1();
  v17 = type metadata accessor for FlowAction(v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  if (sub_21688D828(44, 48))
  {
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    OUTLINED_FUNCTION_29_9();
    v22(v11, v0, v7);
    sub_21700D244();
    v23 = OUTLINED_FUNCTION_38();
    v24(v23);
  }

  sub_21700C084();
  OUTLINED_FUNCTION_34();
  (*(v25 + 16))(v1, v49);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_8();
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_219(v26, v27, v28, v29);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v38 = v21 + v17[10];
  v39 = OUTLINED_FUNCTION_172();
  (*(v14 + 16))(v21, v2, v50, v39);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v1, v21 + v40);
  sub_217006214();
  v41 = sub_2170061F4();
  v43 = v42;
  v44 = OUTLINED_FUNCTION_114_2();
  v45(v44);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v1, v46);
  (*(v14 + 8))(v2, v50);
  v47 = (v21 + v17[6]);
  *v47 = v41;
  v47[1] = v43;
  *(v21 + v17[7]) = 0;
  sub_2166861C8(&v52, v38, &qword_27CABF7B0);
  sub_21683E974(v21, v51);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v21, v48);
  OUTLINED_FUNCTION_26();
}

void sub_21683E560()
{
  OUTLINED_FUNCTION_49();
  v53 = v2;
  v52 = v3;
  v50 = v4;
  OUTLINED_FUNCTION_110();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v6 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v6);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v51 = v8;
  OUTLINED_FUNCTION_4_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v12 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71_1();
  v14 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  v19 = sub_21700C0B4();
  if (!v20)
  {
    v19 = sub_21700C164();
  }

  v21 = v19;
  v22 = v20;
  OUTLINED_FUNCTION_169();
  v23 = *(v14 + 24);
  v24 = sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  OUTLINED_FUNCTION_105_1(4);
  if (sub_21688D828(0, 48))
  {
    OUTLINED_FUNCTION_234();
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    v28 = OUTLINED_FUNCTION_144();
    v29(v28);
    OUTLINED_FUNCTION_234();
    sub_21700D244();
    (*(v0 + 8))(v0, v23);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0);
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v18, v51);
  v30 = v50;
  if (!v52)
  {
    v30 = 0;
  }

  OUTLINED_FUNCTION_246(v30);
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_219(v31, v32, v33, v24);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v42 = OUTLINED_FUNCTION_89_5();
  v43(v42);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v51, v1 + v44);
  sub_21700DF14();
  sub_217006214();
  sub_2170061F4();
  v45 = OUTLINED_FUNCTION_195();
  v46(v45);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v51, v47);
  (*(v0 + 8))(v21, v21);
  OUTLINED_FUNCTION_184();
  sub_2166861C8(&v54, v22, &qword_27CABF7B0);
  sub_21683E974(v1, v53);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v1, v48);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v18, v49);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21683E974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2168451B0(a1, a2);
  OUTLINED_FUNCTION_0_1();
  v5 = *(v2 + *(v4 + 208));
  v6 = type metadata accessor for FlowActionPageView();
  *(a2 + *(v6 + 20)) = v5;
  v7 = (a2 + *(v6 + 24));
  type metadata accessor for MusicStackAuthority();
  OUTLINED_FUNCTION_93_5();
  sub_2166C2594(v8);

  OUTLINED_FUNCTION_116();
  result = sub_217008CF4();
  *v7 = result;
  v7[1] = v10;
  return result;
}

void sub_21683EA2C()
{
  OUTLINED_FUNCTION_49();
  v53 = v2;
  v52 = v3;
  v50 = v4;
  OUTLINED_FUNCTION_110();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v6 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v6);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v51 = v8;
  OUTLINED_FUNCTION_4_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v12 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71_1();
  v14 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  v19 = sub_21700C764();
  if (!v20)
  {
    v19 = sub_21700C7C4();
  }

  v21 = v19;
  v22 = v20;
  OUTLINED_FUNCTION_169();
  v23 = *(v14 + 24);
  v24 = sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  OUTLINED_FUNCTION_105_1(14);
  if (sub_21688D828(26, 48))
  {
    OUTLINED_FUNCTION_234();
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    v28 = OUTLINED_FUNCTION_144();
    v29(v28);
    OUTLINED_FUNCTION_234();
    sub_21700D244();
    (*(v0 + 8))(v0, v23);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0);
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v18, v51);
  v30 = v50;
  if (!v52)
  {
    v30 = 0;
  }

  OUTLINED_FUNCTION_246(v30);
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_219(v31, v32, v33, v24);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v42 = OUTLINED_FUNCTION_89_5();
  v43(v42);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v51, v1 + v44);
  sub_21700DF14();
  sub_217006214();
  sub_2170061F4();
  v45 = OUTLINED_FUNCTION_195();
  v46(v45);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v51, v47);
  (*(v0 + 8))(v21, v21);
  OUTLINED_FUNCTION_184();
  sub_2166861C8(&v54, v22, &qword_27CABF7B0);
  sub_21683E974(v1, v53);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v1, v48);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v18, v49);
  OUTLINED_FUNCTION_26();
}

void sub_21683EE44()
{
  OUTLINED_FUNCTION_49();
  v53 = v2;
  OUTLINED_FUNCTION_110();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v4 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v4);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1();
  v51 = v11;
  v52 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v12 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v50 = v14;
  OUTLINED_FUNCTION_4_1();
  type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  v16 = sub_217007254();
  if (!v17)
  {
    v16 = sub_217007214();
  }

  v18 = v16;
  v19 = v17;
  OUTLINED_FUNCTION_169();
  v20 = sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  *v0 = 22;
  OUTLINED_FUNCTION_33_14();
  *(v0 + 88) = v18;
  *(v0 + 96) = v19;
  *(v0 + 104) = 0;
  *(v0 + 112) = v1;
  if (sub_21688D828(47, 48))
  {
    OUTLINED_FUNCTION_214();
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    OUTLINED_FUNCTION_29_9();
    v24 = OUTLINED_FUNCTION_225();
    v25(v24);
    OUTLINED_FUNCTION_214();
    sub_21700D244();
    v26 = OUTLINED_FUNCTION_113_2();
    v27(v26);
  }

  v28 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0) + 48));
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v0, v7);
  *v28 = 0;
  v28[1] = 0;
  OUTLINED_FUNCTION_194();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v20);
  type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_228();
  v40 = OUTLINED_FUNCTION_104_0();
  v41(v40);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v7, v50 + v42);
  sub_217006214();
  sub_2170061F4();
  v43 = OUTLINED_FUNCTION_114_2();
  v44(v43);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v7, v45);
  (*(v51 + 8))(v18, v52);
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_211(v46, v47, &qword_27CABF7B0);
  sub_21683E974(v50, v53);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v50, v48);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v0, v49);
  OUTLINED_FUNCTION_26();
}

void sub_21683F284()
{
  OUTLINED_FUNCTION_49();
  v4 = v3;
  v6 = v5;
  v68 = v7;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v9 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v9);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v64 = v11;
  OUTLINED_FUNCTION_4_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  v61 = v13;
  v62 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_1();
  v66 = v16;
  v67 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v69 = v17;
  v18 = OUTLINED_FUNCTION_4_1();
  v19 = type metadata accessor for FlowAction(v18);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_173();
  v21 = type metadata accessor for SocialProfilePageIntent();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v24 - v23;
  v26 = type metadata accessor for ContentDescriptor();
  v27 = OUTLINED_FUNCTION_36(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  v63 = v28;
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  *v0 = 18;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = v6;
  *(v0 + 32) = v4;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v0, v25);
  sub_21700DF14();
  v32 = sub_216841AA4(v1, v6, v4);
  v33 = type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  *(v25 + *(v21 + 20)) = v32 & 1;
  if (sub_21688D828(42, 48))
  {
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    OUTLINED_FUNCTION_228();
    v37 = OUTLINED_FUNCTION_229();
    v38(v37);
    sub_21700D244();
    (*(v61 + 8))(v1, v62);
  }

  v64[3] = v21;
  v64[4] = sub_2166C2594(&unk_27CAB94A0);
  __swift_allocate_boxed_opaque_existential_1(v64);
  v39 = OUTLINED_FUNCTION_69_5();
  sub_2168451B0(v39, v40);
  swift_storeEnumTagMultiPayload();
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v63);
  type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v33);
  v51 = v2 + v19[10];
  *(v51 + 32) = 0;
  *v51 = 0u;
  *(v51 + 16) = 0u;
  (*(v66 + 16))(v2, v69, v67);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v64, v2 + v52);
  sub_217006214();
  v53 = sub_2170061F4();
  v65 = v54;
  v55 = OUTLINED_FUNCTION_114_2();
  v56(v55);
  (*(v66 + 8))(v69, v67);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v64, v57);
  v58 = (v2 + v19[6]);
  *v58 = v53;
  v58[1] = v65;
  *(v2 + v19[7]) = 0;
  sub_2166861C8(v70, v51, &qword_27CABF7B0);
  sub_21683E974(v2, v68);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v2, v59);
  sub_216845208(v25, type metadata accessor for SocialProfilePageIntent);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v0, v60);
  OUTLINED_FUNCTION_26();
}

void sub_21683F7F8()
{
  OUTLINED_FUNCTION_49();
  v175 = v0;
  v2 = v1;
  v183 = v3;
  v163 = type metadata accessor for CuratorDetailPageIntent();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v179 = v5;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94A8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  v182 = v7;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9460);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v176 = v9;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A70);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  v178 = v11;
  OUTLINED_FUNCTION_4_1();
  v174 = type metadata accessor for FlowActionPageView();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  v177 = v13;
  OUTLINED_FUNCTION_4_1();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v171 = v15;
  v172 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v169 = v16;
  v17 = OUTLINED_FUNCTION_4_1();
  v165 = type metadata accessor for FlowAction.Destination(v17);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v170 = v19;
  OUTLINED_FUNCTION_4_1();
  v160 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v159 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v157 = v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47_1();
  v158 = v24;
  OUTLINED_FUNCTION_4_1();
  v168 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v166 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  v161 = v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47_1();
  v155 = v29;
  v30 = OUTLINED_FUNCTION_4_1();
  v167 = type metadata accessor for FlowAction(v30);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  v162 = v32;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47_1();
  v156 = v34;
  OUTLINED_FUNCTION_4_1();
  v35 = type metadata accessor for AppleCuratorDetailPageIntent();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_0();
  v164 = v37;
  OUTLINED_FUNCTION_4_1();
  type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_77();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v154 - v43;
  v45 = sub_21700C514();
  OUTLINED_FUNCTION_1();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_7();
  v51 = v50 - v49;
  v52 = sub_21700C4E4();
  v54 = v53;
  sub_21700C524();
  v55 = (*(v47 + 88))(v51, v45);
  if (v55 == *MEMORY[0x277CD8490])
  {
    OUTLINED_FUNCTION_169();
    v56 = sub_217005EF4();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v56);
    *v41 = 2;
    *(v41 + 8) = 0u;
    *(v41 + 24) = 0u;
    *(v41 + 40) = 0u;
    *(v41 + 56) = 0u;
    *(v41 + 72) = 0u;
    *(v41 + 88) = v52;
    *(v41 + 96) = v54;
    *(v41 + 104) = 0;
    *(v41 + 112) = v2;
    OUTLINED_FUNCTION_14_15();
    v164 = v41;
    v60 = v41;
    v61 = v179;
    sub_2168451B0(v60, v179);
    v62 = v163;
    v63 = type metadata accessor for ReferrerInfo();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v63);
    if (sub_21688D828(9, 48))
    {
      v67 = v161;
      sub_21700D234();
    }

    else
    {
      v78 = v158;
      sub_21700D6F4();
      OUTLINED_FUNCTION_16_20();
      sub_21700D6D4();
      OUTLINED_FUNCTION_29_9();
      v79(v157, v78, v160);
      v67 = v161;
      sub_21700D244();
      v80 = OUTLINED_FUNCTION_158();
      v81(v80);
    }

    v82 = v170;
    v170[3] = v62;
    v82[4] = sub_2166C2594(&unk_27CAB94B0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
    sub_2168451B0(v61, boxed_opaque_existential_1);
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_31_8();
    v84 = v167;
    v85 = v162;
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_219(v86, v87, v88, v56);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v63);
    v96 = v85 + v84[10];
    OUTLINED_FUNCTION_172();
    v97 = v166;
    v98 = OUTLINED_FUNCTION_73_5();
    v99 = v168;
    v100(v98);
    OUTLINED_FUNCTION_7_25();
    sub_2168451B0(v82, v85 + v101);
    v102 = v169;
    sub_217006214();
    v103 = sub_2170061F4();
    v105 = v104;
    (*(v171 + 8))(v102, v172);
    (*(v97 + 8))(v67, v99);
    OUTLINED_FUNCTION_6_27();
    sub_216845208(v82, v106);
    v107 = (v85 + v84[6]);
    *v107 = v103;
    v107[1] = v105;
    *(v85 + v84[7]) = 0;
    sub_2166861C8(v184, v96, &qword_27CABF7B0);
    v108 = v177;
    sub_21683E974(v85, v177);
    OUTLINED_FUNCTION_8_19();
    sub_2168451B0(v108, v176);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_34();
    sub_2166C2594(v109);
    v110 = v178;
    OUTLINED_FUNCTION_149_1();
    OUTLINED_FUNCTION_239(v110);
    swift_storeEnumTagMultiPayload();
    sub_2166B53E0();
    sub_217009554();
    OUTLINED_FUNCTION_191();
    sub_216697664(v111, v112);
    OUTLINED_FUNCTION_9_28();
    sub_216845208(v108, v113);
    OUTLINED_FUNCTION_5_23();
    sub_216845208(v85, v114);
    sub_216845208(v179, type metadata accessor for CuratorDetailPageIntent);
    OUTLINED_FUNCTION_15_16();
    v116 = v164;
LABEL_12:
    sub_216845208(v116, v115);
    goto LABEL_13;
  }

  if (v55 == *MEMORY[0x277CD8488])
  {
    OUTLINED_FUNCTION_169();
    v68 = sub_217005EF4();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v68);
    *v44 = 9;
    *(v44 + 8) = 0u;
    *(v44 + 24) = 0u;
    *(v44 + 40) = 0u;
    *(v44 + 56) = 0u;
    *(v44 + 72) = 0u;
    *(v44 + 11) = v52;
    *(v44 + 12) = v54;
    *(v44 + 13) = 0;
    v44[112] = v2;
    OUTLINED_FUNCTION_14_15();
    sub_2168451B0(v44, v164);
    v72 = v35;
    v73 = type metadata accessor for ReferrerInfo();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v73);
    if (sub_21688D828(9, 48))
    {
      v77 = v155;
      sub_21700D234();
    }

    else
    {
      sub_21700D6F4();
      OUTLINED_FUNCTION_16_20();
      sub_21700D6D4();
      OUTLINED_FUNCTION_29_9();
      v117 = OUTLINED_FUNCTION_104_0();
      v118(v117);
      v119 = v155;
      sub_21700D244();
      v120 = OUTLINED_FUNCTION_158();
      v77 = v119;
      v121(v120);
    }

    v122 = v170;
    v170[3] = v72;
    v122[4] = sub_2166C2594(&unk_27CAB94B8);
    v123 = __swift_allocate_boxed_opaque_existential_1(v122);
    sub_2168451B0(v164, v123);
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_31_8();
    v124 = v167;
    v125 = v156;
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v126, v127, v128, v68);
    type metadata accessor for Page.Header(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v129, v130, v131, v132);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v133, v134, v135, v73);
    v136 = v125 + v124[10];
    v137 = OUTLINED_FUNCTION_172();
    (*(v166 + 16))(v125, v77, v168, v137);
    OUTLINED_FUNCTION_7_25();
    sub_2168451B0(v122, v125 + v138);
    v139 = v169;
    sub_217006214();
    v140 = sub_2170061F4();
    v179 = v141;
    (*(v171 + 8))(v139, v172);
    v142 = OUTLINED_FUNCTION_226();
    v143(v142);
    OUTLINED_FUNCTION_6_27();
    sub_216845208(v122, v144);
    v145 = (v125 + v124[6]);
    v146 = v179;
    *v145 = v140;
    v145[1] = v146;
    *(v125 + v124[7]) = 0;
    sub_2166861C8(v184, v136, &qword_27CABF7B0);
    v147 = v177;
    sub_21683E974(v125, v177);
    OUTLINED_FUNCTION_8_19();
    sub_2168451B0(v147, v176);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_34();
    sub_2166C2594(v148);
    v149 = v178;
    OUTLINED_FUNCTION_149_1();
    OUTLINED_FUNCTION_239(v149);
    swift_storeEnumTagMultiPayload();
    sub_2166B53E0();
    sub_217009554();
    OUTLINED_FUNCTION_191();
    sub_216697664(v150, v151);
    OUTLINED_FUNCTION_9_28();
    sub_216845208(v147, v152);
    OUTLINED_FUNCTION_5_23();
    sub_216845208(v125, v153);
    sub_216845208(v164, type metadata accessor for AppleCuratorDetailPageIntent);
    OUTLINED_FUNCTION_15_16();
    v116 = v44;
    goto LABEL_12;
  }

  swift_storeEnumTagMultiPayload();
  sub_2166B53E0();
  sub_217009554();
  (*(v47 + 8))(v51, v45);
LABEL_13:
  OUTLINED_FUNCTION_26();
}

void sub_216840520()
{
  OUTLINED_FUNCTION_49();
  v74 = v1;
  OUTLINED_FUNCTION_110();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105();
  v77 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  v76 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  v75 = v11;
  v12 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v73 = v14;
  OUTLINED_FUNCTION_4_1();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v71 = v16;
  v72 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = v17;
  v19 = OUTLINED_FUNCTION_4_1();
  v70 = type metadata accessor for FlowAction(v19);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71_1();
  v21 = type metadata accessor for PlaylistCollaboratorsDetailPageIntent();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  v24 = v23;
  OUTLINED_FUNCTION_4_1();
  type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7();
  v28 = v27 - v26;
  v29 = sub_21700C764();
  if (!v30)
  {
    v29 = sub_21700C7C4();
  }

  v31 = v29;
  v32 = v30;
  v80 = 1;
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  v34 = v33;
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);
  OUTLINED_FUNCTION_139_0(14);
  *(v28 + 88) = v31;
  *(v28 + 96) = v32;
  *(v28 + 104) = 0;
  *(v28 + 112) = 1;
  v38 = sub_21700C804();
  v40 = v39;
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v28, v24 + v41);
  v42 = type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  *v24 = v38;
  v24[1] = v40;
  sub_21700D234();
  v73[3] = v21;
  v73[4] = sub_2166C2594(&unk_27CAB94C0);
  __swift_allocate_boxed_opaque_existential_1(v73);
  v46 = OUTLINED_FUNCTION_69_5();
  sub_2168451B0(v46, v47);
  swift_storeEnumTagMultiPayload();
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v34);
  type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v42);
  v58 = v0 + v70[10];
  *(v58 + 32) = 0;
  *v58 = 0u;
  *(v58 + 16) = 0u;
  OUTLINED_FUNCTION_228();
  v59(v0, v18, v72);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v73, v0 + v60);
  sub_217006214();
  v61 = sub_2170061F4();
  v63 = v62;
  v64 = OUTLINED_FUNCTION_42_11();
  v65(v64);
  (*(v71 + 8))(v18, v72);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v73, v66);
  v67 = (v0 + v70[6]);
  *v67 = v61;
  v67[1] = v63;
  *(v0 + v70[7]) = 0;
  sub_2166861C8(v78, v58, &qword_27CABF7B0);
  sub_2167C5834(v75, v0 + v70[8], &qword_27CABA820);
  sub_2167C5834(v76, v0 + v70[11], &qword_27CAB6BF0);
  sub_2167C5834(v77, v0 + v70[9], &qword_27CAB6FD0);
  sub_21683E974(v0, v74);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v0, v68);
  sub_216845208(v24, type metadata accessor for PlaylistCollaboratorsDetailPageIntent);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v28, v69);
  OUTLINED_FUNCTION_26();
}

void sub_216840A94()
{
  OUTLINED_FUNCTION_49();
  v49 = v8;
  OUTLINED_FUNCTION_110();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v10 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v10);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_75_2();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v48 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v16 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction(v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_173();
  v18 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  sub_21700C954();
  v19 = OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  *v0 = v2;
  OUTLINED_FUNCTION_33_14();
  *(v0 + 88) = v1;
  *(v0 + 96) = v3;
  *(v0 + 104) = 0;
  *(v0 + 112) = v2;
  if (sub_21688D828(9, 48))
  {
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    v3 = v48;
    v23 = OUTLINED_FUNCTION_73_5();
    v24(v23);
    sub_21700D244();
    v25 = OUTLINED_FUNCTION_113_2();
    v26(v25);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0);
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v0, v4);
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_221_0(v27, v28, v29, v19);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_220(v30, v31, v32, v33);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  OUTLINED_FUNCTION_45_8();
  v38 = OUTLINED_FUNCTION_137();
  v39(v38);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v4, v6 + v40);
  sub_217006214();
  sub_2170061F4();
  v41 = OUTLINED_FUNCTION_114_2();
  v42(v41);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v4, v43);
  (*(v7 + 8))(v3, v5);
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_211(v44, v45, &qword_27CABF7B0);
  sub_21683E974(v6, v49);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v6, v46);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v0, v47);
  OUTLINED_FUNCTION_26();
}

void sub_216840E74()
{
  OUTLINED_FUNCTION_49();
  v49 = v8;
  OUTLINED_FUNCTION_110();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v10 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v10);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_75_2();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v48 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v16 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction(v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_173();
  v18 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  sub_21700C234();
  v19 = OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  *v0 = 0;
  OUTLINED_FUNCTION_33_14();
  *(v0 + 88) = v1;
  *(v0 + 96) = v3;
  *(v0 + 104) = 0;
  *(v0 + 112) = v2;
  if (sub_21688D828(13, 48))
  {
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    OUTLINED_FUNCTION_16_20();
    sub_21700D6D4();
    v3 = v48;
    v23 = OUTLINED_FUNCTION_73_5();
    v24(v23);
    sub_21700D244();
    v25 = OUTLINED_FUNCTION_113_2();
    v26(v25);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0);
  OUTLINED_FUNCTION_14_15();
  sub_2168451B0(v0, v4);
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_221_0(v27, v28, v29, v19);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_220(v30, v31, v32, v33);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  OUTLINED_FUNCTION_45_8();
  v38 = OUTLINED_FUNCTION_137();
  v39(v38);
  OUTLINED_FUNCTION_7_25();
  sub_2168451B0(v4, v6 + v40);
  sub_217006214();
  sub_2170061F4();
  v41 = OUTLINED_FUNCTION_114_2();
  v42(v41);
  OUTLINED_FUNCTION_6_27();
  sub_216845208(v4, v43);
  (*(v7 + 8))(v3, v5);
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_211(v44, v45, &qword_27CABF7B0);
  sub_21683E974(v6, v49);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v6, v46);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v0, v47);
  OUTLINED_FUNCTION_26();
}

void sub_216841250()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v127 = v2;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9460);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  v126 = v4;
  OUTLINED_FUNCTION_4_1();
  v125 = type metadata accessor for FlowActionPageView();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v123 = v6;
  OUTLINED_FUNCTION_4_1();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v121 = v8;
  v122 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v120 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v130 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
  OUTLINED_FUNCTION_36(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  v129 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_36(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_105();
  v128 = v18;
  v19 = OUTLINED_FUNCTION_4_1();
  v117 = type metadata accessor for FlowAction.Destination(v19);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v114 - v25;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v118 = v28;
  v119 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v116 = v29;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47_1();
  v115 = v31;
  v32 = OUTLINED_FUNCTION_4_1();
  v33 = type metadata accessor for FlowAction(v32);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_77();
  v37 = (v35 - v36);
  MEMORY[0x28223BE20](v38);
  v40 = &v114 - v39;
  type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v114 - v46;
  v49 = *v1;
  v48 = v1[1];
  if (v1[4])
  {
    v50 = v1[3];
    v115 = v1[2];
    v131 = 1;
    v51 = sub_217005EF4();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
    *v44 = 14;
    *(v44 + 8) = 0u;
    *(v44 + 24) = 0u;
    *(v44 + 40) = 0u;
    *(v44 + 56) = 0u;
    *(v44 + 72) = 0u;
    *(v44 + 88) = v49;
    *(v44 + 96) = v48;
    *(v44 + 104) = 0;
    *(v44 + 112) = 1;
    sub_21700DF14();
    sub_21700DF14();
    sub_21700D234();
    v55 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0) + 48));
    OUTLINED_FUNCTION_14_15();
    sub_2168451B0(v44, v23);
    v56 = v115;
    if (!v50)
    {
      v56 = 0;
    }

    *v55 = v56;
    v55[1] = v50;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v51);
    type metadata accessor for Page.Header(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    type metadata accessor for ReferrerInfo();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
    v68 = &v37[v33[10]];
    *(v68 + 32) = 0;
    *v68 = 0u;
    *(v68 + 16) = 0u;
    v69 = v118;
    v70 = v119;
    v71 = OUTLINED_FUNCTION_227();
    v72(v71);
    OUTLINED_FUNCTION_7_25();
    sub_2168451B0(v23, &v37[v73]);
    v74 = v120;
    sub_217006214();
    v75 = sub_2170061F4();
    v77 = v76;
    (*(v121 + 8))(v74, v122);
    OUTLINED_FUNCTION_6_27();
    sub_216845208(v23, v78);
    (*(v69 + 8))(v116, v70);
    v79 = &v37[v33[6]];
    *v79 = v75;
    v79[1] = v77;
    v37[v33[7]] = 0;
    sub_2166861C8(&v131, v68, &qword_27CABF7B0);
    sub_2167C5834(v128, &v37[v33[8]], &qword_27CABA820);
    sub_2167C5834(v129, &v37[v33[11]], &qword_27CAB6BF0);
    sub_2167C5834(v130, &v37[v33[9]], &qword_27CAB6FD0);
    v40 = v37;
    v47 = v44;
  }

  else
  {
    v131 = 1;
    v80 = sub_217005EF4();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v80);
    OUTLINED_FUNCTION_139_0(5);
    *(v47 + 11) = v49;
    *(v47 + 12) = v48;
    *(v47 + 13) = 0;
    v47[112] = 1;
    sub_21700DF14();
    sub_21700D234();
    v84 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0) + 48)];
    OUTLINED_FUNCTION_14_15();
    sub_2168451B0(v47, v26);
    *v84 = 0;
    *(v84 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v80);
    type metadata accessor for Page.Header(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
    type metadata accessor for ReferrerInfo();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
    OUTLINED_FUNCTION_45_8();
    v96 = v118;
    v97 = v119;
    v98 = OUTLINED_FUNCTION_109_0();
    v99(v98);
    OUTLINED_FUNCTION_7_25();
    sub_2168451B0(v26, &v40[v100]);
    v101 = v120;
    sub_217006214();
    v102 = sub_2170061F4();
    v104 = v103;
    (*(v121 + 8))(v101, v122);
    OUTLINED_FUNCTION_6_27();
    sub_216845208(v26, v105);
    v106 = (*(v96 + 8))(v115, v97);
    v107 = &v40[v33[6]];
    *v107 = v102;
    v107[1] = v104;
    v40[v33[7]] = 0;
    OUTLINED_FUNCTION_211(v106, v108, &qword_27CABF7B0);
    sub_2167C5834(v128, &v40[v33[8]], &qword_27CABA820);
    sub_2167C5834(v129, &v40[v33[11]], &qword_27CAB6BF0);
    sub_2167C5834(v130, &v40[v33[9]], &qword_27CAB6FD0);
  }

  v109 = v123;
  sub_21683E974(v40, v123);
  OUTLINED_FUNCTION_8_19();
  sub_2168451B0(v109, v126);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_34();
  sub_2166C2594(v110);
  OUTLINED_FUNCTION_149_1();
  OUTLINED_FUNCTION_9_28();
  sub_216845208(v109, v111);
  OUTLINED_FUNCTION_5_23();
  sub_216845208(v40, v112);
  OUTLINED_FUNCTION_15_16();
  sub_216845208(v47, v113);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216841AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = sub_2166DDC34();

  if ((~v5 & 0xF000000000000007) != 0)
  {
    if (!(v5 >> 62))
    {
      type metadata accessor for UserSocialProfileCoordinator();
      type metadata accessor for ObjectGraph();
      sub_21700E094();
      v6 = sub_216CAC650();
      if (v7)
      {
        if (v6 == a2 && v7 == a3)
        {

          goto LABEL_25;
        }

        v9 = sub_21700F7D4();

        if (v9)
        {

LABEL_25:
          sub_2166DE78C(v5);
LABEL_26:
          v14 = 1;
          return v14 & 1;
        }
      }

      v12 = *&v15[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_publicSocialProfileID + 8];
      if (v12)
      {
        if (*&v15[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_publicSocialProfileID] == a2 && v12 == a3)
        {
          v14 = 1;
        }

        else
        {
          v14 = sub_21700F7D4();
        }

        sub_21700DF14();

        sub_2166DE78C(v5);
      }

      else
      {

        sub_2166DE78C(v5);
        v14 = 0;
      }

      return v14 & 1;
    }

    sub_2166DE78C(v5);
  }

  if (a2 == 25965 && a3 == 0xE200000000000000)
  {
    goto LABEL_26;
  }

  return sub_21700F7D4();
}

uint64_t sub_216841CC0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for SocialProfileButtonView(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 20);
  *&v7[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2 & 1;
  *v7 = sub_2167EA268;
  *(v7 + 1) = v9;
  v7[16] = 0;
  type metadata accessor for ObjectGraph();
  sub_2166C2594(&unk_280E37460);

  sub_21700A1E4();
  return sub_216845208(v7, type metadata accessor for SocialProfileButtonView);
}

uint64_t sub_216841E38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217013DA0;
  sub_21700F3B4();
  MEMORY[0x21CE9F490](0xD000000000000012, 0x8000000217082DA0);
  sub_217008034();
  sub_21700F544();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_21700F8D4();
}

uint64_t sub_216841F30@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_1();

  v2 = sub_2166DDC34();

  if ((~v2 & 0xF000000000000007) != 0)
  {
    if (!(v2 >> 62))
    {
      v3 = sub_21700D574();
      type metadata accessor for ObjectGraph();
      OUTLINED_FUNCTION_82_2();
      sub_21700E094();
      sub_2166DE78C(v2);
      v4 = a1;
      v5 = 0;
      v6 = 1;
      v7 = v3;
      goto LABEL_6;
    }

    sub_2166DE78C(v2);
  }

  sub_21700D574();
  OUTLINED_FUNCTION_38_2();
LABEL_6:

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_21684202C()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 216);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    type metadata accessor for ObjectGraph();
    v3 = sub_216992258(v0);
    *(v0 + v2) = v3;
  }

  return v3;
}

unint64_t *sub_2168420A8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if ((~*result & 0xF000000000000007) != 0)
  {
    if (v3 >> 62)
    {
      if (v3 >> 62 == 1)
      {
        v6 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
        swift_beginAccess();
        if (*(a2 + 16))
        {

          sub_217007D34();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
        swift_allocError();
        *v7 = v6;
        v8 = v6;
        return swift_continuation_throwingResumeWithError();
      }
    }

    else
    {
      swift_beginAccess();
      if (*(a2 + 16))
      {

        sub_217007D34();
      }

      sub_2166E6B18(v3);
      **(*(a3 + 64) + 40) = v3;
      return swift_continuation_throwingResume();
    }
  }

  return result;
}

uint64_t sub_2168421E8()
{
  OUTLINED_FUNCTION_33();

  sub_216B94248();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_21684224C()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 392);
  v2 = *(*(v0 + 64) + 16);
  *(v0 + 256) = v2;
  if (v1 == 1)
  {
    v3 = swift_task_alloc();
    *(v0 + 264) = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_84_5(v3);

    return sub_216888918();
  }

  else
  {
    *(v0 + 280) = *(v2 + 96);
    OUTLINED_FUNCTION_206();
    v5 = swift_task_alloc();
    *(v0 + 288) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_85_3(v5);

    return v6();
  }
}

uint64_t sub_216842334()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v7 + 272) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216842438()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_247();

  v1 = sub_217007C84();
  v2 = sub_21700EDA4();
  if (os_log_type_enabled(v1, v2))
  {
    *OUTLINED_FUNCTION_43() = 0;
    OUTLINED_FUNCTION_123_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_56_1();
  }

  v8 = v0[19];

  v10 = *(v8 + 8);
  v9 = v8 + 8;
  v0[39] = v10;
  v11 = OUTLINED_FUNCTION_115();
  v12(v11);
  if (qword_280E485B8 != -1)
  {
    OUTLINED_FUNCTION_122();
  }

  OUTLINED_FUNCTION_232();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94D0);
  v14 = __swift_project_value_buffer(v13, qword_280E73E20);
  v15 = OUTLINED_FUNCTION_131(v14);
  v17 = v16(v15);
  OUTLINED_FUNCTION_244(v17, "UIBootstrap");
  v18 = *(v9 + 72);
  v0[43] = v18;
  v19 = v18;
  v20 = swift_task_alloc();
  v0[44] = v20;
  *v20 = v0;
  v21 = OUTLINED_FUNCTION_66_6(v20);

  return sub_216843200(v21, v22, v23, v24);
}

uint64_t sub_2168425AC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2168426B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_213();
  v18 = sub_217007C84();
  v19 = sub_21700EDA4();
  if (OUTLINED_FUNCTION_9_3(v19))
  {
    v20 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_36_5(v20);
    OUTLINED_FUNCTION_121(&dword_216679000, v21, v22, "Privacy disclaimer acknowledged.");
    OUTLINED_FUNCTION_26_4();
  }

  v23 = v16[39];
  v24 = v16[16];

  v25 = OUTLINED_FUNCTION_116();
  v23(v25);
  sub_2166A8544();
  sub_216697664(v24, &qword_27CAB94C8);
  sub_2166E660C();
  if (qword_280E2B930 != -1)
  {
    OUTLINED_FUNCTION_116_1();
  }

  if (byte_280E73A85 == 1)
  {
    OUTLINED_FUNCTION_213();
    v26 = sub_217007C84();
    v27 = sub_21700EDA4();
    if (OUTLINED_FUNCTION_9_3(v27))
    {
      v28 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v28);
      OUTLINED_FUNCTION_121(&dword_216679000, v29, v30, "🧙 Wizard is enabled! ✨");
      OUTLINED_FUNCTION_26_4();
    }

    v31 = v16[39];

    v32 = OUTLINED_FUNCTION_116();
    v31(v32);
  }

  v33 = v16[22];
  OUTLINED_FUNCTION_58();
  sub_2166E6984(v34, v35, v36);

  sub_2166C7454(v33);
  v37 = sub_217007C84();
  v38 = sub_21700EDA4();
  if (os_log_type_enabled(v37, v38))
  {
    *OUTLINED_FUNCTION_43() = 0;
    OUTLINED_FUNCTION_245_0(&dword_216679000, v39, v40, "Bootstrap complete.");
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_205_0();
  v41 = OUTLINED_FUNCTION_119();
  v17(v41);
  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  OUTLINED_FUNCTION_65_0();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_86_5(v46);

  sub_216697664(v38, &unk_27CABFAC0);
  OUTLINED_FUNCTION_26_15();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216842984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v18 = *(v16 + 272);
  sub_2166C7454(*(v16 + 168));
  v19 = v18;
  v20 = sub_217007C84();
  v21 = sub_21700ED84();

  if (os_log_type_enabled(v20, v21))
  {
    swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_203();
    *v17 = 138543362;
    v23 = v18;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v24;
    *v22 = v24;
    OUTLINED_FUNCTION_123_0();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    sub_216697664(v22, &qword_27CABF880);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_242();
  v30 = OUTLINED_FUNCTION_108();
  v31(v30);
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_68_1();
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_146(v32);

  OUTLINED_FUNCTION_92_3();

  OUTLINED_FUNCTION_26_15();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216842B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v18 = *(v16 + 296);
  sub_2166C7454(*(v16 + 168));
  v19 = v18;
  v20 = sub_217007C84();
  v21 = sub_21700ED84();

  if (os_log_type_enabled(v20, v21))
  {
    swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_203();
    *v17 = 138543362;
    v23 = v18;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v24;
    *v22 = v24;
    OUTLINED_FUNCTION_123_0();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    sub_216697664(v22, &qword_27CABF880);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_242();
  v30 = OUTLINED_FUNCTION_108();
  v31(v30);
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_68_1();
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_146(v32);

  OUTLINED_FUNCTION_92_3();

  OUTLINED_FUNCTION_26_15();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216842D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v18 = v16[46];
  v19 = v16[20];
  sub_216697664(v16[17], &qword_27CAB94C8);
  sub_2166C7454(v19);
  v20 = v18;
  v21 = sub_217007C84();
  v22 = sub_21700ED84();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v16[46];
    swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_203();
    *v17 = 138543362;
    v25 = v23;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_216679000, v21, v22, "UI Bootstrap error. %{public}@", v17, 0xCu);
    sub_216697664(v24, &qword_27CABF880);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_56_1();
  }

  v27 = v16[46];
  v28 = v16[39];
  v29 = v16[11];

  v30 = OUTLINED_FUNCTION_119();
  v28(v30);
  OUTLINED_FUNCTION_143();
  v31 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_68_1();
  v32 = swift_allocObject();
  *(v32 + 16) = *(v29 + 80);
  *(v32 + 24) = *(v29 + 88);
  *(v32 + 40) = *(v29 + 104);
  *(v32 + 48) = v31;
  v33 = v27;

  sub_2166E6984(v27 | 0x4000000000000000, sub_216844C90, v32);

  OUTLINED_FUNCTION_26_15();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_2();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216842FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_217007CA4();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  sub_21700EA34();
  v4[12] = sub_21700EA24();
  v7 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2168430F0, v7, v6);
}

uint64_t sub_2168430F0()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_241();
  if (swift_weakLoadStrong())
  {
    sub_2166C7454(*(v0 + 88));

    v1 = sub_217007C84();
    v2 = sub_21700ED84();
    if (OUTLINED_FUNCTION_9_3(v2))
    {
      v3 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v3);
      OUTLINED_FUNCTION_121(&dword_216679000, v4, v5, "Bootstrap retrying...");
      OUTLINED_FUNCTION_26_4();
    }

    v6 = OUTLINED_FUNCTION_116();
    v7(v6);
  }

  OUTLINED_FUNCTION_207();
  if (swift_weakLoadStrong())
  {
    sub_216697024(1);
  }

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216843200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[147] = v4;
  v5[146] = a4;
  v5[145] = a2;
  v5[144] = a1;
  v5[148] = *v4;
  return MEMORY[0x2822009F8](sub_216843254, 0, 0);
}

uint64_t sub_216843254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  sub_216683A80(*(v14 + 1176) + 96, v14 + 56, &qword_27CAB6A50);
  if (*(v14 + 80))
  {
    sub_2166A0F18((v14 + 56), v14 + 16);
  }

  else
  {
    v15 = type metadata accessor for MusicKitPlayer();
    OUTLINED_FUNCTION_181();
    swift_allocObject();
    v16 = sub_216A1A3E4();
    *(v14 + 40) = v15;
    *(v14 + 48) = &off_282922F18;
    *(v14 + 16) = v16;
    if (*(v14 + 80))
    {
      sub_216697664(v14 + 56, &qword_27CAB6A50);
    }
  }

  v17 = *(v14 + 1176);
  v18 = *(v14 + 1168);
  v19 = *(v14 + 1160);
  sub_21700D4C4();
  __swift_project_boxed_opaque_existential_1((v14 + 96), *(v14 + 120));
  OUTLINED_FUNCTION_224();
  type metadata accessor for AcknowledgementPresenter();
  *(v14 + 1096) = v18;
  OUTLINED_FUNCTION_150();
  __swift_project_boxed_opaque_existential_1((v14 + 136), *(v14 + 160));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30);
  OUTLINED_FUNCTION_150();
  __swift_project_boxed_opaque_existential_1((v14 + 176), *(v14 + 200));
  OUTLINED_FUNCTION_224();
  type metadata accessor for AppDestinationPageProviderBox();
  *(v14 + 1104) = *(v17 + 40);
  OUTLINED_FUNCTION_150();
  __swift_project_boxed_opaque_existential_1((v14 + 216), *(v14 + 240));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_65_0();
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;

  swift_unknownObjectRetain();
  sub_21700DBE4();

  __swift_project_boxed_opaque_existential_1((v14 + 256), *(v14 + 280));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94E8);
  OUTLINED_FUNCTION_103_4();
  v24 = nullsub_1(v21, v22, v23);
  OUTLINED_FUNCTION_103_4();
  *(v14 + 360) = _s19PlayActivityContextVMa();
  *(v14 + 368) = &off_282938290;
  *(v14 + 336) = v24;
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_209();
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 336);
  __swift_project_boxed_opaque_existential_1((v14 + 296), *(v14 + 320));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30);
  OUTLINED_FUNCTION_103_4();
  v28 = nullsub_1(v25, v26, v27);
  OUTLINED_FUNCTION_103_4();
  *(v14 + 440) = _s11PageContextVMa();
  *(v14 + 448) = &off_282927E48;
  *(v14 + 416) = v28;
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_209();
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 416);
  OUTLINED_FUNCTION_65((v14 + 376));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_216683A80(v17 + 136, v14 + 496, &qword_27CAB9450);
  OUTLINED_FUNCTION_68_1();
  v29 = swift_allocObject();
  v30 = *(v14 + 512);
  *(v29 + 16) = *(v14 + 496);
  *(v29 + 32) = v30;
  *(v29 + 48) = *(v14 + 528);
  *(v14 + 1112) = v29;
  OUTLINED_FUNCTION_118_2();

  OUTLINED_FUNCTION_65((v14 + 456));
  type metadata accessor for MusicPinsCoordinatorWrapper();
  sub_216683A80(v17 + 176, v14 + 576, &qword_27CAB6A60);
  OUTLINED_FUNCTION_68_1();
  v31 = swift_allocObject();
  v32 = *(v14 + 592);
  *(v31 + 16) = *(v14 + 576);
  *(v31 + 32) = v32;
  *(v31 + 48) = *(v14 + 608);
  *(v14 + 1120) = v31;
  OUTLINED_FUNCTION_118_2();

  OUTLINED_FUNCTION_65((v14 + 536));
  type metadata accessor for SingConnectedStatusWrapper();
  sub_216683A80(v17 + 216, v14 + 656, &qword_27CAB6A58);
  OUTLINED_FUNCTION_68_1();
  v33 = swift_allocObject();
  v34 = *(v14 + 672);
  *(v33 + 16) = *(v14 + 656);
  *(v33 + 32) = v34;
  *(v33 + 48) = *(v14 + 688);
  *(v14 + 1128) = v33;
  OUTLINED_FUNCTION_118_2();

  __swift_project_boxed_opaque_existential_1((v14 + 616), *(v14 + 640));
  OUTLINED_FUNCTION_224();
  type metadata accessor for MusicTabChangePublisher();
  swift_allocObject();
  *(v14 + 1136) = sub_2166CA970();
  OUTLINED_FUNCTION_200();

  OUTLINED_FUNCTION_65((v14 + 696));
  type metadata accessor for PlaybackPresenter();
  sub_2167B7D58(v14 + 16, v14 + 776);
  OUTLINED_FUNCTION_68_1();
  v35 = swift_allocObject();
  sub_2166A0F18((v14 + 776), v35 + 16);
  OUTLINED_FUNCTION_243();

  __swift_project_boxed_opaque_existential_1((v14 + 736), *(v14 + 760));
  OUTLINED_FUNCTION_224();
  type metadata accessor for CloudAccountStatusController();
  OUTLINED_FUNCTION_181();
  swift_allocObject();
  *(v14 + 1144) = sub_2166CB670();
  OUTLINED_FUNCTION_200();

  __swift_project_boxed_opaque_existential_1((v14 + 816), *(v14 + 840));
  sub_21700DC14();
  OUTLINED_FUNCTION_65((v14 + 856));
  type metadata accessor for UnifiedMessages.Coordinator();
  sub_21700DBE4();
  __swift_project_boxed_opaque_existential_1((v14 + 896), *(v14 + 920));
  sub_21700DC14();
  OUTLINED_FUNCTION_65((v14 + 936));
  _s20AppLifecycleObserverCMa();

  OUTLINED_FUNCTION_243();

  __swift_project_boxed_opaque_existential_1((v14 + 976), *(v14 + 1000));
  OUTLINED_FUNCTION_38();
  sub_21700DC14();
  __swift_project_boxed_opaque_existential_1((v14 + 1016), *(v14 + 1040));
  OUTLINED_FUNCTION_116();
  sub_21700DBC4();
  *(v14 + 1080) = sub_21700D7C4();
  *(v14 + 1088) = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1((v14 + 1056));
  sub_21700D7B4();
  type metadata accessor for ObjectGraph();
  *(v14 + 1192) = sub_21700E1B4();

  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 1056);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 1016);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 976);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 936);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 896);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 856);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 816);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 736);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 696);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 616);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 536);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 456);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 376);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 296);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 256);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 216);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v14 + 96);
  v36 = swift_task_alloc();
  *(v14 + 1200) = v36;
  *v36 = v14;
  v36[1] = sub_216843A28;
  OUTLINED_FUNCTION_120();

  return v37(v37, v38, v39, v40, v41, v42, v43, v44, sub_2166CC54C, 0, 0, a12, a13, a14);
}

uint64_t sub_216843A28()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  *(v5 + 1208) = v0;

  if (!v0)
  {
    *(v5 + 1216) = v3;
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216843B5C()
{
  OUTLINED_FUNCTION_33();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 1216);

  return v1(v2);
}

uint64_t sub_216843BC0()
{
  OUTLINED_FUNCTION_33();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_3();

  return v1();
}

void sub_216843C1C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_71_1();
  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  sub_21700EA34();

  v16 = sub_21700EA24();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v7;
  v17[5] = v5;
  v17[6] = v3;
  v17[7] = v1;
  v17[8] = v9;
  sub_21677BBA0();

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216843D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_217007CA4();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  sub_21700EA34();
  v4[12] = sub_21700EA24();
  v7 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216843E10, v7, v6);
}

uint64_t sub_216843E10()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_241();
  if (swift_weakLoadStrong())
  {
    sub_2166C7454(*(v0 + 88));

    v1 = sub_217007C84();
    v2 = sub_21700ED84();
    if (OUTLINED_FUNCTION_9_3(v2))
    {
      v3 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v3);
      OUTLINED_FUNCTION_121(&dword_216679000, v4, v5, "Bootstrap retrying...");
      OUTLINED_FUNCTION_26_4();
    }

    v6 = OUTLINED_FUNCTION_116();
    v7(v6);
  }

  OUTLINED_FUNCTION_207();
  if (swift_weakLoadStrong())
  {
    sub_216697024(0);
  }

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216843F20@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a2;
  v33 = a3;
  v31 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  v30 = a1[5];
  sub_2166CC8A4(v8);
  sub_2166D65F4();
  v20 = *(v5 + 8);
  v20(v8, v4);
  sub_2166D9718();
  v20(v11, v4);
  sub_2166DC4CC();
  v20(v14, v4);
  sub_2166DF938(0, v19);
  v21 = (v20)(v17, v4);
  sub_2166E2810(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  return (v20)(v19, v4);
}

uint64_t sub_216844188@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700D4D4();
  sub_21700E094();
  v4 = v6[6];
  sub_2167B7D58(a1, v6);
  type metadata accessor for PlaybackPresenter();
  swift_allocObject();
  result = sub_2166CECC4(v4, v6);
  *a2 = result;
  return result;
}

void sub_216844234(void *a1@<X8>)
{
  type metadata accessor for UnifiedMessages.Coordinator();
  swift_allocObject();

  sub_2169FDDF0();
  *a1 = v2;
}

uint64_t sub_216844294@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  sub_216683A80(a1 + 256, &v10, &qword_27CAB9458);
  if (v11)
  {
    sub_2166A0F18(&v10, v12);
  }

  else
  {
    v4 = sub_21684439C();
    v6 = v5;
    v12[3] = &type metadata for EmptyConnectionOptions;
    v7 = sub_216844DD0();
    v12[0] = v4;
    v12[1] = v6;
    v12[4] = v7;
    v12[2] = 0;
    if (v11)
    {
      sub_216697664(&v10, &qword_27CAB9458);
    }
  }

  _s20AppLifecycleObserverCMa();
  swift_allocObject();

  result = sub_2169511BC(v8, v12);
  *a2 = result;
  return result;
}

uint64_t sub_21684439C()
{
  if (sub_2166BF3C8(MEMORY[0x277D84F90]))
  {
    sub_216F0F90C(MEMORY[0x277D84F90]);
    v1 = v0;
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  if (sub_2166BF3C8(MEMORY[0x277D84F90]))
  {
    sub_216F0F79C(MEMORY[0x277D84F90]);
  }

  return v1;
}

uint64_t sub_216844418@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObjectGraph();

  v2 = sub_21700D4F4();

  sub_21700D484();

  type metadata accessor for AppLifeCycleIntentDispatcher();
  sub_21700E094();
  sub_2166E465C();

  *a1 = v2;
  return result;
}

uint64_t sub_2168444D4()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_28();
  *v3 = v2;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_21684460C, v5, v4);
}

uint64_t sub_21684460C()
{
  OUTLINED_FUNCTION_93();
  if (*(v0 + 152) == 2)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    OUTLINED_FUNCTION_3();

    return v1();
  }

  else
  {
    if (sub_216A4FFB4())
    {
      sub_2166C7454(*(v0 + 40));
      v3 = sub_217007C84();
      v4 = sub_21700EDA4();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = OUTLINED_FUNCTION_43();
        *v5 = 0;
        _os_log_impl(&dword_216679000, v3, v4, "Privacy disclaimer acknowledgement changed.", v5, 2u);
        OUTLINED_FUNCTION_56_1();
      }

      v6 = OUTLINED_FUNCTION_115();
      v7(v6);
      sub_216B94248();
    }

    v8 = sub_21700EA24();
    *(v0 + 136) = v8;
    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_77_4();
    v10 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 152, v8, v10);
  }
}

char *sub_2168447DC()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  swift_unknownObjectRelease();
  sub_216697664((v0 + 96), &qword_27CAB6A50);
  sub_216697664((v0 + 136), &qword_27CAB9450);
  sub_216697664((v0 + 176), &qword_27CAB6A60);
  sub_216697664((v0 + 216), &qword_27CAB6A58);
  sub_216697664((v0 + 256), &qword_27CAB9458);
  OUTLINED_FUNCTION_0_1();
  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(v2 + 200)]);
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();

  return v0;
}

uint64_t sub_216844928()
{
  sub_2168447DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216844980()
{
  v1 = [v0 URLContexts];
  OUTLINED_FUNCTION_51();
  sub_216685F4C(v2, v3);
  OUTLINED_FUNCTION_51();
  sub_216685F8C(v4);
  v5 = sub_21700EB84();

  LOBYTE(v1) = sub_216844AF8(v5);

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v6 = [v0 userActivities];
  OUTLINED_FUNCTION_51();
  sub_216685F4C(v7, v8);
  OUTLINED_FUNCTION_51();
  sub_216685F8C(v9);
  v10 = sub_21700EB84();

  LOBYTE(v6) = sub_216844AF8(v10);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v11 = [v0 shortcutItem];
  if (v11)
  {

    return 0;
  }

  return 1;
}

BOOL sub_216844AF8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_21700F2B4();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

unint64_t sub_216844C20(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_216844CDC()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_189();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_55_7(v1);
  OUTLINED_FUNCTION_145_0();

  return sub_216843D1C(v3, v4, v5, v6);
}

unint64_t sub_216844DD0()
{
  result = qword_27CAB94F0;
  if (!qword_27CAB94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB94F0);
  }

  return result;
}

uint64_t objectdestroy_59Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216844E64()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_189();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_55_7(v1);
  OUTLINED_FUNCTION_145_0();

  return sub_216842FFC(v3, v4, v5, v6);
}

uint64_t sub_216844F04(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_216844F44(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_216844F94(uint64_t a1)
{
  result = sub_216844FBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216844FBC()
{
  result = qword_27CAB94F8;
  if (!qword_27CAB94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB94F8);
  }

  return result;
}

uint64_t sub_216845010(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    return sub_216845080(a1, a2, a3, HIBYTE(a3) & 1);
  }
}

uint64_t sub_216845080(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return sub_216845090(a1, a2, a3 & 1);
  }

  else
  {
  }
}

uint64_t sub_216845090(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8]();
  }

  else
  {
  }
}

uint64_t sub_216845158(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_2168451B0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216845208(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_89_5()
{
  v2 = v0 + *(v1 + 40);
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return v0;
}

uint64_t OUTLINED_FUNCTION_92_3()
{

  return sub_2166E6984(v0 | 0x4000000000000000, sub_216844C70, v1);
}

unint64_t OUTLINED_FUNCTION_99_5()
{
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1160);
  *(v0 + 296) = v3;
  *(v0 + 304) = v2;
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1176);
  *(v0 + 280) = v5;
  *(v0 + 288) = v4;
  v6 = *(v0 + 1184);
  *(v0 + 272) = v6;
  *(v0 + 1152) = v2;
  *(v0 + 1160) = v3;
  *(v0 + 1168) = v4;
  *(v0 + 1176) = v5;
  *(v0 + 1184) = v6;

  return sub_216785CE8();
}

uint64_t OUTLINED_FUNCTION_101_2()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_117_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_131(uint64_t a1)
{
  v2[40] = a1;
  v2[41] = *(v3 + 16);
  v2[42] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_134_0()
{

  return swift_getWitnessTable();
}

id OUTLINED_FUNCTION_146(uint64_t a1)
{
  *(a1 + 16) = *(v3 + 80);
  *(a1 + 24) = *(v3 + 88);
  *(a1 + 40) = *(v3 + 104);
  *(a1 + 48) = v2;

  return v1;
}

uint64_t OUTLINED_FUNCTION_149_1()
{

  return sub_217009554();
}

void OUTLINED_FUNCTION_159()
{
  v4 = (v1 + *(v3 + 24));
  v5 = *(v0 + 784);
  *v4 = v2;
  v4[1] = v5;
  *(v1 + *(v3 + 28)) = 0;
}

void OUTLINED_FUNCTION_160()
{
  v4 = (v1 + *(v2 + 24));
  v5 = *(v3 - 200);
  *v4 = v0;
  v4[1] = v5;
  *(v1 + *(v2 + 28)) = 0;
}

uint64_t OUTLINED_FUNCTION_162()
{
  v3 = *(v0 + 680);

  return sub_2168451B0(v1, v3);
}

uint64_t OUTLINED_FUNCTION_163()
{
  v3 = *(v0 + 680);

  return sub_2168451B0(v1, v3);
}

uint64_t OUTLINED_FUNCTION_170()
{

  return swift_getWitnessTable();
}

double OUTLINED_FUNCTION_172()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_175()
{
  *(v0 + 1392) = 0;
  *v1 = 0u;
  v1[1] = 0u;

  return sub_217005EF4();
}

uint64_t OUTLINED_FUNCTION_176_1()
{
}

uint64_t OUTLINED_FUNCTION_177_0()
{
  *(v0 - 128) = 1;

  return sub_217005EF4();
}

uint64_t OUTLINED_FUNCTION_178()
{

  return sub_2166CBFB4(v0 + 1272, v0 + 1184);
}

uint64_t OUTLINED_FUNCTION_180()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_184()
{
  v4 = (v2 + *(v3 + 24));
  *v4 = v0;
  v4[1] = v1;
  *(v2 + *(v3 + 28)) = 0;
}

uint64_t OUTLINED_FUNCTION_197_0()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_199(uint64_t a1, uint64_t *a2)
{

  return sub_216697664(a1, a2);
}

uint64_t OUTLINED_FUNCTION_201()
{
  v4 = *(v0 + 624);

  return sub_216683A80(v2, v4, v1);
}

void OUTLINED_FUNCTION_205_0()
{
}

uint64_t OUTLINED_FUNCTION_207()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_208()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_209()
{

  return sub_21700DC04();
}

uint64_t OUTLINED_FUNCTION_211(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_2166861C8(v4 - 128, v3, a3);
}

uint64_t OUTLINED_FUNCTION_212()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_213()
{

  return sub_2166C7454(v0);
}

uint64_t OUTLINED_FUNCTION_219(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return type metadata accessor for Page.Header(0);
}

uint64_t OUTLINED_FUNCTION_220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return type metadata accessor for ReferrerInfo();
}

uint64_t OUTLINED_FUNCTION_239(uint64_t a1)
{
  v4 = *(v2 - 144);

  return sub_216683A80(a1, v4, v1);
}

uint64_t OUTLINED_FUNCTION_240()
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_242()
{
}

uint64_t OUTLINED_FUNCTION_243()
{

  return sub_21700DBE4();
}

uint64_t OUTLINED_FUNCTION_244(uint64_t a1, const char *a2)
{

  return sub_21669E79C(v3, a2, 11, 2, v2);
}

uint64_t OUTLINED_FUNCTION_248()
{

  return sub_21700D284();
}

uint64_t OUTLINED_FUNCTION_249_0()
{

  return sub_21700D284();
}

uint64_t OUTLINED_FUNCTION_250()
{
  *v0 = 0;
  v0[1] = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_252()
{

  return sub_217006214();
}

uint64_t OUTLINED_FUNCTION_253()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_255()
{

  return swift_task_alloc();
}

uint64_t type metadata accessor for LibraryPlaylistViewModel()
{
  result = qword_280E36830;
  if (!qword_280E36830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168459F4()
{
  sub_21700C924();
  if (v0 <= 0x3F)
  {
    sub_216845A90();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObjectGraph();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216845A90()
{
  if (!qword_280E2A370)
  {
    sub_21700C8E4();
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A370);
    }
  }
}

unint64_t sub_216845AEC()
{
  result = qword_27CAB9510;
  if (!qword_27CAB9510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9510);
  }

  return result;
}

uint64_t sub_216845B50()
{
  OUTLINED_FUNCTION_33();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_21700B804();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216845C0C, 0, 0);
}

uint64_t sub_216845C0C()
{
  type metadata accessor for SubscriptionStatusCoordinator();
  type metadata accessor for LibraryPlaylistViewModel();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v0[8] = v0[2];
  v1 = sub_2166EFC70();
  if (sub_2166C0DB4(v1) == 0x6269726373627573 && v2 == 0xEA00000000006465)
  {
  }

  else
  {
    v4 = sub_21700F7D4();

    if ((v4 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_21701D820;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9520);
      *(v5 + 32) = sub_21700B724();
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21701D830;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9520);
  *(v5 + 32) = sub_21700B724();
  *(v5 + 40) = sub_21700B684();
LABEL_9:
  v0[9] = v5;
  (*(v0[6] + 104))(v0[7], *MEMORY[0x277CD7D00], v0[5]);
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = sub_21700C924();
  v8 = sub_2166B4B40(&qword_27CAB9528, MEMORY[0x277CD8608]);
  *v6 = v0;
  v6[1] = sub_216845E88;
  v9 = v0[7];
  v10 = v0[3];
  v11 = MEMORY[0x277CD85F0];
  v12 = MEMORY[0x277CD85D8];

  return MEMORY[0x282124810](v10, v5, v9, v7, v11, v12, v8);
}

uint64_t sub_216845E88()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_216846084;
  }

  else
  {
    v5 = sub_21684601C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21684601C()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_216846084()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2168460EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_21700C924();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *(v2 + *(type metadata accessor for LibraryPlaylistViewModel() + 24));

  sub_216BCA61C(v13);
  (*(v6 + 16))(&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  return sub_2168463E0(v8, v13, sub_216846668, v10, &qword_27CAB9518, sub_216846748, a2);
}

uint64_t sub_216846280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700C924();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *a2 = sub_2168467BC;
  *(a2 + 8) = v8;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_2168463E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  type metadata accessor for MusicStackAuthority();
  sub_2166B4B40(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
  *a7 = sub_217008CF4();
  a7[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v16 = v15[9];
  *(a7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  sub_2168466D8(a2, v22);
  v17 = swift_allocObject();
  v18 = v22[1];
  *(v17 + 16) = v22[0];
  *(v17 + 32) = v18;
  *(v17 + 48) = v23;
  *(v17 + 56) = a1;
  v19 = a7 + v15[10];
  *v19 = a6;
  *(v19 + 1) = v17;
  v19[16] = 0;
  v20 = (a7 + v15[11]);
  *v20 = a3;
  v20[1] = a4;
  *(a7 + v15[13]) = a1;
  type metadata accessor for AppDestinationPageProviderBox();
  type metadata accessor for ObjectGraph();
  swift_retain_n();

  sub_21700E094();
  *(a7 + v15[12]) = *&v22[0];
  type metadata accessor for UserSocialProfileCoordinator();
  OUTLINED_FUNCTION_2_34();
  *(a7 + v15[14]) = *&v22[0];
  type metadata accessor for SocialGraphController();
  OUTLINED_FUNCTION_2_34();

  result = sub_216846754(a2);
  *(a7 + v15[15]) = *&v22[0];
  return result;
}

uint64_t sub_2168465CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2167CCCD0;

  return sub_216845B50();
}

uint64_t sub_216846668@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_21700C924() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216846280(v4, a1);
}

uint64_t sub_2168466D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216846754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2168467BC()
{
  v1 = *(sub_21700C924() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_216CC331C(v2);
}

uint64_t objectdestroy_3Tm_1()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_216846860(uint64_t a1)
{
  result = sub_216846CA8(&qword_280E2A218, MEMORY[0x277D21D20]);
  *(a1 + 8) = result;
  return result;
}

id sub_216846900(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v17 = type metadata accessor for RoutedActionIntent();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB9560);
    v9 = sub_21700E594();
    v19 = MEMORY[0x277D837D0];
    v17 = v9;
    v18 = v10;
    v11 = a1;
    v12 = sub_2166F1E10(&v17, a1);
    sub_2166F1F64(v12);
    sub_2167DE934(v2, v6);
    v13 = sub_217005EF4();
    if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
    {
      sub_216846CF0(v6);
    }

    else
    {
      v14 = sub_217005DE4();
      v16 = v15;
      (*(*(v13 - 8) + 8))(v6, v13);
      v17 = v14;
      v18 = v16;
      sub_21700DD04();

      sub_21700F0B4();
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for RoutedActionIntent()
{
  result = qword_27CAB9538;
  if (!qword_27CAB9538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216846B70()
{
  sub_216688680();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_216846C24(uint64_t a1)
{
  *(a1 + 8) = sub_216846CA8(&qword_27CAB9550, type metadata accessor for RoutedActionIntent);
  result = sub_216846CA8(&qword_27CAB9558, type metadata accessor for RoutedActionIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216846CA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216846CF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216846D5C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v1;
  v5 = v2;
  [v4 removeObserver:v0 name:v5 object:Strong];

  swift_unknownObjectRelease();
  sub_216781DA8(v0 + 24);

  return v0;
}

uint64_t sub_216846DF4()
{
  sub_216846D5C();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_216846E28(uint64_t a1)
{
  sub_217005974();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  if (*(v2 + 32) != 1)
  {
    return (*(v2 + 48))(a1);
  }

  sub_2166AF2EC();
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v1);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v5 + 32))(v11 + v10, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v1);

  sub_216E1B2E4();
}

uint64_t sub_216846FB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);

    v4(a2);
  }

  return result;
}

uint64_t sub_216847128()
{
  v1 = *(sub_217005974() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_216846FB8(v2, v3);
}

id sub_2168471C0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2166F1DCC();
  v8[3] = a3;
  v8[0] = a2;
  v6 = a1;
  result = sub_2166F1E10(v8, a1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216847230(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_21684736C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216847588()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21684760C()
{
  sub_21700ACC4();
  v1 = sub_21700AD04();

  sub_21700ACF4();
  sub_21700AD04();
  OUTLINED_FUNCTION_0_46();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);

  sub_216847A1C(sub_216847A14, v2);
  sub_21700AC44();
  OUTLINED_FUNCTION_47();

  qword_280E73AA0 = 0x3FF0000000000000;
  byte_280E73AA8 = 1;
  qword_280E73AB0 = v3;
  return result;
}

uint64_t sub_216847704(uint64_t a1, uint64_t a2)
{
  v4 = sub_217008B44();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216847778(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_217008B44();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_217008B34();
  __swift_allocate_value_buffer(v9, a3);
  v10 = __swift_project_value_buffer(v9, a3);
  v11 = *(v6 + 28);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_217009294();
  (*(*(v13 - 8) + 104))(&v8[v11], v12, v13);
  __asm { FMOV            V0.2D, #5.0 }

  *v8 = _Q0;
  sub_216847704(v8, v10);
  *(v10 + *(v9 + 20)) = a1;
  return sub_2167CA3B0(v8);
}

double sub_216847894()
{
  sub_21700ACC4();
  sub_21700AD04();
  OUTLINED_FUNCTION_47();

  result = 0.0;
  xmmword_280E73AC0 = xmmword_21701DBD0;
  qword_280E73AD0 = 0x4018000000000000;
  qword_280E73AD8 = v0;
  qword_280E73AE0 = 0xC010000000000000;
  return result;
}

double sub_2168478F0()
{
  sub_21700ACC4();
  sub_21700AD04();
  OUTLINED_FUNCTION_47();

  result = 0.0;
  xmmword_280E73AF0 = xmmword_21701DBE0;
  qword_280E73B00 = 0x4034000000000000;
  qword_280E73B08 = v0;
  qword_280E73B10 = 0xC02E000000000000;
  return result;
}

uint64_t sub_21684794C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB95E8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_217018C90;
  sub_21700ACC4();
  sub_21700AD04();
  OUTLINED_FUNCTION_0_46();
  *(v1 + 32) = v0;
  sub_21700ACC4();
  sub_21700AD04();
  OUTLINED_FUNCTION_0_46();
  *(v1 + 40) = v0;
  sub_21700ACC4();
  sub_21700AD04();
  OUTLINED_FUNCTION_0_46();
  *(v1 + 48) = v0;
  sub_21700ACC4();
  sub_21700AD04();
  result = OUTLINED_FUNCTION_0_46();
  *(v1 + 56) = v0;
  qword_27CB22858 = v1;
  return result;
}

void *sub_216847A1C(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_216847ABC;
  v5[3] = &block_descriptor_1;
  [v2 initWithDynamicProvider_];
  v3 = OUTLINED_FUNCTION_47();
  _Block_release(v3);

  return v2;
}

id sub_216847ABC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

unint64_t sub_216847B50()
{
  result = qword_27CAB95F0;
  if (!qword_27CAB95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB95F0);
  }

  return result;
}

unint64_t sub_216847C38()
{
  result = qword_27CAB9608;
  if (!qword_27CAB9608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9608);
  }

  return result;
}

unint64_t sub_216847E88()
{
  result = qword_27CAB9640;
  if (!qword_27CAB9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9640);
  }

  return result;
}

unint64_t sub_216848000()
{
  result = qword_27CAB9668;
  if (!qword_27CAB9668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9668);
  }

  return result;
}

uint64_t sub_216848204(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216848250()
{
  result = qword_27CAB9698;
  if (!qword_27CAB9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9698);
  }

  return result;
}

id sub_2168482A4(uint64_t a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2168482F4(char *a1, uint64_t a2)
{
  v4 = sub_21700CDF4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_21700CE04();
  v11 = sub_21700CD44();
  v12 = *(v5 + 8);
  v12(v10, v4);
  sub_21700CE04();
  v13 = sub_21700CD44();
  v14 = sub_21700CF34();
  (*(*(v14 - 8) + 8))(a2, v14);
  v12(a1, v4);
  v12(v8, v4);
  return v11 & 1 | ((v13 & 1) << 8);
}

uint64_t sub_2168484BC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2168482F4(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
    a3[1] = result > 0xFFu;
  }

  return result;
}

unint64_t sub_2168484FC(uint64_t a1)
{
  result = sub_216848524();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216848524()
{
  result = qword_27CAB96A0;
  if (!qword_27CAB96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB96A0);
  }

  return result;
}

uint64_t _s10EnablementVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s10EnablementVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

unint64_t sub_216848700()
{
  result = qword_27CAB96A8;
  if (!qword_27CAB96A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB96A8);
  }

  return result;
}

unint64_t sub_216848754(uint64_t a1)
{
  *(a1 + 8) = sub_216848784();
  result = sub_2168487D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216848784()
{
  result = qword_280E41860[0];
  if (!qword_280E41860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E41860);
  }

  return result;
}

unint64_t sub_2168487D8()
{
  result = qword_27CAB96B0;
  if (!qword_27CAB96B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB96B0);
  }

  return result;
}

uint64_t dispatch thunk of MusicPinsCoordinator.promptPinsDownloadAlert()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_216848948;

  return v7(a1, a2);
}

uint64_t sub_216848948(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_216848A44()
{
  sub_216848A7C(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_216848A7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216848AE4()
{
  type metadata accessor for RegistrationProvider();
  v0 = swift_allocObject();
  result = sub_216849DE8();
  qword_27CB22860 = v0;
  return result;
}

uint64_t sub_216848B24()
{
  v1 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_bubbleLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B90);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_searchLandingBrickLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B98);
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_emptyState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BA0);
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_flowcaseLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BA8);
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v0 + v7);
  v9 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_groupTextListLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BB0);
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v9);
  v11 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_header;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BB8);
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(v0 + v11);
  v13 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_horizontalLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BC0);
  OUTLINED_FUNCTION_9_0();
  (*(v14 + 8))(v0 + v13);
  v15 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_horizontalPosterLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BC8);
  OUTLINED_FUNCTION_9_0();
  (*(v16 + 8))(v0 + v15);
  v17 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_inlineUpsell;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BD0);
  OUTLINED_FUNCTION_9_0();
  (*(v18 + 8))(v0 + v17);
  v19 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_links;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BD8);
  OUTLINED_FUNCTION_9_0();
  (*(v20 + 8))(v0 + v19);
  v21 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_paragraph;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BE0);
  OUTLINED_FUNCTION_9_0();
  (*(v22 + 8))(v0 + v21);
  v23 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_popoverSelector;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BE8);
  OUTLINED_FUNCTION_9_0();
  (*(v24 + 8))(v0 + v23);
  v25 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_posterLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BF0);
  OUTLINED_FUNCTION_9_0();
  (*(v26 + 8))(v0 + v25);
  v27 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_squareLockup;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9BF8);
  OUTLINED_FUNCTION_34();
  v30 = *(v29 + 8);
  v30(v0 + v27, v28);
  v30(v0 + OBJC_IVAR____TtC7MusicUI20RegistrationProvider_largeSquareLockup, v28);
  v31 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_suggestionItem;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C00);
  OUTLINED_FUNCTION_9_0();
  (*(v32 + 8))(v0 + v31);
  v33 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_sharedWithYouLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C08);
  OUTLINED_FUNCTION_9_0();
  (*(v34 + 8))(v0 + v33);
  v35 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_superHeroLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C10);
  OUTLINED_FUNCTION_9_0();
  (*(v36 + 8))(v0 + v35);
  v37 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_textList;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C18);
  OUTLINED_FUNCTION_9_0();
  (*(v38 + 8))(v0 + v37);
  v39 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_trackShelfLockup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C20);
  OUTLINED_FUNCTION_9_0();
  (*(v40 + 8))(v0 + v39);
  v41 = OBJC_IVAR____TtC7MusicUI20RegistrationProvider_smallVerticalVideoLockup;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C28);
  OUTLINED_FUNCTION_34();
  v44 = *(v43 + 8);
  v44(v0 + v41, v42);
  v44(v0 + OBJC_IVAR____TtC7MusicUI20RegistrationProvider_verticalVideoLockup, v42);
  v44(v0 + OBJC_IVAR____TtC7MusicUI20RegistrationProvider_largeVerticalVideoLockup, v42);
  return v0;
}

uint64_t sub_2168490B8()
{
  sub_216848B24();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RegistrationProvider()
{
  result = qword_27CAB96B8;
  if (!qword_27CAB96B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216849164()
{
  sub_2168497F4();
  if (v0 <= 0x3F)
  {
    sub_216849C74(319, &qword_27CAB96D8, &qword_27CAB96E0, &unk_2170400A0, type metadata accessor for SearchLandingBrickLockup);
    if (v1 <= 0x3F)
    {
      sub_216849C74(319, &qword_27CAB96E8, &qword_27CAB96F0, &unk_21701E150, type metadata accessor for EmptyStateLockup);
      if (v2 <= 0x3F)
      {
        sub_216849874();
        if (v3 <= 0x3F)
        {
          sub_216849C74(319, &qword_27CAB9708, &qword_27CAB9710, &unk_21701E168, type metadata accessor for GroupedTextListLockup);
          if (v4 <= 0x3F)
          {
            sub_2168498F4();
            if (v5 <= 0x3F)
            {
              sub_216849974();
              if (v6 <= 0x3F)
              {
                sub_2168499F4();
                if (v7 <= 0x3F)
                {
                  sub_216849C74(319, &qword_27CAB9750, &qword_27CAB9758, &unk_21701E1A0, type metadata accessor for InlineUpsell);
                  if (v8 <= 0x3F)
                  {
                    sub_216849C74(319, &qword_27CAB9760, &qword_27CAB9768, &unk_217040080, type metadata accessor for LinkComponentModel);
                    if (v9 <= 0x3F)
                    {
                      sub_216849C74(319, &qword_27CAB9770, &qword_27CAB9778, &unk_21701E1B0, type metadata accessor for ParagraphComponentModel);
                      if (v10 <= 0x3F)
                      {
                        sub_216849C74(319, &qword_27CAB9780, &qword_27CAB9788, &unk_217040070, type metadata accessor for PopoverSelector);
                        if (v11 <= 0x3F)
                        {
                          sub_216849A74();
                          if (v12 <= 0x3F)
                          {
                            sub_216849AF4();
                            if (v13 <= 0x3F)
                            {
                              sub_216849C74(319, &qword_27CAB97B0, &qword_27CAB97B8, &unk_21701E1E0, type metadata accessor for SuggestionItem);
                              if (v14 <= 0x3F)
                              {
                                sub_216849B74();
                                if (v15 <= 0x3F)
                                {
                                  sub_216849BF4();
                                  if (v16 <= 0x3F)
                                  {
                                    sub_216849C74(319, &qword_27CAB97E8, &qword_27CAB97F0, &unk_217040050, type metadata accessor for TextListComponentModel);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_216849CE8();
                                      if (v18 <= 0x3F)
                                      {
                                        sub_216849D68();
                                        if (v19 <= 0x3F)
                                        {
                                          swift_updateClassMetadata2();
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
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2168497F4()
{
  if (!qword_27CAB96C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB96D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF8C0);
    v0 = sub_21700EDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB96C8);
    }
  }
}

void sub_216849874()
{
  if (!qword_27CAB96F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF8D0);
    v0 = sub_21700EDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB96F8);
    }
  }
}

void sub_2168498F4()
{
  if (!qword_27CAB9718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9728);
    v0 = sub_21700EDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB9718);
    }
  }
}

void sub_216849974()
{
  if (!qword_27CAB9730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9738);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF8E0);
    v0 = sub_21700EDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB9730);
    }
  }
}

void sub_2168499F4()
{
  if (!qword_27CAB9740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF8F0);
    v0 = sub_21700EDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB9740);
    }
  }
}

void sub_216849A74()
{
  if (!qword_27CAB9790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9798);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF920);
    v0 = sub_21700EDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB9790);
    }
  }
}

void sub_216849AF4()
{
  if (!qword_27CAB97A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB97A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF970);
    v0 = sub_21700EDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB97A0);
    }
  }
}

void sub_216849B74()
{
  if (!qword_27CAB97C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB97C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF940);
    v0 = sub_21700EDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB97C0);
    }
  }
}

void sub_216849BF4()
{
  if (!qword_27CAB97D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB97D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB97E0);
    v0 = sub_21700EDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB97D0);
    }
  }
}

void sub_216849C74(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    a5(255);
    v7 = sub_21700EDE4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_216849CE8()
{
  if (!qword_27CAB97F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF990);
    v0 = sub_21700EDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB97F8);
    }
  }
}

void sub_216849D68()
{
  if (!qword_27CAB9808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF9A0);
    v0 = sub_21700EDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB9808);
    }
  }
}

uint64_t sub_216849DE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB96D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF8C0);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB96E0);
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for SearchLandingBrickLockup();
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB96F0);
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for EmptyStateLockup();
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF8D0);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9710);
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for GroupedTextListLockup();
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9728);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF8E0);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF8F0);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9758);
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for InlineUpsell();
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9768);
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for LinkComponentModel();
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9778);
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for ParagraphComponentModel();
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9788);
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for PopoverSelector();
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF920);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF970);
  OUTLINED_FUNCTION_3_39();
  sub_21700EDD4();
  OUTLINED_FUNCTION_3_39();
  sub_21700EDD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97B8);
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for SuggestionItem();
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF940);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97E0);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97F0);
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for TextListComponentModel();
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF990);
  OUTLINED_FUNCTION_2_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9A0);
  OUTLINED_FUNCTION_3_39();
  sub_21700EDD4();
  OUTLINED_FUNCTION_3_39();
  sub_21700EDD4();
  OUTLINED_FUNCTION_3_39();
  sub_21700EDD4();
  return v0;
}

uint64_t sub_21684A3F4(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  sub_216852FAC();
  v7 = swift_endAccess();
  a4(v7);
  return sub_2166997CC(a1, a2);
}

uint64_t sub_21684A4A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9818);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9820);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9828);
    v12 = sub_216851E18();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9838, &qword_27CAB9818);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684A708()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9840);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9848);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9850);
    v12 = sub_216851F0C();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9860, &qword_27CAB9840);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684A96C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9870);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9868);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for TextListComponentModel();
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB9868);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9878);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9880);
  v16 = sub_216852000();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB9890, &qword_27CAB9870);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684ACD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9898);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98A0);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB98A8);
    v12 = sub_2168520F4();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB98B8, &qword_27CAB9898);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684AF38()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98C8);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB98D0);
    v12 = sub_2168521E8();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB98E0, &qword_27CAB98C0);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684B19C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for SuggestionItem();
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB90C0);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98F0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB98F8);
  v16 = sub_216852300();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB9908, &qword_27CAB98E8);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684B504()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9910);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9918);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9920);
    v12 = sub_2168523F4();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9930, &qword_27CAB9910);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684B768()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9938);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9940);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9948);
    v12 = sub_2168524E8();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9958, &qword_27CAB9938);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684B9CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9968);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9960);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for PopoverSelector();
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB9960);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9970);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9978);
  v16 = sub_2168525DC();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB9988, &qword_27CAB9968);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684BD34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9998);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9990);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for ParagraphComponentModel();
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB9990);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99A0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB99A8);
  v16 = sub_2168526D0();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB99B8, &qword_27CAB9998);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684C09C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for LinkComponentModel();
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB7A30);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99C8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB99D0);
  v16 = sub_2168527C4();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB99E0, &qword_27CAB99C0);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684C404()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for InlineUpsell();
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB99E8);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99F8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9A00);
  v16 = sub_2168528B8();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB9A10, &qword_27CAB99F0);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684C76C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A20);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9A28);
    v12 = sub_2168529AC();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9A38, &qword_27CAB9A18);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684C9D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9A50);
    v12 = sub_216852AA0();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9A60, &qword_27CAB9A40);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684CC34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A70);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9A78);
    v12 = sub_216852B94();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9A98, &qword_27CAB9A68);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684CE98()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for GroupedTextListLockup();
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB9AB0);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AC0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9AC8);
  v16 = sub_216852C84();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB9AD8, &qword_27CAB9AB8);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684D200()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AE8);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9AF0);
    v12 = sub_216852D78();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9B00, &qword_27CAB9AE0);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684D464()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for EmptyStateLockup();
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB9B08);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B18);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9B20);
  v16 = sub_216852E6C();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB9B30, &qword_27CAB9B10);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684D7CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B38);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for SearchLandingBrickLockup();
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2166997CC(v8, &qword_27CAB9B38);
  }

  sub_216853004();
  [v1 frame];
  CGRectGetWidth(v18);
  v14 = MEMORY[0x28223BE20](v13);
  v17[-2] = v11;
  *&v17[-1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B48);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9B50);
  v16 = sub_216853068();
  v17[0] = v15;
  v17[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_217009874();
  sub_217009C84();
  v17[3] = v2;
  v17[4] = sub_2166D9530(&qword_27CAB9B60, &qword_27CAB9B40);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_217009864();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x21CE9FE00](v17);
  return sub_216853294();
}

uint64_t sub_21684DB34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - v4;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v15 = v8;

    [v1 frame];
    CGRectGetWidth(v16);
    v10 = MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = &v15;
    *(&v13 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B70);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9B78);
    v12 = sub_216853164();
    v14[0] = v11;
    v14[1] = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009874();
    sub_217009C84();
    v14[3] = v2;
    v14[4] = sub_2166D9530(&qword_27CAB9B88, &qword_27CAB9B68);
    __swift_allocate_boxed_opaque_existential_1(v14);
    sub_217009864();
    (*(v3 + 8))(v5, v2);
    MEMORY[0x21CE9FE00](v14);
  }

  return result;
}

uint64_t sub_21684DD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v26 = a2;
  v27 = sub_21700DAF4();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VerticalVideoLockup();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9828);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  *(&v26 - v16) = a1;
  v18 = type metadata accessor for VerticalVideoLockupView(0);
  v19 = *(v18 + 20);
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v20 = &v17[*(v18 + 24)];
  *v20 = swift_getKeyPath();
  v20[40] = 0;
  KeyPath = swift_getKeyPath();
  v22 = &v17[*(v15 + 36)];
  *v22 = KeyPath;
  *(v22 + 1) = a3;

  sub_216DE8FE8();
  sub_2166A6EA4();
  sub_216853294();
  v23 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v23) == 1)
  {
    sub_2166997CC(v11, &qword_27CAB6D58);
    v24 = 1;
  }

  else
  {
    (*(*(v23 - 8) + 32))(v14, v11, v23);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v24, 1, v23);
  sub_21700DAE4();
  sub_216851E18();
  sub_21700A1C4();
  (*(v5 + 8))(v7, v27);
  sub_2166997CC(v14, &qword_27CAB6D58);
  return sub_2166997CC(v17, &qword_27CAB9828);
}

uint64_t sub_21684E140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v28[1] = a2;
  v5 = sub_21700DAF4();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v28[0] = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TrackLockup();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9850);
  MEMORY[0x28223BE20](v14);
  v16 = (v28 - v15);
  v17 = type metadata accessor for TrackShelfLockupView(0);
  v18 = (v16 + v17[6]);
  type metadata accessor for PlaybackPresenter();
  sub_21685324C(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);

  *v18 = sub_217008CF4();
  v18[1] = v19;
  v20 = v17[7];
  *(v16 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v21 = v16 + v17[8];
  *v21 = swift_getKeyPath();
  v21[40] = 0;
  *v16 = a1;
  type metadata accessor for MenuContext(0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v23 = (v16 + *(v14 + 36));
  *v23 = KeyPath;
  v23[1] = a3;

  sub_216DE90F8();
  sub_2166A6EA4();
  sub_216853294();
  v24 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v24) == 1)
  {
    sub_2166997CC(v10, &qword_27CAB6D58);
    v25 = 1;
  }

  else
  {
    (*(*(v24 - 8) + 32))(v13, v10, v24);
    v25 = 0;
  }

  __swift_storeEnumTagSinglePayload(v13, v25, 1, v24);
  v26 = v28[0];
  sub_21700DAE4();
  sub_216851F0C();
  sub_21700A1C4();
  (*(v29 + 8))(v26, v30);
  sub_2166997CC(v13, &qword_27CAB6D58);
  sub_2166997CC(v16, &qword_27CAB9850);
}

uint64_t sub_21684E578(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9868);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9880);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_216852F54();
  KeyPath = swift_getKeyPath();
  v10 = &v8[*(v6 + 44)];
  *v10 = KeyPath;
  *(v10 + 1) = a1;
  sub_216852F54();
  v11 = type metadata accessor for TextListComponentModel();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v11);
  sub_216EF1668();
  sub_2166997CC(v4, &qword_27CAB9868);
  return sub_2166997CC(v8, &qword_27CAB9880);
}

uint64_t sub_21684E71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v28 = a2;
  v29 = sub_21700DAF4();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SuperHeroLockup();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98A8);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  *(&v28 - v16) = a1;
  v18 = type metadata accessor for SuperHeroLockupView(0);
  v19 = v18[5];
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v20 = &v17[v18[6]];
  *v20 = swift_getKeyPath();
  v20[40] = 0;
  v21 = &v17[v18[7]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v17[v18[8]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  KeyPath = swift_getKeyPath();
  v24 = &v17[*(v15 + 36)];
  *v24 = KeyPath;
  *(v24 + 1) = a3;

  sub_216DE9208();
  sub_2166A6EA4();
  sub_216853294();
  v25 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v25) == 1)
  {
    sub_2166997CC(v11, &qword_27CAB6D58);
    v26 = 1;
  }

  else
  {
    (*(*(v25 - 8) + 32))(v14, v11, v25);
    v26 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v26, 1, v25);
  sub_21700DAE4();
  sub_2168520F4();
  sub_21700A1C4();
  (*(v5 + 8))(v7, v29);
  sub_2166997CC(v14, &qword_27CAB6D58);
  return sub_2166997CC(v17, &qword_27CAB98A8);
}

void sub_21684EAFC()
{
  _s18HighlightsProviderCMa();
  sub_21685324C(&qword_280E43A00, _s18HighlightsProviderCMa);
  v0 = sub_217008CF4();
  swift_getKeyPath();

  sub_216EF1894();
}

uint64_t sub_21684EBF0(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98F8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_216852F54();
  KeyPath = swift_getKeyPath();
  v10 = &v8[*(v6 + 44)];
  *v10 = KeyPath;
  *(v10 + 1) = a1;
  sub_216852F54();
  v11 = type metadata accessor for SuggestionItem();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v11);
  sub_216EF1B4C();
  sub_2166997CC(v4, &qword_27CAB90C0);
  return sub_2166997CC(v8, &qword_27CAB98F8);
}

uint64_t sub_21684ED94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v26[1] = a2;
  v5 = sub_21700DAF4();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SquareLockup();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9920);
  MEMORY[0x28223BE20](v15);
  v17 = v26 - v16;
  *(v26 - v16) = a1;
  v18 = type metadata accessor for SquareLockupView(0);
  v19 = *(v18 + 20);
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v20 = &v17[*(v18 + 24)];
  *v20 = swift_getKeyPath();
  v20[40] = 0;
  KeyPath = swift_getKeyPath();
  v22 = &v17[*(v15 + 36)];
  *v22 = KeyPath;
  *(v22 + 1) = a3;

  sub_216DE9428();
  sub_2166A6EA4();
  sub_216853294();
  v23 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v23) == 1)
  {
    sub_2166997CC(v11, &qword_27CAB6D58);
    v24 = 1;
  }

  else
  {
    (*(*(v23 - 8) + 32))(v14, v11, v23);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v24, 1, v23);
  sub_21700DAE4();
  sub_2168523F4();
  sub_21700A1C4();
  (*(v27 + 8))(v7, v28);
  sub_2166997CC(v14, &qword_27CAB6D58);
  return sub_2166997CC(v17, &qword_27CAB9920);
}

uint64_t sub_21684F140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v26 = a2;
  v27 = sub_21700DAF4();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PosterLockup();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9948);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  *(&v26 - v16) = a1;
  v18 = type metadata accessor for PosterLockupView(0);
  v19 = *(v18 + 20);
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v20 = &v17[*(v18 + 24)];
  *v20 = swift_getKeyPath();
  v20[40] = 0;
  KeyPath = swift_getKeyPath();
  v22 = &v17[*(v15 + 36)];
  *v22 = KeyPath;
  *(v22 + 1) = a3;

  sub_216DE9538();
  sub_2166A6EA4();
  sub_216853294();
  v23 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v23) == 1)
  {
    sub_2166997CC(v11, &qword_27CAB6D58);
    v24 = 1;
  }

  else
  {
    (*(*(v23 - 8) + 32))(v14, v11, v23);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v24, 1, v23);
  sub_21700DAE4();
  sub_2168524E8();
  sub_21700A1C4();
  (*(v5 + 8))(v7, v27);
  sub_2166997CC(v14, &qword_27CAB6D58);
  return sub_2166997CC(v17, &qword_27CAB9948);
}

uint64_t sub_21684F4E8(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9960);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9978);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_216852F54();
  KeyPath = swift_getKeyPath();
  v10 = &v8[*(v6 + 44)];
  *v10 = KeyPath;
  *(v10 + 1) = a1;
  sub_216852F54();
  v11 = type metadata accessor for PopoverSelector();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v11);
  sub_216EF1D54();
  sub_2166997CC(v4, &qword_27CAB9960);
  return sub_2166997CC(v8, &qword_27CAB9978);
}

uint64_t sub_21684F68C(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9990);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99A8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_216852F54();
  KeyPath = swift_getKeyPath();
  v10 = &v8[*(v6 + 44)];
  *v10 = KeyPath;
  *(v10 + 1) = a1;
  sub_216852F54();
  v11 = type metadata accessor for ParagraphComponentModel();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v11);
  sub_216EF1F6C();
  sub_2166997CC(v4, &qword_27CAB9990);
  return sub_2166997CC(v8, &qword_27CAB99A8);
}

uint64_t sub_21684F830@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v20[0] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - v4;
  v6 = sub_217009EB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99D0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v20 - v12;
  sub_216852F54();
  v14 = type metadata accessor for LinkView();
  v20[1] = 0x402E000000000000;
  (*(v7 + 104))(v9, *MEMORY[0x277CE0A90], v6);
  sub_2167CD8D8();
  sub_2170082A4();
  v15 = &v13[*(v14 + 24)];
  *v15 = swift_getKeyPath();
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v15[32] = 0;
  KeyPath = swift_getKeyPath();
  v17 = &v13[*(v11 + 44)];
  *v17 = KeyPath;
  *(v17 + 1) = a2;
  sub_216852F54();
  v18 = type metadata accessor for LinkComponentModel();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v18);
  sub_216EF2184();
  sub_2166997CC(v5, &qword_27CAB7A30);
  return sub_2166997CC(v13, &qword_27CAB99D0);
}

uint64_t sub_21684FACC(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99E8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A00);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_216852F54();
  KeyPath = swift_getKeyPath();
  v10 = &v8[*(v6 + 44)];
  *v10 = KeyPath;
  *(v10 + 1) = a1;
  sub_216852F54();
  v11 = type metadata accessor for InlineUpsell();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v11);
  sub_216EF239C();
  sub_2166997CC(v4, &qword_27CAB99E8);
  return sub_2166997CC(v8, &qword_27CAB9A00);
}

uint64_t sub_21684FC70@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v22 = a1;
  v23 = sub_21700DAF4();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HorizontalPosterLockup();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A28);
  MEMORY[0x28223BE20](v13);
  v15 = (&v22 - v14);

  sub_216B81FFC(v16, v15);
  KeyPath = swift_getKeyPath();
  v18 = (v15 + *(v13 + 36));
  *v18 = KeyPath;
  v18[1] = a2;

  sub_216DE9648();
  sub_2166A6EA4();
  sub_216853294();
  v19 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v19) == 1)
  {
    sub_2166997CC(v9, &qword_27CAB6D58);
    v20 = 1;
  }

  else
  {
    (*(*(v19 - 8) + 32))(v12, v9, v19);
    v20 = 0;
  }

  __swift_storeEnumTagSinglePayload(v12, v20, 1, v19);
  sub_21700DAE4();
  sub_2168529AC();
  sub_21700A1C4();
  (*(v3 + 8))(v5, v23);
  sub_2166997CC(v12, &qword_27CAB6D58);
  sub_2166997CC(v15, &qword_27CAB9A28);
}

uint64_t sub_21684FFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v34 = a2;
  v5 = sub_21700DAF4();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HorizontalLockup();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v32 = &v30 - v11;
  v12 = sub_217009EB4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A50);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  *(&v30 - v17) = a1;
  v19 = type metadata accessor for HorizontalLockupView(0);
  v20 = *(v19 + 20);
  *&v18[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v21 = &v18[*(v19 + 24)];
  *v21 = swift_getKeyPath();
  v21[40] = 0;
  v37 = 0x403C000000000000;
  (*(v13 + 104))(v15, *MEMORY[0x277CE0A98], v12);
  sub_2167CD8D8();

  v22 = v31;
  sub_2170082A4();
  KeyPath = swift_getKeyPath();
  v24 = &v18[*(v16 + 36)];
  *v24 = KeyPath;
  *(v24 + 1) = a3;

  sub_216DE9758();
  sub_2166A6EA4();
  sub_216853294();
  v25 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v25) == 1)
  {
    sub_2166997CC(v22, &qword_27CAB6D58);
    v26 = 1;
    v27 = v32;
  }

  else
  {
    v27 = v32;
    (*(*(v25 - 8) + 32))(v32, v22, v25);
    v26 = 0;
  }

  __swift_storeEnumTagSinglePayload(v27, v26, 1, v25);
  v28 = v33;
  sub_21700DAE4();
  sub_216852AA0();
  sub_21700A1C4();
  (*(v35 + 8))(v28, v36);
  sub_2166997CC(v27, &qword_27CAB6D58);
  sub_2166997CC(v18, &qword_27CAB9A50);
}

uint64_t sub_216850478(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AA0);
  sub_2166D9530(&qword_27CAB9AA8, &qword_27CAB9AA0);
  v6 = sub_217008CF4();
  v7 = v4;
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();

  sub_216EF25C8();
  v11[0] = a1;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = KeyPath;
  v12 = 0;
  v13 = v9;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v10;
  v19 = a2;
  return sub_2166997CC(v11, &qword_27CAB9A78);
}

uint64_t sub_2168505E0(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AC8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_216852F54();
  v9 = &v8[*(type metadata accessor for GroupedTextListLockupView() + 20)];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  KeyPath = swift_getKeyPath();
  v11 = &v8[*(v6 + 44)];
  *v11 = KeyPath;
  *(v11 + 1) = a1;
  sub_216852F54();
  v12 = type metadata accessor for GroupedTextListLockup();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v12);
  sub_216EF2878();
  sub_2166997CC(v4, &qword_27CAB9AB0);
  return sub_2166997CC(v8, &qword_27CAB9AC8);
}

uint64_t sub_2168507A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v25 = a2;
  v26 = sub_21700DAF4();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowcaseLockup();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v25 - v16);
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for FlowcaseLockupView(0);
  v19 = v17 + *(v18 + 20);
  *v19 = swift_getKeyPath();
  v19[40] = 0;
  *(v17 + *(v18 + 24)) = a1;
  KeyPath = swift_getKeyPath();
  v21 = (v17 + *(v15 + 36));
  *v21 = KeyPath;
  v21[1] = a3;

  sub_216DE9978();
  sub_2166A6EA4();
  sub_216853294();
  v22 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v22) == 1)
  {
    sub_2166997CC(v11, &qword_27CAB6D58);
    v23 = 1;
  }

  else
  {
    (*(*(v22 - 8) + 32))(v14, v11, v22);
    v23 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v23, 1, v22);
  sub_21700DAE4();
  sub_216852D78();
  sub_21700A1C4();
  (*(v5 + 8))(v7, v26);
  sub_2166997CC(v14, &qword_27CAB6D58);
  return sub_2166997CC(v17, &qword_27CAB9AF0);
}

uint64_t sub_216850B50(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B08);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B20);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_216852F54();
  v9 = *(type metadata accessor for EmptyStateLockupView(0) + 20);
  *&v8[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v11 = &v8[*(v6 + 44)];
  *v11 = KeyPath;
  *(v11 + 1) = a1;
  sub_216852F54();
  v12 = type metadata accessor for EmptyStateLockup();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v12);
  sub_216EF2A90();
  sub_2166997CC(v4, &qword_27CAB9B08);
  return sub_2166997CC(v8, &qword_27CAB9B20);
}

uint64_t sub_216850D34(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B38);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B50);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  sub_216852F54();
  v9 = type metadata accessor for SearchLandingBrickLockupView();
  v10 = &v8[*(v9 + 20)];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = &v8[*(v9 + 24)];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  KeyPath = swift_getKeyPath();
  v13 = &v8[*(v6 + 44)];
  *v13 = KeyPath;
  *(v13 + 1) = a1;
  sub_216852F54();
  v14 = type metadata accessor for SearchLandingBrickLockup();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v14);
  sub_216EF2CBC();
  sub_2166997CC(v4, &qword_27CAB9B38);
  return sub_2166997CC(v8, &qword_27CAB9B50);
}

uint64_t sub_216850F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v26 = a2;
  v27 = sub_21700DAF4();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BubbleLockup();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B78);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  *(&v26 - v16) = a1;
  v18 = type metadata accessor for BubbleLockupView(0);
  v19 = *(v18 + 20);
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v20 = &v17[*(v18 + 24)];
  *v20 = swift_getKeyPath();
  v20[40] = 0;
  KeyPath = swift_getKeyPath();
  v22 = &v17[*(v15 + 36)];
  *v22 = KeyPath;
  *(v22 + 1) = a3;

  sub_216DE9A88();
  sub_2166A6EA4();
  sub_216853294();
  v23 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v23) == 1)
  {
    sub_2166997CC(v11, &qword_27CAB6D58);
    v24 = 1;
  }

  else
  {
    (*(*(v23 - 8) + 32))(v14, v11, v23);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v24, 1, v23);
  sub_21700DAE4();
  sub_216853164();
  sub_21700A1C4();
  (*(v5 + 8))(v7, v27);
  sub_2166997CC(v14, &qword_27CAB6D58);
  return sub_2166997CC(v17, &qword_27CAB9B78);
}

uint64_t sub_2168512C4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  swift_beginAccess();
  *(a1 + v7) = a3;

  return a4(v8);
}

uint64_t sub_216851360()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9868);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_216852F54();
  v3 = type metadata accessor for TextListComponentModel();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return sub_21684A3F4(v2, &qword_27CAB9868, &unk_21701E2F0, sub_21684A96C);
}

uint64_t sub_21685144C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_216852F54();
  v3 = type metadata accessor for SuggestionItem();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return sub_21684A3F4(v2, &qword_27CAB90C0, &unk_21701C4B8, sub_21684B19C);
}

uint64_t sub_216851538()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9960);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_216852F54();
  v3 = type metadata accessor for PopoverSelector();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return sub_21684A3F4(v2, &qword_27CAB9960, &unk_217040020, sub_21684B9CC);
}

uint64_t sub_216851624()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9990);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_216852F54();
  v3 = type metadata accessor for ParagraphComponentModel();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return sub_21684A3F4(v2, &qword_27CAB9990, &unk_21701E3D8, sub_21684BD34);
}

uint64_t sub_216851710()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_216852F54();
  v3 = type metadata accessor for LinkComponentModel();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return sub_21684A3F4(v2, &qword_27CAB7A30, &unk_217017F30, sub_21684C09C);
}

uint64_t sub_2168517FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99E8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_216852F54();
  v3 = type metadata accessor for InlineUpsell();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return sub_21684A3F4(v2, &qword_27CAB99E8, &unk_21701E440, sub_21684C404);
}

uint64_t sub_2168518E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_216852F54();
  v3 = type metadata accessor for GroupedTextListLockup();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return sub_21684A3F4(v2, &qword_27CAB9AB0, &unk_217040030, sub_21684CE98);
}

uint64_t sub_2168519D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B08);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_216852F54();
  v3 = type metadata accessor for EmptyStateLockup();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return sub_21684A3F4(v2, &qword_27CAB9B08, &unk_21701E520, sub_21684D464);
}

uint64_t sub_216851AC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B38);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_216852F54();
  v3 = type metadata accessor for SearchLandingBrickLockup();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return sub_21684A3F4(v2, &qword_27CAB9B38, &unk_217031140, sub_21684D7CC);
}

unint64_t sub_216851E18()
{
  result = qword_27CAB9830;
  if (!qword_27CAB9830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9828);
    sub_21685324C(qword_280E37270, type metadata accessor for VerticalVideoLockupView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9830);
  }

  return result;
}

unint64_t sub_216851F0C()
{
  result = qword_27CAB9858;
  if (!qword_27CAB9858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9850);
    sub_21685324C(qword_280E3AE78, type metadata accessor for TrackShelfLockupView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9858);
  }

  return result;
}

unint64_t sub_216852000()
{
  result = qword_27CAB9888;
  if (!qword_27CAB9888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9880);
    sub_21685324C(qword_280E444E0, type metadata accessor for TextListView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9888);
  }

  return result;
}

unint64_t sub_2168520F4()
{
  result = qword_27CAB98B0;
  if (!qword_27CAB98B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB98A8);
    sub_21685324C(qword_280E3CFA0, type metadata accessor for SuperHeroLockupView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB98B0);
  }

  return result;
}

unint64_t sub_2168521E8()
{
  result = qword_27CAB98D8;
  if (!qword_27CAB98D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB98D0);
    sub_2168522A0();
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB98D8);
  }

  return result;
}

unint64_t sub_2168522A0()
{
  result = qword_280E43A70;
  if (!qword_280E43A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E43A70);
  }

  return result;
}

unint64_t sub_216852300()
{
  result = qword_27CAB9900;
  if (!qword_27CAB9900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB98F8);
    sub_21685324C(qword_280E3E620, type metadata accessor for SuggestionItemView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9900);
  }

  return result;
}

unint64_t sub_2168523F4()
{
  result = qword_27CAB9928;
  if (!qword_27CAB9928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9920);
    sub_21685324C(qword_280E40720, type metadata accessor for SquareLockupView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9928);
  }

  return result;
}

unint64_t sub_2168524E8()
{
  result = qword_27CAB9950;
  if (!qword_27CAB9950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9948);
    sub_21685324C(qword_280E40B68, type metadata accessor for PosterLockupView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9950);
  }

  return result;
}

unint64_t sub_2168525DC()
{
  result = qword_27CAB9980;
  if (!qword_27CAB9980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9978);
    sub_21685324C(qword_280E3D4E0, type metadata accessor for PopoverSelectorView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9980);
  }

  return result;
}

unint64_t sub_2168526D0()
{
  result = qword_27CAB99B0;
  if (!qword_27CAB99B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB99A8);
    sub_21685324C(qword_280E38600, type metadata accessor for ExpandableParagraphView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB99B0);
  }

  return result;
}

unint64_t sub_2168527C4()
{
  result = qword_27CAB99D8;
  if (!qword_27CAB99D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB99D0);
    sub_21685324C(&qword_280E2BAE0, type metadata accessor for LinkView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB99D8);
  }

  return result;
}

unint64_t sub_2168528B8()
{
  result = qword_27CAB9A08;
  if (!qword_27CAB9A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9A00);
    sub_21685324C(qword_280E40FF8, type metadata accessor for InlineUpsellView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9A08);
  }

  return result;
}

unint64_t sub_2168529AC()
{
  result = qword_27CAB9A30;
  if (!qword_27CAB9A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9A28);
    sub_21685324C(qword_280E35708, type metadata accessor for LiveRadioPosterLockupView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9A30);
  }

  return result;
}

unint64_t sub_216852AA0()
{
  result = qword_27CAB9A58;
  if (!qword_27CAB9A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9A50);
    sub_21685324C(&qword_280E3C2D0, type metadata accessor for HorizontalLockupView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9A58);
  }

  return result;
}

unint64_t sub_216852B94()
{
  result = qword_27CAB9A80;
  if (!qword_27CAB9A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9A78);
    sub_2166D9530(&qword_27CAB9A88, &qword_27CAB9A90);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9A80);
  }

  return result;
}

unint64_t sub_216852C84()
{
  result = qword_27CAB9AD0;
  if (!qword_27CAB9AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9AC8);
    sub_21685324C(qword_280E35938, type metadata accessor for GroupedTextListLockupView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9AD0);
  }

  return result;
}

unint64_t sub_216852D78()
{
  result = qword_27CAB9AF8;
  if (!qword_27CAB9AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9AF0);
    sub_21685324C(qword_280E3EF78, type metadata accessor for FlowcaseLockupView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9AF8);
  }

  return result;
}

unint64_t sub_216852E6C()
{
  result = qword_27CAB9B28;
  if (!qword_27CAB9B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9B20);
    sub_21685324C(qword_280E3C4F0, type metadata accessor for EmptyStateLockupView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9B28);
  }

  return result;
}

uint64_t sub_216852F54()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216852FAC()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216853004()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

unint64_t sub_216853068()
{
  result = qword_27CAB9B58;
  if (!qword_27CAB9B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9B50);
    sub_21685324C(qword_280E31E78, type metadata accessor for SearchLandingBrickLockupView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9B58);
  }

  return result;
}

unint64_t sub_216853164()
{
  result = qword_27CAB9B80;
  if (!qword_27CAB9B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9B78);
    sub_21685324C(&qword_280E41428, type metadata accessor for BubbleLockupView);
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9B80);
  }

  return result;
}

uint64_t sub_21685324C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216853294()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2168532E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v12[0] = a3;
  v12[2] = a4;
  sub_21700F164();
  sub_217009B34();
  v6 = sub_2170089F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  sub_2168534A0();
  v12[5] = a1;
  swift_unknownObjectRetain();
  sub_21700A3D4();
  swift_unknownObjectRelease();

  WitnessTable = swift_getWitnessTable();
  v12[3] = a2;
  v12[4] = WitnessTable;
  swift_getWitnessTable();
  sub_21700A654();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2168534E8(uint64_t a1)
{
  sub_21700F8F4();
  MEMORY[0x21CEA0720](a1);
  return sub_21700F944();
}

uint64_t sub_216853540@<X0>(uint64_t *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_28();
  *a1 = result;
  return result;
}

uint64_t sub_216853570()
{
  type metadata accessor for StoreKey();
  OUTLINED_FUNCTION_0_47();
  sub_217009104();
  return v1;
}

uint64_t sub_2168535C0()
{
  type metadata accessor for StoreKey();
  OUTLINED_FUNCTION_0_47();
  return sub_217009114();
}

uint64_t sub_216853620()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216853668(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2168536BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_216853770()
{
  result = type metadata accessor for PopoverSelector();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2168537F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB5950 != -1)
  {
    swift_once();
  }

  v3 = qword_27CAB9C30;
  *a1 = sub_2170091A4();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C40);
  sub_2168538F0(v1, a1 + *(v4 + 44));
  sub_217009C74();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C48);
  OUTLINED_FUNCTION_2_36(v5);
  sub_217009C94();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C50);
  return OUTLINED_FUNCTION_2_36(v6);
}

uint64_t sub_2168538F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v39 = a2;
  v2 = type metadata accessor for PopoverSelectorView.ButtonView(0);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C58);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v40 = &v36 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  *v18 = sub_2170093B4();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C60);
  v20 = &v18[*(v19 + 44)];
  sub_21700B124();
  sub_21700AD14();
  v21 = sub_21700AD04();

  v22 = sub_217009C84();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C68);
  v24 = &v20[*(v23 + 36)];
  *v24 = v21;
  v24[8] = v22;
  sub_216854E4C(v37, v7);
  v25 = &v7[*(v3 + 28)];
  v41 = 0;
  sub_21700AEA4();
  v26 = v43;
  *v25 = v42;
  *(v25 + 1) = v26;
  *v16 = sub_2170093B4();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v27 = &v16[*(v19 + 44)];
  sub_21700B124();
  sub_21700AD14();
  v28 = sub_21700AD04();

  v29 = sub_217009C84();
  v30 = &v27[*(v23 + 36)];
  *v30 = v28;
  v30[8] = v29;
  v31 = v40;
  sub_2168282D4(v18, v40, &qword_27CAB9C58);
  v32 = v38;
  sub_216854E4C(v7, v38);
  sub_2168282D4(v16, v11, &qword_27CAB9C58);
  v33 = v39;
  sub_2168282D4(v31, v39, &qword_27CAB9C58);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9C70);
  sub_216854E4C(v32, v33 + *(v34 + 48));
  sub_2168282D4(v11, v33 + *(v34 + 64), &qword_27CAB9C58);
  sub_216697664(v16, &qword_27CAB9C58);
  sub_216854EA4(v7);
  sub_216697664(v18, &qword_27CAB9C58);
  sub_216697664(v11, &qword_27CAB9C58);
  sub_216854EA4(v32);
  return sub_216697664(v40, &qword_27CAB9C58);
}

uint64_t sub_216853CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PopoverSelectorView.ButtonView(0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9CA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  sub_216854054(v25);
  if (*&v25[8])
  {
    memcpy(__dst, v25, 0x48uLL);
    sub_2167ADC3C(__dst, v25);
    v9 = v1 + *(v3 + 20);
    v19 = v6;
    v20 = a1;
    v11 = *(v9 + 8);
    v23 = *v9;
    v10 = v23;
    v24 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
    sub_21700AED4();
    v26 = v22[0];
    v27 = v22[1];
    v28 = v22[2];
    v23 = 0;
    sub_21700AEA4();
    v29 = v22[0];
    v30 = v22[1];
    v23 = v10;
    v24 = v11;
    sub_21700AED4();
    v18[3] = LOBYTE(v22[2]);
    sub_216854E4C(v1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_2167ADC3C(__dst, v22);
    v12 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v13 = swift_allocObject();
    sub_2168550D0(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
    memcpy((v13 + ((v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), v22, 0x48uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9CB0);
    sub_2168551C4();
    sub_2166D9530(&qword_27CAB9CC0, &qword_27CAB9CB0);
    sub_21700A9E4();

    sub_216855218(v25);
    sub_2167ADC98(__dst);
    v14 = v20;
    (*(v19 + 32))(v20, v8, v5);
    v15 = v14;
    v16 = 0;
  }

  else
  {
    sub_216697664(v25, &qword_27CAB8100);
    v15 = a1;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v5);
}

void sub_216854054(__n128 *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for PopoverSelector() + 24));
  sub_216C2E7E0();
  if (__src[1])
  {
    memcpy(a1, __src, 0x48uLL);
  }

  else
  {
    sub_216CE09CC(v3, a1);
  }
}

uint64_t sub_2168540E8()
{
  sub_217009C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9CC8);
  sub_216855250();
  return sub_217008054();
}

uint64_t sub_216854170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_2170093B4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9CE8);
  sub_216854238(a1, a2);
  LOBYTE(a2) = sub_217009C84();
  sub_217007F24();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9CC8);
  v15 = a3 + *(result + 36);
  *v15 = a2;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_216854238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverSelectorView.ButtonView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v11 = *(a1 + *(type metadata accessor for PopoverSelector() + 24));
  swift_getKeyPath();
  sub_2167ADC3C(a2, __src);
  sub_216854E4C(a1, &__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v8 = swift_allocObject();
  memcpy((v8 + 16), __src, 0x48uLL);
  sub_2168550D0(&__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8968);
  sub_2166D9530(&qword_27CAB9CF0, &qword_27CAB8968);
  sub_21685538C();
  return sub_21700B154();
}

uint64_t sub_216854430@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_21700F7D4();
  }

  sub_2167ADC3C(a1, a3 + 8);
  type metadata accessor for PopoverSelectorView.ButtonView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  result = sub_21700AED4();
  *a3 = v6 & 1;
  *(a3 + 80) = v8;
  *(a3 + 88) = v9;
  *(a3 + 96) = v10;
  return result;
}

uint64_t sub_2168544FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for PopoverSelector() + 28));
  if (v2 == *v4 && v3 == v4[1])
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4() & 1;
  }
}

uint64_t sub_21685458C()
{
  result = sub_21700B304();
  v1 = 60.0;
  if (result)
  {
    v1 = 36.0;
  }

  qword_27CAB9C30 = *&v1;
  return result;
}

uint64_t sub_216854614(uint64_t a1)
{
  result = sub_21685466C(qword_280E3D4E0, type metadata accessor for PopoverSelectorView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21685466C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_2168546B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2170091A4();
  sub_21685490C(v2, v27);
  v5 = *&v27[2];
  v24 = v27[1];
  v25 = v27[0];
  v29 = 0;
  v6 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  sub_21700B3B4();
  sub_217008BB4();
  v8 = sub_217009C84();
  sub_217007F24();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v28 = 0;
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9D48) + 36);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9D50);
  sub_217009344();
  sub_2168557DC(v2, __src);
  v19 = swift_allocObject();
  memcpy((v19 + 16), __src, 0x61uLL);
  sub_2168282D4((v2 + 40), v17, &qword_27CAB6DB0);
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0;
  v20 = (v17 + v18[11]);
  *v20 = sub_216855814;
  v20[1] = v19;
  v21 = v18[12];
  *(v17 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v22 = v17 + v18[13];
  *v22 = swift_getKeyPath();
  *(v22 + 40) = 0;
  *a1 = v4;
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  *(a1 + 40) = v24;
  *(a1 + 24) = v25;
  *(a1 + 56) = v5;
  *(a1 + 64) = KeyPath;
  *(a1 + 72) = v6;
  result = memcpy((a1 + 80), v27, 0x70uLL);
  *(a1 + 192) = v8;
  *(a1 + 200) = v10;
  *(a1 + 208) = v12;
  *(a1 + 216) = v14;
  *(a1 + 224) = v16;
  *(a1 + 232) = 0;
  return result;
}

uint64_t sub_21685490C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 3);
  v3 = *(a1 + 4);
  v5 = *a1;
  sub_21700DF14();
  if (v5 == 1)
  {
    v6 = sub_21700ADB4();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x277D84F90];
  sub_2167770D0(v4, v3, 0, MEMORY[0x277D84F90]);
  *a2 = v4;
  a2[1] = v3;
  a2[2] = 0;
  a2[3] = v7;
  a2[4] = v6;

  return sub_2167C4DF0(v4, v3, 0, v7);
}

uint64_t sub_216854A30@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_217009354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9D10);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  sub_2168556B0(v1, __src);
  v10 = swift_allocObject();
  memcpy((v10 + 16), __src, 0x70uLL);
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9D18);
  sub_2168556F8();
  sub_21700AF14();
  sub_217009344();
  sub_2166D9530(&qword_27CAB9D38, &qword_27CAB9D10);
  sub_21685466C(&qword_27CAB9D40, MEMORY[0x277CDDEE0]);
  sub_21700A364();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_216854D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170091A4();
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  sub_21700DF14();
  v7 = sub_21700ADB4();
  v8 = MEMORY[0x277D84F90];
  sub_2167770D0(v6, v5, 0, MEMORY[0x277D84F90]);
  sub_2167C4DF0(v6, v5, 0, v8);
  v9 = sub_21700AD14();
  result = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = v8;
  *(a2 + 56) = v7;
  *(a2 + 64) = result;
  *(a2 + 72) = v9;
  return result;
}

uint64_t sub_216854E4C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216854EA4(uint64_t a1)
{
  v2 = type metadata accessor for PopoverSelectorView.ButtonView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_216854F28()
{
  type metadata accessor for PopoverSelector();
  if (v0 <= 0x3F)
  {
    sub_216854FAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216854FAC()
{
  if (!qword_280E2A590)
  {
    v0 = sub_21700AEE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A590);
    }
  }
}

unint64_t sub_216854FFC()
{
  result = qword_27CAB9C90;
  if (!qword_27CAB9C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9C48);
    sub_2166D9530(&qword_27CAB9C98, &qword_27CAB9CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9C90);
  }

  return result;
}

uint64_t sub_2168550D0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216855128()
{
  type metadata accessor for PopoverSelectorView.ButtonView(0);

  return sub_2168540E8();
}

unint64_t sub_2168551C4()
{
  result = qword_27CAB9CB8;
  if (!qword_27CAB9CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9CB8);
  }

  return result;
}

unint64_t sub_216855250()
{
  result = qword_27CAB9CD0;
  if (!qword_27CAB9CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9CC8);
    sub_2166D9530(&qword_27CAB9CD8, &qword_27CAB9CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9CD0);
  }

  return result;
}

uint64_t sub_216855308@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PopoverSelectorView.ButtonView(0);

  return sub_216854430(a1, (v2 + 16), a2);
}

unint64_t sub_21685538C()
{
  result = qword_27CAB9CF8;
  if (!qword_27CAB9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9CF8);
  }

  return result;
}

uint64_t sub_216855408(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_216855448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2168554BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_2168554FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_216855568()
{
  result = qword_27CAB9D00;
  if (!qword_27CAB9D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9CB0);
    sub_2168551C4();
    sub_2166D9530(&qword_27CAB9CC0, &qword_27CAB9CB0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9D00);
  }

  return result;
}

unint64_t sub_2168556F8()
{
  result = qword_27CAB9D20;
  if (!qword_27CAB9D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9D18);
    sub_2166D9530(&qword_27CAB9D28, &qword_27CAB9D30);
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9D20);
  }

  return result;
}

unint64_t sub_21685581C()
{
  result = qword_27CAB9D58;
  if (!qword_27CAB9D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9D48);
    sub_216855900(&qword_27CAB9D60, &qword_27CAB9D68, &unk_21701EBE0, sub_216855984);
    sub_2166D9530(&qword_27CAB9DA0, &qword_27CAB9D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9D58);
  }

  return result;
}

uint64_t sub_216855900(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_216855984()
{
  result = qword_27CAB9D70;
  if (!qword_27CAB9D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9D78);
    sub_216855A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9D70);
  }

  return result;
}

unint64_t sub_216855A10()
{
  result = qword_27CAB9D80;
  if (!qword_27CAB9D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9D88);
    sub_2166D9530(&qword_27CAB9D90, &qword_27CAB9D98);
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9D80);
  }

  return result;
}

uint64_t sub_216855AF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_21700D284();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = v8;
  v14 = *(v6 + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v22 = a1;
      v10 = v7;
      v13 = v5;
    }

    else
    {
      v22 = (a1 + v14) & ~v12;
    }

    return __swift_getEnumTagSinglePayload(v22, v10, v13);
  }

  v15 = (v14 & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_24;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 2:
        v21 = *a1;
        break;
      case 3:
        v21 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v21 = *a1;
        break;
      default:
        v21 = *a1;
        break;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_216855D14(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_21700D284();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = (v15 & ~v14) + *(*(v10 - 8) + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v12 = v9;
            v10 = v7;
          }

          else
          {
            v24 = &a1[v15] & ~v14;
            v25 = a2;
          }

          __swift_storeEnumTagSinglePayload(v24, v25, v12, v10);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216855FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_21700D284();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_216856030(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  v9 = a1[9];
  v47 = a1[8];
  v10 = *(a1 + 83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
  if (v10)
  {
    if (v10 == 1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_217015240;
      if (v1 == 1)
      {
        v2 = 0;
        v1 = 0;
        v3 = 0;
        v4 = 0;
      }

      else
      {
        sub_21700DF14();
        sub_21700DF14();
      }

      *(inited + 32) = v2;
      *(inited + 40) = v1;
      *(inited + 48) = v3;
      *(inited + 56) = v4;
      if (v8 == 1)
      {
        *(inited + 80) = 0u;
        *(inited + 96) = 0u;
        *(inited + 64) = 0u;
      }

      else
      {
        *(inited + 64) = v6;
        *(inited + 72) = v8;
        sub_21700DF14();
        if (v7)
        {
          v17 = sub_216B80C28(v7);
        }

        else
        {
          v17 = 0;
          v18 = 0;
        }

        *(inited + 80) = v17;
        *(inited + 88) = v18;
        *(inited + 96) = v47;
        *(inited + 104) = v9;
        sub_21700DF14();
      }

      v27 = 0;
      v28 = MEMORY[0x277D84F90];
LABEL_30:
      v29 = v27 - 1;
      v30 = 16 * v27 + 40;
      while (v29 != 4)
      {
        if (++v29 > 4)
        {
          __break(1u);
          goto LABEL_52;
        }

        v31 = *(inited + v30);
        v30 += 16;
        if (v31)
        {
          sub_21700DF14();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_0_49();
            v28 = v32;
          }

          if (*(v28 + 16) >= *(v28 + 24) >> 1)
          {
            OUTLINED_FUNCTION_1_35();
            v28 = v33;
          }

          OUTLINED_FUNCTION_2_37();
          goto LABEL_30;
        }
      }

      goto LABEL_50;
    }

    v15 = swift_initStackObject();
    v16 = v15;
    *(v15 + 16) = xmmword_217013D90;
    if (v1 == 1)
    {
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
    }

    else
    {
      *(v15 + 32) = v2;
      *(v15 + 40) = v1;
      if (v3)
      {
        sub_21700DF14();
        *(v16 + 48) = sub_216B80C28(v3);
        *(v16 + 56) = v19;
        goto LABEL_41;
      }

      sub_21700DF14();
    }

    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
LABEL_41:
    v34 = 0;
    v35 = MEMORY[0x277D84F90];
LABEL_42:
    v36 = (v16 + 40 + 16 * v34);
    while (++v34 != 3)
    {
      v37 = v36 + 2;
      v38 = *v36;
      v36 += 2;
      if (v38)
      {
        v39 = *(v37 - 3);
        sub_21700DF14();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_49();
          v35 = v42;
        }

        v40 = *(v35 + 16);
        if (v40 >= *(v35 + 24) >> 1)
        {
          OUTLINED_FUNCTION_1_35();
          v35 = v43;
        }

        *(v35 + 16) = v40 + 1;
        v41 = v35 + 16 * v40;
        *(v41 + 32) = v39;
        *(v41 + 40) = v38;
        goto LABEL_42;
      }
    }

    goto LABEL_50;
  }

  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_217015230;
  *(v12 + 32) = v2;
  *(v12 + 40) = v1;
  sub_21700DF14();
  if (v3)
  {
    v13 = sub_216B80C28(v3);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  *(v12 + 48) = v13;
  *(v12 + 56) = v14;
  *(v12 + 64) = v4;
  *(v12 + 72) = v5;
  sub_21700DF14();
  v20 = 0;
  v21 = MEMORY[0x277D84F90];
LABEL_18:
  v22 = v20 - 1;
  v23 = 16 * v20 + 40;
  while (v22 != 2)
  {
    if (++v22 > 2)
    {
LABEL_52:
      __break(1u);
      return;
    }

    v24 = *(v12 + v23);
    v23 += 16;
    if (v24)
    {
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_49();
        v21 = v25;
      }

      if (*(v21 + 16) >= *(v21 + 24) >> 1)
      {
        OUTLINED_FUNCTION_1_35();
        v21 = v26;
      }

      OUTLINED_FUNCTION_2_37();
      goto LABEL_18;
    }
  }

LABEL_50:
  swift_setDeallocating();
  sub_2169FAC80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
  sub_216856418();
  v44 = sub_21700E454();
  v46 = v45;

  type metadata accessor for PosterLockup();
  sub_21700F9C4();
  MEMORY[0x21CE9F490](8250, 0xE200000000000000);
  MEMORY[0x21CE9F490](v44, v46);
}

unint64_t sub_216856418()
{
  result = qword_280E29E38;
  if (!qword_280E29E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB74F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E29E38);
  }

  return result;
}

uint64_t sub_21685647C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

uint64_t sub_2168566FC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  if (a1)
  {
    sub_21700CE54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_217013D90;
    sub_21700D234();
    *(v16 + 56) = type metadata accessor for DismissSearchFocusAction();
    *(v16 + 64) = sub_216856974();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
    (*(v11 + 32))(boxed_opaque_existential_1, v14, v9);
    *(v16 + 96) = a2;
    *(v16 + 104) = a3;
    v18 = __swift_allocate_boxed_opaque_existential_1((v16 + 72));
    (*(*(a2 - 8) + 16))(v18, v4, a2);
    v19 = sub_21700D3B4();
    v20 = MEMORY[0x277D21D10];
    a4[3] = v19;
    a4[4] = v20;
    __swift_allocate_boxed_opaque_existential_1(a4);
    return sub_21700D394();
  }

  else
  {
    a4[3] = a2;
    a4[4] = a3;
    v22 = __swift_allocate_boxed_opaque_existential_1(a4);
    v23 = *(*(a2 - 8) + 16);

    return v23(v22, v4, a2);
  }
}

uint64_t type metadata accessor for DismissSearchFocusAction()
{
  result = qword_280E36A90;
  if (!qword_280E36A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_216856974()
{
  result = qword_280E36AD0[0];
  if (!qword_280E36AD0[0])
  {
    type metadata accessor for DismissSearchFocusAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E36AD0);
  }

  return result;
}

void sub_216856A34(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v5 || (sub_216856F4C(), v2 = a1, v3 = sub_21700F104(), v2, v5, (v3 & 1) == 0))
  {
LABEL_7:
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = a1;

    sub_217007DF4();
  }
}

uint64_t (*sub_216856B3C())(void *a1)
{
  v0 = sub_2168569F4();
  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return sub_216856F1C;
}

uint64_t sub_216856B94(char a1)
{
  if (a1 == 2 || (a1 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DC8);
  sub_217006524();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_217013DA0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  if (v3 && [v3 treatment] == 1)
  {
    sub_2170064F4();
  }

  else
  {
    sub_217006504();
  }

  return v1;
}

uint64_t sub_216856CF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216856D64@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  *a1 = v3;
  return result;
}

uint64_t sub_216856DE4(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_217007DF4();
}

uint64_t sub_216856E5C()
{
  v1 = OBJC_IVAR____TtC7MusicUI24ExplicitBadgingPresenter__verificationState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t sub_216856F4C()
{
  result = qword_280E29BD0;
  if (!qword_280E29BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29BD0);
  }

  return result;
}

uint64_t sub_216856F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  v27 = a1;
  v28 = a2;
  v21 = *(v8 + 16);
  v21(v12, v3, v6);
  sub_2167AF75C();
  OUTLINED_FUNCTION_10_19();
  sub_21700D5A4();
  v27 = a1;
  v21(v15, v12, v6);
  sub_21685722C();
  OUTLINED_FUNCTION_10_19();
  sub_21700D5A4();
  v22 = *(v8 + 8);
  v22(v12, v6);
  v23 = v25;
  v27 = v25;
  v21(v18, v15, v6);
  sub_216857280();
  OUTLINED_FUNCTION_10_19();
  sub_21700D5A4();
  v22(v15, v6);
  v27 = v23;
  v21(v20, v18, v6);
  sub_2168572D4();
  OUTLINED_FUNCTION_10_19();
  sub_21700D5A4();
  v22(v18, v6);
  v21(v26, v20, v6);
  sub_216857328();
  sub_21700D5A4();
  return (v22)(v20, v6);
}

unint64_t sub_21685722C()
{
  result = qword_280E379E8[0];
  if (!qword_280E379E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E379E8);
  }

  return result;
}

unint64_t sub_216857280()
{
  result = qword_280E31438;
  if (!qword_280E31438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E31438);
  }

  return result;
}

unint64_t sub_2168572D4()
{
  result = qword_280E2DB50;
  if (!qword_280E2DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2DB50);
  }

  return result;
}

unint64_t sub_216857328()
{
  result = qword_280E34020[0];
  if (!qword_280E34020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E34020);
  }

  return result;
}

uint64_t sub_21685737C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = v67 - v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_4();
  v76 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_4();
  v77 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  v69 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  v70 = v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  v71 = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v72 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  v73 = v67 - v25;
  v26 = *(v3 + 80);
  v27 = *(v3 + 88);
  type metadata accessor for RemoveItemActionImplementation();
  OUTLINED_FUNCTION_7_26();
  v78 = sub_216B94E64();
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_5_24();
  OUTLINED_FUNCTION_191();
  sub_21700D5C4();

  type metadata accessor for RemoveSectionActionImplementation();
  OUTLINED_FUNCTION_7_26();
  v28 = sub_216B94E64();
  v78 = v28;
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_5_24();
  OUTLINED_FUNCTION_191();
  sub_21700D5C4();

  v29 = *(v6 + 8);
  v29(v9, v4);
  v30 = v29;
  v31 = type metadata accessor for PlayAction();
  v32 = sub_216857A24(&qword_280E45668, type metadata accessor for PlayAction);
  v33 = OUTLINED_FUNCTION_1_36(v32);
  OUTLINED_FUNCTION_3_40(v33);
  v78 = v31;
  v79 = v26;
  v80 = v28;
  v81 = v27;
  OUTLINED_FUNCTION_12_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_21();
  OUTLINED_FUNCTION_191();
  v34 = v68;
  sub_21700D5C4();

  v67[1] = v6 + 8;
  v30(v34, v4);
  v75 = v30;
  Action = type metadata accessor for PlayNextAction();
  v36 = sub_216857A24(&qword_280E430D0, type metadata accessor for PlayNextAction);
  v37 = OUTLINED_FUNCTION_1_36(v36);
  OUTLINED_FUNCTION_3_40(v37);
  v78 = Action;
  v79 = v26;
  v80 = v28;
  v81 = v27;
  v38 = v27;
  OUTLINED_FUNCTION_12_20();
  v67[2] = &unk_21704718C;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_21();
  OUTLINED_FUNCTION_191();
  v39 = v76;
  sub_21700D5C4();

  v30(v39, v4);
  v40 = type metadata accessor for PlayLaterAction();
  v41 = sub_216857A24(&qword_280E42570, type metadata accessor for PlayLaterAction);
  v42 = OUTLINED_FUNCTION_1_36(v41);
  OUTLINED_FUNCTION_3_40(v42);
  v78 = v40;
  v79 = v26;
  v80 = v28;
  v81 = v27;
  OUTLINED_FUNCTION_12_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_21();
  v43 = v69;
  OUTLINED_FUNCTION_191();
  v44 = v77;
  sub_21700D5C4();

  v75(v44, v4);
  v45 = type metadata accessor for ShuffleAction();
  v46 = sub_216857A24(&qword_280E43900, type metadata accessor for ShuffleAction);
  v47 = OUTLINED_FUNCTION_1_36(v46);
  OUTLINED_FUNCTION_3_40(v47);
  v78 = v45;
  v79 = v26;
  v80 = v28;
  v81 = v38;
  OUTLINED_FUNCTION_12_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_21();
  v48 = v70;
  OUTLINED_FUNCTION_191();
  sub_21700D5C4();

  v49 = v43;
  v50 = v75;
  v75(v49, v4);
  v53 = nullsub_1(a1, v51, v52);
  OUTLINED_FUNCTION_0_50(v53);
  type metadata accessor for MapFlowActionImplementation();
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_5_24();
  v54 = v71;
  OUTLINED_FUNCTION_191();
  sub_21700D5C4();

  v50(v48, v4);
  v57 = nullsub_1(a1, v55, v56);
  OUTLINED_FUNCTION_0_50(v57);
  type metadata accessor for MapCreateStationActionImplementation();
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_5_24();
  v58 = v72;
  OUTLINED_FUNCTION_191();
  sub_21700D5C4();

  v50(v54, v4);
  v61 = nullsub_1(a1, v59, v60);
  OUTLINED_FUNCTION_0_50(v61);
  type metadata accessor for AddRecentSearchActionImplementation();
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_5_24();
  v62 = v73;
  OUTLINED_FUNCTION_191();
  sub_21700D5C4();

  v50(v58, v4);
  v65 = nullsub_1(a1, v63, v64);
  OUTLINED_FUNCTION_0_50(v65);
  type metadata accessor for MapAddItemsToPlaylistActionImplementation();
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_5_24();
  OUTLINED_FUNCTION_191();
  sub_21700D5C4();

  return (v50)(v62, v4);
}

uint64_t sub_216857A24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t BannerProvider.Banner.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_65_3();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216857ABC@<X0>(void *a1@<X8>)
{
  result = sub_216857B34();
  *a1 = v3;
  return result;
}

uint64_t sub_216857B34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_4();
  sub_217007DE4();
}

uint64_t sub_216857BA8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216857C18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E90);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  return sub_216857D5C();
}

uint64_t sub_216857CEC()
{
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DD8);
  sub_217007DB4();
  return swift_endAccess();
}

uint64_t sub_216857D5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E90);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_71_0();
  v1();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DD8);
  sub_217007DC4();
  swift_endAccess();
  v2 = OUTLINED_FUNCTION_116();
  return v3(v2);
}

void sub_216857E70()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DD8);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  v14 = *v6;
  v13 = v6[1];
  v15 = OBJC_IVAR____TtC7MusicUI14BannerProvider__placement;
  v17[1] = 0x8000000000000000;
  sub_217007DA4();
  (*(v9 + 32))(v0 + v15, v12, v7);
  *(v0 + OBJC_IVAR____TtC7MusicUI14BannerProvider_requestManager) = 0;
  *(v0 + OBJC_IVAR____TtC7MusicUI14BannerProvider_cancellables) = MEMORY[0x277D84FA0];
  v16 = (v0 + OBJC_IVAR____TtC7MusicUI14BannerProvider_placementID);
  *v16 = v14;
  v16[1] = v13;
  *(v0 + OBJC_IVAR____TtC7MusicUI14BannerProvider_context) = v4;
  *(v0 + OBJC_IVAR____TtC7MusicUI14BannerProvider_bootstrapState) = v2;

  sub_216858080();

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216857FC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  result = MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  if (*(v0 + OBJC_IVAR____TtC7MusicUI14BannerProvider_requestManager))
  {
    sub_21700D194();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);

    sub_21685A234(v5);

    return sub_216697664(v5, &qword_27CAB8DF8);
  }

  return result;
}

uint64_t sub_216858080()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC9DE0);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BB8);
  sub_217007DB4();
  swift_endAccess();
  OUTLINED_FUNCTION_5_0();
  sub_2166D9530(v5, &unk_27CAC9DE0);
  OUTLINED_FUNCTION_47();

  OUTLINED_FUNCTION_71_0();
  sub_217007E84();
  OUTLINED_FUNCTION_47();

  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();
}

void sub_216858210(unint64_t *a1)
{
  v1 = *a1;
  if ((~v1 & 0xF000000000000007) != 0)
  {
    if (v1 >> 62)
    {
      if (v1 >> 62 == 1)
      {
        v2 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
        sub_216857BA8();
      }
    }

    else
    {
      sub_21685827C();
    }
  }
}

void sub_21685827C()
{
  OUTLINED_FUNCTION_49();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E20);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E28);
  OUTLINED_FUNCTION_91_1();
  sub_21700DF14();

  OUTLINED_FUNCTION_54_3();
  sub_216859AA4();
  v7 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E30);
  sub_2166D9530(&qword_27CAB9E38, &qword_27CAB9E30);
  sub_217007E44();

  swift_getKeyPath();
  sub_2166D9530(&qword_27CAB9E40, &qword_27CAB9E20);
  sub_217007E94();

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();

  *(v0 + OBJC_IVAR____TtC7MusicUI14BannerProvider_requestManager) = v7;

  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168584DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    type metadata accessor for BannerProvider.Banner();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
  }

  else
  {
    v4 = 0x8000000000000008;
  }

  *a2 = v4;
}

uint64_t BannerProvider.deinit()
{
  v1 = OBJC_IVAR____TtC7MusicUI14BannerProvider__placement;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DD8);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t BannerProvider.__deallocating_deinit()
{
  BannerProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21685864C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BannerProvider();
  result = sub_217007D64();
  *a1 = result;
  return result;
}

uint64_t static BannerProvider.Banner.== infix(_:_:)()
{
  v0 = BannerMessageModel.id.getter();
  v2 = v1;
  if (v0 == BannerMessageModel.id.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21700F7D4();
  }

  return v5 & 1;
}

uint64_t sub_216858738()
{
  sub_217007654();
  swift_getKeyPath();
  sub_2166D9530(qword_280E419B0, &qword_27CAB8DE0);
  sub_2170066D4();

  return *(v0 + 16);
}

uint64_t sub_2168587EC()
{
  sub_217007784();
  swift_getKeyPath();
  sub_2166D9530(&qword_27CAB9E50, &qword_27CAB9E28);
  sub_2170066D4();

  return *(v0 + 16);
}

uint64_t sub_2168588A0(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    v2 = result;
    MEMORY[0x28223BE20](result);
    sub_217007654();
    v6 = &off_280E485F8;
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x28223BE20](KeyPath);
    v5[2] = v1;
    LOBYTE(v6) = v2;
    sub_216860BDC(v4, sub_2168615A4, v5, qword_280E419B0, &qword_27CAB8DE0);
  }

  return result;
}

uint64_t sub_2168589A0(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    v2 = result;
    MEMORY[0x28223BE20](result);
    sub_217007784();
    v6 = &off_280E485D8;
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x28223BE20](KeyPath);
    v5[2] = v1;
    LOBYTE(v6) = v2;
    sub_216860BDC(v4, sub_216861BD4, v5, &qword_27CAB9E50, &qword_27CAB9E28);
  }

  return result;
}

uint64_t sub_216858AA0()
{
  sub_217007654();
  swift_getKeyPath();
  sub_2166D9530(qword_280E419B0, &qword_27CAB8DE0);
  sub_2170066D4();
}

uint64_t sub_216858B58()
{
  sub_217007784();
  swift_getKeyPath();
  sub_2166D9530(&qword_27CAB9E50, &qword_27CAB9E28);
  sub_2170066D4();
}

uint64_t sub_216858C10(uint64_t a1)
{

  v4 = sub_216860CE4(v3, a1);

  if (v4)
  {
    MEMORY[0x28223BE20](v5);
    sub_217007654();
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x28223BE20](KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    sub_216860BDC(v7, sub_216861B84, v9, qword_280E419B0, &qword_27CAB8DE0);
  }

  else
  {
    *(v1 + 32) = a1;
  }
}

uint64_t sub_216858D5C(uint64_t a1)
{

  v4 = sub_216860CE4(v3, a1);

  if (v4)
  {
    MEMORY[0x28223BE20](v5);
    sub_217007784();
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x28223BE20](KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    sub_216860BDC(v7, sub_216861440, v9, &qword_27CAB9E50, &qword_27CAB9E28);
  }

  else
  {
    *(v1 + 32) = a1;
  }
}

uint64_t sub_216858EA8(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
}

uint64_t sub_216858EE4()
{
  sub_217007654();
  swift_getKeyPath();
  sub_2166D9530(qword_280E419B0, &qword_27CAB8DE0);
  sub_2170066D4();

  return sub_21700DF14();
}

uint64_t sub_216858FA4()
{
  sub_217007784();
  swift_getKeyPath();
  sub_2166D9530(&qword_27CAB9E50, &qword_27CAB9E28);
  sub_2170066D4();

  return sub_21700DF14();
}

uint64_t sub_216859064()
{
  OUTLINED_FUNCTION_74_5();
  v9 = sub_217007784();
  v10 = &off_280E485D8;
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = v3;
  sub_216860BDC(KeyPath, v2, &v6, &qword_27CAB9E50, &qword_27CAB9E28);

  return v0(v3);
}

uint64_t sub_2168590FC(uint64_t a1, uint64_t a2)
{
  *(a1 + qword_280E41A40) = a2;
  sub_21700DF14();
}

uint64_t sub_216859140@<X0>(uint64_t a1@<X8>)
{
  sub_217007654();
  swift_getKeyPath();
  v5 = v1;
  sub_2166D9530(qword_280E419B0, &qword_27CAB8DE0);
  sub_2170066D4();

  v3 = qword_280E41B70;
  swift_beginAccess();
  return sub_216861304(v5 + v3, a1);
}

uint64_t sub_21685921C@<X0>(uint64_t a1@<X8>)
{
  sub_217007784();
  swift_getKeyPath();
  v5 = v1;
  sub_2166D9530(&qword_27CAB9E50, &qword_27CAB9E28);
  sub_2170066D4();

  v3 = qword_280E41B70;
  swift_beginAccess();
  return sub_216861304(v5 + v3, a1);
}

uint64_t sub_2168592F8(uint64_t a1)
{
  v8 = sub_217007654();
  v9 = &off_280E485F8;
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_216860BDC(KeyPath, sub_216861B4C, &v5, qword_280E419B0, &qword_27CAB8DE0);

  return sub_216697664(a1, &qword_27CAB8DF8);
}

uint64_t sub_2168593AC(uint64_t a1)
{
  v8 = sub_217007784();
  v9 = &off_280E485D8;
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_216860BDC(KeyPath, sub_216861B9C, &v5, &qword_27CAB9E50, &qword_27CAB9E28);

  return sub_216697664(a1, &qword_27CAB8DF8);
}

uint64_t sub_216859460(uint64_t a1, uint64_t a2)
{
  v4 = qword_280E41B70;
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_216861520(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2168594C8(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + qword_280E41B60) == (result & 1))
  {
    *(v1 + qword_280E41B60) = v2;
  }

  else
  {
    MEMORY[0x28223BE20](result);
    sub_217007654();
    v6 = &off_280E485F8;
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x28223BE20](KeyPath);
    v5[2] = v1;
    LOBYTE(v6) = v2;
    sub_216860BDC(v4, sub_2168619DC, v5, qword_280E419B0, &qword_27CAB8DE0);
  }

  return result;
}

uint64_t sub_2168595D8(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + qword_280E41B60) == (result & 1))
  {
    *(v1 + qword_280E41B60) = v2;
  }

  else
  {
    MEMORY[0x28223BE20](result);
    sub_217007784();
    v6 = &off_280E485D8;
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x28223BE20](KeyPath);
    v5[2] = v1;
    LOBYTE(v6) = v2;
    sub_216860BDC(v4, sub_216861BF8, v5, &qword_27CAB9E50, &qword_27CAB9E28);
  }

  return result;
}

uint64_t sub_2168596E8()
{
  sub_217007654();
  swift_getKeyPath();
  sub_2166D9530(qword_280E419B0, &qword_27CAB8DE0);
  sub_2170066D4();

  return *(v0 + qword_280E41AD8);
}

uint64_t sub_2168597A4()
{
  sub_217007784();
  swift_getKeyPath();
  sub_2166D9530(&qword_27CAB9E50, &qword_27CAB9E28);
  sub_2170066D4();

  return *(v0 + qword_280E41AD8);
}

void sub_216859860()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_57_8(v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_54_9();
  *(v1 + 24) = MEMORY[0x277D84FA0];
  *(v1 + 32) = 0;
  *(v1 + qword_280E41A40) = sub_21700E384();
  sub_21700D194();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  *(v0 + qword_280E41B60) = 0;
  *(v0 + qword_280E41AD8) = 1;
  *(v0 + qword_280E41A48) = 0;
  v16 = qword_280E73D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DE8);
  OUTLINED_FUNCTION_91_1();
  *(v0 + v16) = sub_217007D84();
  sub_217006704();
  *(v0 + 40) = v5;
  *(v0 + 48) = v4;
  *(v0 + qword_280E41B78) = v3;
  type metadata accessor for UnifiedMessages.Coordinator();
  type metadata accessor for ObjectGraph();

  OUTLINED_FUNCTION_81_2();
  OUTLINED_FUNCTION_51_2();
  v17 = OUTLINED_FUNCTION_96_1(qword_280E41B68);
  v18(v17);
  *(v0 + qword_280E41A38) = v2;

  sub_216859EE4();
  v19 = OUTLINED_FUNCTION_16_21();
  sub_21685A69C(v19, v20, &unk_21701F258, sub_216858C10);
  sub_21685BF04();

  OUTLINED_FUNCTION_26();
}

void sub_216859AA4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_57_8(v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_54_9();
  *(v1 + 24) = MEMORY[0x277D84FA0];
  *(v1 + 32) = 0;
  *(v1 + qword_280E41A40) = sub_21700E384();
  sub_21700D194();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  *(v0 + qword_280E41B60) = 0;
  *(v0 + qword_280E41AD8) = 1;
  *(v0 + qword_280E41A48) = 0;
  v16 = qword_280E73D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E30);
  OUTLINED_FUNCTION_91_1();
  *(v0 + v16) = sub_217007D84();
  sub_217006704();
  *(v0 + 40) = v5;
  *(v0 + 48) = v4;
  *(v0 + qword_280E41B78) = v3;
  type metadata accessor for UnifiedMessages.Coordinator();
  type metadata accessor for ObjectGraph();

  OUTLINED_FUNCTION_81_2();
  OUTLINED_FUNCTION_51_2();
  v17 = OUTLINED_FUNCTION_96_1(qword_280E41B68);
  v18(v17);
  *(v0 + qword_280E41A38) = v2;

  sub_216859064();
  v19 = OUTLINED_FUNCTION_15_17();
  sub_21685A69C(v19, v20, &unk_21701F198, sub_216858D5C);
  sub_21685C158();

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216859CE8()
{
  sub_217007654();
  swift_getKeyPath();
  sub_2166D9530(qword_280E419B0, &qword_27CAB8DE0);
  sub_2170066D4();

  if (!*(v0 + qword_280E41A48))
  {
    return sub_2168588A0(0);
  }

  return result;
}

uint64_t sub_216859DB4()
{
  sub_217007784();
  swift_getKeyPath();
  sub_2166D9530(&qword_27CAB9E50, &qword_27CAB9E28);
  sub_2170066D4();

  if (!*(v0 + qword_280E41A48))
  {
    return sub_2168589A0(0);
  }

  return result;
}

uint64_t sub_216859E80(uint64_t a1, void (*a2)(uint64_t))
{
  *(v2 + qword_280E41A48) = a1;

  a2(v4);
}

uint64_t sub_216859EE4()
{
  OUTLINED_FUNCTION_74_5();
  v9 = sub_217007654();
  v10 = &off_280E485F8;
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = v3;
  sub_216860BDC(KeyPath, v2, &v6, qword_280E419B0, &qword_27CAB8DE0);

  return v0(v3);
}

void sub_21685A01C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_111_1();
  if (__swift_getEnumTagSinglePayload(a1, 1, v5) != 1)
  {
    v6 = OUTLINED_FUNCTION_7_4();
    sub_216861304(v6, v7);
    sub_2168592F8(v1);
  }

  sub_216810F00();
  if (sub_216858738() == 2)
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v8 = sub_217007CA4();
    __swift_project_value_buffer(v8, qword_280E73D20);
    OUTLINED_FUNCTION_47();

    v9 = sub_217007C84();
    v10 = sub_21700EDA4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_115_0();
      v21 = OUTLINED_FUNCTION_114();
      *v11 = 136315394;
      OUTLINED_FUNCTION_64_6();
      v14 = sub_2166A85FC(0xD000000000000016, v12, v13);
      OUTLINED_FUNCTION_49_8(v14);
      v15 = OUTLINED_FUNCTION_54_3();
      MEMORY[0x21CE9F490](v15);

      OUTLINED_FUNCTION_85_4();
      OUTLINED_FUNCTION_47();

      *(v11 + 14) = &v20;
      OUTLINED_FUNCTION_112_2(&dword_216679000, v16, v17, "💬 %s do not pull for %s since there is a pushed message already displayed");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_16_21();
    sub_21685A69C(v18, v19, &unk_21701F258, sub_216858C10);
  }
}