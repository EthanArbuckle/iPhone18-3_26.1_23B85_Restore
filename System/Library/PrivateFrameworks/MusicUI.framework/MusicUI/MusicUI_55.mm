uint64_t sub_216C3118C()
{
  type metadata accessor for ReplayTaskManager(0);
  v0 = swift_allocObject();
  sub_216C348A0();
  return v0;
}

uint64_t sub_216C311EC()
{
  type metadata accessor for ReplayPageView.ImpressionsTracker();
  v0 = swift_allocObject();
  sub_21700DC34();
  *(v0 + 16) = sub_21700DC24();
  return v0;
}

void sub_216C31244()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v55 = v2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC69E0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  v51 = v4;
  sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v52 = v6;
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC69E8);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC69F0);
  v19 = OUTLINED_FUNCTION_36(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = (&v51 - v24);
  v26 = sub_21700ACD4();
  v27 = sub_21700B354();
  v29 = v28;
  v30 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC69F8) + 36);
  *v30 = sub_2170093B4();
  *(v30 + 1) = 0;
  v30[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6A00);
  sub_216C316B8(v1, &v30[*(v31 + 44)]);
  v32 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6A08) + 36)];
  *v32 = v27;
  v32[1] = v29;
  *v25 = v26;
  LOBYTE(v30) = *(v1 + *(type metadata accessor for BackgroundGradientView(0) + 28) + 8);

  if ((v30 & 1) == 0)
  {
    sub_21700ED94();
    v33 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v52 + 8))(v9, v53);
  }

  v34 = sub_216C318E0();

  if ((v34 & 1) != 0 && *(v1 + 128) == 1)
  {
    v35 = sub_21700ACD4();
    v36 = sub_21700B374();
    v38 = v37;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6A18);
    v40 = v51;
    v41 = v51 + *(v39 + 36);
    *v41 = sub_2170093B4();
    *(v41 + 1) = 0;
    v41[16] = 0;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6A20);
    sub_216C31960(v1, &v41[*(v42 + 44)]);
    v43 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6A28) + 36)];
    *v43 = v36;
    v43[1] = v38;
    *v40 = v35;
    sub_2167C5834(v40, v17, &qword_27CAC69E0);
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v44, 1, v54);
  sub_216683A80(v25, v22, &qword_27CAC69F0);
  v45 = OUTLINED_FUNCTION_98();
  sub_216683A80(v45, v46, &qword_27CAC69E8);
  v47 = v55;
  sub_216683A80(v22, v55, &qword_27CAC69F0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6A10);
  sub_216683A80(v14, v47 + *(v48 + 48), &qword_27CAC69E8);
  sub_2166997CC(v17, &qword_27CAC69E8);
  sub_2166997CC(v25, &qword_27CAC69F0);
  v49 = OUTLINED_FUNCTION_82();
  sub_2166997CC(v49, v50);
  sub_2166997CC(v22, &qword_27CAC69F0);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C316B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ReplayPageBackgroundView();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = *(a1 + 112);
  v12 = *(a1 + 120);
  v13 = type metadata accessor for BackgroundGradientView(0);
  sub_216683A80(a1 + *(v13 + 24), &v10[*(v5 + 44)], &qword_27CAB8600);
  v14 = *(a1 + 128);
  sub_21700DF14();
  sub_21700DF14();
  v15 = !UIAccessibilityIsReduceMotionEnabled();
  type metadata accessor for ReplayPageGeometry(0);
  sub_216C36C54(&qword_27CABA750, type metadata accessor for ReplayPageGeometry);
  *(v10 + 3) = sub_217008104();
  v10[32] = v16 & 1;
  v17 = *(v5 + 48);
  *&v10[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  *v10 = v11;
  *(v10 + 1) = v12;
  v10[16] = 0;
  v10[33] = v15;
  v10[34] = v14;
  sub_216C379D4(v10, v7, type metadata accessor for ReplayPageBackgroundView);
  sub_216C379D4(v7, a2, type metadata accessor for ReplayPageBackgroundView);
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6A38) + 48);
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_216C38088(v10, type metadata accessor for ReplayPageBackgroundView);
  return sub_216C38088(v7, type metadata accessor for ReplayPageBackgroundView);
}

uint64_t sub_216C318E0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_201();
  sub_216C36C54(v1, v2);
  OUTLINED_FUNCTION_116_0();

  return *(v0 + 32);
}

uint64_t sub_216C31960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for ReplayPageBackgroundView();
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 112);
  v15 = *(a1 + 120);
  v16 = type metadata accessor for BackgroundGradientView(0);
  sub_216683A80(a1 + *(v16 + 24), v6, &qword_27CAB8600);
  sub_216683A80(v6, &v13[*(v8 + 44)], &qword_27CAB8600);
  type metadata accessor for ReplayPageGeometry(0);
  sub_216C36C54(&qword_27CABA750, type metadata accessor for ReplayPageGeometry);
  sub_21700DF14();
  sub_21700DF14();
  v17 = sub_217008104();
  LOBYTE(a1) = v18;
  sub_2166997CC(v6, &qword_27CAB8600);
  *(v13 + 3) = v17;
  v13[32] = a1 & 1;
  v19 = *(v8 + 48);
  *&v13[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  *v13 = v14;
  *(v13 + 1) = v15;
  v13[16] = 1;
  *(v13 + 33) = 0;
  sub_216C379D4(v13, v10, type metadata accessor for ReplayPageBackgroundView);
  *a2 = 0;
  *(a2 + 8) = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6A30);
  sub_216C379D4(v10, a2 + *(v20 + 48), type metadata accessor for ReplayPageBackgroundView);
  sub_216C38088(v13, type metadata accessor for ReplayPageBackgroundView);
  return sub_216C38088(v10, type metadata accessor for ReplayPageBackgroundView);
}

uint64_t sub_216C31BF8()
{
  v1[67] = v0;
  sub_21700EA34();
  v1[68] = sub_21700EA24();
  v3 = sub_21700E9B4();
  v1[69] = v3;
  v1[70] = v2;

  return MEMORY[0x2822009F8](sub_216C31C94, v3, v2);
}

uint64_t sub_216C31C94()
{
  v1 = v0[67];
  type metadata accessor for JSIntentDispatcher();
  v2 = *v1;
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_38();
  sub_21700E094();
  v0[71] = v0[66];
  v3 = swift_task_alloc();
  v0[72] = v3;
  *v3 = v0;
  v3[1] = sub_216C31D5C;

  return sub_216AA24B4(v2);
}

uint64_t sub_216C31D5C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v8[73] = v7;
  v8[74] = v9;
  v8[75] = v10;
  v8[76] = v0;

  v11 = *(v2 + 560);
  v12 = *(v2 + 552);
  if (v0)
  {
    v13 = sub_216C32064;
  }

  else
  {
    v13 = sub_216C31EA0;
  }

  return MEMORY[0x2822009F8](v13, v12, v11);
}

uint64_t sub_216C31EA0()
{
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 584);

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v0 + 600);
    v6 = *(v0 + 584) + 32;
    while (v4 < *(v1 + 16))
    {
      sub_216880D18(v6, v0 + 272);
      if (v5)
      {
        v7 = *(v0 + 368) == *(v0 + 592) && *(v0 + 600) == *(v0 + 376);
        if (v7 || (sub_21700F7D4() & 1) != 0)
        {
          memcpy((v0 + 144), (v0 + 272), 0x80uLL);
          memcpy((v0 + 16), (v0 + 144), 0x80uLL);
          goto LABEL_14;
        }
      }

      ++v4;
      result = sub_216880DBC(v0 + 272);
      v6 += 128;
      if (v3 == v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v8 = *(v0 + 584);
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    sub_216CE0E58(v8, v0 + 16);
    if (*(v0 + 152))
    {
      sub_2166997CC(v0 + 144, &qword_27CABA690);
    }

LABEL_14:
    sub_216683A80(v0 + 16, v0 + 400, &qword_27CABA690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D8);
    sub_21700B0D4();

    sub_2166997CC(v0 + 16, &qword_27CABA690);
    v9 = *(v0 + 8);
    v10 = *(v0 + 600);
    v11 = *(v0 + 592);
    v12 = *(v0 + 584);

    return v9(v12, v11, v10);
  }

  return result;
}

uint64_t sub_216C32064()
{

  OUTLINED_FUNCTION_3();

  return v0();
}

void *sub_216C320D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216683A80(v2 + 40, __src, &qword_27CABA6D8);
  v6 = *(v2 + 24);
  v5 = *(v2 + 32);
  v7 = *(v2 + 184);
  v8 = *(v2 + 192);
  v9 = *(v2 + 200);

  sub_21700DF14();

  v12 = *(v2 + 8);
  swift_unknownObjectRetain();
  v10 = sub_216C321CC(__src, a1);
  memcpy(&v13[7], __src, 0x90uLL);
  *a2 = a1;
  *(a2 + 8) = v12;
  *(a2 + 24) = v10;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  result = memcpy((a2 + 49), v13, 0x97uLL);
  *(a2 + 200) = v6;
  *(a2 + 208) = v5;
  return result;
}

uint64_t sub_216C321CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9 - 8];
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_216683A80(a1, v15, &qword_27CABA6D8);
  v16 = a2;
  (*(v5 + 16))(v10, v7, v4);
  sub_216A11298();
  sub_21700DF14();
  sub_21700D5A4();
  sub_216C364E0(v15);
  v11 = *(v5 + 8);
  v11(v7, v4);
  v12 = sub_216E9C508(v10);
  v11(v10, v4);
  return v12;
}

uint64_t sub_216C3238C()
{
  sub_216C324D0(v0, v4);
  sub_216C362C4(v0, __src);
  v1 = swift_allocObject();
  memcpy((v1 + 16), __src, 0xD8uLL);
  __src[0] = sub_216C362FC;
  __src[1] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC66F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6700);
  sub_216C36304();
  sub_2166D9530(&qword_27CAC6730, &qword_27CAC6700);
  sub_21700A7E4();

  return sub_2166997CC(v4, &qword_27CAC66F8);
}

void sub_216C324D0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D8);
  MEMORY[0x21CE9BEE0](__src, v4);
  if (*(&__src[0] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    v5 = *(a1 + 24);
    sub_216880D18(__dst, __src + 8);
    v6 = *(a1 + 208);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *&__src[0] = v5;
    *(&__src[8] + 1) = v6;
    __src[9] = *(a1 + 8);
    *&__src[10] = v7;
    *(&__src[10] + 1) = v8;
    LOBYTE(__src[11]) = v9;

    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6748);
    sub_21700AEA4();
    *(&__src[11] + 8) = v10;
    *(&__src[12] + 8) = v11;
    *(&__src[13] + 1) = v12;
    LOBYTE(__src[14]) = v13;
    *(&__src[14] + 1) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118);
    sub_21700AEA4();
    __src[15] = v10;
    memcpy(&__src[16], __dst, 0x80uLL);
    memcpy(a2, __src, 0x180uLL);
  }

  else
  {
    sub_2166997CC(__src, &qword_27CABA690);
    bzero(a2, 0x180uLL);
  }
}

uint64_t sub_216C32688@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0);
  MEMORY[0x28223BE20](v3);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6738);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - v8;
  v10 = *a1;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D8);
  sub_21700B0E4();
  v11 = a1[3];
  v19 = 0;
  v18 = *(a1 + 1);
  swift_unknownObjectRetain();

  sub_21700AEA4();
  LOBYTE(v22) = v20;
  v23 = v21;
  v26 = v10;
  v27 = v18;
  v28 = v11;
  v12 = *MEMORY[0x277CDF988];
  v13 = sub_217008844();
  (*(*(v13 - 8) + 104))(v5, v12, v13);
  sub_216C36C54(&qword_280E2B340, MEMORY[0x277CDFA28]);
  result = sub_21700E494();
  if (result)
  {
    v15 = sub_216C36438();
    *&v18 = v11;
    v16 = sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0);
    sub_21700A5B4();
    sub_2166997CC(v5, &qword_27CAB75D0);
    sub_216C3648C(&v22);
    type metadata accessor for ObjectGraph();
    v22 = &type metadata for ReplayYearSelectorView;
    v23 = v3;
    v24 = v15;
    v25 = v16;
    swift_getOpaqueTypeConformance2();
    sub_21700A1E4();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216C32A04(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_216C32A94;

  return sub_216C31BF8();
}

uint64_t sub_216C32A94()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v9 = v8;
  v10 = *v1;
  OUTLINED_FUNCTION_11();
  *v11 = v10;

  if (!v0)
  {
    v12 = *(v8 + 16);
    *v12 = v7;
    v12[1] = v5;
    v12[2] = v3;
  }

  v13 = *(v10 + 8);

  return v13();
}

void sub_216C32BB8(void *a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  [v6 setLargeTitleDisplayMode_];
  v7 = objc_opt_self();
  v8 = [v7 ams_primaryText];
  [a1 setPreferredNavigationBarTintColor_];

  sub_217009454();
  a3();
  v9 = sub_217009434();
  v10 = [v9 view];
  if (v10)
  {
    v11 = v10;
    v12 = [v7 clearColor];
    [v11 setBackgroundColor_];

    sub_217009424();
    v13 = [v9 view];

    [a1 _setLargeTitleAccessoryView_alignToBaseline_];
    [a1 _setSupportsTwoLineLargeTitles_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_216C32D70()
{
  type metadata accessor for ReplayLoadablePageView.LoadingState();
  v0 = sub_21700B104();
  return MEMORY[0x21CE9BEE0](v0);
}

uint64_t sub_216C32DC0()
{
  type metadata accessor for ReplayLoadablePageView.LoadingState();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_67_0();
  v1 = OUTLINED_FUNCTION_98();
  v2(v1);
  OUTLINED_FUNCTION_6_5();
  sub_21700B104();
  sub_21700B0D4();
  v3 = OUTLINED_FUNCTION_82();
  return v4(v3);
}

void sub_216C32EB8()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v44 = v3;
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v41 = *(v6 + 64);
  MEMORY[0x28223BE20](v7);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  swift_getAssociatedTypeWitness();
  sub_217009564();
  v12 = sub_21700AD94();
  OUTLINED_FUNCTION_1();
  v42 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  OUTLINED_FUNCTION_6_5();
  v17 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v43 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  v38 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v40 = &v35 - v23;
  v36 = v10;
  v37 = v11;
  v45 = v10;
  v46 = v11;
  v47 = v0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = MEMORY[0x277CE0F70];
  OUTLINED_FUNCTION_6_1();
  WitnessTable = swift_getWitnessTable();
  sub_21700AD84();
  v25 = v39;
  (*(v5 + 16))(v39, v0, v2);
  v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v27 = swift_allocObject();
  v28 = v37;
  *(v27 + 16) = v36;
  *(v27 + 24) = v28;
  (*(v5 + 32))(v27 + v26, v25, v2);
  v50 = WitnessTable;
  OUTLINED_FUNCTION_11_74();
  v29 = swift_getWitnessTable();
  v30 = v38;
  sub_21700AAF4();

  (*(v42 + 8))(v16, v12);
  v48 = v29;
  v49 = MEMORY[0x277CE0790];
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  sub_2166C24DC(v30, v17);
  v31 = *(v43 + 8);
  v31(v30, v17);
  v32 = OUTLINED_FUNCTION_98();
  sub_2166C24DC(v32, v33);
  v34 = OUTLINED_FUNCTION_98();
  (v31)(v34);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C3325C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v25 = &v23 - v9;
  v27 = swift_getAssociatedTypeWitness();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v11 = &v23 - v10;
  v12 = type metadata accessor for ReplayLoadablePageView.LoadingState();
  v23 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = sub_217009564();
  v28 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  type metadata accessor for ReplayLoadablePageView();
  sub_216C32D70();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v24;
    (*(v24 + 32))(v11, v14, v27);
    (*(a2 + 40))(v11, a1, a2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = v25;
    sub_2166C24DC(v7, AssociatedTypeWitness);
    v21 = *(v26 + 8);
    v21(v7, AssociatedTypeWitness);
    sub_2166C24DC(v20, AssociatedTypeWitness);
    sub_2166C2718();
    v21(v7, AssociatedTypeWitness);
    v21(v20, AssociatedTypeWitness);
    (*(v18 + 8))(v11, v27);
  }

  else
  {
    v32 = sub_21700ACD4();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_2166C2CB0();

    (*(v23 + 8))(v14, v12);
  }

  v30 = AssociatedConformanceWitness;
  v31 = MEMORY[0x277CE0F70];
  swift_getWitnessTable();
  sub_2166C24DC(v17, v15);
  return (*(v28 + 8))(v17, v15);
}

uint64_t sub_216C3370C()
{
  v0 = type metadata accessor for ReplayLoadablePageView.LoadingState();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  v4 = type metadata accessor for ReplayLoadablePageView();
  sub_216C32D70();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_216C3380C(v4);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_216C3380C(uint64_t a1)
{
  v2 = v1;
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = (v2 + *(v4 + 48));
  v11 = *v10;
  v12 = v10[1];
  v22 = *v10;
  v23 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC6750);
  sub_21700AEB4();
  if (v21)
  {
  }

  v14 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  sub_21700EA34();
  v15 = sub_21700EA24();
  v16 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  *(v17 + 32) = *(a1 + 16);
  (*(v5 + 32))(v17 + v16, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_21677BBA0();
  v22 = v11;
  v23 = v12;
  v21 = v19;
  return sub_21700AEC4();
}

uint64_t sub_216C33A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v9 = type metadata accessor for ReplayLoadablePageView();
  v6[8] = v9;
  v10 = *(v9 - 8);
  v6[9] = v10;
  v6[10] = *(v10 + 64);
  v6[11] = swift_task_alloc();
  v6[12] = type metadata accessor for ReplayLoadablePageView.LoadingState();
  v6[13] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[14] = AssociatedTypeWitness;
  v6[15] = *(AssociatedTypeWitness - 8);
  v12 = swift_task_alloc();
  v6[16] = v12;
  v6[17] = sub_21700EA34();
  v6[18] = sub_21700EA24();
  v15 = (*(a6 + 32) + **(a6 + 32));
  v13 = swift_task_alloc();
  v6[19] = v13;
  *v13 = v6;
  v13[1] = sub_216C33CA0;

  return v15(v12, a5, a6);
}

uint64_t sub_216C33CA0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v2[20] = v0;

  v7 = sub_21700E9B4();
  v2[21] = v7;
  v2[22] = v6;
  if (v0)
  {
    v8 = sub_216C34148;
  }

  else
  {
    v8 = sub_216C33DF4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216C33DF4()
{
  OUTLINED_FUNCTION_93();
  v7 = v0[7];
  (*(v0[15] + 16))(v0[13], v0[16], v0[14]);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_98();
  sub_216C32DC0();
  v6 = (*(v7 + 48) + **(v7 + 48));
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_216C33F54;
  v2 = v0[16];
  v3 = v0[6];
  v4 = v0[7];

  return v6(v2, v3, v4);
}

uint64_t sub_216C33F54()
{
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 192) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = sub_216C34258;
  }

  else
  {
    v7 = sub_216C34088;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216C34088()
{
  OUTLINED_FUNCTION_93();

  v0 = OUTLINED_FUNCTION_38();
  v1(v0);
  OUTLINED_FUNCTION_4_114();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC6750);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216C34148()
{

  v0 = OUTLINED_FUNCTION_13_65();
  v1(v0);
  v2 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_21_49(v2, v3, v4, v5, v6, v7, v8, v9, v14);
  v11(v10);
  OUTLINED_FUNCTION_9_80();
  sub_216C32DC0();
  OUTLINED_FUNCTION_4_114();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC6750);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v12();
}

uint64_t sub_216C34258()
{

  v0 = OUTLINED_FUNCTION_38();
  v1(v0);
  v2 = OUTLINED_FUNCTION_13_65();
  v3(v2);
  v4 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_21_49(v4, v5, v6, v7, v8, v9, v10, v11, v16);
  v13(v12);
  OUTLINED_FUNCTION_9_80();
  sub_216C32DC0();
  OUTLINED_FUNCTION_4_114();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC6750);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v14();
}

uint64_t sub_216C34384()
{
  v0 = type metadata accessor for ReplayLoadablePageView.LoadingState();
  MEMORY[0x28223BE20](v0);
  swift_storeEnumTagMultiPayload();
  v1 = type metadata accessor for ReplayLoadablePageView();
  sub_216C32DC0();
  return sub_216C3380C(v1);
}

uint64_t sub_216C34438()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216C344A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB91F0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216683A80(a1, v7, &qword_27CAB91F0);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9200);
    if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
    {
      sub_216683A80(v7, v5, &qword_27CAB91F0);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_216C34438();

        sub_216C38088(v5, type metadata accessor for MappedReplayPage);
        return sub_2166997CC(v7, &qword_27CAB91F0);
      }

      sub_2166997CC(v5, &qword_27CAB9200);
    }

    sub_216C34438();

    return sub_2166997CC(v7, &qword_27CAB91F0);
  }

  return result;
}

