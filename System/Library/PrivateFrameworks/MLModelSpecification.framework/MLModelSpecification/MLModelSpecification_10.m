uint64_t sub_257556348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_RoundLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F398, &qword_257766FC8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 50)
    {
      sub_2574695E4(v25, &qword_27F87F398, &qword_257766FC8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D6D8, type metadata accessor for Proto_RoundLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F398, &qword_257766FC8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F398, &qword_257766FC8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F398, &qword_257766FC8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F398, &qword_257766FC8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575568B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_Exp2LayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3A0, &qword_257766FD0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 51)
    {
      sub_2574695E4(v25, &qword_27F87F3A0, &qword_257766FD0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DBD0, type metadata accessor for Proto_Exp2LayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F3A0, &qword_257766FD0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F3A0, &qword_257766FD0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F3A0, &qword_257766FD0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F3A0, &qword_257766FD0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257556E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SinLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3A8, &qword_257766FD8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 52)
    {
      sub_2574695E4(v25, &qword_27F87F3A8, &qword_257766FD8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DD68, type metadata accessor for Proto_SinLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F3A8, &qword_257766FD8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F3A8, &qword_257766FD8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F3A8, &qword_257766FD8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F3A8, &qword_257766FD8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257557398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CosLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3B0, &qword_257766FE0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 53)
    {
      sub_2574695E4(v25, &qword_27F87F3B0, &qword_257766FE0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DD48, type metadata accessor for Proto_CosLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F3B0, &qword_257766FE0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F3B0, &qword_257766FE0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F3B0, &qword_257766FE0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F3B0, &qword_257766FE0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257557908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_TanLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3B8, &qword_257766FE8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 54)
    {
      sub_2574695E4(v25, &qword_27F87F3B8, &qword_257766FE8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DD28, type metadata accessor for Proto_TanLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F3B8, &qword_257766FE8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F3B8, &qword_257766FE8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F3B8, &qword_257766FE8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F3B8, &qword_257766FE8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257557E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_AsinLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3C0, &qword_257766FF0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 55)
    {
      sub_2574695E4(v25, &qword_27F87F3C0, &qword_257766FF0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DD08, type metadata accessor for Proto_AsinLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F3C0, &qword_257766FF0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F3C0, &qword_257766FF0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F3C0, &qword_257766FF0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F3C0, &qword_257766FF0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575583E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_AcosLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3C8, &qword_257766FF8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 56)
    {
      sub_2574695E4(v25, &qword_27F87F3C8, &qword_257766FF8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DCE8, type metadata accessor for Proto_AcosLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F3C8, &qword_257766FF8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F3C8, &qword_257766FF8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F3C8, &qword_257766FF8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F3C8, &qword_257766FF8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257558958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_AtanLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3D0, &qword_257767000);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 57)
    {
      sub_2574695E4(v25, &qword_27F87F3D0, &qword_257767000);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DCC8, type metadata accessor for Proto_AtanLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F3D0, &qword_257767000);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F3D0, &qword_257767000);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F3D0, &qword_257767000);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F3D0, &qword_257767000);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257558EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SinhLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3D8, &qword_257767008);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 58)
    {
      sub_2574695E4(v25, &qword_27F87F3D8, &qword_257767008);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DCA8, type metadata accessor for Proto_SinhLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F3D8, &qword_257767008);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F3D8, &qword_257767008);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F3D8, &qword_257767008);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F3D8, &qword_257767008);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257559438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CoshLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3E0, &qword_257767010);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 59)
    {
      sub_2574695E4(v25, &qword_27F87F3E0, &qword_257767010);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DC88, type metadata accessor for Proto_CoshLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F3E0, &qword_257767010);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F3E0, &qword_257767010);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F3E0, &qword_257767010);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F3E0, &qword_257767010);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575599A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_TanhLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3E8, &qword_257767018);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 60)
    {
      sub_2574695E4(v25, &qword_27F87F3E8, &qword_257767018);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DC68, type metadata accessor for Proto_TanhLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F3E8, &qword_257767018);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F3E8, &qword_257767018);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F3E8, &qword_257767018);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F3E8, &qword_257767018);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257559F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_AsinhLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3F0, &qword_257767020);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 61)
    {
      sub_2574695E4(v25, &qword_27F87F3F0, &qword_257767020);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DC48, type metadata accessor for Proto_AsinhLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F3F0, &qword_257767020);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F3F0, &qword_257767020);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F3F0, &qword_257767020);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F3F0, &qword_257767020);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755A488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_AcoshLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F3F8, &qword_257767028);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 62)
    {
      sub_2574695E4(v25, &qword_27F87F3F8, &qword_257767028);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DC28, type metadata accessor for Proto_AcoshLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F3F8, &qword_257767028);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F3F8, &qword_257767028);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F3F8, &qword_257767028);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F3F8, &qword_257767028);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755A9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_AtanhLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F400, &qword_257767030);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 63)
    {
      sub_2574695E4(v25, &qword_27F87F400, &qword_257767030);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DC08, type metadata accessor for Proto_AtanhLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F400, &qword_257767030);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F400, &qword_257767030);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F400, &qword_257767030);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F400, &qword_257767030);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755AF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ErfLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F408, &qword_257767038);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 64)
    {
      sub_2574695E4(v25, &qword_27F87F408, &qword_257767038);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D608, type metadata accessor for Proto_ErfLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F408, &qword_257767038);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F408, &qword_257767038);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F408, &qword_257767038);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F408, &qword_257767038);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755B4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_GeluLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F410, &qword_257767040);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 65)
    {
      sub_2574695E4(v25, &qword_27F87F410, &qword_257767040);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D5F0, type metadata accessor for Proto_GeluLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F410, &qword_257767040);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F410, &qword_257767040);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F410, &qword_257767040);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F410, &qword_257767040);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755BA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_EqualLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F418, &qword_257767048);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 66)
    {
      sub_2574695E4(v25, &qword_27F87F418, &qword_257767048);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E418, type metadata accessor for Proto_EqualLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F418, &qword_257767048);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F418, &qword_257767048);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F418, &qword_257767048);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F418, &qword_257767048);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755BFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_NotEqualLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F420, &qword_257767050);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 67)
    {
      sub_2574695E4(v25, &qword_27F87F420, &qword_257767050);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E400, type metadata accessor for Proto_NotEqualLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F420, &qword_257767050);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F420, &qword_257767050);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F420, &qword_257767050);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F420, &qword_257767050);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755C528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_LessThanLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F428, &qword_257767058);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 68)
    {
      sub_2574695E4(v25, &qword_27F87F428, &qword_257767058);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E448, type metadata accessor for Proto_LessThanLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F428, &qword_257767058);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F428, &qword_257767058);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F428, &qword_257767058);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F428, &qword_257767058);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755CA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_LessEqualLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F430, &qword_257767060);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 69)
    {
      sub_2574695E4(v25, &qword_27F87F430, &qword_257767060);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E430, type metadata accessor for Proto_LessEqualLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F430, &qword_257767060);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F430, &qword_257767060);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F430, &qword_257767060);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F430, &qword_257767060);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755D008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_GreaterThanLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F438, &qword_257767068);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 70)
    {
      sub_2574695E4(v25, &qword_27F87F438, &qword_257767068);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E478, type metadata accessor for Proto_GreaterThanLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F438, &qword_257767068);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F438, &qword_257767068);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F438, &qword_257767068);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F438, &qword_257767068);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755D578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_GreaterEqualLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F440, &qword_257767070);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 71)
    {
      sub_2574695E4(v25, &qword_27F87F440, &qword_257767070);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E460, type metadata accessor for Proto_GreaterEqualLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F440, &qword_257767070);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F440, &qword_257767070);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F440, &qword_257767070);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F440, &qword_257767070);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755DAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_LogicalOrLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F448, &qword_257767078);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 72)
    {
      sub_2574695E4(v25, &qword_27F87F448, &qword_257767078);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E3C0, type metadata accessor for Proto_LogicalOrLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F448, &qword_257767078);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F448, &qword_257767078);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F448, &qword_257767078);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F448, &qword_257767078);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755E058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_LogicalXorLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F450, &qword_257767080);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 73)
    {
      sub_2574695E4(v25, &qword_27F87F450, &qword_257767080);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E3A0, type metadata accessor for Proto_LogicalXorLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F450, &qword_257767080);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F450, &qword_257767080);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F450, &qword_257767080);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F450, &qword_257767080);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755E5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_LogicalNotLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F458, &qword_257767088);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 74)
    {
      sub_2574695E4(v25, &qword_27F87F458, &qword_257767088);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E380, type metadata accessor for Proto_LogicalNotLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F458, &qword_257767088);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F458, &qword_257767088);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F458, &qword_257767088);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F458, &qword_257767088);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755EB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_LogicalAndLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F460, &qword_257767090);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 75)
    {
      sub_2574695E4(v25, &qword_27F87F460, &qword_257767090);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E3E0, type metadata accessor for Proto_LogicalAndLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F460, &qword_257767090);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F460, &qword_257767090);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F460, &qword_257767090);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F460, &qword_257767090);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755F0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ModBroadcastableLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F468, &qword_257767098);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 76)
    {
      sub_2574695E4(v25, &qword_27F87F468, &qword_257767098);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DAD0, type metadata accessor for Proto_ModBroadcastableLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F468, &qword_257767098);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F468, &qword_257767098);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F468, &qword_257767098);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F468, &qword_257767098);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755F618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_MinBroadcastableLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F470, &qword_2577670A0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 77)
    {
      sub_2574695E4(v25, &qword_27F87F470, &qword_2577670A0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DAE8, type metadata accessor for Proto_MinBroadcastableLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F470, &qword_2577670A0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F470, &qword_2577670A0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F470, &qword_2577670A0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F470, &qword_2577670A0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25755FB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_MaxBroadcastableLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F478, &qword_2577670A8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 78)
    {
      sub_2574695E4(v25, &qword_27F87F478, &qword_2577670A8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DB00, type metadata accessor for Proto_MaxBroadcastableLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F478, &qword_2577670A8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F478, &qword_2577670A8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F478, &qword_2577670A8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F478, &qword_2577670A8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575600F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_AddBroadcastableLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F480, &qword_2577670B0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 79)
    {
      sub_2574695E4(v25, &qword_27F87F480, &qword_2577670B0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DB10, type metadata accessor for Proto_AddBroadcastableLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F480, &qword_2577670B0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F480, &qword_2577670B0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F480, &qword_2577670B0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F480, &qword_2577670B0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257560668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_PowBroadcastableLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F488, &qword_2577670B8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 80)
    {
      sub_2574695E4(v25, &qword_27F87F488, &qword_2577670B8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DBF0, type metadata accessor for Proto_PowBroadcastableLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F488, &qword_2577670B8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F488, &qword_2577670B8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F488, &qword_2577670B8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F488, &qword_2577670B8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257560BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_DivideBroadcastableLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F490, &qword_2577670C0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 81)
    {
      sub_2574695E4(v25, &qword_27F87F490, &qword_2577670C0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA78, type metadata accessor for Proto_DivideBroadcastableLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F490, &qword_2577670C0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F490, &qword_2577670C0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F490, &qword_2577670C0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F490, &qword_2577670C0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257561148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_FloorDivBroadcastableLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F498, &qword_2577670C8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 82)
    {
      sub_2574695E4(v25, &qword_27F87F498, &qword_2577670C8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DAB8, type metadata accessor for Proto_FloorDivBroadcastableLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F498, &qword_2577670C8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F498, &qword_2577670C8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F498, &qword_2577670C8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F498, &qword_2577670C8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575616B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_MultiplyBroadcastableLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4A0, &qword_2577670D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 83)
    {
      sub_2574695E4(v25, &qword_27F87F4A0, &qword_2577670D0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA88, type metadata accessor for Proto_MultiplyBroadcastableLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F4A0, &qword_2577670D0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F4A0, &qword_2577670D0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F4A0, &qword_2577670D0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F4A0, &qword_2577670D0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257561C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SubtractBroadcastableLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4A8, &qword_2577670D8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 84)
    {
      sub_2574695E4(v25, &qword_27F87F4A8, &qword_2577670D8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DAA0, type metadata accessor for Proto_SubtractBroadcastableLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F4A8, &qword_2577670D8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F4A8, &qword_2577670D8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F4A8, &qword_2577670D8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F4A8, &qword_2577670D8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257562198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_TileLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4B0, &qword_2577670E0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 85)
    {
      sub_2574695E4(v25, &qword_27F87F4B0, &qword_2577670E0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A268, type metadata accessor for Proto_TileLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F4B0, &qword_2577670E0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F4B0, &qword_2577670E0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F4B0, &qword_2577670E0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F4B0, &qword_2577670E0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257562708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_StackLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4B8, &qword_2577670E8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 86)
    {
      sub_2574695E4(v25, &qword_27F87F4B8, &qword_2577670E8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA00, type metadata accessor for Proto_StackLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F4B8, &qword_2577670E8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F4B8, &qword_2577670E8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F4B8, &qword_2577670E8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F4B8, &qword_2577670E8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257562C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_GatherLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4C0, &qword_2577670F0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 87)
    {
      sub_2574695E4(v25, &qword_27F87F4C0, &qword_2577670F0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA60, type metadata accessor for Proto_GatherLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F4C0, &qword_2577670F0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F4C0, &qword_2577670F0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F4C0, &qword_2577670F0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F4C0, &qword_2577670F0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575631E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ScatterLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4C8, &qword_2577670F8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 88)
    {
      sub_2574695E4(v25, &qword_27F87F4C8, &qword_2577670F8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA50, type metadata accessor for Proto_ScatterLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F4C8, &qword_2577670F8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F4C8, &qword_2577670F8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F4C8, &qword_2577670F8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F4C8, &qword_2577670F8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257563758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_GatherNDLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4D0, &qword_257767100);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 89)
    {
      sub_2574695E4(v25, &qword_27F87F4D0, &qword_257767100);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA40, type metadata accessor for Proto_GatherNDLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F4D0, &qword_257767100);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F4D0, &qword_257767100);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F4D0, &qword_257767100);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F4D0, &qword_257767100);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257563CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ScatterNDLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4D8, &qword_257767108);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 90)
    {
      sub_2574695E4(v25, &qword_27F87F4D8, &qword_257767108);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA30, type metadata accessor for Proto_ScatterNDLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F4D8, &qword_257767108);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F4D8, &qword_257767108);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F4D8, &qword_257767108);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F4D8, &qword_257767108);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257564238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SoftmaxNDLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4E0, &qword_257767110);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 91)
    {
      sub_2574695E4(v25, &qword_27F87F4E0, &qword_257767110);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DE00, type metadata accessor for Proto_SoftmaxNDLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F4E0, &qword_257767110);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F4E0, &qword_257767110);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F4E0, &qword_257767110);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F4E0, &qword_257767110);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575647A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_GatherAlongAxisLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4E8, &qword_257767118);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 92)
    {
      sub_2574695E4(v25, &qword_27F87F4E8, &qword_257767118);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA20, type metadata accessor for Proto_GatherAlongAxisLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F4E8, &qword_257767118);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F4E8, &qword_257767118);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F4E8, &qword_257767118);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F4E8, &qword_257767118);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257564D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ScatterAlongAxisLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4F0, &qword_257767120);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 93)
    {
      sub_2574695E4(v25, &qword_27F87F4F0, &qword_257767120);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DA10, type metadata accessor for Proto_ScatterAlongAxisLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F4F0, &qword_257767120);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F4F0, &qword_257767120);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F4F0, &qword_257767120);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F4F0, &qword_257767120);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257565288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReverseLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F4F8, &qword_257767128);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 94)
    {
      sub_2574695E4(v25, &qword_27F87F4F8, &qword_257767128);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A270, type metadata accessor for Proto_ReverseLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F4F8, &qword_257767128);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F4F8, &qword_257767128);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F4F8, &qword_257767128);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F4F8, &qword_257767128);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575657F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReverseSeqLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F500, &qword_257767130);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 95)
    {
      sub_2574695E4(v25, &qword_27F87F500, &qword_257767130);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A278, type metadata accessor for Proto_ReverseSeqLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F500, &qword_257767130);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F500, &qword_257767130);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F500, &qword_257767130);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F500, &qword_257767130);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257565D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SplitNDLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F508, &qword_257767138);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 96)
    {
      sub_2574695E4(v25, &qword_27F87F508, &qword_257767138);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D710, type metadata accessor for Proto_SplitNDLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F508, &qword_257767138);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F508, &qword_257767138);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F508, &qword_257767138);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F508, &qword_257767138);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575662D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ConcatNDLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F510, &qword_257767140);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 97)
    {
      sub_2574695E4(v25, &qword_27F87F510, &qword_257767140);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DE18, type metadata accessor for Proto_ConcatNDLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F510, &qword_257767140);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F510, &qword_257767140);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F510, &qword_257767140);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F510, &qword_257767140);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257566848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_TransposeLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F518, &qword_257767148);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 98)
    {
      sub_2574695E4(v25, &qword_27F87F518, &qword_257767148);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DE48, type metadata accessor for Proto_TransposeLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F518, &qword_257767148);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F518, &qword_257767148);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F518, &qword_257767148);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F518, &qword_257767148);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257566DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SliceStaticLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F520, &qword_257767150);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 99)
    {
      sub_2574695E4(v25, &qword_27F87F520, &qword_257767150);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D670, type metadata accessor for Proto_SliceStaticLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F520, &qword_257767150);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F520, &qword_257767150);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F520, &qword_257767150);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F520, &qword_257767150);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257567328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SliceDynamicLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F528, &qword_257767158);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 100)
    {
      sub_2574695E4(v25, &qword_27F87F528, &qword_257767158);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D658, type metadata accessor for Proto_SliceDynamicLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F528, &qword_257767158);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F528, &qword_257767158);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F528, &qword_257767158);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F528, &qword_257767158);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257567898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SlidingWindowsLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F530, &qword_257767160);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 101)
    {
      sub_2574695E4(v25, &qword_27F87F530, &qword_257767160);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D5B0, type metadata accessor for Proto_SlidingWindowsLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F530, &qword_257767160);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F530, &qword_257767160);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F530, &qword_257767160);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F530, &qword_257767160);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257567E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_TopKLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F538, &qword_257767168);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 102)
    {
      sub_2574695E4(v25, &qword_27F87F538, &qword_257767168);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D758, type metadata accessor for Proto_TopKLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F538, &qword_257767168);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F538, &qword_257767168);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F538, &qword_257767168);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F538, &qword_257767168);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257568378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ArgMinLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F540, &qword_257767170);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 103)
    {
      sub_2574695E4(v25, &qword_27F87F540, &qword_257767170);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D728, type metadata accessor for Proto_ArgMinLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F540, &qword_257767170);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F540, &qword_257767170);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F540, &qword_257767170);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F540, &qword_257767170);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575688E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ArgMaxLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F548, &qword_257767178);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 104)
    {
      sub_2574695E4(v25, &qword_27F87F548, &qword_257767178);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D740, type metadata accessor for Proto_ArgMaxLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F548, &qword_257767178);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F548, &qword_257767178);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F548, &qword_257767178);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F548, &qword_257767178);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257568E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_EmbeddingNDLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F550, &qword_257767180);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 105)
    {
      sub_2574695E4(v25, &qword_27F87F550, &qword_257767180);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E210, type metadata accessor for Proto_EmbeddingNDLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F550, &qword_257767180);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F550, &qword_257767180);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F550, &qword_257767180);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F550, &qword_257767180);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575693C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F558, &qword_257767188);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 106)
    {
      sub_2574695E4(v25, &qword_27F87F558, &qword_257767188);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DE30, type metadata accessor for Proto_BatchedMatMulLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F558, &qword_257767188);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F558, &qword_257767188);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F558, &qword_257767188);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F558, &qword_257767188);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257569938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  ShapeLayerParams = type metadata accessor for Proto_GetShapeLayerParams(0);
  v6 = *(*(ShapeLayerParams - 8) + 64);
  v7 = MEMORY[0x28223BE20](ShapeLayerParams);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F560, &qword_257767190);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, ShapeLayerParams);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 107)
    {
      sub_2574695E4(v25, &qword_27F87F560, &qword_257767190);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, ShapeLayerParams);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D628, type metadata accessor for Proto_GetShapeLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F560, &qword_257767190);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, ShapeLayerParams) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F560, &qword_257767190);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F560, &qword_257767190);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F560, &qword_257767190);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257569EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  ConstantNDLayerParams = type metadata accessor for Proto_LoadConstantNDLayerParams(0);
  v6 = *(*(ConstantNDLayerParams - 8) + 64);
  v7 = MEMORY[0x28223BE20](ConstantNDLayerParams);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F568, &qword_257767198);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, ConstantNDLayerParams);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 108)
    {
      sub_2574695E4(v25, &qword_27F87F568, &qword_257767198);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, ConstantNDLayerParams);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DDD0, type metadata accessor for Proto_LoadConstantNDLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F568, &qword_257767198);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, ConstantNDLayerParams) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F568, &qword_257767198);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F568, &qword_257767198);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F568, &qword_257767198);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756A418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_FillLikeLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F570, &qword_2577671A0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 109)
    {
      sub_2574695E4(v25, &qword_27F87F570, &qword_2577671A0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A280, type metadata accessor for Proto_FillLikeLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F570, &qword_2577671A0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F570, &qword_2577671A0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F570, &qword_2577671A0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F570, &qword_2577671A0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756A988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_FillStaticLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F578, &qword_2577671A8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 110)
    {
      sub_2574695E4(v25, &qword_27F87F578, &qword_2577671A8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A288, type metadata accessor for Proto_FillStaticLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F578, &qword_2577671A8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F578, &qword_2577671A8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F578, &qword_2577671A8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F578, &qword_2577671A8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756AEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_FillDynamicLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F580, &qword_2577671B0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 111)
    {
      sub_2574695E4(v25, &qword_27F87F580, &qword_2577671B0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A290, type metadata accessor for Proto_FillDynamicLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F580, &qword_2577671B0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F580, &qword_2577671B0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F580, &qword_2577671B0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F580, &qword_2577671B0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756B468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_BroadcastToLikeLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F588, &qword_2577671B8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 112)
    {
      sub_2574695E4(v25, &qword_27F87F588, &qword_2577671B8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DB58, type metadata accessor for Proto_BroadcastToLikeLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F588, &qword_2577671B8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F588, &qword_2577671B8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F588, &qword_2577671B8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F588, &qword_2577671B8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756B9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_BroadcastToStaticLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F590, &qword_2577671C0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 113)
    {
      sub_2574695E4(v25, &qword_27F87F590, &qword_2577671C0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DB40, type metadata accessor for Proto_BroadcastToStaticLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F590, &qword_2577671C0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F590, &qword_2577671C0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F590, &qword_2577671C0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F590, &qword_2577671C0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756BF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_BroadcastToDynamicLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F598, &qword_2577671C8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 114)
    {
      sub_2574695E4(v25, &qword_27F87F598, &qword_2577671C8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DB28, type metadata accessor for Proto_BroadcastToDynamicLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F598, &qword_2577671C8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F598, &qword_2577671C8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F598, &qword_2577671C8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F598, &qword_2577671C8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756C4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SqueezeLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5A0, &qword_2577671D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 115)
    {
      sub_2574695E4(v25, &qword_27F87F5A0, &qword_2577671D0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D770, type metadata accessor for Proto_SqueezeLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F5A0, &qword_2577671D0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F5A0, &qword_2577671D0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F5A0, &qword_2577671D0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F5A0, &qword_2577671D0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756CA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ExpandDimsLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5A8, &qword_2577671D8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 116)
    {
      sub_2574695E4(v25, &qword_27F87F5A8, &qword_2577671D8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D7E0, type metadata accessor for Proto_ExpandDimsLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F5A8, &qword_2577671D8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F5A8, &qword_2577671D8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F5A8, &qword_2577671D8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F5A8, &qword_2577671D8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_FlattenTo2DLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5B0, &qword_2577671E0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 117)
    {
      sub_2574695E4(v25, &qword_27F87F5B0, &qword_2577671E0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D7D0, type metadata accessor for Proto_FlattenTo2DLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F5B0, &qword_2577671E0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F5B0, &qword_2577671E0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F5B0, &qword_2577671E0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F5B0, &qword_2577671E0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756D508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReshapeLikeLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5B8, &qword_2577671E8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 118)
    {
      sub_2574695E4(v25, &qword_27F87F5B8, &qword_2577671E8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D7A0, type metadata accessor for Proto_ReshapeLikeLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F5B8, &qword_2577671E8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F5B8, &qword_2577671E8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F5B8, &qword_2577671E8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F5B8, &qword_2577671E8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756DA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReshapeStaticLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5C0, &qword_2577671F0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 119)
    {
      sub_2574695E4(v25, &qword_27F87F5C0, &qword_2577671F0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D7B8, type metadata accessor for Proto_ReshapeStaticLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F5C0, &qword_2577671F0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F5C0, &qword_2577671F0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F5C0, &qword_2577671F0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F5C0, &qword_2577671F0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756DFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReshapeDynamicLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5C8, &qword_2577671F8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 120)
    {
      sub_2574695E4(v25, &qword_27F87F5C8, &qword_2577671F8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D788, type metadata accessor for Proto_ReshapeDynamicLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F5C8, &qword_2577671F8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F5C8, &qword_2577671F8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F5C8, &qword_2577671F8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F5C8, &qword_2577671F8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756E558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_RankPreservingReshapeLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5D0, &qword_257767200);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 121)
    {
      sub_2574695E4(v25, &qword_27F87F5D0, &qword_257767200);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D9F0, type metadata accessor for Proto_RankPreservingReshapeLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F5D0, &qword_257767200);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F5D0, &qword_257767200);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F5D0, &qword_257767200);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F5D0, &qword_257767200);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756EAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ConstantPaddingLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5D8, &qword_257767208);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 122)
    {
      sub_2574695E4(v25, &qword_27F87F5D8, &qword_257767208);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D9D8, type metadata accessor for Proto_ConstantPaddingLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F5D8, &qword_257767208);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F5D8, &qword_257767208);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F5D8, &qword_257767208);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F5D8, &qword_257767208);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756F038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_RandomNormalLikeLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5E0, &qword_257767210);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 123)
    {
      sub_2574695E4(v25, &qword_27F87F5E0, &qword_257767210);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D9C0, type metadata accessor for Proto_RandomNormalLikeLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F5E0, &qword_257767210);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F5E0, &qword_257767210);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F5E0, &qword_257767210);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F5E0, &qword_257767210);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756F5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_RandomNormalStaticLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5E8, &qword_257767218);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 124)
    {
      sub_2574695E4(v25, &qword_27F87F5E8, &qword_257767218);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D9A8, type metadata accessor for Proto_RandomNormalStaticLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F5E8, &qword_257767218);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F5E8, &qword_257767218);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F5E8, &qword_257767218);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F5E8, &qword_257767218);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756FB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_RandomNormalDynamicLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5F0, &qword_257767220);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 125)
    {
      sub_2574695E4(v25, &qword_27F87F5F0, &qword_257767220);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D990, type metadata accessor for Proto_RandomNormalDynamicLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F5F0, &qword_257767220);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F5F0, &qword_257767220);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F5F0, &qword_257767220);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F5F0, &qword_257767220);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257570088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_RandomUniformLikeLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5F8, &qword_257767228);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 126)
    {
      sub_2574695E4(v25, &qword_27F87F5F8, &qword_257767228);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D978, type metadata accessor for Proto_RandomUniformLikeLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F5F8, &qword_257767228);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F5F8, &qword_257767228);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F5F8, &qword_257767228);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F5F8, &qword_257767228);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575705F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_RandomUniformStaticLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F600, &qword_257767230);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 127)
    {
      sub_2574695E4(v25, &qword_27F87F600, &qword_257767230);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D960, type metadata accessor for Proto_RandomUniformStaticLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F600, &qword_257767230);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F600, &qword_257767230);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F600, &qword_257767230);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F600, &qword_257767230);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257570B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_RandomUniformDynamicLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F608, &qword_257767238);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 128)
    {
      sub_2574695E4(v25, &qword_27F87F608, &qword_257767238);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D948, type metadata accessor for Proto_RandomUniformDynamicLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F608, &qword_257767238);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F608, &qword_257767238);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F608, &qword_257767238);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F608, &qword_257767238);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575710D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_RandomBernoulliLikeLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F610, &qword_257767240);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 129)
    {
      sub_2574695E4(v25, &qword_27F87F610, &qword_257767240);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D930, type metadata accessor for Proto_RandomBernoulliLikeLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F610, &qword_257767240);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F610, &qword_257767240);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F610, &qword_257767240);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F610, &qword_257767240);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257571648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_RandomBernoulliStaticLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F618, &qword_257767248);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 130)
    {
      sub_2574695E4(v25, &qword_27F87F618, &qword_257767248);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D918, type metadata accessor for Proto_RandomBernoulliStaticLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F618, &qword_257767248);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F618, &qword_257767248);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F618, &qword_257767248);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F618, &qword_257767248);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257571BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_RandomBernoulliDynamicLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F620, &qword_257767250);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 131)
    {
      sub_2574695E4(v25, &qword_27F87F620, &qword_257767250);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D900, type metadata accessor for Proto_RandomBernoulliDynamicLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F620, &qword_257767250);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F620, &qword_257767250);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F620, &qword_257767250);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F620, &qword_257767250);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257572128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CategoricalDistributionLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F628, &qword_257767258);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 132)
    {
      sub_2574695E4(v25, &qword_27F87F628, &qword_257767258);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D8E8, type metadata accessor for Proto_CategoricalDistributionLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F628, &qword_257767258);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F628, &qword_257767258);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F628, &qword_257767258);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F628, &qword_257767258);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257572698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReduceL1LayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F630, &qword_257767260);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 133)
    {
      sub_2574695E4(v25, &qword_27F87F630, &qword_257767260);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D8D0, type metadata accessor for Proto_ReduceL1LayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F630, &qword_257767260);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F630, &qword_257767260);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F630, &qword_257767260);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F630, &qword_257767260);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257572C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReduceL2LayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F638, &qword_257767268);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 134)
    {
      sub_2574695E4(v25, &qword_27F87F638, &qword_257767268);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D8B8, type metadata accessor for Proto_ReduceL2LayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F638, &qword_257767268);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F638, &qword_257767268);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F638, &qword_257767268);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F638, &qword_257767268);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257573178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReduceMaxLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F640, &qword_257767270);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 135)
    {
      sub_2574695E4(v25, &qword_27F87F640, &qword_257767270);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D8A0, type metadata accessor for Proto_ReduceMaxLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F640, &qword_257767270);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F640, &qword_257767270);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F640, &qword_257767270);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F640, &qword_257767270);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575736E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReduceMinLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F648, &qword_257767278);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 136)
    {
      sub_2574695E4(v25, &qword_27F87F648, &qword_257767278);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D888, type metadata accessor for Proto_ReduceMinLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F648, &qword_257767278);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F648, &qword_257767278);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F648, &qword_257767278);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F648, &qword_257767278);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257573C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReduceSumLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F650, &qword_257767280);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 137)
    {
      sub_2574695E4(v25, &qword_27F87F650, &qword_257767280);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D870, type metadata accessor for Proto_ReduceSumLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F650, &qword_257767280);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F650, &qword_257767280);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F650, &qword_257767280);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F650, &qword_257767280);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575741C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReduceProdLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F658, &qword_257767288);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 138)
    {
      sub_2574695E4(v25, &qword_27F87F658, &qword_257767288);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D858, type metadata accessor for Proto_ReduceProdLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F658, &qword_257767288);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F658, &qword_257767288);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F658, &qword_257767288);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F658, &qword_257767288);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257574738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReduceMeanLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F660, &qword_257767290);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 139)
    {
      sub_2574695E4(v25, &qword_27F87F660, &qword_257767290);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D840, type metadata accessor for Proto_ReduceMeanLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F660, &qword_257767290);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F660, &qword_257767290);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F660, &qword_257767290);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F660, &qword_257767290);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257574CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReduceLogSumLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F668, &qword_257767298);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 140)
    {
      sub_2574695E4(v25, &qword_27F87F668, &qword_257767298);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D828, type metadata accessor for Proto_ReduceLogSumLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F668, &qword_257767298);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F668, &qword_257767298);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F668, &qword_257767298);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F668, &qword_257767298);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257575218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReduceSumSquareLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F670, &qword_2577672A0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 141)
    {
      sub_2574695E4(v25, &qword_27F87F670, &qword_2577672A0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D810, type metadata accessor for Proto_ReduceSumSquareLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F670, &qword_2577672A0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F670, &qword_2577672A0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F670, &qword_2577672A0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F670, &qword_2577672A0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257575788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReduceLogSumExpLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F678, &qword_2577672A8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 142)
    {
      sub_2574695E4(v25, &qword_27F87F678, &qword_2577672A8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D7F8, type metadata accessor for Proto_ReduceLogSumExpLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F678, &qword_2577672A8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F678, &qword_2577672A8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F678, &qword_2577672A8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F678, &qword_2577672A8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257575CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_WhereNonZeroLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F680, &qword_2577672B0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 143)
    {
      sub_2574695E4(v25, &qword_27F87F680, &qword_2577672B0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DBB8, type metadata accessor for Proto_WhereNonZeroLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F680, &qword_2577672B0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F680, &qword_2577672B0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F680, &qword_2577672B0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F680, &qword_2577672B0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257576268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_MatrixBandPartLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F688, &qword_2577672B8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 144)
    {
      sub_2574695E4(v25, &qword_27F87F688, &qword_2577672B8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DBA0, type metadata accessor for Proto_MatrixBandPartLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F688, &qword_2577672B8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F688, &qword_2577672B8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F688, &qword_2577672B8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F688, &qword_2577672B8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575767D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_LowerTriangularLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F690, &qword_2577672C0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 145)
    {
      sub_2574695E4(v25, &qword_27F87F690, &qword_2577672C0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DB70, type metadata accessor for Proto_LowerTriangularLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F690, &qword_2577672C0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F690, &qword_2577672C0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F690, &qword_2577672C0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F690, &qword_2577672C0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257576D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_UpperTriangularLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F698, &qword_2577672C8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 146)
    {
      sub_2574695E4(v25, &qword_27F87F698, &qword_2577672C8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DB88, type metadata accessor for Proto_UpperTriangularLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F698, &qword_2577672C8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F698, &qword_2577672C8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F698, &qword_2577672C8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F698, &qword_2577672C8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575772B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_WhereBroadcastableLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6A0, &qword_2577672D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 147)
    {
      sub_2574695E4(v25, &qword_27F87F6A0, &qword_2577672D0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DD88, type metadata accessor for Proto_WhereBroadcastableLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F6A0, &qword_2577672D0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F6A0, &qword_2577672D0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F6A0, &qword_2577672D0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F6A0, &qword_2577672D0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257577828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_LayerNormalizationLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6A8, &qword_2577672D8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 148)
    {
      sub_2574695E4(v25, &qword_27F87F6A8, &qword_2577672D8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D598, type metadata accessor for Proto_LayerNormalizationLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F6A8, &qword_2577672D8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F6A8, &qword_2577672D8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F6A8, &qword_2577672D8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F6A8, &qword_2577672D8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257577D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_NonMaximumSuppressionLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6B0, &qword_2577672E0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 149)
    {
      sub_2574695E4(v25, &qword_27F87F6B0, &qword_2577672E0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D580, type metadata accessor for Proto_NonMaximumSuppressionLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F6B0, &qword_2577672E0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F6B0, &qword_2577672E0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F6B0, &qword_2577672E0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F6B0, &qword_2577672E0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257578308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_OneHotLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6B8, &qword_2577672E8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 150)
    {
      sub_2574695E4(v25, &qword_27F87F6B8, &qword_2577672E8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D510, type metadata accessor for Proto_OneHotLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F6B8, &qword_2577672E8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F6B8, &qword_2577672E8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F6B8, &qword_2577672E8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F6B8, &qword_2577672E8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257578878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CumSumLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6C0, &qword_2577672F0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 151)
    {
      sub_2574695E4(v25, &qword_27F87F6C0, &qword_2577672F0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D4F8, type metadata accessor for Proto_CumSumLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F6C0, &qword_2577672F0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F6C0, &qword_2577672F0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F6C0, &qword_2577672F0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F6C0, &qword_2577672F0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257578DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ClampedReLULayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6C8, &qword_2577672F8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 152)
    {
      sub_2574695E4(v25, &qword_27F87F6C8, &qword_2577672F8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D568, type metadata accessor for Proto_ClampedReLULayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F6C8, &qword_2577672F8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F6C8, &qword_2577672F8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F6C8, &qword_2577672F8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F6C8, &qword_2577672F8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257579358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ArgSortLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6D0, &qword_257767300);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 153)
    {
      sub_2574695E4(v25, &qword_27F87F6D0, &qword_257767300);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D550, type metadata accessor for Proto_ArgSortLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F6D0, &qword_257767300);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F6D0, &qword_257767300);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F6D0, &qword_257767300);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F6D0, &qword_257767300);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575798C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_Pooling3DLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6D8, &qword_257767308);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 154)
    {
      sub_2574695E4(v25, &qword_27F87F6D8, &qword_257767308);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E1A8, type metadata accessor for Proto_Pooling3DLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F6D8, &qword_257767308);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F6D8, &qword_257767308);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F6D8, &qword_257767308);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F6D8, &qword_257767308);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257579E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_GlobalPooling3DLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6E0, &qword_257767310);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 155)
    {
      sub_2574695E4(v25, &qword_27F87F6E0, &qword_257767310);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E190, type metadata accessor for Proto_GlobalPooling3DLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F6E0, &qword_257767310);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F6E0, &qword_257767310);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F6E0, &qword_257767310);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F6E0, &qword_257767310);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25757A3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SliceBySizeLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6E8, &qword_257767318);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 156)
    {
      sub_2574695E4(v25, &qword_27F87F6E8, &qword_257767318);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D538, type metadata accessor for Proto_SliceBySizeLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F6E8, &qword_257767318);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F6E8, &qword_257767318);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F6E8, &qword_257767318);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F6E8, &qword_257767318);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25757A918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_Convolution3DLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6F0, &qword_257767320);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 157)
    {
      sub_2574695E4(v25, &qword_27F87F6F0, &qword_257767320);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E258, type metadata accessor for Proto_Convolution3DLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F6F0, &qword_257767320);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F6F0, &qword_257767320);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F6F0, &qword_257767320);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F6F0, &qword_257767320);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}