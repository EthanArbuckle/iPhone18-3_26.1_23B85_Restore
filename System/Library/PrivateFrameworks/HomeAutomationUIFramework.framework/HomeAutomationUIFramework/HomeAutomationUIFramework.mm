uint64_t sub_252F188A8()
{
  OUTLINED_FUNCTION_14_0();
  result = AutomationSnippetModel.triggerValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F188D4()
{
  OUTLINED_FUNCTION_14_0();
  result = AutomationSnippetModel.targetedEntitiesIcons.getter();
  *v0 = result;
  return result;
}

uint64_t sub_252F18928()
{
  OUTLINED_FUNCTION_14_0();
  result = AutomationSnippetModel.automationSubtext.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F18954()
{
  OUTLINED_FUNCTION_14_0();
  result = AutomationSnippetModel.scheduledText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F18980()
{
  OUTLINED_FUNCTION_14_0();
  result = AutomationSnippetModel.isSceneAutomation.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_252F189D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v7 = OUTLINED_FUNCTION_12_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
    v12 = OUTLINED_FUNCTION_12_0(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
      v16 = OUTLINED_FUNCTION_12_0(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
        v14 = a3[9];
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_252F18B1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v9 = OUTLINED_FUNCTION_12_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
    v14 = OUTLINED_FUNCTION_12_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
      v18 = OUTLINED_FUNCTION_12_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
        v16 = a4[9];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_252F18CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AutomationSnippetModel();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_252F5314C();
    v8 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_252F18D98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AutomationSnippetModel();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_252F5314C();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_252F18E64()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575F50, &unk_252F54518);
  sub_252F25128();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_252F18ED4()
{
  OUTLINED_FUNCTION_2_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575FF8, &qword_252F546E8);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 32);
  v4 = OUTLINED_FUNCTION_3_1();
  v5(v4);
  return v0;
}

uint64_t sub_252F18F4C()
{
  v0 = sub_252F53BDC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252F18F98(char a1)
{
  result = 0x74617265706D6574;
  switch(a1)
  {
    case 1:
      result = 0x547972616D697270;
      break;
    case 2:
      result = 0x7261646E6F636573;
      break;
    case 3:
      result = 0x6E69746165487369;
      break;
    case 4:
      result = 0x74754F68636E7570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252F19068()
{
  OUTLINED_FUNCTION_14_0();
  result = TemperatureSnippetModel.primaryText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F19094()
{
  OUTLINED_FUNCTION_14_0();
  result = TemperatureSnippetModel.secondaryText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F190E8()
{
  OUTLINED_FUNCTION_14_0();
  result = TemperatureSnippetModel.temperature.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1913C()
{
  OUTLINED_FUNCTION_14_0();
  result = TemperatureSnippetModel.isHeating.getter();
  *v0 = result;
  return result;
}

uint64_t sub_252F191B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v7 = OUTLINED_FUNCTION_12_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    v12 = OUTLINED_FUNCTION_12_0(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
      v16 = OUTLINED_FUNCTION_12_0(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[7];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
        v14 = a3[8];
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_252F192FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v9 = OUTLINED_FUNCTION_12_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    v14 = OUTLINED_FUNCTION_12_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
      v18 = OUTLINED_FUNCTION_12_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
        v16 = a4[8];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_252F19498()
{
  OUTLINED_FUNCTION_14_0();
  result = ConfirmationSnippetModel.confirmLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F194C4()
{
  OUTLINED_FUNCTION_14_0();
  result = ConfirmationSnippetModel.denyLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F194F0()
{
  OUTLINED_FUNCTION_14_0();
  result = ConfirmationSnippetModel.confirmDirectInvocation.getter();
  *v0 = result;
  return result;
}

uint64_t sub_252F1951C()
{
  OUTLINED_FUNCTION_14_0();
  result = ConfirmationSnippetModel.denyDirectInvocation.getter();
  *v0 = result;
  return result;
}

uint64_t sub_252F19548(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
    v9 = OUTLINED_FUNCTION_12_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[7];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
      v14 = OUTLINED_FUNCTION_12_0(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[9];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
        v12 = a3[11];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_252F19674(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
    v9 = OUTLINED_FUNCTION_12_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[7];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
      v14 = OUTLINED_FUNCTION_12_0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[9];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
        v12 = a4[11];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_252F197C4(uint64_t *a1)
{
  OUTLINED_FUNCTION_15_0(a1);
  result = sub_252F439D0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_252F19818(uint64_t *a1)
{
  OUTLINED_FUNCTION_15_0(a1);
  result = sub_252F439E4();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_252F1986C()
{
  v2 = type metadata accessor for CompletionSnippetView();
  OUTLINED_FUNCTION_12_1(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 24);

  v9 = *(v1 + 40);

  v10 = v1 + v5;
  v11 = *(v1 + v5);
  v12 = *(v1 + v5 + 8);
  v13 = *(v1 + v5 + 16);
  sub_252F2BE00();

  v14 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_252F531EC();
    OUTLINED_FUNCTION_1(v15);
    (*(v16 + 8))(v10 + v14);
  }

  else
  {
    v17 = *(v10 + v14);
  }

  v18 = *(v10 + v0[7] + 8);

  v19 = (v10 + v0[8]);
  v20 = *v19;

  v21 = v19[1];

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_252F199D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576390, &unk_252F54DD0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_252F19A90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576390, &unk_252F54DD0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_252F19B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576418, &qword_252F54F00);
  OUTLINED_FUNCTION_1(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_252F19C30()
{
  v1 = (type metadata accessor for IconConfiguration() - 8);
  v49 = *(*v1 + 80);
  v2 = (v49 + 16) & ~v49;
  v43 = (v2 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v3 = type metadata accessor for CompletionSnippetViewTVOS();
  v4 = OUTLINED_FUNCTION_3_4(v3);
  v44 = (v43 + 31) & 0xFFFFFFFFFFFFFFF8;
  v48 = *(v5 + 80);
  v45 = (v44 + v48 + 16) & ~v48;
  v46 = v4;
  v47 = *(v6 + 64);
  v7 = v0 + v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_0_1(v8);
  (*(v9 + 8))(v7);
  v10 = v1[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 8);
  v13(v7 + v10, v11);
  v14 = v1[8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_0_1(v15);
  (*(v16 + 8))(v7 + v14);
  v17 = v1[9];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  OUTLINED_FUNCTION_1(v18);
  v20 = *(v19 + 8);
  v20(v7 + v17, v18);
  v20(v7 + v1[10], v18);
  v21 = v1[11];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  OUTLINED_FUNCTION_0_1(v22);
  (*(v23 + 8))(v7 + v21);
  v13(v7 + v1[12], v11);
  v24 = v1[13];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  OUTLINED_FUNCTION_0_1(v25);
  (*(v26 + 8))(v7 + v24);
  v13(v7 + v1[14], v11);
  v13(v7 + v1[15], v11);
  v27 = v1[16];
  v28 = type metadata accessor for DirectInvocationConfig();
  if (!__swift_getEnumTagSinglePayload(v7 + v27, 1, v28))
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    OUTLINED_FUNCTION_0_1(v29);
    (*(v30 + 8))(v7 + v27);
  }

  v31 = *(v0 + v43 + 16);

  v32 = *(v0 + v44 + 8);

  v33 = v0 + v45;
  v34 = *(v0 + v45);
  v35 = *(v0 + v45 + 8);
  v36 = *(v0 + v45 + 16);
  sub_252F2BE00();

  v37 = *(v46 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = sub_252F531EC();
    OUTLINED_FUNCTION_0_1(v38);
    (*(v39 + 8))(v33 + v37);
  }

  else
  {
    v40 = *(v33 + v37);
  }

  v41 = *(v33 + *(v46 + 28) + 8);

  return MEMORY[0x2821FE8E8](v0, v47 + v45 + 1, v49 | v48 | 7);
}

uint64_t sub_252F1A054()
{
  v1 = type metadata accessor for CompletionSnippetViewTVOS();
  OUTLINED_FUNCTION_3_4(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = (v3 + 16) & ~v3;
  v7 = v0 + v6;
  v8 = *(v0 + v6);
  v9 = *(v0 + v6 + 8);
  v10 = *(v0 + v6 + 16);
  sub_252F2BE00();

  v11 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_252F531EC();
    OUTLINED_FUNCTION_0_1(v12);
    (*(v13 + 8))(v7 + v11);
  }

  else
  {
    v14 = *(v7 + v11);
  }

  v15 = *(v7 + *(v1 + 28) + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

uint64_t sub_252F1A180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576390, &unk_252F54DD0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_252F1A220(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576390, &unk_252F54DD0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252F1A2B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F5330C();
  *a1 = result;
  return result;
}

uint64_t sub_252F1A2E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5764C0, &qword_252F550D8);
  OUTLINED_FUNCTION_0_1(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_252F1A344()
{
  sub_252F30A68(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252F1A388()
{
  v1 = type metadata accessor for CompletionSnippetViewTVOS();
  OUTLINED_FUNCTION_3_4(v1);
  v46 = *(v2 + 80);
  v3 = (v46 + 16) & ~v46;
  v5 = *(v4 + 64);
  v6 = type metadata accessor for IconConfiguration();
  OUTLINED_FUNCTION_3_4(v6);
  v44 = *(v7 + 80);
  v45 = *(v8 + 64);
  v9 = (v5 + v44 + v3 + 1) & ~v44;
  v10 = (v0 + v3);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  sub_252F2BE00();

  v14 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_252F531EC();
    OUTLINED_FUNCTION_0_1(v15);
    (*(v16 + 8))(v10 + v14);
  }

  else
  {
    v17 = *(v10 + v14);
  }

  v18 = *(v10 + *(v1 + 28) + 8);

  v19 = v0 + v9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_0_1(v20);
  (*(v21 + 8))(v0 + v9);
  v22 = v6[5];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1(v23);
  v25 = *(v24 + 8);
  v25(v0 + v9 + v22, v23);
  v26 = v6[6];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_0_1(v27);
  (*(v28 + 8))(v0 + v9 + v26);
  v29 = v6[7];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  v43 = v0;
  v31 = *(*(v30 - 8) + 8);
  v31(v19 + v29, v30);
  v31(v19 + v6[8], v30);
  v32 = v6[9];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  OUTLINED_FUNCTION_0_1(v33);
  (*(v34 + 8))(v19 + v32);
  v25(v19 + v6[10], v23);
  v35 = v6[11];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  OUTLINED_FUNCTION_0_1(v36);
  (*(v37 + 8))(v19 + v35);
  v25(v19 + v6[12], v23);
  v25(v19 + v6[13], v23);
  v38 = v6[14];
  v39 = type metadata accessor for DirectInvocationConfig();
  if (!__swift_getEnumTagSinglePayload(v19 + v38, 1, v39))
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    OUTLINED_FUNCTION_0_1(v40);
    (*(v41 + 8))(v19 + v38);
  }

  return MEMORY[0x2821FE8E8](v43, v9 + v45, v46 | v44 | 7);
}

uint64_t sub_252F1A770@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F5328C();
  *a1 = result;
  return result;
}

uint64_t sub_252F1A7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConfirmationSnippetModel();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_252F5314C();
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_252F1A8A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConfirmationSnippetModel();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_252F5314C();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_252F1A97C()
{
  v2 = type metadata accessor for TemperatureView();
  OUTLINED_FUNCTION_3_5(v2);
  v4 = *(v3 + 80);
  v28 = *(v5 + 64);
  v6 = *(v1 + 32);

  v7 = v1 + ((v4 + 40) & ~v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_0_1(v8);
  (*(v9 + 8))(v7);
  v10 = type metadata accessor for TemperatureSnippetModel();
  v11 = v10[5];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1(v12);
  v14 = *(v13 + 8);
  v14(v7 + v11, v12);
  v14(v7 + v10[6], v12);
  v15 = v10[7];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  OUTLINED_FUNCTION_0_1(v16);
  (*(v17 + 8))(v7 + v15);
  v18 = v10[8];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  OUTLINED_FUNCTION_0_1(v19);
  (*(v20 + 8))(v7 + v18);

  v21 = *(v0 + 32);
  v22 = sub_252F5314C();
  OUTLINED_FUNCTION_0_1(v22);
  (*(v23 + 8))(v7 + v21);
  v24 = OUTLINED_FUNCTION_2_4();

  return MEMORY[0x2821FE8E8](v24, v25, v26);
}

uint64_t sub_252F1AB88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576570, &qword_252F55220);
  OUTLINED_FUNCTION_0_1(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_252F1ABE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TemperatureSnippetModel();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_252F5314C();
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_252F1ACC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TemperatureSnippetModel();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_252F5314C();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_252F1AD98()
{
  sub_252F30A68(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252F1AE0C()
{
  OUTLINED_FUNCTION_14_0();
  result = IconConfiguration.iconName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1AE38()
{
  OUTLINED_FUNCTION_14_0();
  result = IconConfiguration.iconColor.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1AE8C()
{
  OUTLINED_FUNCTION_14_0();
  result = IconConfiguration.shouldRenderCircle.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_252F1AEF8()
{
  OUTLINED_FUNCTION_14_0();
  result = IconConfiguration.circleColor.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1AF4C()
{
  OUTLINED_FUNCTION_14_0();
  result = IconConfiguration.rgbIconColor.getter();
  *v0 = result;
  return result;
}

uint64_t sub_252F1AF78()
{
  OUTLINED_FUNCTION_14_0();
  result = IconConfiguration.onStateIconName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1AFCC()
{
  OUTLINED_FUNCTION_14_0();
  result = IconConfiguration.offStateIconName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1B020(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v7 = OUTLINED_FUNCTION_12_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    v12 = OUTLINED_FUNCTION_12_0(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
      v16 = OUTLINED_FUNCTION_12_0(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
        v19 = OUTLINED_FUNCTION_12_0(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
          v22 = OUTLINED_FUNCTION_12_0(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[9];
          }

          else
          {
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
            v25 = OUTLINED_FUNCTION_12_0(v24);
            if (*(v26 + 84) == a2)
            {
              v9 = v25;
              v14 = a3[11];
            }

            else
            {
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
              v14 = a3[14];
            }
          }
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_252F1B24C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v9 = OUTLINED_FUNCTION_12_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    v14 = OUTLINED_FUNCTION_12_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
      v18 = OUTLINED_FUNCTION_12_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
        v21 = OUTLINED_FUNCTION_12_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
          v24 = OUTLINED_FUNCTION_12_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[9];
          }

          else
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
            v27 = OUTLINED_FUNCTION_12_0(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[11];
            }

            else
            {
              v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
              v16 = a4[14];
            }
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_252F1B4A8()
{
  v0 = sub_252F53BDC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252F1B4F4(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 0x614C686365657073;
      break;
    case 2:
      result = 0x6E6F69746361;
      break;
    case 3:
      result = 0x666E6F436E6F6369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252F1B58C()
{
  v0 = sub_252F53BDC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252F1B5D8(char a1)
{
  if (!a1)
  {
    return 0x5479616C70736964;
  }

  if (a1 == 1)
  {
    return 0x736E6F6974706FLL;
  }

  return 0x4F746C7561666564;
}

uint64_t sub_252F1B644@<X0>(uint64_t *a1@<X8>)
{
  result = DisambiguationOption.action.getter();
  *a1 = result;
  return result;
}

uint64_t sub_252F1B674@<X0>(uint64_t *a1@<X8>)
{
  result = DisambiguationSnippetModel.displayText.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252F1B6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_27_0(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  v8 = OUTLINED_FUNCTION_12_0(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(a3 + 24);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    v11 = *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

uint64_t sub_252F1B778(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
    v9 = OUTLINED_FUNCTION_12_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 24);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
      v12 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_252F1B854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v7 = OUTLINED_FUNCTION_12_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_27_0(*(a1 + *(a3 + 20)));
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
    v10 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_252F1B92C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  result = OUTLINED_FUNCTION_12_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
    v12 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

BOOL sub_252F1BA5C()
{
  v0 = sub_252F53BDC();

  return v0 != 0;
}

uint64_t sub_252F1BAA4@<X0>(uint64_t *a1@<X8>)
{
  result = DirectInvocationConfig.action.getter();
  *a1 = result;
  return result;
}

uint64_t sub_252F1BAD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_252F1BB28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_252F1BBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CallToActionSnippetModel();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_252F5314C();
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_252F1BCB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CallToActionSnippetModel();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_252F5314C();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_252F1BD80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5767E8, &qword_252F55D58);
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_252F1BE64(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_9_5();
  v6 = type metadata accessor for CompletionSnippetModel();
  v7 = OUTLINED_FUNCTION_12_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 2147483646)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576390, &unk_252F54DD0);
    v15 = OUTLINED_FUNCTION_12_0(v14);
    if (*(v16 + 84) == a2)
    {
      v9 = v15;
      v17 = a3[8];
    }

    else
    {
      v9 = sub_252F5314C();
      v17 = a3[9];
    }

    v10 = v3 + v17;
    goto LABEL_13;
  }

  v11 = *(v3 + a3[5]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

uint64_t sub_252F1BF84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_9_5();
  v8 = type metadata accessor for CompletionSnippetModel();
  result = OUTLINED_FUNCTION_12_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + a4[5]) = a2;
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576390, &unk_252F54DD0);
    v14 = OUTLINED_FUNCTION_12_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[8];
    }

    else
    {
      v11 = sub_252F5314C();
      v16 = a4[9];
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_252F1C0A4(uint64_t *a1)
{
  OUTLINED_FUNCTION_15_0(a1);
  v1 = sub_252F43B24();
  return OUTLINED_FUNCTION_4_7(v1);
}

uint64_t sub_252F1C118(uint64_t *a1)
{
  OUTLINED_FUNCTION_15_0(a1);
  v1 = sub_252F43A8C();
  return OUTLINED_FUNCTION_4_7(v1);
}

uint64_t sub_252F1C164(uint64_t *a1)
{
  OUTLINED_FUNCTION_15_0(a1);
  v1 = sub_252F43A78();
  return OUTLINED_FUNCTION_4_7(v1);
}

uint64_t sub_252F1C1B0(uint64_t *a1)
{
  OUTLINED_FUNCTION_15_0(a1);
  v1 = sub_252F43A64();
  return OUTLINED_FUNCTION_4_7(v1);
}

uint64_t sub_252F1C234()
{
  OUTLINED_FUNCTION_14_0();
  result = CompletionSnippetModel.primaryText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1C260()
{
  OUTLINED_FUNCTION_14_0();
  result = CompletionSnippetModel.secondaryText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1C28C()
{
  OUTLINED_FUNCTION_14_0();
  result = CompletionSnippetModel.isBooleanTrueResponse.getter();
  *v0 = result;
  return result;
}

uint64_t sub_252F1C2D8()
{
  OUTLINED_FUNCTION_14_0();
  result = CompletionSnippetModel.isSuccess.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_252F1C328()
{
  OUTLINED_FUNCTION_14_0();
  result = CompletionSnippetModel.inProgress.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_252F1C438()
{
  OUTLINED_FUNCTION_14_0();
  result = CompletionSnippetModel.toggleEnabled.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_252F1C488(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v7 = OUTLINED_FUNCTION_12_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    v12 = OUTLINED_FUNCTION_12_0(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
      v16 = OUTLINED_FUNCTION_12_0(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
        v19 = OUTLINED_FUNCTION_12_0(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
          v22 = OUTLINED_FUNCTION_12_0(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[9];
          }

          else
          {
            v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
            v14 = a3[10];
          }
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_252F1C668(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v9 = OUTLINED_FUNCTION_12_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    v14 = OUTLINED_FUNCTION_12_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
      v18 = OUTLINED_FUNCTION_12_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
        v21 = OUTLINED_FUNCTION_12_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
          v24 = OUTLINED_FUNCTION_12_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[9];
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
            v16 = a4[10];
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_252F1CAE0()
{
  sub_252F30A68(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252F1CB28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F532CC();
  *a1 = result;
  return result;
}

uint64_t sub_252F1CCC0()
{
  v0 = sub_252F53BDC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252F1CD0C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000017;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001CLL;
  }

  return 0x6944646C756F6873;
}

uint64_t sub_252F1CD7C@<X0>(uint64_t *a1@<X8>)
{
  result = CallToActionSnippetModel.callToActionButtonLabel.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252F1CDAC@<X0>(uint64_t *a1@<X8>)
{
  result = CallToActionSnippetModel.callToActionDirectInvocation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_252F1CDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v7 = OUTLINED_FUNCTION_12_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    v12 = OUTLINED_FUNCTION_12_0(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(a1 + *(a3 + 24));
      if (v15 >= 2)
      {
        return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_252F1CEF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v9 = OUTLINED_FUNCTION_12_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    result = OUTLINED_FUNCTION_12_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_252F1D090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F5038C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t HomeAutomationUIPlugin.snippet(for:mode:idiom:)(uint64_t a1)
{
  v165 = a1;
  v157 = type metadata accessor for TemperatureView();
  v1 = OUTLINED_FUNCTION_1(v157);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4();
  v156 = v4;
  OUTLINED_FUNCTION_7();
  v5 = type metadata accessor for TemperatureSnippetModel();
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v152 = v9 - v10;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12();
  v155 = v12;
  OUTLINED_FUNCTION_7();
  v163 = type metadata accessor for CallToActionView();
  v13 = OUTLINED_FUNCTION_1(v163);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v162 = v16;
  OUTLINED_FUNCTION_7();
  v17 = type metadata accessor for CallToActionSnippetModel();
  v18 = OUTLINED_FUNCTION_10(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v160 = v21 - v22;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12();
  v161 = v24;
  OUTLINED_FUNCTION_7();
  v151 = type metadata accessor for AutomationView();
  v25 = OUTLINED_FUNCTION_1(v151);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4();
  v150 = v28;
  OUTLINED_FUNCTION_7();
  v29 = type metadata accessor for AutomationSnippetModel();
  v30 = OUTLINED_FUNCTION_10(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12();
  v148 = v37;
  OUTLINED_FUNCTION_7();
  v147 = type metadata accessor for CompletionView();
  v38 = OUTLINED_FUNCTION_1(v147);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v146 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for CompletionSnippetModel();
  v44 = OUTLINED_FUNCTION_10(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5();
  v49 = v47 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v146 - v51;
  v159 = type metadata accessor for ConfirmationView();
  v53 = OUTLINED_FUNCTION_1(v159);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_4();
  v158 = v56;
  OUTLINED_FUNCTION_7();
  v57 = type metadata accessor for ConfirmationSnippetModel();
  v58 = OUTLINED_FUNCTION_10(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_5();
  v154 = v61 - v62;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_12();
  v149 = v64;
  v65 = OUTLINED_FUNCTION_7();
  v153 = type metadata accessor for DisambiguationView(v65);
  v66 = OUTLINED_FUNCTION_1(v153);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_4();
  v70 = v69;
  v71 = OUTLINED_FUNCTION_7();
  v72 = type metadata accessor for DisambiguationSnippetModel(v71);
  v73 = OUTLINED_FUNCTION_10(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_5();
  v78 = v76 - v77;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_12();
  v81 = v80;
  OUTLINED_FUNCTION_7();
  v82 = type metadata accessor for HomeAutomationSnippetModels();
  v83 = OUTLINED_FUNCTION_1(v82);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  sub_252F1DF64(v165, &v146 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HomeAutomationSnippetModels);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v127 = OUTLINED_FUNCTION_9();
      v105 = v149;
      sub_252F1DF04(v127, v149, v128);
      OUTLINED_FUNCTION_6();
      v129 = v154;
      sub_252F1DF64(v105, v154, v130);
      v109 = v158;
      v131 = v159;
      v132 = (v158 + *(v159 + 20));
      sub_252F5394C();
      OUTLINED_FUNCTION_0();
      sub_252F1E064(v133, v134);
      *v132 = sub_252F5326C();
      v132[1] = v135;
      if (qword_27F575E10 != -1)
      {
        OUTLINED_FUNCTION_3();
      }

      v136 = sub_252F5316C();
      __swift_project_value_buffer(v136, qword_27F57B800);
      OUTLINED_FUNCTION_8();
      sub_252F53B8C();
      MEMORY[0x2530AF890](0xD000000000000031, 0x8000000252F57B10);
      v137 = ConfirmationSnippetModel.description.getter();
      MEMORY[0x2530AF890](v137);

      OUTLINED_FUNCTION_11("/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationUIFramework/ConfirmationView.swift", v164._countAndFlagsBits);

      OUTLINED_FUNCTION_6();
      sub_252F1DF64(v129, v109, v138);
      if (qword_27F575E18 != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v139 = *(v131 + 24);
      v140 = qword_27F57B818;
      sub_252F5313C();
      sub_252F53ADC();
      OUTLINED_FUNCTION_14();
      v118 = type metadata accessor for ConfirmationSnippetModel;
      sub_252F1DFC4(v129, type metadata accessor for ConfirmationSnippetModel);
      sub_252F1E064(&qword_27F575E68, type metadata accessor for ConfirmationView);
      v101 = sub_252F534EC();
      v119 = type metadata accessor for ConfirmationView;
      goto LABEL_19;
    case 2u:
      v120 = OUTLINED_FUNCTION_9();
      sub_252F1DF04(v120, v52, v121);
      sub_252F1DF64(v52, v49, type metadata accessor for CompletionSnippetModel);
      CompletionView.init(model:)(v49, v42);
      sub_252F1E064(&qword_27F575E60, type metadata accessor for CompletionView);
      v101 = sub_252F534EC();
      sub_252F1DFC4(v42, type metadata accessor for CompletionView);
      v103 = type metadata accessor for CompletionSnippetModel;
      v102 = v52;
      break;
    case 3u:
      v122 = OUTLINED_FUNCTION_9();
      v123 = v148;
      sub_252F1DF04(v122, v148, v124);
      sub_252F1DF64(v123, v35, type metadata accessor for AutomationSnippetModel);
      v125 = v150;
      AutomationView.init(model:)(v35, v150);
      sub_252F1E064(&qword_27F575E58, type metadata accessor for AutomationView);
      v101 = sub_252F534EC();
      sub_252F1DFC4(v125, type metadata accessor for AutomationView);
      v126 = type metadata accessor for AutomationSnippetModel;
      goto LABEL_21;
    case 4u:
      v104 = OUTLINED_FUNCTION_9();
      v105 = v161;
      sub_252F1DF04(v104, v161, v106);
      v107 = v160;
      sub_252F1DF64(v105, v160, type metadata accessor for CallToActionSnippetModel);
      v109 = v162;
      v108 = v163;
      v110 = (v162 + *(v163 + 20));
      sub_252F5394C();
      OUTLINED_FUNCTION_0();
      sub_252F1E064(v111, v112);
      *v110 = sub_252F5326C();
      v110[1] = v113;
      sub_252F1DF64(v107, v109, type metadata accessor for CallToActionSnippetModel);
      if (qword_27F575E10 != -1)
      {
        OUTLINED_FUNCTION_3();
      }

      v114 = sub_252F5316C();
      __swift_project_value_buffer(v114, qword_27F57B800);
      OUTLINED_FUNCTION_8();
      sub_252F53B8C();
      MEMORY[0x2530AF890](0xD000000000000033, 0x8000000252F57A40);
      v115 = CallToActionSnippetModel.description.getter();
      MEMORY[0x2530AF890](v115);

      OUTLINED_FUNCTION_11("/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationUIFramework/CallToActionView.swift", v164._countAndFlagsBits);

      if (qword_27F575E18 != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v116 = *(v108 + 24);
      v117 = qword_27F57B818;
      sub_252F5313C();
      sub_252F53ADC();
      OUTLINED_FUNCTION_14();
      v118 = type metadata accessor for CallToActionSnippetModel;
      sub_252F1DFC4(v107, type metadata accessor for CallToActionSnippetModel);
      sub_252F1E064(&qword_27F575E50, type metadata accessor for CallToActionView);
      v101 = sub_252F534EC();
      v119 = type metadata accessor for CallToActionView;
LABEL_19:
      sub_252F1DFC4(v109, v119);
      v102 = v105;
      v103 = v118;
      break;
    case 5u:
      v141 = OUTLINED_FUNCTION_9();
      v123 = v155;
      sub_252F1DF04(v141, v155, v142);
      v143 = v152;
      sub_252F1DF64(v123, v152, type metadata accessor for TemperatureSnippetModel);
      v144 = v156;
      TemperatureView.init(model:)(v143, v156);
      sub_252F1E064(&qword_27F575E40, type metadata accessor for TemperatureView);
      v101 = sub_252F534EC();
      sub_252F1DFC4(v144, type metadata accessor for TemperatureView);
      v126 = type metadata accessor for TemperatureSnippetModel;
LABEL_21:
      v103 = v126;
      v102 = v123;
      break;
    default:
      v87 = OUTLINED_FUNCTION_9();
      v88 = v81;
      sub_252F1DF04(v87, v81, v89);
      v90 = v81;
      v91 = v78;
      sub_252F1DF64(v90, v78, type metadata accessor for DisambiguationSnippetModel);
      v92 = v153;
      v93 = (v70 + *(v153 + 20));
      sub_252F5394C();
      OUTLINED_FUNCTION_0();
      sub_252F1E064(v94, v95);
      *v93 = sub_252F5326C();
      v93[1] = v96;
      sub_252F1DF64(v91, v70, type metadata accessor for DisambiguationSnippetModel);
      if (qword_27F575E18 != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v97 = *(v92 + 24);
      qword_27F57B818;
      sub_252F5313C();
      sub_252F53ADC();
      sub_252F5312C();
      if (qword_27F575E10 != -1)
      {
        OUTLINED_FUNCTION_3();
      }

      v98 = sub_252F5316C();
      __swift_project_value_buffer(v98, qword_27F57B800);
      OUTLINED_FUNCTION_8();
      sub_252F53B8C();
      MEMORY[0x2530AF890](0xD000000000000033, 0x8000000252F57C00);
      v99 = sub_252F3A05C();
      MEMORY[0x2530AF890](v99);

      v100._countAndFlagsBits = 0xD00000000000006BLL;
      v100._object = 0x8000000252F57C40;
      Logger.debug(output:test:caller:)(v164, 0, v100);

      sub_252F1DFC4(v91, type metadata accessor for DisambiguationSnippetModel);
      sub_252F1E064(&qword_27F575E70, type metadata accessor for DisambiguationView);
      v101 = sub_252F534EC();
      sub_252F1DFC4(v70, type metadata accessor for DisambiguationView);
      v102 = v88;
      v103 = type metadata accessor for DisambiguationSnippetModel;
      break;
  }

  sub_252F1DFC4(v102, v103);
  return v101;
}

uint64_t sub_252F1DE8C@<X0>(uint64_t *a1@<X8>)
{
  result = HomeAutomationUIPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_252F1DF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_252F1DF64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_252F1DFC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_252F1E064(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for VRXVisualResponseLocation()
{
  if (!qword_27F575E80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F575E80);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14()
{

  return sub_252F5312C();
}

uint64_t AutomationSnippetModel.triggerValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
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

uint64_t sub_252F1E30C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AutomationSnippetModel.triggerValue.setter();
}

uint64_t (*AutomationSnippetModel.triggerValue.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v2[4] = sub_252F530AC();
  return sub_252F20BA0;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t AutomationSnippetModel.targetedEntitiesIcons.getter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
  sub_252F530BC();
  return v2;
}

uint64_t type metadata accessor for AutomationSnippetModel()
{
  result = qword_27F575F08;
  if (!qword_27F575F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F1E4D4(uint64_t *a1)
{
  v1 = *a1;

  return AutomationSnippetModel.targetedEntitiesIcons.setter();
}

uint64_t AutomationSnippetModel.targetedEntitiesIcons.setter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
  return sub_252F530CC();
}

uint64_t (*AutomationSnippetModel.targetedEntitiesIcons.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_0(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t AutomationSnippetModel.triggerIcon.getter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
  return sub_252F530BC();
}

uint64_t sub_252F1E618(uint64_t a1)
{
  v2 = type metadata accessor for IconConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F1F7F4(a1, v5, type metadata accessor for IconConfiguration);
  return AutomationSnippetModel.triggerIcon.setter(v5);
}

uint64_t AutomationSnippetModel.triggerIcon.setter(uint64_t a1)
{
  v3 = type metadata accessor for IconConfiguration();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_5_0();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_3_0();
  sub_252F1F7F4(a1, v7, v8);
  v9 = *(type metadata accessor for AutomationSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
  sub_252F530CC();
  return sub_252F1F854(a1, v1);
}

uint64_t (*AutomationSnippetModel.triggerIcon.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_0(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t AutomationSnippetModel.automationSubtext.getter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v2;
}

uint64_t sub_252F1E834(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AutomationSnippetModel.automationSubtext.setter();
}

uint64_t AutomationSnippetModel.automationSubtext.setter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  return sub_252F530CC();
}

uint64_t (*AutomationSnippetModel.automationSubtext.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_0(v2) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t AutomationSnippetModel.scheduledText.getter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v2;
}

uint64_t sub_252F1E98C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AutomationSnippetModel.scheduledText.setter();
}

uint64_t AutomationSnippetModel.scheduledText.setter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  return sub_252F530CC();
}

uint64_t (*AutomationSnippetModel.scheduledText.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_0(v2) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t AutomationSnippetModel.isSceneAutomation.getter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  return v2;
}

uint64_t AutomationSnippetModel.isSceneAutomation.setter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  return sub_252F530CC();
}

uint64_t (*AutomationSnippetModel.isSceneAutomation.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_0(v2) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F1EBA8;
}

void sub_252F1EBAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_252F1EBF8()
{
  v0 = sub_252F53BDC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_252F1EC60(char a1)
{
  result = 0x5672656767697274;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x4972656767697274;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x656C756465686373;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252F1ED5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252F1EBF8();
  *a2 = result;
  return result;
}

unint64_t sub_252F1ED8C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_252F1EC60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F1EDD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F1EC44();
  *a1 = result;
  return result;
}

uint64_t sub_252F1EE1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F1EC48();
  *a1 = result;
  return result;
}

uint64_t sub_252F1EE44(uint64_t a1)
{
  v2 = sub_252F1F70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F1EE80(uint64_t a1)
{
  v2 = sub_252F1F70C();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall AutomationSnippetModel.responseViewId()()
{
  v0 = 0x8000000252F57CF0;
  v1 = 0xD000000000000019;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t AutomationSnippetModel.init(triggerValue:targetedEntitiesIcons:triggerIcon:automationSubtext:scheduledText:isSceneAutomation:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void), uint64_t a8, unsigned __int8 a9)
{
  v34 = a8;
  v31 = a6;
  v32 = a7;
  v33 = a9;
  v14 = type metadata accessor for IconConfiguration();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v31 - v21;
  v35 = a1;
  v36 = a2;
  sub_252F5309C();
  v23 = type metadata accessor for AutomationSnippetModel();
  v24 = v23[5];
  v35 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA8, &qword_252F542D0);
  sub_252F5309C();
  OUTLINED_FUNCTION_3_0();
  sub_252F1F7F4(a4, v22, v25);
  v26 = v23[6];
  sub_252F1F7F4(v22, v20, a3);
  sub_252F5309C();
  sub_252F1F854(v22, a3);
  v27 = v23[7];
  v35 = a5;
  v36 = v31;
  sub_252F5309C();
  v28 = v23[8];
  v35 = v32;
  v36 = v34;
  sub_252F5309C();
  v29 = v23[9];
  LOBYTE(v35) = v33;
  sub_252F5309C();
  return sub_252F1F854(a4, a3);
}

uint64_t AutomationSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v47 = type metadata accessor for IconConfiguration();
  v3 = OUTLINED_FUNCTION_1(v47);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v44 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EB0, &qword_252F542D8);
  v11 = OUTLINED_FUNCTION_16(v10);
  v45 = v12;
  v46 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = type metadata accessor for AutomationSnippetModel();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v21 = v20 - v19;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F1F70C();
  v23 = v48;
  sub_252F53CFC();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = v9;
  v42 = v15;
  v48 = a1;
  LOBYTE(v49) = 0;
  v49 = sub_252F53C0C();
  v50 = v24;
  sub_252F5309C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA8, &qword_252F542D0);
  LOBYTE(v51) = 1;
  sub_252F1FCA4(&qword_27F575EC0, &qword_27F575EC8);
  sub_252F53C2C();
  v25 = v42[5];
  v51 = v49;
  sub_252F5309C();
  LOBYTE(v49) = 2;
  OUTLINED_FUNCTION_0_0();
  sub_252F20630(v26, v27);
  v28 = v41;
  sub_252F53C2C();
  v40[1] = v42[6];
  sub_252F1F7F4(v28, v44, type metadata accessor for IconConfiguration);
  sub_252F5309C();
  sub_252F1F854(v28, type metadata accessor for IconConfiguration);
  OUTLINED_FUNCTION_7_0(3);
  v29 = sub_252F53C0C();
  v30 = v42[7];
  v49 = v29;
  v50 = v31;
  sub_252F5309C();
  OUTLINED_FUNCTION_7_0(4);
  v32 = sub_252F53C0C();
  v33 = v42[8];
  v49 = v32;
  v50 = v34;
  sub_252F5309C();
  OUTLINED_FUNCTION_7_0(5);
  v35 = sub_252F53C1C();
  v36 = v42[9];
  LOBYTE(v49) = v35 & 1;
  sub_252F5309C();
  v37 = OUTLINED_FUNCTION_2_0();
  v38(v37);
  sub_252F1F7F4(v21, v43, type metadata accessor for AutomationSnippetModel);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return sub_252F1F854(v21, type metadata accessor for AutomationSnippetModel);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_252F1F70C()
{
  result = qword_27F575EB8;
  if (!qword_27F575EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575EB8);
  }

  return result;
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

uint64_t sub_252F1F7F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_252F1F854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t AutomationSnippetModel.encode(to:)(void *a1)
{
  v2 = type metadata accessor for IconConfiguration();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575ED0, &qword_252F542E0);
  v10 = OUTLINED_FUNCTION_16(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F1F70C();
  sub_252F53D0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  sub_252F53C5C();
  if (v32)
  {
    v16 = *(v12 + 8);
    v17 = OUTLINED_FUNCTION_17();
    v18(v17);
  }

  else
  {

    v20 = type metadata accessor for AutomationSnippetModel();
    v21 = v20[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
    sub_252F530BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA8, &qword_252F542D0);
    sub_252F1FCA4(&qword_27F575ED8, &qword_27F575EE0);
    sub_252F53C7C();

    v22 = v20[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
    sub_252F530BC();
    OUTLINED_FUNCTION_0_0();
    sub_252F20630(v23, v24);
    sub_252F53C7C();
    OUTLINED_FUNCTION_4_0();
    sub_252F1F854(v8, v25);
    v29 = v20[7];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_13_0(3);

    v30 = v20[8];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_13_0(4);

    v31 = v20[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
    sub_252F530BC();
    sub_252F53C6C();
    v26 = *(v12 + 8);
    v27 = OUTLINED_FUNCTION_17();
    return v28(v27);
  }
}

uint64_t sub_252F1FCA4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575EA8, &qword_252F542D0);
    OUTLINED_FUNCTION_0_0();
    sub_252F20630(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t AutomationSnippetModel.description.getter()
{
  v0 = *(*(type metadata accessor for IconConfiguration() - 8) + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_5_0();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_6_0();
  v27 = 0xD000000000000017;
  v28 = v4;
  OUTLINED_FUNCTION_10_0();
  sub_252F53B8C();

  strcpy(v26, "triggerValue: ");
  HIBYTE(v26[1]) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890]();

  MEMORY[0x2530AF890](8236, 0xE200000000000000);
  MEMORY[0x2530AF890](v26[0], v26[1]);

  OUTLINED_FUNCTION_10_0();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v26[0] = 0xD000000000000015;
  v26[1] = v5;
  v6 = type metadata accessor for AutomationSnippetModel();
  v7 = v6[7];
  OUTLINED_FUNCTION_20();
  MEMORY[0x2530AF890]();

  MEMORY[0x2530AF890](8236, 0xE200000000000000);
  MEMORY[0x2530AF890](0xD000000000000015, v26[1]);

  OUTLINED_FUNCTION_10_0();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v26[0] = 0xD000000000000019;
  v26[1] = v8;
  v9 = v6[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
  sub_252F530BC();
  v10 = *(v24 + 16);

  v25 = v10;
  v11 = sub_252F53C9C();
  MEMORY[0x2530AF890](v11);

  MEMORY[0x2530AF890](0xD000000000000019, v26[1]);

  OUTLINED_FUNCTION_10_0();
  sub_252F53B8C();

  v26[0] = 0x656767697274202CLL;
  v26[1] = 0xEF203A6E6F634972;
  v12 = v6[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
  sub_252F530BC();
  v13 = IconConfiguration.description.getter();
  v15 = v14;
  OUTLINED_FUNCTION_4_0();
  sub_252F1F854(v3, v16);
  MEMORY[0x2530AF890](v13, v15);

  MEMORY[0x2530AF890](0x656767697274202CLL, 0xEF203A6E6F634972);

  OUTLINED_FUNCTION_10_0();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v26[0] = 0xD000000000000011;
  v26[1] = v17;
  v18 = v6[8];
  OUTLINED_FUNCTION_20();
  MEMORY[0x2530AF890](v25);

  MEMORY[0x2530AF890](0xD000000000000011, v26[1]);

  OUTLINED_FUNCTION_10_0();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v26[0] = 0xD000000000000015;
  v26[1] = v19;
  v20 = v6[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  if (v25)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v25)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x2530AF890](v21, v22);

  MEMORY[0x2530AF890](v26[0], v26[1]);

  MEMORY[0x2530AF890](41, 0xE100000000000000);
  return v27;
}

uint64_t AutomationSnippetModel.stringId.getter()
{
  sub_252F53B8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890]();

  OUTLINED_FUNCTION_15();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v16 = v0;
  v1 = type metadata accessor for AutomationSnippetModel();
  v2 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
  sub_252F530BC();
  v3 = *(v14 + 16);

  v15 = v3;
  v4 = sub_252F53C9C();
  MEMORY[0x2530AF890](v4);

  MEMORY[0x2530AF890](0xD000000000000018, v16);

  OUTLINED_FUNCTION_15();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v17 = v5;
  v6 = v1[7];
  OUTLINED_FUNCTION_20();
  MEMORY[0x2530AF890](v3);

  MEMORY[0x2530AF890](0xD000000000000014, v17);

  OUTLINED_FUNCTION_15();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v18 = v7;
  v8 = v1[8];
  OUTLINED_FUNCTION_20();
  MEMORY[0x2530AF890](v3);

  MEMORY[0x2530AF890](0xD000000000000010, v18);

  OUTLINED_FUNCTION_15();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v19 = v9;
  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  if (v15)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v15)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x2530AF890](v11, v12);

  MEMORY[0x2530AF890](0xD000000000000014, v19);

  return 0x7265676769727423;
}

uint64_t static AutomationSnippetModel.== infix(_:_:)()
{
  if ((sub_252F530DC() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for AutomationSnippetModel();
  v1 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA8, &qword_252F542D0);
  sub_252F1FCA4(&qword_27F575EE8, &qword_27F575EF0);
  if ((OUTLINED_FUNCTION_19() & 1) == 0)
  {
    return 0;
  }

  v2 = v0[6];
  type metadata accessor for IconConfiguration();
  OUTLINED_FUNCTION_0_0();
  sub_252F20630(v3, v4);
  if ((OUTLINED_FUNCTION_19() & 1) == 0)
  {
    return 0;
  }

  v5 = v0[7];
  if ((sub_252F530DC() & 1) == 0)
  {
    return 0;
  }

  v6 = v0[8];
  if ((sub_252F530DC() & 1) == 0)
  {
    return 0;
  }

  v7 = v0[9];

  return sub_252F530DC();
}

uint64_t sub_252F20630(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252F20724()
{
  sub_252F208D4(319, &qword_27F575F18);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_252F20818();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_252F2087C();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_252F208D4(319, &qword_27F575F30);
      v1 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_252F20818()
{
  if (!qword_27F575F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575EA8, &qword_252F542D0);
    v0 = sub_252F530EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F575F20);
    }
  }
}

void sub_252F2087C()
{
  if (!qword_27F575F28)
  {
    type metadata accessor for IconConfiguration();
    v0 = sub_252F530EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F575F28);
    }
  }
}

void sub_252F208D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_252F530EC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AutomationSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AutomationSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_252F20A9C()
{
  result = qword_27F575F38;
  if (!qword_27F575F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575F38);
  }

  return result;
}

unint64_t sub_252F20AF4()
{
  result = qword_27F575F40;
  if (!qword_27F575F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575F40);
  }

  return result;
}

unint64_t sub_252F20B4C()
{
  result = qword_27F575F48;
  if (!qword_27F575F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575F48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for AutomationSnippetModel();
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return sub_252F530AC();
}

uint64_t OUTLINED_FUNCTION_13_0@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return sub_252F53C5C();
}

uint64_t OUTLINED_FUNCTION_18()
{
  v3 = *(v1 - 112) + v0;

  return sub_252F530BC();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return sub_252F530DC();
}

uint64_t OUTLINED_FUNCTION_20()
{

  return sub_252F530BC();
}

uint64_t AutomationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AutomationView();
  v5 = (a2 + v4[5]);
  sub_252F5394C();
  sub_252F256FC(&qword_27F575E48, MEMORY[0x277D63F60]);
  *v5 = sub_252F5326C();
  v5[1] = v6;
  sub_252F24B90();
  v7 = *(type metadata accessor for AutomationSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  *(a2 + v4[6]) = v15;
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v8 = v4[7];
  v9 = qword_27F57B818;
  sub_252F5313C();
  sub_252F53ADC();
  sub_252F5312C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v10 = sub_252F5316C();
  __swift_project_value_buffer(v10, qword_27F57B800);
  sub_252F53B8C();

  v11 = AutomationSnippetModel.description.getter();
  MEMORY[0x2530AF890](v11);

  v12._countAndFlagsBits = 0xD00000000000002FLL;
  v13._countAndFlagsBits = 0xD000000000000067;
  v13._object = 0x8000000252F57E80;
  v12._object = 0x8000000252F57E50;
  Logger.debug(output:test:caller:)(v12, 0, v13);

  return sub_252F2578C(a1, type metadata accessor for AutomationSnippetModel);
}

uint64_t type metadata accessor for AutomationView()
{
  result = qword_27F575FC0;
  if (!qword_27F575FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AutomationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = type metadata accessor for AutomationView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575F50, &unk_252F54518);
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  sub_252F24B90();
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = swift_allocObject();
  sub_252F24BE8(v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575F58, &qword_252F54528);
  sub_252F24CBC();
  sub_252F5381C();
  sub_252F24B90();
  v12 = swift_allocObject();
  sub_252F24BE8(v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  v13 = &v9[*(v4 + 36)];
  *v13 = sub_252F24E54;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  sub_252F24B90();
  v14 = swift_allocObject();
  sub_252F24BE8(v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v10);
  sub_252F25128();
  sub_252F5351C();

  return sub_252F25CDC(v9, &qword_27F575F50, &unk_252F54518);
}

uint64_t sub_252F21258@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575FA0, &qword_252F54548);
  v3 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v131 = &v115 - v4;
  v132 = sub_252F5390C();
  v130 = *(v132 - 8);
  v5 = *(v130 + 64);
  v6 = MEMORY[0x28223BE20](v132);
  v129 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v136 = &v115 - v8;
  v128 = sub_252F52FFC();
  v126 = *(v128 - 8);
  v9 = *(v126 + 64);
  MEMORY[0x28223BE20](v128);
  v125 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IconConfiguration();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v118 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_252F5308C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v119 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_252F537EC();
  v123 = *(v124 - 8);
  v17 = *(v123 + 64);
  MEMORY[0x28223BE20](v124);
  v120 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576058, &qword_252F54720);
  v19 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v121 = &v115 - v20;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575F90, &qword_252F54540);
  v21 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v127 = &v115 - v22;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576060, &qword_252F54728);
  v23 = *(*(v133 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v133);
  v135 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v134 = &v115 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576068, &qword_252F54730);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v117 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v116 = (&v115 - v31);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576070, &qword_252F54738);
  v32 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v151 = &v115 - v33;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576078, &qword_252F54740);
  v34 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v140 = &v115 - v35;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575F70, &qword_252F54530);
  v36 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v143 = &v115 - v37;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575F80, &qword_252F54538);
  v38 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v139 = &v115 - v39;
  v146 = sub_252F538AC();
  v40 = *(v146 - 1);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v146);
  v145 = &v115 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_252F538CC();
  v43 = *(v138 - 8);
  v44 = v43[8];
  v45 = MEMORY[0x28223BE20](v138);
  v47 = &v115 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v49 = &v115 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576080, &qword_252F54748);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v54 = &v115 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v56 = &v115 - v55;
  v57 = &a1[*(type metadata accessor for AutomationView() + 20)];
  if (*v57)
  {
    v58 = a1;
    v59 = *v57;
    sub_252F5391C();

    if (sub_252F53AFC() & 1) != 0 || (v60 = v59, sub_252F5391C(), v60, (sub_252F53B1C()))
    {
      *v56 = sub_252F5338C();
      *(v56 + 1) = 0x4018000000000000;
      v56[16] = 0;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760A8, &qword_252F54768);
      sub_252F22684(v58, &v56[*(v61 + 44)]);
      v62 = *(type metadata accessor for AutomationSnippetModel() + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
      sub_252F530BC();
      v163 = MEMORY[0x277D837D0];
      v164 = MEMORY[0x277D63F80];
      (*(v40 + 104))(v145, *MEMORY[0x277D63D60], v146);
      v137 = v49;
      sub_252F538BC();
      sub_252F25C84();
      v63 = v43[2];
      v64 = v138;
      v63(v47, v49, v138);
      v65 = v139;
      sub_252F25C84();
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760B0, &qword_252F54770);
      v63((v65 + *(v66 + 48)), v47, v64);
      v146 = v43[1];
      v146(v47, v64);
      sub_252F25CDC(v54, &qword_27F576080, &qword_252F54748);
      sub_252F25C84();
      swift_storeEnumTagMultiPayload();
      sub_252F25B24(&qword_27F575F78, &qword_27F575F80, &qword_252F54538);
      sub_252F25B24(&qword_27F575F88, &qword_27F575F90, &qword_252F54540);
      v67 = v143;
      sub_252F533EC();
      sub_252F25C84();
      swift_storeEnumTagMultiPayload();
      sub_252F24D74();
      sub_252F25B24(&qword_27F575F98, &qword_27F575FA0, &qword_252F54548);
      sub_252F533EC();
      sub_252F25CDC(v67, &qword_27F575F70, &qword_252F54530);
      sub_252F25CDC(v65, &qword_27F575F80, &qword_252F54538);
      v146(v137, v64);
      v68 = v56;
      v69 = &qword_27F576080;
      v70 = &qword_252F54748;
    }

    else
    {
      v72 = v60;
      sub_252F5391C();

      if ((sub_252F53B0C() & 1) == 0)
      {
        v143 = type metadata accessor for AutomationSnippetModel();
        v86 = *(v143 + 6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
        v87 = v58;
        v88 = v118;
        sub_252F530BC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
        sub_252F530BC();
        sub_252F2578C(v88, type metadata accessor for IconConfiguration);
        sub_252F5307C();

        v89 = v120;
        sub_252F537FC();
        v90 = v126;
        v91 = v125;
        v92 = v128;
        (*(v126 + 104))(v125, *MEMORY[0x277D62B28], v128);
        sub_252F256FC(&qword_27F576020, MEMORY[0x277D63B20]);
        v93 = v121;
        v94 = v124;
        sub_252F534FC();
        (*(v90 + 8))(v91, v92);
        (*(v123 + 8))(v89, v94);
        *(v93 + *(v122 + 36)) = sub_252F536BC();
        sub_252F257E0();
        v95 = sub_252F534EC();
        sub_252F25CDC(v93, &qword_27F576058, &qword_252F54720);
        sub_252F530BC();
        v96 = MEMORY[0x277D837D0];
        v97 = MEMORY[0x277D63F80];
        v163 = MEMORY[0x277D837D0];
        v164 = MEMORY[0x277D63F80];
        v98 = v143;
        v99 = &v87[*(v143 + 7)];
        sub_252F530BC();
        v161 = v96;
        v162 = v97;
        v160 = 0;
        v158 = 0u;
        v159 = 0u;
        v157 = 0;
        v155 = 0u;
        v156 = 0u;
        v154 = MEMORY[0x277D63A60];
        v153 = MEMORY[0x277CE11C8];
        v144 = v95;
        v152 = v95;

        v100 = v136;
        sub_252F538FC();
        v101 = &v87[*(v98 + 8)];
        sub_252F530BC();
        v163 = v96;
        v164 = v97;
        (*(v40 + 104))(v145, *MEMORY[0x277D63D60], v146);
        v102 = v134;
        sub_252F538BC();
        v103 = sub_252F5367C();
        v104 = sub_252F5340C();
        v105 = v102 + *(v133 + 36);
        *v105 = v103;
        *(v105 + 8) = v104;
        v106 = v130;
        v107 = *(v130 + 16);
        v108 = v129;
        v109 = v132;
        v107(v129, v100, v132);
        v110 = v135;
        sub_252F25C84();
        v111 = v131;
        v107(v131, v108, v109);
        v112 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576090, &qword_252F54750) + 48);
        sub_252F25C84();
        sub_252F25CDC(v110, &qword_27F576060, &qword_252F54728);
        v113 = *(v106 + 8);
        v113(v108, v109);
        sub_252F25C84();
        swift_storeEnumTagMultiPayload();
        sub_252F24D74();
        sub_252F25B24(&qword_27F575F98, &qword_27F575FA0, &qword_252F54548);
        sub_252F533EC();

        sub_252F25CDC(v111, &qword_27F575FA0, &qword_252F54548);
        sub_252F25CDC(v102, &qword_27F576060, &qword_252F54728);
        return (v113)(v136, v109);
      }

      v73 = sub_252F5338C();
      v74 = v116;
      *v116 = v73;
      v74[1] = 0;
      *(v74 + 16) = 0;
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576098, &qword_252F54758);
      sub_252F230E0(v58, v74 + *(v75 + 44));
      v76 = *(type metadata accessor for AutomationSnippetModel() + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
      sub_252F530BC();
      v163 = MEMORY[0x277D837D0];
      v164 = MEMORY[0x277D63F80];
      (*(v40 + 104))(v145, *MEMORY[0x277D63D60], v146);
      v77 = v134;
      sub_252F538BC();
      v78 = sub_252F5367C();
      v79 = sub_252F5340C();
      v80 = v77 + *(v133 + 36);
      *v80 = v78;
      *(v80 + 8) = v79;
      v81 = v117;
      sub_252F25C84();
      v82 = v135;
      sub_252F25C84();
      v83 = v127;
      sub_252F25C84();
      v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760A0, &qword_252F54760) + 48);
      sub_252F25C84();
      sub_252F25CDC(v82, &qword_27F576060, &qword_252F54728);
      sub_252F25CDC(v81, &qword_27F576068, &qword_252F54730);
      sub_252F25C84();
      swift_storeEnumTagMultiPayload();
      sub_252F25B24(&qword_27F575F78, &qword_27F575F80, &qword_252F54538);
      sub_252F25B24(&qword_27F575F88, &qword_27F575F90, &qword_252F54540);
      v85 = v143;
      sub_252F533EC();
      sub_252F25C84();
      swift_storeEnumTagMultiPayload();
      sub_252F24D74();
      sub_252F25B24(&qword_27F575F98, &qword_27F575FA0, &qword_252F54548);
      sub_252F533EC();
      sub_252F25CDC(v85, &qword_27F575F70, &qword_252F54530);
      sub_252F25CDC(v83, &qword_27F575F90, &qword_252F54540);
      sub_252F25CDC(v77, &qword_27F576060, &qword_252F54728);
      v68 = v74;
      v69 = &qword_27F576068;
      v70 = &qword_252F54730;
    }

    return sub_252F25CDC(v68, v69, v70);
  }

  else
  {
    v114 = *(v57 + 1);
    sub_252F5394C();
    sub_252F256FC(&qword_27F575E48, MEMORY[0x277D63F60]);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F22684@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v36[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760B8, &qword_252F54778);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760C0, &qword_252F54780);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v36 - v17;
  *v18 = sub_252F5332C();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760C8, &qword_252F54788);
  sub_252F229B4(a1, &v18[*(v19 + 44)]);
  v20 = sub_252F5342C();
  sub_252F531DC();
  v21 = &v18[*(v12 + 44)];
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  v26 = MEMORY[0x277D837D0];
  v27 = MEMORY[0x277D63F80];
  v48 = MEMORY[0x277D837D0];
  v49 = MEMORY[0x277D63F80];
  v28 = &a1[*(type metadata accessor for AutomationSnippetModel() + 28)];
  sub_252F530BC();
  v46 = v26;
  v47 = v27;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0;
  v38 = 0u;
  v37 = 0u;
  sub_252F538FC();
  LOBYTE(v28) = sub_252F5342C();
  sub_252F531DC();
  v29 = &v10[*(v4 + 44)];
  *v29 = v28;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  sub_252F25C84();
  sub_252F25C84();
  sub_252F25C84();
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760D0, &qword_252F54790) + 48);
  sub_252F25C84();
  sub_252F25CDC(v10, &qword_27F5760B8, &qword_252F54778);
  sub_252F25CDC(v18, &qword_27F5760C0, &qword_252F54780);
  sub_252F25CDC(v8, &qword_27F5760B8, &qword_252F54778);
  return sub_252F25CDC(v16, &qword_27F5760C0, &qword_252F54780);
}

uint64_t sub_252F229B4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v69 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760D8, &qword_252F54798);
  v66 = *(v70 - 8);
  v2 = *(v66 + 64);
  v3 = MEMORY[0x28223BE20](v70);
  v68 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v65 = &v62[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760E0, &qword_252F547A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v62[-v8];
  v10 = type metadata accessor for IconConfiguration();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_252F5308C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760E8, &qword_252F547A8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v62[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v62[-v21];
  v67 = type metadata accessor for AutomationSnippetModel();
  v23 = *(v67 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
  sub_252F530BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  sub_252F2578C(v13, type metadata accessor for IconConfiguration);
  sub_252F5307C();

  sub_252F537FC();
  v24 = sub_252F5346C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v24);
  v25 = sub_252F5347C();
  sub_252F25CDC(v9, &qword_27F5760E0, &qword_252F547A0);
  KeyPath = swift_getKeyPath();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760F0, &qword_252F547E0);
  v28 = &v22[*(v27 + 36)];
  *v28 = KeyPath;
  v28[1] = v25;
  LOBYTE(KeyPath) = sub_252F5340C();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760F8, &qword_252F547E8);
  v30 = &v22[*(v29 + 36)];
  *v30 = KeyPath;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v30[40] = 1;
  v31 = sub_252F536BC();
  v32 = *(v16 + 36);
  v71 = v22;
  *&v22[v32] = v31;
  sub_252F5307C();
  v33 = v64;
  sub_252F537FC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v24);
  v34 = sub_252F5347C();
  sub_252F25CDC(v9, &qword_27F5760E0, &qword_252F547A0);
  v35 = swift_getKeyPath();
  v36 = &v20[*(v27 + 36)];
  *v36 = v35;
  v36[1] = v34;
  LOBYTE(v27) = sub_252F5345C();
  sub_252F531DC();
  v37 = &v20[*(v29 + 36)];
  *v37 = v27;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  *&v20[*(v16 + 36)] = sub_252F5361C();
  sub_252F258F8();
  v42 = v65;
  sub_252F535AC();
  sub_252F25CDC(v20, &qword_27F5760E8, &qword_252F547A8);
  v43 = type metadata accessor for AutomationView();
  v44 = *(v67 + 20);
  if (v33[*(v43 + 24)] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
    sub_252F530BC();
    v45 = &v33[*(v43 + 20)];
    v46 = *v45;
    if (*v45)
    {
      v72 = v75;
      v73 = v46;
      v74 = 0;
LABEL_6:
      sub_252F25B6C();
      sub_252F25BC0();
      v47 = v46;
      sub_252F533EC();
      v67 = v75;
      v64 = v76;
      v63 = v77;
      v48 = v20;
      sub_252F25C84();
      v49 = v66;
      v50 = *(v66 + 16);
      v51 = v68;
      v52 = v42;
      v53 = v70;
      v50(v68, v42, v70);
      v54 = v69;
      sub_252F25C84();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576138, &qword_252F547F8);
      v50((v54 + *(v55 + 48)), v51, v53);
      v56 = v54 + *(v55 + 64);
      v57 = v67;
      v58 = v64;
      *v56 = v67;
      *(v56 + 8) = v58;
      *(v56 + 16) = v63;
      sub_252F25C14(v57, v58);
      v59 = *(v49 + 8);
      v59(v52, v53);
      sub_252F25CDC(v71, &qword_27F5760E8, &qword_252F547A8);
      sub_252F25C4C(v57, v58);
      v59(v51, v53);
      return sub_252F25CDC(v48, &qword_27F5760E8, &qword_252F547A8);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
    sub_252F530BC();
    v45 = &v33[*(v43 + 20)];
    v46 = *v45;
    if (*v45)
    {
      v72 = v75;
      v73 = v46;
      v74 = 1;
      goto LABEL_6;
    }
  }

  v61 = *(v45 + 1);
  sub_252F5394C();
  sub_252F256FC(&qword_27F575E48, MEMORY[0x277D63F60]);
  result = sub_252F5325C();
  __break(1u);
  return result;
}

uint64_t sub_252F230E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576140, &qword_252F54800);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576148, &qword_252F54808);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v44 - v17;
  *v18 = sub_252F5332C();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576150, &qword_252F54810);
  sub_252F23470(a1, &v18[*(v19 + 44)]);
  v20 = sub_252F5341C();
  sub_252F531DC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576158, &qword_252F54818) + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = sub_252F5342C();
  sub_252F531DC();
  v31 = &v18[*(v12 + 44)];
  *v31 = v30;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  v36 = MEMORY[0x277D837D0];
  v37 = MEMORY[0x277D63F80];
  v56 = MEMORY[0x277D837D0];
  v57 = MEMORY[0x277D63F80];
  v38 = a1 + *(type metadata accessor for AutomationSnippetModel() + 28);
  sub_252F530BC();
  v54 = v36;
  v55 = v37;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0;
  v49 = 0u;
  v48 = 0u;
  v47 = 0;
  v46 = 0u;
  v45 = 0u;
  sub_252F538FC();
  v39 = sub_252F5367C();
  v40 = sub_252F5340C();
  v41 = &v10[*(v4 + 44)];
  *v41 = v39;
  v41[8] = v40;
  sub_252F25C84();
  sub_252F25C84();
  sub_252F25C84();
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576160, &qword_252F54820) + 48);
  sub_252F25C84();
  sub_252F25CDC(v10, &qword_27F576140, &qword_252F54800);
  sub_252F25CDC(v18, &qword_27F576148, &qword_252F54808);
  sub_252F25CDC(v8, &qword_27F576140, &qword_252F54800);
  return sub_252F25CDC(v16, &qword_27F576148, &qword_252F54808);
}

uint64_t sub_252F23470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v96 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760E0, &qword_252F547A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v91 = &v88 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576168, &qword_252F54828);
  v6 = *(v5 - 8);
  v92 = v5 - 8;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v94 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v90 = &v88 - v10;
  v88 = sub_252F52FFC();
  v11 = *(v88 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v88);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IconConfiguration();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252F5308C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_252F537EC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576170, &qword_252F54830);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v93 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v88 - v31;
  v89 = type metadata accessor for AutomationSnippetModel();
  v33 = *(v89 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
  sub_252F530BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  sub_252F2578C(v18, type metadata accessor for IconConfiguration);
  sub_252F5307C();

  sub_252F537FC();
  v34 = v88;
  (*(v11 + 104))(v14, *MEMORY[0x277D62B18], v88);
  sub_252F256FC(&qword_27F576020, MEMORY[0x277D63B20]);
  sub_252F534FC();
  (*(v11 + 8))(v14, v34);
  (*(v22 + 8))(v25, v21);
  LOBYTE(v33) = sub_252F5343C();
  sub_252F531DC();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576178, &qword_252F54838) + 36)];
  *v43 = v33;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  LOBYTE(v33) = sub_252F5340C();
  v44 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576180, &qword_252F54840) + 36)];
  *v44 = v33;
  *(v44 + 8) = 0u;
  *(v44 + 24) = 0u;
  v44[40] = 1;
  v45 = v32;
  *&v32[*(v27 + 44)] = sub_252F536BC();
  sub_252F5307C();
  v46 = v90;
  sub_252F537FC();
  v47 = sub_252F5346C();
  v48 = v91;
  __swift_storeEnumTagSinglePayload(v91, 1, 1, v47);
  v49 = sub_252F5347C();
  sub_252F25CDC(v48, &qword_27F5760E0, &qword_252F547A0);
  KeyPath = swift_getKeyPath();
  v51 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760F0, &qword_252F547E0) + 36)];
  *v51 = KeyPath;
  v51[1] = v49;
  LOBYTE(v49) = sub_252F5345C();
  sub_252F531DC();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760F8, &qword_252F547E8) + 36)];
  *v60 = v49;
  *(v60 + 1) = v53;
  *(v60 + 2) = v55;
  *(v60 + 3) = v57;
  *(v60 + 4) = v59;
  v60[40] = 0;
  LOBYTE(v49) = sub_252F5343C();
  sub_252F531DC();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576188, &qword_252F54848) + 36)];
  *v69 = v49;
  *(v69 + 1) = v62;
  *(v69 + 2) = v64;
  *(v69 + 3) = v66;
  *(v69 + 4) = v68;
  v69[40] = 0;
  v70 = v46;
  *&v46[*(v92 + 44)] = sub_252F5361C();
  v71 = v96;
  v72 = type metadata accessor for AutomationView();
  v73 = *(v89 + 20);
  if (*(v71 + *(v72 + 24)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
    sub_252F530BC();
    v74 = v71 + *(v72 + 20);
    v75 = *v74;
    if (*v74)
    {
      v97 = v100;
      v98 = v75;
      v99 = 0;
LABEL_6:
      sub_252F25B6C();
      sub_252F25BC0();
      v76 = v75;
      sub_252F533EC();
      v77 = v100;
      v78 = v101;
      v79 = v102;
      v80 = v93;
      sub_252F25C84();
      v81 = v94;
      sub_252F25C84();
      v82 = v95;
      sub_252F25C84();
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576190, &qword_252F54850);
      v84 = *(v83 + 48);
      sub_252F25C84();
      v85 = v82 + *(v83 + 64);
      *v85 = v77;
      *(v85 + 8) = v78;
      *(v85 + 16) = v79;
      sub_252F25C14(v77, v78);
      sub_252F25CDC(v70, &qword_27F576168, &qword_252F54828);
      sub_252F25CDC(v45, &qword_27F576170, &qword_252F54830);
      sub_252F25C4C(v77, v78);
      sub_252F25CDC(v81, &qword_27F576168, &qword_252F54828);
      return sub_252F25CDC(v80, &qword_27F576170, &qword_252F54830);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
    sub_252F530BC();
    v74 = v71 + *(v72 + 20);
    v75 = *v74;
    if (*v74)
    {
      v97 = v100;
      v98 = v75;
      v99 = 1;
      goto LABEL_6;
    }
  }

  v87 = *(v74 + 8);
  sub_252F5394C();
  sub_252F256FC(&qword_27F575E48, MEMORY[0x277D63F60]);
  result = sub_252F5325C();
  __break(1u);
  return result;
}

void sub_252F23D20()
{
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v0 = *(type metadata accessor for AutomationView() + 28);
  sub_252F53ACC();
  sub_252F5311C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v1 = sub_252F5316C();
  __swift_project_value_buffer(v1, qword_27F57B800);
  v2._object = 0x8000000252F57F30;
  v3._countAndFlagsBits = 0xD000000000000067;
  v3._object = 0x8000000252F57E80;
  v2._countAndFlagsBits = 0xD000000000000027;
  Logger.debug(output:test:caller:)(v2, 0, v3);
}

uint64_t sub_252F23E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  sub_252F52FAC();
  v9 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_252F25C84();
  v10 = sub_252F52FBC();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) != 1)
  {
    v11 = sub_252F52F8C();
    (*(*(v10 - 8) + 8))(v6, v10);
  }

  [v9 setPunchOutUri_];

  v12 = a1 + *(type metadata accessor for AutomationView() + 20);
  if (*v12)
  {
    v13 = *v12;
    v14 = v9;
    sub_252F5392C();

    return sub_252F25CDC(v8, &qword_27F576050, &unk_252F54880);
  }

  else
  {
    v16 = *(v12 + 8);
    sub_252F5394C();
    sub_252F256FC(&qword_27F575E48, MEMORY[0x277D63F60]);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F24088@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v39 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576040, &qword_252F54708);
  v3 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - v4;
  v5 = sub_252F52FFC();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252F5308C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576010, &qword_252F546F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576008, &qword_252F546F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - v17;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575FF8, &qword_252F546E8);
  v19 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v40 = &v36 - v20;
  v21 = *(type metadata accessor for IconConfiguration() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  v22 = v47;
  if (v47)
  {
    v37 = v46;
    v38 = a2;
    sub_252F5391C();
    if (sub_252F53AEC())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
      sub_252F530BC();
      sub_252F5307C();
      v23 = MEMORY[0x277D62B18];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
      sub_252F530BC();
      sub_252F5307C();
      v23 = MEMORY[0x277D62B28];
    }

    sub_252F537FC();
    v25 = sub_252F5345C();
    sub_252F531DC();
    v26 = &v14[*(v11 + 36)];
    *v26 = v25;
    *(v26 + 1) = v27;
    *(v26 + 2) = v28;
    *(v26 + 3) = v29;
    *(v26 + 4) = v30;
    v26[40] = 0;
    v31 = *v23;
    v33 = v41;
    v32 = v42;
    (*(v41 + 104))(v8, v31, v42);
    sub_252F25640();
    sub_252F534FC();
    (*(v33 + 8))(v8, v32);
    sub_252F25CDC(v14, &qword_27F576010, &qword_252F546F8);
    v34 = static ColorUtils.fromString(_:)(v37, v22);

    *&v18[*(v15 + 36)] = v34;
    sub_252F25C84();
    swift_storeEnumTagMultiPayload();
    sub_252F2554C();
    sub_252F533EC();
    sub_252F25CDC(v18, &qword_27F576008, &qword_252F546F0);
    a2 = v38;
    sub_252F18ED4();
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v24, 1, v45);
}

uint64_t sub_252F24570(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_bridgeObjectRetain_n();
  v5 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA8, &qword_252F542D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575FD8, &qword_252F546E0);
  sub_252F25B24(&qword_27F575FE0, &qword_27F575EA8, &qword_252F542D0);
  sub_252F25444();
  sub_252F256FC(&qword_27F576038, type metadata accessor for IconConfiguration);
  return sub_252F537CC();
}

uint64_t sub_252F246B8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v39 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576040, &qword_252F54708);
  v3 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - v4;
  v5 = sub_252F52FFC();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252F5308C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576010, &qword_252F546F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576008, &qword_252F546F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - v17;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575FF8, &qword_252F546E8);
  v19 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v40 = &v36 - v20;
  v21 = *(type metadata accessor for IconConfiguration() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  v22 = v47;
  if (v47)
  {
    v37 = v46;
    v38 = a2;
    sub_252F5391C();
    if (sub_252F53AEC())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
      sub_252F530BC();
      sub_252F5307C();
      v23 = MEMORY[0x277D62B18];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
      sub_252F530BC();
      sub_252F5307C();
      v23 = MEMORY[0x277D62B28];
    }

    sub_252F537FC();
    v25 = sub_252F5345C();
    sub_252F531DC();
    v26 = &v14[*(v11 + 36)];
    *v26 = v25;
    *(v26 + 1) = v27;
    *(v26 + 2) = v28;
    *(v26 + 3) = v29;
    *(v26 + 4) = v30;
    v26[40] = 0;
    v31 = *v23;
    v33 = v41;
    v32 = v42;
    (*(v41 + 104))(v8, v31, v42);
    sub_252F25640();
    sub_252F534FC();
    (*(v33 + 8))(v8, v32);
    sub_252F25CDC(v14, &qword_27F576010, &qword_252F546F8);
    v34 = static ColorUtils.fromString(_:)(v37, v22);

    *&v18[*(v15 + 36)] = v34;
    sub_252F25C84();
    swift_storeEnumTagMultiPayload();
    sub_252F2554C();
    sub_252F533EC();
    sub_252F25CDC(v18, &qword_27F576008, &qword_252F546F0);
    a2 = v38;
    sub_252F18ED4();
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v24, 1, v45);
}