uint64_t sub_216C34658()
{
  v1 = OBJC_IVAR____TtC7MusicUI17ReplayTaskManager__yearListLoadingState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC66F0);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC7MusicUI17ReplayTaskManager__isCatalogContentLoaded;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_216C34708()
{
  sub_216C34658();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_216C34788()
{
  sub_216C36C9C(319, &qword_280E48448, &qword_27CAC6638, &unk_217055678, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_2166D1B54(319, &qword_280E48380, MEMORY[0x277CBCED0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_216C348A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = v11 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC66F0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_67_0();
  memset(v11, 0, sizeof(v11));
  v12 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6638);
  sub_217007DA4();
  OUTLINED_FUNCTION_47_2();
  v8();
  v9 = OBJC_IVAR____TtC7MusicUI17ReplayTaskManager__isCatalogContentLoaded;
  LOBYTE(v11[0]) = 0;
  sub_217007DA4();
  (*(v3 + 32))(v0 + v9, v6, v1);
  *(v0 + OBJC_IVAR____TtC7MusicUI17ReplayTaskManager_contentPagePresenterObservation) = 0;
  return v0;
}

uint64_t sub_216C34A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = v35 - v4;
  v5 = type metadata accessor for ReplayPageGeometryViewModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6968);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6970);
  v12 = *(v11 - 8);
  v41 = v11;
  v42 = v12;
  MEMORY[0x28223BE20](v11);
  v36 = v35 - v13;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6978) - 8;
  MEMORY[0x28223BE20](v40);
  v38 = v35 - v14;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6980);
  MEMORY[0x28223BE20](v43);
  v39 = v35 - v15;
  v35[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC68F0);
  sub_217008004();
  v16 = sub_216C2F030();

  sub_216C379D4(v2, v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplayPageGeometryViewModifier);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_216C37A30(v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ReplayPageGeometryViewModifier);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6998);
  (*(*(v19 - 8) + 16))(v10, v37, v19);
  v20 = &v10[*(v8 + 36)];
  *v20 = sub_216C35084;
  *(v20 + 1) = 0;
  *(v20 + 2) = sub_216C37A8C;
  *(v20 + 3) = v18;
  v35[0] = v2;
  sub_216C379D4(v2, v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplayPageGeometryViewModifier);
  v21 = swift_allocObject();
  sub_216C37A30(v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v17, type metadata accessor for ReplayPageGeometryViewModifier);
  v22 = sub_216C37C60();
  v23 = MEMORY[0x277D839C8];
  v24 = MEMORY[0x277D839B0];
  v25 = v36;
  sub_21700A844();

  sub_2166997CC(v10, &qword_27CAC6968);
  sub_217008004();
  type metadata accessor for ReplayPageGeometry(0);
  v46 = v8;
  v47 = v24;
  v48 = v22;
  v49 = v23;
  swift_getOpaqueTypeConformance2();
  sub_216C36C54(&qword_27CABA750, type metadata accessor for ReplayPageGeometry);
  v26 = v38;
  v27 = v41;
  sub_21700A3C4();

  (*(v42 + 8))(v25, v27);
  KeyPath = swift_getKeyPath();
  v29 = &v26[*(v40 + 44)];
  v30 = v26;
  *v29 = KeyPath;
  *(v29 + 1) = v16;
  v31 = sub_2170098A4();
  v32 = v44;
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v31);
  v33 = v39;
  sub_216C51AF4();
  sub_2166997CC(v32, &qword_27CAB8600);
  sub_2166997CC(v30, &qword_27CAC6978);
  sub_217008004();
  sub_216C37D44();
  sub_21700A3C4();

  return sub_2166997CC(v33, &qword_27CAC6980);
}

uint64_t sub_216C35084@<X0>(void *a1@<X8>)
{
  sub_217008444();
  v3 = v2;
  result = sub_217008434();
  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t sub_216C350C0(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC68F0);
  sub_217008004();
  sub_216C35274(v1);
  v3 = sub_216C2F0B0();
  if (v3 <= v2)
  {
    v3 = v2;
  }

  sub_216C353C0(v3);
}

uint64_t sub_216C35134@<X0>(BOOL *a1@<X8>)
{
  sub_2170086E4();
  v3 = v2;
  result = sub_2170086F4();
  *a1 = v5 < v3;
  return result;
}

uint64_t sub_216C35178(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC68F0);
  sub_217008004();
  sub_216C351D4(v2);
}

uint64_t sub_216C351D4(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_16_56();
    *(v4 - 8) = v2;
    sub_216C35318();
  }

  return result;
}

void sub_216C35274(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_16_56();
    *(v4 - 8) = a1;
    sub_216C35318();
  }
}

uint64_t sub_216C35318()
{
  OUTLINED_FUNCTION_0_201();
  sub_216C36C54(v0, v1);
  return sub_2170066C4();
}

void sub_216C353C0(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_16_56();
    *(v4 - 8) = a1;
    sub_216C35318();
  }
}

uint64_t sub_216C35464()
{
  v1 = OBJC_IVAR____TtC7MusicUI18ReplayPageGeometry___observationRegistrar;
  sub_217006714();
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_216C3551C()
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

uint64_t sub_216C355D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 201))
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

uint64_t sub_216C35610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216C35694()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ReplayLoadablePageView.LoadingState();
    v0 = sub_21700B104();
    if (v2 <= 0x3F)
    {
      sub_216C36C9C(319, &qword_280E2A588, &qword_27CAB8118, &unk_217019040, MEMORY[0x277CE10B8]);
      v0 = v3;
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_216C35784(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  result = AssociatedTypeWitness - 8;
  v11 = v10;
  v12 = *(v10 + 64);
  if (v12 <= 0x18)
  {
    v13 = 24;
  }

  else
  {
    v13 = v12;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v11 + 80) & 0xF8;
  v16 = v15 | 7;
  v17 = *(v6 + 64) + (v15 | 7);
  if (v14 >= a2)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v26 = *((((a1 + v17) & ~v16) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v7, v5);
    }
  }

  else
  {
    v18 = ((v13 + ((v15 + 23) & ~v16) + (v17 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v14 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    switch(v22)
    {
      case 1:
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 2:
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_28;
        }

LABEL_25:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          v25 = *a1;
        }

        else
        {
          v25 = 0;
        }

        result = v14 + (v25 | v24) + 1;
        break;
      default:
        goto LABEL_28;
    }
  }

  return result;
}

void sub_216C359B4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v10 + 64) <= 0x18uLL)
  {
    v11 = 24;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 80) & 0xF8;
  v14 = v13 | 7;
  v15 = *(v8 + 64) + (v13 | 7);
  v16 = v11 + ((v13 + 23) & ~(v13 | 7)) + 1;
  v17 = ((v16 + (v15 & ~(v13 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v20 = 0;
  }

  else
  {
    if (((v16 + (v15 & ~(v13 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v12 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  if (a2 <= v12)
  {
    v23 = ~v14;
    switch(v20)
    {
      case 1:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_56:
        __break(1u);
        break;
      case 4:
        *(a1 + v17) = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if (v9 < 0x7FFFFFFF)
          {
            v24 = ((a1 + v15) & v23);
            if ((a2 & 0x80000000) != 0)
            {
              if (v16 <= 3)
              {
                v25 = ~(-1 << (8 * v16));
              }

              else
              {
                v25 = 0x7FFFFFFF;
              }

              if (v16)
              {
                v26 = v25 & a2;
                if (v16 <= 3)
                {
                  v27 = v16;
                }

                else
                {
                  v27 = 4;
                }

                bzero(v24, v16);
                switch(v27)
                {
                  case 2:
                    *v24 = v26;
                    break;
                  case 3:
                    *v24 = v26;
                    v24[2] = BYTE2(v26);
                    break;
                  case 4:
                    *v24 = v26;
                    break;
                  default:
                    *v24 = v26;
                    break;
                }
              }
            }

            else
            {
              *((v24 + 15) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
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
    if (v17)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v17)
    {
      v22 = ~v12 + a2;
      bzero(a1, v17);
      *a1 = v22;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v17) = v21;
        break;
      case 2:
        *(a1 + v17) = v21;
        break;
      case 3:
        goto LABEL_56;
      case 4:
        *(a1 + v17) = v21;
        break;
      default:
        return;
    }
  }
}

void sub_216C35CE4()
{
  sub_216C360AC();
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_216C35D6C(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = 24;
  if (v4 > 0x18)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_22:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
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

  return (v6 | v11) + 254;
}

void sub_216C35EC8(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= 0x18)
  {
    v6 = 24;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v6 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v6] = -a2;
        }

        break;
    }
  }
}

void sub_216C360AC()
{
  if (!qword_280E29AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABFAD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC98);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E29AD0);
    }
  }
}

unint64_t sub_216C36180()
{
  result = qword_27CAC66D8;
  if (!qword_27CAC66D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC66E0);
    sub_216C36204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC66D8);
  }

  return result;
}

unint64_t sub_216C36204()
{
  result = qword_27CAC66E8;
  if (!qword_27CAC66E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC66E8);
  }

  return result;
}

uint64_t sub_216C36294()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_217006704();
  return v0;
}

unint64_t sub_216C36304()
{
  result = qword_27CAC6708;
  if (!qword_27CAC6708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC66F8);
    sub_216C36388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6708);
  }

  return result;
}

unint64_t sub_216C36388()
{
  result = qword_27CAC6710;
  if (!qword_27CAC6710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6718);
    sub_2166D9530(&qword_27CAC6720, &qword_27CAC6728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6710);
  }

  return result;
}

unint64_t sub_216C36438()
{
  result = qword_27CAC6740;
  if (!qword_27CAC6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6740);
  }

  return result;
}

uint64_t sub_216C36558(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = type metadata accessor for ReplayLoadablePageView();
  OUTLINED_FUNCTION_36(v6);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21677A0BC;

  return sub_216C33A34(a1, v9, v10, v1 + v8, v4, v5);
}

uint64_t objectdestroy_35Tm()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_6_5();
  type metadata accessor for ReplayLoadablePageView();
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  OUTLINED_FUNCTION_50();
  v4 = OUTLINED_FUNCTION_82();
  v5(v4);
  v6 = (v3 + *(v0 + 36));

  OUTLINED_FUNCTION_48_22();
  v7 = OUTLINED_FUNCTION_50_20();
  if (v7 == 1)
  {
    OUTLINED_FUNCTION_47_2();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v6);
  }

  else if (!v7)
  {
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216C367D8(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_71_0();
  v1 = type metadata accessor for ReplayLoadablePageView();
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_71_0();

  return a1();
}

uint64_t sub_216C36864()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216C368C0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_216C36900(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_216C369AC()
{
  type metadata accessor for ObjectGraph();
  if (v0 <= 0x3F)
  {
    sub_216C36C9C(319, &qword_280E2B440, &qword_27CAB8600, &unk_217020AD0, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_216C36C9C(319, &qword_280E2A5D0, &qword_27CABA690, &unk_217020E30, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_2166D1B54(319, &qword_280E2A590, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_216C36BC0();
          if (v4 <= 0x3F)
          {
            sub_216C36C9C(319, &qword_280E2B478, &qword_27CABB9E8, &unk_217028D30, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_2167CBB2C();
              if (v6 <= 0x3F)
              {
                sub_2166B3A60();
                if (v7 <= 0x3F)
                {
                  sub_216C36D00();
                  if (v8 <= 0x3F)
                  {
                    sub_216C374E8(319, &qword_280E2A5C8, type metadata accessor for ReplayToolbarPagePresenter, MEMORY[0x277CE10B8]);
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

void sub_216C36BC0()
{
  if (!qword_280E2B400)
  {
    type metadata accessor for ReplayTaskManager(255);
    sub_216C36C54(&qword_280E3FA50, type metadata accessor for ReplayTaskManager);
    v0 = sub_2170081D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B400);
    }
  }
}

uint64_t sub_216C36C54(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_216C36C9C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_216C36D00()
{
  if (!qword_280E2B408)
  {
    type metadata accessor for ReplayPageView.ImpressionsTracker();
    sub_216C36C54(&qword_280E42F98, type metadata accessor for ReplayPageView.ImpressionsTracker);
    v0 = sub_2170081D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B408);
    }
  }
}

unint64_t sub_216C36DB8()
{
  result = qword_27CAC6818;
  if (!qword_27CAC6818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6810);
    sub_216C36E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6818);
  }

  return result;
}

unint64_t sub_216C36E44()
{
  result = qword_27CAC6820;
  if (!qword_27CAC6820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6828);
    sub_216C36EFC();
    sub_2166D9530(&qword_27CAC6860, &qword_27CAC6868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6820);
  }

  return result;
}

unint64_t sub_216C36EFC()
{
  result = qword_27CAC6830;
  if (!qword_27CAC6830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6838);
    sub_216C36F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6830);
  }

  return result;
}

unint64_t sub_216C36F88()
{
  result = qword_27CAC6840;
  if (!qword_27CAC6840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6848);
    sub_2166D9530(&qword_27CAC6850, &qword_27CAC6858);
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6840);
  }

  return result;
}

uint64_t sub_216C3706C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ReplayPageGeometry(0);
  v2 = swift_allocObject();
  result = sub_216C36294();
  *a1 = v2;
  return result;
}

uint64_t sub_216C370AC()
{
  v0 = type metadata accessor for ReplayPageView(0);
  OUTLINED_FUNCTION_36(v0);
  v1 = OUTLINED_FUNCTION_40_25();

  return sub_216C30A84(v1);
}

unint64_t sub_216C3710C()
{
  result = qword_27CAC6898;
  if (!qword_27CAC6898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC67E8);
    sub_216C371C4();
    sub_2166D9530(&qword_27CAC68B0, &qword_27CAC6890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6898);
  }

  return result;
}

unint64_t sub_216C371C4()
{
  result = qword_27CAC68A0;
  if (!qword_27CAC68A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6888);
    sub_2166D9530(&qword_27CAC68A8, &qword_27CAC6880);
    sub_2166D9530(&qword_280E2A780, &qword_27CABCCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC68A0);
  }

  return result;
}

unint64_t sub_216C372A8()
{
  result = qword_27CAC68E0;
  if (!qword_27CAC68E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC68D8);
    sub_2166D9530(&qword_280E48630, &qword_27CAB9150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC68E0);
  }

  return result;
}

void *sub_216C37360(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    sub_21700DF14();

    return sub_21700DF14();
  }

  else if (!a4)
  {
    v4 = result;
  }

  return result;
}

void sub_216C3744C()
{
  sub_216C374E8(319, &qword_27CAC6908, type metadata accessor for ReplayPageGeometry, MEMORY[0x277CDF338]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_216C374E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216C37574()
{
  sub_216C374E8(319, &qword_280E2A850, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_216C374E8(319, &qword_27CABE950, type metadata accessor for ReplayPageGeometry, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_216C37670()
{
  result = qword_27CAC6920;
  if (!qword_27CAC6920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC68C0);
    sub_216C376FC();
    sub_2168E341C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6920);
  }

  return result;
}

unint64_t sub_216C376FC()
{
  result = qword_27CAC6928;
  if (!qword_27CAC6928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6808);
    sub_216C377B4();
    sub_2166D9530(&qword_27CAC6940, &qword_27CAC6948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6928);
  }

  return result;
}

unint64_t sub_216C377B4()
{
  result = qword_27CAC6930;
  if (!qword_27CAC6930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC67F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC67E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC67D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC67E8);
    sub_216C3710C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_216C37940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6930);
  }

  return result;
}

unint64_t sub_216C37940()
{
  result = qword_27CAC6938;
  if (!qword_27CAC6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6938);
  }

  return result;
}

uint64_t sub_216C379D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216C37A30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216C37A8C()
{
  v0 = type metadata accessor for ReplayPageGeometryViewModifier(0);
  OUTLINED_FUNCTION_36(v0);
  v1 = OUTLINED_FUNCTION_40_25();

  return sub_216C350C0(v1);
}

uint64_t objectdestroy_116Tm()
{
  v1 = *(type metadata accessor for ReplayPageGeometryViewModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6988);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6990);

  return swift_deallocObject();
}

uint64_t sub_216C37BE4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ReplayPageGeometryViewModifier(0);
  OUTLINED_FUNCTION_36(v4);

  return sub_216C35178(a1, a2);
}

unint64_t sub_216C37C60()
{
  result = qword_27CAC69A0;
  if (!qword_27CAC69A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6968);
    sub_2166D9530(&qword_27CAC69A8, &qword_27CAC6998);
    sub_2166D9530(&qword_27CAC69B0, &qword_27CAC69B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC69A0);
  }

  return result;
}

unint64_t sub_216C37D44()
{
  result = qword_27CAC69C0;
  if (!qword_27CAC69C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6980);
    sub_216C37DFC();
    sub_2166D9530(&qword_280E2A740, &qword_27CABCC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC69C0);
  }

  return result;
}

unint64_t sub_216C37DFC()
{
  result = qword_27CAC69C8;
  if (!qword_27CAC69C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC69D0);
    sub_216C37EB4();
    sub_2166D9530(&qword_280E2A760, &qword_27CABCC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC69C8);
  }

  return result;
}

unint64_t sub_216C37EB4()
{
  result = qword_27CAC69D8;
  if (!qword_27CAC69D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6970);
    type metadata accessor for ReplayPageGeometry(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6968);
    sub_216C37C60();
    swift_getOpaqueTypeConformance2();
    sub_216C36C54(&qword_27CABA750, type metadata accessor for ReplayPageGeometry);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC69D8);
  }

  return result;
}

double sub_216C38058()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

