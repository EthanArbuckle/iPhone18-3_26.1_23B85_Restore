uint64_t sub_2575E76A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F768, type metadata accessor for Proto_OneHotLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E7740(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D510, type metadata accessor for Proto_OneHotLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E7808()
{
  sub_2575FB760(&qword_27F87D510, type metadata accessor for Proto_OneHotLayerParams);

  return sub_257743424();
}

uint64_t sub_2575E7888()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9EC8);
  __swift_project_value_buffer(v0, qword_27F8E9EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "axis";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "excludeFinalSum";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reverse";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575E7A90()
{
  OUTLINED_FUNCTION_18_4();
  while (1)
  {
    OUTLINED_FUNCTION_294();
    result = sub_257743234();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_148_1();
      sub_257743274();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_148_1();
      v0();
    }
  }

  return result;
}

uint64_t sub_2575E7B18()
{
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), result = sub_257743504(), !v0))
  {
    OUTLINED_FUNCTION_349_0();
    if (!v3 || (OUTLINED_FUNCTION_12_11(), result = sub_2577434B4(), !v0))
    {
      if (*(v1 + 9) != 1 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434B4(), !v0))
      {
        v4 = *(type metadata accessor for Proto_CumSumLayerParams(0) + 28);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_2575E7BB4(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_104_0(a1, a2);
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_267();
  if (*(v5 + 8) != *(v6 + 8) || *(v3 + 9) != *(v2 + 9))
  {
    return 0;
  }

  v8 = type metadata accessor for Proto_CumSumLayerParams(0);
  OUTLINED_FUNCTION_327_0(v8);
  OUTLINED_FUNCTION_1_16();
  sub_2575FB760(v9, v10);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2575E7C94(uint64_t a1)
{
  v1 = *(a1 + 28);
  v2 = sub_2577431B4();
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_77_0();

  return v6(v5);
}

uint64_t sub_2575E7CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 28);
  v3 = sub_2577431B4();
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_311_0();

  return v7(v6);
}

uint64_t sub_2575E7DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE70, type metadata accessor for Proto_CumSumLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E7E44(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D4F8, type metadata accessor for Proto_CumSumLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E7F0C()
{
  sub_2575FB760(&qword_27F87D4F8, type metadata accessor for Proto_CumSumLayerParams);

  return sub_257743424();
}

uint64_t sub_2575E7F8C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9EE0);
  __swift_project_value_buffer(v0, qword_27F8E9EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "layers";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "preprocessing";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "arrayInputShapeMapping";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "imageInputShapeMapping";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "updateParams";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2575E820C()
{
  OUTLINED_FUNCTION_102_0();
  v2 = v1;
  v4 = v3;
  while (1)
  {
    v5 = sub_257743234();
    if (v0 || (v6 & 1) != 0)
    {
      break;
    }

    switch(v5)
    {
      case 1:
        OUTLINED_FUNCTION_113_0();
        sub_2575E8334();
        break;
      case 2:
        OUTLINED_FUNCTION_113_0();
        sub_2575E839C();
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_113_0();
        v4(v7);
        break;
      case 6:
        v8 = OUTLINED_FUNCTION_113_0();
        v2(v8);
        break;
      case 10:
        OUTLINED_FUNCTION_113_0();
        sub_2575E8414();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_103_0();
}

void sub_2575E8334()
{
  OUTLINED_FUNCTION_165_0();
  OUTLINED_FUNCTION_243_0();
  v0 = OUTLINED_FUNCTION_396_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_131_0();
  sub_2575FB760(v2, v3);
  OUTLINED_FUNCTION_162_0();
  OUTLINED_FUNCTION_166_0();
}

uint64_t sub_2575E839C()
{
  OUTLINED_FUNCTION_147_0();
  type metadata accessor for Proto_NeuralNetworkPreprocessing(0);
  OUTLINED_FUNCTION_92_1();
  sub_2575FB760(v0, v1);
  OUTLINED_FUNCTION_12_10();
  return sub_2577433C4();
}

void sub_2575E8414()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_147_0();
  v1 = *(v0(0) + 36);
  type metadata accessor for Proto_NetworkUpdateParameters(0);
  OUTLINED_FUNCTION_202();
  sub_2575FB760(v2, v3);
  OUTLINED_FUNCTION_12_10();
  sub_2577433D4();
  OUTLINED_FUNCTION_187_0();
}

void sub_2575E849C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v5 + 16) || (type metadata accessor for Proto_NeuralNetworkLayer(0), OUTLINED_FUNCTION_205_0(), sub_2575FB760(v9, v10), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_27_4(), sub_257743564(), !v6))
  {
    if (!*(*(v7 + 8) + 16) || (type metadata accessor for Proto_NeuralNetworkPreprocessing(0), OUTLINED_FUNCTION_92_1(), sub_2575FB760(v11, v12), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_27_4(), sub_257743564(), !v6))
    {
      if (!*(v7 + 16) || (v13 = *(v7 + 24), OUTLINED_FUNCTION_184_1(), sub_257609C20(), OUTLINED_FUNCTION_27_4(), sub_2577434C4(), !v6))
      {
        if (!*(v7 + 32) || (v14 = *(v7 + 40), OUTLINED_FUNCTION_184_1(), sub_257609C74(), OUTLINED_FUNCTION_27_4(), sub_2577434C4(), !v6))
        {
          OUTLINED_FUNCTION_3_9();
          sub_2575E863C();
          if (!v6)
          {
            v15 = *(a5(0) + 32);
            OUTLINED_FUNCTION_7_5();
          }
        }
      }
    }
  }
}

void sub_2575E863C()
{
  OUTLINED_FUNCTION_165_0();
  OUTLINED_FUNCTION_303_0(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_277();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_32_4();
  updated = type metadata accessor for Proto_NetworkUpdateParameters(0);
  v13 = OUTLINED_FUNCTION_4(updated);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = OUTLINED_FUNCTION_14();
  v17 = *(v1(v16) + 36);
  OUTLINED_FUNCTION_399_0();
  v18 = OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_155(v18, v19, updated);
  if (v20)
  {
    sub_2574695E4(v0, &qword_27F87C788, &unk_257751EA0);
  }

  else
  {
    OUTLINED_FUNCTION_367();
    sub_257609B78();
    OUTLINED_FUNCTION_202();
    sub_2575FB760(v21, v22);
    OUTLINED_FUNCTION_403_0();
    OUTLINED_FUNCTION_66_0();
    sub_257609BCC();
  }

  OUTLINED_FUNCTION_166_0();
}

void sub_2575E87B0()
{
  OUTLINED_FUNCTION_31();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_118_1();
  updated = type metadata accessor for Proto_NetworkUpdateParameters(v8);
  v10 = OUTLINED_FUNCTION_4(updated);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C788, &unk_257751EA0);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_74_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA90, &qword_257767450);
  OUTLINED_FUNCTION_41_4(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_32_3();
  v21 = *v1;
  v22 = *v0;
  sub_25747D3D0();
  if ((v23 & 1) == 0)
  {
    goto LABEL_31;
  }

  v24 = v1[1];
  v25 = v0[1];
  sub_25747D424();
  if ((v26 & 1) == 0)
  {
    goto LABEL_31;
  }

  v27 = v1[2];
  v28 = *(v1 + 24);
  v29 = v0[2];
  v30 = *(v0 + 24);
  OUTLINED_FUNCTION_224();
  if (v35)
  {
    v32 = v34;
  }

  if (v33 == 1)
  {
    if (v31)
    {
      if (v32 != 1)
      {
        goto LABEL_31;
      }
    }

    else if (v32)
    {
      goto LABEL_31;
    }
  }

  else if (v32 != v31)
  {
    goto LABEL_31;
  }

  v36 = v1[4];
  v37 = *(v1 + 40);
  v38 = v0[4];
  v39 = *(v0 + 40);
  OUTLINED_FUNCTION_224();
  if (v44)
  {
    v41 = v43;
  }

  if (v42 == 1)
  {
    if (v40)
    {
      if (v41 != 1)
      {
        goto LABEL_31;
      }
    }

    else if (v41)
    {
      goto LABEL_31;
    }
  }

  else if (v41 != v40)
  {
    goto LABEL_31;
  }

  v62 = v7(0);
  v45 = *(v62 + 36);
  v46 = *(v5 + 48);
  OUTLINED_FUNCTION_66();
  sub_257487308();
  OUTLINED_FUNCTION_129_1();
  OUTLINED_FUNCTION_42_0(v2);
  if (v47)
  {
    OUTLINED_FUNCTION_42_0(v2 + v46);
    if (v47)
    {
      sub_2574695E4(v2, &qword_27F87C788, &unk_257751EA0);
LABEL_36:
      v59 = *(v62 + 32);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_16();
      sub_2575FB760(v60, v61);
      v50 = OUTLINED_FUNCTION_19_3();
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_264();
  sub_257487308();
  OUTLINED_FUNCTION_42_0(v2 + v46);
  if (v47)
  {
    sub_257609BCC();
LABEL_29:
    v48 = &qword_27F87FA90;
    v49 = &qword_257767450;
LABEL_30:
    sub_2574695E4(v2, v48, v49);
    goto LABEL_31;
  }

  sub_257609B78();
  v51 = *(updated + 20);
  if (*(v4 + v51) != *(v3 + v51))
  {
    v52 = *(v4 + v51);

    v53 = OUTLINED_FUNCTION_287_0();
    v55 = sub_2575F419C(v53, v54);

    if (!v55)
    {
      sub_257609BCC();
      OUTLINED_FUNCTION_412_0();
      v48 = &qword_27F87C788;
      v49 = &unk_257751EA0;
      goto LABEL_30;
    }
  }

  v56 = sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  sub_2575FB760(v57, v58);
  OUTLINED_FUNCTION_294();
  sub_257743644();
  OUTLINED_FUNCTION_220_0();
  sub_257609BCC();
  sub_257609BCC();
  sub_2574695E4(v2, &qword_27F87C788, &unk_257751EA0);
  if (v56)
  {
    goto LABEL_36;
  }

LABEL_31:
  v50 = 0;
LABEL_32:
  OUTLINED_FUNCTION_65_0(v50);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2575E8BAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = sub_2577431B4();
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_311_0();

  return v7(v6);
}

uint64_t sub_2575E8C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F148, type metadata accessor for Proto_NeuralNetworkRegressor);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575E8D38(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87BAE0, type metadata accessor for Proto_NeuralNetworkRegressor);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575E8E00()
{
  sub_2575FB760(&qword_27F87BAE0, type metadata accessor for Proto_NeuralNetworkRegressor);

  return sub_257743424();
}

uint64_t sub_2575E8EAC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9EF8);
  __swift_project_value_buffer(v0, qword_27F8E9EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "lossLayers";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "optimizer";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "epochs";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "shuffle";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 20;
  *v16 = "seed";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575E9164(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_89_1(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_2575E91B4()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__optimizer;
  v2 = type metadata accessor for Proto_Optimizer(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__epochs;
  v4 = type metadata accessor for Proto_Int64Parameter(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__shuffle;
  v6 = type metadata accessor for Proto_BoolParameter(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__seed, 1, 1, v4);
  return v0;
}

uint64_t sub_2575E9274(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F928, &qword_257767330);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v18[1] = v18 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F938, &qword_257767338);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *(v1 + 16) = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__optimizer;
  v11 = type metadata accessor for Proto_Optimizer(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__epochs;
  v13 = type metadata accessor for Proto_Int64Parameter(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__shuffle;
  v15 = type metadata accessor for Proto_BoolParameter(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v18[0] = OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__seed;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__seed, 1, 1, v13);
  swift_beginAccess();
  v16 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v16;
  swift_beginAccess();
  sub_257487308();
  swift_beginAccess();

  sub_25751BB28();
  swift_endAccess();
  swift_beginAccess();
  sub_257487308();
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  swift_beginAccess();
  sub_257487308();
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  swift_beginAccess();
  sub_257487308();

  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  return v1;
}

uint64_t sub_2575E964C()
{
  v1 = *(v0 + 16);

  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__optimizer, &qword_27F87F938, &qword_257767338);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__epochs, &qword_27F87BD30, &unk_2577504D0);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__shuffle, &qword_27F87F928, &qword_257767330);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification29Proto_NetworkUpdateParametersP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__seed, &qword_27F87BD30, &unk_2577504D0);
  return v0;
}

uint64_t sub_2575E9714(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x2821FE8D8]();
}