uint64_t sub_252F24B90()
{
  OUTLINED_FUNCTION_2_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_3_1();
  v6(v5);
  return v0;
}

uint64_t sub_252F24BE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F24C4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AutomationView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_252F21258(v4, a1);
}

unint64_t sub_252F24CBC()
{
  result = qword_27F575F60;
  if (!qword_27F575F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575F58, &qword_252F54528);
    sub_252F24D74();
    sub_252F25B24(&qword_27F575F98, &qword_27F575FA0, &qword_252F54548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575F60);
  }

  return result;
}

unint64_t sub_252F24D74()
{
  result = qword_27F575F68;
  if (!qword_27F575F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575F70, &qword_252F54530);
    sub_252F25B24(&qword_27F575F78, &qword_27F575F80, &qword_252F54538);
    sub_252F25B24(&qword_27F575F88, &qword_27F575F90, &qword_252F54540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575F68);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for AutomationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(*v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v7 = type metadata accessor for AutomationSnippetModel();
  v8 = v7[5];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
  OUTLINED_FUNCTION_0_1(v9);
  (*(v10 + 8))(v0 + v3 + v8);
  v11 = v7[6];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
  OUTLINED_FUNCTION_0_1(v12);
  (*(v13 + 8))(v0 + v3 + v11);
  v6(v0 + v3 + v7[7], v4);
  v6(v0 + v3 + v7[8], v4);
  v14 = v7[9];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_0_1(v15);
  (*(v16 + 8))(v0 + v3 + v14);

  v17 = v1[9];
  v18 = sub_252F5314C();
  OUTLINED_FUNCTION_0_1(v18);
  (*(v19 + 8))(v0 + v3 + v17);

  return MEMORY[0x2821FE8E8](v0, v3 + v21, v2 | 7);
}

uint64_t sub_252F250B4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AutomationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_252F25128()
{
  result = qword_27F575FA8;
  if (!qword_27F575FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575F50, &unk_252F54518);
    sub_252F25B24(&qword_27F575FB0, &qword_27F575FB8, &qword_252F54550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575FA8);
  }

  return result;
}