double sub_216C38068()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_216C38088(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C38128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v61 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v49 - v5;
  v58 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v56 = v8 - v7;
  v9 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v64 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v57 = v13 - v12;
  v14 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v23 = v22;
  v26 = *(v16 + 8);
  v24 = v16 + 8;
  v25 = v26;
  v26(v20, v14);
  if (v23)
  {
    v53 = v25;
    v54 = v24;
    v55 = v14;
    sub_21700D7A4();
    v50 = v21;
    sub_21700CE04();
    v27 = v9;
    v51 = *(v64 + 16);
    v28 = v57;
    v51(v57, v61, v27);
    v52 = type metadata accessor for ContextAccessoryButton();
    v49 = *(v52 + 20);
    sub_21700D734();
    v62 = v50;
    v63 = v23;
    sub_21700F364();
    v29 = v61;
    sub_21700CE04();
    v51(v28, v29, v27);
    sub_216C38B84(qword_280E40390, type metadata accessor for ContentDescriptor);
    v30 = v58;
    v31 = v59;
    sub_21700D734();
    if (__swift_getEnumTagSinglePayload(v31, 1, v30) == 1)
    {
      sub_216697664(v31, &qword_27CAB6A00);
      v32 = sub_21700E2E4();
      OUTLINED_FUNCTION_1_174();
      sub_216C38B84(v33, v34);
      OUTLINED_FUNCTION_4();
      *v35 = 0xD000000000000011;
      v35[1] = 0x8000000217081910;
      v35[2] = v52;
      (*(*(v32 - 8) + 104))(v35, *MEMORY[0x277D22530], v32);
      swift_willThrow();
      v36 = OUTLINED_FUNCTION_5_107();
      v37(v36);
      v53(a1, v55);
      v38 = v60;
      sub_216788110(v60);
      return sub_216697664(v38 + v49, &qword_27CAB6D58);
    }

    else
    {
      v46 = OUTLINED_FUNCTION_5_107();
      v47(v46);
      v53(a1, v55);
      v48 = v56;
      sub_2168ED900(v31, v56);
      return sub_2168ED900(v48, v60 + *(v52 + 24));
    }
  }

  else
  {
    v40 = sub_21700E2E4();
    OUTLINED_FUNCTION_1_174();
    sub_216C38B84(v41, v42);
    OUTLINED_FUNCTION_4();
    v44 = v43;
    v45 = type metadata accessor for ContextAccessoryButton();
    *v44 = 25705;
    v44[1] = 0xE200000000000000;
    v44[2] = v45;
    (*(*(v40 - 8) + 104))(v44, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    (*(v64 + 8))(v61, v9);
    return (v25)(a1, v14);
  }
}

uint64_t sub_216C38978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C389DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for ContextAccessoryButton()
{
  result = qword_280E395C0;
  if (!qword_280E395C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216C38AA8()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContentDescriptor();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216C38B84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for OpaqueReplayYearIntent()
{
  result = qword_27CAC6A70;
  if (!qword_27CAC6A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216C38C40()
{
  sub_216C38CAC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_216C38CAC()
{
  if (!qword_280E49920)
  {
    type metadata accessor for AnyReplayYearRequest(255);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E49920);
    }
  }
}

uint64_t sub_216C38DC8(uint64_t a1)
{
  *(a1 + 8) = sub_216C38E4C(&qword_27CAC6A80, type metadata accessor for OpaqueReplayYearIntent);
  result = sub_216C38E4C(&qword_27CAC6A88, type metadata accessor for OpaqueReplayYearIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216C38E4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216C38E94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6A68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_216C38F04(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    a1 = sub_21700E384();
  }

  *&v2[OBJC_IVAR____TtC7MusicUI14JSBundleObject_manifest] = a1;
  *&v2[OBJC_IVAR____TtC7MusicUI14JSBundleObject_bundle] = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for JSBundleObject();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_216C38F88()
{
  swift_getObjectType();
  sub_216685F4C(0, &qword_280E29AF8);
  v0 = sub_21700F124();
  v1 = sub_21700F134();

  return v1;
}

const char *sub_216C39028(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a1;
  v23 = a5;
  v5 = sub_21700E314();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700CBF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D904();
  v12 = MEMORY[0x21CE9E710]();
  if (v12)
  {
    v13 = v12;
    sub_21700DF14();
    sub_21700CC04();
    v14 = sub_216B88808(v11);
    (*(v9 + 8))(v11, v8);
    v15 = swift_allocObject();
    *(v15 + 2) = v14;
    *(v15 + 3) = v13;
    v16 = v22;
    *(v15 + 4) = v23;
    v17 = v16;

    v18 = v24;
    sub_21700E2F4();
    if (v18)
    {
    }

    else
    {
      v15 = sub_21700E304();

      (*(v20 + 8))(v7, v21);
    }
  }

  else
  {
    v15 = "T@NSDictionary,N,R";
    sub_21700E0D4();
    sub_216973E30();
    swift_allocError();
    sub_21700E0A4();
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_216C392F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v26 = a3;
  v28 = a5;
  v29 = a4;
  v27 = a1;
  v7 = sub_21700CCA4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v8 + 16);
  v23(v11, a2, v7, v10);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v22 = *(v8 + 32);
  v24 = v14;
  v22(v14 + v12, v11, v7);
  v16 = v25;
  v15 = v26;
  *(v14 + v13) = v25;
  (v23)(v11, v15, v7);
  v17 = swift_allocObject();
  v22(v17 + v12, v11, v7);
  v18 = v27;
  *(v17 + v13) = v27;
  *(v17 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v30[3] = sub_21700D904();
  v30[4] = MEMORY[0x277D22078];
  v30[0] = v28;
  v19 = v18;

  sub_21700E1C4();

  return __swift_destroy_boxed_opaque_existential_1Tm(v30);
}

void sub_216C3952C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_21700CCB4();
  v3 = sub_21700D3E4();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2166997CC(v2, &qword_27CAB7D20);
LABEL_4:
    v4 = sub_21700E384();

    goto LABEL_5;
  }

  v4 = sub_21700D3D4();
  (*(*(v3 - 8) + 8))(v2, v3);
  if (!v4)
  {
    goto LABEL_4;
  }

LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_217013DA0;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *(v5 + 32) = v4;
  v6 = sub_21700CC94();
}

void sub_216C39830()
{
  v0 = sub_21700E0D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217013DA0;
  swift_getErrorValue();
  sub_21700F884();
  sub_21700E0A4();
  v5 = sub_21700E0C4();
  (*(v1 + 8))(v3, v0);
  *(v4 + 56) = sub_216685F4C(0, &qword_280E29B58);
  *(v4 + 32) = v5;
  v6 = sub_21700CC94();
}

uint64_t sub_216C39BB0()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC6A90);
  __swift_project_value_buffer(v0, qword_27CAC6A90);
  return sub_217007C94();
}

id sub_216C39C44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBundleObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_216C39D04()
{
  sub_21700CCA4();

  sub_216C3952C();
}

void sub_216C39DA0()
{
  sub_21700CCA4();

  sub_216C39830();
}

uint64_t __swift_get_extra_inhabitant_indexTm_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_6(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216C39FDC()
{
  result = sub_21700AC54();
  qword_27CB22A38 = result;
  return result;
}

uint64_t sub_216C3A018(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_217009D94();
  v6 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = sub_217009DF4();
  result = sub_2167E7B50(v5);
  *a2 = v7;
  return result;
}

uint64_t sub_216C3A0E4()
{
  v0 = [objc_opt_self() tertiaryLabelColor];
  result = sub_21700AC44();
  qword_27CB22A60 = result;
  return result;
}

uint64_t sub_216C3A130(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21700ADF4();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = *MEMORY[0x277CE1058];
  v6 = *(*(v3 - 8) + 104);

  return v6(v4, v5, v3);
}

uint64_t sub_216C3A1B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_216C3A1F4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_216C3A264@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170091A4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6AB8);
  return sub_216C3A2B4(v1, a1 + *(v3 + 44));
}

uint64_t sub_216C3A2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v37 = sub_21700D864();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700D8E4();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v38 = &v32 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6AC0);
  v10 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6AC8);
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = *(a1 + 24);
  *&v43 = *(a1 + 16);
  *(&v43 + 1) = v16;
  sub_2167B2E14();
  sub_21700DF14();
  v17 = sub_21700A174();
  v19 = v18;
  v21 = v20;
  sub_217009F94();
  sub_21678817C(v17, v19, v21 & 1);

  if (*a1)
  {
    v22 = *(a1 + 32);

    sub_216856B94(v22);

    sub_217006434();

    (*(v10 + 8))(v12, v33);
    v23 = v37;
    (*(v3 + 104))(v5, *MEMORY[0x277D22050], v37);
    v43 = 0u;
    v44 = 0u;
    memset(v42, 0, sizeof(v42));
    v24 = v34;
    sub_21700D874();
    sub_216697CFC(v42);
    sub_216697CFC(&v43);
    (*(v3 + 8))(v5, v23);
    if (v22)
    {
      v25 = xmmword_217056420;
      v26 = MEMORY[0x277D837D0];
    }

    else
    {
      v26 = 0;
      *&v44 = 0;
      v25 = 0uLL;
    }

    *(&v44 + 1) = v26;
    v43 = v25;
    v27 = v38;
    sub_21700D8C4();
    v28 = v40;
    v29 = *(v39 + 8);
    v29(v24, v40);
    sub_216697CFC(&v43);
    swift_getOpaqueTypeConformance2();
    v30 = v36;
    sub_21700A204();
    v29(v27, v28);
    return (*(v35 + 8))(v15, v30);
  }

  else
  {
    type metadata accessor for ExplicitBadgingPresenter();
    sub_216A959B0();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C3A7A0(uint64_t a1, uint64_t a2, char a3)
{
  sub_216777114(a1, a2, a3 & 1);
  sub_21700DF14();
  return a1;
}

unint64_t sub_216C3A7FC()
{
  result = qword_280E2A568;
  if (!qword_280E2A568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A568);
  }

  return result;
}

id sub_216C3A8B8(void *a1, uint64_t a2)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v5 = result;
    sub_2166F1DCC();
    v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
    v8[0] = a2;
    sub_21700DF14();
    v6 = a1;
    v7 = sub_2166F1E10(v8, a1);
    sub_2166F1F64(v7);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216C3A9E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216C3AA28(uint64_t a1)
{
  *(a1 + 8) = sub_216ABCF1C();
  result = sub_216C3AA58();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216C3AA58()
{
  result = qword_27CAC6AE0;
  if (!qword_27CAC6AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6AE0);
  }

  return result;
}

unint64_t sub_216C3AAC0()
{
  result = qword_280E2DAA8;
  if (!qword_280E2DAA8)
  {
    type metadata accessor for UpdateFindFriendsPrivacySettingsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2DAA8);
  }

  return result;
}

unint64_t sub_216C3AC3C()
{
  result = qword_280E2EDB0;
  if (!qword_280E2EDB0)
  {
    type metadata accessor for ToggleDiscoverableByContactAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2EDB0);
  }

  return result;
}

uint64_t sub_216C3AC94(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  v2 = sub_21700E244();
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v3 = v23;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    v23 = *a1;
    v24 = v4;
    LOBYTE(v25) = v5 & 1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
    MEMORY[0x21CE9BEE0]((&v22 + 7), v6);
    v7 = HIBYTE(v22);
  }

  else
  {
    v7 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x8000000217082A70;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v7;
  v9 = sub_21700E384();
  sub_216CAE468(v9, v10, v11, v12, v13, v14, v15, v16, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);

  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = v7;
  *(v17 + 32) = v2;
  v18 = sub_2166AF2EC();
  swift_retain_n();
  v19 = v3;
  v20 = sub_21700EE84();
  v26 = v18;
  v27 = MEMORY[0x277D225C0];
  v23 = v20;
  sub_21700E1C4();

  __swift_destroy_boxed_opaque_existential_1Tm(&v23);
  return v2;
}

void sub_216C3AEB0(_BYTE *a1, uint64_t a2, char a3)
{
  v5 = sub_21700D2A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    sub_216CAF2B8(a3 & 1);
    (*(v6 + 104))(v8, *MEMORY[0x277D21CA8], v5);
    sub_21700E224();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_216C3B040();
    v9 = swift_allocError();
    sub_21700E214();
  }
}

unint64_t sub_216C3B040()
{
  result = qword_27CAC6AE8;
  if (!qword_27CAC6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6AE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UpdateUserProfileError(_BYTE *result, int a2, int a3)
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

unint64_t sub_216C3B144()
{
  result = qword_27CAC6AF0;
  if (!qword_27CAC6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6AF0);
  }

  return result;
}

__n128 sub_216C3B1AC@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v76 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v75 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77();
  v86 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v89 = &v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v74 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_36(v20);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - v22;
  sub_216788294(v1, v94);
  v24 = type metadata accessor for HorizontalLockup();
  v25 = v1 + v24[5];
  v87 = v23;
  sub_2166A6E54(v25, v23, &qword_27CAB6D58);
  v26 = v1 + v24[19];
  v88 = v19;
  sub_2166A6E54(v26, v19, &qword_27CAB6A00);
  v27 = v1 + v24[6];
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = *(v27 + 16);
  v31 = *(v1 + v24[7]);
  v32 = (v1 + v24[8]);
  v33 = v32[1];
  v84 = v29;
  v85 = v28;
  v83 = v30;
  if (v33)
  {
    v82 = *v32;
    sub_216B87640(v28, v29, v30);
    v81 = v33;
  }

  else
  {
    sub_216B87640(v28, v29, v30);
    v82 = sub_216C74700();
    v81 = v34;
  }

  v35 = (v1 + v24[9]);
  v36 = v35[1];
  v37 = v86;
  if (v36)
  {
    v80 = *v35;
    sub_21700DF14();
    v79 = v36;
  }

  else
  {
    sub_21700DF14();
    v80 = sub_216C756EC();
    v79 = v38;
  }

  sub_2166A6E54(v1 + v24[10], v92, &qword_27CAB6DB0);
  sub_2166A6E54(v1 + v24[18], v90, &qword_27CAB6DB0);
  v39 = v24[12];
  v77 = *(v1 + v24[11]);
  v40 = *(v1 + v39);
  v41 = *(v1 + v24[13]);
  v78 = *(v1 + v39 + 8);
  sub_21700DF14();
  sub_21700DF14();
  if (v41 == 2)
  {
    LOBYTE(v41) = sub_216C75FE8();
  }

  sub_2166A6E54(v1 + v24[21], v37, &qword_27CAB6D60);
  v42 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v37, 1, v42) == 1)
  {
    v74 = v40;
    v43 = v31;
    v44 = v75;
    sub_217006794();
    v45 = v76;
    sub_21700C404();
    sub_21700C444();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
    v50 = v89;
    v51 = v44;
    v31 = v43;
    v40 = v74;
    sub_216C7CDA8(v51, v45, v89);
    if (__swift_getEnumTagSinglePayload(v37, 1, v42) != 1)
    {
      sub_216697664(v37, &qword_27CAB6D60);
    }
  }

  else
  {
    v50 = v89;
    sub_216A912E8(v37, v89);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v42);
  }

  v55 = v41 & 1;
  v56 = *(v2 + v24[14]);
  v57 = *(v2 + v24[15]);
  v58 = v94[1];
  *a1 = v94[0];
  *(a1 + 16) = v58;
  *(a1 + 32) = v95;
  sub_21678818C(v87, a1 + v24[5], &qword_27CAB6D58);
  sub_21678818C(v88, a1 + v24[19], &qword_27CAB6A00);
  v59 = a1 + v24[6];
  v60 = v84;
  *v59 = v85;
  *(v59 + 8) = v60;
  *(v59 + 16) = v83;
  *(a1 + v24[7]) = v31;
  v61 = (a1 + v24[8]);
  v62 = v81;
  *v61 = v82;
  v61[1] = v62;
  v63 = (a1 + v24[9]);
  v64 = v79;
  *v63 = v80;
  v63[1] = v64;
  sub_21678818C(v50, a1 + v24[21], &qword_27CAB6D60);
  *(a1 + v24[11]) = v77;
  *(a1 + v24[13]) = v55;
  *(a1 + v24[14]) = v56;
  v65 = a1 + v24[10];
  v66 = v92[1];
  *v65 = v92[0];
  *(v65 + 16) = v66;
  *(v65 + 32) = v93;
  v67 = (a1 + v24[12]);
  v68 = v78;
  *v67 = v40;
  v67[1] = v68;
  v69 = a1 + v24[18];
  *(v69 + 32) = v91;
  result = v90[1];
  *v69 = v90[0];
  *(v69 + 16) = result;
  *(a1 + v24[15]) = v57;
  v71 = (a1 + v24[20]);
  *v71 = 0;
  v71[1] = 0;
  v72 = (a1 + v24[16]);
  *v72 = 0;
  v72[1] = 0;
  v73 = (a1 + v24[17]);
  *v73 = 0;
  v73[1] = 0;
  return result;
}

uint64_t sub_216C3B798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v57[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  v63 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v66 = &v57[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v19);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v57[-v21];
  v23 = type metadata accessor for PosterLockup();
  sub_216788294(v3 + v23[5], v71);
  sub_2166A6E54(v3 + v23[13], v69, &qword_27CAB6DB0);
  sub_2166A6E54(v3 + v23[14], v67, &qword_27CAB6DB0);
  v24 = v3 + v23[15];
  v65 = v22;
  sub_2166A6E54(v24, v22, &qword_27CAB6A00);
  sub_2166A6E54(v3 + v23[17], v16, &qword_27CAB6D60);
  v25 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v16, 1, v25) == 1)
  {
    v26 = v63;
    sub_217006794();
    sub_21700C404();
    sub_21700C444();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    sub_216C7CDA8(v26, v8, v66);
    if (__swift_getEnumTagSinglePayload(v16, 1, v25) != 1)
    {
      sub_216697664(v16, &qword_27CAB6D60);
    }
  }

  else
  {
    sub_216A912E8(v16, v66);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v25);
  }

  sub_2166A6E54(v3 + v23[18], a2 + v23[18], &qword_27CABBEA8);
  sub_2166A6E54(v3 + v23[19], a2 + v23[19], &qword_27CABA338);
  v34 = (v3 + v23[16]);
  v35 = v34[1];
  v64 = *v34;
  sub_2166A6E54(v3, a2, &qword_27CAB6D58);
  memcpy(__dst, (v3 + v23[6]), sizeof(__dst));
  sub_21700DF14();
  sub_216C3BC88(v73);
  v36 = (v3 + v23[7]);
  v37 = *v36;
  v38 = v36[1];
  v39 = *(v3 + v23[8]);
  v62 = v37;
  v63 = v39;
  v40 = v23[10];
  v41 = (v3 + v23[9]);
  v42 = v41[1];
  v59 = *v41;
  v43 = *(v3 + v40 + 8);
  v61 = *(v3 + v40);
  v60 = *(v3 + v40 + 16);
  v44 = v23[12];
  v58 = *(v3 + v23[11]);
  sub_2166A6E54(v3 + v44, a2 + v44, &qword_27CAB6D60);
  v45 = a2 + v23[5];
  v46 = v71[1];
  *v45 = v71[0];
  *(v45 + 16) = v46;
  *(v45 + 32) = v72;
  v47 = a2 + v23[13];
  v48 = v69[1];
  *v47 = v69[0];
  *(v47 + 16) = v48;
  *(v47 + 32) = v70;
  v49 = a2 + v23[14];
  v50 = v67[1];
  *v49 = v67[0];
  *(v49 + 16) = v50;
  *(v49 + 32) = v68;
  sub_21678818C(v65, a2 + v23[15], &qword_27CAB6A00);
  sub_21678818C(v66, a2 + v23[17], &qword_27CAB6D60);
  v51 = (a2 + v23[16]);
  *v51 = v64;
  v51[1] = v35;
  memcpy((a2 + v23[6]), v73, 0x54uLL);
  v52 = (a2 + v23[7]);
  v53 = v63;
  *v52 = v62;
  v52[1] = v38;
  *(a2 + v23[8]) = v53;
  v54 = (a2 + v23[9]);
  *v54 = v59;
  v54[1] = v42;
  v55 = a2 + v23[10];
  *v55 = v61;
  *(v55 + 8) = v43;
  *(v55 + 16) = v60;
  *(a2 + v23[11]) = v58;
  sub_21700DF14();
  sub_21700DF14();
  return sub_21700DF14();
}

void sub_216C3BC88(uint64_t a1@<X8>)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v9 = *(v1 + 6);
  v8 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = *(v1 + 83);
  if (*(v1 + 83))
  {
    if (v11 == 1)
    {
      v2 = *(v1 + 9);
      LODWORD(v1) = *(v1 + 40) | (*(v1 + 82) << 16);
      v15 = v5;
      v17 = v4;
      if (v9 == 1)
      {
        sub_216C3C890(v5, *(&v5 + 1));
      }

      else
      {
        *&v24 = v7;
        *(&v24 + 1) = v9;
        *&v25 = v8;
        *(&v25 + 1) = v10;
        v26 = v2;
        v27 = v1;
        v28 = BYTE2(v1);
        sub_216C3C890(v5, *(&v5 + 1));
        sub_216C3BEA0(&v19);
        v9 = *(&v19 + 1);
        v7 = v19;
        v10 = *(&v20 + 1);
        v8 = v20;
        v2 = v21;
        LODWORD(v1) = v22 | (v23 << 16);
      }

      v14 = 0;
      v13 = v7 & 0xFFFFFFFFFF000000;
      v12 = v10 & 0xFFFFFFFFFFFFFF00;
      v5 = v15;
      v4 = v17;
    }

    else
    {
      if (*(&v5 + 1) == 1)
      {
        *(&v5 + 1) = 1;
      }

      else
      {
        v24 = *v1;
        v25 = v4;
        v26 = v6;
        v27 = v7;
        v28 = BYTE2(v7);
        v1 = &v24;
        sub_216C3BEA0(&v19);
        v5 = v19;
        v4 = v20;
        v6 = v21;
        LODWORD(v7) = v22 | (v23 << 16);
      }

      LOBYTE(v10) = 0;
      v12 = 0;
      v13 = 0;
      v14 = v6 & 0xFFFFFFFFFFFF0000;
    }
  }

  else
  {
    v24 = *v1;
    v25 = v4;
    v26 = v6;
    v27 = v7;
    v28 = BYTE2(v7);
    v1 = &v24;
    sub_216C3BEA0(&v19);
    v16 = v19;
    v18 = v20;
    v6 = v21;
    LODWORD(v7) = v22 | (v23 << 16);
    sub_216C3C8D8(v9, v8);
    v5 = v16;
    v4 = v18;
    v12 = 0;
    v13 = 0;
    v14 = v6 & 0xFFFFFFFFFFFF0000;
  }

  *a1 = v5;
  *(a1 + 16) = v4;
  *(a1 + 32) = v14 | v6;
  *(a1 + 40) = v13 | v7 & 0xFFFFFF;
  *(a1 + 48) = v9;
  *(a1 + 56) = v8;
  *(a1 + 64) = v12 | v10;
  *(a1 + 72) = v2;
  *(a1 + 82) = BYTE2(v1);
  *(a1 + 80) = v1;
  *(a1 + 83) = v11;
}