void sub_2575E9794()
{
  sub_25759B3F4(319, &qword_27F87C2A8, type metadata accessor for Proto_Optimizer, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v7 = *(v0 - 8) + 64;
    sub_25759B3F4(319, &qword_281537CA0, type metadata accessor for Proto_Int64Parameter, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_25759B3F4(319, &qword_27F87C2B0, type metadata accessor for Proto_BoolParameter, MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void __swift_store_extra_inhabitant_index_494Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_155_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_255_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_2575E9BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_270_0();
  result = v7(v6);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return OUTLINED_FUNCTION_97_0();
    }
  }

  return result;
}

uint64_t sub_2575E9C88()
{
  v0 = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_27F87C348, type metadata accessor for Proto_DoubleParameter, MEMORY[0x277D83D88]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_25759B3F4(319, &qword_281537CA0, type metadata accessor for Proto_Int64Parameter, MEMORY[0x277D83D88]);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t __swift_get_extra_inhabitant_index_529Tm()
{
  OUTLINED_FUNCTION_267();
  v2 = sub_2577431B4();
  OUTLINED_FUNCTION_18_3(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_72_0();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C330, &qword_2577513E8);
    OUTLINED_FUNCTION_18_3(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_117_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
      OUTLINED_FUNCTION_96_0();
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t __swift_store_extra_inhabitant_index_530Tm()
{
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_267();
  v1 = sub_2577431B4();
  OUTLINED_FUNCTION_18_3(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C330, &qword_2577513E8);
    OUTLINED_FUNCTION_18_3(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_122_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
      OUTLINED_FUNCTION_255_0();
    }
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_2575E9F88()
{
  v0 = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_27F87C348, type metadata accessor for Proto_DoubleParameter, MEMORY[0x277D83D88]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_25759B3F4(319, &qword_281537CA0, type metadata accessor for Proto_Int64Parameter, MEMORY[0x277D83D88]);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_2575EA13C()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_806Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 16));
  }

  OUTLINED_FUNCTION_77_1();
  v3 = OUTLINED_FUNCTION_61_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_807Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_304_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_274_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_2575EAB24(uint64_t a1)
{
  OUTLINED_FUNCTION_40_4(a1, &qword_27F87A348, MEMORY[0x277D84D38]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_779Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 16));
  }

  OUTLINED_FUNCTION_77_1();
  v3 = OUTLINED_FUNCTION_84_2();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_780Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_304_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_256_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_2575EADCC(uint64_t a1)
{
  OUTLINED_FUNCTION_40_4(a1, &qword_27F87A348, MEMORY[0x277D84D38]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

void sub_2575EB008()
{
  sub_25759B3F4(319, &qword_27F87C5E0, type metadata accessor for Proto_WeightParams, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2575EB0E4();
    if (v1 <= 0x3F)
    {
      sub_2577431B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2575EB0E4()
{
  if (!qword_27F87C5E8)
  {
    type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue(255);
    v0 = sub_2577435E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87C5E8);
    }
  }
}

void sub_2575EB1BC()
{
  v0 = OUTLINED_FUNCTION_270_0();
  sub_2575ED254(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    OUTLINED_FUNCTION_302_0();
    sub_2577431B4();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

uint64_t sub_2575EB244(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2575EB284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

void sub_2575EB5D0()
{
  OUTLINED_FUNCTION_345_0();
  OUTLINED_FUNCTION_40_4(v0, v1, v2);
  if (v3 <= 0x3F)
  {
    OUTLINED_FUNCTION_302_0();
    sub_2577431B4();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_315_0();
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

void sub_2575EB878()
{
  sub_2575ED254(319, &qword_27F87A348, MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_27F87C700, type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2577431B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2575EC394()
{
  sub_25759B3F4(319, &qword_27F87C908, type metadata accessor for Proto_PaddingLayerParams.OneOf_PaddingType, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      sub_25759B3F4(319, &qword_27F87C910, type metadata accessor for Proto_BorderAmounts, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2575EC510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v8 = OUTLINED_FUNCTION_270_0();
  result = v9(v8);
  if (v11 <= 0x3F)
  {
    result = a5(319);
    if (v12 <= 0x3F)
    {
      v13 = OUTLINED_FUNCTION_302_0();
      result = a6(v13);
      if (v14 <= 0x3F)
      {
        OUTLINED_FUNCTION_315_0();
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return OUTLINED_FUNCTION_97_0();
      }
    }
  }

  return result;
}

void sub_2575EC76C()
{
  sub_2575ED254(319, &qword_27F87A348, MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2575ECB6C()
{
  sub_25759B3F4(319, &qword_27F87C790, type metadata accessor for Proto_NeuralNetworkLayer, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_27F87C798, type metadata accessor for Proto_NeuralNetworkPreprocessing, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_25759B3F4(319, &qword_2815376D0, type metadata accessor for Proto_NeuralNetworkClassifier.OneOf_ClassLabels, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2577431B4();
        if (v3 <= 0x3F)
        {
          sub_25759B3F4(319, &qword_2815376E8, type metadata accessor for Proto_NetworkUpdateParameters, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2575ECDAC()
{
  sub_2575ED254(319, &qword_27F87A348, MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2575ED254(319, &qword_27F87A658, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2577431B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2575ECF10()
{
  sub_25759B3F4(319, &qword_27F87CA60, type metadata accessor for Proto_ActivationParams, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      sub_25759B3F4(319, &qword_27F87CA68, type metadata accessor for Proto_LSTMParams, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_25759B3F4(319, &qword_27F87CA70, type metadata accessor for Proto_LSTMWeightParams, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2575ED154()
{
  sub_2575ED254(319, &qword_27F87B160, MEMORY[0x277D839B0], MEMORY[0x277D83940]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2575ED254(319, &qword_27F87A660, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = sub_2577431B4();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_2575ED254(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2575ED2EC()
{
  sub_2575ED254(319, &qword_27F87A660, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2575ED254(319, &qword_27F87B160, MEMORY[0x277D839B0], MEMORY[0x277D83940]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = sub_2577431B4();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_2575ED690(uint64_t a1)
{
  OUTLINED_FUNCTION_40_4(a1, &qword_27F87A660, MEMORY[0x277D84A28]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_315_0();
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_902Tm()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 32);
  sub_2577431B4();
  v2 = OUTLINED_FUNCTION_173_1();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t __swift_store_extra_inhabitant_index_903Tm()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 32);
  sub_2577431B4();
  v2 = OUTLINED_FUNCTION_115_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_2575ED8B4()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_985Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*v0);
  }

  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_96_0();
  v4 = OUTLINED_FUNCTION_13_2(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_986Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_255_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_2575EDA7C()
{
  sub_2575ED254(319, &qword_27F87A658, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_893Tm()
{
  OUTLINED_FUNCTION_264_0();
  if (v1)
  {
    v2 = *(v0 + 8);
    OUTLINED_FUNCTION_238_0();
    v5 = (v3 + v4) & 0x7FFFFFFF;
    if (v6)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_96_0();
    v9 = OUTLINED_FUNCTION_13_2(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void __swift_store_extra_inhabitant_index_894Tm()
{
  OUTLINED_FUNCTION_107_0();
  if (v2)
  {
    *(v1 + 8) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_255_0();
    v4 = OUTLINED_FUNCTION_48_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t __swift_get_extra_inhabitant_index_797Tm()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 28);
  sub_2577431B4();
  v2 = OUTLINED_FUNCTION_173_1();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t __swift_store_extra_inhabitant_index_798Tm()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 28);
  sub_2577431B4();
  v2 = OUTLINED_FUNCTION_115_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_2575EDE68()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

void sub_2575EDF88(uint64_t a1)
{
  OUTLINED_FUNCTION_40_4(a1, &qword_27F87A660, MEMORY[0x277D84A28]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1828Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*v0);
  }

  OUTLINED_FUNCTION_77_1();
  v3 = OUTLINED_FUNCTION_84_2();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1829Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_256_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t __swift_get_extra_inhabitant_index_511Tm()
{
  OUTLINED_FUNCTION_267();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_18_3(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_72_0();
  }

  else
  {
    sub_2577431B4();
    v5 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t sub_2575EE424()
{
  result = type metadata accessor for Proto_ActivationLinear(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Proto_ActivationReLU(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Proto_ActivationLeakyReLU(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Proto_ActivationThresholdedReLU(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Proto_ActivationPReLU(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Proto_ActivationTanh(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Proto_ActivationScaledTanh(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Proto_ActivationSigmoid(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Proto_ActivationSigmoidHard(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for Proto_ActivationELU(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for Proto_ActivationSoftsign(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for Proto_ActivationSoftplus(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for Proto_ActivationParametricSoftplus(319);
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                            return 0;
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

  return result;
}

void sub_2575EE5BC()
{
  sub_25759B3F4(319, &qword_27F87CA60, type metadata accessor for Proto_ActivationParams, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_27F87CCB0, type metadata accessor for Proto_LSTMWeightParams, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2577431B4();
      if (v2 <= 0x3F)
      {
        sub_25759B3F4(319, &qword_27F87CA68, type metadata accessor for Proto_LSTMParams, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2575EE738()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2575EEA20()
{
  OUTLINED_FUNCTION_382_0();
  OUTLINED_FUNCTION_270_0();
  sub_2577431B4();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_52_2();
    OUTLINED_FUNCTION_272_0();
    sub_25759B3F4(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

uint64_t sub_2575EEAC4()
{
  result = type metadata accessor for Proto_ConvolutionLayerParams(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Proto_PoolingLayerParams(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Proto_ActivationParams(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Proto_InnerProductLayerParams(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Proto_EmbeddingLayerParams(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Proto_BatchnormLayerParams(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Proto_L2NormalizeLayerParams(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Proto_SoftmaxLayerParams(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for Proto_LRNLayerParams(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for Proto_CropLayerParams(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for Proto_PaddingLayerParams(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for Proto_UpsampleLayerParams(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for Proto_ResizeBilinearLayerParams(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for Proto_CropResizeLayerParams(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for Proto_UnaryFunctionLayerParams(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for Proto_AddLayerParams(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for Proto_MultiplyLayerParams(319);
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for Proto_AverageLayerParams(319);
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for Proto_ScaleLayerParams(319);
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for Proto_BiasLayerParams(319);
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for Proto_MaxLayerParams(319);
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for Proto_MinLayerParams(319);
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for Proto_DotProductLayerParams(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for Proto_ReduceLayerParams(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for Proto_LoadConstantLayerParams(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for Proto_ReshapeLayerParams(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for Proto_FlattenLayerParams(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for Proto_PermuteLayerParams(319);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for Proto_ConcatLayerParams(319);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for Proto_SplitLayerParams(319);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for Proto_SequenceRepeatLayerParams(319);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for Proto_ReorganizeDataLayerParams(319);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for Proto_SliceLayerParams(319);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for Proto_SimpleRecurrentLayerParams(319);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for Proto_GRULayerParams(319);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(319);
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(319);
                                                                            if (v38 <= 0x3F)
                                                                            {
                                                                              result = type metadata accessor for Proto_CustomLayerParams(319);
                                                                              if (v39 <= 0x3F)
                                                                              {
                                                                                result = type metadata accessor for Proto_CopyLayerParams(319);
                                                                                if (v40 <= 0x3F)
                                                                                {
                                                                                  result = type metadata accessor for Proto_BranchLayerParams(319);
                                                                                  if (v41 <= 0x3F)
                                                                                  {
                                                                                    result = type metadata accessor for Proto_LoopLayerParams(319);
                                                                                    if (v42 <= 0x3F)
                                                                                    {
                                                                                      result = type metadata accessor for Proto_LoopBreakLayerParams(319);
                                                                                      if (v43 <= 0x3F)
                                                                                      {
                                                                                        result = type metadata accessor for Proto_LoopContinueLayerParams(319);
                                                                                        if (v44 <= 0x3F)
                                                                                        {
                                                                                          result = type metadata accessor for Proto_RangeStaticLayerParams(319);
                                                                                          if (v45 <= 0x3F)
                                                                                          {
                                                                                            result = type metadata accessor for Proto_RangeDynamicLayerParams(319);
                                                                                            if (v46 <= 0x3F)
                                                                                            {
                                                                                              result = type metadata accessor for Proto_ClipLayerParams(319);
                                                                                              if (v47 <= 0x3F)
                                                                                              {
                                                                                                result = type metadata accessor for Proto_CeilLayerParams(319);
                                                                                                if (v48 <= 0x3F)
                                                                                                {
                                                                                                  result = type metadata accessor for Proto_FloorLayerParams(319);
                                                                                                  if (v49 <= 0x3F)
                                                                                                  {
                                                                                                    result = type metadata accessor for Proto_SignLayerParams(319);
                                                                                                    if (v50 <= 0x3F)
                                                                                                    {
                                                                                                      result = type metadata accessor for Proto_RoundLayerParams(319);
                                                                                                      if (v51 <= 0x3F)
                                                                                                      {
                                                                                                        result = type metadata accessor for Proto_Exp2LayerParams(319);
                                                                                                        if (v52 <= 0x3F)
                                                                                                        {
                                                                                                          result = type metadata accessor for Proto_SinLayerParams(319);
                                                                                                          if (v53 <= 0x3F)
                                                                                                          {
                                                                                                            result = type metadata accessor for Proto_CosLayerParams(319);
                                                                                                            if (v54 <= 0x3F)
                                                                                                            {
                                                                                                              result = type metadata accessor for Proto_TanLayerParams(319);
                                                                                                              if (v55 <= 0x3F)
                                                                                                              {
                                                                                                                result = type metadata accessor for Proto_AsinLayerParams(319);
                                                                                                                if (v56 <= 0x3F)
                                                                                                                {
                                                                                                                  result = type metadata accessor for Proto_AcosLayerParams(319);
                                                                                                                  if (v57 <= 0x3F)
                                                                                                                  {
                                                                                                                    result = type metadata accessor for Proto_AtanLayerParams(319);
                                                                                                                    if (v58 <= 0x3F)
                                                                                                                    {
                                                                                                                      result = type metadata accessor for Proto_SinhLayerParams(319);
                                                                                                                      if (v59 <= 0x3F)
                                                                                                                      {
                                                                                                                        result = type metadata accessor for Proto_CoshLayerParams(319);
                                                                                                                        if (v60 <= 0x3F)
                                                                                                                        {
                                                                                                                          result = type metadata accessor for Proto_TanhLayerParams(319);
                                                                                                                          if (v61 <= 0x3F)
                                                                                                                          {
                                                                                                                            result = type metadata accessor for Proto_AsinhLayerParams(319);
                                                                                                                            if (v62 <= 0x3F)
                                                                                                                            {
                                                                                                                              result = type metadata accessor for Proto_AcoshLayerParams(319);
                                                                                                                              if (v63 <= 0x3F)
                                                                                                                              {
                                                                                                                                result = type metadata accessor for Proto_AtanhLayerParams(319);
                                                                                                                                if (v64 <= 0x3F)
                                                                                                                                {
                                                                                                                                  result = type metadata accessor for Proto_ErfLayerParams(319);
                                                                                                                                  if (v65 <= 0x3F)
                                                                                                                                  {
                                                                                                                                    result = type metadata accessor for Proto_GeluLayerParams(319);
                                                                                                                                    if (v66 <= 0x3F)
                                                                                                                                    {
                                                                                                                                      result = type metadata accessor for Proto_EqualLayerParams(319);
                                                                                                                                      if (v67 <= 0x3F)
                                                                                                                                      {
                                                                                                                                        result = type metadata accessor for Proto_NotEqualLayerParams(319);
                                                                                                                                        if (v68 <= 0x3F)
                                                                                                                                        {
                                                                                                                                          result = type metadata accessor for Proto_LessThanLayerParams(319);
                                                                                                                                          if (v69 <= 0x3F)
                                                                                                                                          {
                                                                                                                                            result = type metadata accessor for Proto_LessEqualLayerParams(319);
                                                                                                                                            if (v70 <= 0x3F)
                                                                                                                                            {
                                                                                                                                              result = type metadata accessor for Proto_GreaterThanLayerParams(319);
                                                                                                                                              if (v71 <= 0x3F)
                                                                                                                                              {
                                                                                                                                                result = type metadata accessor for Proto_GreaterEqualLayerParams(319);
                                                                                                                                                if (v72 <= 0x3F)
                                                                                                                                                {
                                                                                                                                                  result = type metadata accessor for Proto_LogicalOrLayerParams(319);
                                                                                                                                                  if (v73 <= 0x3F)
                                                                                                                                                  {
                                                                                                                                                    result = type metadata accessor for Proto_LogicalXorLayerParams(319);
                                                                                                                                                    if (v74 <= 0x3F)
                                                                                                                                                    {
                                                                                                                                                      result = type metadata accessor for Proto_LogicalNotLayerParams(319);
                                                                                                                                                      if (v75 <= 0x3F)
                                                                                                                                                      {
                                                                                                                                                        result = type metadata accessor for Proto_LogicalAndLayerParams(319);
                                                                                                                                                        if (v76 <= 0x3F)
                                                                                                                                                        {
                                                                                                                                                          result = type metadata accessor for Proto_ModBroadcastableLayerParams(319);
                                                                                                                                                          if (v77 <= 0x3F)
                                                                                                                                                          {
                                                                                                                                                            result = type metadata accessor for Proto_MinBroadcastableLayerParams(319);
                                                                                                                                                            if (v78 <= 0x3F)
                                                                                                                                                            {
                                                                                                                                                              result = type metadata accessor for Proto_MaxBroadcastableLayerParams(319);
                                                                                                                                                              if (v79 <= 0x3F)
                                                                                                                                                              {
                                                                                                                                                                result = type metadata accessor for Proto_AddBroadcastableLayerParams(319);
                                                                                                                                                                if (v80 <= 0x3F)
                                                                                                                                                                {
                                                                                                                                                                  result = type metadata accessor for Proto_PowBroadcastableLayerParams(319);
                                                                                                                                                                  if (v81 <= 0x3F)
                                                                                                                                                                  {
                                                                                                                                                                    result = type metadata accessor for Proto_DivideBroadcastableLayerParams(319);
                                                                                                                                                                    if (v82 <= 0x3F)
                                                                                                                                                                    {
                                                                                                                                                                      result = type metadata accessor for Proto_FloorDivBroadcastableLayerParams(319);
                                                                                                                                                                      if (v83 <= 0x3F)
                                                                                                                                                                      {
                                                                                                                                                                        result = type metadata accessor for Proto_MultiplyBroadcastableLayerParams(319);
                                                                                                                                                                        if (v84 <= 0x3F)
                                                                                                                                                                        {
                                                                                                                                                                          result = type metadata accessor for Proto_SubtractBroadcastableLayerParams(319);
                                                                                                                                                                          if (v85 <= 0x3F)
                                                                                                                                                                          {
                                                                                                                                                                            result = type metadata accessor for Proto_TileLayerParams(319);
                                                                                                                                                                            if (v86 <= 0x3F)
                                                                                                                                                                            {
                                                                                                                                                                              result = type metadata accessor for Proto_StackLayerParams(319);
                                                                                                                                                                              if (v87 <= 0x3F)
                                                                                                                                                                              {
                                                                                                                                                                                result = type metadata accessor for Proto_GatherLayerParams(319);
                                                                                                                                                                                if (v88 <= 0x3F)
                                                                                                                                                                                {
                                                                                                                                                                                  result = type metadata accessor for Proto_ScatterLayerParams(319);
                                                                                                                                                                                  if (v89 <= 0x3F)
                                                                                                                                                                                  {
                                                                                                                                                                                    result = type metadata accessor for Proto_GatherNDLayerParams(319);
                                                                                                                                                                                    if (v90 <= 0x3F)
                                                                                                                                                                                    {
                                                                                                                                                                                      result = type metadata accessor for Proto_ScatterNDLayerParams(319);
                                                                                                                                                                                      if (v91 <= 0x3F)
                                                                                                                                                                                      {
                                                                                                                                                                                        result = type metadata accessor for Proto_SoftmaxNDLayerParams(319);
                                                                                                                                                                                        if (v92 <= 0x3F)
                                                                                                                                                                                        {
                                                                                                                                                                                          result = type metadata accessor for Proto_GatherAlongAxisLayerParams(319);
                                                                                                                                                                                          if (v93 <= 0x3F)
                                                                                                                                                                                          {
                                                                                                                                                                                            result = type metadata accessor for Proto_ScatterAlongAxisLayerParams(319);
                                                                                                                                                                                            if (v94 <= 0x3F)
                                                                                                                                                                                            {
                                                                                                                                                                                              result = type metadata accessor for Proto_ReverseLayerParams(319);
                                                                                                                                                                                              if (v95 <= 0x3F)
                                                                                                                                                                                              {
                                                                                                                                                                                                result = type metadata accessor for Proto_ReverseSeqLayerParams(319);
                                                                                                                                                                                                if (v96 <= 0x3F)
                                                                                                                                                                                                {
                                                                                                                                                                                                  result = type metadata accessor for Proto_SplitNDLayerParams(319);
                                                                                                                                                                                                  if (v97 <= 0x3F)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    result = type metadata accessor for Proto_ConcatNDLayerParams(319);
                                                                                                                                                                                                    if (v98 <= 0x3F)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      result = type metadata accessor for Proto_TransposeLayerParams(319);
                                                                                                                                                                                                      if (v99 <= 0x3F)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        result = type metadata accessor for Proto_SliceStaticLayerParams(319);
                                                                                                                                                                                                        if (v100 <= 0x3F)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          result = type metadata accessor for Proto_SliceDynamicLayerParams(319);
                                                                                                                                                                                                          if (v101 <= 0x3F)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            result = type metadata accessor for Proto_SlidingWindowsLayerParams(319);
                                                                                                                                                                                                            if (v102 <= 0x3F)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              result = type metadata accessor for Proto_TopKLayerParams(319);
                                                                                                                                                                                                              if (v103 <= 0x3F)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                result = type metadata accessor for Proto_ArgMinLayerParams(319);
                                                                                                                                                                                                                if (v104 <= 0x3F)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  result = type metadata accessor for Proto_ArgMaxLayerParams(319);
                                                                                                                                                                                                                  if (v105 <= 0x3F)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    result = type metadata accessor for Proto_EmbeddingNDLayerParams(319);
                                                                                                                                                                                                                    if (v106 <= 0x3F)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      result = type metadata accessor for Proto_BatchedMatMulLayerParams(319);
                                                                                                                                                                                                                      if (v107 <= 0x3F)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        result = type metadata accessor for Proto_GetShapeLayerParams(319);
                                                                                                                                                                                                                        if (v108 <= 0x3F)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          result = type metadata accessor for Proto_LoadConstantNDLayerParams(319);
                                                                                                                                                                                                                          if (v109 <= 0x3F)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            result = type metadata accessor for Proto_FillLikeLayerParams(319);
                                                                                                                                                                                                                            if (v110 <= 0x3F)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              result = type metadata accessor for Proto_FillStaticLayerParams(319);
                                                                                                                                                                                                                              if (v111 <= 0x3F)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                result = type metadata accessor for Proto_FillDynamicLayerParams(319);
                                                                                                                                                                                                                                if (v112 <= 0x3F)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  result = type metadata accessor for Proto_BroadcastToLikeLayerParams(319);
                                                                                                                                                                                                                                  if (v113 <= 0x3F)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    result = type metadata accessor for Proto_BroadcastToStaticLayerParams(319);
                                                                                                                                                                                                                                    if (v114 <= 0x3F)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      result = type metadata accessor for Proto_BroadcastToDynamicLayerParams(319);
                                                                                                                                                                                                                                      if (v115 <= 0x3F)
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        result = type metadata accessor for Proto_SqueezeLayerParams(319);
                                                                                                                                                                                                                                        if (v116 <= 0x3F)
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          result = type metadata accessor for Proto_ExpandDimsLayerParams(319);
                                                                                                                                                                                                                                          if (v117 <= 0x3F)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            result = type metadata accessor for Proto_FlattenTo2DLayerParams(319);
                                                                                                                                                                                                                                            if (v118 <= 0x3F)
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              result = type metadata accessor for Proto_ReshapeLikeLayerParams(319);
                                                                                                                                                                                                                                              if (v119 <= 0x3F)
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                result = type metadata accessor for Proto_ReshapeStaticLayerParams(319);
                                                                                                                                                                                                                                                if (v120 <= 0x3F)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  result = type metadata accessor for Proto_ReshapeDynamicLayerParams(319);
                                                                                                                                                                                                                                                  if (v121 <= 0x3F)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    result = type metadata accessor for Proto_RankPreservingReshapeLayerParams(319);
                                                                                                                                                                                                                                                    if (v122 <= 0x3F)
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      result = type metadata accessor for Proto_ConstantPaddingLayerParams(319);
                                                                                                                                                                                                                                                      if (v123 <= 0x3F)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        result = type metadata accessor for Proto_RandomNormalLikeLayerParams(319);
                                                                                                                                                                                                                                                        if (v124 <= 0x3F)
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = type metadata accessor for Proto_RandomNormalStaticLayerParams(319);
                                                                                                                                                                                                                                                          if (v125 <= 0x3F)
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            result = type metadata accessor for Proto_RandomNormalDynamicLayerParams(319);
                                                                                                                                                                                                                                                            if (v126 <= 0x3F)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              result = type metadata accessor for Proto_RandomUniformLikeLayerParams(319);
                                                                                                                                                                                                                                                              if (v127 <= 0x3F)
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                result = type metadata accessor for Proto_RandomUniformStaticLayerParams(319);
                                                                                                                                                                                                                                                                if (v128 <= 0x3F)
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  result = type metadata accessor for Proto_RandomUniformDynamicLayerParams(319);
                                                                                                                                                                                                                                                                  if (v129 <= 0x3F)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    result = type metadata accessor for Proto_RandomBernoulliLikeLayerParams(319);
                                                                                                                                                                                                                                                                    if (v130 <= 0x3F)
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      result = type metadata accessor for Proto_RandomBernoulliStaticLayerParams(319);
                                                                                                                                                                                                                                                                      if (v131 <= 0x3F)
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        result = type metadata accessor for Proto_RandomBernoulliDynamicLayerParams(319);
                                                                                                                                                                                                                                                                        if (v132 <= 0x3F)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          result = type metadata accessor for Proto_CategoricalDistributionLayerParams(319);
                                                                                                                                                                                                                                                                          if (v133 <= 0x3F)
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = type metadata accessor for Proto_ReduceL1LayerParams(319);
                                                                                                                                                                                                                                                                            if (v134 <= 0x3F)
                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                              result = type metadata accessor for Proto_ReduceL2LayerParams(319);
                                                                                                                                                                                                                                                                              if (v135 <= 0x3F)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                result = type metadata accessor for Proto_ReduceMaxLayerParams(319);
                                                                                                                                                                                                                                                                                if (v136 <= 0x3F)
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                  result = type metadata accessor for Proto_ReduceMinLayerParams(319);
                                                                                                                                                                                                                                                                                  if (v137 <= 0x3F)
                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                    result = type metadata accessor for Proto_ReduceSumLayerParams(319);
                                                                                                                                                                                                                                                                                    if (v138 <= 0x3F)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                      result = type metadata accessor for Proto_ReduceProdLayerParams(319);
                                                                                                                                                                                                                                                                                      if (v139 <= 0x3F)
                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                        result = type metadata accessor for Proto_ReduceMeanLayerParams(319);
                                                                                                                                                                                                                                                                                        if (v140 <= 0x3F)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          result = type metadata accessor for Proto_ReduceLogSumLayerParams(319);
                                                                                                                                                                                                                                                                                          if (v141 <= 0x3F)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                            result = type metadata accessor for Proto_ReduceSumSquareLayerParams(319);
                                                                                                                                                                                                                                                                                            if (v142 <= 0x3F)
                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                              result = type metadata accessor for Proto_ReduceLogSumExpLayerParams(319);
                                                                                                                                                                                                                                                                                              if (v143 <= 0x3F)
                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                result = type metadata accessor for Proto_WhereNonZeroLayerParams(319);
                                                                                                                                                                                                                                                                                                if (v144 <= 0x3F)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                  result = type metadata accessor for Proto_MatrixBandPartLayerParams(319);
                                                                                                                                                                                                                                                                                                  if (v145 <= 0x3F)
                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                    result = type metadata accessor for Proto_LowerTriangularLayerParams(319);
                                                                                                                                                                                                                                                                                                    if (v146 <= 0x3F)
                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                      result = type metadata accessor for Proto_UpperTriangularLayerParams(319);
                                                                                                                                                                                                                                                                                                      if (v147 <= 0x3F)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                        result = type metadata accessor for Proto_WhereBroadcastableLayerParams(319);
                                                                                                                                                                                                                                                                                                        if (v148 <= 0x3F)
                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                          result = type metadata accessor for Proto_LayerNormalizationLayerParams(319);
                                                                                                                                                                                                                                                                                                          if (v149 <= 0x3F)
                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                            result = type metadata accessor for Proto_NonMaximumSuppressionLayerParams(319);
                                                                                                                                                                                                                                                                                                            if (v150 <= 0x3F)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                              result = type metadata accessor for Proto_OneHotLayerParams(319);
                                                                                                                                                                                                                                                                                                              if (v151 <= 0x3F)
                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                result = type metadata accessor for Proto_CumSumLayerParams(319);
                                                                                                                                                                                                                                                                                                                if (v152 <= 0x3F)
                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for Proto_ClampedReLULayerParams(319);
                                                                                                                                                                                                                                                                                                                  if (v153 <= 0x3F)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for Proto_ArgSortLayerParams(319);
                                                                                                                                                                                                                                                                                                                    if (v154 <= 0x3F)
                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for Proto_Pooling3DLayerParams(319);
                                                                                                                                                                                                                                                                                                                      if (v155 <= 0x3F)
                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for Proto_GlobalPooling3DLayerParams(319);
                                                                                                                                                                                                                                                                                                                        if (v156 <= 0x3F)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for Proto_SliceBySizeLayerParams(319);
                                                                                                                                                                                                                                                                                                                          if (v157 <= 0x3F)
                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for Proto_Convolution3DLayerParams(319);
                                                                                                                                                                                                                                                                                                                            if (v158 <= 0x3F)
                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                                                                                                                                                                                                                                                                              return 0;
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

  return result;
}

uint64_t sub_2575EFFC0()
{
  OUTLINED_FUNCTION_270_0();
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_493Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 8));
  }

  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_96_0();
  v4 = OUTLINED_FUNCTION_13_2(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2575F02B0()
{
  sub_2575ED254(319, &qword_27F87A348, MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      sub_25759B3F4(319, &qword_27F87CF78, type metadata accessor for Proto_SamplingMode, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_25759B3F4(319, &qword_27F87CF80, type metadata accessor for Proto_BoxCoordinatesMode, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_851Tm()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 20);
  sub_2577431B4();
  v2 = OUTLINED_FUNCTION_173_1();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t __swift_store_extra_inhabitant_index_852Tm()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 20);
  sub_2577431B4();
  v2 = OUTLINED_FUNCTION_115_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t __swift_get_extra_inhabitant_index_743Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_7(*v1);
  }

  v4 = OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_18_3(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_117_0();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_222();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_96_0();
  }

  v9 = OUTLINED_FUNCTION_13_2(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_index_744Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_392_0();
    v2 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_122_0();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_222();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_255_0();
    }

    v7 = OUTLINED_FUNCTION_48_1(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_2575F06E0()
{
  OUTLINED_FUNCTION_382_0();
  OUTLINED_FUNCTION_40_4(v0, &qword_27F87A348, MEMORY[0x277D84D38]);
  if (v1 <= 0x3F)
  {
    sub_2577431B4();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_52_2();
      OUTLINED_FUNCTION_272_0();
      sub_25759B3F4(v3, v4, v5, v6);
      if (v7 <= 0x3F)
      {
        OUTLINED_FUNCTION_315_0();
        OUTLINED_FUNCTION_78_0();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_97_0();
      }
    }
  }
}

void sub_2575F0820()
{
  sub_2575ED254(319, &qword_27F87A658, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      sub_25759B3F4(319, &qword_27F87CFE0, type metadata accessor for Proto_QuantizationParams, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1489Tm()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 36);
  sub_2577431B4();
  v2 = OUTLINED_FUNCTION_173_1();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t __swift_store_extra_inhabitant_index_1490Tm()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 36);
  sub_2577431B4();
  v2 = OUTLINED_FUNCTION_115_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_2575F0AA0()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1()
{
  OUTLINED_FUNCTION_52_1();
  if (v4)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 8));
  }

  v6 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_18_3(v7);
  if (*(v8 + 84) == v6)
  {
    OUTLINED_FUNCTION_117_0();
  }

  else
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_96_0();
  }

  v10 = OUTLINED_FUNCTION_13_2(v9);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void __swift_store_extra_inhabitant_indexTm_1()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_155_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
    OUTLINED_FUNCTION_18_3(v4);
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_122_0();
    }

    else
    {
      sub_2577431B4();
      OUTLINED_FUNCTION_255_0();
    }

    v7 = OUTLINED_FUNCTION_48_1(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_2575F0D48()
{
  OUTLINED_FUNCTION_345_0();
  v0 = OUTLINED_FUNCTION_52_2();
  sub_25759B3F4(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    OUTLINED_FUNCTION_302_0();
    sub_2577431B4();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_315_0();
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1711Tm()
{
  OUTLINED_FUNCTION_264_0();
  if (v1)
  {
    v2 = *v0;
    OUTLINED_FUNCTION_238_0();
    v5 = (v3 + v4) & 0x7FFFFFFF;
    if (v6)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_117_0();
    v9 = OUTLINED_FUNCTION_13_2(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void __swift_store_extra_inhabitant_index_1712Tm()
{
  OUTLINED_FUNCTION_107_0();
  if (v2)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_122_0();
    v4 = OUTLINED_FUNCTION_48_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_2575F0EEC()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1078Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_376();
  v6 = sub_2577431B4();
  v7 = OUTLINED_FUNCTION_18_3(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_7_7(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_2575F102C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_270_0();
  result = sub_2577431B4();
  if (v6 <= 0x3F)
  {
    v7 = OUTLINED_FUNCTION_302_0();
    result = a4(v7);
    if (v8 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_97_0();
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1174Tm()
{
  OUTLINED_FUNCTION_52_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_7(*v1);
  }

  v4 = OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_18_3(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_271_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C788, &unk_257751EA0);
    OUTLINED_FUNCTION_290_0();
  }

  v7 = OUTLINED_FUNCTION_13_2(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_1175Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    v2 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_274_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C788, &unk_257751EA0);
      OUTLINED_FUNCTION_295_0();
    }

    v5 = OUTLINED_FUNCTION_48_1(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_2575F1220()
{
  sub_25759B3F4(319, &qword_27F87C790, type metadata accessor for Proto_NeuralNetworkLayer, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_27F87C798, type metadata accessor for Proto_NeuralNetworkPreprocessing, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2577431B4();
      if (v2 <= 0x3F)
      {
        sub_25759B3F4(319, &qword_2815376E8, type metadata accessor for Proto_NetworkUpdateParameters, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_78_0();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_97_0();
        }
      }
    }
  }
}

void sub_2575F1398()
{
  sub_2577431B4();
  if (v0 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_27F87CD48, type metadata accessor for Proto_NeuralNetwork, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_770Tm()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 24);
  sub_2577431B4();
  v2 = OUTLINED_FUNCTION_173_1();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t __swift_store_extra_inhabitant_index_771Tm()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 24);
  sub_2577431B4();
  v2 = OUTLINED_FUNCTION_115_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_2575F154C()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_315_0();
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1300Tm()
{
  OUTLINED_FUNCTION_267();
  v1 = sub_2577431B4();
  OUTLINED_FUNCTION_18_3(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_72_0();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_222();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v3 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_1301Tm()
{
  OUTLINED_FUNCTION_392_0();
  OUTLINED_FUNCTION_267();
  v1 = sub_2577431B4();
  OUTLINED_FUNCTION_18_3(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_222();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_24_5();
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void sub_2575F1728()
{
  OUTLINED_FUNCTION_382_0();
  OUTLINED_FUNCTION_270_0();
  sub_2577431B4();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_52_2();
    OUTLINED_FUNCTION_272_0();
    sub_25759B3F4(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

void __swift_store_extra_inhabitant_index_977Tm()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_122_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_2575F1864()
{
  v0 = OUTLINED_FUNCTION_270_0();
  sub_25759B3F4(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    OUTLINED_FUNCTION_302_0();
    sub_2577431B4();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

unint64_t sub_2575F18E4()
{
  result = qword_27F87D0B8;
  if (!qword_27F87D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D0B8);
  }

  return result;
}

unint64_t sub_2575F196C()
{
  result = qword_27F87D0D0;
  if (!qword_27F87D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D0D0);
  }

  return result;
}

unint64_t sub_2575F19C4()
{
  result = qword_27F87D0D8;
  if (!qword_27F87D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D0D8);
  }

  return result;
}

unint64_t sub_2575F1A1C()
{
  result = qword_27F87D0E0;
  if (!qword_27F87D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D0E0);
  }

  return result;
}

unint64_t sub_2575F1AA4()
{
  result = qword_27F87D0F8;
  if (!qword_27F87D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D0F8);
  }

  return result;
}

unint64_t sub_2575F1AFC()
{
  result = qword_27F87D100;
  if (!qword_27F87D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D100);
  }

  return result;
}

unint64_t sub_2575F1B54()
{
  result = qword_27F87D108;
  if (!qword_27F87D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D108);
  }

  return result;
}

unint64_t sub_2575F1BDC()
{
  result = qword_27F87D120;
  if (!qword_27F87D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D120);
  }

  return result;
}

unint64_t sub_2575F1C34()
{
  result = qword_27F87D128;
  if (!qword_27F87D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D128);
  }

  return result;
}

unint64_t sub_2575F1C8C()
{
  result = qword_27F87D130;
  if (!qword_27F87D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D130);
  }

  return result;
}

unint64_t sub_2575F1D14()
{
  result = qword_27F87D148;
  if (!qword_27F87D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D148);
  }

  return result;
}

unint64_t sub_2575F1D6C()
{
  result = qword_27F87D150;
  if (!qword_27F87D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D150);
  }

  return result;
}

unint64_t sub_2575F1DC4()
{
  result = qword_27F87D158;
  if (!qword_27F87D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D158);
  }

  return result;
}

unint64_t sub_2575F1E4C()
{
  result = qword_27F87D170;
  if (!qword_27F87D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D170);
  }

  return result;
}

unint64_t sub_2575F1EA4()
{
  result = qword_27F87D178;
  if (!qword_27F87D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D178);
  }

  return result;
}

unint64_t sub_2575F1EFC()
{
  result = qword_27F87D180;
  if (!qword_27F87D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D180);
  }

  return result;
}

unint64_t sub_2575F1F84()
{
  result = qword_27F87D198;
  if (!qword_27F87D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D198);
  }

  return result;
}

unint64_t sub_2575F1FDC()
{
  result = qword_27F87D1A0;
  if (!qword_27F87D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1A0);
  }

  return result;
}

unint64_t sub_2575F2034()
{
  result = qword_27F87D1A8;
  if (!qword_27F87D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1A8);
  }

  return result;
}

unint64_t sub_2575F20BC()
{
  result = qword_27F87D1C0;
  if (!qword_27F87D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1C0);
  }

  return result;
}

unint64_t sub_2575F2114()
{
  result = qword_27F87D1C8;
  if (!qword_27F87D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1C8);
  }

  return result;
}

unint64_t sub_2575F216C()
{
  result = qword_27F87D1D0;
  if (!qword_27F87D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1D0);
  }

  return result;
}

unint64_t sub_2575F21F4()
{
  result = qword_27F87D1E8;
  if (!qword_27F87D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1E8);
  }

  return result;
}

unint64_t sub_2575F224C()
{
  result = qword_27F87D1F0;
  if (!qword_27F87D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1F0);
  }

  return result;
}

unint64_t sub_2575F22A4()
{
  result = qword_27F87D1F8;
  if (!qword_27F87D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D1F8);
  }

  return result;
}

unint64_t sub_2575F232C()
{
  result = qword_27F87D210;
  if (!qword_27F87D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D210);
  }

  return result;
}

unint64_t sub_2575F2384()
{
  result = qword_27F87D218;
  if (!qword_27F87D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D218);
  }

  return result;
}

unint64_t sub_2575F23DC()
{
  result = qword_27F87D220;
  if (!qword_27F87D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D220);
  }

  return result;
}

unint64_t sub_2575F2464()
{
  result = qword_27F87D238;
  if (!qword_27F87D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D238);
  }

  return result;
}

unint64_t sub_2575F24BC()
{
  result = qword_27F87D240;
  if (!qword_27F87D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D240);
  }

  return result;
}

unint64_t sub_2575F2514()
{
  result = qword_27F87D248;
  if (!qword_27F87D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D248);
  }

  return result;
}

unint64_t sub_2575F259C()
{
  result = qword_27F87D260;
  if (!qword_27F87D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D260);
  }

  return result;
}

unint64_t sub_2575F25F4()
{
  result = qword_27F87D268;
  if (!qword_27F87D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D268);
  }

  return result;
}

unint64_t sub_2575F264C()
{
  result = qword_27F87D270;
  if (!qword_27F87D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D270);
  }

  return result;
}

unint64_t sub_2575F26D4()
{
  result = qword_27F87D288;
  if (!qword_27F87D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D288);
  }

  return result;
}

unint64_t sub_2575F272C()
{
  result = qword_27F87D290;
  if (!qword_27F87D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D290);
  }

  return result;
}

unint64_t sub_2575F2784()
{
  result = qword_27F87D298;
  if (!qword_27F87D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D298);
  }

  return result;
}

unint64_t sub_2575F280C()
{
  result = qword_27F87D2B0;
  if (!qword_27F87D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D2B0);
  }

  return result;
}

unint64_t sub_2575F2864()
{
  result = qword_27F87D2B8;
  if (!qword_27F87D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D2B8);
  }

  return result;
}

unint64_t sub_2575F28BC()
{
  result = qword_27F87D2C0;
  if (!qword_27F87D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D2C0);
  }

  return result;
}

unint64_t sub_2575F2944()
{
  result = qword_27F87D2D8;
  if (!qword_27F87D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D2D8);
  }

  return result;
}

unint64_t sub_2575F299C()
{
  result = qword_27F87D2E0;
  if (!qword_27F87D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D2E0);
  }

  return result;
}

unint64_t sub_2575F29F4()
{
  result = qword_27F87D2E8;
  if (!qword_27F87D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D2E8);
  }

  return result;
}

unint64_t sub_2575F2A7C()
{
  result = qword_27F87D300;
  if (!qword_27F87D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D300);
  }

  return result;
}

unint64_t sub_2575F2AD4()
{
  result = qword_27F87D308;
  if (!qword_27F87D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D308);
  }

  return result;
}

unint64_t sub_2575F2B2C()
{
  result = qword_27F87D310;
  if (!qword_27F87D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D310);
  }

  return result;
}

unint64_t sub_2575F2BB4()
{
  result = qword_27F87D328;
  if (!qword_27F87D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D328);
  }

  return result;
}

unint64_t sub_2575F2C0C()
{
  result = qword_27F87D330;
  if (!qword_27F87D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D330);
  }

  return result;
}

unint64_t sub_2575F2C64()
{
  result = qword_27F87D338;
  if (!qword_27F87D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D338);
  }

  return result;
}

unint64_t sub_2575F2CEC()
{
  result = qword_27F87D350;
  if (!qword_27F87D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D350);
  }

  return result;
}

unint64_t sub_2575F2D44()
{
  result = qword_27F87D358;
  if (!qword_27F87D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D358);
  }

  return result;
}

unint64_t sub_2575F2D9C()
{
  result = qword_27F87D360;
  if (!qword_27F87D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D360);
  }

  return result;
}

unint64_t sub_2575F2E24()
{
  result = qword_27F87D378;
  if (!qword_27F87D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D378);
  }

  return result;
}

unint64_t sub_2575F2E7C()
{
  result = qword_27F87D380;
  if (!qword_27F87D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D380);
  }

  return result;
}

unint64_t sub_2575F2ED4()
{
  result = qword_27F87D388;
  if (!qword_27F87D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D388);
  }

  return result;
}

unint64_t sub_2575F2F5C()
{
  result = qword_27F87D3A0;
  if (!qword_27F87D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3A0);
  }

  return result;
}

unint64_t sub_2575F2FB4()
{
  result = qword_27F87D3A8;
  if (!qword_27F87D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3A8);
  }

  return result;
}

unint64_t sub_2575F300C()
{
  result = qword_27F87D3B0;
  if (!qword_27F87D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3B0);
  }

  return result;
}

unint64_t sub_2575F3094()
{
  result = qword_27F87D3C8;
  if (!qword_27F87D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3C8);
  }

  return result;
}

unint64_t sub_2575F30EC()
{
  result = qword_27F87D3D0;
  if (!qword_27F87D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3D0);
  }

  return result;
}

unint64_t sub_2575F3144()
{
  result = qword_27F87D3D8;
  if (!qword_27F87D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3D8);
  }

  return result;
}

unint64_t sub_2575F31CC()
{
  result = qword_27F87D3F0;
  if (!qword_27F87D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3F0);
  }

  return result;
}

unint64_t sub_2575F3224()
{
  result = qword_27F87D3F8;
  if (!qword_27F87D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87D3F8);
  }

  return result;
}

void sub_2575F3278()
{
  OUTLINED_FUNCTION_165_0();
  v2 = v1;
  v14 = v3;
  v5 = v4;
  v6 = v0;
  v8 = *(v7(0) + 20);
  v9 = *(v0 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = v5(0);
    OUTLINED_FUNCTION_89_1(v12);
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_71_0();
    *(v6 + v8) = v14(v13);
  }

  OUTLINED_FUNCTION_313_0();
  OUTLINED_FUNCTION_291_0();
  v2();
  OUTLINED_FUNCTION_166_0();
}

uint64_t sub_2575F3324()
{
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_2575F3428();
        break;
      case 2:
        sub_2575F34F4();
        break;
      case 3:
        sub_2575F35D0();
        break;
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        continue;
      case 10:
        sub_2575F36AC();
        break;
      default:
        if (result == 20)
        {
          sub_2575F3788();
        }

        break;
    }
  }
}

uint64_t sub_2575F3428()
{
  swift_beginAccess();
  type metadata accessor for Proto_LossLayer(0);
  sub_2575FB760(&qword_27F87D4A8, type metadata accessor for Proto_LossLayer);
  sub_2577433C4();
  return swift_endAccess();
}

uint64_t sub_2575F34F4()
{
  swift_beginAccess();
  type metadata accessor for Proto_Optimizer(0);
  sub_2575FB760(&qword_27F87D448, type metadata accessor for Proto_Optimizer);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575F35D0()
{
  swift_beginAccess();
  type metadata accessor for Proto_Int64Parameter(0);
  sub_2575FB760(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575F36AC()
{
  swift_beginAccess();
  type metadata accessor for Proto_BoolParameter(0);
  sub_2575FB760(&qword_27F87F930, type metadata accessor for Proto_BoolParameter);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575F3788()
{
  swift_beginAccess();
  type metadata accessor for Proto_Int64Parameter(0);
  sub_2575FB760(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575F3864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(*(a1 + 16) + 16) || (type metadata accessor for Proto_LossLayer(0), sub_2575FB760(&qword_27F87D4A8, type metadata accessor for Proto_LossLayer), , sub_257743564(), result = , !v4))
  {
    result = sub_2575F39CC(a1, a2, a3, a4);
    if (!v4)
    {
      sub_2575F3BC0(a1, a2, a3, a4);
      sub_2575F3DB4(a1, a2, a3, a4);
      return sub_2575F3FA8(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_2575F39CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F938, &qword_257767338);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_Optimizer(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87F938, &qword_257767338);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87D448, type metadata accessor for Proto_Optimizer);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575F3BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_Int64Parameter(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87BD30, &unk_2577504D0);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575F3DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F928, &qword_257767330);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_BoolParameter(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87F928, &qword_257767330);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87F930, type metadata accessor for Proto_BoolParameter);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575F3FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_Int64Parameter(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87BD30, &unk_2577504D0);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter);
  sub_257743574();
  return sub_257609BCC();
}

BOOL sub_2575F419C(uint64_t a1, uint64_t a2)
{
  v80 = type metadata accessor for Proto_BoolParameter(0);
  v4 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v74 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F940, &unk_257767340);
  v6 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v81 = v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F928, &qword_257767330);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v76 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v88 = v73 - v12;
  v87 = type metadata accessor for Proto_Int64Parameter(0);
  v13 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v77 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BED8, &qword_2577510C8);
  v15 = *(*(v86 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v86);
  v75 = v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v85 = v73 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v73[2] = v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v78 = v73 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v82 = v73 - v26;
  MEMORY[0x28223BE20](v25);
  v84 = v73 - v27;
  v28 = type metadata accessor for Proto_Optimizer(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v83 = v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F948, &qword_257767350);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = v73 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F938, &qword_257767338);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  MEMORY[0x28223BE20](v37);
  v39 = v73 - v38;
  swift_beginAccess();
  v40 = *(a1 + 16);
  swift_beginAccess();
  v41 = *(a2 + 16);

  sub_257482CE4();
  v43 = v42;

  if ((v43 & 1) == 0)
  {
    goto LABEL_27;
  }

  v89 = a2;
  swift_beginAccess();
  v73[1] = a1;
  sub_257487308();
  swift_beginAccess();
  v44 = *(v31 + 48);
  sub_257487308();
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v34, 1, v28) == 1)
  {
    sub_2574695E4(v39, &qword_27F87F938, &qword_257767338);
    if (__swift_getEnumTagSinglePayload(&v34[v44], 1, v28) == 1)
    {
      sub_2574695E4(v34, &qword_27F87F938, &qword_257767338);
      goto LABEL_10;
    }

LABEL_8:
    sub_2574695E4(v34, &qword_27F87F948, &qword_257767350);
    goto LABEL_27;
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(&v34[v44], 1, v28) == 1)
  {
    sub_2574695E4(v39, &qword_27F87F938, &qword_257767338);
    sub_257609BCC();
    goto LABEL_8;
  }

  sub_257609B78();
  sub_2575F86BC();
  v46 = v45;
  sub_257609BCC();
  sub_2574695E4(v39, &qword_27F87F938, &qword_257767338);
  sub_257609BCC();
  sub_2574695E4(v34, &qword_27F87F938, &qword_257767338);
  if ((v46 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_10:
  swift_beginAccess();
  v47 = v84;
  sub_257487308();
  swift_beginAccess();
  v48 = v86;
  v49 = *(v86 + 48);
  v50 = v85;
  sub_257487308();
  sub_257487308();
  v51 = v87;
  if (__swift_getEnumTagSinglePayload(v50, 1, v87) == 1)
  {
    sub_2574695E4(v47, &qword_27F87BD30, &unk_2577504D0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50 + v49, 1, v51);
    v53 = v88;
    if (EnumTagSinglePayload == 1)
    {
      sub_2574695E4(v50, &qword_27F87BD30, &unk_2577504D0);
      goto LABEL_17;
    }

LABEL_15:
    v55 = &qword_27F87BED8;
    v56 = &qword_2577510C8;
    v57 = v50;
LABEL_26:
    sub_2574695E4(v57, v55, v56);
    goto LABEL_27;
  }

  sub_257487308();
  v54 = __swift_getEnumTagSinglePayload(v50 + v49, 1, v51);
  v53 = v88;
  if (v54 == 1)
  {
    sub_2574695E4(v47, &qword_27F87BD30, &unk_2577504D0);
    sub_257609BCC();
    goto LABEL_15;
  }

  sub_257609B78();
  LODWORD(v83) = sub_257615594();
  sub_257609BCC();
  sub_2574695E4(v47, &qword_27F87BD30, &unk_2577504D0);
  sub_257609BCC();
  sub_2574695E4(v50, &qword_27F87BD30, &unk_2577504D0);
  if ((v83 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  swift_beginAccess();
  sub_257487308();
  swift_beginAccess();
  v58 = *(v79 + 48);
  v59 = v81;
  sub_257487308();
  v60 = v59;
  sub_257487308();
  v61 = v80;
  if (__swift_getEnumTagSinglePayload(v59, 1, v80) != 1)
  {
    v66 = v76;
    sub_257487308();
    if (__swift_getEnumTagSinglePayload(v60 + v58, 1, v61) == 1)
    {
      sub_2574695E4(v53, &qword_27F87F928, &qword_257767330);
      sub_257609BCC();
      goto LABEL_25;
    }

    v68 = v74;
    sub_257609B78();
    v69 = v60;
    if (*v66 != *v68)
    {
      sub_257609BCC();
      sub_2574695E4(v88, &qword_27F87F928, &qword_257767330);
      sub_257609BCC();
      v57 = v60;
      v55 = &qword_27F87F928;
      v56 = &qword_257767330;
      goto LABEL_26;
    }

    v70 = *(v61 + 20);
    sub_2577431B4();
    sub_2575FB760(&qword_27F879B68, MEMORY[0x277D216C8]);
    LOBYTE(v70) = sub_257743644();
    sub_257609BCC();
    sub_2574695E4(v88, &qword_27F87F928, &qword_257767330);
    sub_257609BCC();
    v71 = v69;
    v63 = v78;
    sub_2574695E4(v71, &qword_27F87F928, &qword_257767330);
    if (v70)
    {
      goto LABEL_20;
    }

LABEL_27:

    return 0;
  }

  sub_2574695E4(v53, &qword_27F87F928, &qword_257767330);
  v62 = __swift_getEnumTagSinglePayload(v59 + v58, 1, v61);
  v63 = v78;
  if (v62 != 1)
  {
LABEL_25:
    v55 = &qword_27F87F940;
    v56 = &unk_257767340;
    v57 = v60;
    goto LABEL_26;
  }

  sub_2574695E4(v59, &qword_27F87F928, &qword_257767330);
LABEL_20:
  swift_beginAccess();
  sub_257487308();
  swift_beginAccess();
  v64 = *(v48 + 48);
  v65 = v75;
  sub_257487308();
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v65, 1, v51) == 1)
  {

    sub_2574695E4(v63, &qword_27F87BD30, &unk_2577504D0);
    if (__swift_getEnumTagSinglePayload(v65 + v64, 1, v51) == 1)
    {
      sub_2574695E4(v65, &qword_27F87BD30, &unk_2577504D0);
      return 1;
    }

    goto LABEL_34;
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v65 + v64, 1, v51) == 1)
  {

    sub_2574695E4(v78, &qword_27F87BD30, &unk_2577504D0);
    sub_257609BCC();
LABEL_34:
    sub_2574695E4(v65, &qword_27F87BED8, &qword_2577510C8);
    return 0;
  }

  sub_257609B78();
  v72 = sub_257615594();

  sub_257609BCC();
  sub_2574695E4(v78, &qword_27F87BD30, &unk_2577504D0);
  sub_257609BCC();
  sub_2574695E4(v65, &qword_27F87BD30, &unk_2577504D0);
  return (v72 & 1) != 0;
}

uint64_t sub_2575F51D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F920, type metadata accessor for Proto_NetworkUpdateParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575F5274(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D4C8, type metadata accessor for Proto_NetworkUpdateParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575F533C()
{
  sub_2575FB760(&qword_27F87D4C8, type metadata accessor for Proto_NetworkUpdateParameters);

  return sub_257743424();
}

uint64_t sub_2575F53FC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9F10);
  __swift_project_value_buffer(v0, qword_27F8E9F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "categoricalCrossEntropyLossLayer";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 11;
  *v12 = "meanSquaredErrorLossLayer";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575F5608()
{
  OUTLINED_FUNCTION_100_1();
  while (1)
  {
    OUTLINED_FUNCTION_194();
    result = sub_257743234();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 11:
        OUTLINED_FUNCTION_353_0();
        v0();
        break;
      case 10:
        OUTLINED_FUNCTION_353_0();
        v2();
        break;
      case 1:
        OUTLINED_FUNCTION_144_0();
        sub_257743394();
        break;
    }
  }

  return result;
}

uint64_t sub_2575F56A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for Proto_CategoricalCrossEntropyLossLayer(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C48, &qword_257744560);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Proto_LossLayer.OneOf_LossLayerType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F978, &qword_257767380);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for Proto_LossLayer(0) + 20);
  v30 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879C48, &qword_257744560);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609BCC();
    }

    else
    {
      sub_2574695E4(v22, &qword_27F87F978, &qword_257767380);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_2575FB760(&qword_27F87D488, type metadata accessor for Proto_CategoricalCrossEntropyLossLayer);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F978, &qword_257767380);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F978, &qword_257767380);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F978, &qword_257767380);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v32;
  sub_2574695E4(v22, &qword_27F87F978, &qword_257767380);
  v28 = v29;
  v27 = v30;
  sub_2574695E4(v30 + v29, &qword_27F879C48, &qword_257744560);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t sub_2575F5BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for Proto_MeanSquaredErrorLossLayer(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C48, &qword_257744560);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Proto_LossLayer.OneOf_LossLayerType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F980, &qword_257767388);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for Proto_LossLayer(0) + 20);
  v30 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879C48, &qword_257744560);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v22, &qword_27F87F980, &qword_257767388);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D468, type metadata accessor for Proto_MeanSquaredErrorLossLayer);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F980, &qword_257767388);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F980, &qword_257767388);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F980, &qword_257767388);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v32;
  sub_2574695E4(v22, &qword_27F87F980, &qword_257767388);
  v28 = v29;
  v27 = v30;
  sub_2574695E4(v30 + v29, &qword_27F879C48, &qword_257744560);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

void sub_2575F60B0()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_2_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C48, &qword_257744560);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_4();
  v6 = *v0;
  v7 = v0[1];
  OUTLINED_FUNCTION_1_6();
  if (!v8 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v1))
  {
    v9 = type metadata accessor for Proto_LossLayer(0);
    v10 = *(v9 + 20);
    OUTLINED_FUNCTION_375_0();
    v11 = type metadata accessor for Proto_LossLayer.OneOf_LossLayerType(0);
    v12 = OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_155(v12, v13, v11);
    if (v14)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_311();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = OUTLINED_FUNCTION_3_9();
      sub_2575F63E4(v15, v16, v17, v18);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_3_9();
      sub_2575F61C4(v19, v20, v21, v22);
    }

    OUTLINED_FUNCTION_58_0();
    sub_257609BCC();
    if (!v1)
    {
LABEL_8:
      v23 = *(v9 + 24);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2575F61C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C48, &qword_257744560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_CategoricalCrossEntropyLossLayer(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_LossLayer(0) + 20);
  sub_257487308();
  v11 = type metadata accessor for Proto_LossLayer.OneOf_LossLayerType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C48, &qword_257744560);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D488, type metadata accessor for Proto_CategoricalCrossEntropyLossLayer);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575F63E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C48, &qword_257744560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_MeanSquaredErrorLossLayer(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_LossLayer(0) + 20);
  sub_257487308();
  v11 = type metadata accessor for Proto_LossLayer.OneOf_LossLayerType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C48, &qword_257744560);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D468, type metadata accessor for Proto_MeanSquaredErrorLossLayer);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

void sub_2575F6604()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_0_0();
  v5 = type metadata accessor for Proto_LossLayer.OneOf_LossLayerType(v4);
  v6 = OUTLINED_FUNCTION_42_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C48, &qword_257744560);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_75_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C50, &qword_257744568);
  OUTLINED_FUNCTION_41_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_32_3();
  v17 = *v1 == *v0 && v1[1] == v0[1];
  if (!v17 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_15;
  }

  v18 = type metadata accessor for Proto_LossLayer(0);
  OUTLINED_FUNCTION_335_0(v18);
  OUTLINED_FUNCTION_149_1();
  OUTLINED_FUNCTION_129_1();
  OUTLINED_FUNCTION_65(v2);
  if (v17)
  {
    OUTLINED_FUNCTION_65(v2 + v3);
    if (v17)
    {
      sub_2574695E4(v2, &qword_27F879C48, &qword_257744560);
LABEL_17:
      OUTLINED_FUNCTION_321_0();
      OUTLINED_FUNCTION_1_16();
      sub_2575FB760(v23, v24);
      v20 = OUTLINED_FUNCTION_4_2();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_277();
  sub_257487308();
  OUTLINED_FUNCTION_65(v2 + v3);
  if (v19)
  {
    OUTLINED_FUNCTION_58_0();
    sub_257609BCC();
LABEL_14:
    sub_2574695E4(v2, &qword_27F879C50, &qword_257744568);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_254_0();
  OUTLINED_FUNCTION_360();
  sub_257533840();
  v22 = v21;
  sub_257609BCC();
  OUTLINED_FUNCTION_357_0();
  sub_2574695E4(v2, &qword_27F879C48, &qword_257744560);
  if (v22)
  {
    goto LABEL_17;
  }

LABEL_15:
  v20 = 0;
LABEL_18:
  OUTLINED_FUNCTION_65_0(v20);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2575F68F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F970, type metadata accessor for Proto_LossLayer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575F6994(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D4A8, type metadata accessor for Proto_LossLayer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575F6A5C()
{
  sub_2575FB760(&qword_27F87D4A8, type metadata accessor for Proto_LossLayer);

  return sub_257743424();
}

uint64_t sub_2575F6ADC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9F28);
  __swift_project_value_buffer(v0, qword_27F8E9F28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "input";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575F6D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F988, type metadata accessor for Proto_CategoricalCrossEntropyLossLayer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575F6DB8(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D488, type metadata accessor for Proto_CategoricalCrossEntropyLossLayer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575F6E80()
{
  sub_2575FB760(&qword_27F87D488, type metadata accessor for Proto_CategoricalCrossEntropyLossLayer);

  return sub_257743424();
}

uint64_t sub_2575F6F2C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9F40);
  __swift_project_value_buffer(v0, qword_27F8E9F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "input";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575F70F4()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743394();
    }
  }

  return result;
}

void sub_2575F7154()
{
  OUTLINED_FUNCTION_188_0();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  v5 = *v0;
  v6 = v0[1];
  OUTLINED_FUNCTION_1_6();
  if (!v7 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v1))
  {
    v8 = *(v2 + 16);
    v9 = *(v2 + 24);
    OUTLINED_FUNCTION_1_6();
    if (!v10 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v1))
    {
      v11 = *(v4(0) + 24);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2575F71E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_380_0(v6);
  v9 = v9 && v7 == v8;
  if (!v9 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 16) == *(v3 + 16) && *(v4 + 24) == *(v3 + 24);
  if (!v10 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v11 = a3(0);
  OUTLINED_FUNCTION_308_0(v11);
  OUTLINED_FUNCTION_1_16();
  sub_2575FB760(v12, v13);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2575F72D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = sub_2577431B4();
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_311_0();

  return v7(v6);
}

uint64_t sub_2575F736C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F990, type metadata accessor for Proto_MeanSquaredErrorLossLayer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575F740C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D468, type metadata accessor for Proto_MeanSquaredErrorLossLayer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575F74D4()
{
  sub_2575FB760(&qword_27F87D468, type metadata accessor for Proto_MeanSquaredErrorLossLayer);

  return sub_257743424();
}

uint64_t sub_2575F7580()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9F58);
  __swift_project_value_buffer(v0, qword_27F8E9F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 10;
  *v6 = "sgdOptimizer";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 11;
  *v10 = "adamOptimizer";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575F774C()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 11)
    {
      v7 = OUTLINED_FUNCTION_6_10();
      sub_2575F7CA8(v7, v8, v9, v10);
    }

    else if (result == 10)
    {
      v3 = OUTLINED_FUNCTION_6_10();
      sub_2575F77B0(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_2575F77B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Proto_SGDOptimizer(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C300, &qword_2577513B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_Optimizer.OneOf_OptimizerType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F9A0, &qword_257767390);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87C300, &qword_2577513B8);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609BCC();
    }

    else
    {
      sub_2574695E4(v22, &qword_27F87F9A0, &qword_257767390);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_2575FB760(&qword_27F87D428, type metadata accessor for Proto_SGDOptimizer);
  v23 = v33;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F9A0, &qword_257767390);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F9A0, &qword_257767390);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F9A0, &qword_257767390);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v22, &qword_27F87F9A0, &qword_257767390);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F87C300, &qword_2577513B8);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_2575F7CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Proto_AdamOptimizer(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C300, &qword_2577513B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_Optimizer.OneOf_OptimizerType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F9A8, &qword_257767398);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87C300, &qword_2577513B8);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v22, &qword_27F87F9A8, &qword_257767398);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D408, type metadata accessor for Proto_AdamOptimizer);
  v23 = v33;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F9A8, &qword_257767398);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F9A8, &qword_257767398);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F9A8, &qword_257767398);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v22, &qword_27F87F9A8, &qword_257767398);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F87C300, &qword_2577513B8);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void sub_2575F81A0()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_5_8();
  v2 = OUTLINED_FUNCTION_311();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_313_0();
  OUTLINED_FUNCTION_66();
  sub_257487308();
  v8 = type metadata accessor for Proto_Optimizer.OneOf_OptimizerType(0);
  OUTLINED_FUNCTION_67_1(v8);
  if (v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_201();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_5_10();
    sub_2575F84A8(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_5_10();
    sub_2575F8294(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_91_2();
  sub_257609BCC();
  if (!v1)
  {
LABEL_6:
    v18 = v0 + *(type metadata accessor for Proto_Optimizer(0) + 20);
    OUTLINED_FUNCTION_10_7();
    sub_257743194();
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2575F8294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C300, &qword_2577513B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SGDOptimizer(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_257487308();
  v10 = type metadata accessor for Proto_Optimizer.OneOf_OptimizerType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87C300, &qword_2577513B8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D428, type metadata accessor for Proto_SGDOptimizer);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575F84A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C300, &qword_2577513B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AdamOptimizer(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_257487308();
  v10 = type metadata accessor for Proto_Optimizer.OneOf_OptimizerType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87C300, &qword_2577513B8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D408, type metadata accessor for Proto_AdamOptimizer);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

void sub_2575F86BC()
{
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_0_0();
  v2 = type metadata accessor for Proto_Optimizer.OneOf_OptimizerType(v1);
  v3 = OUTLINED_FUNCTION_42_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_6();
  v6 = OUTLINED_FUNCTION_201();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_75_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F950, &qword_257767358);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_32_3();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_65(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_65(v0 + v17);
    if (v18)
    {
      sub_2574695E4(v0, &qword_27F87C300, &qword_2577513B8);
LABEL_12:
      v22 = type metadata accessor for Proto_Optimizer(0);
      OUTLINED_FUNCTION_95_0(v22);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_16();
      sub_2575FB760(v23, v24);
      v19 = OUTLINED_FUNCTION_4_2();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_277();
  sub_257487308();
  OUTLINED_FUNCTION_65(v0 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_91_2();
    sub_257609BCC();
LABEL_9:
    sub_2574695E4(v0, &qword_27F87F950, &qword_257767358);
    goto LABEL_10;
  }

  sub_257609B78();
  OUTLINED_FUNCTION_360();
  sub_257533DA8();
  v21 = v20;
  sub_257609BCC();
  OUTLINED_FUNCTION_144_0();
  sub_257609BCC();
  sub_2574695E4(v0, &qword_27F87C300, &qword_2577513B8);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_65_0(v19);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2575F8944(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  v3 = sub_2577431B4();
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_311_0();

  return v7(v6);
}

uint64_t sub_2575F89DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F998, type metadata accessor for Proto_Optimizer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575F8A7C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D448, type metadata accessor for Proto_Optimizer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575F8B44()
{
  sub_2575FB760(&qword_27F87D448, type metadata accessor for Proto_Optimizer);

  return sub_257743424();
}

uint64_t sub_2575F8BC4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9F70);
  __swift_project_value_buffer(v0, qword_27F8E9F70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "learningRate";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "miniBatchSize";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "momentum";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2575F8DCC()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    v1 = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_6_8();
        sub_2575F8FC4();
        break;
      case 2:
        OUTLINED_FUNCTION_6_8();
        sub_2575F8F10();
        break;
      case 1:
        OUTLINED_FUNCTION_6_8();
        sub_2575F8E5C();
        break;
    }
  }
}

uint64_t sub_2575F8E5C()
{
  v0 = *(type metadata accessor for Proto_SGDOptimizer(0) + 20);
  type metadata accessor for Proto_DoubleParameter(0);
  sub_2575FB760(&qword_27F87F9B8, type metadata accessor for Proto_DoubleParameter);
  return sub_2577433D4();
}

uint64_t sub_2575F8F10()
{
  v0 = *(type metadata accessor for Proto_SGDOptimizer(0) + 24);
  type metadata accessor for Proto_Int64Parameter(0);
  sub_2575FB760(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter);
  return sub_2577433D4();
}

void sub_2575F8FC4()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_147_0();
  v1 = *(v0(0) + 28);
  type metadata accessor for Proto_DoubleParameter(0);
  OUTLINED_FUNCTION_217_0();
  sub_2575FB760(v2, v3);
  OUTLINED_FUNCTION_12_10();
  sub_2577433D4();
  OUTLINED_FUNCTION_187_0();
}

void sub_2575F904C()
{
  OUTLINED_FUNCTION_111_0();
  v1 = OUTLINED_FUNCTION_4_5();
  sub_2575F90B8(v1, v2, v3, v4);
  if (!v0)
  {
    v5 = OUTLINED_FUNCTION_4_5();
    sub_2575F9298(v5, v6, v7, v8);
    OUTLINED_FUNCTION_4_5();
    sub_2575F9478();
    OUTLINED_FUNCTION_222();
    sub_257743194();
  }
}

uint64_t sub_2575F90B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C330, &qword_2577513E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_DoubleParameter(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_SGDOptimizer(0) + 20);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87C330, &qword_2577513E8);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87F9B8, type metadata accessor for Proto_DoubleParameter);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575F9298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Int64Parameter(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_SGDOptimizer(0) + 24);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87BD30, &unk_2577504D0);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter);
  sub_257743574();
  return sub_257609BCC();
}

void sub_2575F9478()
{
  OUTLINED_FUNCTION_165_0();
  OUTLINED_FUNCTION_303_0(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_277();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_32_4();
  v12 = type metadata accessor for Proto_DoubleParameter(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = OUTLINED_FUNCTION_14();
  v17 = *(v1(v16) + 28);
  OUTLINED_FUNCTION_399_0();
  v18 = OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_155(v18, v19, v12);
  if (v20)
  {
    sub_2574695E4(v0, &qword_27F87C330, &qword_2577513E8);
  }

  else
  {
    OUTLINED_FUNCTION_367();
    sub_257609B78();
    OUTLINED_FUNCTION_217_0();
    sub_2575FB760(v21, v22);
    OUTLINED_FUNCTION_403_0();
    OUTLINED_FUNCTION_18_7();
    sub_257609BCC();
  }

  OUTLINED_FUNCTION_166_0();
}

void sub_2575F95C8()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_376();
  v65 = type metadata accessor for Proto_Int64Parameter(v4);
  v5 = OUTLINED_FUNCTION_4(v65);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v58[2] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_198();
  v61 = v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BED8, &qword_2577510C8);
  OUTLINED_FUNCTION_4(v63);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_32_4();
  v17 = type metadata accessor for Proto_DoubleParameter(0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_1();
  v62 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C330, &qword_2577513E8);
  v23 = OUTLINED_FUNCTION_13(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25_0();
  v58[1] = v26;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F960, &qword_257767368);
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_0();
  v60 = v32;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v33);
  v35 = v58 - v34;
  v64 = type metadata accessor for Proto_SGDOptimizer(0);
  v36 = *(v64 + 20);
  v59 = v28;
  v37 = *(v28 + 48);
  v66 = v0;
  sub_257487308();
  v67 = v3;
  sub_257487308();
  OUTLINED_FUNCTION_34_0(v35);
  if (v38)
  {
    OUTLINED_FUNCTION_34_0(&v35[v37]);
    if (v38)
    {
      sub_2574695E4(v35, &qword_27F87C330, &qword_2577513E8);
      goto LABEL_11;
    }

LABEL_9:
    v39 = &qword_27F87F960;
    v40 = &qword_257767368;
    v41 = v35;
LABEL_30:
    sub_2574695E4(v41, v39, v40);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_365();
  sub_257487308();
  OUTLINED_FUNCTION_34_0(&v35[v37]);
  if (v38)
  {
    OUTLINED_FUNCTION_18_7();
    sub_257609BCC();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_17_7();
  sub_257609B78();
  v42 = sub_257616378();
  sub_257609BCC();
  sub_257609BCC();
  sub_2574695E4(v35, &qword_27F87C330, &qword_2577513E8);
  if ((v42 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v43 = v64;
  v44 = *(v64 + 24);
  v45 = *(v63 + 48);
  OUTLINED_FUNCTION_152();
  sub_257487308();
  OUTLINED_FUNCTION_152();
  sub_257487308();
  v46 = OUTLINED_FUNCTION_171_1();
  v47 = v65;
  OUTLINED_FUNCTION_155(v46, v48, v65);
  if (v38)
  {
    OUTLINED_FUNCTION_155(v1 + v45, 1, v47);
    if (v38)
    {
      sub_2574695E4(v1, &qword_27F87BD30, &unk_2577504D0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_257487308();
  OUTLINED_FUNCTION_155(v1 + v45, 1, v47);
  if (v49)
  {
    sub_257609BCC();
LABEL_19:
    v39 = &qword_27F87BED8;
    v40 = &qword_2577510C8;
    v41 = v1;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_214_0();
  sub_257609B78();
  OUTLINED_FUNCTION_44_1();
  v50 = sub_257615594();
  sub_257609BCC();
  OUTLINED_FUNCTION_188_1();
  sub_257609BCC();
  sub_2574695E4(v1, &qword_27F87BD30, &unk_2577504D0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v51 = *(v43 + 28);
  v52 = v60;
  v53 = *(v59 + 48);
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_34_0(v52);
  if (v38)
  {
    OUTLINED_FUNCTION_34_0(v52 + v53);
    if (v38)
    {
      sub_2574695E4(v52, &qword_27F87C330, &qword_2577513E8);
LABEL_34:
      sub_2577431B4();
      OUTLINED_FUNCTION_1_16();
      sub_2575FB760(v56, v57);
      v55 = sub_257743644();
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_257487308();
  OUTLINED_FUNCTION_34_0(v52 + v53);
  if (v54)
  {
    OUTLINED_FUNCTION_18_7();
    sub_257609BCC();
LABEL_29:
    v39 = &qword_27F87F960;
    v40 = &qword_257767368;
    v41 = v52;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_17_7();
  sub_257609B78();
  OUTLINED_FUNCTION_176();
  sub_257616378();
  OUTLINED_FUNCTION_87_1();
  sub_257609BCC();
  OUTLINED_FUNCTION_131_0();
  sub_257609BCC();
  sub_2574695E4(v52, &qword_27F87C330, &qword_2577513E8);
  if (&qword_27F87C330)
  {
    goto LABEL_34;
  }

LABEL_31:
  v55 = 0;
LABEL_32:
  OUTLINED_FUNCTION_65_0(v55);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2575F9BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F9B0, type metadata accessor for Proto_SGDOptimizer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575F9C90(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D428, type metadata accessor for Proto_SGDOptimizer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575F9D58()
{
  sub_2575FB760(&qword_27F87D428, type metadata accessor for Proto_SGDOptimizer);

  return sub_257743424();
}

uint64_t sub_2575F9DD8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9F88);
  __swift_project_value_buffer(v0, qword_27F8E9F88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "learningRate";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "miniBatchSize";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "beta1";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "beta2";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "eps";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2575FA054()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    v1 = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_6_8();
        sub_2575FA118();
        break;
      case 2:
        OUTLINED_FUNCTION_6_8();
        sub_2575FA1CC();
        break;
      case 3:
        OUTLINED_FUNCTION_6_8();
        sub_2575F8FC4();
        break;
      case 4:
        OUTLINED_FUNCTION_6_8();
        sub_2575FA280();
        break;
      case 5:
        OUTLINED_FUNCTION_6_8();
        sub_2575FA334();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2575FA118()
{
  v0 = *(type metadata accessor for Proto_AdamOptimizer(0) + 20);
  type metadata accessor for Proto_DoubleParameter(0);
  sub_2575FB760(&qword_27F87F9B8, type metadata accessor for Proto_DoubleParameter);
  return sub_2577433D4();
}

uint64_t sub_2575FA1CC()
{
  v0 = *(type metadata accessor for Proto_AdamOptimizer(0) + 24);
  type metadata accessor for Proto_Int64Parameter(0);
  sub_2575FB760(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter);
  return sub_2577433D4();
}

uint64_t sub_2575FA280()
{
  v0 = *(type metadata accessor for Proto_AdamOptimizer(0) + 32);
  type metadata accessor for Proto_DoubleParameter(0);
  sub_2575FB760(&qword_27F87F9B8, type metadata accessor for Proto_DoubleParameter);
  return sub_2577433D4();
}

uint64_t sub_2575FA334()
{
  v0 = *(type metadata accessor for Proto_AdamOptimizer(0) + 36);
  type metadata accessor for Proto_DoubleParameter(0);
  sub_2575FB760(&qword_27F87F9B8, type metadata accessor for Proto_DoubleParameter);
  return sub_2577433D4();
}

void sub_2575FA3E8()
{
  OUTLINED_FUNCTION_111_0();
  v1 = OUTLINED_FUNCTION_4_5();
  sub_2575FA46C(v1, v2, v3, v4);
  if (!v0)
  {
    v5 = OUTLINED_FUNCTION_4_5();
    sub_2575FA64C(v5, v6, v7, v8);
    OUTLINED_FUNCTION_4_5();
    sub_2575F9478();
    v9 = OUTLINED_FUNCTION_4_5();
    sub_2575FA82C(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_4_5();
    sub_2575FAA0C(v13, v14, v15, v16);
    OUTLINED_FUNCTION_222();
    sub_257743194();
  }
}

uint64_t sub_2575FA46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C330, &qword_2577513E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_DoubleParameter(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_AdamOptimizer(0) + 20);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87C330, &qword_2577513E8);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87F9B8, type metadata accessor for Proto_DoubleParameter);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575FA64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Int64Parameter(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_AdamOptimizer(0) + 24);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87BD30, &unk_2577504D0);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575FA82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C330, &qword_2577513E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_DoubleParameter(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_AdamOptimizer(0) + 32);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87C330, &qword_2577513E8);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87F9B8, type metadata accessor for Proto_DoubleParameter);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575FAA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C330, &qword_2577513E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_DoubleParameter(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_AdamOptimizer(0) + 36);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87C330, &qword_2577513E8);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87F9B8, type metadata accessor for Proto_DoubleParameter);
  sub_257743574();
  return sub_257609BCC();
}

void sub_2575FABEC()
{
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_118_1();
  v66 = type metadata accessor for Proto_Int64Parameter(v3);
  v4 = OUTLINED_FUNCTION_4(v66);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_198();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BED8, &qword_2577510C8);
  OUTLINED_FUNCTION_4(v65);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74_0();
  v14 = type metadata accessor for Proto_DoubleParameter(0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_385_0(v18);
  v19 = OUTLINED_FUNCTION_313_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  v22 = OUTLINED_FUNCTION_13(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_341_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F960, &qword_257767368);
  v29 = OUTLINED_FUNCTION_41_4(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_0();
  v61 = v32;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_167();
  v62 = v34;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_167();
  v63 = v36;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_106_0();
  v67 = type metadata accessor for Proto_AdamOptimizer(0);
  v38 = v67[5];
  v64 = v2;
  v39 = *(v2 + 48);
  sub_257487308();
  sub_257487308();
  OUTLINED_FUNCTION_35_2(v0);
  if (v40)
  {
    OUTLINED_FUNCTION_35_2(v0 + v39);
    if (!v40)
    {
      goto LABEL_9;
    }

    sub_2574695E4(v0, &qword_27F87C330, &qword_2577513E8);
  }

  else
  {
    sub_257487308();
    OUTLINED_FUNCTION_35_2(v0 + v39);
    if (v40)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_17_7();
    sub_257609B78();
    sub_257616378();
    OUTLINED_FUNCTION_221_0();
    sub_257609BCC();
    OUTLINED_FUNCTION_405();
    sub_257609BCC();
    sub_2574695E4(v0, &qword_27F87C330, &qword_2577513E8);
    if ((&qword_27F87C330 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v44 = v67;
  v45 = v67[6];
  v46 = *(v65 + 48);
  sub_257487308();
  sub_257487308();
  OUTLINED_FUNCTION_155(v1, 1, v66);
  if (v40)
  {
    OUTLINED_FUNCTION_42_0(v1 + v46);
    if (v40)
    {
      sub_2574695E4(v1, &qword_27F87BD30, &unk_2577504D0);
      goto LABEL_21;
    }

LABEL_19:
    v41 = &qword_27F87BED8;
    v42 = &qword_2577510C8;
LABEL_30:
    v43 = v1;
    goto LABEL_31;
  }

  sub_257487308();
  OUTLINED_FUNCTION_42_0(v1 + v46);
  if (v47)
  {
    OUTLINED_FUNCTION_168_1();
    sub_257609BCC();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_214_0();
  sub_257609B78();
  OUTLINED_FUNCTION_222();
  v48 = sub_257615594();
  sub_257609BCC();
  OUTLINED_FUNCTION_360();
  sub_257609BCC();
  sub_2574695E4(v1, &qword_27F87BD30, &unk_2577504D0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  v49 = v67[7];
  v1 = v63;
  v50 = *(v64 + 48);
  OUTLINED_FUNCTION_186_1();
  OUTLINED_FUNCTION_278_0();
  OUTLINED_FUNCTION_35_2(v63);
  if (v40)
  {
    OUTLINED_FUNCTION_35_2(v63 + v50);
    if (v40)
    {
      sub_2574695E4(v63, &qword_27F87C330, &qword_2577513E8);
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  sub_257487308();
  OUTLINED_FUNCTION_35_2(v63 + v50);
  if (v51)
  {
    OUTLINED_FUNCTION_18_7();
    sub_257609BCC();
LABEL_29:
    v41 = &qword_27F87F960;
    v42 = &qword_257767368;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_17_7();
  sub_257609B78();
  sub_257616378();
  OUTLINED_FUNCTION_221_0();
  v44 = v67;
  sub_257609BCC();
  OUTLINED_FUNCTION_176();
  sub_257609BCC();
  sub_2574695E4(v63, &qword_27F87C330, &qword_2577513E8);
  if ((&qword_27F87C330 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  v53 = v44[8];
  v54 = *(v64 + 48);
  v0 = v62;
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_35_2(v62);
  if (!v40)
  {
    sub_257487308();
    OUTLINED_FUNCTION_35_2(v62 + v54);
    if (!v55)
    {
      OUTLINED_FUNCTION_17_7();
      OUTLINED_FUNCTION_363_0();
      OUTLINED_FUNCTION_176();
      sub_257616378();
      OUTLINED_FUNCTION_87_1();
      sub_257609BCC();
      OUTLINED_FUNCTION_131_0();
      sub_257609BCC();
      sub_2574695E4(v62, &qword_27F87C330, &qword_2577513E8);
      if ((&qword_27F87C330 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_42;
    }

LABEL_8:
    OUTLINED_FUNCTION_18_7();
    sub_257609BCC();
LABEL_9:
    v41 = &qword_27F87F960;
    v42 = &qword_257767368;
    v43 = v0;
LABEL_31:
    sub_2574695E4(v43, v41, v42);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_35_2(v62 + v54);
  if (!v40)
  {
    goto LABEL_9;
  }

  sub_2574695E4(v62, &qword_27F87C330, &qword_2577513E8);
LABEL_42:
  v56 = v67[9];
  v57 = *(v64 + 48);
  v0 = v61;
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_35_2(v61);
  if (v40)
  {
    OUTLINED_FUNCTION_35_2(v61 + v57);
    if (v40)
    {
      sub_2574695E4(v61, &qword_27F87C330, &qword_2577513E8);
LABEL_51:
      sub_2577431B4();
      OUTLINED_FUNCTION_1_16();
      sub_2575FB760(v59, v60);
      v52 = sub_257743644();
      goto LABEL_33;
    }

    goto LABEL_9;
  }

  sub_257487308();
  OUTLINED_FUNCTION_35_2(v61 + v57);
  if (v58)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_363_0();
  OUTLINED_FUNCTION_176();
  sub_257616378();
  OUTLINED_FUNCTION_87_1();
  sub_257609BCC();
  OUTLINED_FUNCTION_131_0();
  sub_257609BCC();
  sub_2574695E4(v61, &qword_27F87C330, &qword_2577513E8);
  if (&qword_27F87C330)
  {
    goto LABEL_51;
  }

LABEL_32:
  v52 = 0;
LABEL_33:
  OUTLINED_FUNCTION_65_0(v52);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2575FB3C4(void (*a1)(void))
{
  OUTLINED_FUNCTION_337_0();
  a1(0);
  v2 = OUTLINED_FUNCTION_176();
  sub_2575FB760(v2, v3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2575FB460()
{
  OUTLINED_FUNCTION_376();
  v0 = sub_2577431B4();
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_44_1();

  return v4(v3);
}

uint64_t sub_2575FB4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F9C0, type metadata accessor for Proto_AdamOptimizer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575FB588(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D408, type metadata accessor for Proto_AdamOptimizer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575FB650()
{
  sub_2575FB760(&qword_27F87D408, type metadata accessor for Proto_AdamOptimizer);

  return sub_257743424();
}

uint64_t sub_2575FB760(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257609B78()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t sub_257609BCC()
{
  v1 = OUTLINED_FUNCTION_376();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_257609C20()
{
  result = qword_27F87ECD0;
  if (!qword_27F87ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ECD0);
  }

  return result;
}

unint64_t sub_257609C74()
{
  result = qword_27F87ECD8;
  if (!qword_27F87ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ECD8);
  }

  return result;
}

unint64_t sub_257609CC8()
{
  result = qword_27F87ED40;
  if (!qword_27F87ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ED40);
  }

  return result;
}

unint64_t sub_257609D1C()
{
  result = qword_27F87EE38;
  if (!qword_27F87EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87EE38);
  }

  return result;
}

unint64_t sub_257609D70()
{
  result = qword_27F87EE40;
  if (!qword_27F87EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87EE40);
  }

  return result;
}

unint64_t sub_257609DC4()
{
  result = qword_27F87EEE8;
  if (!qword_27F87EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87EEE8);
  }

  return result;
}

unint64_t sub_257609E18()
{
  result = qword_27F87EF08;
  if (!qword_27F87EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87EF08);
  }

  return result;
}

unint64_t sub_257609E6C()
{
  result = qword_27F87EF60;
  if (!qword_27F87EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87EF60);
  }

  return result;
}

unint64_t sub_257609EC0()
{
  result = qword_27F87EF68;
  if (!qword_27F87EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87EF68);
  }

  return result;
}

unint64_t sub_257609F14()
{
  result = qword_27F87EFB0;
  if (!qword_27F87EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87EFB0);
  }

  return result;
}

unint64_t sub_257609F68()
{
  result = qword_27F87F130;
  if (!qword_27F87F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87F130);
  }

  return result;
}

unint64_t sub_257609FBC()
{
  result = qword_27F87F170;
  if (!qword_27F87F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87F170);
  }

  return result;
}

unint64_t sub_25760A010()
{
  result = qword_27F87F198;
  if (!qword_27F87F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87F198);
  }

  return result;
}

unint64_t sub_25760A064()
{
  result = qword_27F87F1A0;
  if (!qword_27F87F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87F1A0);
  }

  return result;
}

unint64_t sub_25760A0B8()
{
  result = qword_27F87F1B0;
  if (!qword_27F87F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87F1B0);
  }

  return result;
}

unint64_t sub_25760A10C()
{
  result = qword_27F87F200;
  if (!qword_27F87F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87F200);
  }

  return result;
}

unint64_t sub_25760A160()
{
  result = qword_27F87F730;
  if (!qword_27F87F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87F730);
  }

  return result;
}

unint64_t sub_25760A1B4()
{
  result = qword_27F87F790;
  if (!qword_27F87F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87F790);
  }

  return result;
}

unint64_t sub_25760A208()
{
  result = qword_27F87F7B0;
  if (!qword_27F87F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87F7B0);
  }

  return result;
}

unint64_t sub_25760A25C()
{
  result = qword_27F87F858;
  if (!qword_27F87F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87F858);
  }

  return result;
}

unint64_t sub_25760A2B0()
{
  result = qword_27F87F868;
  if (!qword_27F87F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87F868);
  }

  return result;
}

uint64_t sub_25760A304(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_25760A318(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_25760A318(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_25760A330()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

unint64_t sub_25760A384()
{
  result = qword_27F87F9C8;
  if (!qword_27F87F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87F9C8);
  }

  return result;
}

unint64_t sub_25760A3D8()
{
  result = qword_27F87F9D0;
  if (!qword_27F87F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87F9D0);
  }

  return result;
}

unint64_t sub_25760A42C()
{
  result = qword_27F87F9E8;
  if (!qword_27F87F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87F9E8);
  }

  return result;
}

unint64_t sub_25760A480()
{
  result = qword_27F87FA00;
  if (!qword_27F87FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87FA00);
  }

  return result;
}

unint64_t sub_25760A4D4()
{
  result = qword_27F87FA08;
  if (!qword_27F87FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87FA08);
  }

  return result;
}

unint64_t sub_25760A528()
{
  result = qword_27F87FA28;
  if (!qword_27F87FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87FA28);
  }

  return result;
}

void OUTLINED_FUNCTION_40_4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D83940];

  sub_2575ED254(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_65_2(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(a2 + 8);
  return result;
}

float OUTLINED_FUNCTION_83_1(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 4);
  v3 = *(a2 + 4);
  return result;
}

uint64_t OUTLINED_FUNCTION_103_2()
{

  return sub_257487308();
}

uint64_t *OUTLINED_FUNCTION_104_0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_108_1()
{

  return sub_257609BCC();
}

uint64_t OUTLINED_FUNCTION_109_0()
{

  return sub_25751BB28();
}

float OUTLINED_FUNCTION_119_0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  v3 = *(a2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_121_1()
{
  v2 = *(v0 - 104);

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_129_1()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_137_1@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = a1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_149_1()
{

  return sub_257487308();
}

float OUTLINED_FUNCTION_164_1(float *a1, int *a2)
{
  result = *a1;
  v3 = *a2;
  return result;
}

float OUTLINED_FUNCTION_172_0()
{
  result = *(v1 + 12);
  v3 = *(v0 + 12);
  return result;
}

uint64_t OUTLINED_FUNCTION_180_1()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_185_1()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_186_1()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_222_0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = a1[8];
  v3 = *a2;
  v4 = *(a2 + 8);
  return *a1;
}

uint64_t OUTLINED_FUNCTION_227_0()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_230_0()
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_232_0()
{

  return sub_257609BCC();
}

uint64_t OUTLINED_FUNCTION_233_0()
{

  return sub_257609BCC();
}

uint64_t OUTLINED_FUNCTION_234_0()
{

  return sub_257609BCC();
}

uint64_t OUTLINED_FUNCTION_235_0()
{

  return sub_257609BCC();
}

uint64_t OUTLINED_FUNCTION_236_0()
{

  return sub_2575E0144();
}

uint64_t OUTLINED_FUNCTION_237_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_239_0()
{

  return sub_2575E0144();
}

float OUTLINED_FUNCTION_240_0()
{
  result = *v1;
  v3 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_241_0()
{

  return sub_2575E0144();
}

uint64_t OUTLINED_FUNCTION_242_0()
{

  return sub_2575E480C();
}

uint64_t OUTLINED_FUNCTION_244_0()
{

  return sub_2575E0144();
}

uint64_t OUTLINED_FUNCTION_245_0()
{

  return sub_2575E7A90();
}

uint64_t OUTLINED_FUNCTION_247_0()
{

  return sub_2575D172C();
}

uint64_t OUTLINED_FUNCTION_248_0()
{

  return sub_2575E0144();
}

uint64_t OUTLINED_FUNCTION_250_0()
{

  return swift_beginAccess();
}

float OUTLINED_FUNCTION_251_0()
{
  result = *(v1 + 16);
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_254_0()
{

  return sub_257609B78();
}

uint64_t OUTLINED_FUNCTION_265@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_257609B78();
}

uint64_t OUTLINED_FUNCTION_266_0()
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_269_0()
{
  result = *(v1 + 16);
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_278_0()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_280_0()
{

  return sub_257743A14();
}

uint64_t OUTLINED_FUNCTION_281_0()
{
  v2 = *(v0 + 344);

  return sub_257609B78();
}

uint64_t OUTLINED_FUNCTION_282_0()
{
  v2 = *(v0 + 344);

  return sub_257609B78();
}

uint64_t OUTLINED_FUNCTION_285_0()
{
  result = *(v0 + 8);
  v2 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_300_0()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_301_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_306_0()
{

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_307_0()
{
  result = *(v0 + 16);
  v2 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_308_0(uint64_t a1)
{
  v2 = *(a1 + 24);

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_321_0()
{
  v2 = *(*(v0 - 88) + 24);

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_322_0(uint64_t a1)
{
  v3 = v1 + *(a1 + 24);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_327_0(uint64_t a1)
{
  v2 = *(a1 + 28);

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_328_0(uint64_t a1)
{
  v3 = v1 + *(a1 + 28);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

float OUTLINED_FUNCTION_329_0()
{
  result = *(v1 + 20);
  v3 = *(v0 + 20);
  return result;
}

float OUTLINED_FUNCTION_334_0()
{
  result = *(v1 + 8);
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_335_0(uint64_t result)
{
  *(v2 - 88) = result;
  v3 = *(result + 20);
  v4 = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_337_0()
{

  return sub_257743A14();
}

uint64_t OUTLINED_FUNCTION_344_0()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_357_0()
{

  return sub_257609BCC();
}

uint64_t OUTLINED_FUNCTION_363_0()
{
  v2 = *(v0 - 120);

  return sub_257609B78();
}

uint64_t OUTLINED_FUNCTION_364_0()
{

  return sub_25760A330();
}

uint64_t OUTLINED_FUNCTION_366_0(uint64_t a1)
{
  v3 = v1 + *(a1 + 36);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_367_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_368_0()
{

  return sub_257743694();
}

uint64_t OUTLINED_FUNCTION_369_0()
{

  return sub_257743694();
}

uint64_t OUTLINED_FUNCTION_371_0()
{
  v2 = *(*(v0 - 88) + 20);

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_372_0()
{
  v2 = *(*(v0 - 88) + 20);

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_375_0()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_376_0(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_377_0()
{

  return sub_257743A14();
}

uint64_t OUTLINED_FUNCTION_378_0()
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_380_0(uint64_t *a1)
{
  result = *a1;
  v4 = *(v2 + 8);
  v5 = *v1;
  v6 = v1[1];
  return result;
}

uint64_t *OUTLINED_FUNCTION_386_0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(a2 + 8);
  return result;
}

uint64_t *OUTLINED_FUNCTION_387_0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_393_0()
{
  result = *(v1 + 8);
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_399_0()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_400_0()
{

  return sub_2577435F4();
}

uint64_t OUTLINED_FUNCTION_401_0()
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_402_0()
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_403_0()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 72);

  return sub_257743574();
}

uint64_t OUTLINED_FUNCTION_408_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_409_0(uint64_t a1)
{
  v2 = *(a1 + 36);

  return sub_2577431B4();
}

void OUTLINED_FUNCTION_410_0(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8 * a1);

  JUMPOUT(0x259C651F0);
}

uint64_t OUTLINED_FUNCTION_411_0()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_412_0()
{

  return sub_257609BCC();
}

uint64_t OUTLINED_FUNCTION_413_0()
{

  return sub_257609BCC();
}

uint64_t sub_25760BDD4()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25760BE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_NonMaximumSuppression.PickTop(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_indexTm_2);
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_2577431B4();
    v11 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_25760BF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_NonMaximumSuppression.PickTop(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_indexTm_2);
}

_BYTE *__swift_store_extra_inhabitant_indexTm_2(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_2577431B4();
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25760C034(uint64_t a1)
{
  v2 = type metadata accessor for Proto_NonMaximumSuppression.PickTop(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

void sub_25760C124()
{
  sub_25760C220(319, &qword_281537888, type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod);
  if (v0 <= 0x3F)
  {
    sub_25760C220(319, &qword_281537870, type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels);
    if (v1 <= 0x3F)
    {
      sub_2577431B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25760C220(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2577437B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s20MLModelSpecification33NonMaximumSuppressorConfigurationVACycfC_0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = type metadata accessor for Proto_NonMaximumSuppression(0);
  v4 = v3[5];
  v5 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  *(a1 + v3[6]) = 0;
  *(a1 + v3[7]) = 0;
  v6 = (a1 + v3[8]);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_18_8(v3[9]);
  OUTLINED_FUNCTION_18_8(v3[10]);
  OUTLINED_FUNCTION_18_8(v3[11]);
  OUTLINED_FUNCTION_18_8(v3[12]);
  OUTLINED_FUNCTION_18_8(v3[13]);
  v7 = a1 + v3[14];
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25760C338@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = &a1[*(type metadata accessor for Proto_NonMaximumSuppression.PickTop(0) + 20)];
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25760C370()
{
  v0 = type metadata accessor for Proto_NonMaximumSuppression.PickTop(0);
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB08, &qword_2577678E0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  v13 = *(MEMORY[0x28223BE20](v12) + 56);
  sub_25760FA48();
  sub_25760FA48();
  sub_25760F9F4();
  sub_25760F9F4();
  if (*v8 == *v6)
  {
    v16 = *(v0 + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_1_17();
    sub_25760F7A4(v17, v18);
    v19 = sub_257743644();
    sub_25760F99C(v6, type metadata accessor for Proto_NonMaximumSuppression.PickTop);
    sub_25760F99C(v8, type metadata accessor for Proto_NonMaximumSuppression.PickTop);
    if (v19)
    {
      return 1;
    }
  }

  else
  {
    sub_25760F99C(v6, type metadata accessor for Proto_NonMaximumSuppression.PickTop);
    v14 = OUTLINED_FUNCTION_205();
    sub_25760F99C(v14, v15);
  }

  return 0;
}

uint64_t sub_25760C588()
{
  v51 = type metadata accessor for Proto_Int64Vector(0);
  v0 = OUTLINED_FUNCTION_4(v51);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3();
  v5 = (v4 - v3);
  v50 = type metadata accessor for Proto_StringVector(0);
  v6 = OUTLINED_FUNCTION_4(v50);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v11 = (v10 - v9);
  v12 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = (&v50 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB00, &qword_2577678D8);
  OUTLINED_FUNCTION_13(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_29();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v50 - v26;
  v28 = *(v25 + 56);
  sub_25760FA48();
  sub_25760FA48();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_10_14();
    sub_25760FA48();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25760F9F4();
      if (sub_257487374(*v18, *v5))
      {
        v29 = *(v51 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_1_17();
        sub_25760F7A4(v30, v31);
        v32 = sub_257743644();
        OUTLINED_FUNCTION_2_16();
        sub_25760F99C(v5, v33);
        if (v32)
        {
          OUTLINED_FUNCTION_2_16();
          v35 = v18;
LABEL_13:
          sub_25760F99C(v35, v34);
          OUTLINED_FUNCTION_4_11();
          sub_25760F99C(v27, v43);
          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_16();
        sub_25760F99C(v5, v45);
      }

      OUTLINED_FUNCTION_2_16();
      v47 = v18;
LABEL_18:
      sub_25760F99C(v47, v46);
      OUTLINED_FUNCTION_4_11();
      sub_25760F99C(v27, v49);
      return 0;
    }

    OUTLINED_FUNCTION_2_16();
    v37 = v18;
  }

  else
  {
    OUTLINED_FUNCTION_10_14();
    sub_25760FA48();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_25760F9F4();
      if (sub_257479C78(*v20, *v11))
      {
        v38 = *(v50 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_1_17();
        sub_25760F7A4(v39, v40);
        v41 = sub_257743644();
        OUTLINED_FUNCTION_0_26();
        sub_25760F99C(v11, v42);
        if (v41)
        {
          OUTLINED_FUNCTION_0_26();
          v35 = v20;
          goto LABEL_13;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_26();
        sub_25760F99C(v11, v48);
      }

      OUTLINED_FUNCTION_0_26();
      v47 = v20;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_0_26();
    v37 = v20;
  }

  sub_25760F99C(v37, v36);
  sub_2574695E4(v27, &qword_27F87FB00, &qword_2577678D8);
  return 0;
}

uint64_t sub_25760C948()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9FA0);
  __swift_project_value_buffer(v0, qword_27F8E9FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_257746430;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "pickTop";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 100;
  *v8 = "stringClassLabels";
  *(v8 + 8) = 17;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 101;
  *v10 = "int64ClassLabels";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 110;
  *v12 = "iouThreshold";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 111;
  *v14 = "confidenceThreshold";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 200;
  *v16 = "confidenceInputFeatureName";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 201;
  *v18 = "coordinatesInputFeatureName";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 202;
  *v20 = "iouThresholdInputFeatureName";
  *(v20 + 1) = 28;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 203;
  *v22 = "confidenceThresholdInputFeatureName";
  *(v22 + 1) = 35;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 210;
  *v24 = "confidenceOutputFeatureName";
  *(v24 + 1) = 27;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 211;
  *v26 = "coordinatesOutputFeatureName";
  *(v26 + 1) = 28;
  v26[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_25760CD44()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 200:
        OUTLINED_FUNCTION_6_8();
        sub_25760DE00();
        break;
      case 201:
        OUTLINED_FUNCTION_6_8();
        sub_25760DE64();
        break;
      case 202:
        OUTLINED_FUNCTION_6_8();
        sub_25760DEC8();
        break;
      case 203:
        OUTLINED_FUNCTION_6_8();
        sub_25760DF2C();
        break;
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
        continue;
      case 210:
        OUTLINED_FUNCTION_6_8();
        sub_25760DF90();
        break;
      case 211:
        OUTLINED_FUNCTION_6_8();
        sub_25760DFF4();
        break;
      default:
        switch(result)
        {
          case 111:
            OUTLINED_FUNCTION_6_8();
            sub_25760DD9C();
            break;
          case 100:
            OUTLINED_FUNCTION_205();
            OUTLINED_FUNCTION_11_6();
            sub_25760D330(v7, v8, v9, v10);
            break;
          case 101:
            OUTLINED_FUNCTION_205();
            OUTLINED_FUNCTION_11_6();
            sub_25760D834(v11, v12, v13, v14);
            break;
          case 110:
            OUTLINED_FUNCTION_6_8();
            sub_25760DD38();
            break;
          case 1:
            OUTLINED_FUNCTION_205();
            OUTLINED_FUNCTION_11_6();
            sub_25760CE8C(v3, v4, v5, v6);
            break;
        }

        break;
    }
  }
}

uint64_t sub_25760CE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_NonMaximumSuppression.PickTop(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA0, &qword_257775280);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAF0, &qword_2577678D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_2574AD5D8(a1, v12, &qword_27F87FAA0, &qword_257775280);
  v28 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FAA0, &qword_257775280);
  }

  else
  {
    sub_25760F9F4();
    sub_25760F9F4();
    sub_2574695E4(v22, &qword_27F87FAF0, &qword_2577678D0);
    sub_25760F9F4();
    sub_25760F9F4();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_25760F7A4(&qword_27F87FAB8, type metadata accessor for Proto_NonMaximumSuppression.PickTop);
  v24 = v31;
  sub_2577433D4();
  if (v24)
  {
    v25 = v22;
    return sub_2574695E4(v25, &qword_27F87FAF0, &qword_2577678D0);
  }

  sub_2574AD5D8(v22, v20, &qword_27F87FAF0, &qword_2577678D0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87FAF0, &qword_2577678D0);
    v25 = v20;
    return sub_2574695E4(v25, &qword_27F87FAF0, &qword_2577678D0);
  }

  sub_25760F9F4();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v22, &qword_27F87FAF0, &qword_2577678D0);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F87FAA0, &qword_257775280);
  sub_25760F9F4();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
}

uint64_t sub_25760D330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Proto_NonMaximumSuppression(0) + 20);
  v32 = a1;
  sub_2574AD5D8(a1 + v31, v12, &qword_27F87FAA8, &unk_257767580);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FAA8, &unk_257767580);
  }

  else
  {
    sub_25760F9F4();
    sub_25760F9F4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25760F99C(v17, type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
      sub_25760F9F4();
      sub_25760F9F4();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_25760F7A4(&qword_27F87A748, type metadata accessor for Proto_StringVector);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87A878, &unk_257748700);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87A878, &unk_257748700);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87A878, &unk_257748700);
  }

  sub_25760F9F4();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F87FAA8, &unk_257767580);
  sub_25760F9F4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_25760D834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_Int64Vector(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A880, &qword_25774AFD0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Proto_NonMaximumSuppression(0) + 20);
  v32 = a1;
  sub_2574AD5D8(a1 + v31, v12, &qword_27F87FAA8, &unk_257767580);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FAA8, &unk_257767580);
  }

  else
  {
    sub_25760F9F4();
    sub_25760F9F4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
      sub_25760F9F4();
      sub_25760F9F4();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_25760F99C(v17, type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels);
    }
  }

  sub_25760F7A4(&qword_281537E60, type metadata accessor for Proto_Int64Vector);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87A880, &qword_25774AFD0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_25760F9F4();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F87FAA8, &unk_257767580);
  sub_25760F9F4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_25760E058()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = OUTLINED_FUNCTION_9_9();
  result = sub_25760E2A8(v9, v10, v11, v12);
  if (!v1)
  {
    v14 = type metadata accessor for Proto_NonMaximumSuppression(0);
    sub_2574AD5D8(v2 + v14[5], v8, &qword_27F87FAA8, &unk_257767580);
    v15 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v15) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = OUTLINED_FUNCTION_9_9();
        sub_25760E6A4(v16, v17, v18, v19);
      }

      else
      {
        v20 = OUTLINED_FUNCTION_9_9();
        sub_25760E484(v20, v21, v22, v23);
      }

      OUTLINED_FUNCTION_4_11();
      sub_25760F99C(v8, v24);
    }

    if (*(v2 + v14[6]))
    {
      OUTLINED_FUNCTION_19_6();
      sub_257743524();
    }

    if (*(v2 + v14[7]))
    {
      OUTLINED_FUNCTION_19_6();
      sub_257743524();
    }

    OUTLINED_FUNCTION_3_16(v14[8]);
    if (v25)
    {
      OUTLINED_FUNCTION_8_7();
    }

    OUTLINED_FUNCTION_3_16(v14[9]);
    if (v26)
    {
      OUTLINED_FUNCTION_8_7();
    }

    OUTLINED_FUNCTION_3_16(v14[10]);
    if (v27)
    {
      OUTLINED_FUNCTION_8_7();
    }

    OUTLINED_FUNCTION_3_16(v14[11]);
    if (v28)
    {
      OUTLINED_FUNCTION_8_7();
    }

    OUTLINED_FUNCTION_3_16(v14[12]);
    if (v29)
    {
      OUTLINED_FUNCTION_8_7();
    }

    OUTLINED_FUNCTION_3_16(v14[13]);
    if (v30)
    {
      OUTLINED_FUNCTION_8_7();
    }

    v31 = v2 + v14[14];
    OUTLINED_FUNCTION_19_6();
    return sub_257743194();
  }

  return result;
}

uint64_t sub_25760E2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA0, &qword_257775280);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_NonMaximumSuppression.PickTop(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v8, &qword_27F87FAA0, &qword_257775280);
  v13 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    return sub_2574695E4(v8, &qword_27F87FAA0, &qword_257775280);
  }

  sub_25760F9F4();
  sub_25760F7A4(&qword_27F87FAB8, type metadata accessor for Proto_NonMaximumSuppression.PickTop);
  sub_257743574();
  return sub_25760F99C(v12, type metadata accessor for Proto_NonMaximumSuppression.PickTop);
}

uint64_t sub_25760E484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_StringVector(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_NonMaximumSuppression(0);
  sub_2574AD5D8(a1 + *(v13 + 20), v8, &qword_27F87FAA8, &unk_257767580);
  v14 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FAA8, &unk_257767580);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_25760F9F4();
      sub_25760F7A4(&qword_27F87A748, type metadata accessor for Proto_StringVector);
      sub_257743574();
      return sub_25760F99C(v12, type metadata accessor for Proto_StringVector);
    }

    result = sub_25760F99C(v8, type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels);
  }

  __break(1u);
  return result;
}

uint64_t sub_25760E6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Int64Vector(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_NonMaximumSuppression(0);
  sub_2574AD5D8(a1 + *(v13 + 20), v8, &qword_27F87FAA8, &unk_257767580);
  v14 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FAA8, &unk_257767580);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25760F9F4();
      sub_25760F7A4(&qword_281537E60, type metadata accessor for Proto_Int64Vector);
      sub_257743574();
      return sub_25760F99C(v12, type metadata accessor for Proto_Int64Vector);
    }

    result = sub_25760F99C(v8, type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels);
  }

  __break(1u);
  return result;
}

uint64_t _s20MLModelSpecification33NonMaximumSuppressorConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v84 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
  v4 = OUTLINED_FUNCTION_4(v84);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v81 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v82 = &v81 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB10, &qword_2577678E8);
  OUTLINED_FUNCTION_4(v83);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v81 - v17;
  v19 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod(0);
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA0, &qword_257775280);
  OUTLINED_FUNCTION_13(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  v31 = &v81 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB18, &unk_2577678F0);
  OUTLINED_FUNCTION_13(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_29();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v81 - v37;
  v39 = *(v36 + 56);
  v85 = a1;
  sub_2574AD5D8(a1, &v81 - v37, &qword_27F87FAA0, &qword_257775280);
  v86 = a2;
  sub_2574AD5D8(a2, &v38[v39], &qword_27F87FAA0, &qword_257775280);
  OUTLINED_FUNCTION_6_9(v38);
  if (v40)
  {
    OUTLINED_FUNCTION_6_9(&v38[v39]);
    if (v40)
    {
      sub_2574695E4(v38, &qword_27F87FAA0, &qword_257775280);
      goto LABEL_11;
    }

LABEL_9:
    v41 = &qword_27F87FB18;
    v42 = &unk_2577678F0;
    v43 = v38;
LABEL_19:
    sub_2574695E4(v43, v41, v42);
    goto LABEL_20;
  }

  sub_2574AD5D8(v38, v31, &qword_27F87FAA0, &qword_257775280);
  OUTLINED_FUNCTION_6_9(&v38[v39]);
  if (v40)
  {
    sub_25760F99C(v31, type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod);
    goto LABEL_9;
  }

  sub_25760F9F4();
  v44 = sub_25760C370();
  sub_25760F99C(v25, type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod);
  sub_25760F99C(v31, type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod);
  sub_2574695E4(v38, &qword_27F87FAA0, &qword_257775280);
  if ((v44 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v45 = type metadata accessor for Proto_NonMaximumSuppression(0);
  v46 = v45[5];
  v47 = *(v83 + 48);
  v48 = v85;
  OUTLINED_FUNCTION_19_6();
  sub_2574AD5D8(v49, v50, v51, &unk_257767580);
  v52 = v86 + v46;
  v53 = v86;
  sub_2574AD5D8(v52, &v18[v47], &qword_27F87FAA8, &unk_257767580);
  if (__swift_getEnumTagSinglePayload(v18, 1, v84) == 1)
  {
    OUTLINED_FUNCTION_6_9(&v18[v47]);
    if (!v40)
    {
      goto LABEL_18;
    }

    sub_2574695E4(v18, &qword_27F87FAA8, &unk_257767580);
  }

  else
  {
    v54 = v82;
    sub_2574AD5D8(v18, v82, &qword_27F87FAA8, &unk_257767580);
    OUTLINED_FUNCTION_6_9(&v18[v47]);
    if (v40)
    {
      OUTLINED_FUNCTION_4_11();
      sub_25760F99C(v54, v55);
LABEL_18:
      v41 = &qword_27F87FB10;
      v42 = &qword_2577678E8;
      v43 = v18;
      goto LABEL_19;
    }

    v58 = v81;
    sub_25760F9F4();
    v59 = sub_25760C588();
    sub_25760F99C(v58, type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels);
    sub_25760F99C(v54, type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels);
    sub_2574695E4(v18, &qword_27F87FAA8, &unk_257767580);
    if ((v59 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (*(v48 + v45[6]) == *(v53 + v45[6]) && *(v48 + v45[7]) == *(v53 + v45[7]))
  {
    OUTLINED_FUNCTION_5_17(v45[8]);
    v62 = v40 && v60 == v61;
    if (v62 || (sub_257743994() & 1) != 0)
    {
      OUTLINED_FUNCTION_5_17(v45[9]);
      v65 = v40 && v63 == v64;
      if (v65 || (sub_257743994() & 1) != 0)
      {
        OUTLINED_FUNCTION_5_17(v45[10]);
        v68 = v40 && v66 == v67;
        if (v68 || (sub_257743994() & 1) != 0)
        {
          OUTLINED_FUNCTION_5_17(v45[11]);
          v71 = v40 && v69 == v70;
          if (v71 || (sub_257743994() & 1) != 0)
          {
            OUTLINED_FUNCTION_5_17(v45[12]);
            v74 = v40 && v72 == v73;
            if (v74 || (sub_257743994() & 1) != 0)
            {
              OUTLINED_FUNCTION_5_17(v45[13]);
              v77 = v40 && v75 == v76;
              if (v77 || (sub_257743994() & 1) != 0)
              {
                v78 = v45[14];
                sub_2577431B4();
                OUTLINED_FUNCTION_1_17();
                sub_25760F7A4(v79, v80);
                v56 = sub_257743644();
                return v56 & 1;
              }
            }
          }
        }
      }
    }
  }

LABEL_20:
  v56 = 0;
  return v56 & 1;
}

uint64_t sub_25760EEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25760F7A4(&qword_27F87FAE8, type metadata accessor for Proto_NonMaximumSuppression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25760EF64(uint64_t a1)
{
  v2 = sub_25760F7A4(&qword_27F87BB20, type metadata accessor for Proto_NonMaximumSuppression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25760F02C()
{
  sub_25760F7A4(&qword_27F87BB20, type metadata accessor for Proto_NonMaximumSuppression);

  return sub_257743424();
}

uint64_t sub_25760F0AC()
{
  result = MEMORY[0x259C64E90](0x706F546B6369502ELL, 0xE800000000000000);
  qword_27F8E9FB8 = 0xD00000000000001BLL;
  unk_27F8E9FC0 = 0x800000025777FE80;
  return result;
}

uint64_t sub_25760F118()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9FC8);
  __swift_project_value_buffer(v0, qword_27F8E9FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442B0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "perClass";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_257743584();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_257743594();
}

uint64_t sub_25760F284()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_257743274();
    }
  }

  return result;
}

uint64_t sub_25760F2DC()
{
  if (*v0 != 1 || (OUTLINED_FUNCTION_11_6(), result = sub_2577434B4(), !v1))
  {
    v3 = &v0[*(type metadata accessor for Proto_NonMaximumSuppression.PickTop(0) + 20)];
    return sub_257743194();
  }

  return result;
}

uint64_t sub_25760F374(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_0_0();
  v4 = *(type metadata accessor for Proto_NonMaximumSuppression.PickTop(v3) + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_1_17();
  sub_25760F7A4(v5, v6);
  return sub_257743644() & 1;
}

uint64_t sub_25760F408(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_257743A14();
  a1(0);
  sub_25760F7A4(a2, a3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25760F494()
{
  if (qword_27F879950 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8E9FB8;

  return v0;
}

uint64_t sub_25760F52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25760F7A4(&qword_27F87FAF8, type metadata accessor for Proto_NonMaximumSuppression.PickTop);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25760F5CC(uint64_t a1)
{
  v2 = sub_25760F7A4(&qword_27F87FAB8, type metadata accessor for Proto_NonMaximumSuppression.PickTop);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25760F694()
{
  sub_25760F7A4(&qword_27F87FAB8, type metadata accessor for Proto_NonMaximumSuppression.PickTop);

  return sub_257743424();
}

uint64_t sub_25760F7A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25760F99C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25760F9F4()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t sub_25760FA48()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_3_16@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_17@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_8_7()
{

  return sub_257743534();
}

void OUTLINED_FUNCTION_18_8(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  *v3 = 0;
  v3[1] = v1;
}

uint64_t type metadata accessor for Proto_Normalizer()
{
  result = qword_281537EC8;
  if (!qword_281537EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25760FC10()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25760FC9C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v1 = a1 + *(type metadata accessor for Proto_Normalizer() + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25760FCDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }

LABEL_7:
      v4 = *(type metadata accessor for Proto_Normalizer() + 20);
      sub_2577431B4();
      sub_257610840(&qword_27F879B68, MEMORY[0x277D216C8]);
      return sub_257743644() & 1;
    }

    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_25760FDD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576107EC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_25760FE34()
{
  result = qword_27F87FB20;
  if (!qword_27F87FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87FB20);
  }

  return result;
}

unint64_t sub_25760FE8C()
{
  result = qword_27F87FB28;
  if (!qword_27F87FB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F87FB30, qword_2577679C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87FB28);
  }

  return result;
}

unint64_t sub_25760FEF8()
{
  result = qword_27F87FB38;
  if (!qword_27F87FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87FB38);
  }

  return result;
}

uint64_t sub_25760FF4C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9FE0);
  __swift_project_value_buffer(v0, qword_27F8E9FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442B0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "normType";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_257743584();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_257743594();
}

uint64_t sub_2576100B8()
{
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_257610120();
    }
  }

  return result;
}

uint64_t sub_257610188()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_2576107EC(), result = sub_2577434C4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Proto_Normalizer() + 20);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_257610244()
{
  sub_257743A14();
  type metadata accessor for Proto_Normalizer();
  sub_257610840(&qword_27F87FB48, type metadata accessor for Proto_Normalizer);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25761031C(uint64_t a1, uint64_t a2)
{
  v4 = sub_257610840(&qword_27F87FB58, type metadata accessor for Proto_Normalizer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2576103BC(uint64_t a1)
{
  v2 = sub_257610840(&qword_27F87A130, type metadata accessor for Proto_Normalizer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25761042C()
{
  sub_257610840(&qword_27F87A130, type metadata accessor for Proto_Normalizer);

  return sub_257743424();
}

uint64_t sub_2576104AC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9FF8);
  __swift_project_value_buffer(v0, qword_27F8E9FF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LMax";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "L1";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "L2";
  *(v12 + 1) = 2;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

unint64_t sub_2576107EC()
{
  result = qword_27F87FB60;
  if (!qword_27F87FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87FB60);
  }

  return result;
}

uint64_t sub_257610840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for Proto_Odie_Library()
{
  result = qword_27F87FB68;
  if (!qword_27F87FB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576108FC()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257610978@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Proto_Odie_Library() + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2576109B4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA010);
  __swift_project_value_buffer(v0, qword_27F8EA010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442B0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "fileName";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_257743584();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_257743594();
}

uint64_t sub_257610B20()
{
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_257743394();
    }
  }

  return result;
}

uint64_t sub_257610B84()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_257743534(), !v1))
  {
    v6 = v0 + *(type metadata accessor for Proto_Odie_Library() + 20);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_257610C28(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Proto_Odie_Library() + 20);
  sub_2577431B4();
  sub_2576110F4(&qword_27F879B68, MEMORY[0x277D216C8]);
  return sub_257743644() & 1;
}

uint64_t sub_257610CE8()
{
  sub_257743A14();
  type metadata accessor for Proto_Odie_Library();
  sub_2576110F4(&qword_27F87FB80, type metadata accessor for Proto_Odie_Library);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257610DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576110F4(&qword_27F87FB90, type metadata accessor for Proto_Odie_Library);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257610E3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F879970 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8EA010);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257610EE4(uint64_t a1)
{
  v2 = sub_2576110F4(&qword_27F87BB08, type metadata accessor for Proto_Odie_Library);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257610F54()
{
  sub_2576110F4(&qword_27F87BB08, type metadata accessor for Proto_Odie_Library);

  return sub_257743424();
}

uint64_t sub_2576110F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_257611184()
{
  sub_257611220();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257611220()
{
  if (!qword_281537D38)
  {
    type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(255);
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_281537D38);
    }
  }
}

uint64_t sub_2576112A8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = type metadata accessor for Proto_OneHotEncoder(0);
  *(a1 + v3[5]) = 0;
  v4 = a1 + v3[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + v3[7];
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_257611314(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for Proto_Int64Vector(0);
  v4 = OUTLINED_FUNCTION_4(v56);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = (v8 - v7);
  v10 = type metadata accessor for Proto_StringVector(0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = (v15 - v14);
  v17 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = (&v55 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FBE8, &qword_257768098);
  OUTLINED_FUNCTION_13(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_29();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v55 - v31;
  v33 = *(v30 + 56);
  sub_2576135D0(a1, &v55 - v31);
  sub_2576135D0(a2, &v32[v33]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2576135D0(v32, v23);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257613574(&v32[v33], v9, type metadata accessor for Proto_Int64Vector);
      if (sub_257487374(*v23, *v9))
      {
        v34 = *(v56 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_3_17();
        sub_2576133F0(v35, v36);
        v37 = sub_257743644();
        OUTLINED_FUNCTION_1_18();
        sub_25761351C(v9, v38);
        if (v37)
        {
          OUTLINED_FUNCTION_1_18();
          v40 = v23;
LABEL_13:
          sub_25761351C(v40, v39);
          OUTLINED_FUNCTION_2_17();
          sub_25761351C(v32, v48);
          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_18();
        sub_25761351C(v9, v50);
      }

      OUTLINED_FUNCTION_1_18();
      v52 = v23;
LABEL_18:
      sub_25761351C(v52, v51);
      OUTLINED_FUNCTION_2_17();
      sub_25761351C(v32, v54);
      return 0;
    }

    OUTLINED_FUNCTION_1_18();
    v42 = v23;
  }

  else
  {
    sub_2576135D0(v32, v25);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257613574(&v32[v33], v16, type metadata accessor for Proto_StringVector);
      if (sub_257479C78(*v25, *v16))
      {
        v43 = *(v10 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_3_17();
        sub_2576133F0(v44, v45);
        v46 = sub_257743644();
        OUTLINED_FUNCTION_0_27();
        sub_25761351C(v16, v47);
        if (v46)
        {
          OUTLINED_FUNCTION_0_27();
          v40 = v25;
          goto LABEL_13;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_27();
        sub_25761351C(v16, v53);
      }

      OUTLINED_FUNCTION_0_27();
      v52 = v25;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_0_27();
    v42 = v25;
  }

  sub_25761351C(v42, v41);
  sub_2574695E4(v32, &qword_27F87FBE8, &qword_257768098);
  return 0;
}

uint64_t sub_2576116CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576134C8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_257611728()
{
  result = qword_27F87FBA0;
  if (!qword_27F87FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87FBA0);
  }

  return result;
}

unint64_t sub_257611780()
{
  result = qword_27F87FBA8;
  if (!qword_27F87FBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F87FBB0, qword_257767E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87FBA8);
  }

  return result;
}

unint64_t sub_2576117EC()
{
  result = qword_27F87FBB8;
  if (!qword_27F87FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87FBB8);
  }

  return result;
}

uint64_t sub_257611840()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA028);
  __swift_project_value_buffer(v0, qword_27F8EA028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "stringCategories";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "int64Categories";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 10;
  *v12 = "outputSparse";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 11;
  *v14 = "handleUnknown";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257611A84()
{
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 11:
        OUTLINED_FUNCTION_11_6();
        sub_257612594();
        break;
      case 2:
        OUTLINED_FUNCTION_205();
        OUTLINED_FUNCTION_11_6();
        sub_257612038(v7, v8, v9, v10);
        break;
      case 10:
        OUTLINED_FUNCTION_11_6();
        sub_257612530();
        break;
      case 1:
        OUTLINED_FUNCTION_205();
        OUTLINED_FUNCTION_11_6();
        sub_257611B40(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_257611B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v43 = a2;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v35 - v27;
  __swift_storeEnumTagSinglePayload(&v35 - v27, 1, 1, v5);
  v36 = a1;
  sub_2574AD5D8(a1, v14, &qword_27F87FB98, &unk_257767D60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  v38 = v15;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v14, &qword_27F87FB98, &unk_257767D60);
  }

  else
  {
    sub_257613574(v14, v21, type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType);
    sub_257613574(v21, v19, type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25761351C(v19, type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType);
    }

    else
    {
      sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
      sub_257613574(v19, v10, type metadata accessor for Proto_StringVector);
      sub_257613574(v10, v28, type metadata accessor for Proto_StringVector);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v5);
    }
  }

  sub_2576133F0(&qword_27F87A748, type metadata accessor for Proto_StringVector);
  v29 = v40;
  sub_2577433D4();
  if (v29)
  {
    v30 = v28;
    return sub_2574695E4(v30, &qword_27F87A878, &unk_257748700);
  }

  sub_2574AD5D8(v28, v26, &qword_27F87A878, &unk_257748700);
  if (__swift_getEnumTagSinglePayload(v26, 1, v5) == 1)
  {
    sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
    v30 = v26;
    return sub_2574695E4(v30, &qword_27F87A878, &unk_257748700);
  }

  v32 = v39;
  sub_257613574(v26, v39, type metadata accessor for Proto_StringVector);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v33 = v38;
  sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
  v34 = v36;
  sub_2574695E4(v36, &qword_27F87FB98, &unk_257767D60);
  sub_257613574(v32, v34, type metadata accessor for Proto_StringVector);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
}

uint64_t sub_257612038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v43 = a2;
  v5 = type metadata accessor for Proto_Int64Vector(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A880, &qword_25774AFD0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v35 - v27;
  __swift_storeEnumTagSinglePayload(&v35 - v27, 1, 1, v5);
  v36 = a1;
  sub_2574AD5D8(a1, v14, &qword_27F87FB98, &unk_257767D60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  v38 = v15;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v14, &qword_27F87FB98, &unk_257767D60);
  }

  else
  {
    sub_257613574(v14, v21, type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType);
    sub_257613574(v21, v19, type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v28, &qword_27F87A880, &qword_25774AFD0);
      sub_257613574(v19, v10, type metadata accessor for Proto_Int64Vector);
      sub_257613574(v10, v28, type metadata accessor for Proto_Int64Vector);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v5);
    }

    else
    {
      sub_25761351C(v19, type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType);
    }
  }

  sub_2576133F0(&qword_281537E60, type metadata accessor for Proto_Int64Vector);
  v29 = v40;
  sub_2577433D4();
  if (v29)
  {
    v30 = v28;
    return sub_2574695E4(v30, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_2574AD5D8(v28, v26, &qword_27F87A880, &qword_25774AFD0);
  if (__swift_getEnumTagSinglePayload(v26, 1, v5) == 1)
  {
    sub_2574695E4(v28, &qword_27F87A880, &qword_25774AFD0);
    v30 = v26;
    return sub_2574695E4(v30, &qword_27F87A880, &qword_25774AFD0);
  }

  v32 = v39;
  sub_257613574(v26, v39, type metadata accessor for Proto_Int64Vector);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v33 = v38;
  sub_2574695E4(v28, &qword_27F87A880, &qword_25774AFD0);
  v34 = v36;
  sub_2574695E4(v36, &qword_27F87FB98, &unk_257767D60);
  sub_257613574(v32, v34, type metadata accessor for Proto_Int64Vector);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
}

uint64_t sub_257612594()
{
  v0 = *(type metadata accessor for Proto_OneHotEncoder(0) + 24);
  sub_2576134C8();
  return sub_257743284();
}

uint64_t sub_257612608()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  sub_2574AD5D8(v3, &v26 - v8, &qword_27F87FB98, &unk_257767D60);
  v10 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_11_6();
    sub_2576129F4(v11, v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_11_6();
    sub_2576127E0(v15, v16, v17, v18);
  }

  v2 = v1;
  OUTLINED_FUNCTION_2_17();
  result = sub_25761351C(v9, v19);
  if (!v1)
  {
LABEL_6:
    v21 = type metadata accessor for Proto_OneHotEncoder(0);
    if (*(v3 + v21[5]) != 1 || (OUTLINED_FUNCTION_11_6(), result = sub_2577434B4(), !v2))
    {
      v22 = v3 + v21[6];
      v23 = *v22;
      if (!*v22 || (v24 = *(v22 + 8), v26 = v23, v27 = v24, sub_2576134C8(), result = sub_2577434C4(), !v2))
      {
        v25 = v3 + v21[7];
        return sub_257743194();
      }
    }
  }

  return result;
}

uint64_t sub_2576127E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_StringVector(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v8, &qword_27F87FB98, &unk_257767D60);
  v13 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FB98, &unk_257767D60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257613574(v8, v12, type metadata accessor for Proto_StringVector);
      sub_2576133F0(&qword_27F87A748, type metadata accessor for Proto_StringVector);
      sub_257743574();
      return sub_25761351C(v12, type metadata accessor for Proto_StringVector);
    }

    result = sub_25761351C(v8, type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType);
  }

  __break(1u);
  return result;
}

uint64_t sub_2576129F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_Int64Vector(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v8, &qword_27F87FB98, &unk_257767D60);
  v13 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FB98, &unk_257767D60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257613574(v8, v12, type metadata accessor for Proto_Int64Vector);
      sub_2576133F0(&qword_281537E60, type metadata accessor for Proto_Int64Vector);
      sub_257743574();
      return sub_25761351C(v12, type metadata accessor for Proto_Int64Vector);
    }

    result = sub_25761351C(v8, type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType);
  }

  __break(1u);
  return result;
}

uint64_t _s20MLModelSpecification26OneHotEncoderConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FBF0, &unk_2577680A0);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v41 - v22;
  v24 = *(v21 + 56);
  sub_2574AD5D8(a1, &v41 - v22, &qword_27F87FB98, &unk_257767D60);
  sub_2574AD5D8(a2, &v23[v24], &qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_65(v23);
  if (v25)
  {
    OUTLINED_FUNCTION_65(&v23[v24]);
    if (v25)
    {
      sub_2574695E4(v23, &qword_27F87FB98, &unk_257767D60);
      goto LABEL_11;
    }

LABEL_9:
    sub_2574695E4(v23, &qword_27F87FBF0, &unk_2577680A0);
    goto LABEL_12;
  }

  sub_2574AD5D8(v23, v16, &qword_27F87FB98, &unk_257767D60);
  OUTLINED_FUNCTION_65(&v23[v24]);
  if (v25)
  {
    OUTLINED_FUNCTION_2_17();
    sub_25761351C(v16, v26);
    goto LABEL_9;
  }

  sub_257613574(&v23[v24], v10, type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType);
  v27 = sub_257611314(v16, v10);
  sub_25761351C(v10, type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType);
  sub_25761351C(v16, type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType);
  sub_2574695E4(v23, &qword_27F87FB98, &unk_257767D60);
  if ((v27 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  v28 = type metadata accessor for Proto_OneHotEncoder(0);
  if (*(a1 + v28[5]) == *(a2 + v28[5]))
  {
    v31 = v28[6];
    v32 = *(a1 + v31);
    v33 = *(a1 + v31 + 8);
    v34 = a2 + v31;
    v35 = *(a2 + v31);
    v36 = *(v34 + 8);
    if (v33)
    {
      v37 = v32 != 0;
    }

    else
    {
      v37 = v32;
    }

    if (v36 == 1)
    {
      if (v35)
      {
        if (v37 != 1)
        {
          goto LABEL_12;
        }
      }

      else if (v37)
      {
        goto LABEL_12;
      }
    }

    else if (v37 != v35)
    {
      goto LABEL_12;
    }

    v38 = v28[7];
    sub_2577431B4();
    OUTLINED_FUNCTION_3_17();
    sub_2576133F0(v39, v40);
    v29 = sub_257743644();
    return v29 & 1;
  }

LABEL_12:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_257612F0C()
{
  sub_257743A14();
  type metadata accessor for Proto_OneHotEncoder(0);
  sub_2576133F0(&qword_27F87FBC8, type metadata accessor for Proto_OneHotEncoder);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257612FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576133F0(&qword_27F87FBD8, type metadata accessor for Proto_OneHotEncoder);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257613084(uint64_t a1)
{
  v2 = sub_2576133F0(&qword_27F87BB10, type metadata accessor for Proto_OneHotEncoder);

  return MEMORY[0x28217E428](a1, v2);
}