void sub_252F25224()
{
  type metadata accessor for AutomationSnippetModel();
  if (v0 <= 0x3F)
  {
    sub_252F252C8();
    if (v1 <= 0x3F)
    {
      sub_252F5314C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252F252C8()
{
  if (!qword_27F575FD0)
  {
    sub_252F5394C();
    sub_252F256FC(&qword_27F575E48, MEMORY[0x277D63F60]);
    v0 = sub_252F5327C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F575FD0);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_252F25378(uint64_t *a1, int a2)
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

uint64_t sub_252F253B8(uint64_t result, int a2, int a3)
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

unint64_t sub_252F25444()
{
  result = qword_27F575FE8;
  if (!qword_27F575FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575FD8, &qword_252F546E0);
    sub_252F254C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575FE8);
  }

  return result;
}

unint64_t sub_252F254C8()
{
  result = qword_27F575FF0;
  if (!qword_27F575FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575FF8, &qword_252F546E8);
    sub_252F2554C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575FF0);
  }

  return result;
}

unint64_t sub_252F2554C()
{
  result = qword_27F576000;
  if (!qword_27F576000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576008, &qword_252F546F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576010, &qword_252F546F8);
    sub_252F25640();
    swift_getOpaqueTypeConformance2();
    sub_252F25B24(&qword_27F576028, &qword_27F576030, &qword_252F54700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576000);
  }

  return result;
}