double sub_216C3BEA0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (*(v1 + 8))
  {
    v4 = *v1;
    v5 = *(v1 + 8);
  }

  else
  {
    v4 = sub_216C74700();
    v5 = v6;
  }

  v7 = *(v1 + 16);
  if (v7)
  {
    sub_21700DF14();
    v8 = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    sub_21700DF14();
    *(inited + 32) = sub_216C756EC();
    *(inited + 40) = v10;
    v8 = sub_216E13B48(inited);
    swift_setDeallocating();
    sub_2169FAC80();
  }

  v15 = *(v1 + 24);
  v11 = *(v1 + 42);
  sub_21700DF14();
  sub_2166A6E54(&v15, &v14, &qword_27CABAA40);
  if (v11 == 2)
  {
    LOBYTE(v11) = sub_216C75FE8();
  }

  v12 = *(v2 + 40);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v8;
  result = *&v15;
  *(a1 + 24) = v15;
  *(a1 + 40) = v12;
  *(a1 + 42) = v11 & 1;
  return result;
}

uint64_t sub_216C3C010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v91 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v90 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v72[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v72[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v19 = OUTLINED_FUNCTION_36(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v72[-v24];
  v26 = type metadata accessor for SquareLockup();
  sub_216788294(v2 + v26[17], v101);
  v85 = *(v2 + 57);
  sub_2166A6E54(v2 + v26[18], v100, &qword_27CAB6DB0);
  sub_2166A6E54(v2 + v26[22], v22, &qword_27CAB6D60);
  v27 = type metadata accessor for Artwork();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v27);
  v84 = v25;
  if (EnumTagSinglePayload == 1)
  {
    sub_217006794();
    sub_21700C404();
    sub_21700C444();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    sub_216C7CDA8(v17, v13, v25);
    if (__swift_getEnumTagSinglePayload(v22, 1, v27) != 1)
    {
      sub_216697664(v22, &qword_27CAB6D60);
    }
  }

  else
  {
    sub_216A912E8(v22, v25);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v27);
  }

  v86 = *v2;
  if (!v86)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    *(inited + 32) = sub_216C74700();
    *(inited + 40) = v37;
    v86 = sub_216E13B48(inited);
    swift_setDeallocating();
    sub_2169FAC80();
  }

  v38 = *(v2 + 8);
  if (v38)
  {
    sub_21700DF14();
    v83 = v38;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_217013DA0;
    sub_21700DF14();
    *(v39 + 32) = sub_216C756EC();
    *(v39 + 40) = v40;
    v83 = sub_216E13B48(v39);
    swift_setDeallocating();
    sub_2169FAC80();
  }

  v41 = v84;
  v42 = *(v2 + 40);
  v81 = *(v2 + 48);
  v82 = v42;
  v80 = *(v2 + 56);
  v43 = *(v2 + 32);
  sub_21700DF14();
  sub_21700DF14();
  if (v43 == 2)
  {
    v43 = sub_216C75FE8();
  }

  v79 = *(v2 + 58);
  sub_2166A6E54(v2 + v26[12], v90, &qword_27CAB6D58);
  sub_2166A6E54(v2 + v26[19], v98, &qword_27CAB6DB0);
  sub_2166A6E54(v2 + v26[20], v91, &qword_27CAB6A00);
  v44 = *(v2 + 72);
  v78 = *(v2 + 64);
  v89 = v44;
  v45 = v26[17];
  v46 = *(v2 + v26[16]);
  v47 = v26[15];
  v75 = *(v2 + v26[14]);
  v48 = (v2 + v26[23]);
  v50 = *v48;
  v49 = v48[1];
  v74 = v50;
  v87 = v49;
  v51 = *(v2 + v47);
  v52 = (v2 + v26[21]);
  v53 = *v52;
  v88 = v52[1];
  v54 = *(v2 + 16);
  v55 = *(v2 + 24);
  v76 = v53;
  v77 = v54;
  sub_216788294(v101, a2 + v45);
  sub_2166A6E54(v41, a2 + v26[22], &qword_27CAB6D60);
  sub_2166A6E54(v100, v92, &qword_27CAB6DB0);
  v56 = v93;
  if (v93)
  {
    v57 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v73 = v43;
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();
    sub_216BA9D20(v101, v56, v57, &v95);
    LOBYTE(v43) = v73;
    sub_216697664(v41, &qword_27CAB6D60);
    sub_216697664(v100, &qword_27CAB6DB0);
    sub_216788110(v101);
    __swift_destroy_boxed_opaque_existential_1Tm(v92);
  }

  else
  {
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();
    sub_216697664(v41, &qword_27CAB6D60);
    sub_216697664(v100, &qword_27CAB6DB0);
    sub_216788110(v101);
    sub_216697664(v92, &qword_27CAB6DB0);
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
  }

  v58 = a2 + v26[18];
  v59 = v96;
  *v58 = v95;
  *(v58 + 16) = v59;
  *(v58 + 32) = v97;
  *(a2 + 57) = v85;
  v61 = v82;
  v60 = v83;
  *a2 = v86;
  *(a2 + 8) = v60;
  v62 = v81;
  *(a2 + 40) = v61;
  *(a2 + 48) = v62;
  *(a2 + 56) = v80;
  *(a2 + 32) = v43 & 1;
  *(a2 + 58) = v79;
  sub_21678818C(v90, a2 + v26[12], &qword_27CAB6D58);
  v63 = a2 + v26[19];
  v64 = v98[1];
  *v63 = v98[0];
  *(v63 + 16) = v64;
  *(v63 + 32) = v99;
  result = sub_21678818C(v91, a2 + v26[20], &qword_27CAB6A00);
  v66 = v89;
  *(a2 + 64) = v78;
  *(a2 + 72) = v66;
  *(a2 + v26[16]) = v46;
  v67 = v74;
  *(a2 + v26[14]) = v75;
  v68 = (a2 + v26[23]);
  v69 = v87;
  *v68 = v67;
  v68[1] = v69;
  *(a2 + v26[15]) = v51;
  v70 = (a2 + v26[21]);
  v71 = v88;
  *v70 = v76;
  v70[1] = v71;
  *(a2 + v26[13]) = 0;
  *(a2 + 16) = v77;
  *(a2 + 24) = v55;
  return result;
}

uint64_t sub_216C3C740(uint64_t a1)
{
  result = sub_216C3C848(&qword_280E445D0, type metadata accessor for SquareLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C3C798(uint64_t a1)
{
  result = sub_216C3C848(&qword_280E44978, type metadata accessor for PosterLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C3C7F0(uint64_t a1)
{
  result = sub_216C3C848(&qword_280E410D0, type metadata accessor for HorizontalLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C3C848(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216C3C890(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    sub_21700DF14();

    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_216C3C8D8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_216C3C8EC()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v0[43] = v1;
  v0[44] = v3;
  v0[41] = v4;
  v0[42] = v5;
  v0[39] = v6;
  v0[40] = v7;
  v8 = sub_217006DE4();
  v0[45] = v8;
  OUTLINED_FUNCTION_2(v8);
  v0[46] = v9;
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v10 = sub_217006E04();
  v0[49] = v10;
  OUTLINED_FUNCTION_2(v10);
  v0[50] = v11;
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v12 = sub_217006E24();
  v0[54] = v12;
  OUTLINED_FUNCTION_2(v12);
  v0[55] = v13;
  v0[56] = OUTLINED_FUNCTION_80();
  v14 = sub_217006BF4();
  v0[57] = v14;
  OUTLINED_FUNCTION_2(v14);
  v0[58] = v15;
  v0[59] = OUTLINED_FUNCTION_80();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v0[60] = v16;
  OUTLINED_FUNCTION_2(v16);
  v0[61] = v17;
  v0[62] = OUTLINED_FUNCTION_80();
  v18 = sub_21700D2A4();
  v0[63] = v18;
  OUTLINED_FUNCTION_2(v18);
  v0[64] = v19;
  v0[65] = OUTLINED_FUNCTION_80();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v0[66] = v20;
  OUTLINED_FUNCTION_2(v20);
  v0[67] = v21;
  v0[68] = OUTLINED_FUNCTION_80();
  v0[69] = *(v2 - 8);
  v0[70] = OUTLINED_FUNCTION_80();
  v22 = type metadata accessor for PlayMusicItemAction();
  v0[71] = v22;
  OUTLINED_FUNCTION_2(v22);
  v0[72] = v23;
  v0[73] = swift_task_alloc();
  v0[74] = swift_task_alloc();
  v0[75] = swift_task_alloc();
  v0[76] = swift_task_alloc();
  v24 = sub_21700BAB4();
  v0[77] = v24;
  OUTLINED_FUNCTION_2(v24);
  v0[78] = v25;
  v0[79] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v0[80] = sub_21700EA24();
  v27 = sub_21700E9B4();
  v0[81] = v27;
  v0[82] = v26;

  return MEMORY[0x2822009F8](sub_216C3CD14, v27, v26);
}

uint64_t sub_216C3CD14()
{
  v2 = *(v0 + 568);
  v3 = *(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30);
  *(v0 + 664) = type metadata accessor for ObjectGraph();
  sub_21700E094();
  swift_getWitnessTable();
  v4 = OUTLINED_FUNCTION_116();
  sub_2169FC06C(v4, v2, v5, v6);
  *(v0 + 672) = v54;
  *(v0 + 688) = v55;
  v7 = OUTLINED_FUNCTION_16_3();
  if ((*(*(v0 + 48) + 8))())
  {
    sub_21694EF28((v0 + 16), *(v0 + 344), *(v0 + 352));
    v8 = swift_task_alloc();
    *(v0 + 704) = v8;
    *v8 = v0;
    v8[1] = sub_216C3D298;
    OUTLINED_FUNCTION_65_14();

    return sub_21694EFA0(v9, v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_44_25();
    if (*(v3 + *(v7 + 36)))
    {
      v56 = *(v3 + *(v7 + 36));
      if (qword_280E2C1A8 != -1)
      {
        OUTLINED_FUNCTION_0_203();
        OUTLINED_FUNCTION_44_25();
      }

      v15 = *(v0 + 600);
      v16 = OUTLINED_FUNCTION_68_15();
      __swift_project_value_buffer(v16, qword_280E2C1B0);
      OUTLINED_FUNCTION_48_23();
      *(v0 + 736) = v17;
      v18 = OUTLINED_FUNCTION_74_0();
      v19(v18);
      v20 = sub_217007C84();
      v21 = sub_21700EDA4();
      OUTLINED_FUNCTION_41_0(v21);
      v22 = *(v0 + 600);
      OUTLINED_FUNCTION_61_15();
      if (v23)
      {
        OUTLINED_FUNCTION_16_57();
        v2 = OUTLINED_FUNCTION_44_0();
        *v15 = 136446210;
        v1 = (v1 + 16);
        v24 = OUTLINED_FUNCTION_8_90();
        v25(v24);
        OUTLINED_FUNCTION_69();
        sub_21700E594();
        OUTLINED_FUNCTION_38_26();
        v26 = OUTLINED_FUNCTION_7_88();
        v1(v26);
        v27 = OUTLINED_FUNCTION_69();
        sub_2166A85FC(v27, v28, v29);
        OUTLINED_FUNCTION_47_27();
        *(v15 + 4) = v22;
        OUTLINED_FUNCTION_11_75(&dword_216679000, "Playing %{public}s from collection", v15);
        OUTLINED_FUNCTION_20_50();
        OUTLINED_FUNCTION_26_4();
      }

      else
      {

        v45 = OUTLINED_FUNCTION_7_88();
        v1(v45);
      }

      *(v0 + 744) = v1;
      OUTLINED_FUNCTION_33_34();
      OUTLINED_FUNCTION_69_13();
      OUTLINED_FUNCTION_40_26(v56);
      sub_21700DF14();
      OUTLINED_FUNCTION_67_13();
      v46 = swift_task_alloc();
      OUTLINED_FUNCTION_64_15(v46);
      OUTLINED_FUNCTION_29_41();
      OUTLINED_FUNCTION_59_13();
      *v2 = v47;
      OUTLINED_FUNCTION_13_66();
      OUTLINED_FUNCTION_65_14();

      __asm { BRAA            X8, X16 }
    }

    if (qword_280E2C1A8 != -1)
    {
      OUTLINED_FUNCTION_0_203();
      OUTLINED_FUNCTION_44_25();
    }

    v30 = *(v0 + 592);
    v31 = OUTLINED_FUNCTION_68_15();
    __swift_project_value_buffer(v31, qword_280E2C1B0);
    OUTLINED_FUNCTION_48_23();
    *(v0 + 768) = v32;
    v33 = OUTLINED_FUNCTION_74_0();
    v34(v33);
    v35 = sub_217007C84();
    v36 = sub_21700EDA4();
    OUTLINED_FUNCTION_41_0(v36);
    v37 = *(v0 + 592);
    OUTLINED_FUNCTION_61_15();
    if (v38)
    {
      OUTLINED_FUNCTION_16_57();
      OUTLINED_FUNCTION_44_0();
      *v30 = 136446210;
      v1 = (v1 + 16);
      v39 = OUTLINED_FUNCTION_8_90();
      v40(v39);
      OUTLINED_FUNCTION_69();
      sub_21700E594();
      OUTLINED_FUNCTION_38_26();
      v41 = OUTLINED_FUNCTION_7_88();
      v1(v41);
      v42 = OUTLINED_FUNCTION_69();
      sub_2166A85FC(v42, v43, v44);
      OUTLINED_FUNCTION_47_27();
      *(v30 + 4) = v37;
      OUTLINED_FUNCTION_11_75(&dword_216679000, "Playing %{public}s", v30);
      OUTLINED_FUNCTION_20_50();
      OUTLINED_FUNCTION_26_4();
    }

    else
    {

      v50 = OUTLINED_FUNCTION_7_88();
      v1(v50);
    }

    *(v0 + 776) = v1;
    OUTLINED_FUNCTION_33_34();
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_25_42();
    sub_21700DF14();
    OUTLINED_FUNCTION_67_13();
    v51 = swift_task_alloc();
    *(v0 + 784) = v51;
    *v51 = v0;
    OUTLINED_FUNCTION_12_66(v51);
    OUTLINED_FUNCTION_65_14();

    return v52();
  }
}

uint64_t sub_216C3D298()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 712) = v0;

  v5 = *(v2 + 656);
  v6 = *(v2 + 648);
  if (v0)
  {
    v7 = sub_216C3E65C;
  }

  else
  {
    v7 = sub_216C3D3CC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216C3D3CC()
{
  sub_2167AD8C0(v0 + 96, v0 + 136);
  if (*(v0 + 160))
  {
    sub_2166A0F18((v0 + 136), v0 + 176);
    if (qword_280E2C1A8 != -1)
    {
      OUTLINED_FUNCTION_0_203();
    }

    v4 = *(v0 + 608);
    v5 = *(v0 + 568);
    v6 = *(v0 + 320);
    v7 = sub_217007CA4();
    __swift_project_value_buffer(v7, qword_280E2C1B0);
    OUTLINED_FUNCTION_48_23();
    v8(v4, v6, v5);
    v9 = sub_217007C84();
    v10 = sub_21700EDA4();
    v11 = OUTLINED_FUNCTION_9_3(v10);
    v12 = *(v0 + 608);
    if (v11)
    {
      OUTLINED_FUNCTION_27_44();
      OUTLINED_FUNCTION_44_0();
      *v6 = 136446210;
      v13 = OUTLINED_FUNCTION_8_90();
      v14(v13);
      OUTLINED_FUNCTION_69();
      sub_21700E594();
      OUTLINED_FUNCTION_38_26();
      v15 = OUTLINED_FUNCTION_119();
      v16(v15);
      v17 = OUTLINED_FUNCTION_69();
      sub_2166A85FC(v17, v18, v19);
      OUTLINED_FUNCTION_47_27();
      *(v6 + 4) = v12;
      OUTLINED_FUNCTION_11_75(&dword_216679000, "Item %{public}s not eligible for playback", v5);
      OUTLINED_FUNCTION_20_50();
      OUTLINED_FUNCTION_26_4();
    }

    else
    {

      v38 = OUTLINED_FUNCTION_119();
      v39(v38);
    }

    v41 = *(v0 + 488);
    v40 = *(v0 + 496);
    v42 = *(v0 + 480);
    sub_21700E094();
    (*(v41 + 104))(v40, *MEMORY[0x277D21E18], v42);
    v43 = swift_task_alloc();
    *(v0 + 720) = v43;
    *v43 = v0;
    v43[1] = sub_216C3DA70;
    v44 = *(v0 + 528);
    v45 = *(v0 + 520);
    v46 = *(v0 + 496);
    v47 = *(v0 + 328);

    return MEMORY[0x28217F468](v45, v0 + 176, v46, v47, v44);
  }

  else
  {
    v20 = *(v0 + 632);
    v21 = *(v0 + 624);
    v22 = *(v0 + 616);
    sub_2167AD91C(v0 + 96);
    (*(v21 + 8))(v20, v22);
    OUTLINED_FUNCTION_44_25();
    if (*(v22 + *(v20 + 36)))
    {
      v73 = *(v22 + *(v20 + 36));
      if (qword_280E2C1A8 != -1)
      {
        OUTLINED_FUNCTION_0_203();
        OUTLINED_FUNCTION_44_25();
      }

      v23 = *(v0 + 600);
      v24 = OUTLINED_FUNCTION_68_15();
      __swift_project_value_buffer(v24, qword_280E2C1B0);
      OUTLINED_FUNCTION_48_23();
      *(v0 + 736) = v25;
      v26 = OUTLINED_FUNCTION_74_0();
      v27(v26);
      v28 = sub_217007C84();
      v29 = sub_21700EDA4();
      OUTLINED_FUNCTION_41_0(v29);
      v30 = *(v0 + 600);
      OUTLINED_FUNCTION_61_15();
      if (v31)
      {
        OUTLINED_FUNCTION_16_57();
        v1 = OUTLINED_FUNCTION_44_0();
        *v23 = 136446210;
        v3 = (v3 + 16);
        v32 = OUTLINED_FUNCTION_8_90();
        v33(v32);
        OUTLINED_FUNCTION_69();
        sub_21700E594();
        OUTLINED_FUNCTION_38_26();
        v34 = OUTLINED_FUNCTION_7_88();
        v3(v34);
        v35 = OUTLINED_FUNCTION_69();
        sub_2166A85FC(v35, v36, v37);
        OUTLINED_FUNCTION_47_27();
        *(v23 + 4) = v30;
        OUTLINED_FUNCTION_11_75(&dword_216679000, "Playing %{public}s from collection", v23);
        OUTLINED_FUNCTION_20_50();
        OUTLINED_FUNCTION_26_4();
      }

      else
      {

        v63 = OUTLINED_FUNCTION_7_88();
        v3(v63);
      }

      *(v0 + 744) = v3;
      OUTLINED_FUNCTION_33_34();
      OUTLINED_FUNCTION_69_13();
      OUTLINED_FUNCTION_40_26(v73);
      sub_21700DF14();
      OUTLINED_FUNCTION_67_13();
      v71 = v2 + *v2;
      v64 = swift_task_alloc();
      OUTLINED_FUNCTION_64_15(v64);
      OUTLINED_FUNCTION_29_41();
      OUTLINED_FUNCTION_59_13();
      *v1 = v65;
      OUTLINED_FUNCTION_13_66();

      __asm { BRAA            X8, X16 }
    }

    if (qword_280E2C1A8 != -1)
    {
      OUTLINED_FUNCTION_0_203();
      OUTLINED_FUNCTION_44_25();
    }

    v48 = *(v0 + 592);
    v49 = OUTLINED_FUNCTION_68_15();
    __swift_project_value_buffer(v49, qword_280E2C1B0);
    OUTLINED_FUNCTION_48_23();
    *(v0 + 768) = v50;
    v51 = OUTLINED_FUNCTION_74_0();
    v52(v51);
    v53 = sub_217007C84();
    v54 = sub_21700EDA4();
    OUTLINED_FUNCTION_41_0(v54);
    v55 = *(v0 + 592);
    OUTLINED_FUNCTION_61_15();
    if (v56)
    {
      OUTLINED_FUNCTION_16_57();
      OUTLINED_FUNCTION_44_0();
      *v48 = 136446210;
      v3 = (v3 + 16);
      v57 = OUTLINED_FUNCTION_8_90();
      v58(v57);
      OUTLINED_FUNCTION_69();
      sub_21700E594();
      OUTLINED_FUNCTION_38_26();
      v59 = OUTLINED_FUNCTION_7_88();
      v3(v59);
      v60 = OUTLINED_FUNCTION_69();
      sub_2166A85FC(v60, v61, v62);
      OUTLINED_FUNCTION_47_27();
      *(v48 + 4) = v55;
      OUTLINED_FUNCTION_11_75(&dword_216679000, "Playing %{public}s", v48);
      OUTLINED_FUNCTION_20_50();
      OUTLINED_FUNCTION_26_4();
    }

    else
    {

      v66 = OUTLINED_FUNCTION_7_88();
      v3(v66);
    }

    *(v0 + 776) = v3;
    OUTLINED_FUNCTION_33_34();
    v67 = *(v0 + 672);
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_25_42();
    sub_21700DF14();
    OUTLINED_FUNCTION_67_13();
    v72 = (v67 + *v67);
    v68 = swift_task_alloc();
    *(v0 + 784) = v68;
    *v68 = v0;
    v69 = OUTLINED_FUNCTION_12_66(v68);

    return v72(v69);
  }
}

uint64_t sub_216C3DA70()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v5 = v4[62];
  v6 = v4[61];
  v7 = v4[60];
  v8 = *v1;
  OUTLINED_FUNCTION_28();
  *v9 = v8;
  v2[91] = v0;

  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    OUTLINED_FUNCTION_58_17();
    v12 = sub_216C3E788;
  }

  else
  {
    (*(v2[64] + 8))(v2[65], v2[63]);
    OUTLINED_FUNCTION_58_17();
    v12 = sub_216C3DBF4;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_216C3DBF4()
{
  OUTLINED_FUNCTION_5_108();
  OUTLINED_FUNCTION_49_26();
  v6 = v0[64];
  v15 = v0[63];
  v13 = v7;
  v14 = v0[39];

  v8 = OUTLINED_FUNCTION_8();
  sub_21677A510(v8, v9);
  (*(v5 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 22));
  sub_2167AD91C((v0 + 12));
  (*(v4 + 8))(v13, v1);
  (*(v6 + 104))(v14, *MEMORY[0x277D21CA8], v15);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_65_14();

  return v10();
}

uint64_t sub_216C3DDC4()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 760) = v0;

  sub_21677A4C0(*(v3 + 248), *(v2 + 256), *(v2 + 264), *(v2 + 272));
  OUTLINED_FUNCTION_57_17();
  if (v0)
  {
    v7 = sub_216C3F194;
  }

  else
  {
    v7 = sub_216C3DF1C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_216C3E210()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 792) = v0;

  sub_21677A4C0(*(v3 + 216), *(v2 + 224), *(v2 + 232), *(v2 + 240));
  OUTLINED_FUNCTION_57_17();
  if (v0)
  {
    v7 = sub_216C3F458;
  }

  else
  {
    v7 = sub_216C3E368;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_216C3E65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_5_108();

  v21 = OUTLINED_FUNCTION_8();
  sub_21677A510(v21, v22);
  v23 = OUTLINED_FUNCTION_108();
  v24(v23);
  v34 = *(v20 + 712);
  OUTLINED_FUNCTION_3_135();
  OUTLINED_FUNCTION_1_175();

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_59();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v34, a18, a19, a20);
}

uint64_t sub_216C3E788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_5_108();
  OUTLINED_FUNCTION_49_26();

  v24 = OUTLINED_FUNCTION_8();
  sub_21677A510(v24, v25);
  (*(v23 + 8))(v21, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v20 + 176);
  sub_2167AD91C(v20 + 96);
  v26 = OUTLINED_FUNCTION_108();
  v27(v26);
  v37 = *(v20 + 728);
  OUTLINED_FUNCTION_3_135();
  OUTLINED_FUNCTION_1_175();

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_59();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, v37, a18, a19, a20);
}

uint64_t sub_216C3E8D8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v2 + 832) = v0;

  OUTLINED_FUNCTION_58_17();
  if (v0)
  {
    v8 = sub_216C3F71C;
  }

  else
  {
    v8 = sub_216C3E9E0;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_216C3E9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v55 = v16;
  v17 = *(*(v16 + 400) + 16);
  (v17)(*(v16 + 416), *(v16 + 424), *(v16 + 392));
  v18 = OUTLINED_FUNCTION_74_0();
  v17(v18);
  v19 = sub_217007C84();
  v20 = sub_21700EDA4();
  v21 = os_log_type_enabled(v19, v20);
  v23 = *(v16 + 408);
  v22 = *(v16 + 416);
  v25 = *(v16 + 392);
  v24 = *(v16 + 400);
  if (v21)
  {
    v53 = v20;
    v26 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v26 = 136446466;
    v27 = sub_217006DC4();
    v29 = v28;
    v30 = *(v24 + 8);
    v30(v22, v25);
    v31 = sub_2166A85FC(v27, v29, &v54);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2082;
    sub_217006DF4();
    v32 = sub_21700E594();
    v34 = v33;
    v30(v23, v25);
    v35 = sub_2166A85FC(v32, v34, &v54);

    *(v26 + 14) = v35;
    _os_log_impl(&dword_216679000, v19, v53, "Performing dialog action %{public}s with kind %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v30 = *(v24 + 8);
    v30(v23, v25);
    v30(v22, v25);
  }

  *(v16 + 840) = v30;
  v37 = *(v16 + 376);
  v36 = *(v16 + 384);
  v38 = *(v16 + 360);
  v39 = *(v16 + 368);
  sub_217006DF4();
  (*(v39 + 104))(v37, *MEMORY[0x277D2A928], v38);
  OUTLINED_FUNCTION_116();
  *(v16 + 873) = sub_217006DD4() & 1;
  v40 = *(v39 + 8);
  v40(v37, v38);
  v40(v36, v38);
  OUTLINED_FUNCTION_75_1();
  v41 = OUTLINED_FUNCTION_116();
  *(v16 + 848) = v42(v41);
  v43 = swift_task_alloc();
  *(v16 + 856) = v43;
  *v43 = v16;
  v43[1] = sub_216C3ED0C;
  v51 = *(v16 + 424);

  return MEMORY[0x282189CE0](v51, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_216C3ED0C()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 864) = v0;

  v5 = *(v2 + 656);
  v6 = *(v2 + 648);
  if (v0)
  {
    v7 = sub_216C3F84C;
  }

  else
  {
    v7 = sub_216C3EE5C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216C3F194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_46_26(*(v20 + 744));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  if (OUTLINED_FUNCTION_53_20())
  {
    if ((*(*(v20 + 464) + 88))(*(v20 + 472), *(v20 + 456)) == *MEMORY[0x277D2A8C8])
    {
      OUTLINED_FUNCTION_66_14();
      v21 = OUTLINED_FUNCTION_116();
      v22(v21);
      v23 = OUTLINED_FUNCTION_113_0();
      v24(v23);
      if (qword_280E2C1A8 != -1)
      {
        OUTLINED_FUNCTION_0_203();
      }

      v25 = sub_217007CA4();
      *(v20 + 816) = __swift_project_value_buffer(v25, qword_280E2C1B0);
      v26 = sub_217007C84();
      v27 = sub_21700EDA4();
      if (OUTLINED_FUNCTION_9_3(v27))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_31_43();
        _os_log_impl(v28, v29, v30, v31, v32, 2u);
        OUTLINED_FUNCTION_26_4();
      }

      v33 = swift_task_alloc();
      *(v20 + 824) = v33;
      type metadata accessor for PlayMusicItemActionImplementation();
      OUTLINED_FUNCTION_2_141();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_59_13();
      *v33 = v34;
      OUTLINED_FUNCTION_15_59();
      OUTLINED_FUNCTION_59();

      return sub_2169C6750();
    }

    OUTLINED_FUNCTION_6_94();

    v39 = OUTLINED_FUNCTION_74_0();
    sub_21677A510(v39, v40);

    v41 = OUTLINED_FUNCTION_119();
    v42(v41);
  }

  else
  {
    OUTLINED_FUNCTION_6_94();

    v37 = OUTLINED_FUNCTION_74_0();
    sub_21677A510(v37, v38);
  }

  OUTLINED_FUNCTION_3_135();
  OUTLINED_FUNCTION_1_175();

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_59();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_216C3F458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_46_26(*(v20 + 776));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  if (OUTLINED_FUNCTION_53_20())
  {
    if ((*(*(v20 + 464) + 88))(*(v20 + 472), *(v20 + 456)) == *MEMORY[0x277D2A8C8])
    {
      OUTLINED_FUNCTION_66_14();
      v21 = OUTLINED_FUNCTION_116();
      v22(v21);
      v23 = OUTLINED_FUNCTION_113_0();
      v24(v23);
      if (qword_280E2C1A8 != -1)
      {
        OUTLINED_FUNCTION_0_203();
      }

      v25 = sub_217007CA4();
      *(v20 + 816) = __swift_project_value_buffer(v25, qword_280E2C1B0);
      v26 = sub_217007C84();
      v27 = sub_21700EDA4();
      if (OUTLINED_FUNCTION_9_3(v27))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_31_43();
        _os_log_impl(v28, v29, v30, v31, v32, 2u);
        OUTLINED_FUNCTION_26_4();
      }

      v33 = swift_task_alloc();
      *(v20 + 824) = v33;
      type metadata accessor for PlayMusicItemActionImplementation();
      OUTLINED_FUNCTION_2_141();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_59_13();
      *v33 = v34;
      OUTLINED_FUNCTION_15_59();
      OUTLINED_FUNCTION_59();

      return sub_2169C6750();
    }

    OUTLINED_FUNCTION_6_94();

    v39 = OUTLINED_FUNCTION_74_0();
    sub_21677A510(v39, v40);

    v41 = OUTLINED_FUNCTION_119();
    v42(v41);
  }

  else
  {
    OUTLINED_FUNCTION_6_94();

    v37 = OUTLINED_FUNCTION_74_0();
    sub_21677A510(v37, v38);
  }

  OUTLINED_FUNCTION_3_135();
  OUTLINED_FUNCTION_1_175();

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_59();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_216C3F71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_5_108();

  v21 = OUTLINED_FUNCTION_8();
  sub_21677A510(v21, v22);
  v23 = OUTLINED_FUNCTION_108();
  v24(v23);

  v34 = *(v20 + 832);
  OUTLINED_FUNCTION_3_135();
  OUTLINED_FUNCTION_1_175();

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_59();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v34, a18, a19, a20);
}

uint64_t sub_216C3F84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_77_2();
  v36 = *(v20 + 840);
  OUTLINED_FUNCTION_5_108();
  v21 = *(v20 + 424);
  v22 = *(v20 + 392);

  v23 = OUTLINED_FUNCTION_8();
  sub_21677A510(v23, v24);
  v36(v21, v22);
  v25 = OUTLINED_FUNCTION_108();
  v26(v25);

  v37 = *(v20 + 864);
  OUTLINED_FUNCTION_3_135();
  OUTLINED_FUNCTION_1_175();

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_59();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, v37, a18, a19, a20);
}

uint64_t sub_216C3F9A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166F2728;

  return sub_216C3C8EC();
}

uint64_t sub_216C3FA6C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C3FAA8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C3FB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216C3FB6C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E2C1B0);
  __swift_project_value_buffer(v0, qword_280E2C1B0);
  return sub_217007C94();
}

uint64_t type metadata accessor for SocialFollowRequestsPageIntent()
{
  result = qword_27CAC6AF8;
  if (!qword_27CAC6AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_216C3FCA8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v15[0] = type metadata accessor for SocialFollowRequestsPageIntent();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2E28);
    v9 = sub_21700E594();
    v15[3] = MEMORY[0x277D837D0];
    v15[0] = v9;
    v15[1] = v10;
    v11 = a1;
    v12 = sub_2166F1E10(v15, a1);
    sub_2166F1F64(v12);
    sub_2168CC268(v2, v6);
    v13 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v11).super.isa;
      sub_2168CC340(v6);
    }

    sub_2166F1F64(isa);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216C3FEA8(uint64_t a1)
{
  result = sub_2166CE8AC(&qword_27CAC6B08, type metadata accessor for SocialFollowRequestsPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C3FF48(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE8AC(&qword_27CAC6B08, type metadata accessor for SocialFollowRequestsPageIntent);
  result = sub_2166CE8AC(&qword_27CAC6B10, type metadata accessor for SocialFollowRequestsPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216C3FFF4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v45 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v41 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  sub_21700D7A4();
  OUTLINED_FUNCTION_0_204();
  sub_21700CE04();
  v16 = *(v41 + 16);
  v39 = v4;
  v33[1] = v41 + 16;
  v34 = v16;
  v16(v8, v42, v4);
  v35 = v8;
  sub_21700D734();
  v40 = a1;
  sub_21700CE04();
  v17 = sub_21700CDB4();
  v19 = v18;
  v36 = *(v11 + 8);
  v37 = v11 + 8;
  v38 = v9;
  v36(v15, v9);
  if (v19)
  {
    v20 = type metadata accessor for SocialProfileHorizontalLockupSection();
    *&v43 = v17;
    *(&v43 + 1) = v19;
    sub_21700F364();
    sub_21700CE04();
    v21 = v34;
    v22 = v35;
    v23 = v42;
    v24 = v39;
    v34(v35, v42, v39);
    type metadata accessor for SocialProfileHorizontalLockup();
    sub_216C404C8(&qword_280E310D8, type metadata accessor for SocialProfileHorizontalLockup);
    *(v45 + *(v20 + 24)) = sub_21700E944();
    OUTLINED_FUNCTION_0_204();
    v25 = v40;
    sub_21700CE04();
    v21(v22, v23, v24);
    sub_216C40510();
    sub_21700D734();
    (*(v41 + 8))(v23, v24);
    result = (v36)(v25, v38);
    v27 = v44;
    v28 = v45 + *(v20 + 28);
    *v28 = v43;
    *(v28 + 16) = v27;
  }

  else
  {
    v29 = sub_21700E2E4();
    sub_216C404C8(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v31 = v30;
    v32 = type metadata accessor for SocialProfileHorizontalLockupSection();
    *v31 = 25705;
    v31[1] = 0xE200000000000000;
    v31[2] = v32;
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D22530], v29);
    swift_willThrow();
    (*(v41 + 8))(v42, v39);
    v36(v40, v38);
    return sub_2167B0250(v45);
  }

  return result;
}

uint64_t sub_216C404C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216C40510()
{
  result = qword_27CAC6B20;
  if (!qword_27CAC6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6B20);
  }

  return result;
}

uint64_t type metadata accessor for MusicNetFetcher()
{
  result = qword_280E472F0;
  if (!qword_280E472F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216C405D8()
{
  result = type metadata accessor for PrivacyDisclaimerAcknowledgement();
  if (v1 <= 0x3F)
  {
    result = sub_21700D9D4();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for IntentNetworkResponseReceiver();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_216C40680(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8);
  v2[4] = v3;
  OUTLINED_FUNCTION_36(v3);
  v2[5] = swift_task_alloc();
  v4 = sub_217007C24();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6B28);
  OUTLINED_FUNCTION_36(v5);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v2[11] = v6;
  OUTLINED_FUNCTION_36(v6);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for MusicURLRequest();
  v2[17] = v7;
  OUTLINED_FUNCTION_36(v7);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216C4087C, 0, 0);
}

uint64_t sub_216C4087C()
{
  v69 = v0;
  v2 = **(v0 + 24);
  v3 = v2;
  if (sub_21669DAC4())
  {
    if (qword_280E47310 != -1)
    {
      OUTLINED_FUNCTION_0_205();
    }

    v4 = *(v0 + 176);
    v5 = *(v0 + 16);
    v6 = sub_217007CA4();
    *(v0 + 184) = __swift_project_value_buffer(v6, qword_280E47318);
    sub_216C42F20(v5, v4);
    v7 = sub_217007C84();
    v8 = sub_21700EDA4();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 176);
    if (v9)
    {
      v11 = *(v0 + 136);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v68 = v13;
      *v12 = 136446210;
      v14 = [*(v10 + *(v11 + 20)) URL];
      if (v14)
      {
        v15 = v14;
        sub_217005E64();

        v16 = 0;
      }

      else
      {
        v16 = 1;
      }

      v32 = *(v0 + 176);
      v33 = *(v0 + 128);
      v34 = sub_217005EF4();
      __swift_storeEnumTagSinglePayload(v33, v16, 1, v34);
      v35 = sub_21700E594();
      v37 = v36;
      sub_216C42F84(v32);
      v38 = sub_2166A85FC(v35, v37, &v68);

      *(v12 + 4) = v38;
      _os_log_impl(&dword_216679000, v7, v8, "Deferring request with URL %{public}s awaiting disclaimer acknowledgement...", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_56_1();
    }

    else
    {

      sub_216C42F84(v10);
    }

    v39 = swift_task_alloc();
    *(v0 + 192) = v39;
    *v39 = v0;
    v39[1] = sub_216C40D38;
    OUTLINED_FUNCTION_120();

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_10_77();
    if (v17)
    {
      v18 = 0;
      v2 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_8_91();
      if (v2)
      {
        v18 = *v19;
        v20 = qword_280E47310;
        swift_bridgeObjectRetain_n();
        if (v20 != -1)
        {
          OUTLINED_FUNCTION_0_205();
          v3 = *(v0 + 16);
        }

        v21 = *(v0 + 160);
        v22 = sub_217007CA4();
        __swift_project_value_buffer(v22, qword_280E47318);
        sub_216C42F20(v3, v21);
        sub_21700DF14();
        v23 = sub_217007C84();
        v24 = sub_21700EDA4();

        v25 = os_log_type_enabled(v23, v24);
        v26 = *(v0 + 160);
        if (v25)
        {
          v27 = *(v0 + 136);
          v28 = OUTLINED_FUNCTION_115_0();
          v68 = OUTLINED_FUNCTION_114();
          *v28 = 136446466;
          v29 = [*(v26 + *(v27 + 20)) URL];
          if (v29)
          {
            v30 = v29;
            sub_217005E64();

            v31 = 0;
          }

          else
          {
            v31 = 1;
          }

          OUTLINED_FUNCTION_18_50();
          v42 = OUTLINED_FUNCTION_13_67();
          OUTLINED_FUNCTION_23_42(v42, v31, v43, v44);
          v45 = sub_21700E594();
          v47 = v46;
          sub_216C42F84(v1);
          sub_2166A85FC(v45, v47, &v68);

          *(v28 + 14) = OUTLINED_FUNCTION_7_89(v48, v49);
          OUTLINED_FUNCTION_22_46(&dword_216679000, v50, v51, "Request collected: %{public}s for %{public}s");
          OUTLINED_FUNCTION_21_50();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_56_1();
        }

        else
        {

          sub_216C42F84(v26);
        }

        if (qword_280E485C8 != -1)
        {
          OUTLINED_FUNCTION_9_10();
        }

        OUTLINED_FUNCTION_9_82();
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0);
        __swift_project_value_buffer(v52, qword_280E73E38);
        v53 = OUTLINED_FUNCTION_14_62();
        v55 = v54(v53);
        OUTLINED_FUNCTION_20_51(v55, "Fetch.RequestNetworkResource");
        OUTLINED_FUNCTION_12_67();
        v56 = type metadata accessor for MusicNetFetcher();
        OUTLINED_FUNCTION_4_115(v56, v57, v58, v59, v60, v61, v62, v63, v67, v18);
      }

      else
      {
        v18 = 0;
      }
    }

    *(v0 + 200) = v18;
    *(v0 + 208) = v2;
    v64 = swift_task_alloc();
    *(v0 + 216) = v64;
    *v64 = v0;
    OUTLINED_FUNCTION_1_176(v64);
    OUTLINED_FUNCTION_120();

    return sub_216C41A60(v65);
  }
}

uint64_t sub_216C40D38()
{
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_216C40E2C, 0, 0);
}