unint64_t sub_252F25640()
{
  result = qword_27F576018;
  if (!qword_27F576018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576010, &qword_252F546F8);
    sub_252F256FC(&qword_27F576020, MEMORY[0x277D63B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576018);
  }

  return result;
}

uint64_t sub_252F256FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252F2578C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_252F257E0()
{
  result = qword_27F576088;
  if (!qword_27F576088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576058, &qword_252F54720);
    sub_252F537EC();
    sub_252F256FC(&qword_27F576020, MEMORY[0x277D63B20]);
    swift_getOpaqueTypeConformance2();
    sub_252F25B24(&qword_27F576028, &qword_27F576030, &qword_252F54700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576088);
  }

  return result;
}

unint64_t sub_252F258F8()
{
  result = qword_27F576100;
  if (!qword_27F576100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5760E8, &qword_252F547A8);
    sub_252F259B0();
    sub_252F25B24(&qword_27F576028, &qword_27F576030, &qword_252F54700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576100);
  }

  return result;
}

unint64_t sub_252F259B0()
{
  result = qword_27F576108;
  if (!qword_27F576108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5760F8, &qword_252F547E8);
    sub_252F25A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576108);
  }

  return result;
}

unint64_t sub_252F25A3C()
{
  result = qword_27F576110;
  if (!qword_27F576110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5760F0, &qword_252F547E0);
    sub_252F256FC(&qword_27F576020, MEMORY[0x277D63B20]);
    sub_252F25B24(&qword_27F576118, &qword_27F576120, &qword_252F547F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576110);
  }

  return result;
}

uint64_t sub_252F25B24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_252F25B6C()
{
  result = qword_27F576128;
  if (!qword_27F576128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576128);
  }

  return result;
}

unint64_t sub_252F25BC0()
{
  result = qword_27F576130;
  if (!qword_27F576130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576130);
  }

  return result;
}

id sub_252F25C14(uint64_t a1, void *a2)
{

  return a2;
}

void sub_252F25C4C(uint64_t a1, void *a2)
{
}

uint64_t sub_252F25C84()
{
  OUTLINED_FUNCTION_2_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_3_1();
  v7(v6);
  return v0;
}

uint64_t sub_252F25CDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_252F25D30()
{
  result = qword_27F576198;
  if (!qword_27F576198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5761A0, &qword_252F54858);
    sub_252F25444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576198);
  }

  return result;
}

uint64_t TemperatureSnippetModel.primaryText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
}

uint64_t sub_252F25E30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return TemperatureSnippetModel.primaryText.setter(v1);
}

uint64_t TemperatureSnippetModel.primaryText.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_10_1(v1, v2, v3, v4, v5, v6, v7, v8, a1);
  return sub_252F530CC();
}

uint64_t (*TemperatureSnippetModel.primaryText.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v2[4] = sub_252F530AC();
  return sub_252F1EBA8;
}

uint64_t TemperatureSnippetModel.secondaryText.getter()
{
  v0 = *(type metadata accessor for TemperatureSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  return v2;
}

uint64_t type metadata accessor for TemperatureSnippetModel()
{
  result = qword_27F576218;
  if (!qword_27F576218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TemperatureSnippetModel.secondaryText.setter(uint64_t a1)
{
  v1 = *(type metadata accessor for TemperatureSnippetModel() + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_10_1(v2, v3, v4, v5, v6, v7, v8, v9, a1);
  return sub_252F530CC();
}

uint64_t (*TemperatureSnippetModel.secondaryText.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_3_2(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F530AC();
  return sub_252F20BA0;
}

uint64_t TemperatureSnippetModel.temperature.getter()
{
  v0 = *(type metadata accessor for TemperatureSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  return v2;
}

uint64_t sub_252F260D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t TemperatureSnippetModel.temperature.setter(uint64_t a1)
{
  v1 = *(type metadata accessor for TemperatureSnippetModel() + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_10_1(v2, v3, v4, v5, v6, v7, v8, v9, a1);
  return sub_252F530CC();
}

uint64_t (*TemperatureSnippetModel.temperature.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_3_2(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F530AC();
  return sub_252F20BA0;
}

uint64_t TemperatureSnippetModel.isHeating.getter()
{
  v0 = *(type metadata accessor for TemperatureSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530BC();
  return v2;
}

uint64_t TemperatureSnippetModel.isHeating.setter()
{
  v0 = *(type metadata accessor for TemperatureSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  return sub_252F530CC();
}

uint64_t (*TemperatureSnippetModel.isHeating.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_3_2(v2) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F530AC();
  return sub_252F20BA0;
}

uint64_t TemperatureSnippetModel.punchOut.getter()
{
  v0 = *(type metadata accessor for TemperatureSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  return sub_252F530BC();
}

uint64_t sub_252F26354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_252F26494(a1, &v7 - v4);
  return TemperatureSnippetModel.punchOut.setter(v5);
}

uint64_t TemperatureSnippetModel.punchOut.setter(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880) - 8) + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v3);
  sub_252F26494(a1, &v7 - v4);
  v5 = *(type metadata accessor for TemperatureSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  OUTLINED_FUNCTION_1_0();
  sub_252F530CC();
  return sub_252F26504(a1);
}

uint64_t sub_252F26494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F26504(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*TemperatureSnippetModel.punchOut.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_3_2(v2) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F530AC();
  return sub_252F20BA0;
}

uint64_t sub_252F26608@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252F18F4C();
  *a2 = result;
  return result;
}

uint64_t sub_252F26638@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F18F98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F2666C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F18F4C();
  *a1 = result;
  return result;
}

uint64_t sub_252F26694@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F265DC();
  *a1 = result;
  return result;
}

uint64_t sub_252F266BC(uint64_t a1)
{
  v2 = sub_252F26FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F266F8(uint64_t a1)
{
  v2 = sub_252F26FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall TemperatureSnippetModel.responseViewId()()
{
  v0 = 0x8000000252F57F60;
  v1 = 0xD000000000000019;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t TemperatureSnippetModel.init(primaryText:temperature:secondaryText:isHeating:punchOut:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v37 = a8;
  v36 = a7;
  v34 = a5;
  v35 = a6;
  v30 = a3;
  v31 = a4;
  v32 = a1;
  v33 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v20 = type metadata accessor for TemperatureSnippetModel();
  v21 = v20[5];
  v38 = 0;
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  sub_252F5309C();
  v22 = v20[6];
  v38 = 0;
  v39 = 0;
  sub_252F5309C();
  v23 = v20[7];
  LOBYTE(v38) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  sub_252F5309C();
  v24 = v20[8];
  v25 = sub_252F52FBC();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v25);
  sub_252F26494(v19, v16);
  sub_252F5309C();
  sub_252F26504(v19);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1(v26);
  (*(v27 + 8))(a9 + v22, v26);
  v38 = v30;
  v39 = v31;
  sub_252F5309C();
  v38 = v32;
  v39 = v33;
  sub_252F5309C();
  v38 = v34;
  v39 = v35;
  sub_252F530CC();
  LOBYTE(v38) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530CC();
  v28 = v37;
  sub_252F26494(v37, v19);
  sub_252F26494(v19, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  sub_252F530CC();
  sub_252F26504(v28);
  return sub_252F26504(v19);
}

uint64_t TemperatureSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C8, &qword_252F54898);
  v4 = OUTLINED_FUNCTION_16(v3);
  v59 = v5;
  v60 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v58 = v15 - v16;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v54 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - v21;
  v23 = type metadata accessor for TemperatureSnippetModel();
  v24 = (v23 - 8);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v24[7];
  v64 = 0;
  v65 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  v62 = v28;
  sub_252F5309C();
  v29 = v24[8];
  v64 = 0;
  v65 = 0;
  v63 = v29;
  sub_252F5309C();
  v30 = v24[9];
  LOBYTE(v64) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  v66 = v30;
  sub_252F5309C();
  v31 = v24[10];
  v32 = sub_252F52FBC();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v32);
  sub_252F26494(v22, v20);
  sub_252F5309C();
  sub_252F26504(v22);
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F26FEC();
  v34 = v61;
  sub_252F53CFC();
  if (v34)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_1(v38);
    v40 = *(v39 + 8);
    v40(&v27[v62], v38);
    v40(&v27[v63], v38);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    OUTLINED_FUNCTION_1(v41);
    (*(v42 + 8))(&v27[v66]);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
    OUTLINED_FUNCTION_1(v43);
    return (*(v44 + 8))(&v27[v31]);
  }

  else
  {
    v55 = v22;
    v56 = v32;
    v61 = v31;
    v36 = v58;
    v35 = v59;
    LOBYTE(v64) = 1;
    v37 = v60;
    v64 = sub_252F53C0C();
    v65 = v45;
    sub_252F5309C();
    LOBYTE(v64) = 2;
    v46 = sub_252F53C0C();
    v54 = a1;
    v64 = v46;
    v65 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    sub_252F530CC();
    LOBYTE(v64) = 0;
    OUTLINED_FUNCTION_9_1();
    v48 = v35;
    v49 = v36;
    v64 = sub_252F53C0C();
    v65 = v50;
    sub_252F530CC();
    LOBYTE(v64) = 3;
    OUTLINED_FUNCTION_9_1();
    v51 = sub_252F53C1C() & 1;
    v52 = v55;
    LOBYTE(v64) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    sub_252F530CC();
    LOBYTE(v64) = 4;
    sub_252F27E20(&qword_27F5761D8, MEMORY[0x277CC9260]);
    sub_252F53C2C();
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v56);
    sub_252F26494(v49, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
    sub_252F530CC();
    sub_252F26504(v49);
    (*(v48 + 8))(v10, v37);
    sub_252F27040(0, v57);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return sub_252F270A4(0);
  }
}

unint64_t sub_252F26FEC()
{
  result = qword_27F5761D0;
  if (!qword_27F5761D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5761D0);
  }

  return result;
}

uint64_t sub_252F27040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemperatureSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F270A4(uint64_t a1)
{
  v2 = type metadata accessor for TemperatureSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TemperatureSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761E0, &qword_252F548A0);
  OUTLINED_FUNCTION_16(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F26FEC();
  sub_252F53D0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  LOBYTE(v33) = 1;
  v19 = v32;
  sub_252F53C5C();
  if (v19)
  {
    (*(v12 + 8))(v17, v10);
  }

  else
  {
    v29 = v4;
    v30 = v12;
    v31 = v9;

    v32 = type metadata accessor for TemperatureSnippetModel();
    v21 = v32[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    v28 = v2;
    sub_252F530BC();
    v34 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
    sub_252F2750C(&qword_27F5761E8, &qword_27F5761B8, &qword_252F55E20);
    OUTLINED_FUNCTION_11_1();

    v22 = v28 + v32[6];
    sub_252F530BC();
    v34 = 0;
    OUTLINED_FUNCTION_11_1();
    v23 = v31;

    v24 = v32[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    sub_252F530BC();
    v34 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
    sub_252F2750C(&qword_27F5761F0, &qword_27F5761C0, &qword_252F54890);
    sub_252F53C7C();
    v25 = v32[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
    sub_252F530BC();
    LOBYTE(v33) = 4;
    sub_252F27574();
    sub_252F53C7C();
    v26 = v30;
    sub_252F26504(v23);
    return (*(v26 + 8))(v17, v10);
  }
}

uint64_t sub_252F2750C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_252F27574()
{
  result = qword_27F5761F8;
  if (!qword_27F5761F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576050, &unk_252F54880);
    sub_252F27E20(&qword_27F576200, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5761F8);
  }

  return result;
}

unint64_t TemperatureSnippetModel.description.getter()
{
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880) - 8) + 64);
  OUTLINED_FUNCTION_7_1();
  (MEMORY[0x28223BE20])();
  v4 = &v34 - v3;
  v5 = sub_252F52FBC();
  v6 = OUTLINED_FUNCTION_16(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v35 = &v34 - v15;
  v39 = 0xD000000000000018;
  v40 = 0x8000000252F57F80;
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_252F53B8C();

  strcpy(v38, "primaryText: ");
  HIWORD(v38[1]) = -4864;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890](v36, v37);

  MEMORY[0x2530AF890](8236, 0xE200000000000000);
  MEMORY[0x2530AF890](v38[0], v38[1]);

  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  MEMORY[0x2530AF890](0x6E69746165487369, 0xEB00000000203A67);
  v16 = type metadata accessor for TemperatureSnippetModel();
  v17 = v16[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  sub_252F53BCC();
  MEMORY[0x2530AF890](8236, 0xE200000000000000);
  MEMORY[0x2530AF890](v38[0], v38[1]);

  v18 = v16[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  v19 = v38[1];
  if (v38[1])
  {
    v20 = v8;
    v21 = v38[0];
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    sub_252F53B8C();

    v38[0] = 0xD000000000000011;
    v38[1] = 0x8000000252F57FA0;
    v22 = v21;
    v8 = v20;
    MEMORY[0x2530AF890](v22, v19);

    MEMORY[0x2530AF890](v38[0], v38[1]);
  }

  v23 = v1 + v16[6];
  sub_252F530BC();
  v24 = v38[1];
  if (v38[1])
  {
    v25 = v38[0];
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    sub_252F53B8C();

    v38[0] = 0x7265706D6574202CLL;
    v38[1] = 0xEF203A6572757461;
    MEMORY[0x2530AF890](v25, v24);

    MEMORY[0x2530AF890](v38[0], v38[1]);
  }

  v26 = v16[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  sub_252F530BC();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_252F26504(v4);
  }

  else
  {
    v27 = v35;
    (*(v8 + 32))(v35, v4, v5);
    sub_252F52F9C();
    v28 = sub_252F52F7C();
    v30 = v29;
    v31 = *(v8 + 8);
    v31(v13, v5);
    v38[0] = v28;
    v38[1] = v30;

    LOBYTE(v28) = sub_252F53A2C();

    if (v28)
    {
      sub_252F27B3C(v32);
    }

    v36 = 0x74756F68636E7570;
    v37 = 0xEA0000000000203ALL;
    MEMORY[0x2530AF890](v38[0], v38[1]);

    MEMORY[0x2530AF890](8236, 0xE200000000000000);
    MEMORY[0x2530AF890](v36, v37);

    v31(v27, v5);
  }

  MEMORY[0x2530AF890](41, 0xE100000000000000);
  return v39;
}

uint64_t sub_252F27B3C(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_252F539CC();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t TemperatureSnippetModel.stringId.getter()
{
  sub_252F53B8C();

  strcpy(v18, "#primaryText: ");
  HIBYTE(v18[1]) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890](v17[0], v17[1]);

  sub_252F53B8C();

  v17[0] = 0xD000000000000010;
  v17[1] = 0x8000000252F57FC0;
  v0 = type metadata accessor for TemperatureSnippetModel();
  v1 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  if (v16)
  {
    v2 = v15;
  }

  else
  {
    v2 = 7104878;
  }

  if (v16)
  {
    v3 = v16;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  MEMORY[0x2530AF890](v2, v3);

  MEMORY[0x2530AF890](v17[0], v17[1]);

  strcpy(v17, "#isHeating: ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  v4 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530BC();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  OUTLINED_FUNCTION_10_1(v5, v6, v7, v8, v9, v10, v11, v12, v15);
  v13 = sub_252F5398C();
  MEMORY[0x2530AF890](v13);

  MEMORY[0x2530AF890](v17[0], v17[1]);

  return v18[0];
}

uint64_t sub_252F27E20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_252F27EC0()
{
  sub_252F27FBC();
  if (v0 <= 0x3F)
  {
    sub_252F2800C(319, &qword_27F576228, &qword_27F5761B8, &qword_252F55E20);
    if (v1 <= 0x3F)
    {
      sub_252F2800C(319, &qword_27F576230, &qword_27F5761C0, &qword_252F54890);
      if (v2 <= 0x3F)
      {
        sub_252F2800C(319, &qword_27F576238, &qword_27F576050, &unk_252F54880);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252F27FBC()
{
  if (!qword_27F575F18)
  {
    v0 = sub_252F530EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F575F18);
    }
  }
}

void sub_252F2800C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_252F530EC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TemperatureSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TemperatureSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_252F281C8()
{
  result = qword_27F576240;
  if (!qword_27F576240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576240);
  }

  return result;
}

unint64_t sub_252F28220()
{
  result = qword_27F576248;
  if (!qword_27F576248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576248);
  }

  return result;
}

unint64_t sub_252F28278()
{
  result = qword_27F576250;
  if (!qword_27F576250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576250);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for TemperatureSnippetModel();
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return sub_252F53C7C();
}

uint64_t ConfirmationSnippetModel.primaryText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfirmationSnippetModel.primaryText.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.secondaryText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConfirmationSnippetModel.secondaryText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.confirmationText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ConfirmationSnippetModel.confirmationText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.confirmLabel.getter()
{
  v0 = *(type metadata accessor for ConfirmationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v2;
}

uint64_t type metadata accessor for ConfirmationSnippetModel()
{
  result = qword_27F5762B0;
  if (!qword_27F5762B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F28580(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return ConfirmationSnippetModel.confirmLabel.setter();
}

uint64_t ConfirmationSnippetModel.confirmLabel.setter()
{
  v0 = *(type metadata accessor for ConfirmationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  return sub_252F530CC();
}

uint64_t (*ConfirmationSnippetModel.confirmLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_5_1(v2) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F530AC();
  return sub_252F1EBA8;
}

uint64_t ConfirmationSnippetModel.denyLabel.getter()
{
  v0 = *(type metadata accessor for ConfirmationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v2;
}

uint64_t sub_252F286DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return ConfirmationSnippetModel.denyLabel.setter();
}

uint64_t ConfirmationSnippetModel.denyLabel.setter()
{
  v0 = *(type metadata accessor for ConfirmationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  return sub_252F530CC();
}

uint64_t (*ConfirmationSnippetModel.denyLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_5_1(v2) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F530AC();
  return sub_252F20BA0;
}

uint64_t ConfirmationSnippetModel.confirmDirectInvocation.getter()
{
  v0 = *(type metadata accessor for ConfirmationSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5302C();
}

uint64_t ConfirmationSnippetModel.confirmDirectInvocation.setter()
{
  v0 = *(OUTLINED_FUNCTION_11_2() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5303C();
}

uint64_t (*ConfirmationSnippetModel.confirmDirectInvocation.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_5_1(v2) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F5301C();
  return sub_252F20BA0;
}

uint64_t ConfirmationSnippetModel.denyDirectInvocation.getter()
{
  v0 = *(type metadata accessor for ConfirmationSnippetModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5302C();
}

uint64_t ConfirmationSnippetModel.denyDirectInvocation.setter()
{
  v0 = *(OUTLINED_FUNCTION_11_2() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5303C();
}

uint64_t (*ConfirmationSnippetModel.denyDirectInvocation.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_5_1(v2) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F5301C();
  return sub_252F20BA0;
}

uint64_t ConfirmationSnippetModel.iconConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ConfirmationSnippetModel() + 44);

  return sub_252F28A88(v3, a1);
}

uint64_t sub_252F28A88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConfirmationSnippetModel.iconConfiguration.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_11_2() + 44);

  return sub_252F28B34(v0, v2);
}

uint64_t sub_252F28B34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ConfirmationSnippetModel.isDestructive.setter(char a1)
{
  result = type metadata accessor for ConfirmationSnippetModel();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t sub_252F28C78()
{
  v0 = sub_252F53BDC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_252F28CD4(char a1)
{
  result = 0x547972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x7261646E6F636573;
      break;
    case 2:
      result = 0x4C6D7269666E6F63;
      break;
    case 3:
      result = 0x6562614C796E6564;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x7572747365447369;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252F28E3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252F28C78();
  *a2 = result;
  return result;
}

unint64_t sub_252F28E6C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_252F28CD4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F28EB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F28CC4();
  *a1 = result;
  return result;
}

uint64_t sub_252F28EDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F28CC8();
  *a1 = result;
  return result;
}

uint64_t sub_252F28F04(uint64_t a1)
{
  v2 = sub_252F298C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F28F40(uint64_t a1)
{
  v2 = sub_252F298C8();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall ConfirmationSnippetModel.responseViewId()()
{
  v0 = 0x8000000252F57FE0;
  v1 = 0xD00000000000001BLL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t ConfirmationSnippetModel.init(primaryText:secondaryText:confirmationText:confirmLabel:denyLabel:confirmDirectInvocation:denyDirectInvocation:iconConfiguration:isDestructive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13)
{
  v18 = type metadata accessor for ConfirmationSnippetModel();
  v19 = v18[11];
  v20 = type metadata accessor for IconConfiguration();
  __swift_storeEnumTagSinglePayload(a7 + v19, 1, 1, v20);
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v21 = v18[7];
  sub_252F5309C();
  v22 = v18[8];
  sub_252F5309C();
  v23 = v18[9];
  sub_252F290F0();
  v24 = a10;
  sub_252F5300C();
  v25 = a7 + v18[10];
  sub_252F5300C();

  *(a7 + v18[12]) = a13;
  result = sub_252F28B34(a12, a7 + v19);
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

unint64_t sub_252F290F0()
{
  result = qword_27F576268;
  if (!qword_27F576268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F576268);
  }

  return result;
}

uint64_t ConfirmationSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0) - 8) + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v4);
  v73 = &v62 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  v6 = OUTLINED_FUNCTION_16(v78);
  v76 = v7;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v75 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v62 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576270, &qword_252F54AA8);
  OUTLINED_FUNCTION_16(v14);
  v77 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - v19;
  v21 = type metadata accessor for ConfirmationSnippetModel();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v25 + 44);
  v29 = type metadata accessor for IconConfiguration();
  v80 = v28;
  v83 = v27;
  __swift_storeEnumTagSinglePayload(v27 + v28, 1, 1, v29);
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F298C8();
  v31 = v79;
  sub_252F53CFC();
  if (v31)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_252F2991C(v83 + v80);
  }

  else
  {
    v71 = v29;
    v72 = v13;
    v32 = v78;
    v79 = a1;
    LOBYTE(v81) = 0;
    v33 = v20;
    v34 = sub_252F53C0C();
    v35 = v83;
    *v83 = v34;
    v35[1] = v36;
    v70 = v36;
    OUTLINED_FUNCTION_1_1(1);
    v37 = sub_252F53C0C();
    v39 = v38;
    v35[2] = v37;
    v35[3] = v38;
    OUTLINED_FUNCTION_1_1(8);
    v35[4] = sub_252F53C0C();
    v35[5] = v40;
    v69 = v40;
    OUTLINED_FUNCTION_1_1(2);
    v41 = sub_252F53C0C();
    v42 = v21[7];
    v81 = v41;
    v82 = v43;
    sub_252F5309C();
    OUTLINED_FUNCTION_1_1(3);
    v68 = 0;
    v44 = sub_252F53C0C();
    v66 = v39;
    v45 = v21[8];
    v81 = v44;
    v82 = v46;
    sub_252F5309C();
    LOBYTE(v81) = 4;
    v47 = sub_252F2A098(&qword_27F576280);
    v48 = v78;
    v65 = v47;
    v67 = v33;
    sub_252F53C2C();
    v49 = v72;
    v64 = sub_252F5302C();
    v63 = *(v76 + 8);
    v63(v49, v48);
    v72 = v21;
    v50 = v21[9];
    v64 = sub_252F290F0();
    sub_252F5300C();
    LOBYTE(v81) = 5;
    v51 = v75;
    sub_252F53C2C();
    sub_252F5302C();
    v63(v51, v32);
    v52 = v72;
    v53 = v35 + v72[10];
    sub_252F5300C();
    LOBYTE(v81) = 7;
    sub_252F2A76C(&qword_27F575EC8, type metadata accessor for IconConfiguration);
    v54 = v73;
    sub_252F53C2C();
    v55 = v74;
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v71);
    v56 = v54;
    v57 = v83;
    sub_252F28B34(v56, v83 + v80);
    OUTLINED_FUNCTION_1_1(6);
    v58 = sub_252F53C1C();
    v59 = OUTLINED_FUNCTION_8_1();
    v60(v59);
    *(v57 + v52[12]) = v58 & 1;
    sub_252F29984(v57, v55);
    __swift_destroy_boxed_opaque_existential_1(v79);
    return sub_252F299E8(v57);
  }
}

unint64_t sub_252F298C8()
{
  result = qword_27F576278;
  if (!qword_27F576278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576278);
  }

  return result;
}

uint64_t sub_252F2991C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252F29984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F299E8(uint64_t a1)
{
  v2 = type metadata accessor for ConfirmationSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConfirmationSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  v47 = OUTLINED_FUNCTION_16(v4);
  v48 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v47);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576288, &unk_252F54AB0);
  OUTLINED_FUNCTION_16(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F298C8();
  sub_252F53D0C();
  v22 = *v2;
  v23 = v2[1];
  LOBYTE(v50) = 0;
  v24 = v49;
  sub_252F53C5C();
  if (v24)
  {
    return (*(v15 + 8))(v20, v13);
  }

  v45 = v10;
  v46 = v12;
  v49 = v15;
  v26 = v2[3];
  v50 = v2[2];
  v51 = v26;
  v52 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  sub_252F29F68();
  sub_252F53C7C();

  v27 = v2[5];
  v50 = v2[4];
  v51 = v27;
  v52 = 8;

  sub_252F53C7C();

  v28 = type metadata accessor for ConfirmationSnippetModel();
  v29 = *(v28 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  LOBYTE(v50) = 2;
  sub_252F53C5C();

  v30 = v28;
  v31 = *(v28 + 44);
  LOBYTE(v50) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  sub_252F29FE4();
  sub_252F53C7C();
  v32 = v46;
  v33 = v2 + v30[8];
  sub_252F530BC();
  LOBYTE(v50) = 3;
  sub_252F53C5C();

  v34 = v2 + v30[9];
  v35 = v47;
  sub_252F5302C();
  v46 = sub_252F290F0();
  sub_252F5300C();
  LOBYTE(v50) = 4;
  sub_252F2A098(&qword_27F576298);
  OUTLINED_FUNCTION_13_1();
  v44 = v36;
  sub_252F53C7C();
  v37 = v48 + 8;
  v38 = *(v48 + 8);
  v38(v32, v35);
  v39 = v30[10];
  v48 = v37;
  sub_252F5302C();
  v40 = v45;
  sub_252F5300C();
  LOBYTE(v50) = 5;
  OUTLINED_FUNCTION_13_1();
  sub_252F53C7C();
  v38(v40, v35);
  v41 = *(v2 + v30[12]);
  LOBYTE(v50) = 6;
  sub_252F53C6C();
  v42 = OUTLINED_FUNCTION_2_2();
  return v43(v42);
}

unint64_t sub_252F29F68()
{
  result = qword_27F5761E8;
  if (!qword_27F5761E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5761B8, &qword_252F55E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5761E8);
  }

  return result;
}

unint64_t sub_252F29FE4()
{
  result = qword_27F576290;
  if (!qword_27F576290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576260, &qword_252F54AA0);
    sub_252F2A76C(&qword_27F575EE0, type metadata accessor for IconConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576290);
  }

  return result;
}

uint64_t sub_252F2A098(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576258, &unk_252F55030);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t ConfirmationSnippetModel.description.getter()
{
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0) - 8) + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20]();
  v4 = &v21[-2] - v3;
  OUTLINED_FUNCTION_6_0();
  v22 = 0xD000000000000019;
  v23 = v5;
  OUTLINED_FUNCTION_4_1();
  sub_252F53B8C();

  strcpy(v21, "primaryText: ");
  HIWORD(v21[1]) = -4864;
  MEMORY[0x2530AF890](*v0, v0[1]);
  MEMORY[0x2530AF890](8236, 0xE200000000000000);
  MEMORY[0x2530AF890](v21[0], v21[1]);

  OUTLINED_FUNCTION_4_1();
  sub_252F53B8C();

  strcpy(v21, "confirmLabel: ");
  HIBYTE(v21[1]) = -18;
  v6 = type metadata accessor for ConfirmationSnippetModel();
  v7 = v6[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890](v20, *(&v20 + 1));

  MEMORY[0x2530AF890](8236, 0xE200000000000000);
  MEMORY[0x2530AF890](v21[0], v21[1]);

  strcpy(v21, "denyLabel: ");
  HIDWORD(v21[1]) = -352321536;
  v8 = v1 + v6[8];
  sub_252F530BC();
  MEMORY[0x2530AF890](v20, *(&v20 + 1));

  MEMORY[0x2530AF890](8236, 0xE200000000000000);
  OUTLINED_FUNCTION_6_1();

  OUTLINED_FUNCTION_4_1();
  sub_252F53B8C();

  v9 = *(v1 + v6[12]);
  v21[0] = 0x7572747365447369;
  v21[1] = 0xEF203A6576697463;
  if (v9)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x2530AF890](v10, v11);

  OUTLINED_FUNCTION_6_1();

  OUTLINED_FUNCTION_4_1();
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000012, 0x8000000252F58020);
  v20 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  sub_252F53BCC();
  OUTLINED_FUNCTION_6_1();

  v12 = v1[3];
  if (v12)
  {
    v13 = v1[2];
    OUTLINED_FUNCTION_4_1();
    sub_252F53B8C();

    OUTLINED_FUNCTION_6_0();
    v21[0] = 0xD000000000000011;
    v21[1] = v14;
    MEMORY[0x2530AF890](v13, v12);
    OUTLINED_FUNCTION_6_1();
  }

  OUTLINED_FUNCTION_4_1();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v21[0] = 0xD000000000000015;
  v21[1] = v15;
  sub_252F28A88(v1 + v6[11], v4);
  v16 = type metadata accessor for IconConfiguration();
  OUTLINED_FUNCTION_16_0(v16);
  if (v1 == 1)
  {
    v17 = 0x65736C6166;
  }

  else
  {
    v17 = 1702195828;
  }

  if (v1 == 1)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v17, v18);

  MEMORY[0x2530AF890](v21[0], v21[1]);

  MEMORY[0x2530AF890](41, 0xE100000000000000);
  return v22;
}