uint64_t sub_216C40E2C()
{
  v62 = v0;
  sub_216C42F20(v0[2], v0[21]);
  v2 = sub_217007C84();
  v3 = sub_21700EDA4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[21];
  if (v4)
  {
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v61 = v8;
    *v7 = 136446210;
    v9 = [*(v5 + *(v6 + 20)) URL];
    if (v9)
    {
      v10 = v9;
      sub_217005E64();

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = v0[21];
    v13 = v0[15];
    v1 = v0[11];
    v14 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(v13, v11, 1, v14);
    v15 = sub_21700E594();
    v17 = v16;
    sub_216C42F84(v12);
    v18 = sub_2166A85FC(v15, v17, &v61);

    *(v7 + 4) = v18;
    _os_log_impl(&dword_216679000, v2, v3, "Disclaimer acknowledged, fetching %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    sub_216C42F84(v5);
  }

  OUTLINED_FUNCTION_10_77();
  if (v19)
  {
    v20 = 0;
    v3 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_91();
    if (v3)
    {
      v20 = *v21;
      v22 = qword_280E47310;
      swift_bridgeObjectRetain_n();
      if (v22 != -1)
      {
        OUTLINED_FUNCTION_0_205();
        v2 = v0[2];
      }

      v23 = v0[20];
      v24 = sub_217007CA4();
      __swift_project_value_buffer(v24, qword_280E47318);
      sub_216C42F20(v2, v23);
      sub_21700DF14();
      v25 = sub_217007C84();
      v26 = sub_21700EDA4();

      v27 = os_log_type_enabled(v25, v26);
      v28 = v0[20];
      if (v27)
      {
        v29 = v0[17];
        v30 = OUTLINED_FUNCTION_115_0();
        v61 = OUTLINED_FUNCTION_114();
        *v30 = 136446466;
        v31 = [*(v28 + *(v29 + 20)) URL];
        if (v31)
        {
          v32 = v31;
          sub_217005E64();

          v33 = 0;
        }

        else
        {
          v33 = 1;
        }

        OUTLINED_FUNCTION_18_50();
        v34 = OUTLINED_FUNCTION_13_67();
        OUTLINED_FUNCTION_23_42(v34, v33, v35, v36);
        v37 = sub_21700E594();
        v39 = v38;
        sub_216C42F84(v1);
        sub_2166A85FC(v37, v39, &v61);

        *(v30 + 14) = OUTLINED_FUNCTION_7_89(v40, v41);
        OUTLINED_FUNCTION_22_46(&dword_216679000, v42, v43, "Request collected: %{public}s for %{public}s");
        OUTLINED_FUNCTION_21_50();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_56_1();
      }

      else
      {

        sub_216C42F84(v28);
      }

      if (qword_280E485C8 != -1)
      {
        OUTLINED_FUNCTION_9_10();
      }

      OUTLINED_FUNCTION_9_82();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0);
      __swift_project_value_buffer(v44, qword_280E73E38);
      v45 = OUTLINED_FUNCTION_14_62();
      v47 = v46(v45);
      OUTLINED_FUNCTION_20_51(v47, "Fetch.RequestNetworkResource");
      OUTLINED_FUNCTION_12_67();
      v48 = type metadata accessor for MusicNetFetcher();
      OUTLINED_FUNCTION_4_115(v48, v49, v50, v51, v52, v53, v54, v55, v60, v20);
    }

    else
    {
      v20 = 0;
    }
  }

  v0[25] = v20;
  v0[26] = v3;
  v56 = swift_task_alloc();
  v0[27] = v56;
  *v56 = v0;
  OUTLINED_FUNCTION_1_176(v56);
  OUTLINED_FUNCTION_120();

  return sub_216C41A60(v57);
}

uint64_t sub_216C41220(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_216C41700;
  }

  else
  {
    v4 = sub_216C41334;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_216C41334()
{
  v40 = v0;
  v1 = v0[26];
  if (v1)
  {
    if (!OUTLINED_FUNCTION_19_44())
    {
      v2 = v0[5];
      v3 = OUTLINED_FUNCTION_7_4();
      sub_216681B64(v3, v4, &qword_27CAB82E8);
      sub_216BD4F2C();
      sub_21669987C(v2, &qword_27CAB82E8);
    }

    if (qword_280E47310 != -1)
    {
      OUTLINED_FUNCTION_0_205();
    }

    v5 = v0[19];
    v6 = v0[2];
    v7 = sub_217007CA4();
    __swift_project_value_buffer(v7, qword_280E47318);
    sub_216C42F20(v6, v5);
    sub_21700DF14();
    v8 = sub_217007C84();
    v9 = sub_21700EDA4();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[19];
    if (v10)
    {
      v12 = v0[17];
      v13 = OUTLINED_FUNCTION_115_0();
      v39 = OUTLINED_FUNCTION_114();
      *v13 = 136446466;
      v14 = [*(v11 + *(v12 + 20)) URL];
      if (v14)
      {
        v15 = v14;
        sub_217005E64();

        v16 = 0;
      }

      else
      {
        v16 = 1;
      }

      v17 = v0[25];
      v18 = v0[19];
      sub_217005EF4();
      v19 = OUTLINED_FUNCTION_13_67();
      OUTLINED_FUNCTION_23_42(v19, v16, v20, v21);
      v22 = sub_21700E594();
      v24 = v23;
      sub_216C42F84(v18);
      v25 = sub_2166A85FC(v22, v24, &v39);

      *(v13 + 4) = v25;
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_2166A85FC(v17, v1, &v39);
      OUTLINED_FUNCTION_17_57(&dword_216679000, v26, v27, "Response collected: %{public}s for %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      sub_216C42F84(v11);
    }

    v28 = v0[28];
    v29 = v0[25];
    v30 = v0[2];
    type metadata accessor for MusicNetFetcher();
    sub_216E472BC(v28, v30, v29, v1);
  }

  v31 = v0[2];
  if (*(v31 + *(v0[17] + 28)) == 1)
  {
    v32 = [v0[28] data];
    v33 = sub_217005FB4();
    v35 = v34;

    sub_216C41FAC(v31);
    sub_21677A524(v33, v35);
  }

  sub_21669987C(v0[10], &qword_27CAC6B28);

  v36 = v0[1];
  v37 = v0[28];

  return v36(v37);
}

uint64_t sub_216C41700()
{
  v34 = v0;
  v1 = v0[26];
  if (v1)
  {
    if (!OUTLINED_FUNCTION_19_44())
    {
      v2 = v0[5];
      v3 = OUTLINED_FUNCTION_7_4();
      sub_216681B64(v3, v4, &qword_27CAB82E8);
      sub_216BD4F2C();
      sub_21669987C(v2, &qword_27CAB82E8);
    }

    if (qword_280E47310 != -1)
    {
      OUTLINED_FUNCTION_0_205();
    }

    v5 = v0[18];
    v6 = v0[2];
    v7 = sub_217007CA4();
    __swift_project_value_buffer(v7, qword_280E47318);
    sub_216C42F20(v6, v5);
    sub_21700DF14();
    v8 = sub_217007C84();
    v9 = sub_21700ED84();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[18];
    if (v10)
    {
      v12 = v0[17];
      v13 = OUTLINED_FUNCTION_115_0();
      v33[0] = OUTLINED_FUNCTION_114();
      *v13 = 136446466;
      v14 = [*(v11 + *(v12 + 20)) URL];
      if (v14)
      {
        v15 = v14;
        sub_217005E64();

        v16 = 0;
      }

      else
      {
        v16 = 1;
      }

      v17 = v0[25];
      v18 = v0[18];
      sub_217005EF4();
      v19 = OUTLINED_FUNCTION_13_67();
      OUTLINED_FUNCTION_23_42(v19, v16, v20, v21);
      v22 = sub_21700E594();
      v24 = v23;
      sub_216C42F84(v18);
      v25 = sub_2166A85FC(v22, v24, v33);

      *(v13 + 4) = v25;
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_2166A85FC(v17, v1, v33);
      OUTLINED_FUNCTION_17_57(&dword_216679000, v26, v27, "Request failed: %{public}s for %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      sub_216C42F84(v11);
    }

    v28 = v0[25];
    v29 = v0[2];
    type metadata accessor for MusicNetFetcher();
    sub_216E46F24(v29, v28, v1);
  }

  v30 = v0[10];
  swift_willThrow();
  sub_21669987C(v30, &qword_27CAC6B28);

  v31 = v0[1];

  return v31();
}

uint64_t sub_216C41A60(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21700E574();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6F8);
  v2[7] = swift_task_alloc();
  v4 = sub_21700D0C4();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216C41BB4, 0, 0);
}

uint64_t sub_216C41BB4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[2];
  v4 = type metadata accessor for MusicURLRequest();
  sub_216681B64(v3 + *(v4 + 32), v2, &qword_27CABF6F8);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_21669987C(v0[7], &qword_27CABF6F8);
LABEL_6:
    v11 = v0[2];
    type metadata accessor for MusicNetFetcher();
    v12 = *(v11 + *(v4 + 20));
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = sub_216C41E48;

    return MEMORY[0x28217F990](v12);
  }

  (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
  sub_21700D044();
  if (!v5 || (v7 = v0[5], v6 = v0[6], v8 = v0[4], sub_21700E564(), sub_21700E524(), v10 = v9, , (*(v7 + 8))(v6, v8), v10 >> 60 == 15))
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    goto LABEL_6;
  }

  v15 = v0[9];
  v14 = v0[10];
  v16 = v0[8];
  v17 = [objc_allocWithZone(MEMORY[0x277CEE6E8]) init];
  OUTLINED_FUNCTION_7_4();
  v18 = sub_217005F94();
  [v17 setData_];
  v19 = OUTLINED_FUNCTION_7_4();
  sub_21677A510(v19, v20);

  (*(v15 + 8))(v14, v16);

  v21 = v0[1];

  return v21(v17);
}

uint64_t sub_216C41E48(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_28();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

void sub_216C41FAC(uint64_t a1)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_217005F94();
  v23[0] = 0;
  v4 = [v2 JSONObjectWithData:v3 options:0 error:v23];

  v5 = v23[0];
  if (v4)
  {
    sub_21700F1E4();
    swift_unknownObjectRelease();
    if (*(a1 + *(type metadata accessor for MusicURLRequest() + 24)) == 1)
    {
      sub_216C423B0(v24);
    }

    sub_2166A6DF8(v24, v23);
    v6 = objc_allocWithZone(MEMORY[0x277CD6060]);
    v7 = sub_216C42EB4(v23);
    v8 = [objc_opt_self() sharedServerObjectDatabase];
    v23[0] = 0;
    v9 = [v8 importObjectsFromRequest:v7 options:0 error:v23];

    if (v9)
    {
      v10 = v23[0];

      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      return;
    }

    v13 = v23[0];
    v12 = sub_217005D34();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    v11 = v5;
    v12 = sub_217005D34();

    swift_willThrow();
  }

  if (qword_280E47310 != -1)
  {
    swift_once();
  }

  v14 = sub_217007CA4();
  __swift_project_value_buffer(v14, qword_280E47318);
  v15 = v12;
  v16 = sub_217007C84();
  v17 = sub_21700ED84();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 136446210;
    swift_getErrorValue();
    v20 = sub_21700F884();
    v22 = sub_2166A85FC(v20, v21, v24);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_216679000, v16, v17, "Failed to import JSON payload for MAPI resources %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x21CEA1440](v19, -1, -1);
    MEMORY[0x21CEA1440](v18, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_216C422D8()
{
  type metadata accessor for MusicNetFetcher();
  sub_21700D9D4();
  return sub_21700CE34();
}

uint64_t sub_216C4232C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E47318);
  __swift_project_value_buffer(v0, qword_280E47318);
  return sub_217007C94();
}

uint64_t sub_216C423B0(void *a1)
{
  sub_2166A6DF8(a1, v43);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6B30);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v4 = v44;
  *&v42[0] = 1635017060;
  *(&v42[0] + 1) = 0xE400000000000000;
  sub_21700F364();
  sub_216934FBC();
  sub_216788110(v43);
  if (!*(&v45 + 1))
  {
LABEL_51:
    sub_21669987C(&v44, &unk_27CABF7A0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6B38);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v5 = *&v42[0];
  v41 = *(*&v42[0] + 16);
  if (!v41)
  {
    goto LABEL_49;
  }

  strcpy(v42, "resources");
  WORD5(v42[0]) = 0;
  HIDWORD(v42[0]) = -385875968;
  sub_21700F364();
  sub_216934FBC();
  sub_216788110(v43);
  if (!*(&v45 + 1))
  {

    goto LABEL_51;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_49:
  }

  v6 = *&v42[0];
  strcpy(v42, "playlists");
  WORD5(v42[0]) = 0;
  HIDWORD(v42[0]) = -385875968;
  sub_21700F364();
  sub_216934FBC();
  sub_216788110(v43);
  if (!*(&v45 + 1))
  {

    sub_21669987C(&v44, &unk_27CABF7A0);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

    goto LABEL_49;
  }

  v35 = v6;
  v36 = 0;
  v7 = 0;
  v38 = *&v42[0];
  v8 = v5 + 32;
  v9 = MEMORY[0x277D837D0];
  v39 = v5 + 32;
  v40 = v5;
LABEL_10:
  v10 = v7;
  do
  {
    if (v10 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v11 = *(v8 + 8 * v10);
    *&v42[0] = 1701869940;
    *(&v42[0] + 1) = 0xE400000000000000;
    sub_21700DF14();
    v12 = v9;
    sub_21700F364();
    if (!*(v11 + 16) || (v13 = sub_216E68120(v43), (v14 & 1) == 0))
    {

      result = sub_216788110(v43);
      goto LABEL_25;
    }

    sub_2166A6DF8(*(v11 + 56) + 32 * v13, &v44);
    sub_216788110(v43);
    if (swift_dynamicCast())
    {
      v15 = v42[0];
      *&v42[0] = 25705;
      *(&v42[0] + 1) = 0xE200000000000000;
      sub_21700F364();
      if (*(v11 + 16) && (v16 = sub_216E68120(v43), (v17 & 1) != 0))
      {
        sub_2166A6DF8(*(v11 + 56) + 32 * v16, &v44);
        sub_216788110(v43);

        if (swift_dynamicCast())
        {
          v18 = *(&v42[0] + 1);
          v34 = *&v42[0];
          if (v15 == 0x7473696C79616C70 && *(&v15 + 1) == 0xE900000000000073)
          {
          }

          else
          {
            v20 = sub_21700F7D4();

            if ((v20 & 1) == 0)
            {

              v8 = v39;
LABEL_25:
              v9 = v12;
              goto LABEL_26;
            }
          }

          *&v42[0] = v34;
          *(&v42[0] + 1) = v18;
          sub_21700DF14();
          sub_21700F364();
          v8 = v39;
          if (*(v38 + 16) && (v21 = sub_216E68120(v43), (v22 & 1) != 0))
          {
            sub_2166A6DF8(*(v38 + 56) + 32 * v21, &v44);
            sub_216788110(v43);
            if (swift_dynamicCast())
            {
              v23 = *&v42[0];
              strcpy(v42, "relationships");
              HIWORD(v42[0]) = -4864;
              sub_21700F364();
              if (*(v23 + 16) && (v33 = v23, v24 = sub_216E68120(v43), (v25 & 1) != 0))
              {
                sub_2166A6DF8(*(v23 + 56) + 32 * v24, &v44);
                sub_216788110(v43);
                v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6B40);
                if (swift_dynamicCast())
                {
                  v37 = v18;
                  v26 = *&v42[0];
                  *&v44 = 0x736B63617274;
                  *(&v44 + 1) = 0xE600000000000000;
                  sub_21700F364();
                  v27 = sub_216E68120(v43);
                  if (v28)
                  {
                    v29 = v27;
                    swift_isUniquelyReferenced_nonNull_native();
                    *&v42[0] = v26;
                    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC6B48);
                    sub_21700F554();
                    v26 = *&v42[0];
                    sub_216788110(*(*&v42[0] + 48) + 40 * v29);
                    v30 = (*(v26 + 56) + 32 * v29);
                    v31 = v30[1];
                    v44 = *v30;
                    v45 = v31;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF7A0);
                    sub_21700F574();
                  }

                  else
                  {
                    v44 = 0uLL;
                    *&v45 = 0;
                    *(&v45 + 1) = 1;
                  }

                  v7 = v10 + 1;
                  sub_216788110(v43);
                  sub_21669987C(&v44, &qword_27CABEAD0);
                  strcpy(&v44, "relationships");
                  HIWORD(v44) = -4864;
                  v9 = v12;
                  sub_21700F364();
                  *(&v45 + 1) = v32;
                  *&v44 = v26;
                  sub_2166EF9C4(&v44, v42);
                  swift_isUniquelyReferenced_nonNull_native();
                  sub_216939F54(v42, v43);
                  sub_216788110(v43);
                  *&v44 = v34;
                  *(&v44 + 1) = v37;
                  sub_21700F364();
                  *(&v45 + 1) = v2;
                  *&v44 = v33;
                  sub_2166EF9C4(&v44, v42);
                  swift_isUniquelyReferenced_nonNull_native();
                  sub_216939F54(v42, v43);
                  result = sub_216788110(v43);
                  v36 = 1;
                  v8 = v39;
                  v5 = v40;
                  if (v41 - 1 == v10)
                  {

LABEL_57:
                    __swift_destroy_boxed_opaque_existential_1Tm(a1);
                    *&v44 = 0x7473696C79616C70;
                    *(&v44 + 1) = 0xE900000000000073;
                    sub_21700F364();
                    *(&v45 + 1) = v2;
                    *&v44 = v38;
                    sub_2166EF9C4(&v44, v42);
                    sub_21700DF14();
                    swift_isUniquelyReferenced_nonNull_native();
                    sub_216939F54(v42, v43);
                    sub_216788110(v43);
                    *&v44 = 0x656372756F736572;
                    *(&v44 + 1) = 0xE900000000000073;
                    sub_21700F364();
                    *(&v45 + 1) = v2;
                    *&v44 = v35;
                    sub_2166EF9C4(&v44, v42);

                    swift_isUniquelyReferenced_nonNull_native();
                    sub_216939F54(v42, v43);
                    sub_216788110(v43);
                    a1[3] = v2;
                    *a1 = v4;
                  }

                  goto LABEL_10;
                }
              }

              else
              {
                sub_216788110(v43);
              }
            }
          }

          else
          {
            sub_216788110(v43);
          }

          goto LABEL_25;
        }
      }

      else
      {

        result = sub_216788110(v43);
      }

      v8 = v39;
      goto LABEL_25;
    }

LABEL_26:
    ++v10;
    v5 = v40;
  }

  while (v41 != v10);

  if (v36)
  {
    goto LABEL_57;
  }
}

uint64_t sub_216C42D10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_216C42DA8;

  return sub_216C40680(a2);
}

uint64_t sub_216C42DA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_28();
  *v6 = v5;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v5 + 8);

  return v7();
}

id sub_216C42EB4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithPayload_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_216C42F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicURLRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C42F84(uint64_t a1)
{
  v2 = type metadata accessor for MusicURLRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216C42FE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6B28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C43050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v11 = type metadata accessor for AppDestinationSheetPageView();
  (*(*(a4 - 8) + 32))(a5 + *(v11 + 36), a2, a4);
  v12 = a5 + *(v11 + 40);

  return sub_216B46938(a3, v12);
}

uint64_t sub_216C43168()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MusicAppDestinationContext(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_216C43220(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v4 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = *(v11 + 80);
  if (v12)
  {
    v18 = *(*(v10 - 8) + 64);
  }

  else
  {
    v18 = *(*(v10 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v10;
  v20 = *(v5 + 64) + v15;
  v21 = v17 | 7;
  v22 = v17 + 40;
  v23 = a1;
  if (a2 <= v14)
  {
    goto LABEL_36;
  }

  v24 = v18 + (v22 & ~v17) + ((v21 + v16 + (v20 & ~v15)) & ~v21);
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_18;
  }

  v28 = ((a2 - v14 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_36;
      }

LABEL_18:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_36;
      }

LABEL_26:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v30 = v24;
        }

        else
        {
          v30 = 4;
        }

        switch(v30)
        {
          case 2:
            v31 = *a1;
            break;
          case 3:
            v31 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v31 = *a1;
            break;
          default:
            v31 = *a1;
            break;
        }
      }

      else
      {
        v31 = 0;
      }

      return v14 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_26;
    }
  }