uint64_t ConfirmationSnippetModel.stringId.getter()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0) - 8) + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - v3;
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_252F53B8C();

  strcpy(v16, "#primaryText: ");
  HIBYTE(v16[1]) = -18;
  MEMORY[0x2530AF890](*v0, v0[1]);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v14 = 0xD000000000000010;
  v15 = v5;
  if (v0[3])
  {
    v6 = v0[2];
    v7 = v0[3];
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x2530AF890](v6, v7);

  MEMORY[0x2530AF890](v14, v15);

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v14 = 0xD000000000000017;
  v15 = v8;
  v9 = type metadata accessor for ConfirmationSnippetModel();
  sub_252F28A88(v0 + *(v9 + 44), v4);
  v10 = type metadata accessor for IconConfiguration();
  OUTLINED_FUNCTION_16_0(v10);
  if (v0 == 1)
  {
    v11 = 0x65736C6166;
  }

  else
  {
    v11 = 1702195828;
  }

  if (v0 == 1)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v11, v12);

  MEMORY[0x2530AF890](v14, v15);

  return v16[0];
}

uint64_t sub_252F2A76C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_252F2A80C()
{
  sub_252F2A970(319, &qword_27F5762C0, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252F2A970(319, &qword_27F575F18, MEMORY[0x277D637C8]);
    if (v1 <= 0x3F)
    {
      sub_252F2A9C4(319, &qword_27F5762C8, sub_252F290F0, MEMORY[0x277D63220]);
      if (v2 <= 0x3F)
      {
        sub_252F2A9C4(319, &qword_27F5762D0, type metadata accessor for IconConfiguration, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252F2A970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_252F2A9C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for ConfirmationSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConfirmationSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_252F2AB90()
{
  result = qword_27F5762D8;
  if (!qword_27F5762D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5762D8);
  }

  return result;
}

unint64_t sub_252F2ABE8()
{
  result = qword_27F5762E0;
  if (!qword_27F5762E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5762E0);
  }

  return result;
}

unint64_t sub_252F2AC40()
{
  result = qword_27F5762E8;
  if (!qword_27F5762E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5762E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_1(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for ConfirmationSnippetModel();
}

void OUTLINED_FUNCTION_6_1()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  JUMPOUT(0x2530AF890);
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return type metadata accessor for ConfirmationSnippetModel();
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);

  return sub_252F2991C(v1);
}

uint64_t sub_252F2AD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IconConfiguration();
  v5 = OUTLINED_FUNCTION_10(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F5394C();
  OUTLINED_FUNCTION_3_3();
  sub_252F2DED4(v10, v11);
  *(a2 + 24) = sub_252F5326C();
  *(a2 + 32) = v12;
  v13 = type metadata accessor for CompletionSnippetView();
  v14 = v13[6];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v13[7];
  LOBYTE(v28) = 0;
  sub_252F5374C();
  v16 = v30;
  *v15 = v29;
  *(v15 + 8) = v16;
  *a2 = sub_252F2DDFC;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_252F531AC();

  v17 = (sub_252F43A78() & 1) == 0 || (sub_252F43A64() & 1) == 0;
  LOBYTE(v29) = v17;
  v18 = sub_252F43A8C();
  v19 = sub_252F43B24();
  v20 = type metadata accessor for CompletionStyleSettings();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_252F3DAF8(v9, &v29, v18 & 1, (v19 & 1) == 0);
  v24 = (a2 + v13[8]);
  v28 = v23;

  sub_252F5374C();

  v26 = v30;
  *v24 = v29;
  v24[1] = v26;
  return result;
}

uint64_t sub_252F2AFE8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = type metadata accessor for SnippetDetailsModel();
  OUTLINED_FUNCTION_4_2();
  v8 = sub_252F2DED4(v6, v7);

  return a1(v2, v3, v4, v5, v8);
}

uint64_t CompletionSnippetView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v97 = a1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5762F8, &unk_252F54CD0);
  OUTLINED_FUNCTION_16(v85);
  v84 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_3();
  v83 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576300, &unk_252F55210);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_3();
  v91 = v11;
  v12 = type metadata accessor for CompletionSnippetView();
  v13 = *(v12 - 8);
  v90 = v12 - 8;
  v89 = v13;
  v103 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v98 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576308, &qword_252F54CE0);
  OUTLINED_FUNCTION_16(v92);
  v93 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11_3();
  v100 = v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576310, &qword_252F54CE8);
  OUTLINED_FUNCTION_16(v101);
  v94 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11_3();
  v99 = v24;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576318, &qword_252F54CF0);
  OUTLINED_FUNCTION_16(v96);
  v95 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_11_3();
  v102 = v29;
  v104 = v1;
  v31 = *v1;
  v30 = v1[1];
  v32 = *(v1 + 16);
  type metadata accessor for SnippetDetailsModel();
  OUTLINED_FUNCTION_4_2();
  sub_252F2DED4(v33, v34);
  OUTLINED_FUNCTION_13_2();
  swift_getKeyPath();
  sub_252F5324C();

  v113 = v105;
  v114 = v106;
  v115 = v107;
  v116 = v108;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576320, &qword_252F54D20);
  MEMORY[0x2530AF650](&v111);
  v88 = v111;
  v87 = v112;

  OUTLINED_FUNCTION_13_2();
  swift_getKeyPath();
  sub_252F5324C();

  v113 = v105;
  v114 = v106;
  v115 = v107;
  v116 = v108;
  MEMORY[0x2530AF650](&v111, v35);
  v36 = v111;
  v37 = v112;

  v38 = v104;
  sub_252F2DE5C();
  v39 = *(v89 + 80);
  v40 = swift_allocObject();
  v41 = v87;
  v40[2] = v88;
  v40[3] = v41;
  v40[4] = v36;
  v40[5] = v37;
  sub_252F2DE04();
  sub_252F5390C();
  sub_252F2DED4(&qword_27F576330, MEMORY[0x277D63E70]);
  sub_252F5381C();
  v42 = (v38 + *(v90 + 40));
  v44 = *v42;
  v43 = v42[1];
  v105 = v44;
  v106 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576338, &qword_252F54D58);
  sub_252F5375C();
  v45 = v91;
  sub_252F3DCD8(v91);

  v46 = sub_252F5383C();
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v46);
  v86 = type metadata accessor for CompletionSnippetView;
  sub_252F2DE5C();
  swift_allocObject();
  sub_252F2DE04();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576340, &qword_252F54D60);
  v48 = sub_252F25B24(&qword_27F576348, &qword_27F576308, &qword_252F54CE0);
  v81 = sub_252F2D8D4();
  v49 = v100;
  v50 = v92;
  sub_252F5353C();

  sub_252F2E3C4(v45, &qword_27F576300, &unk_252F55210);
  OUTLINED_FUNCTION_5_2(&v117);
  v51(v49, v50);
  type metadata accessor for CompletionSnippetModel();
  sub_252F2DE5C();
  v100 = v39;
  swift_allocObject();
  v93 = (v39 + 16) & ~v39;
  sub_252F2DE04();
  v105 = v50;
  v106 = v47;
  v107 = v50;
  v108 = v48;
  v109 = v81;
  v110 = v48;
  OUTLINED_FUNCTION_14_1();
  sub_252F2DED4(&qword_27F576368, type metadata accessor for CompletionSnippetModel);
  sub_252F2DED4(&qword_27F576370, type metadata accessor for CompletionSnippetModel);
  sub_252F2DED4(&qword_27F576378, type metadata accessor for CompletionSnippetModel);
  v52 = v101;
  v53 = v99;
  sub_252F5354C();

  OUTLINED_FUNCTION_5_2(&v118);
  v54(v53, v52);
  v55 = v104[3];
  if (v55)
  {
    v56 = v55;
    sub_252F5391C();

    if (sub_252F53B2C())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_1();
      v57 = v96;
      v58 = v102;
      v113 = sub_252F534EC();
      LOBYTE(v114) = 0;

      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_9_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576380, &qword_252F54D70);
      sub_252F2DA24();
      OUTLINED_FUNCTION_7_2();

      OUTLINED_FUNCTION_5_2(&v119);
      v60 = v58;
      v61 = v57;
    }

    else
    {
      v62 = v56;
      sub_252F5391C();

      if (sub_252F53B3C() & 1) != 0 || (v63 = v62, sub_252F5391C(), v63, (sub_252F53AFC()) || (v64 = v63, sub_252F5391C(), v64, (sub_252F53B1C()))
      {
        sub_252F2DE5C();
        swift_allocObject();
        sub_252F2DE04();
        OUTLINED_FUNCTION_0_2();
        v65 = OUTLINED_FUNCTION_14_1();
        v66 = v83;
        v67 = v96;
        v68 = v102;
        sub_252F5351C();

        v105 = v67;
        v106 = v65;
        OUTLINED_FUNCTION_14_1();
        v69 = v85;
        v70 = sub_252F534EC();
        OUTLINED_FUNCTION_5_2(&v116);
        v71(v66, v69);
        v113 = v70;
        LOBYTE(v114) = 1;

        OUTLINED_FUNCTION_8_2();
        OUTLINED_FUNCTION_9_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576380, &qword_252F54D70);
        sub_252F2DA24();
        OUTLINED_FUNCTION_7_2();

        OUTLINED_FUNCTION_5_2(&v119);
        v60 = v68;
        v61 = v67;
      }

      else
      {
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_14_1();
        v76 = v96;
        v77 = v102;
        v113 = sub_252F534EC();
        LOWORD(v114) = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576380, &qword_252F54D70);
        sub_252F2DA24();
        sub_252F533EC();
        OUTLINED_FUNCTION_5_2(&v119);
        v60 = v77;
        v61 = v76;
      }
    }

    result = v59(v60, v61);
    v73 = v106;
    v74 = BYTE1(v106);
    v75 = v97;
    *v97 = v105;
    *(v75 + 8) = v73;
    *(v75 + 9) = v74;
  }

  else
  {
    v78 = v104[4];
    sub_252F5394C();
    OUTLINED_FUNCTION_3_3();
    sub_252F2DED4(v79, v80);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for CompletionSnippetView()
{
  result = qword_27F576398;
  if (!qword_27F576398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F2BC84(uint64_t *a1)
{
  OUTLINED_FUNCTION_15_0(a1);
  result = sub_252F439D0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_252F2BCC4(uint64_t *a1)
{
  OUTLINED_FUNCTION_15_0(a1);
  result = sub_252F439E4();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_252F2BD04(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_252F2BD4C()
{

  sub_252F2BE7C();
  return sub_252F538FC();
}

uint64_t sub_252F2BE08()
{
  v1 = type metadata accessor for CompletionSnippetView();
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];

  return sub_252F2BD4C();
}

uint64_t sub_252F2BE7C()
{
  v1 = v0;
  v2 = type metadata accessor for CompletionSnippetView();
  v3 = v2 - 8;
  v97 = *(v2 - 8);
  v4 = *(v97 + 64);
  MEMORY[0x28223BE20](v2);
  v98 = v5;
  v99 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763F0, &qword_252F54ED8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v73 - v8;
  v9 = sub_252F5308C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v80 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_252F537EC();
  v84 = *(v86 - 8);
  v12 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v82 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763F8, &qword_252F54EE0);
  v14 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v73 - v15;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576400, &qword_252F54EE8);
  v16 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v90 = &v73 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576408, &qword_252F54EF0);
  v77 = *(v78 - 8);
  v18 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v76 = &v73 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576410, &qword_252F54EF8);
  v88 = *(v20 - 8);
  v89 = v20;
  v21 = *(v88 + 64);
  MEMORY[0x28223BE20](v20);
  v79 = &v73 - v22;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576418, &qword_252F54F00);
  v23 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v73 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576420, &qword_252F54F08);
  v94 = *(v25 - 8);
  v95 = v25;
  v26 = *(v94 + 64);
  MEMORY[0x28223BE20](v25);
  v92 = &v73 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576428, &qword_252F54F10);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v73 - v30;
  v32 = (v1 + *(v3 + 40));
  v34 = v32[1];
  v101 = *v32;
  v33 = v101;
  v102 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576338, &qword_252F54D58);
  sub_252F5375C();
  v35 = sub_252F3E1C0();
  v37 = v36;

  v101 = v33;
  v102 = v34;
  sub_252F5375C();
  v100 = v1;
  v38 = *(v1 + 24);
  if (v38)
  {
    v39 = *(v28 + 48);
    v75 = v39;
    v40 = v38;
    v41 = sub_252F5391C();

    sub_252F3DEA4(v31, &v31[v39], v41);

    v101 = v33;
    v102 = v34;
    sub_252F5375C();
    sub_252F3E55C(&v101);

    v74 = v101;
    sub_252F2DEB4(v37);
    v42 = sub_252F40088(v37);
    v85 = v37;
    sub_252F2DEC4(v37);
    v101 = v42;
    LOWORD(v102) = 256;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576430, &qword_252F54F18);
    v44 = sub_252F25B24(&qword_27F576438, &qword_27F576430, &qword_252F54F18);
    v45 = v76;
    sub_252F5350C();

    v101 = v43;
    v102 = v44;
    swift_getOpaqueTypeConformance2();
    v46 = v79;
    v47 = v78;
    sub_252F534FC();
    (*(v77 + 8))(v45, v47);
    v101 = v33;
    v102 = v34;
    sub_252F5375C();
    sub_252F3E764();

    sub_252F5307C();

    v48 = v82;
    sub_252F537FC();
    sub_252F2DED4(&qword_27F576020, MEMORY[0x277D63B20]);
    v49 = v81;
    v50 = v86;
    sub_252F534FC();
    (*(v84 + 8))(v48, v50);
    sub_252F2DEB4(v35);
    v51 = sub_252F40088(v35);
    sub_252F2DEC4(v35);
    *&v49[*(v83 + 36)] = v51;
    v52 = v31;
    v53 = v96;
    switch(v74)
    {
      case 1:
        v54 = v46;
        sub_252F533AC();
        break;
      case 2:
        v54 = v46;
        sub_252F5339C();
        break;
      case 3:
        v54 = v46;
        sub_252F533CC();
        break;
      default:
        v54 = v46;
        sub_252F533BC();
        break;
    }

    v55 = sub_252F533DC();
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v55);
    KeyPath = swift_getKeyPath();
    v57 = &v90[*(v87 + 36)];
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576440, &qword_252F54F50);
    sub_252F2DFC4(v53, v57 + *(v58 + 28));
    *v57 = KeyPath;
    sub_252F2E034();
    v59 = sub_252F537DC();
    v61 = v60;
    v62 = v93;
    v63 = v91;
    v64 = &v91[*(v93 + 36)];
    sub_252F2E034();
    v65 = &v64[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576448, &qword_252F54F58) + 36)];
    *v65 = v59;
    v65[1] = v61;
    (*(v88 + 32))(v63, v54, v89);
    sub_252F2DE5C();
    v66 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    swift_allocObject();
    sub_252F2DE04();
    v67 = sub_252F2E258();
    v68 = v92;
    sub_252F5358C();

    sub_252F19B8C(v63);
    v101 = v62;
    v102 = v67;
    swift_getOpaqueTypeConformance2();
    v69 = v95;
    v70 = sub_252F534EC();
    sub_252F2DEC4(v35);
    sub_252F2DEC4(v85);
    (*(v94 + 8))(v68, v69);
    sub_252F2E3C4(v52, &qword_27F576428, &qword_252F54F10);
    return v70;
  }

  else
  {
    v72 = *(v100 + 32);
    sub_252F5394C();
    sub_252F2DED4(&qword_27F575E48, MEMORY[0x277D63F60]);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F2C92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = (a2 + *(type metadata accessor for CompletionSnippetView() + 32));
  v12 = *v7;
  v13 = v7[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576338, &qword_252F54D58);
  sub_252F5375C();
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576340, &qword_252F54D60) + 36));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576360, &qword_252F54D68);
  sub_252F3DB60(v8 + *(v9 + 28));

  *v8 = KeyPath;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576308, &qword_252F54CE0);
  return (*(*(v10 - 8) + 16))(a3, a1, v10);
}

uint64_t sub_252F2CA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576308, &qword_252F54CE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void sub_252F2CAC0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for IconConfiguration();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v45 - v12;
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v13 = sub_252F5316C();
  v14 = __swift_project_value_buffer(v13, qword_27F57B800);
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000041, 0x8000000252F58140);
  v15 = CompletionSnippetModel.description.getter();
  MEMORY[0x2530AF890](v15);

  v16._object = 0x8000000252F580A0;
  v16._countAndFlagsBits = 0xD000000000000075;
  v47 = v14;
  Logger.debug(output:test:caller:)(v49, 0, v16);

  v17 = *a2;
  v18 = a2[1];
  v19 = *(a2 + 16);
  type metadata accessor for SnippetDetailsModel();
  sub_252F2DED4(&qword_27F5762F0, type metadata accessor for SnippetDetailsModel);
  sub_252F5320C();
  v20 = type metadata accessor for CompletionSnippetModel();
  v21 = v20[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  sub_252F437B4();

  v22 = v20[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  sub_252F530BC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_252F2E3C4(v7, &qword_27F576260, &qword_252F54AA0);
  }

  else
  {
    v23 = v46;
    sub_252F2DE04();
    v24 = v20[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    sub_252F530BC();
    countAndFlagsBits = v49._countAndFlagsBits;
    if (LOBYTE(v49._countAndFlagsBits) == 2)
    {
      sub_252F2E41C(v23, type metadata accessor for IconConfiguration);
    }

    else
    {
      v26 = v45;
      sub_252F2DE5C();
      v27 = v20[7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
      sub_252F530BC();
      if (LOBYTE(v49._countAndFlagsBits))
      {
        v28 = (countAndFlagsBits & 1) == 0;
      }

      else
      {
        v28 = 2;
      }

      LOBYTE(v49._countAndFlagsBits) = v28;
      v29 = a1 + v20[8];
      sub_252F530BC();
      v30 = v48;
      v31 = a1 + v20[11];
      sub_252F530BC();
      v32 = v48;
      v33 = type metadata accessor for CompletionStyleSettings();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      v36 = sub_252F3DAF8(v26, &v49, v30, (v32 & 1) == 0);
      v37 = type metadata accessor for CompletionSnippetView();
      v38 = (a2 + *(v37 + 32));
      v40 = *v38;
      v39 = v38[1];
      v49._countAndFlagsBits = v40;
      v49._object = v39;
      v48 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576338, &qword_252F54D58);
      sub_252F5376C();
      v41 = a2 + *(v37 + 28);
      v42 = *(v41 + 8);
      LOBYTE(v49._countAndFlagsBits) = *v41;
      v49._object = v42;
      LOBYTE(v48) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E8, &qword_252F54ED0);
      sub_252F5376C();
      sub_252F2E41C(v23, type metadata accessor for IconConfiguration);
    }
  }

  v43._countAndFlagsBits = 0xD000000000000015;
  v43._object = 0x8000000252F58190;
  v44._object = 0x8000000252F580A0;
  v44._countAndFlagsBits = 0xD000000000000075;
  Logger.debug(output:test:caller:)(v43, 0, v44);
}