LABEL_36:
  if (v6 == v14)
  {
    v32 = v6;
    v33 = AssociatedTypeWitness;
LABEL_40:

    return __swift_getEnumTagSinglePayload(v23, v32, v33);
  }

  v23 = (a1 + v20) & ~v15;
  if (v8 == v14)
  {
    v32 = v8;
    v33 = v4;
    goto LABEL_40;
  }

  if (v13 > 0x7FFFFFFE)
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v22 + ((v23 + v16 + v21) & ~v21)) & ~v17, v12, v19);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v34 = *(((v23 + v16 + v21) & ~v21) + 0x18);
    if (v34 >= 0xFFFFFFFF)
    {
      LODWORD(v34) = -1;
    }

    if ((v34 + 1) >= 2)
    {
      return v34;
    }

    else
    {
      return 0;
    }
  }
}

void sub_216C43578(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v5 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_217005EF4();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80);
  v19 = *(v6 + 64) + v18;
  v20 = *(v8 + 64);
  v21 = *(v13 + 80);
  v22 = v21 | 7;
  v23 = v21 + 40;
  v24 = (v21 + 40) & ~v21;
  if (v14)
  {
    v25 = *(*(v11 - 8) + 64);
  }

  else
  {
    v25 = *(*(v11 - 8) + 64) + 1;
  }

  v26 = v24 + v25;
  v27 = (((v21 | 7) + v20 + (v19 & ~v18)) & ~(v21 | 7)) + v24 + v25;
  v28 = 8 * v27;
  if (a3 > v17)
  {
    if (v27 <= 3)
    {
      v29 = ((a3 - v17 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v29))
      {
        v12 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v12 = v30;
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

  if (v17 < a2)
  {
    v31 = ~v17 + a2;
    if (v27 < 4)
    {
      v32 = (v31 >> v28) + 1;
      if (v27)
      {
        v37 = v31 & ~(-1 << v28);
        bzero(a1, v27);
        if (v27 == 3)
        {
          *a1 = v37;
          a1[2] = BYTE2(v37);
        }

        else if (v27 == 2)
        {
          *a1 = v37;
        }

        else
        {
          *a1 = v31;
        }
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v31;
      v32 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v27] = v32;
        break;
      case 2:
        *&a1[v27] = v32;
        break;
      case 3:
        goto LABEL_81;
      case 4:
        *&a1[v27] = v32;
        break;
      default:
        return;
    }

    return;
  }

  v33 = ~v18;
  v34 = ~v22;
  v35 = ~v21;
  v36 = a1;
  switch(v12)
  {
    case 1:
      a1[v27] = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 2:
      *&a1[v27] = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 3:
LABEL_81:
      __break(1u);
      return;
    case 4:
      *&a1[v27] = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v7 == v17)
      {
        v38 = a2;
        v14 = v7;
        v11 = AssociatedTypeWitness;
LABEL_42:

        __swift_storeEnumTagSinglePayload(v36, v38, v14, v11);
        return;
      }

      v36 = &a1[v19] & v33;
      if (v9 == v17)
      {
        v38 = a2;
        v14 = v9;
        v11 = v5;
        goto LABEL_42;
      }

      v39 = ((v36 + v20 + v22) & v34);
      if (v16 >= a2)
      {
        if (v15 <= 0x7FFFFFFE)
        {
          if (a2 > 0x7FFFFFFE)
          {
            *(((v36 + v20 + v22) & v34) + 0x20) = 0;
            *v39 = 0u;
            *(((v36 + v20 + v22) & v34) + 0x10) = 0u;
            *v39 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(((v36 + v20 + v22) & v34) + 0x18) = a2;
          }

          return;
        }

        v39 = (&v39[v23] & v35);
        if (v15 >= a2)
        {
          v38 = a2 + 1;
          v36 = v39;
          goto LABEL_42;
        }

        if (v25 <= 3)
        {
          v43 = ~(-1 << (8 * v25));
        }

        else
        {
          v43 = -1;
        }

        if (v25)
        {
          v41 = v43 & (~v15 + a2);
          if (v25 <= 3)
          {
            v44 = v25;
          }

          else
          {
            v44 = 4;
          }

          bzero(v39, v25);
          switch(v44)
          {
            case 2:
LABEL_76:
              *v39 = v41;
              break;
            case 3:
LABEL_79:
              *v39 = v41;
              v39[2] = BYTE2(v41);
              break;
            case 4:
LABEL_80:
              *v39 = v41;
              break;
            default:
LABEL_56:
              *v39 = v41;
              break;
          }
        }
      }

      else
      {
        if (v26 <= 3)
        {
          v40 = ~(-1 << (8 * v26));
        }

        else
        {
          v40 = -1;
        }

        if (v26)
        {
          v41 = v40 & (~v16 + a2);
          if (v26 <= 3)
          {
            v42 = v26;
          }

          else
          {
            v42 = 4;
          }

          bzero(((v36 + v20 + v22) & v34), v26);
          switch(v42)
          {
            case 2:
              goto LABEL_76;
            case 3:
              goto LABEL_79;
            case 4:
              goto LABEL_80;
            default:
              goto LABEL_56;
          }
        }
      }

      return;
  }
}

uint64_t sub_216C43AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = OUTLINED_FUNCTION_4_90();
  OUTLINED_FUNCTION_1();
  v57 = v7;
  MEMORY[0x28223BE20](v8);
  v56 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v48 - v11;
  v12 = type metadata accessor for MusicAppDestinationContext(0);
  MEMORY[0x28223BE20](v12 - 8);
  v53 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = OUTLINED_FUNCTION_4_90();
  OUTLINED_FUNCTION_1();
  v49 = v14;
  MEMORY[0x28223BE20](v15);
  v50 = &v48 - v16;
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AppSheetDestinationViewControllerRepresentable();
  OUTLINED_FUNCTION_1();
  v54 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v52 = &v48 - v26;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v59 = v28;
  v60 = v27;
  v29 = MEMORY[0x28223BE20](v27);
  v58 = &v48 - v30;
  v31 = a1;
  v32 = *(a1 + 36);
  if ((*(v4 + 152))(v5, v4, v29))
  {
    (*(v48 + 16))(v19, v2 + v32, v5);
    v33 = v50;
    (*(v49 + 16))(v50, v2, v51);
    v34 = v53;
    sub_216B479C0(v2 + *(v31 + 40), v53);
    sub_216C4406C(v19, v33, v34, v5, v24);
    OUTLINED_FUNCTION_0_206();
    swift_getWitnessTable();
    v35 = v52;
    v36 = OUTLINED_FUNCTION_39();
    sub_2166C24DC(v36, v37);
    v38 = *(v54 + 8);
    v39 = OUTLINED_FUNCTION_39();
    v38(v39);
    sub_2166C24DC(v35, v20);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v41 = v58;
    OUTLINED_FUNCTION_39();
    sub_2166C2718();
    v42 = OUTLINED_FUNCTION_39();
    v38(v42);
    (v38)(v35, v20);
  }

  else
  {
    v43 = v56;
    (*(v4 + 112))(v2, v5, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v44 = v55;
    sub_2166C24DC(v43, v6);
    v45 = *(v57 + 8);
    v45(v43, v6);
    sub_2166C24DC(v44, v6);
    OUTLINED_FUNCTION_0_206();
    swift_getWitnessTable();
    v41 = v58;
    OUTLINED_FUNCTION_39();
    sub_2166C2CB0();
    v45(v43, v6);
    v45(v44, v6);
  }

  WitnessTable = swift_getWitnessTable();
  v63 = AssociatedConformanceWitness;
  OUTLINED_FUNCTION_6_1();
  v46 = v60;
  swift_getWitnessTable();
  sub_2166C24DC(v41, v46);
  return (*(v59 + 8))(v41, v46);
}

uint64_t sub_216C4406C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for AppSheetDestinationViewControllerRepresentable();
  v9 = *(v8 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5 + v9, a2, AssociatedTypeWitness);
  v11 = a5 + *(v8 + 40);

  return sub_216B46938(a3, v11);
}

uint64_t sub_216C4418C()
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      AssociatedTypeWitness = type metadata accessor for MusicAppDestinationContext(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_216C44250(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = *(v11 + 80);
  if (v12)
  {
    v18 = *(*(v10 - 8) + 64);
  }

  else
  {
    v18 = *(*(v10 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v10;
  v20 = *(v5 + 64) + v15;
  v21 = v17 | 7;
  v22 = v17 + 40;
  v23 = a1;
  if (a2 <= v14)
  {
    goto LABEL_36;
  }

  v24 = v18 + (v22 & ~v17) + ((v21 + v16 + (v20 & ~v15)) & ~v21);
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_18;
  }

  v28 = ((a2 - v14 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_36;
      }

LABEL_18:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_36;
      }

LABEL_26:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v30 = v24;
        }

        else
        {
          v30 = 4;
        }

        switch(v30)
        {
          case 2:
            v31 = *a1;
            break;
          case 3:
            v31 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v31 = *a1;
            break;
          default:
            v31 = *a1;
            break;
        }
      }

      else
      {
        v31 = 0;
      }

      return v14 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_26;
    }
  }

LABEL_36:
  if (v6 == v14)
  {
    v32 = v6;
    v33 = v4;
LABEL_40:

    return __swift_getEnumTagSinglePayload(v23, v32, v33);
  }

  v23 = (a1 + v20) & ~v15;
  if (v8 == v14)
  {
    v32 = v8;
    v33 = AssociatedTypeWitness;
    goto LABEL_40;
  }

  if (v13 > 0x7FFFFFFE)
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v22 + ((v23 + v16 + v21) & ~v21)) & ~v17, v12, v19);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v34 = *(((v23 + v16 + v21) & ~v21) + 0x18);
    if (v34 >= 0xFFFFFFFF)
    {
      LODWORD(v34) = -1;
    }

    if ((v34 + 1) >= 2)
    {
      return v34;
    }

    else
    {
      return 0;
    }
  }
}

void sub_216C445A8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_217005EF4();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80);
  v19 = *(v6 + 64) + v18;
  v20 = *(v8 + 64);
  v21 = *(v13 + 80);
  v22 = v21 | 7;
  v23 = v21 + 40;
  v24 = (v21 + 40) & ~v21;
  if (v14)
  {
    v25 = *(*(v11 - 8) + 64);
  }

  else
  {
    v25 = *(*(v11 - 8) + 64) + 1;
  }

  v26 = v24 + v25;
  v27 = (((v21 | 7) + v20 + (v19 & ~v18)) & ~(v21 | 7)) + v24 + v25;
  v28 = 8 * v27;
  if (a3 > v17)
  {
    if (v27 <= 3)
    {
      v29 = ((a3 - v17 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v29))
      {
        v12 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v12 = v30;
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

  if (v17 < a2)
  {
    v31 = ~v17 + a2;
    if (v27 < 4)
    {
      v32 = (v31 >> v28) + 1;
      if (v27)
      {
        v37 = v31 & ~(-1 << v28);
        bzero(a1, v27);
        if (v27 == 3)
        {
          *a1 = v37;
          a1[2] = BYTE2(v37);
        }

        else if (v27 == 2)
        {
          *a1 = v37;
        }

        else
        {
          *a1 = v31;
        }
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v31;
      v32 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v27] = v32;
        break;
      case 2:
        *&a1[v27] = v32;
        break;
      case 3:
        goto LABEL_81;
      case 4:
        *&a1[v27] = v32;
        break;
      default:
        return;
    }

    return;
  }

  v33 = ~v18;
  v34 = ~v22;
  v35 = ~v21;
  v36 = a1;
  switch(v12)
  {
    case 1:
      a1[v27] = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 2:
      *&a1[v27] = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 3:
LABEL_81:
      __break(1u);
      return;
    case 4:
      *&a1[v27] = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v7 == v17)
      {
        v38 = a2;
        v14 = v7;
        v11 = v5;
LABEL_42:

        __swift_storeEnumTagSinglePayload(v36, v38, v14, v11);
        return;
      }

      v36 = &a1[v19] & v33;
      if (v9 == v17)
      {
        v38 = a2;
        v14 = v9;
        v11 = AssociatedTypeWitness;
        goto LABEL_42;
      }

      v39 = ((v36 + v20 + v22) & v34);
      if (v16 >= a2)
      {
        if (v15 <= 0x7FFFFFFE)
        {
          if (a2 > 0x7FFFFFFE)
          {
            *(((v36 + v20 + v22) & v34) + 0x20) = 0;
            *v39 = 0u;
            *(((v36 + v20 + v22) & v34) + 0x10) = 0u;
            *v39 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(((v36 + v20 + v22) & v34) + 0x18) = a2;
          }

          return;
        }

        v39 = (&v39[v23] & v35);
        if (v15 >= a2)
        {
          v38 = a2 + 1;
          v36 = v39;
          goto LABEL_42;
        }

        if (v25 <= 3)
        {
          v43 = ~(-1 << (8 * v25));
        }

        else
        {
          v43 = -1;
        }

        if (v25)
        {
          v41 = v43 & (~v15 + a2);
          if (v25 <= 3)
          {
            v44 = v25;
          }

          else
          {
            v44 = 4;
          }

          bzero(v39, v25);
          switch(v44)
          {
            case 2:
LABEL_76:
              *v39 = v41;
              break;
            case 3:
LABEL_79:
              *v39 = v41;
              v39[2] = BYTE2(v41);
              break;
            case 4:
LABEL_80:
              *v39 = v41;
              break;
            default:
LABEL_56:
              *v39 = v41;
              break;
          }
        }
      }

      else
      {
        if (v26 <= 3)
        {
          v40 = ~(-1 << (8 * v26));
        }

        else
        {
          v40 = -1;
        }

        if (v26)
        {
          v41 = v40 & (~v16 + a2);
          if (v26 <= 3)
          {
            v42 = v26;
          }

          else
          {
            v42 = 4;
          }

          bzero(((v36 + v20 + v22) & v34), v26);
          switch(v42)
          {
            case 2:
              goto LABEL_76;
            case 3:
              goto LABEL_79;
            case 4:
              goto LABEL_80;
            default:
              goto LABEL_56;
          }
        }
      }

      return;
  }
}

uint64_t sub_216C44AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_216C44B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_216C44BD0()
{
  swift_getWitnessTable();
  sub_217009AF4();
  __break(1u);
}

uint64_t type metadata accessor for GoToAlbumViewModel()
{
  result = qword_280E3EED0;
  if (!qword_280E3EED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216C44C84()
{
  sub_21700C084();
  if (v0 <= 0x3F)
  {
    sub_2166DB204();
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

uint64_t sub_216C44D20(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21700B804();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = OUTLINED_FUNCTION_84();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_21700C084();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = OUTLINED_FUNCTION_84();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6BD0);
  v2[14] = OUTLINED_FUNCTION_84();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4A0);
  v2[17] = OUTLINED_FUNCTION_84();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216C44EE8()
{
  v1 = v0[3];
  v2 = *(v1 + *(type metadata accessor for GoToAlbumViewModel() + 20));
  if (v2 == 2)
  {
    v0[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
    v3 = swift_allocObject();
    v0[24] = v3;
    *(v3 + 16) = xmmword_21701D820;
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC53A8);
    *(v3 + 32) = sub_21700B6C4();
    v4 = swift_task_alloc();
    v0[26] = v4;
    OUTLINED_FUNCTION_1_177();
    v0[27] = sub_216C46378(v5, v6);
    *v4 = v0;
    v4[1] = sub_216C455AC;
    v7 = v0[12];

    return MEMORY[0x282124818](v7, v3);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[4];
    v11 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
    v12 = swift_allocObject();
    v0[20] = v12;
    *(v12 + 16) = xmmword_21701D820;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC53A8);
    *(v12 + 32) = sub_21700B6C4();
    v13 = MEMORY[0x277CD7CF8];
    if ((v2 & 1) == 0)
    {
      v13 = MEMORY[0x277CD7D00];
    }

    (*(v11 + 104))(v9, *v13, v10);
    (*(v11 + 32))(v8, v9, v10);
    v14 = swift_task_alloc();
    v0[21] = v14;
    OUTLINED_FUNCTION_1_177();
    v17 = sub_216C46378(v15, v16);
    *v14 = v0;
    v14[1] = sub_216C451C8;
    v18 = v0[13];
    v19 = v0[8];
    v20 = v0[9];
    v21 = MEMORY[0x277CD8218];
    v22 = MEMORY[0x277CD81F8];

    return MEMORY[0x282124810](v18, v12, v19, v20, v21, v22, v17);
  }
}

uint64_t sub_216C451C8()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2[8];
  v4 = v2[5];
  v5 = v2[4];
  v6 = *v1;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v8 + 176) = v0;

  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216C455AC()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v3 + 224) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_216C459AC()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  v6 = *v1;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v8 + 272) = v0;

  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216C45DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_0_207();
  OUTLINED_FUNCTION_7_90();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_120();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216C45E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();

  OUTLINED_FUNCTION_0_207();
  OUTLINED_FUNCTION_7_90();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_120();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216C45F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_0_207();
  OUTLINED_FUNCTION_7_90();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_120();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216C46000()
{
  v1 = v0;
  v2 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700C0B4();
  if (!v7)
  {
    v6 = sub_21700C164();
  }

  v8 = v6;
  v9 = v7;
  LOBYTE(v32[0]) = 1;
  v10 = *(v2 + 24);
  v11 = sub_217005EF4();
  OUTLINED_FUNCTION_88(&v5[v10], v12, v13, v11);
  *v5 = 4;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 11) = v8;
  *(v5 + 12) = v9;
  *(v5 + 13) = 0;
  v5[112] = 1;
  v14 = sub_21700BFF4();
  v16 = v15;
  v17 = type metadata accessor for AlbumDetailPageIntent();
  v33 = v17;
  v34 = sub_216C46378(&qword_27CAC3E50, type metadata accessor for AlbumDetailPageIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  sub_21695BC04(v5, boxed_opaque_existential_1);
  v19 = *(v17 + 24);
  v20 = type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_88(boxed_opaque_existential_1 + v19, v21, v22, v20);
  v23 = (boxed_opaque_existential_1 + *(v17 + 20));
  *v23 = v14;
  v23[1] = v16;
  sub_2168466D8(v32, &v29);
  v24 = *(v1 + *(type metadata accessor for GoToAlbumViewModel() + 24));
  v35 = 0u;
  v36 = 0u;
  LOWORD(v37) = 1;

  sub_216CCC700(&v29, v24, &v35, 0, 0, v25, v26, v27, v29, v30, v31, v32[0], v32[1], v32[2], v33, v34, v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38);
  sub_2168F3F20(v5);
  return sub_216699820(v32, &qword_27CAB6AB8);
}

uint64_t sub_216C461F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_216C46290;

  return sub_216C44D20(a1);
}

uint64_t sub_216C46290()
{
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216C46378(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216C463C0()
{
  result = qword_27CAC6BD8;
  if (!qword_27CAC6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6BD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GoToAlbumViewModel.GoToAlbumError(_BYTE *result, int a2, int a3)
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

unint64_t sub_216C464C4()
{
  result = qword_27CAC6BE0;
  if (!qword_27CAC6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6BE0);
  }

  return result;
}

uint64_t sub_216C46518()
{
  OUTLINED_FUNCTION_33();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v1[16] = v5;
  v6 = sub_2170078C4();
  OUTLINED_FUNCTION_36(v6);
  v1[21] = OUTLINED_FUNCTION_80();
  v7 = sub_21700B774();
  v1[22] = v7;
  OUTLINED_FUNCTION_2(v7);
  v1[23] = v8;
  v1[24] = OUTLINED_FUNCTION_80();
  v9 = sub_21700B754();
  v1[25] = v9;
  OUTLINED_FUNCTION_2(v9);
  v1[26] = v10;
  v1[27] = OUTLINED_FUNCTION_80();
  v11 = sub_217005EF4();
  v1[28] = v11;
  OUTLINED_FUNCTION_2(v11);
  v1[29] = v12;
  v1[30] = OUTLINED_FUNCTION_80();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v1[31] = v13;
  OUTLINED_FUNCTION_36(v13);
  v1[32] = OUTLINED_FUNCTION_84();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0);
  OUTLINED_FUNCTION_36(v14);
  v1[35] = OUTLINED_FUNCTION_80();
  v15 = sub_217005AB4();
  v1[36] = v15;
  OUTLINED_FUNCTION_2(v15);
  v1[37] = v16;
  v1[38] = OUTLINED_FUNCTION_80();
  v17 = sub_21700B864();
  v1[39] = v17;
  OUTLINED_FUNCTION_2(v17);
  v1[40] = v18;
  v1[41] = OUTLINED_FUNCTION_84();
  v1[42] = swift_task_alloc();
  v19 = sub_217007C24();
  v1[43] = v19;
  OUTLINED_FUNCTION_2(v19);
  v1[44] = v20;
  v1[45] = OUTLINED_FUNCTION_80();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  OUTLINED_FUNCTION_36(v21);
  v1[46] = OUTLINED_FUNCTION_84();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v22 = type metadata accessor for BaseURLRequest();
  OUTLINED_FUNCTION_36(v22);
  v1[50] = OUTLINED_FUNCTION_80();
  v23 = sub_217005844();
  v1[51] = v23;
  OUTLINED_FUNCTION_2(v23);
  v1[52] = v24;
  v1[53] = OUTLINED_FUNCTION_84();
  v1[54] = swift_task_alloc();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_216C468AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  if (sub_21669DAC4())
  {
    v26 = swift_task_alloc();
    v23[55] = v26;
    *v26 = v23;
    v26[1] = sub_216C46B88;
    OUTLINED_FUNCTION_31_4();

    return sub_216A4F6C8();
  }

  else
  {
    v29 = OUTLINED_FUNCTION_6_95();
    v30(v29);
    v31 = *(v24 + 24);
    v32 = OUTLINED_FUNCTION_20_52();
    v23[56] = v32;
    v23[5] = v32;
    OUTLINED_FUNCTION_108();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_23_43(AssociatedConformanceWitness);
    v31(v25, v24);
    OUTLINED_FUNCTION_22_47();
    sub_216C48670(v23[50]);
    __swift_destroy_boxed_opaque_existential_1Tm((v23 + 2));
    if (v22)
    {
      OUTLINED_FUNCTION_4_116();

      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_31_4();
    }

    else
    {
      sub_21700B664();
      swift_allocObject();
      v23[58] = MEMORY[0x21CE9C470]();
      if (qword_27CAB5BC8 != -1)
      {
        OUTLINED_FUNCTION_7_91();
      }

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10);
      v43 = __swift_project_value_buffer(v42, qword_27CB22950);
      v44 = OUTLINED_FUNCTION_10_78(v43);
      v46 = v45(v44);
      OUTLINED_FUNCTION_21_51(v46, "FetchDeveloperToken");
      sub_21700B854();
      OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7BB8]);
      a18 = v47;
      v48 = swift_task_alloc();
      v23[62] = v48;
      *v48 = v23;
      OUTLINED_FUNCTION_2_142(v48);
      OUTLINED_FUNCTION_31_4();
    }

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_216C46B88()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216C46C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  v26 = OUTLINED_FUNCTION_6_95();
  v27(v26);
  v28 = *(v24 + 24);
  v29 = OUTLINED_FUNCTION_20_52();
  v23[56] = v29;
  v23[5] = v29;
  OUTLINED_FUNCTION_108();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_23_43(AssociatedConformanceWitness);
  v28(v25, v24);
  OUTLINED_FUNCTION_22_47();
  sub_216C48670(v23[50]);
  __swift_destroy_boxed_opaque_existential_1Tm((v23 + 2));
  if (v22)
  {
    OUTLINED_FUNCTION_4_116();

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_31_4();
  }

  else
  {
    sub_21700B664();
    swift_allocObject();
    v23[58] = MEMORY[0x21CE9C470]();
    if (qword_27CAB5BC8 != -1)
    {
      OUTLINED_FUNCTION_7_91();
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10);
    v41 = __swift_project_value_buffer(v40, qword_27CB22950);
    v42 = OUTLINED_FUNCTION_10_78(v41);
    v44 = v43(v42);
    OUTLINED_FUNCTION_21_51(v44, "FetchDeveloperToken");
    sub_21700B854();
    OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7BB8]);
    a18 = v45;
    v46 = swift_task_alloc();
    v23[62] = v46;
    *v46 = v23;
    OUTLINED_FUNCTION_2_142(v46);
    OUTLINED_FUNCTION_31_4();
  }

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_216C46ED0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v7 = v4[40];
  *v6 = *v2;
  v5[63] = v8;
  v5[64] = v1;

  v9 = (v7 + 8);
  v5[65] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = v4[42];
  v11 = v4[39];
  if (v1)
  {
    (*v9)(v10, v11);
  }

  else
  {
    v5[66] = a1;
    v12 = *v9;
    v5[67] = *v9;
    v12(v10, v11);
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_216C47060()
{
  v1 = v0[60];
  v2 = v0[59];
  v3 = v0[48];
  v4 = v0[45];
  v5 = v0[43];
  sub_216BD4F18();
  sub_21700B844();
  swift_allocObject();
  v0[68] = MEMORY[0x21CE9C650]();
  v1(v4, v2, v5);
  sub_216BD7934(v4, "FetchUserToken", 14, 2, v3);
  v0[15] = 0;
  sub_216C486CC();
  sub_21700F9B4();
  OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7D10]);
  v12 = v6;
  v7 = swift_task_alloc();
  v0[69] = v7;
  *v7 = v0;
  v7[1] = sub_216C471C4;
  v8 = v0[66];
  v9 = v0[63];
  v10 = v0[41];

  return v12(v8, v9, v10);
}

uint64_t sub_216C471C4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  *v8 = *v3;
  v7[70] = v2;

  v9 = v6[67];
  v10 = v6[41];
  v11 = v6[39];
  if (!v2)
  {
    v7[71] = a2;
    v7[72] = a1;
  }

  v9(v10, v11);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_216C47370()
{
  v38 = v0;
  v2 = v0[35];
  v1 = v0[36];
  sub_216BD4F18();
  sub_217005814();

  sub_2167846B8(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_216697664(v0[35], &qword_27CAB6BD0);
  }

  else
  {
    v3 = v0[33];
    v4 = v0[28];
    (*(v0[37] + 32))(v0[38], v0[35], v0[36]);
    sub_2170057F4();
    if (__swift_getEnumTagSinglePayload(v3, 1, v4))
    {
      v5 = v0[34];
      v6 = v0[28];
      sub_216697664(v0[33], &qword_27CABA820);
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    }

    else
    {
      v8 = v0[33];
      v7 = v0[34];
      (*(v0[29] + 16))(v0[30], v8, v0[28]);
      sub_216697664(v8, &qword_27CABA820);
      sub_216C48244(v7);
      v9 = OUTLINED_FUNCTION_108();
      v10(v9);
    }

    sub_217005804();
    if (qword_27CAB5FF8 != -1)
    {
      swift_once();
    }

    v11 = sub_217007CA4();
    __swift_project_value_buffer(v11, qword_27CAC6BE8);
    v12 = sub_217007C84();
    v13 = sub_21700EDA4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[37];
      v36 = v0[38];
      v15 = v0[36];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37 = v17;
      *v16 = 136446210;
      swift_beginAccess();
      sub_2170057F4();
      swift_endAccess();
      v18 = sub_21700E594();
      v20 = sub_2166A85FC(v18, v19, &v37);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_216679000, v12, v13, "Rewrote URL to %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x21CEA1440](v17, -1, -1);
      MEMORY[0x21CEA1440](v16, -1, -1);

      (*(v14 + 8))(v36, v15);
    }

    else
    {
      v22 = v0[37];
      v21 = v0[38];
      v23 = v0[36];

      (*(v22 + 8))(v21, v23);
    }
  }

  v35 = v0[60];
  v24 = v0[59];
  v26 = v0[53];
  v25 = v0[54];
  v27 = v0[51];
  v28 = v0[52];
  v29 = v0[47];
  v30 = v0[45];
  v31 = v0[43];
  swift_beginAccess();
  (*(v28 + 16))(v26, v25, v27);
  sub_21700B734();
  v35(v30, v24, v31);
  sub_216BD7934(v30, "PerformRequest", 14, 2, v29);
  v32 = swift_task_alloc();
  v0[73] = v32;
  *v32 = v0;
  v32[1] = sub_216C477C4;
  v33 = v0[24];

  return MEMORY[0x2821243B8](v33);
}

uint64_t sub_216C477C4()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v4 + 592) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216C478C8()
{
  v34 = v0[74];
  v1 = v0[60];
  v2 = v0[59];
  v3 = v0[46];
  v4 = v0[45];
  v5 = v0[43];
  sub_216BD4F18();
  v1(v4, v2, v5);
  sub_216BD7934(v4, "DeserializeProtobuf", 19, 2, v3);
  swift_getAssociatedTypeWitness();
  v0[13] = sub_21700B764();
  v0[14] = v6;
  swift_getAssociatedConformanceWitness();
  sub_2170078B4();
  v7 = v34;
  sub_217007A14();
  v35 = v0[54];
  if (v7)
  {
    v8 = v0[52];
    v32 = v0[49];
    v33 = v0[51];
    v9 = v0[46];
    v10 = v0[47];
    v11 = v0[26];
    v30 = v0[27];
    v31 = v0[48];
    v12 = v0[24];
    v29 = v0[25];
    v14 = v0[22];
    v13 = v0[23];
    sub_216BD4F18();

    OUTLINED_FUNCTION_15_60(v9);
    (*(v13 + 8))(v12, v14);
    OUTLINED_FUNCTION_15_60(v10);
    (*(v11 + 8))(v30, v29);
    OUTLINED_FUNCTION_15_60(v31);
    OUTLINED_FUNCTION_15_60(v32);
    (*(v8 + 8))(v35, v33);
  }

  else
  {
    v16 = v0[52];
    v28 = v0[51];
    v26 = v0[48];
    v27 = v0[49];
    v17 = v0[46];
    v18 = v0[26];
    v24 = v0[27];
    v25 = v0[47];
    v20 = v0[24];
    v19 = v0[25];
    v22 = v0[22];
    v21 = v0[23];
    sub_216BD4F18();

    OUTLINED_FUNCTION_15_60(v17);
    (*(v21 + 8))(v20, v22);
    OUTLINED_FUNCTION_15_60(v25);
    (*(v18 + 8))(v24, v19);
    OUTLINED_FUNCTION_15_60(v26);
    OUTLINED_FUNCTION_15_60(v27);
    (*(v16 + 8))(v35, v28);
  }

  OUTLINED_FUNCTION_3();

  return v15();
}

uint64_t sub_216C47D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  v23 = v22[54];
  v24 = v22[51];
  v25 = v22[52];
  v26 = v22[49];

  sub_216697664(v26, &qword_27CABBB08);
  (*(v25 + 8))(v23, v24);
  OUTLINED_FUNCTION_0_208();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_31_4();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_216C47EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  v23 = v22[54];
  v24 = v22[51];
  v25 = v22[52];
  v27 = v22[48];
  v26 = v22[49];

  sub_216697664(v27, &qword_27CABBB08);
  sub_216697664(v26, &qword_27CABBB08);
  (*(v25 + 8))(v23, v24);
  OUTLINED_FUNCTION_0_208();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_31_4();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_216C48024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  v23 = v22[52];
  v39 = v22[51];
  v40 = v22[54];
  v25 = v22[48];
  v24 = v22[49];
  v26 = v22[47];
  v27 = v22[26];
  v28 = v22[27];
  v29 = v22[25];

  sub_216697664(v26, &qword_27CABBB08);
  (*(v27 + 8))(v28, v29);
  sub_216697664(v25, &qword_27CABBB08);
  sub_216697664(v24, &qword_27CABBB08);
  (*(v23 + 8))(v40, v39);
  OUTLINED_FUNCTION_0_208();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_31_4();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, v39, v40, a20, a21, a22);
}

uint64_t sub_216C481B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC7MusicUI26SwiftMusicRequestPerformer_bag;
  sub_21700DFD4();
  OUTLINED_FUNCTION_34();
  (*(v8 + 32))(v3 + v7, a1);
  *(v3 + OBJC_IVAR____TtC7MusicUI26SwiftMusicRequestPerformer_userDefaults) = a2;
  *(v3 + OBJC_IVAR____TtC7MusicUI26SwiftMusicRequestPerformer_privacyDisclaimer) = a3;
  return v3;
}

uint64_t sub_216C48244@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = sub_217005AB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2170059E4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_216697664(v6, &qword_27CAB6BD0);
    v11 = sub_217005EF4();
    OUTLINED_FUNCTION_34();
    (*(v12 + 16))(a1, v1, v11);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v11);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_108();
    v15(v14);
    sub_217005A74();
    if (v16)
    {
      sub_217005A84();
    }

    v17 = sub_217005A04();
    if (v18)
    {
      MEMORY[0x21CE96830](v17);
    }

    sub_217005A34();
    if ((v19 & 1) == 0)
    {
      sub_217005A44();
    }

    sub_2170059F4();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_216C48454()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC6BE8);
  __swift_project_value_buffer(v0, qword_27CAC6BE8);
  return sub_217007C94();
}

uint64_t sub_216C484D4()
{
  v1 = OBJC_IVAR____TtC7MusicUI26SwiftMusicRequestPerformer_bag;
  sub_21700DFD4();
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_216C4854C()
{
  sub_216C484D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216C485AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2169D1708;

  return sub_216C46518();
}

uint64_t sub_216C48670(uint64_t a1)
{
  v2 = type metadata accessor for BaseURLRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216C486CC()
{
  result = qword_27CAC6C00;
  if (!qword_27CAC6C00)
  {
    sub_21700B864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6C00);
  }

  return result;
}

uint64_t type metadata accessor for ReplayPageBodyView()
{
  result = qword_27CAC6C08;
  if (!qword_27CAC6C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216C48798()
{
  type metadata accessor for MappedReplayPage(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObjectGraph();
    if (v1 <= 0x3F)
    {
      sub_216C48834();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216C48834()
{
  if (!qword_27CAC6C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA758);
    sub_2166D9530(&qword_27CABA760, &qword_27CABA758);
    v0 = sub_217008D04();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAC6C18);
    }
  }
}

uint64_t sub_216C488F4@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = type metadata accessor for ReplayPageBodyView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FF8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  v15 = *v1;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9000);
  sub_2166D9530(&qword_280E29FC0, &qword_27CAB9000);
  sub_2170075C4();
  swift_getKeyPath();
  sub_216C490BC(v1, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplayPageBodyView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_216C4911C(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ReplayPageBodyView);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_216C49034;
  *(v8 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6C20);
  sub_2166D9530(&qword_27CAB9008, &qword_27CAB8FF8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9368);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9370);
  v11 = sub_2166D9530(&qword_27CAB9378, &qword_27CAB9370);
  v15 = v10;
  v16 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v9;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_21700B154();
}

uint64_t sub_216C48C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a1;
  v31 = a4;
  v6 = sub_2170099D4();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9370);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9368);
  v26 = *(v14 - 8);
  v27 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  v32 = a2;
  sub_216C490BC(a2, v10, type metadata accessor for MappedSection);
  v17 = type metadata accessor for ReplayPageBodyView();
  if (*(a3 + *(v17 + 24)))
  {
    v25 = *(*a3 + 16);
    v18 = *(a3 + *(v17 + 20));
    v19 = &v13[v11[13]];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v20 = &v13[v11[12]];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA758);
    sub_2166D9530(&qword_27CABA760, &qword_27CABA758);
    *v20 = sub_217008684();
    v20[1] = v21;
    sub_216C4911C(v10, v13, type metadata accessor for MappedSection);
    *&v13[v11[9]] = v18;
    *&v13[v11[10]] = v33;
    *&v13[v11[11]] = v25;
    v22 = v28;
    sub_2170099C4();
    sub_2166D9530(&qword_27CAB9378, &qword_27CAB9370);
    sub_21700A784();
    (*(v29 + 8))(v22, v30);
    sub_216C4917C(v13);
    sub_21682409C();
    return (*(v26 + 8))(v16, v27);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA758);
    sub_2166D9530(&qword_27CABA760, &qword_27CABA758);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C49034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ReplayPageBodyView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_216C48C30(a1, a2, v8, a3);
}

uint64_t sub_216C490BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216C4911C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216C4917C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216C491E4()
{
  result = qword_27CAC6C28;
  if (!qword_27CAC6C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CAC6C30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9370);
    sub_2166D9530(&qword_27CAB9378, &qword_27CAB9370);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6C28);
  }

  return result;
}

id sub_216C4931C@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_fullName);
  v5 = *(v1 + OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_fullName + 8);
  v6 = *(v1 + OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_imageType);
  v7 = objc_allocWithZone(ObjectType);
  sub_21700DF14();
  result = sub_216C49400(v4, v5, v6);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

id sub_216C49400(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_fullName];
  *v8 = a1;
  v8[1] = a2;
  v3[OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_imageType] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_216C49470()
{
  if (*(v0 + OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_fullName + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_fullName);
  }

  else
  {
    BYTE8(v3) = 0;
    *&v3 = *(v0 + OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_imageType);
    sub_21700F544();
    v1 = *(&v3 + 1);
  }

  sub_21700DF14();
  return v1;
}

_BYTE *storeEnumTagSinglePayload for MonogramArtworkToken.MonogramImageType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216C496DC()
{
  result = qword_27CAC6C58;
  if (!qword_27CAC6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6C58);
  }

  return result;
}

uint64_t sub_216C49730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (OUTLINED_FUNCTION_1_151(a1, a2, a3) + 32);
  v11 = (*v10 + **v10);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9_5(v6);
  *v7 = v8;
  v7[1] = sub_2166AB4A0;

  return v11(v5, v4, v3);
}

uint64_t sub_216C49860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (OUTLINED_FUNCTION_1_151(a1, a2, a3) + 48);
  v11 = (*v10 + **v10);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9_5(v6);
  *v7 = v8;
  v7[1] = sub_2166AB4A4;

  return v11(v5, v4, v3);
}

uint64_t sub_216C49978()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_38_0(&unk_2170571C8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_5(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_143(v1);

  return v4(v3);
}

uint64_t sub_216C49A20()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_38_0(&unk_2170571E8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_5(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_143(v1);

  return v4(v3);
}

uint64_t sub_216C49AB0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_38_0(&unk_217057208);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_5(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_143(v1);

  return v4(v3);
}

uint64_t sub_216C49B40()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_0(&unk_217057218);
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_9_5(v1);
  *v2 = v3;
  v2[1] = sub_2166AB4A0;

  return v5();
}

uint64_t sub_216C49BD0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_0(&unk_217057110);
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_9_5(v1);
  *v2 = v3;
  v2[1] = sub_2166AB4A0;

  return v5();
}

unint64_t sub_216C49C60()
{
  result = sub_216C4A040();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216C49CE8(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = 8;
  if (v4 > 8)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_22:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
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

  return (v6 | v11) + 254;
}

void sub_216C49E44(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v6 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v6] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_216C4A040()
{
  result = qword_280E29AD8;
  if (!qword_280E29AD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E29AD8);
  }

  return result;
}

uint64_t sub_216C4A09C()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LoadablePageView.LoadingState();
    v0 = sub_21700AEE4();
    if (v2 <= 0x3F)
    {
      sub_216C4A63C();
      v0 = v3;
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_216C4A160(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  result = AssociatedTypeWitness - 8;
  v11 = v10;
  v12 = *(v10 + 64);
  v13 = 8;
  if (v12 > 8)
  {
    v13 = v12;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = *(v6 + 64) + v15;
  if (v14 >= a2)
  {
LABEL_27:
    if (v7 < 0x7FFFFFFE)
    {
      v25 = *((v13 + ((a1 + v16) & ~v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      if ((v25 + 1) >= 2)
      {
        return v25;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v7, v5);
    }
  }

  else
  {
    v17 = (v13 & 0xFFFFFFFFFFFFFFF8) + (v16 & ~v15) + 32;
    v18 = v17 & 0xFFFFFFF8;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2 - v14 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = *(a1 + v17);
        if (!v22)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      case 2:
        v22 = *(a1 + v17);
        if (!v22)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      case 3:
        __break(1u);
        return result;
      case 4:
        v22 = *(a1 + v17);
        if (!v22)
        {
          goto LABEL_27;
        }

LABEL_24:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        result = v14 + (v24 | v23) + 1;
        break;
      default:
        goto LABEL_27;
    }
  }

  return result;
}