uint64_t sub_252F2CFD0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v30 - v4;
  v6 = sub_252F52FBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v11 = sub_252F5316C();
  v12 = __swift_project_value_buffer(v11, qword_27F57B800);
  v13._countAndFlagsBits = 0xD00000000000001CLL;
  v13._object = 0x8000000252F58080;
  v14._object = 0x8000000252F580A0;
  v14._countAndFlagsBits = 0xD000000000000075;
  v30[1] = v12;
  Logger.debug(output:test:caller:)(v13, 0, v14);
  v15 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 16);
  type metadata accessor for SnippetDetailsModel();
  sub_252F2DED4(&qword_27F5762F0, type metadata accessor for SnippetDetailsModel);
  sub_252F5320C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252F531AC();

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_252F2E3C4(v5, &qword_27F576050, &unk_252F54880);
  }

  (*(v7 + 32))(v10, v5, v6);
  v19 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v20 = a1[3];
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    sub_252F5391C();

    sub_252F53B3C();
    v23 = sub_252F5396C();

    [v21 setBundleId_];

    v24 = sub_252F52F8C();
    [v21 setPunchOutUri_];

    v25 = v22;
    v26 = v21;
    sub_252F5392C();

    strcpy(&v31, "Punchout to ");
    BYTE5(v31._object) = 0;
    HIWORD(v31._object) = -5120;
    sub_252F2DED4(&qword_27F5763D8, MEMORY[0x277CC9260]);
    v27 = sub_252F53C9C();
    MEMORY[0x2530AF890](v27);

    MEMORY[0x2530AF890](46, 0xE100000000000000);
    v28._object = 0x8000000252F580A0;
    v28._countAndFlagsBits = 0xD000000000000075;
    Logger.debug(output:test:caller:)(v31, 0, v28);

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v29 = a1[4];
    sub_252F5394C();
    sub_252F2DED4(&qword_27F575E48, MEMORY[0x277D63F60]);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

void sub_252F2D484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v6 = sub_252F5316C();
  v7 = __swift_project_value_buffer(v6, qword_27F57B800);
  v8._countAndFlagsBits = 0xD000000000000035;
  v8._object = 0x8000000252F581B0;
  v31 = "Received tap on the snippet.";
  v32 = v7;
  v9._object = 0x8000000252F580A0;
  v9._countAndFlagsBits = 0xD000000000000075;
  Logger.debug(output:test:caller:)(v8, 0, v9);
  v10 = type metadata accessor for CompletionSnippetView();
  v11 = (a1 + *(v10 + 28));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v34._countAndFlagsBits) = *v11;
  v34._object = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E8, &qword_252F54ED0);
  sub_252F5375C();
  if ((v33 & 1) == 0)
  {
    v14 = (a1 + *(v10 + 32));
    v16 = *v14;
    v15 = v14[1];
    v34._countAndFlagsBits = *v14;
    v34._object = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576338, &qword_252F54D58);
    sub_252F5375C();
    v17 = sub_252F3E804();

    if ((v17 & 1) == 0)
    {
      v30 = a1;
      v34._countAndFlagsBits = v16;
      v34._object = v15;
      sub_252F5375C();
      v18 = v33;
      v19 = v18 + *(type metadata accessor for IconConfiguration() + 56);
      sub_252F25C84();

      v20 = type metadata accessor for DirectInvocationConfig();
      if (__swift_getEnumTagSinglePayload(v5, 1, v20) == 1)
      {
        sub_252F2E3C4(v5, &qword_27F576460, &qword_252F54F60);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
        v21 = sub_252F5302C();
        sub_252F2E41C(v5, type metadata accessor for DirectInvocationConfig);
        v34._countAndFlagsBits = 0;
        v34._object = 0xE000000000000000;
        sub_252F53B8C();
        MEMORY[0x2530AF890](0xD000000000000033, 0x8000000252F581F0);
        v22 = [v21 debugDescription];
        v23 = sub_252F5397C();
        v25 = v24;

        MEMORY[0x2530AF890](v23, v25);

        v26._object = (v31 | 0x8000000000000000);
        v26._countAndFlagsBits = 0xD000000000000075;
        Logger.debug(output:test:caller:)(v34, 0, v26);

        LOBYTE(v34._countAndFlagsBits) = v12;
        v34._object = v13;
        LOBYTE(v33) = 1;
        sub_252F5376C();
        v27 = *(v30 + 24);
        if (v27)
        {
          v28 = v27;
          sub_252F5393C();
        }

        else
        {
          v29 = *(v30 + 32);
          sub_252F5394C();
          sub_252F2DED4(&qword_27F575E48, MEMORY[0x277D63F60]);
          sub_252F5325C();
          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_252F2D858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CompletionSnippetView();
  OUTLINED_FUNCTION_10(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_252F2C92C(a1, v7, a2);
}

unint64_t sub_252F2D8D4()
{
  result = qword_27F576350;
  if (!qword_27F576350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576340, &qword_252F54D60);
    sub_252F25B24(&qword_27F576348, &qword_27F576308, &qword_252F54CE0);
    sub_252F25B24(&qword_27F576358, &qword_27F576360, &qword_252F54D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576350);
  }

  return result;
}

void sub_252F2D9B8(uint64_t a1)
{
  v3 = type metadata accessor for CompletionSnippetView();
  OUTLINED_FUNCTION_10(v3);
  v5 = (v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  sub_252F2CAC0(a1, v5);
}

unint64_t sub_252F2DA24()
{
  result = qword_27F576388;
  if (!qword_27F576388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576380, &qword_252F54D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576388);
  }

  return result;
}

void sub_252F2DAFC()
{
  sub_252F2DC28();
  if (v0 <= 0x3F)
  {
    sub_252F252C8();
    if (v1 <= 0x3F)
    {
      sub_252F2DD0C(319, &qword_27F5763B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_252F2DCBC();
        if (v3 <= 0x3F)
        {
          sub_252F2DD0C(319, &qword_27F5763C0, type metadata accessor for CompletionStyleSettings, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_252F2DC28()
{
  if (!qword_27F5763A8)
  {
    type metadata accessor for SnippetDetailsModel();
    sub_252F2DED4(&qword_27F5762F0, type metadata accessor for SnippetDetailsModel);
    v0 = sub_252F5322C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5763A8);
    }
  }
}

void sub_252F2DCBC()
{
  if (!qword_27F5763B8)
  {
    v0 = sub_252F5378C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5763B8);
    }
  }
}

void sub_252F2DD0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_252F2DD70()
{
  result = qword_27F5763C8;
  if (!qword_27F5763C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5763D0, &qword_252F54DF8);
    sub_252F2DA24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5763C8);
  }

  return result;
}

uint64_t sub_252F2DE04()
{
  OUTLINED_FUNCTION_2_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_3_1();
  v6(v5);
  return v0;
}

uint64_t sub_252F2DE5C()
{
  OUTLINED_FUNCTION_2_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_3_1();
  v6(v5);
  return v0;
}

unint64_t sub_252F2DEB4(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t sub_252F2DEC4(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t sub_252F2DED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252F2DF1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763F0, &qword_252F54ED8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_252F25C84();
  return sub_252F532FC();
}

uint64_t sub_252F2DFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763F0, &qword_252F54ED8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F2E034()
{
  OUTLINED_FUNCTION_2_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_3_1();
  v7(v6);
  return v0;
}

uint64_t objectdestroy_6Tm()
{
  v2 = type metadata accessor for CompletionSnippetView();
  OUTLINED_FUNCTION_12_1(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = (v4 + 16) & ~v4;
  v8 = v1 + v7;
  v9 = *(v1 + v7);
  v10 = *(v1 + v7 + 8);
  v11 = *(v1 + v7 + 16);
  sub_252F2BE00();

  v12 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_252F531EC();
    OUTLINED_FUNCTION_1(v13);
    (*(v14 + 8))(v8 + v12);
  }

  else
  {
    v15 = *(v8 + v12);
  }

  v16 = *(v8 + v0[7] + 8);

  v17 = (v8 + v0[8]);
  v18 = *v17;

  v19 = v17[1];

  return MEMORY[0x2821FE8E8](v1, v7 + v6, v4 | 7);
}

uint64_t sub_252F2E1E8(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for CompletionSnippetView();
  OUTLINED_FUNCTION_10(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t sub_252F2E258()
{
  result = qword_27F576450;
  if (!qword_27F576450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576418, &qword_252F54F00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576408, &qword_252F54EF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576430, &qword_252F54F18);
    sub_252F25B24(&qword_27F576438, &qword_27F576430, &qword_252F54F18);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_252F25B24(&qword_27F576458, &qword_27F576448, &qword_252F54F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576450);
  }

  return result;
}

uint64_t sub_252F2E3C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_252F2E41C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_0_2()
{
  *(v5 - 184) = *(v5 - 216);
  *(v5 - 176) = v3;
  *(v5 - 168) = v1;
  *(v5 - 160) = v0;
  *(v5 - 152) = v2;
  *(v5 - 144) = v4;
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return sub_252F533EC();
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return sub_252F533EC();
}

void OUTLINED_FUNCTION_9_2()
{
  v1 = *(v0 - 176);
  *(v0 - 120) = *(v0 - 184);
  *(v0 - 112) = v1;
}

uint64_t OUTLINED_FUNCTION_13_2()
{

  return sub_252F5321C();
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_252F2E5DC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = type metadata accessor for SnippetDetailsModel();
  OUTLINED_FUNCTION_6_2();
  v8 = sub_252F307B0(v6, v7);

  return a1(v2, v3, v4, v5, v8);
}

uint64_t CompletionSnippetViewTVOS.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v2 = type metadata accessor for CompletionSnippetViewTVOS();
  v3 = OUTLINED_FUNCTION_4_3(v2);
  v65 = v4;
  v75 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v64 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576468, &qword_252F54F70);
  v68 = OUTLINED_FUNCTION_16(v7);
  v69 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576470, &qword_252F54F78);
  v70 = OUTLINED_FUNCTION_16(v12);
  v71 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v70);
  v67 = &v54 - v16;
  v17 = type metadata accessor for IconConfiguration();
  v18 = OUTLINED_FUNCTION_4_3(v17);
  v63 = v19;
  v62 = *(v20 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v61 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v73 = &v54 - v23;
  v74 = v1;
  v24 = *v1;
  v25 = v1[1];
  v26 = *(v1 + 16);
  type metadata accessor for SnippetDetailsModel();
  OUTLINED_FUNCTION_6_2();
  sub_252F307B0(v27, v28);
  OUTLINED_FUNCTION_2_3();
  sub_252F5321C();
  swift_getKeyPath();
  sub_252F5324C();

  v84 = v76;
  v85 = v77;
  v86 = v78;
  v87 = v79;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576320, &qword_252F54D20);
  MEMORY[0x2530AF650](&v82);
  v60 = v82;
  v59 = v83;

  OUTLINED_FUNCTION_2_3();
  sub_252F5321C();
  swift_getKeyPath();
  sub_252F5324C();

  v84 = v76;
  v85 = v77;
  v86 = v78;
  v87 = v79;
  MEMORY[0x2530AF650](&v82, v29);
  v58 = v82;
  v57 = v83;

  OUTLINED_FUNCTION_2_3();
  sub_252F5320C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252F531AC();

  OUTLINED_FUNCTION_2_3();
  sub_252F5320C();
  v30 = sub_252F43A78();

  OUTLINED_FUNCTION_2_3();
  sub_252F5320C();
  v31 = sub_252F43A64();

  OUTLINED_FUNCTION_2_3();
  sub_252F5320C();
  v55 = sub_252F43A8C();

  v54 = v30 & v31;
  OUTLINED_FUNCTION_5_3();
  sub_252F304E0();
  v56 = type metadata accessor for CompletionSnippetViewTVOS;
  sub_252F304E0();
  v32 = ((*(v63 + 80) + 16) & ~*(v63 + 80)) + v62;
  v33 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v65 + 80);
  v65 = v34 + 16;
  v35 = ((v34 + 16 + v33) & ~v34) + v75;
  v63 = v34 | 7;
  v36 = swift_allocObject();
  sub_252F30BC4();
  *(v36 + v32) = (v54 & 1) == 0;
  v37 = v36 + (v32 & 0xFFFFFFFFFFFFFFF8);
  v38 = v59;
  *(v37 + 8) = v60;
  *(v37 + 16) = v38;
  v39 = (v36 + v33);
  v40 = v57;
  *v39 = v58;
  v39[1] = v40;
  sub_252F30BC4();
  *(v36 + v35) = v55 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576490, &qword_252F55040);
  v41 = sub_252F5390C();
  v42 = sub_252F307B0(&qword_27F576330, MEMORY[0x277D63E70]);
  v76 = v41;
  v77 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v66;
  sub_252F5381C();
  v44 = type metadata accessor for CompletionSnippetModel();
  sub_252F304E0();
  swift_allocObject();
  sub_252F30BC4();
  v45 = sub_252F25B24(&qword_27F576498, &qword_27F576468, &qword_252F54F70);
  v46 = sub_252F307B0(&qword_27F576368, type metadata accessor for CompletionSnippetModel);
  v47 = sub_252F307B0(&qword_27F576370, type metadata accessor for CompletionSnippetModel);
  v53 = sub_252F307B0(&qword_27F576378, type metadata accessor for CompletionSnippetModel);
  v49 = v67;
  v48 = v68;
  sub_252F5354C();

  (*(v69 + 8))(v43, v48);
  v76 = v48;
  v77 = v44;
  v78 = v45;
  v79 = v46;
  v80 = v47;
  v81 = v53;
  swift_getOpaqueTypeConformance2();
  v50 = v70;
  v51 = sub_252F534EC();
  (*(v71 + 8))(v49, v50);
  result = sub_252F30C1C(v73, type metadata accessor for IconConfiguration);
  *v72 = v51;
  return result;
}

uint64_t type metadata accessor for CompletionSnippetViewTVOS()
{
  result = qword_27F5764A0;
  if (!qword_27F5764A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F2EF38@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v100 = a8;
  v95 = a7;
  v91 = a6;
  v90 = a5;
  v89 = a4;
  v88 = a3;
  LODWORD(v105) = a2;
  v103 = a9;
  v10 = type metadata accessor for IconConfiguration();
  v96 = *(v10 - 8);
  v11 = *(v96 + 64);
  MEMORY[0x28223BE20](v10);
  v97 = v12;
  v98 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CompletionSnippetViewTVOS();
  v93 = *(v13 - 8);
  v14 = *(v93 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = v15;
  v94 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_252F5390C();
  v101 = *(v102 - 8);
  v16 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v99 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760E0, &qword_252F547A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v83 = v78 - v20;
  v82 = sub_252F52FFC();
  v21 = *(v82 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v82);
  v24 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5764B0, &qword_252F550C8);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = v78 - v28;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5764B8, &qword_252F550D0);
  v86 = *(v87 - 8);
  v30 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v32 = v78 - v31;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5764C0, &qword_252F550D8);
  v33 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v84 = v78 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  v81 = v118;
  v80 = v119;
  v79 = v10;
  v35 = *(v10 + 20);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  v104 = a1;
  v78[1] = v35;
  v78[0] = v36;
  sub_252F530BC();

  v118 = sub_252F5367C();
  LOWORD(v119) = 256;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5764C8, &qword_252F550E0);
  v38 = sub_252F25B24(&qword_27F5764D0, &qword_27F5764C8, &qword_252F550E0);
  sub_252F5350C();
  v39 = v32;

  v40 = v82;
  (*(v21 + 104))(v24, *MEMORY[0x277D62B28], v82);
  v118 = v37;
  v119 = v38;
  swift_getOpaqueTypeConformance2();
  sub_252F534FC();
  (*(v21 + 8))(v24, v40);
  (*(v26 + 8))(v29, v25);
  v41 = sub_252F5372C();
  v42 = sub_252F5346C();
  v43 = v83;
  __swift_storeEnumTagSinglePayload(v83, 1, 1, v42);
  v44 = sub_252F5347C();
  sub_252F25CDC(v43, &qword_27F5760E0, &qword_252F547A0);
  KeyPath = swift_getKeyPath();
  if (v105)
  {
    v118 = sub_252F5365C();
    v119 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5764F8, &unk_252F55120);
    sub_252F25B24(&qword_27F576500, &qword_27F5764F8, &unk_252F55120);
  }

  else
  {
    sub_252F530BC();
    v46 = v118;
    v47 = v119;
    v48 = *(v79 + 44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
    sub_252F530BC();
    v49 = static ColorUtils.getColor(colorString:colorDict:)(v46, v47, v118);

    v118 = v49;
  }

  v50 = sub_252F5323C();
  v51 = sub_252F537DC();
  v53 = v52;
  v54 = v84;
  (*(v86 + 32))(v84, v39, v87);
  v55 = (v54 + *(v85 + 36));
  *v55 = v41;
  v55[1] = KeyPath;
  v55[2] = v44;
  v55[3] = v50;
  v55[4] = v51;
  v55[5] = v53;
  sub_252F308A8();
  v105 = sub_252F534EC();
  sub_252F1A2E8(v54);
  v118 = v88;
  v119 = v89;
  sub_252F30A14();

  v56 = sub_252F534DC();
  v58 = v57;
  LODWORD(v86) = v59;
  v61 = v60;
  v118 = v90;
  v119 = v91;

  v62 = sub_252F534DC();
  v64 = v63;
  LOBYTE(v50) = v65;
  v67 = v66;
  v68 = MEMORY[0x277D638E8];
  v120 = MEMORY[0x277CE0BD8];
  v121 = MEMORY[0x277D638E8];
  v69 = swift_allocObject();
  v118 = v69;
  *(v69 + 16) = v56;
  *(v69 + 24) = v58;
  v88 = v56;
  v70 = v58;
  v89 = v58;
  LODWORD(v58) = v86 & 1;
  *(v69 + 32) = v58;
  LODWORD(v91) = v58;
  *(v69 + 40) = v61;
  v116 = MEMORY[0x277CE0BD8];
  v117 = v68;
  v71 = swift_allocObject();
  v114 = 0;
  v115 = v71;
  *(v71 + 16) = v62;
  *(v71 + 24) = v64;
  v87 = v64;
  *(v71 + 32) = v50 & 1;
  v90 = v67;
  *(v71 + 40) = v67;
  v112 = 0u;
  v113 = 0u;
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v108 = MEMORY[0x277D63A60];
  v107 = MEMORY[0x277CE11C8];
  v106 = v105;
  sub_252F30A78(v56, v70, v58);

  sub_252F30A78(v62, v64, v50 & 1);

  v72 = v99;
  sub_252F538FC();
  sub_252F304E0();
  sub_252F304E0();
  v73 = ((*(v93 + 80) + 16) & ~*(v93 + 80)) + v92;
  v74 = (*(v96 + 80) + v73 + 1) & ~*(v96 + 80);
  v75 = swift_allocObject();
  sub_252F30BC4();
  *(v75 + v73) = v100 & 1;
  sub_252F30BC4();
  sub_252F307B0(&qword_27F576330, MEMORY[0x277D63E70]);
  v76 = v102;
  sub_252F5351C();

  sub_252F30A68(v62, v87, v50 & 1);

  sub_252F30A68(v88, v89, v91);

  return (*(v101 + 8))(v72, v76);
}

uint64_t sub_252F2FAE8(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for DirectInvocationConfig();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v13 = sub_252F5316C();
  __swift_project_value_buffer(v13, qword_27F57B800);
  v14._countAndFlagsBits = 0xD000000000000035;
  v14._object = 0x8000000252F581B0;
  v15._object = 0x8000000252F58230;
  v15._countAndFlagsBits = 0xD000000000000079;
  Logger.debug(output:test:caller:)(v14, 0, v15);
  v16 = *(type metadata accessor for CompletionSnippetViewTVOS() + 28);
  v35 = a1;
  v17 = (a1 + v16);
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v37._countAndFlagsBits) = *v17;
  v37._object = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E8, &qword_252F54ED0);
  result = sub_252F5375C();
  if ((v36 & 1) == 0 && (a2 & 1) == 0)
  {
    v21 = type metadata accessor for IconConfiguration();
    sub_252F30B54(a3 + *(v21 + 56), v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      return sub_252F25CDC(v9, &qword_27F576460, &qword_252F54F60);
    }

    else
    {
      v22 = v34;
      sub_252F30BC4();
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      sub_252F53B8C();

      v37._countAndFlagsBits = 0xD000000000000029;
      v37._object = 0x8000000252F582B0;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
      v23 = sub_252F5302C();
      v24 = [v23 debugDescription];

      v25 = sub_252F5397C();
      v27 = v26;

      MEMORY[0x2530AF890](v25, v27);

      v28._object = 0x8000000252F58230;
      v28._countAndFlagsBits = 0xD000000000000079;
      Logger.debug(output:test:caller:)(v37, 0, v28);

      LOBYTE(v37._countAndFlagsBits) = v18;
      v37._object = v19;
      v36 = 1;
      sub_252F5376C();
      v29 = *(v35 + 24);
      if (v29)
      {
        v30 = v29;
        v31 = sub_252F5302C();
        sub_252F5393C();

        return sub_252F30C1C(v22, type metadata accessor for DirectInvocationConfig);
      }

      else
      {
        v32 = *(v35 + 32);
        sub_252F5394C();
        sub_252F307B0(&qword_27F575E48, MEMORY[0x277D63F60]);
        result = sub_252F5325C();
        __break(1u);
      }
    }
  }

  return result;
}

void sub_252F2FEB8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = v31 - v6;
  v36 = type metadata accessor for IconConfiguration();
  v7 = *(*(v36 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v36);
  v33 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v34 = v31 - v10;
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v11 = sub_252F5316C();
  v12 = __swift_project_value_buffer(v11, qword_27F57B800);
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000041, 0x8000000252F58140);
  v13 = CompletionSnippetModel.description.getter();
  MEMORY[0x2530AF890](v13);

  v37 = "on for the toggle. ";
  v14._object = 0x8000000252F58230;
  v14._countAndFlagsBits = 0xD000000000000079;
  v39 = v12;
  Logger.debug(output:test:caller:)(v42, 0, v14);

  v16 = *a2;
  v15 = a2[1];
  v40 = a2;
  v17 = *(a2 + 16);
  type metadata accessor for SnippetDetailsModel();
  sub_252F307B0(&qword_27F5762F0, type metadata accessor for SnippetDetailsModel);
  sub_252F5320C();
  v18 = type metadata accessor for CompletionSnippetModel();
  v19 = v18[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  sub_252F43854();

  sub_252F5320C();
  v20 = a1 + v18[8];
  sub_252F530BC();
  sub_252F43868();

  sub_252F5320C();
  v35 = v18[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530BC();
  sub_252F43840();

  sub_252F5320C();
  v21 = v18[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  sub_252F437B4();

  v31[1] = v16;
  v32 = v17;
  sub_252F5320C();
  sub_252F530BC();
  sub_252F43840();

  v22 = v18[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  v23 = v38;
  sub_252F530BC();
  if (__swift_getEnumTagSinglePayload(v23, 1, v36) == 1)
  {
    sub_252F25CDC(v23, &qword_27F576260, &qword_252F54AA0);
  }

  else
  {
    v24 = v34;
    sub_252F30BC4();
    sub_252F5320C();
    v25 = v33;
    sub_252F304E0();
    sub_252F436E8(v25);

    sub_252F30C1C(v24, type metadata accessor for IconConfiguration);
  }

  v26 = v40 + *(type metadata accessor for CompletionSnippetViewTVOS() + 28);
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v42._countAndFlagsBits) = v27;
  v42._object = v28;
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E8, &qword_252F54ED0);
  sub_252F5376C();
  v29._countAndFlagsBits = 0xD000000000000015;
  v29._object = 0x8000000252F58190;
  v30._object = (v37 | 0x8000000000000000);
  v30._countAndFlagsBits = 0xD000000000000079;
  Logger.debug(output:test:caller:)(v29, 0, v30);
}

uint64_t sub_252F30458()
{
  OUTLINED_FUNCTION_7_3();
  v1 = type metadata accessor for IconConfiguration();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_3();
  sub_252F304E0();
  v5 = *v0;
  return sub_252F436E8(v4);
}

uint64_t sub_252F304E0()
{
  v2 = OUTLINED_FUNCTION_7_3();
  v4 = v3(v2);
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_252F30538@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IconConfiguration();
  OUTLINED_FUNCTION_4_3(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = v5 + *(v6 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = type metadata accessor for CompletionSnippetViewTVOS();
  OUTLINED_FUNCTION_4_3(v9);
  v12 = *(v1 + v7);
  v13 = *(v1 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v14 = *(v1 + (v7 & 0xFFFFFFFFFFFFFFF8) + 16);
  v15 = *(v1 + v8);
  v16 = *(v1 + v8 + 8);
  v17 = v1 + ((v8 + *(v10 + 80) + 16) & ~*(v10 + 80));
  v18 = *(v17 + *(v11 + 64));

  return sub_252F2EF38(v1 + v5, v12, v13, v14, v15, v16, v17, v18, a1);
}

void sub_252F30648(uint64_t a1)
{
  v3 = *(type metadata accessor for CompletionSnippetViewTVOS() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_252F2FEB8(a1, v4);
}

void sub_252F306FC()
{
  sub_252F2DC28();
  if (v0 <= 0x3F)
  {
    sub_252F252C8();
    if (v1 <= 0x3F)
    {
      sub_252F307F8();
      if (v2 <= 0x3F)
      {
        sub_252F2DCBC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_252F307B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_252F307F8()
{
  if (!qword_27F5763B0)
  {
    sub_252F531EC();
    v0 = sub_252F531FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5763B0);
    }
  }
}

uint64_t sub_252F30850@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F5330C();
  *a1 = result;
  return result;
}

uint64_t sub_252F3087C(uint64_t *a1)
{
  v1 = *a1;

  return sub_252F5331C();
}

unint64_t sub_252F308A8()
{
  result = qword_27F5764D8;
  if (!qword_27F5764D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5764C0, &qword_252F550D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5764B0, &qword_252F550C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5764C8, &qword_252F550E0);
    sub_252F25B24(&qword_27F5764D0, &qword_27F5764C8, &qword_252F550E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_252F25B24(&qword_27F5764E0, &qword_27F5764E8, &qword_252F55118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5764D8);
  }

  return result;
}

unint64_t sub_252F30A14()
{
  result = qword_27F5764F0;
  if (!qword_27F5764F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5764F0);
  }

  return result;
}

uint64_t sub_252F30A68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_252F30A78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_252F30A88()
{
  v1 = type metadata accessor for CompletionSnippetViewTVOS();
  OUTLINED_FUNCTION_4_3(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = *(type metadata accessor for IconConfiguration() - 8);
  v7 = *(v0 + v5);
  v8 = v0 + ((v5 + *(v6 + 80) + 1) & ~*(v6 + 80));

  return sub_252F2FAE8(v0 + v3, v7, v8);
}

uint64_t sub_252F30B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F30BC4()
{
  v2 = OUTLINED_FUNCTION_7_3();
  v4 = v3(v2);
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_252F30C1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t ConfirmationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConfirmationView();
  v5 = (a2 + *(v4 + 20));
  sub_252F5394C();
  sub_252F31C04(&qword_27F575E48, MEMORY[0x277D63F60]);
  *v5 = sub_252F5326C();
  v5[1] = v6;
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v7 = sub_252F5316C();
  __swift_project_value_buffer(v7, qword_27F57B800);
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000031, 0x8000000252F57B10);
  v8 = ConfirmationSnippetModel.description.getter();
  MEMORY[0x2530AF890](v8);

  v9._countAndFlagsBits = 0;
  v10._countAndFlagsBits = 0xD000000000000069;
  v10._object = 0x8000000252F57B50;
  v9._object = 0xE000000000000000;
  Logger.debug(output:test:caller:)(v9, 0, v10);

  sub_252F31A14(a1, a2, type metadata accessor for ConfirmationSnippetModel);
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v11 = *(v4 + 24);
  v12 = qword_27F57B818;
  sub_252F5313C();
  sub_252F53ADC();
  sub_252F5312C();

  return sub_252F299E8(a1);
}

uint64_t type metadata accessor for ConfirmationView()
{
  result = qword_27F576528;
  if (!qword_27F576528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfirmationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ConfirmationView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_252F31A14(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConfirmationView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_252F31A74(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576508, &qword_252F55148);
  sub_252F31B48();
  sub_252F5381C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576520, &qword_252F55180);
  v10 = (a1 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = 1;
  return result;
}

uint64_t sub_252F310CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConfirmationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_252F3123C();
  v12[8] = MEMORY[0x277CE11C8];
  v12[9] = MEMORY[0x277D63A60];
  v12[5] = v7;
  v12[3] = MEMORY[0x277CE11C8];
  v12[4] = MEMORY[0x277D63A60];
  v12[0] = sub_252F3148C();
  sub_252F5384C();
  sub_252F31A14(a1, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConfirmationView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_252F31A74(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576508, &qword_252F55148);
  v11 = (a2 + *(result + 36));
  *v11 = sub_252F31E10;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

uint64_t sub_252F3123C()
{
  v1 = v0;
  v2 = type metadata accessor for ConfirmationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576560, &qword_252F55D60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(type metadata accessor for ConfirmationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  sub_252F31A14(v1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConfirmationView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_252F31A74(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_252F30A14();
  sub_252F5379C();
  sub_252F25B24(&qword_27F576568, &qword_27F576560, &qword_252F55D60);
  v13 = sub_252F534EC();
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_252F3148C()
{
  v1 = v0;
  v2 = type metadata accessor for ConfirmationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576560, &qword_252F55D60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(type metadata accessor for ConfirmationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  sub_252F31A14(v1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConfirmationView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_252F31A74(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_252F30A14();
  sub_252F5379C();
  sub_252F25B24(&qword_27F576568, &qword_27F576560, &qword_252F55D60);
  v13 = sub_252F534EC();
  (*(v6 + 8))(v9, v5);
  return v13;
}

void sub_252F316DC()
{
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v0 = *(type metadata accessor for ConfirmationView() + 24);
  sub_252F53ACC();
  sub_252F5311C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v1 = sub_252F5316C();
  __swift_project_value_buffer(v1, qword_27F57B800);
  v2._object = 0x8000000252F582E0;
  v3._countAndFlagsBits = 0xD000000000000069;
  v3._object = 0x8000000252F57B50;
  v2._countAndFlagsBits = 0xD000000000000029;
  Logger.debug(output:test:caller:)(v2, 0, v3);
}

void sub_252F31820(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for ConfirmationView() + 20);
  v2 = *v1;
  if (*v1)
  {
    v3 = *(type metadata accessor for ConfirmationSnippetModel() + 36);
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    v6 = sub_252F5302C();
    sub_252F5393C();
  }

  else
  {
    v5 = *(v1 + 8);
    sub_252F5394C();
    sub_252F31C04(&qword_27F575E48, MEMORY[0x277D63F60]);
    sub_252F5325C();
    __break(1u);
  }
}

void sub_252F31918(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for ConfirmationView() + 20);
  v2 = *v1;
  if (*v1)
  {
    v3 = *(type metadata accessor for ConfirmationSnippetModel() + 40);
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    v6 = sub_252F5302C();
    sub_252F5393C();
  }

  else
  {
    v5 = *(v1 + 8);
    sub_252F5394C();
    sub_252F31C04(&qword_27F575E48, MEMORY[0x277D63F60]);
    sub_252F5325C();
    __break(1u);
  }
}

uint64_t sub_252F31A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_252F31A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F31AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConfirmationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_252F310CC(v4, a1);
}

unint64_t sub_252F31B48()
{
  result = qword_27F576510;
  if (!qword_27F576510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576508, &qword_252F55148);
    sub_252F31C04(&qword_27F576518, MEMORY[0x277D63C38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576510);
  }

  return result;
}

uint64_t sub_252F31C04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_252F31C90()
{
  type metadata accessor for ConfirmationSnippetModel();
  if (v0 <= 0x3F)
  {
    sub_252F252C8();
    if (v1 <= 0x3F)
    {
      sub_252F5314C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_252F31D2C()
{
  result = qword_27F576538;
  if (!qword_27F576538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576520, &qword_252F55180);
    sub_252F25B24(&qword_27F576540, &qword_27F576548, &qword_252F551F8);
    sub_252F25B24(&qword_27F576550, &qword_27F576558, &unk_252F55200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576538);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v41 = type metadata accessor for ConfirmationView();
  v1 = *(*(v41 - 8) + 80);
  v42 = *(*(v41 - 8) + 64);
  v43 = (v1 + 16) & ~v1;
  v40 = v0;
  v2 = v0 + v43;
  v3 = *(v0 + v43 + 8);

  v4 = *(v0 + v43 + 24);

  v5 = *(v0 + v43 + 40);

  v6 = type metadata accessor for ConfirmationSnippetModel();
  v7 = v6[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_1(v8);
  v10 = *(v9 + 8);
  v10(v2 + v7, v8);
  v10(v2 + v6[8], v8);
  v11 = v6[9];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_1(v12);
  v14 = *(v13 + 8);
  v14(v2 + v11, v12);
  v14(v2 + v6[10], v12);
  v15 = v2 + v6[11];
  v16 = type metadata accessor for IconConfiguration();
  if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
  {
    v10(v15, v8);
    v17 = v16[5];
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_1(v38);
    v39 = *(v18 + 8);
    v39(v15 + v17);
    v19 = v16[6];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
    OUTLINED_FUNCTION_1(v20);
    (*(v21 + 8))(v15 + v19);
    v22 = v16[7];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
    OUTLINED_FUNCTION_1(v23);
    v25 = *(v24 + 8);
    v25(v15 + v22, v23);
    v25(v15 + v16[8], v23);
    v26 = v16[9];
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
    OUTLINED_FUNCTION_1(v27);
    (*(v28 + 8))(v15 + v26);
    (v39)(v15 + v16[10], v38);
    v29 = v16[11];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
    OUTLINED_FUNCTION_1(v30);
    (*(v31 + 8))(v15 + v29);
    (v39)(v15 + v16[12], v38);
    (v39)(v15 + v16[13], v38);
    v32 = v16[14];
    v33 = type metadata accessor for DirectInvocationConfig();
    if (!__swift_getEnumTagSinglePayload(v15 + v32, 1, v33))
    {
      v14(v15 + v32, v12);
    }
  }

  v34 = *(v41 + 24);
  v35 = sub_252F5314C();
  OUTLINED_FUNCTION_1(v35);
  (*(v36 + 8))(v2 + v34);

  return MEMORY[0x2821FE8E8](v40, v43 + v42, v1 | 7);
}

uint64_t sub_252F32280(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ConfirmationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t TemperatureView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TemperatureView();
  v5 = (a2 + *(v4 + 20));
  sub_252F5394C();
  sub_252F33D18(&qword_27F575E48, MEMORY[0x277D63F60]);
  *v5 = sub_252F5326C();
  v5[1] = v6;
  sub_252F336B0(a1, a2, type metadata accessor for TemperatureSnippetModel);
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v7 = sub_252F5316C();
  __swift_project_value_buffer(v7, qword_27F57B800);
  sub_252F53B8C();

  v8 = TemperatureSnippetModel.description.getter();
  MEMORY[0x2530AF890](v8);

  v9._countAndFlagsBits = 0xD000000000000030;
  v10._countAndFlagsBits = 0xD000000000000068;
  v10._object = 0x8000000252F58350;
  v9._object = 0x8000000252F58310;
  Logger.debug(output:test:caller:)(v9, 0, v10);

  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v11 = *(v4 + 24);
  v12 = qword_27F57B818;
  sub_252F5313C();
  sub_252F53ADC();
  sub_252F5312C();

  return sub_252F270A4(a1);
}

uint64_t type metadata accessor for TemperatureView()
{
  result = qword_27F576588;
  if (!qword_27F576588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TemperatureView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576300, &unk_252F55210) - 8) + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v5);
  v7 = (&v53 - v6);
  v8 = type metadata accessor for TemperatureView();
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576308, &qword_252F54CE0);
  v11 = OUTLINED_FUNCTION_16(v10);
  v57 = v12;
  v58 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576570, &qword_252F55220);
  OUTLINED_FUNCTION_1(v62);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v20);
  v59 = &v53 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576578, &qword_252F55228);
  OUTLINED_FUNCTION_16(v22);
  v61 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v26);
  v60 = &v53 - v27;
  v28 = type metadata accessor for TemperatureSnippetModel();
  v29 = *(v28 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  result = sub_252F530BC();
  v31 = v64;
  if (v64)
  {
    v54 = v22;
    v55 = a1;
    v32 = v63;
    v33 = *(v28 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    sub_252F530BC();
    v34 = v63;
    if (v63 == 2)
    {

      v35 = 0;
    }

    else
    {
      v53 = type metadata accessor for TemperatureView;
      sub_252F336B0(v2, &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TemperatureView);
      v36 = *(v56 + 80);
      v56 = v2;
      v37 = swift_allocObject();
      *(v37 + 16) = v34 & 1;
      *(v37 + 24) = v32;
      *(v37 + 32) = v31;
      sub_252F33710(&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + ((v36 + 40) & ~v36));
      sub_252F5390C();
      sub_252F33D18(&qword_27F576330, MEMORY[0x277D63E70]);
      sub_252F5381C();
      *v7 = sub_252F5369C();
      v38 = *MEMORY[0x277D63BB0];
      v39 = sub_252F5383C();
      OUTLINED_FUNCTION_1(v39);
      (*(v40 + 104))(v7, v38, v39);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576340, &qword_252F54D60);
      sub_252F25B24(&qword_27F576348, &qword_27F576308, &qword_252F54CE0);
      sub_252F2D8D4();
      v41 = v58;
      v42 = v59;
      sub_252F5353C();
      sub_252F25CDC(v7, &qword_27F576300, &unk_252F55210);
      (*(v57 + 8))(v17, v41);
      v43 = v56;
      v44 = v53;
      sub_252F336B0(v56, &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v53);
      v45 = (v36 + 16) & ~v36;
      v46 = swift_allocObject();
      sub_252F33710(&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v45);
      v47 = v62;
      v48 = (v42 + *(v62 + 36));
      *v48 = sub_252F337EC;
      v48[1] = v46;
      v48[2] = 0;
      v48[3] = 0;
      sub_252F336B0(v43, &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
      v49 = swift_allocObject();
      sub_252F33710(&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v45);
      v50 = sub_252F33A90();
      v51 = v60;
      sub_252F5351C();

      sub_252F1AB88(v42);
      v63 = v47;
      v64 = v50;
      swift_getOpaqueTypeConformance2();
      v52 = v54;
      v35 = sub_252F534EC();
      result = (*(v61 + 8))(v51, v52);
    }

    a1 = v55;
  }

  else
  {
    v35 = 0;
  }

  *a1 = v35;
  return result;
}

uint64_t sub_252F32B70(char a1)
{
  v2 = sub_252F5336C();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v4);
  if (a1)
  {
    sub_252F536BC();
  }

  else
  {
    sub_252F5360C();
  }

  sub_252F30A14();

  v5 = sub_252F534DC();
  v7 = v6;
  v9 = v8;
  sub_252F5348C();
  v10 = sub_252F534BC();
  v12 = v11;
  v14 = v13;

  sub_252F30A68(v5, v7, v9 & 1);

  v15 = sub_252F5349C();
  v17 = v16;
  v19 = v18;
  sub_252F30A68(v10, v12, v14 & 1);

  v20 = sub_252F534AC();
  v22 = v21;
  v24 = v23;
  sub_252F30A68(v15, v17, v19 & 1);

  sub_252F534EC();
  sub_252F30A68(v20, v22, v24 & 1);

  sub_252F5335C();
  sub_252F5334C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  sub_252F5333C();

  sub_252F5334C();
  sub_252F5337C();
  v25 = sub_252F534CC();
  v27 = v26;
  v29 = v28;
  v39 = v30;
  sub_252F5335C();
  sub_252F5334C();
  LODWORD(v17) = *(type metadata accessor for TemperatureSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  result = sub_252F530BC();
  if (v22)
  {
    sub_252F5333C();

    sub_252F5334C();
    sub_252F5337C();
    v32 = sub_252F534CC();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v41 = swift_allocObject();
    *(v41 + 16) = v25;
    *(v41 + 24) = v27;
    *(v41 + 32) = v29 & 1;
    *(v41 + 40) = v39;
    v40 = swift_allocObject();
    *(v40 + 16) = v32;
    *(v40 + 24) = v34;
    *(v40 + 32) = v36 & 1;
    *(v40 + 40) = v38;
    sub_252F538FC();
  }

  else
  {
    __break(1u);
  }

  return result;
}