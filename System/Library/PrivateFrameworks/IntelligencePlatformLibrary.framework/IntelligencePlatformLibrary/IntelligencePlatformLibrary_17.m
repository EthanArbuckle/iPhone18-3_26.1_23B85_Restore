void _s27IntelligencePlatformLibrary0A22FlowResponseGenerationV13CatalogFailedV4hash4intoys6HasherVz_tF_0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v0 + 36);
  v4 = *(v0 + 8);
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v5 = *v0;
    OUTLINED_FUNCTION_94();
    v6 = IntelligenceFlowResponseGeneration.FatalError.rawValue.getter();
    MEMORY[0x193B18030](v6);
  }

  if (v1 == 1)
  {
    OUTLINED_FUNCTION_95_8();
    OUTLINED_FUNCTION_92_7();
    return;
  }

  v7 = v4 | (v3 << 32);
  OUTLINED_FUNCTION_94();
  if (!v1)
  {
    OUTLINED_FUNCTION_95_8();
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    OUTLINED_FUNCTION_95_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_94();

  sub_19393C640();
  if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  OUTLINED_FUNCTION_94();
  sub_19393CAE0();
LABEL_11:
  OUTLINED_FUNCTION_92_7();

  sub_193456418(v8, v9);
}

uint64_t IntelligenceFlowResponseGeneration.RGError.errorDomain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.RGError.errorDomain.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.RGError.errorCode.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

void IntelligenceFlowResponseGeneration.RGError.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
}

uint64_t static IntelligenceFlowResponseGeneration.RGError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  if (*(a1 + 8))
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1, a2);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v11 = v6;
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

uint64_t IntelligenceFlowResponseGeneration.RGError.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 4);
  v2 = *(v0 + 20);
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
  return sub_19393CAE0();
}

uint64_t IntelligenceFlowResponseGeneration.RGError.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_175();
    sub_19393C640();
  }

  sub_19393CAD0();
  if (!v4)
  {
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t sub_193580920()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.RGError.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.characterCount.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.wordCount.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.displayString.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.displayString.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.spokenString.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.spokenString.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.catId.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.catId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.staticDialogId.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.staticDialogId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

double IntelligenceFlowResponseGeneration.Event.Generation.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return result;
}

uint64_t sub_193580C60@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowResponseGeneration.Event.Generation.Source.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193580C88@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowResponseGeneration.Event.Generation.Source.allCases.getter();
  *a1 = result;
  return result;
}

BOOL static IntelligenceFlowResponseGeneration.Event.Generation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 16);
  v4 = *(a1 + 5);
  v5 = *(a1 + 24);
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v51 = a1[8];
  v54 = a1[9];
  v10 = a1[10];
  v53 = a1[11];
  v11 = *(a2 + 9);
  v12 = *(a2 + 3);
  v13 = *(a2 + 16);
  v14 = *(a2 + 5);
  v15 = *(a2 + 24);
  v17 = a2[4];
  v16 = a2[5];
  v18 = a2[6];
  v19 = a2[7];
  v20 = a2[8];
  v21 = a2[9];
  v50 = a2[10];
  v52 = a2[11];
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v47 = a1[4];
    v48 = a2[6];
    v57 = *a1;
    v58 = a1[1] & 1;
    v55 = *a2;
    v56 = a2[1] & 1;
    v49 = a2[9];
    v45 = a1[10];
    v46 = a2[7];
    v43 = a1[6];
    v44 = a1[7];
    v42 = a2[8];
    v22 = a1[5];
    v23 = a2[5];
    v24 = a2[4];
    v25 = *(a1 + 5);
    v40 = *(a2 + 5);
    v41 = *(a1 + 3);
    v26 = *(a2 + 24);
    v39 = IntelligenceFlowResponseGeneration.Event.Generation.Source.rawValue.getter();
    v27 = IntelligenceFlowResponseGeneration.Event.Generation.Source.rawValue.getter();
    v14 = v40;
    v2 = v41;
    v15 = v26;
    v4 = v25;
    v17 = v24;
    v16 = v23;
    v7 = v22;
    v19 = v46;
    v6 = v47;
    v20 = v42;
    v8 = v43;
    v9 = v44;
    v18 = v48;
    v21 = v49;
    if (v39 != v27)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v12)
    {
      v28 = v13;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v14)
    {
      v29 = v15;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v16)
    {
      return 0;
    }

    if (v6 != v17 || v7 != v16)
    {
      v31 = v20;
      v32 = sub_19393CA30();
      v20 = v31;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v9)
  {
    if (!v19)
    {
      return 0;
    }

    if (v8 != v18 || v9 != v19)
    {
      v34 = v20;
      v35 = sub_19393CA30();
      v20 = v34;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v54)
  {
    if (!v21)
    {
      return 0;
    }

    v36 = v51 == v20 && v54 == v21;
    if (!v36 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v53)
  {
    if (!v52)
    {
      return 0;
    }

    v37 = v10 == v50 && v53 == v52;
    return v37 || (sub_19393CA30() & 1) != 0;
  }

  return !v52;
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.hash(into:)()
{
  v1 = *(v0 + 3);
  v18 = *(v0 + 3);
  v19 = *(v0 + 5);
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[11];
  if (*(v0 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v16 = v0[6];
    v17 = v0[7];
    v9 = v0[11];
    v10 = *(v0 + 8);
    v11 = v0[10];
    v12 = *v0;
    v13 = OUTLINED_FUNCTION_103_0();
    v8 = v9;
    v14 = IntelligenceFlowResponseGeneration.Event.Generation.Source.rawValue.getter(v13);
    MEMORY[0x193B18030](v14);
  }

  if (v20)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
    if (v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
    if (v2)
    {
LABEL_9:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      if (v4)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (v4)
  {
LABEL_10:
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_18:
    OUTLINED_FUNCTION_104_0();
    if (v8)
    {
      goto LABEL_12;
    }

    return OUTLINED_FUNCTION_104_0();
  }

LABEL_17:
  OUTLINED_FUNCTION_104_0();
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_11:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_6_1();
  if (!v8)
  {
    return OUTLINED_FUNCTION_104_0();
  }

LABEL_12:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_187();

  return sub_19393C640();
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowResponseGeneration.Event.Generation.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935811E0()
{
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.Event.Generation.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193581258@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowResponseGeneration.Event.Fallback.Reason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193581280@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowResponseGeneration.Event.Fallback.Reason.allCases.getter();
  *a1 = result;
  return result;
}

BOOL static IntelligenceFlowResponseGeneration.Event.Fallback.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 9);
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v3 = OUTLINED_FUNCTION_9_16(a1, a2);
    v4 = IntelligenceFlowResponseGeneration.Event.Fallback.Reason.rawValue.getter(v3);
    return v4 == IntelligenceFlowResponseGeneration.Event.Fallback.Reason.rawValue.getter(v4);
  }

  return (*(a2 + 9) & 1) != 0;
}

uint64_t IntelligenceFlowResponseGeneration.Event.Fallback.hash(into:)()
{
  if (*(v0 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v2 = *(v0 + 8);
  v3 = *v0;
  v4 = OUTLINED_FUNCTION_103_0();
  v5 = IntelligenceFlowResponseGeneration.Event.Fallback.Reason.rawValue.getter(v4);
  return MEMORY[0x193B18030](v5);
}

uint64_t IntelligenceFlowResponseGeneration.Event.Fallback.hashValue.getter()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_180();
    v2 = IntelligenceFlowResponseGeneration.Event.Fallback.Reason.rawValue.getter(v1);
    MEMORY[0x193B18030](v2);
  }

  return sub_19393CB00();
}

uint64_t sub_1935814C0()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_180();
    v2 = IntelligenceFlowResponseGeneration.Event.Fallback.Reason.rawValue.getter(v1);
    MEMORY[0x193B18030](v2);
  }

  return sub_19393CB00();
}

uint64_t sub_193581580@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowResponseGeneration.Event.Override.OverrideType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935815A8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowResponseGeneration.Event.Override.OverrideType.allCases.getter();
  *a1 = result;
  return result;
}

BOOL sub_1935816A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 9);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v9 = OUTLINED_FUNCTION_9_16(a1, a2);
    v11 = v10(v9);
    if (v11 != a3())
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v6)
    {
      return 0;
    }

    v12 = v3 == v7 && v4 == v6;
    return v12 || (sub_19393CA30() & 1) != 0;
  }

  return !v6;
}

void sub_193581784(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2[2];
  v4 = v2[3];
  if (*(v2 + 9) != 1)
  {
    v7 = *(v2 + 8);
    v8 = *v2;
    v9 = OUTLINED_FUNCTION_103_0();
    v10 = a2(v9);
    MEMORY[0x193B18030](v10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_92_7();
    return;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_92_7();

  sub_19393C640();
}

uint64_t sub_193581854(uint64_t (*a1)(void))
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = v1[2];
  v7 = v1[3];
  sub_19393CAB0();
  sub_19393CAD0();
  if (v5 != 1)
  {
    OUTLINED_FUNCTION_180();
    v8 = a1();
    MEMORY[0x193B18030](v8);
  }

  sub_19393CAD0();
  if (v7)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_19358193C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  v10 = *v4;
  v11 = v6;
  v12 = v7;
  v13 = *(v4 + 1);
  sub_19393CAB0();
  a4(v9);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowResponseGeneration.Event.ModelInference.modelVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.Event.ModelInference.modelVersion.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t static IntelligenceFlowResponseGeneration.Event.ModelInference.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  if (a1[1])
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1, a2);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v6)
    {
      if (v2 == v5 && v3 == v6)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_46_14();
      if (sub_19393CA30())
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t IntelligenceFlowResponseGeneration.Event.ModelInference.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  v3 = *v0;
  sub_19393CAD0();
  OUTLINED_FUNCTION_17_19();
  sub_19393C640();
  if (!v2)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

uint64_t IntelligenceFlowResponseGeneration.Event.ModelInference.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v4)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_193581C2C()
{
  v2 = *v0;
  v3 = v0[1];
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.Event.ModelInference.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowResponseGeneration.Event.SafetyCheck.ruleName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.Event.SafetyCheck.ruleName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Event.SafetyCheck.ruleFailureReason.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.Event.SafetyCheck.ruleFailureReason.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

void __swiftcall IntelligenceFlowResponseGeneration.Event.SafetyCheck.init()(IntelligencePlatformLibrary::IntelligenceFlowResponseGeneration::Event::SafetyCheck *__return_ptr retstr)
{
  retstr->ruleName.value._countAndFlagsBits = 0;
  retstr->ruleName.value._object = 0;
  retstr->isProfanityFiltered.value = 2;
  retstr->ruleFailureReason.value._countAndFlagsBits = 0;
  retstr->ruleFailureReason.value._object = 0;
}

BOOL static IntelligenceFlowResponseGeneration.Event.SafetyCheck.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*(a1 + 8))
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1, a2);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v2 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  result = 0;
  if (v6 != 2 && ((v6 ^ v2) & 1) == 0)
  {
LABEL_15:
    if (v4)
    {
      if (!v7)
      {
        return 0;
      }

      if (v3 != v8 || v4 != v7)
      {
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_46_14();
        if ((sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    return !v7;
  }

  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Event.SafetyCheck.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 16);
  v2 = v0[3];
  v3 = v0[4];
  if (v0[1])
  {
    v4 = *v0;
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (!v3)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

uint64_t IntelligenceFlowResponseGeneration.Event.SafetyCheck.hashValue.getter()
{
  OUTLINED_FUNCTION_51_11();
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.Event.SafetyCheck.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193581F9C()
{
  OUTLINED_FUNCTION_51_11();
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.Event.SafetyCheck.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowResponseGeneration.Event.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.Event.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193582040()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.Event.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_193582108()
{
  result = qword_1EAE3D8F0;
  if (!qword_1EAE3D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D8F0);
  }

  return result;
}

unint64_t sub_193582190()
{
  result = qword_1EAE3D908;
  if (!qword_1EAE3D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D908);
  }

  return result;
}

unint64_t sub_193582218()
{
  result = qword_1EAE3D920;
  if (!qword_1EAE3D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D920);
  }

  return result;
}

unint64_t sub_1935822A0()
{
  result = qword_1EAE3D938;
  if (!qword_1EAE3D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D938);
  }

  return result;
}

unint64_t sub_193582344()
{
  result = qword_1EAE3D940;
  if (!qword_1EAE3D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D940);
  }

  return result;
}

unint64_t sub_1935823E4()
{
  result = qword_1EAE3D950;
  if (!qword_1EAE3D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D950);
  }

  return result;
}

unint64_t sub_193582488()
{
  result = qword_1EAE3D958;
  if (!qword_1EAE3D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D958);
  }

  return result;
}

unint64_t sub_1935824E0()
{
  result = qword_1EAE3D960;
  if (!qword_1EAE3D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D960);
  }

  return result;
}

unint64_t sub_193582538()
{
  result = qword_1EAE3D968;
  if (!qword_1EAE3D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D968);
  }

  return result;
}

unint64_t sub_193582594()
{
  result = qword_1EAE3D970;
  if (!qword_1EAE3D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D970);
  }

  return result;
}

unint64_t sub_1935825EC()
{
  result = qword_1EAE3D978;
  if (!qword_1EAE3D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D978);
  }

  return result;
}

unint64_t sub_193582644()
{
  result = qword_1EAE3D980;
  if (!qword_1EAE3D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D980);
  }

  return result;
}

unint64_t sub_193582748()
{
  result = qword_1EAE3D988;
  if (!qword_1EAE3D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D988);
  }

  return result;
}

unint64_t sub_1935827A0()
{
  result = qword_1EAE3D990;
  if (!qword_1EAE3D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D990);
  }

  return result;
}

unint64_t sub_1935827F8()
{
  result = qword_1EAE3D998;
  if (!qword_1EAE3D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D998);
  }

  return result;
}

unint64_t sub_193582854()
{
  result = qword_1EAE3D9A0;
  if (!qword_1EAE3D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9A0);
  }

  return result;
}

unint64_t sub_1935828AC()
{
  result = qword_1EAE3D9A8;
  if (!qword_1EAE3D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9A8);
  }

  return result;
}

unint64_t sub_193582904()
{
  result = qword_1EAE3D9B0;
  if (!qword_1EAE3D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9B0);
  }

  return result;
}

unint64_t sub_193582960()
{
  result = qword_1EAE3D9B8;
  if (!qword_1EAE3D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9B8);
  }

  return result;
}

unint64_t sub_1935829B8()
{
  result = qword_1EAE3D9C0;
  if (!qword_1EAE3D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9C0);
  }

  return result;
}

unint64_t sub_193582A10()
{
  result = qword_1EAE3D9C8;
  if (!qword_1EAE3D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9C8);
  }

  return result;
}

unint64_t sub_193582A68()
{
  result = qword_1EAE3D9D0;
  if (!qword_1EAE3D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9D0);
  }

  return result;
}

unint64_t sub_193582AF0()
{
  result = qword_1EAE3D9E8;
  if (!qword_1EAE3D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9E8);
  }

  return result;
}

unint64_t sub_193582B48()
{
  result = qword_1EAE3D9F0;
  if (!qword_1EAE3D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9F0);
  }

  return result;
}

unint64_t sub_193582BD0()
{
  result = qword_1EAE3DA08;
  if (!qword_1EAE3DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DA08);
  }

  return result;
}

unint64_t sub_193582C28()
{
  result = qword_1EAE3DA10;
  if (!qword_1EAE3DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DA10);
  }

  return result;
}

unint64_t sub_193582CB0()
{
  result = qword_1EAE3DA28;
  if (!qword_1EAE3DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DA28);
  }

  return result;
}

unint64_t sub_193582D08()
{
  result = qword_1EAE3DA30;
  if (!qword_1EAE3DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DA30);
  }

  return result;
}

unint64_t sub_193582D60()
{
  result = qword_1EAE3DA38;
  if (!qword_1EAE3DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DA38);
  }

  return result;
}

unint64_t sub_193582DB8()
{
  result = qword_1EAE3DA40;
  if (!qword_1EAE3DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DA40);
  }

  return result;
}

void sub_193582E88(uint64_t a1)
{
  OUTLINED_FUNCTION_65_9(a1, &qword_1ED5082C0);
  if (v1 <= 0x3F)
  {
    sub_19349D198();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_65_9(v2, &qword_1ED506AC0);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_65_9(v4, &qword_1ED507A78);
        if (v6 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED506AE0);
          if (v8 <= 0x3F)
          {
            OUTLINED_FUNCTION_65_9(v7, qword_1ED505AF0);
            if (v9 <= 0x3F)
            {
              sub_19349D1FC(319, qword_1ED505B30);
              if (v10 <= 0x3F)
              {
                sub_19349D1FC(319, qword_1ED505A90);
                if (v11 <= 0x3F)
                {
                  sub_19349D1FC(319, &qword_1ED506AE8);
                  if (v12 <= 0x3F)
                  {
                    sub_19349D1FC(319, &qword_1ED506AD8);
                    if (v13 <= 0x3F)
                    {
                      sub_19349D1FC(319, &qword_1ED506AD0);
                      if (v15 <= 0x3F)
                      {
                        OUTLINED_FUNCTION_65_9(v14, qword_1ED505B90);
                        if (v17 <= 0x3F)
                        {
                          OUTLINED_FUNCTION_65_9(v16, qword_1ED505A58);
                          if (v19 <= 0x3F)
                          {
                            OUTLINED_FUNCTION_65_9(v18, qword_1ED5077D0);
                            if (v20 <= 0x3F)
                            {
                              sub_19349D1FC(319, &qword_1ED506AC8);
                              if (v21 <= 0x3F)
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
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_193583148(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for IntelligenceFlowResponseGeneration.FatalError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntelligenceFlowResponseGeneration.FatalError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_193583248(uint64_t a1)
{
  OUTLINED_FUNCTION_2_37(a1, qword_1ED507908);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508070);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_index_42Tm()
{
  OUTLINED_FUNCTION_91_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t __swift_store_extra_inhabitant_index_43Tm()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v0 = OUTLINED_FUNCTION_36();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1935833CC(uint64_t a1)
{
  OUTLINED_FUNCTION_2_37(a1, qword_1ED507908);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1EAE3DA50);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, qword_1ED506E98);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, &qword_1EAE3DA58);
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary0A22FlowResponseGenerationV7RGErrorVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_193583530(uint64_t a1)
{
  OUTLINED_FUNCTION_2_37(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508290);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_139Tm(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v3 = *(a1 + 32);
    OUTLINED_FUNCTION_71();
    if (v6 ^ v7 | v5)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    v10 = OUTLINED_FUNCTION_101(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v10, v11, v12);
  }
}

void __swift_store_extra_inhabitant_index_140Tm()
{
  OUTLINED_FUNCTION_91_0();
  if (v3 == 2147483645)
  {
    *(v1 + 32) = (v0 + 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    v5 = OUTLINED_FUNCTION_101(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_193583818(uint64_t a1)
{
  OUTLINED_FUNCTION_2_37(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1935838DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_19358392C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1935839CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 80))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    v3 = *(a1 + 32);
    OUTLINED_FUNCTION_91_8();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_193583A18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

_BYTE *_s27IntelligencePlatformLibrary34IntelligenceFlowResponseGenerationV12CatalogEndedVwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_193583BA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 37))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    v3 = *(a1 + 24);
    OUTLINED_FUNCTION_91_8();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_193583BF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_193583C5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_193583CD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 >= 0xFC && *(a1 + 97))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 251);
  }

  v3 = *(a1 + 96);
  if (v3 > 4)
  {
    return OUTLINED_FUNCTION_46_4(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_193583D0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_193583D8C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 40);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_193583DD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowResponseGeneration.Event.Fallback(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_193583EA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 24);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_193583EEC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_193583F70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_193583FBC(uint64_t result, unsigned int a2, unsigned int a3)
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
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

__n128 OUTLINED_FUNCTION_39_14()
{
  v2 = v0->n128_u8[8];
  v3 = v0[2].n128_u32[0];
  v4 = v0[2].n128_u8[4];
  *(v1 - 56) = v0->n128_u64[0];
  *(v1 - 48) = v2;
  result = v0[1];
  *(v1 - 40) = result;
  *(v1 - 20) = v4;
  *(v1 - 24) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return sub_193564DF8(a1, a2, a3, a4, a5);
}

BOOL OUTLINED_FUNCTION_42_17@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_19357C4C0(a3, v3, a1, a2, v4);
}

__n128 OUTLINED_FUNCTION_51_11()
{
  v2 = *(v0 + 16);
  *(v1 - 64) = *v0;
  *(v1 - 48) = v2;
  result = *(v0 + 24);
  *(v1 - 40) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_193448804(v10, &a9 - v9, v11, v12);
}

void OUTLINED_FUNCTION_65_9(uint64_t a1, unint64_t *a2)
{

  sub_193583148(319, a2, v2);
}

_BYTE *_s10TranscriptOwst_0(_BYTE *result, int a2, int a3)
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

uint64_t sub_193584430()
{
  v0 = sub_19393C820();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  v6 = sub_19393C810();
  OUTLINED_FUNCTION_9_10(v6);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v10 = sub_19393C4E0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_5_1();
  sub_19343CF00(0, &qword_1EAE3BA78, 0x1E69E9610);
  sub_19393C4D0();
  sub_1934E666C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA88, &qword_1939584B8);
  sub_1934E66C4();
  sub_19393C8A0();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v0);
  result = sub_19393C840();
  qword_1ED510468 = result;
  return result;
}

id sub_19358462C@<X0>(void *a1@<X8>)
{
  v3 = qword_1EAE630F0;
  if (qword_1EAE630F0)
  {
    v4 = qword_1EAE630F0;
LABEL_3:
    *a1 = v4;
    return v3;
  }

  sub_193434304();
  result = sub_19393BF70();
  if (!v1)
  {
    v6 = qword_1EAE630F0;
    qword_1EAE630F0 = result;
    v4 = result;

    v3 = 0;
    goto LABEL_3;
  }

  return result;
}

id sub_1935846F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_193958C00;
  v1 = OUTLINED_FUNCTION_33_12();
  *(v1 + 16) = xmmword_1939583F0;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  *(v1 + 40) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_16_19();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v0 + 32) = result;
  v4 = OUTLINED_FUNCTION_33_12();
  *(v4 + 32) = OUTLINED_FUNCTION_47_15(v4, v5, v6, v7, v8, v9, v10, v11, xmmword_1939583F0);
  *(v4 + 40) = sub_19393C850();
  v12 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_16_19();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v0 + 40) = result;
  v13 = OUTLINED_FUNCTION_33_12();
  *(v13 + 32) = OUTLINED_FUNCTION_47_15(v13, v14, v15, v16, v17, v18, v19, v20, v22);
  *(v13 + 40) = sub_19393C850();
  v21 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000015, 0x8000000193A1FAF0, 6, 1, v13, 14, 3);
  if (result)
  {
    *(v0 + 48) = result;
    qword_1ED5127B8 = v0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t *sub_193584888()
{
  if (qword_1ED50E8E0 != -1)
  {
    OUTLINED_FUNCTION_9_41();
  }

  return &qword_1ED5127B8;
}

id sub_1935848C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_193958C00;
  OUTLINED_FUNCTION_32_17();
  v3 = OUTLINED_FUNCTION_7_28();
  *(v2 + 32) = sub_1934E5F70(v3, 0xE900000000000070, 0xD00000000000002ELL, v0 | 0x8000000000000000, 1);
  v4 = objc_allocWithZone(*(v1 + 664));
  *(v2 + 40) = OUTLINED_FUNCTION_22_20();
  v5 = objc_allocWithZone(*(v1 + 664));
  result = OUTLINED_FUNCTION_22_20();
  *(v2 + 48) = result;
  qword_1EAEA8718 = v2;
  return result;
}

id sub_1935849E0()
{
  v1 = sub_19393C570();
  if (qword_1EAE45C98 != -1)
  {
    OUTLINED_FUNCTION_6_30();
  }

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v2 = sub_19393C6C0();
  v3 = sub_19393C570();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex();
  v10 = OUTLINED_FUNCTION_9_9(v12.super_class, sel_initWithName_fields_streamIdentifier_, v4, v5, v6, v7, v8, v9, v12);

  return v10;
}

id sub_193584AEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v2 = OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_13_15(v2, xmmword_19394FBB0);
  v3 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v4 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  v2[5].n128_u64[1] = v4;
  v2[4].n128_u64[0] = v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v2[7].n128_u64[1] = v4;
  v2[6].n128_u64[0] = v5;
  v6 = OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_13_15(v6, xmmword_19394FBB0);
  v7 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v6[5].n128_u64[1] = v4;
  v6[4].n128_u64[0] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v6[7].n128_u64[1] = v4;
  v6[6].n128_u64[0] = v8;
  if (_MergedGlobals_15 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  sub_19393C830();
  if (v1)
  {
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return OUTLINED_FUNCTION_8_24(v0);
  }
}

id sub_193584EF0()
{
  OUTLINED_FUNCTION_25_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v5 = OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_13_10(v5, xmmword_19394FBB0);
  v6 = OUTLINED_FUNCTION_50_9(objc_allocWithZone(MEMORY[0x1E695DFB0]));
  v7 = OUTLINED_FUNCTION_40_10(v6, &qword_1EAE3BA68);
  v8 = MEMORY[0x1E69E6158];
  v5[2].n128_u64[0] = v6;
  v5[5].n128_u64[1] = v8;
  v5[3].n128_u64[1] = v7;
  v5[4].n128_u64[0] = v4;
  v5[4].n128_u64[1] = v1;
  v9 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  OUTLINED_FUNCTION_15_23();
  v10 = OUTLINED_FUNCTION_49_9();
  v5[7].n128_u64[1] = v7;
  v5[6].n128_u64[0] = v10;
  v11 = OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_2_26(v11, v12, v13, v14, v15, v16, v17, v18, v32, v34, v19);
  v3[4] = [objc_allocWithZone(MEMORY[0x1E695DFB0]) (v0 + 2936)];
  v3[11] = v8;
  v3[7] = v7;
  v3[8] = v4;
  v3[9] = v1;
  v20 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  OUTLINED_FUNCTION_15_23();
  v21 = OUTLINED_FUNCTION_49_9();
  v3[15] = v7;
  v3[12] = v21;
  if (_MergedGlobals_15 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_45_14();
  if (v2)
  {
  }

  else
  {
    v23 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    v31 = OUTLINED_FUNCTION_37_12(v23, v24, v25, v26, v27, v28, v29, v30, v33, v35);
    return OUTLINED_FUNCTION_8_24(v31);
  }
}

id sub_1935852B0()
{
  OUTLINED_FUNCTION_25_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v5 = OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_13_10(v5, xmmword_19394FBB0);
  v6 = OUTLINED_FUNCTION_50_9(objc_allocWithZone(MEMORY[0x1E695DFB0]));
  v7 = OUTLINED_FUNCTION_40_10(v6, &qword_1EAE3BA68);
  OUTLINED_FUNCTION_44_13(v7);
  v5[2].n128_u64[0] = v6;
  v5[4].n128_u64[0] = [objc_allocWithZone(MEMORY[0x1E695DFB0]) (v0 + 2936)];
  v8 = MEMORY[0x1E69E6158];
  v5[7].n128_u64[1] = MEMORY[0x1E69E6158];
  v5[5].n128_u64[1] = v4;
  v5[6].n128_u64[0] = v3;
  v5[6].n128_u64[1] = v1;
  v9 = OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_2_26(v9, v10, v11, v12, v13, v14, v15, v16, v31, v33, v17);
  v18 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  OUTLINED_FUNCTION_15_23();
  v19 = OUTLINED_FUNCTION_49_9();
  OUTLINED_FUNCTION_41_14(v19);
  v2[8] = [objc_allocWithZone(MEMORY[0x1E695DFB0]) (v0 + 2936)];
  v2[15] = v8;
  v2[11] = v4;
  v2[12] = v3;
  v2[13] = v1;
  v20 = _MergedGlobals_15;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_46_15();
  if (v20)
  {
  }

  else
  {
    v22 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    v30 = OUTLINED_FUNCTION_37_12(v22, v23, v24, v25, v26, v27, v28, v29, v32, v34);
    return OUTLINED_FUNCTION_8_24(v30);
  }
}

id sub_193585668(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  HIDWORD(v56) = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_19394FBB0;
  if (a2)
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v17 + 56) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v17 + 32) = v18;
  }

  else
  {
    v58 = MEMORY[0x1E69E63B0];
    *&v57 = a1;
    sub_193495EE0(&v57, (v17 + 32));
  }

  v19 = MEMORY[0x1E69E6158];
  if (a6)
  {
    v58 = MEMORY[0x1E69E6158];
    *&v57 = a5;
    *(&v57 + 1) = a6;
    sub_193495EE0(&v57, (v17 + 64));
  }

  else
  {
    OUTLINED_FUNCTION_15_28();
    v20 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) &selRef_entityIdentifier];
    *(v17 + 88) = OUTLINED_FUNCTION_14_11(v20, &qword_1EAE3BA68);
    *(v17 + 64) = v20;
    if (v58)
    {
      sub_19344E680(&v57, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  if (*(&a9 + 1))
  {
    v58 = v19;
    v57 = a9;
    sub_193495EE0(&v57, (v17 + 96));
  }

  else
  {
    OUTLINED_FUNCTION_15_28();
    v10 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

    v21 = [v10 &selRef_entityIdentifier];
    *(v17 + 120) = OUTLINED_FUNCTION_14_11(v21, &qword_1EAE3BA68);
    *(v17 + 96) = v21;
    if (v58)
    {
      sub_19344E680(&v57, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  v22 = swift_allocObject();
  OUTLINED_FUNCTION_42_18(v22, v23, v24, v25, v26, v27, v28, v29, v47, v49, a3, a7, v30);
  if (v31)
  {
    OUTLINED_FUNCTION_15_28();
    v10 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

    v32 = [v10 &selRef_entityIdentifier];
    v33 = OUTLINED_FUNCTION_14_11(v32, &qword_1EAE3BA68);
    *(v16 + 56) = v33;
    *(v16 + 32) = v32;
    if (v58)
    {
      v33 = sub_19344E680(&v57, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  else
  {
    v58 = MEMORY[0x1E69E63B0];
    *&v57 = v52;
    sub_193495EE0(&v57, (v16 + 32));
  }

  if (a8)
  {
    v58 = v19;
    OUTLINED_FUNCTION_48_10(v33, v34, v35, v36, v37, v38, v39, v40, v48, v50, v52, v54, 3, 6, v55, v56, v57);
  }

  else
  {
    OUTLINED_FUNCTION_15_28();
    v41 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) &selRef_entityIdentifier];
    *(v16 + 88) = OUTLINED_FUNCTION_14_11(v41, &qword_1EAE3BA68);
    *(v16 + 64) = v41;
    if (v58)
    {
      sub_19344E680(&v57, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  if (*(&a10 + 1))
  {
    v58 = v19;
    v57 = a10;
    sub_193495EE0(&v57, (v16 + 96));
  }

  else
  {
    OUTLINED_FUNCTION_15_28();
    v42 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
    OUTLINED_FUNCTION_15_23();
    v43 = [v10 &selRef_entityIdentifier];
    *(v16 + 120) = OUTLINED_FUNCTION_14_11(v43, &qword_1EAE3BA68);
    *(v16 + 96) = v43;
    if (v58)
    {
      sub_19344E680(&v57, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  v44 = _MergedGlobals_15;

  if (v44 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_36_13();
  if (v44)
  {
  }

  else
  {
    v46 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return OUTLINED_FUNCTION_19_24(v50);
  }
}

id sub_193585B04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1939583F0;
  OUTLINED_FUNCTION_32_17();
  v3 = OUTLINED_FUNCTION_7_28();
  *(v2 + 32) = sub_1934E5F70(v3, 0xE900000000000070, 0xD00000000000002ELL, v0 | 0x8000000000000000, 1);
  v4 = objc_allocWithZone(*(v1 + 664));
  result = sub_1934E5F70(0x6449746E657665, 0xE700000000000000, 0x6449746E657665, 0xE700000000000000, 2);
  *(v2 + 40) = result;
  qword_1EAEA8710 = v2;
  return result;
}

id sub_193585BF4()
{
  v1 = sub_19393C570();
  if (qword_1EAE45C90 != -1)
  {
    OUTLINED_FUNCTION_10_27();
  }

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v2 = sub_19393C6C0();
  v3 = sub_19393C570();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_EventIDIndex();
  v10 = OUTLINED_FUNCTION_9_9(v12.super_class, sel_initWithName_fields_streamIdentifier_, v4, v5, v6, v7, v8, v9, v12);

  return v10;
}

id sub_193585D34()
{
  OUTLINED_FUNCTION_25_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v3 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_13_10(v3, xmmword_19394FBE0);
  v4 = OUTLINED_FUNCTION_50_9(objc_allocWithZone(MEMORY[0x1E695DFB0]));
  v5 = OUTLINED_FUNCTION_40_10(v4, &qword_1EAE3BA68);
  v3[2].n128_u64[0] = v4;
  v6 = MEMORY[0x1E69E6158];
  v3[5].n128_u64[1] = MEMORY[0x1E69E6158];
  v3[3].n128_u64[1] = v5;
  v3[4].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v0;
  v7 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_2_26(v7, v8, v9, v10, v11, v12, v13, v14, v28, v30, v15);
  v16 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  OUTLINED_FUNCTION_15_23();
  v2[4] = OUTLINED_FUNCTION_49_9();
  v2[11] = v6;
  v2[7] = v5;
  v2[8] = v1;
  v2[9] = v0;
  v17 = _MergedGlobals_15;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_46_15();
  if (v17)
  {
  }

  else
  {
    v19 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    v27 = OUTLINED_FUNCTION_37_12(v19, v20, v21, v22, v23, v24, v25, v26, v29, v31);
    return OUTLINED_FUNCTION_8_24(v27);
  }
}

id sub_19358609C(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  HIDWORD(v51) = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v13 = OUTLINED_FUNCTION_11_15();
  *(v13 + 16) = xmmword_19394FBE0;
  if (a2)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v13 + 56) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v13 + 32) = v14;
  }

  else
  {
    v53 = MEMORY[0x1E69E63B0];
    *&v52 = a1;
    sub_193495EE0(&v52, (v13 + 32));
  }

  v15 = MEMORY[0x1E69E6158];
  v16 = a8;
  if (a6)
  {
    v53 = MEMORY[0x1E69E6158];
    *&v52 = a5;
    *(&v52 + 1) = a6;
    sub_193495EE0(&v52, (v13 + 64));
  }

  else
  {
    OUTLINED_FUNCTION_15_28();
    v17 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) &selRef_entityIdentifier];
    *(v13 + 88) = OUTLINED_FUNCTION_27_16(v17, &qword_1EAE3BA68);
    *(v13 + 64) = v17;
    if (v53)
    {
      sub_19344E680(&v52, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  v18 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_42_18(v18, v19, v20, v21, v22, v23, v24, v25, v42, a3, a5, a7, v26);
  if (v27)
  {
    OUTLINED_FUNCTION_15_28();
    v28 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

    v29 = [v28 &selRef_entityIdentifier];
    v30 = OUTLINED_FUNCTION_27_16(v29, &qword_1EAE3BA68);
    *(v12 + 56) = v30;
    *(v12 + 32) = v29;
    if (v53)
    {
      v30 = sub_19344E680(&v52, &qword_1EAE3BA70, &qword_193958408);
    }

    if (v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v53 = MEMORY[0x1E69E63B0];
    *&v52 = v45;
    sub_193495EE0(&v52, (v12 + 32));

    if (v16)
    {
LABEL_12:
      v53 = v15;
      OUTLINED_FUNCTION_48_10(v30, v31, v32, v33, v34, v35, v36, v37, v43, v45, v47, v49, 2, 4, v50, v51, v52);
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_15_28();
  v38 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) &selRef_entityIdentifier];
  *(v12 + 88) = OUTLINED_FUNCTION_27_16(v38, &qword_1EAE3BA68);
  *(v12 + 64) = v38;
  if (v53)
  {
    sub_19344E680(&v52, &qword_1EAE3BA70, &qword_193958408);
  }

LABEL_16:
  v39 = _MergedGlobals_15;

  if (v39 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_36_13();
  if (v39)
  {
  }

  else
  {
    v41 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return OUTLINED_FUNCTION_19_24(v43);
  }
}

void sub_193586404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  sub_19393C580();
  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  sub_19393C6D0();
  v7 = sub_19393C580();
  a6(v7);
  __break(1u);
}

id sub_193586480()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1939583F0;
  OUTLINED_FUNCTION_32_17();
  v3 = OUTLINED_FUNCTION_7_28();
  *(v2 + 32) = sub_1934E5F70(v3, v4 + 12, v5 | 0xC, v0 | 0x8000000000000000, 1);
  v6 = objc_allocWithZone(*(v1 + 664));
  result = sub_1934E5F70(0x496E6F6973736573, 0xE900000000000064, 0xD000000000000022, 0x8000000193A1FA00, 6);
  *(v2 + 40) = result;
  qword_1EAEA8708 = v2;
  return result;
}

id sub_19358658C()
{
  v1 = sub_19393C570();
  if (qword_1EAE45C88 != -1)
  {
    OUTLINED_FUNCTION_14_25();
  }

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v2 = sub_19393C6C0();
  v3 = sub_19393C570();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_SessionIDIndex();
  v10 = OUTLINED_FUNCTION_9_9(v12.super_class, sel_initWithName_fields_streamIdentifier_, v4, v5, v6, v7, v8, v9, v12);

  return v10;
}

id sub_193586674()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v2 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_13_15(v2, xmmword_19394FBE0);
  v3 = OUTLINED_FUNCTION_50_9(objc_allocWithZone(MEMORY[0x1E695DFB0]));
  v4 = OUTLINED_FUNCTION_40_10(v3, &qword_1EAE3BA68);
  v2[5].n128_u64[1] = v4;
  v2[4].n128_u64[0] = v3;
  v5 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_13_15(v5, xmmword_19394FBE0);
  v6 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) (v0 + 2936)];
  v5[5].n128_u64[1] = v4;
  v5[4].n128_u64[0] = v6;
  if (_MergedGlobals_15 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  sub_19393C830();
  if (v1)
  {
  }

  else
  {
    objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v8, v2, v5, v9);
  }
}

id sub_19358680C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v9 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_13_10(v9, xmmword_19394FBE0);
  v10 = MEMORY[0x1E69E63B0];
  if (a2)
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v9 + 56) = OUTLINED_FUNCTION_39_15(v11, &qword_1EAE3BA68);
    *(v9 + 32) = v11;
  }

  else
  {
    *(&v23 + 1) = MEMORY[0x1E69E63B0];
    *&v22 = a1;
    sub_193495EE0(&v22, (v9 + 32));
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v13 = OUTLINED_FUNCTION_39_15(v12, &qword_1EAE3BA68);
  *(v9 + 88) = v13;
  *(v9 + 64) = v12;
  v14 = OUTLINED_FUNCTION_11_15();
  *(v14 + 16) = v21;
  if (a4)
  {
    v22 = 0u;
    v23 = 0u;
    v15 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v14 + 56) = v13;
    *(v14 + 32) = v15;
    if (*(&v23 + 1))
    {
      sub_19344E680(&v22, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  else
  {
    *(&v23 + 1) = v10;
    *&v22 = a3;
    sub_193495EE0(&v22, (v14 + 32));
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(v14 + 88) = v13;
  *(v14 + 64) = v16;
  if (_MergedGlobals_15 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_36_13();
  if (v4)
  {
  }

  else
  {
    v18 = v22;
    v19 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v20, v9, v14, v18);
  }
}

id sub_193586A44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v4 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_13_10(v4, xmmword_19394FBE0);
  v5 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v6 = OUTLINED_FUNCTION_27_16(v5, &qword_1EAE3BA68);
  OUTLINED_FUNCTION_44_13(v6);
  v4[2].n128_u64[0] = v5;
  v7 = sub_19393BE60();
  v4[5].n128_u64[1] = v7;
  __swift_allocate_boxed_opaque_existential_1Tm(&v4[4]);
  OUTLINED_FUNCTION_9_10(v7);
  v9 = *(v8 + 16);
  v9();
  v10 = OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_2_26(v10, v11, v12, v13, v14, v15, v16, v17, v30, v32, v18);
  OUTLINED_FUNCTION_41_14([objc_allocWithZone(MEMORY[0x1E695DFB0]) init]);
  *(v3 + 88) = v7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v3 + 64));
  (v9)(boxed_opaque_existential_1Tm, a1, v7);
  if (_MergedGlobals_15 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_45_14();
  if (v1)
  {
  }

  else
  {
    v21 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    v29 = OUTLINED_FUNCTION_37_12(v21, v22, v23, v24, v25, v26, v27, v28, v31, v33);
    return OUTLINED_FUNCTION_8_24(v29);
  }
}

id sub_193586C04(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v11 = OUTLINED_FUNCTION_11_15();
  v25 = xmmword_19394FBE0;
  *(v11 + 16) = xmmword_19394FBE0;
  v12 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v13 = OUTLINED_FUNCTION_40_10(v12, &qword_1EAE3BA68);
  *(v11 + 56) = v13;
  *(v11 + 32) = v12;
  sub_193458F7C(a1, v10);
  v14 = sub_19393BE60();
  if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
  {
    sub_19344E680(v10, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_30_12();
    v15 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v11 + 88) = v13;
    *(v11 + 64) = v15;
    if (v27)
    {
      sub_19344E680(v26, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  else
  {
    v27 = v14;
    __swift_allocate_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_9_10(v14);
    (*(v16 + 32))();
    sub_193495EE0(v26, (v11 + 64));
  }

  v17 = OUTLINED_FUNCTION_11_15();
  *(v17 + 16) = v25;
  v18 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(v17 + 56) = v13;
  *(v17 + 32) = v18;
  sub_193458F7C(a2, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v14) == 1)
  {
    sub_19344E680(v2, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_30_12();
    v19 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v17 + 88) = v13;
    *(v17 + 64) = v19;
    if (v27)
    {
      sub_19344E680(v26, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  else
  {
    v27 = v14;
    __swift_allocate_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_9_10(v14);
    (*(v20 + 32))();
    sub_193495EE0(v26, (v17 + 64));
  }

  if (_MergedGlobals_15 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_36_13();
  if (v3)
  {
  }

  else
  {
    v22 = v26[0];
    v23 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v24[1], v11, v17, v22);
  }
}

id sub_193586F84(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v31 = a6;
  v30 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v16 = OUTLINED_FUNCTION_11_15();
  v29 = xmmword_19394FBE0;
  *(v16 + 16) = xmmword_19394FBE0;
  if (a2)
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v16 + 56) = OUTLINED_FUNCTION_27_16(v17, &qword_1EAE3BA68);
    *(v16 + 32) = v17;
  }

  else
  {
    v33 = MEMORY[0x1E69E63B0];
    v32[0] = a1;
    sub_193495EE0(v32, (v16 + 32));
  }

  sub_193458F7C(a5, v15);
  v18 = sub_19393BE60();
  if (__swift_getEnumTagSinglePayload(v15, 1, v18) == 1)
  {
    sub_19344E680(v15, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_30_12();
    v19 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v16 + 88) = OUTLINED_FUNCTION_27_16(v19, &qword_1EAE3BA68);
    *(v16 + 64) = v19;
    if (v33)
    {
      sub_19344E680(v32, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  else
  {
    v33 = v18;
    __swift_allocate_boxed_opaque_existential_1Tm(v32);
    OUTLINED_FUNCTION_9_10(v18);
    (*(v20 + 32))();
    sub_193495EE0(v32, (v16 + 64));
  }

  v21 = OUTLINED_FUNCTION_11_15();
  *(v21 + 16) = v29;
  if (v30)
  {
    OUTLINED_FUNCTION_30_12();
    v22 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v21 + 56) = OUTLINED_FUNCTION_27_16(v22, &qword_1EAE3BA68);
    *(v21 + 32) = v22;
    if (v33)
    {
      sub_19344E680(v32, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  else
  {
    v33 = MEMORY[0x1E69E63B0];
    v32[0] = v28;
    sub_193495EE0(v32, (v21 + 32));
  }

  sub_193458F7C(v31, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v18) == 1)
  {
    sub_19344E680(v6, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_30_12();
    v23 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v21 + 88) = OUTLINED_FUNCTION_27_16(v23, &qword_1EAE3BA68);
    *(v21 + 64) = v23;
    if (v33)
    {
      sub_19344E680(v32, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  else
  {
    v33 = v18;
    __swift_allocate_boxed_opaque_existential_1Tm(v32);
    OUTLINED_FUNCTION_9_10(v18);
    (*(v24 + 32))();
    sub_193495EE0(v32, (v21 + 64));
  }

  if (_MergedGlobals_15 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_36_13();
  if (v7)
  {
  }

  else
  {
    v26 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return OUTLINED_FUNCTION_19_24(v27);
  }
}

id sub_19358740C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t *sub_19358747C()
{
  if (qword_1ED510470 != -1)
  {
    swift_once();
  }

  return &qword_1ED510478;
}

uint64_t *sub_193587518()
{
  if (qword_1ED510480 != -1)
  {
    swift_once();
  }

  return &qword_1ED510488;
}

uint64_t sub_1935875B4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = objc_allocWithZone(a2());
  result = a3();
  *a4 = result;
  return result;
}

uint64_t *sub_1935875FC()
{
  if (qword_1ED510490 != -1)
  {
    swift_once();
  }

  return &qword_1ED510498;
}

_BYTE *_s7IndexesOwst_1(_BYTE *result, int a2, int a3)
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

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.indexSearch(datestamp:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 88))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.indexSearch(startDatestamp:endDatestamp:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_10_14();
  return v5();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.indexSearch(clientSessionIdentifier:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.indexSearch(startClientSessionIdentifier:endClientSessionIdentifier:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 112))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.indexSearch(clientRequestIdentifier:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 120))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.indexSearch(startClientRequestIdentifier:endClientRequestIdentifier:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 128))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.indexSearch(startDatestamp:endDatestamp:startClientSessionIdentifier:endClientSessionIdentifier:startClientRequestIdentifier:endClientRequestIdentifier:)()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  OUTLINED_FUNCTION_10_14();
  return v6(v2, v3, v4, v5);
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_EventIDIndex.indexSearch(datestamp:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 88))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_EventIDIndex.indexSearch(startDatestamp:endDatestamp:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_10_14();
  return v5();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_EventIDIndex.indexSearch(eventId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_EventIDIndex.indexSearch(startEventId:endEventId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 112))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_EventIDIndex.indexSearch(startDatestamp:endDatestamp:startEventId:endEventId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  v4 = *(v3 + 120);
  OUTLINED_FUNCTION_10_14();
  return v5();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_SessionIDIndex.indexSearch(datestamp:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 88))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_SessionIDIndex.indexSearch(startDatestamp:endDatestamp:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_10_14();
  return v5();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_SessionIDIndex.indexSearch(sessionId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_SessionIDIndex.indexSearch(startSessionId:endSessionId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  return (*(v3 + 112))();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_SessionIDIndex.indexSearch(startDatestamp:endDatestamp:startSessionId:endSessionId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  v4 = *(v3 + 120);
  OUTLINED_FUNCTION_10_14();
  return v5();
}

uint64_t OUTLINED_FUNCTION_36_13()
{
  v2 = *(v0 - 72);

  return sub_19393C830();
}

uint64_t OUTLINED_FUNCTION_39_15(uint64_t a1, unint64_t *a2)
{

  return sub_19343CF00(0, a2, v2);
}

uint64_t OUTLINED_FUNCTION_41_14(uint64_t result)
{
  *(v1 + 56) = v2;
  *(v1 + 32) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_42_18(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  a1[1] = a13;
  return result;
}

_OWORD *OUTLINED_FUNCTION_48_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{
  *&a17 = a12;
  *(&a17 + 1) = v17;

  return sub_193495EE0(&a17, (v18 + 64));
}

id OUTLINED_FUNCTION_49_9()
{

  return [v1 (v0 + 2936)];
}

uint64_t sub_193587D1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5104B8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5104B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.IntelligenceFlow.Transcript.Datastream.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1000 maxEventCount:604800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_16 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5104B8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA60, &qword_193966810);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 1, 0, 0, 0xD00000000000002CLL, 0x8000000193A1FB40, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_19358810C()
{
  v0 = static Library.Streams.IntelligenceFlow.Transcript.Datastream.configuration.getter();
  v1 = [v0 streamIdentifier];

  v2 = static Library.Streams.IntelligenceFlow.Transcript.Datastream.configuration.getter();
  v3 = [v2 streamIdentifier];

  v4 = sub_19393C580();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_193950B10;
  result = BMEventTimestampSQLColumn();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v7 + 32) = result;
  v9 = static IntelligenceFlowTranscriptDatastreamEvent.columns.getter();
  sub_19343D230(v9);
  v10 = v7;
  result = BMEventBookmarkSQLColumns();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  sub_193441130();
  v12 = sub_19393C6D0();

  sub_19343D230(v12);
  v13 = *sub_193584888();

  sub_19343D230(v14);
  v15 = objc_allocWithZone(MEMORY[0x1E698F2F0]);
  result = sub_1934412DC(v4, v6, v10);
  if (result)
  {
    v16 = result;
    v17 = static Library.Streams.IntelligenceFlow.Transcript.Datastream.configuration.getter();
    v18 = [objc_allocWithZone(MEMORY[0x1E698F320]) initWithIdentifier:v1 schema:v16 configuration:v17];

    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.Transcript.Datastream.attribute(_:)(void (*a1)(void))
{
  result = sub_1935882F0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19358832C(void (*a1)(void))
{
  result = sub_1935882F0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193588394(uint64_t a1)
{
  result = sub_1935883BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1935883BC()
{
  result = qword_1EAE3A950;
  if (!qword_1EAE3A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A950);
  }

  return result;
}

_BYTE *_s10DatastreamOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowTranscriptDatastreamEvent.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v28 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA68, &qword_193966888);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  sub_193588688(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3DA68, &qword_193966888);
  sub_19393C250();
  (*(v4 + 8))(v9, v28);
  sub_19344E6DC(v22, &qword_1EAE3DA68, &qword_193966888);
  OUTLINED_FUNCTION_27();
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_193588688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static IntelligenceFlowTranscriptDatastreamEvent.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA68, &qword_193966888);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v33, &qword_1EAE3DA68, &qword_193966888);
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_4_31();
    sub_193589418(v32, v24, v34);
  }

  OUTLINED_FUNCTION_27();
}

void static IntelligenceFlowTranscriptDatastreamEvent.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v39 = v3;
  v40 = v2;
  v38 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA68, &qword_193966888);
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_1();
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v37 - v24;
  if (*sub_19358AE78() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(v10, v8);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    sub_19393C280();
    (*(v18 + 8))(v25, v15);
    if (!v0)
    {
      OUTLINED_FUNCTION_4_31();
      v30 = v39;
      sub_193589418(v1, v39, v31);
      v32 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
      v33 = *(v32 + 20);
      sub_19344E6DC(v30 + v33, &qword_1EAE3A9E8, &qword_19394F800);
      v34 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v34);
      (*(v35 + 16))(v30 + v33, v38, v34);
      __swift_storeEnumTagSinglePayload(v30 + v33, 0, 1, v34);
      v36 = *(v32 + 24);
      sub_19344E6DC(v30 + v36, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v40, v30 + v36);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v29 = v6;
    *(v29 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.serialize()()
{
  v2 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA68, &qword_193966888);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_193588688(v0, v1);
  sub_1934470C8(v1, v2, v11);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v12, &qword_1EAE3DA68, &qword_193966888);
  v13 = sub_19393C290();
  sub_19344E6DC(v11, &qword_1EAE3DA68, &qword_193966888);
  return v13;
}

id static IntelligenceFlowTranscriptDatastreamEvent.columns.getter()
{
  v69 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v9 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000011, 0x8000000193A179B0, 3, 0, v0, 0, 1);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v19 = OUTLINED_FUNCTION_2_4(inited, v12, v13, v14, v15, v16, v17, v18, xmmword_193950B10);
  OUTLINED_FUNCTION_2_13(v19, v20, v21, v22, v23, v24, v25, v26, v27);
  v19[2].n128_u64[0] = sub_19393C850();
  v28 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v29 = OUTLINED_FUNCTION_16_5();
  result = OUTLINED_FUNCTION_3_5(v29 | 0x64497400000000, 0xE700000000000000);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  v30 = swift_initStackObject();
  v38 = OUTLINED_FUNCTION_2_4(v30, v31, v32, v33, v34, v35, v36, v37, v67);
  OUTLINED_FUNCTION_2_13(v38, v39, v40, v41, v42, v43, v44, v45, v46);
  v38[2].n128_u64[0] = sub_19393C850();
  v47 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v48 = OUTLINED_FUNCTION_16_5();
  result = OUTLINED_FUNCTION_3_5(v48 | 0x7079547400000000, 0xE900000000000065);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v49 = swift_initStackObject();
  v57 = OUTLINED_FUNCTION_2_4(v49, v50, v51, v52, v53, v54, v55, v56, v68);
  OUTLINED_FUNCTION_2_13(v57, v58, v59, v60, v61, v62, v63, v64, v65);
  v57[2].n128_u64[0] = sub_19393C850();
  v66 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(1635017060, 0xE400000000000000, 4, 0, v57, 14, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v69;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_193588ED0()
{
  OUTLINED_FUNCTION_26();
  v54 = v2;
  v55 = v0;
  v4 = v3;
  v6 = v5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_1();
  v9 = type metadata accessor for MonotonicTimestamp();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  v20 = sub_19393BE00();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_1();
  v28 = v27 - v26;
  v52 = v6;
  v53 = v4;
  v29 = v6 == 0xD000000000000011 && 0x8000000193A179B0 == v4;
  if (v29 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v30 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
    sub_1934486F8(v55 + *(v30 + 28), v19, &qword_1EAE3A9E8, &qword_19394F800);
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
    {
      sub_19344E6DC(v19, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = v54;
      *v54 = 0u;
      *(v31 + 1) = 0u;
    }

    else
    {
      (*(v23 + 32))(v28, v19, v20);
      sub_1934948FC();
      (*(v23 + 8))(v28, v20);
    }

    goto LABEL_9;
  }

  v32 = v52 == 0xD000000000000012 && 0x8000000193A17A30 == v53;
  if (v32 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v33 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
    sub_1934486F8(v55 + *(v33 + 32), v1, &qword_1EAE3B498, &unk_193959120);
    if (__swift_getEnumTagSinglePayload(v1, 1, v9) == 1)
    {
      sub_19344E6DC(v1, &qword_1EAE3B498, &unk_193959120);
      v34 = v54;
      *v54 = 0u;
      *(v34 + 1) = 0u;
    }

    else
    {
      sub_193589418(v1, v15, type metadata accessor for MonotonicTimestamp);
      sub_193494798(v9, &off_1F07BD958, v54);
      sub_193589478(v15);
    }

    goto LABEL_9;
  }

  v35 = v52 == 0x696669746E656469 && v53 == 0xEB00000000737265;
  if (v35 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v36 = *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent() + 36);
    v37 = type metadata accessor for IntelligenceFlowIdentifiers();
    sub_193494798(v37, &off_1F07C27B8, v54);
    goto LABEL_9;
  }

  v38 = v52 == (OUTLINED_FUNCTION_16_5() | 0x64497400000000) && v53 == 0xE700000000000000;
  if (v38 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v39 = *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent() + 40);
LABEL_30:
    v40 = (v55 + v39);
    v42 = *v40;
    v41 = v40[1];
    v56 = v42;
    v57 = v41;
    sub_1934948FC();
    goto LABEL_9;
  }

  v44 = v52 == (OUTLINED_FUNCTION_16_5() | 0x7079547400000000) && v53 == v43;
  if (v44 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v39 = *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent() + 44);
    goto LABEL_30;
  }

  v45 = v52 == 1635017060 && v53 == 0xE400000000000000;
  if (v45 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v46 = (v55 + *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent() + 48));
    v47 = v46[1];
    v56 = *v46;
    v57 = v47;
    sub_193450688(v56, v47);
    sub_1934948FC();
    sub_193446A6C(v56, v57);
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    v49 = v48;
    v50 = v53;
    *v48 = v52;
    v48[1] = v50;
    v48[5] = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v49 + 2);
    sub_193588688(v55, boxed_opaque_existential_1Tm);
    *(v49 + 48) = 1;
    swift_willThrow();
  }

LABEL_9:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193589418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_193589478(uint64_t a1)
{
  v2 = type metadata accessor for MonotonicTimestamp();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double IntelligenceFlowTranscriptDatastreamEvent.init()@<D0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19344B814();
  v6 = v2[8];
  sub_19344BA58();
  *a1 = *sub_19358AE78();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v7 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v7);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v7);
  sub_19344E6DC(a1 + v6, &qword_1EAE3B498, &unk_193959120);
  v8 = type metadata accessor for MonotonicTimestamp();
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v8);
  IntelligenceFlowIdentifiers.init()(a1 + v2[9]);
  v9 = (a1 + v2[10]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (a1 + v2[11]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  result = 0.0;
  *(a1 + v2[12]) = xmmword_193950F80;
  return result;
}

uint64_t static IntelligenceFlowTranscriptDatastreamEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v79 = type metadata accessor for MonotonicTimestamp();
  v4 = OUTLINED_FUNCTION_4_1(v79);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v74 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v74 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1(v76);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v74 - v17;
  v18 = sub_19393BE00();
  v19 = OUTLINED_FUNCTION_0(v18);
  v81 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_1();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v74 - v30;
  v32 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430) - 8);
  v33 = *(*v32 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v74 - v35;
  v78 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
  v37 = *(v78 + 28);
  v38 = v32[14];
  v80 = a1;
  sub_1934486F8(a1 + v37, v36, &qword_1EAE3A9E8, &qword_19394F800);
  sub_1934486F8(a2 + v37, &v36[v38], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(v36);
  if (v39)
  {
    OUTLINED_FUNCTION_31(&v36[v38]);
    if (v39)
    {
      sub_19344E6DC(v36, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_11;
    }

LABEL_9:
    v40 = &qword_1EAE3B968;
    v41 = &qword_193972430;
    v42 = v36;
LABEL_19:
    sub_19344E6DC(v42, v40, v41);
    goto LABEL_20;
  }

  sub_1934486F8(v36, v31, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(&v36[v38]);
  if (v39)
  {
    (*(v81 + 8))(v31, v18);
    goto LABEL_9;
  }

  v43 = v81;
  (*(v81 + 32))(v25, &v36[v38], v18);
  OUTLINED_FUNCTION_3_35();
  sub_193589FA0(v44, v45);
  v46 = sub_19393C550();
  v47 = *(v43 + 8);
  v47(v25, v18);
  v47(v31, v18);
  sub_19344E6DC(v36, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v46 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v49 = v77;
  v48 = v78;
  v50 = *(v78 + 32);
  v51 = *(v76 + 48);
  sub_1934486F8(v80 + v50, v77, &qword_1EAE3B498, &unk_193959120);
  sub_1934486F8(a2 + v50, v49 + v51, &qword_1EAE3B498, &unk_193959120);
  if (__swift_getEnumTagSinglePayload(v49, 1, v79) == 1)
  {
    OUTLINED_FUNCTION_31(v49 + v51);
    if (!v39)
    {
      goto LABEL_18;
    }

    sub_19344E6DC(v49, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    v52 = v75;
    sub_1934486F8(v49, v75, &qword_1EAE3B498, &unk_193959120);
    OUTLINED_FUNCTION_31(v49 + v51);
    if (v39)
    {
      sub_193589478(v52);
LABEL_18:
      v40 = &qword_1EAE3B958;
      v41 = &qword_193957B50;
      v42 = v49;
      goto LABEL_19;
    }

    v55 = v49 + v51;
    v56 = v74;
    sub_193589F3C(v55, v74);
    OUTLINED_FUNCTION_2_38();
    sub_193589FA0(v57, v58);
    v59 = sub_19393C550();
    sub_193589478(v56);
    sub_193589478(v52);
    sub_19344E6DC(v49, &qword_1EAE3B498, &unk_193959120);
    if ((v59 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v60 = v48[9];
  type metadata accessor for IntelligenceFlowIdentifiers();
  OUTLINED_FUNCTION_1_39();
  sub_193589FA0(v61, v62);
  if (sub_19393C550())
  {
    v63 = OUTLINED_FUNCTION_6_31(v48[10]);
    v67 = v63 == v66 && v64 == v65;
    if (v67 || (sub_19393CA30() & 1) != 0)
    {
      v68 = OUTLINED_FUNCTION_6_31(v48[11]);
      v72 = v68 == v71 && v69 == v70;
      if (v72 || (sub_19393CA30() & 1) != 0)
      {
        v73 = OUTLINED_FUNCTION_6_31(v48[12]);
        v53 = MEMORY[0x193B172A0](v73);
        return v53 & 1;
      }
    }
  }

LABEL_20:
  v53 = 0;
  return v53 & 1;
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.hash(into:)()
{
  v1 = v0;
  v39 = type metadata accessor for MonotonicTimestamp();
  v2 = OUTLINED_FUNCTION_4_1(v39);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v38 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = sub_19393BE00();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v38 - v26;
  v28 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
  sub_1934486F8(v1 + v28[7], v27, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v27, 1, v13) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    (*(v16 + 32))(v21, v27, v13);
    sub_19393CAD0();
    OUTLINED_FUNCTION_3_35();
    sub_193589FA0(v29, v30);
    sub_19393C540();
    (*(v16 + 8))(v21, v13);
  }

  sub_1934486F8(v1 + v28[8], v12, &qword_1EAE3B498, &unk_193959120);
  if (__swift_getEnumTagSinglePayload(v12, 1, v39) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v31 = v38;
    sub_193589F3C(v12, v38);
    sub_19393CAD0();
    OUTLINED_FUNCTION_2_38();
    sub_193589FA0(v32, v33);
    sub_19393C540();
    sub_193589478(v31);
  }

  v34 = v28[9];
  type metadata accessor for IntelligenceFlowIdentifiers();
  OUTLINED_FUNCTION_1_39();
  sub_193589FA0(v35, v36);
  sub_19393C540();
  OUTLINED_FUNCTION_8_34(v28[10]);
  sub_19393C640();
  OUTLINED_FUNCTION_8_34(v28[11]);
  sub_19393C640();
  OUTLINED_FUNCTION_8_34(v28[12]);
  return sub_19393BD50();
}

uint64_t sub_193589F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTimestamp();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_193589FA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_193589FE8()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA580);
  __swift_project_value_buffer(v0, qword_1EAEAA580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1939526E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "absoluteTimestamp";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  v10(v6, v7, v8);
  v11 = OUTLINED_FUNCTION_3_1(v5 + v2);
  *v12 = 2;
  v13 = OUTLINED_FUNCTION_5_4(v11, "monotonicTimestamp");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v5 + 2 * v2);
  *v15 = 3;
  v16 = OUTLINED_FUNCTION_5_4(v14, "identifiers");
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v5 + 3 * v2);
  *v18 = 4;
  v19 = OUTLINED_FUNCTION_5_4(v17, "eventId");
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v5 + 4 * v2);
  *v21 = 5;
  v22 = OUTLINED_FUNCTION_5_4(v20, "eventType");
  (v10)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v5 + 5 * v2);
  *v24 = 6;
  *v23 = "data";
  *(v23 + 8) = 4;
  *(v23 + 16) = 2;
  (v10)();
  return sub_19393C410();
}

void sub_19358A25C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for IntelligenceFlowIdentifiers();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v44 = v40 - v20;
  v43 = xmmword_193950B20;
  v46 = v8;
  v41 = v0;
  v42 = v14;
  v40[0] = v7;
  v40[1] = v5;
  while (1)
  {
    v21 = sub_19393C0E0();
    if (v2 || (v22 & 1) != 0)
    {
      break;
    }

    switch(v21)
    {
      case 1:
        v23 = *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent() + 28);
        sub_1934976E4();
        goto LABEL_25;
      case 2:
        v37 = *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent() + 32);
        type metadata accessor for MonotonicTimestamp();
        sub_193498018();
LABEL_25:
        v2 = 0;
        continue;
      case 3:
        v28 = v44;
        __swift_storeEnumTagSinglePayload(v44, 1, 1, v8);
        sub_193498018();
        v29 = v19;
        sub_1934486F8(v28, v19, &qword_1EAE3B948, &qword_193957C10);
        OUTLINED_FUNCTION_9_14(v19);
        if (v30)
        {
          v31 = v42;
          IntelligenceFlowIdentifiers.init()(v42);
          v32 = v28;
          v38 = v31;
          sub_19344E6DC(v32, &qword_1EAE3B948, &qword_193957C10);
          OUTLINED_FUNCTION_9_14(v29);
          v19 = v29;
          if (!v30)
          {
            sub_19344E6DC(v29, &qword_1EAE3B948, &qword_193957C10);
          }
        }

        else
        {
          sub_19344E6DC(v28, &qword_1EAE3B948, &qword_193957C10);
          v38 = v42;
          sub_19358ADC0(v19, v42, type metadata accessor for IntelligenceFlowIdentifiers);
        }

        v39 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
        v3 = v41;
        sub_19358A660(v38, v41 + *(v39 + 36));
        continue;
      case 4:
        v45 = 0uLL;
        OUTLINED_FUNCTION_3_36();
        sub_19393C200();
        v2 = 0;
        if (*(&v45 + 1))
        {
          v33 = v45;
        }

        else
        {
          v33 = 0;
        }

        if (*(&v45 + 1))
        {
          v34 = *(&v45 + 1);
        }

        else
        {
          v34 = 0xE000000000000000;
        }

        v35 = (v3 + *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent() + 40));
        v36 = v35[1];

        *v35 = v33;
        v35[1] = v34;
        v8 = v46;
        continue;
      case 5:
        v45 = 0uLL;
        OUTLINED_FUNCTION_3_36();
        sub_19393C200();
        v2 = 0;
        if (*(&v45 + 1))
        {
          v24 = v45;
        }

        else
        {
          v24 = 0;
        }

        if (*(&v45 + 1))
        {
          v25 = *(&v45 + 1);
        }

        else
        {
          v25 = 0xE000000000000000;
        }

        v26 = v3 + *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent() + 44);
        v27 = *(v26 + 8);

        goto LABEL_33;
      case 6:
        v45 = v43;
        OUTLINED_FUNCTION_3_36();
        sub_19393C140();
        v2 = 0;
        if (*(&v45 + 1) >> 60 == 15)
        {
          v24 = 0;
        }

        else
        {
          v24 = v45;
        }

        if (*(&v45 + 1) >> 60 == 15)
        {
          v25 = 0xC000000000000000;
        }

        else
        {
          v25 = *(&v45 + 1);
        }

        v26 = v3 + *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent() + 48);
        sub_193446A6C(*v26, *(v26 + 8));
LABEL_33:
        *v26 = v24;
        *(v26 + 8) = v25;
        v8 = v46;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19358A660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowIdentifiers();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_19358A84C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_15_9();
  v5 = sub_19393BE00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
  sub_1934486F8(v2 + *(v11 + 28), v0, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    (*(v6 + 32))(v10, v0, v5);
    sub_193451F04(v10, 1, 26211, 0xE200000000000000);
    (*(v6 + 8))(v10, v5);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19358AA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &a9 - v28;
  v30 = type metadata accessor for MonotonicTimestamp();
  v31 = OUTLINED_FUNCTION_4_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_15_9();
  v34 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
  sub_1934486F8(v25 + *(v34 + 32), v29, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_9_14(v29);
  if (v35)
  {
    sub_19344E6DC(v29, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    sub_19358ADC0(v29, v20, type metadata accessor for MonotonicTimestamp);
    sub_193447600();
    v36 = OUTLINED_FUNCTION_286();
    sub_19358AE20(v36, v37);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19358AB70()
{
  OUTLINED_FUNCTION_26();
  v1 = type metadata accessor for IntelligenceFlowIdentifiers();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_15_9();
  v5 = *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent() + 36);
  IntelligenceFlowIdentifiers.init()(v0);
  sub_19358AD68();
  v6 = sub_19393C550();
  sub_19358AE20(v0, type metadata accessor for IntelligenceFlowIdentifiers);
  if ((v6 & 1) == 0)
  {
    sub_193447600();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19358AC64()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3DA78;

  return v0;
}

uint64_t sub_19358ACA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE630F8 != -1)
  {
    OUTLINED_FUNCTION_0_42();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEAA580);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

unint64_t sub_19358AD68()
{
  result = qword_1EAE3B920;
  if (!qword_1EAE3B920)
  {
    type metadata accessor for IntelligenceFlowIdentifiers();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B920);
  }

  return result;
}

uint64_t sub_19358ADC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_19358AE20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
  v1 = OUTLINED_FUNCTION_101(*(v0 + 20));
  return sub_19344865C(v1, v2, v3, v4);
}

uint64_t type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent()
{
  result = qword_1ED50E970;
  if (!qword_1ED50E970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.writeTimestamp.setter()
{
  v0 = *(OUTLINED_FUNCTION_5_33() + 20);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_193445340(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
  v1 = OUTLINED_FUNCTION_101(*(v0 + 24));
  return sub_19344865C(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.bookmark.setter()
{
  v0 = *(OUTLINED_FUNCTION_5_33() + 24);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_193445340(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.absoluteTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
  v1 = OUTLINED_FUNCTION_101(*(v0 + 28));
  return sub_19344865C(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.absoluteTimestamp.setter()
{
  v0 = *(OUTLINED_FUNCTION_5_33() + 28);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_193445340(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.monotonicTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
  v1 = OUTLINED_FUNCTION_101(*(v0 + 32));
  return sub_19344865C(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.monotonicTimestamp.setter()
{
  v0 = *(OUTLINED_FUNCTION_5_33() + 32);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_193445340(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.identifiers.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
  v1 = OUTLINED_FUNCTION_101(*(v0 + 36));

  return sub_1934D59B0(v1, v2);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.identifiers.setter()
{
  v0 = *(OUTLINED_FUNCTION_5_33() + 36);
  v1 = OUTLINED_FUNCTION_100_0();

  return sub_19358A660(v1, v2);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.eventId.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent() + 40));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.eventId.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_9_42() + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.eventType.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent() + 44));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.eventType.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_9_42() + 44));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.data.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent() + 48));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_13_0();
  sub_193450688(v4, v5);
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.data.setter()
{
  v3 = v1 + *(OUTLINED_FUNCTION_9_42() + 48);
  result = sub_193446A6C(*v3, *(v3 + 8));
  *v3 = v2;
  *(v3 + 8) = v0;
  return result;
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.hashValue.getter()
{
  sub_19393CAB0();
  IntelligenceFlowTranscriptDatastreamEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19358B4C4()
{
  sub_19393CAB0();
  IntelligenceFlowTranscriptDatastreamEvent.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19358B504()
{
  result = qword_1EAE3DA88;
  if (!qword_1EAE3DA88)
  {
    type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DA88);
  }

  return result;
}

uint64_t sub_19358B588()
{
  sub_19358B6B4(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_19358B6B4(319, &qword_1ED507A78, type metadata accessor for MonotonicTimestamp);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        v1 = type metadata accessor for IntelligenceFlowIdentifiers();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_19358B6B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_19358B724()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510518);
  v5 = __swift_project_value_buffer(v4, qword_1ED510518);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.QueryDecorationTelemetry.attribute(_:)(void (*a1)(void))
{
  result = sub_19358B950(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19358B994(void (*a1)(void))
{
  result = sub_19358B950(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19358B9C4(uint64_t a1)
{
  result = sub_19358B9EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19358B9EC()
{
  result = qword_1ED507B00;
  if (!qword_1ED507B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED507B00);
  }

  return result;
}

_BYTE *_s24QueryDecorationTelemetryOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowQueryDecorationTelemetry.json()()
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
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
  v13 = OUTLINED_FUNCTION_4_1(DecorationTelemetry);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA98, &qword_193966A80);
  OUTLINED_FUNCTION_4_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v29 - v23;
  OUTLINED_FUNCTION_6_32();
  sub_19358FC3C(v0, v18, v25);
  sub_1934470C8(v18, DecorationTelemetry, v24);
  sub_19393C080();
  sub_19358BCC8();
  sub_19393C250();
  (*(v6 + 8))(v11, v3);
  sub_19344E6DC(v24, &qword_1EAE3DA98, &qword_193966A80);
  OUTLINED_FUNCTION_27();
  result._object = v27;
  result._countAndFlagsBits = v26;
  return result;
}

unint64_t sub_19358BCC8()
{
  result = qword_1EAE3A788;
  if (!qword_1EAE3A788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3DA98, &qword_193966A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A788);
  }

  return result;
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = OUTLINED_FUNCTION_47(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA98, &qword_193966A80);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;

  sub_19393C060();
  sub_19358BCC8();
  result = sub_19393C260();
  if (!v1)
  {
    OUTLINED_FUNCTION_14_26();
    return sub_19358D094(v12, a1, v14);
  }

  return result;
}

void static IntelligenceFlowQueryDecorationTelemetry.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v36 = v3;
  v37 = v2;
  v35 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA98, &qword_193966A80);
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_6();
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v34 - v24;
  if (*sub_193456624() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(v10, v8);
    sub_19358BCC8();
    sub_19393C280();
    (*(v18 + 8))(v25, v15);
    if (!v0)
    {
      OUTLINED_FUNCTION_14_26();
      v27 = v36;
      sub_19358D094(v1, v36, v28);
      DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
      v30 = *(DecorationTelemetry + 20);
      sub_19344E6DC(v27 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v31);
      (*(v32 + 16))(v27 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v27 + v30, 0, 1, v31);
      v33 = *(DecorationTelemetry + 24);
      sub_19344E6DC(v27 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v37, v27 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v26 = v6;
    *(v26 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.serialize()()
{
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
  v2 = OUTLINED_FUNCTION_4_1(DecorationTelemetry);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA98, &qword_193966A80);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  OUTLINED_FUNCTION_6_32();
  sub_19358FC3C(v0, v7, v14);
  sub_1934470C8(v7, DecorationTelemetry, v13);
  sub_19358BCC8();
  sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3DA98, &qword_193966A80);
  return OUTLINED_FUNCTION_13_0();
}

void sub_19358C2A8()
{
  OUTLINED_FUNCTION_26();
  v162 = v0;
  v163 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB8, &qword_193966A98);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v154 = &v151 - v10;
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0);
  v11 = OUTLINED_FUNCTION_4_1(Decoration);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v152 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB0, &unk_193967240);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v157 = &v151 - v20;
  v156 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall(0);
  v21 = OUTLINED_FUNCTION_4_1(v156);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_1();
  v155 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA8, &qword_193966A90);
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v151 - v30;
  v159 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation(0);
  v32 = OUTLINED_FUNCTION_4_1(v159);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_1();
  v158 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v151 - v41;
  v43 = type metadata accessor for MonotonicTimestamp();
  v44 = OUTLINED_FUNCTION_4_1(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_1();
  v49 = v48 - v47;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA0, &qword_193966A88);
  OUTLINED_FUNCTION_47(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v151 - v54;
  v56 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](0x74654D746E657665);
  OUTLINED_FUNCTION_5_1();
  v61 = v60 - v59;
  v160 = v5;
  v161 = v3;
  v63 = v5 == v62 && v3 == v58;
  if (v63 || (OUTLINED_FUNCTION_34_18() & 1) != 0)
  {
    DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
    v65 = OUTLINED_FUNCTION_45_15(*(DecorationTelemetry + 28));
    sub_193448758(v65, v55, v66, v67);
    OUTLINED_FUNCTION_6_3(v55, 1, v56);
    if (!v63)
    {
      sub_19358D094(v55, v61, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata);
      sub_193494798(v56, &off_1F07CEB90, v163);
      v72 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata;
      v73 = v61;
LABEL_12:
      sub_19358D0F0(v73, v72);
      goto LABEL_13;
    }

    v68 = &qword_1EAE3DAA0;
    v69 = &qword_193966A88;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_43_12();
  v76 = v63 && v74 == v75;
  if (v76 || (OUTLINED_FUNCTION_34_18() & 1) != 0)
  {
    v77 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
    v78 = OUTLINED_FUNCTION_45_15(*(v77 + 32));
    sub_193448758(v78, v42, v79, v80);
    OUTLINED_FUNCTION_6_3(v42, 1, v43);
    if (!v63)
    {
      v81 = OUTLINED_FUNCTION_141();
      sub_19358D094(v81, v49, v82);
      sub_193494798(v43, &off_1F07BD958, v163);
      v72 = type metadata accessor for MonotonicTimestamp;
      v73 = v49;
      goto LABEL_12;
    }

    v68 = &qword_1EAE3B498;
    v69 = &unk_193959120;
    v70 = v42;
    goto LABEL_10;
  }

  v83 = v160 == 0x697461636F766E69 && v161 == 0xEA00000000006E6FLL;
  if (v83 || (OUTLINED_FUNCTION_34_18() & 1) != 0)
  {
    v84 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
    v85 = OUTLINED_FUNCTION_45_15(*(v84 + 36));
    sub_193448758(v85, v31, v86, v87);
    v88 = v159;
    OUTLINED_FUNCTION_6_3(v31, 1, v159);
    if (!v63)
    {
      v89 = v158;
      sub_19358D094(v31, v158, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation);
      sub_193494798(v88, &off_1F07CED10, v163);
      v72 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation;
      v73 = v89;
      goto LABEL_12;
    }

    v68 = &qword_1EAE3DAA8;
    v69 = &qword_193966A90;
    v70 = v31;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38();
  v91 = v160 == 0xD000000000000011 && v90 == v161;
  if (!v91 && (OUTLINED_FUNCTION_31_20() & 1) == 0)
  {
    OUTLINED_FUNCTION_38();
    v103 = v160 == 0xD000000000000011 && v102 == v161;
    if (v103 || (OUTLINED_FUNCTION_31_20() & 1) != 0)
    {
      v104 = *(v162 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0) + 44));
      if ((~v104 & 0xF000000000000007) == 0)
      {
        goto LABEL_11;
      }

      v164 = v104;
      v105 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDCollectionContext;
      v106 = &off_1F07CEC60;
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v108 = v160 == 0xD000000000000011 && v107 == v161;
      if (v108 || (OUTLINED_FUNCTION_31_20() & 1) != 0)
      {
        v109 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
        OUTLINED_FUNCTION_36_14(*(v109 + 48));
        if (!v111)
        {
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_55_9(v110);
        v105 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntitiesCollected;
        v106 = &off_1F07CEC70;
      }

      else
      {
        OUTLINED_FUNCTION_43_12();
        v114 = v63 && v113 == v112;
        if (v114 || (OUTLINED_FUNCTION_34_18() & 1) != 0)
        {
          v115 = (v162 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0) + 52));
          v116 = *(v115 + 2) | (*(v115 + 6) << 32);
          if ((v116 & 0xFF0000000000) == 0x30000000000)
          {
            goto LABEL_11;
          }

          v117 = *v115;
          LODWORD(v164) = v117;
          BYTE4(v164) = BYTE4(v117) & 1;
          LODWORD(v165) = v116;
          BYTE4(v165) = BYTE4(v116) & 1;
          BYTE5(v165) = BYTE5(v116);
          v105 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDTuplesGenerated;
          v106 = &off_1F07CEC80;
        }

        else
        {
          OUTLINED_FUNCTION_43_12();
          v120 = v63 && v119 == v118;
          if (v120 || (OUTLINED_FUNCTION_34_18() & 1) != 0)
          {
            v121 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
            OUTLINED_FUNCTION_36_14(*(v121 + 56));
            if (!v123)
            {
              goto LABEL_11;
            }

            v164 = v123;
            v165 = *(v122 + 8);
            v105 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntitiesRanked;
            v106 = &off_1F07CEC90;
          }

          else
          {
            OUTLINED_FUNCTION_38();
            v125 = v160 == 0xD000000000000013 && v124 == v161;
            if (v125 || (OUTLINED_FUNCTION_34_18() & 1) != 0)
            {
              v126 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
              v127 = OUTLINED_FUNCTION_45_15(*(v126 + 60));
              v128 = v154;
              sub_193448758(v127, v154, v129, v130);
              OUTLINED_FUNCTION_6_3(v128, 1, Decoration);
              if (v63)
              {
                v68 = &qword_1EAE3DAB8;
                v69 = &qword_193966A98;
                v70 = v154;
                goto LABEL_10;
              }

              v97 = v152;
              sub_19358D094(v154, v152, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext);
              sub_193494798(Decoration, &off_1F07CECD0, v163);
              v101 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext;
LABEL_38:
              v72 = v101;
              v73 = v97;
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_43_12();
            v133 = v63 && v131 == v132;
            if (v133 || (OUTLINED_FUNCTION_34_18() & 1) != 0)
            {
              v134 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
              OUTLINED_FUNCTION_36_14(*(v134 + 64));
              if (!v136)
              {
                goto LABEL_11;
              }

              v137 = *(v135 + 8);
              v164 = v136;
              *&v165 = v137;
              v105 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDContextStatementIdsReported;
              v106 = &off_1F07CECF0;
            }

            else
            {
              OUTLINED_FUNCTION_38();
              OUTLINED_FUNCTION_43_12();
              v140 = v63 && v138 == v139;
              if (v140 || (OUTLINED_FUNCTION_34_18() & 1) != 0)
              {
                v141 = *(v162 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0) + 68));
                if (v141 == 3)
                {
                  goto LABEL_11;
                }

                LOWORD(v164) = v141;
                v105 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDAppPreLaunchTriggered;
                v106 = &off_1F07CECE0;
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v143 = v160 == 0xD000000000000013 && v142 == v161;
                if (!v143 && (OUTLINED_FUNCTION_34_18() & 1) == 0)
                {
                  sub_19349AB64();
                  OUTLINED_FUNCTION_13_9();
                  v147 = v146;
                  v148 = v161;
                  *v146 = v160;
                  v146[1] = v148;
                  v146[5] = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
                  __swift_allocate_boxed_opaque_existential_1Tm(v147 + 2);
                  OUTLINED_FUNCTION_6_32();
                  sub_19358FC3C(v162, v149, v150);
                  *(v147 + 48) = 1;
                  swift_willThrow();

                  goto LABEL_13;
                }

                v144 = v162 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0) + 72);
                if (*(v144 + 5))
                {
                  goto LABEL_11;
                }

                v145 = *(v144 + 4);
                LODWORD(v164) = *v144;
                BYTE4(v164) = v145 & 1;
                v105 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolboxSizeReported;
                v106 = &off_1F07CED00;
              }
            }
          }
        }
      }
    }

    sub_193494798(v105, v106, v163);
    goto LABEL_13;
  }

  v92 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
  v93 = OUTLINED_FUNCTION_45_15(*(v92 + 40));
  v55 = v157;
  sub_193448758(v93, v157, v94, v95);
  OUTLINED_FUNCTION_6_3(v55, 1, v156);
  if (!v63)
  {
    v96 = v55;
    v97 = v155;
    sub_19358D094(v96, v155, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
    OUTLINED_FUNCTION_13_0();
    sub_193494798(v98, v99, v100);
    v101 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall;
    goto LABEL_38;
  }

  v68 = &qword_1EAE3DAB0;
  v69 = &unk_193967240;
LABEL_9:
  v70 = v55;
LABEL_10:
  sub_19344E6DC(v70, v68, v69);
LABEL_11:
  v71 = v163;
  *v163 = 0u;
  *(v71 + 1) = 0u;
LABEL_13:
  OUTLINED_FUNCTION_27();
}

void sub_19358CD3C()
{
  OUTLINED_FUNCTION_26();
  v45 = v1;
  v46 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_6();
  v14 = sub_19393BE60();
  v15 = OUTLINED_FUNCTION_0(v14);
  v44 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_28();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v44 - v23;
  v25 = type metadata accessor for AIML.UUID();
  v26 = OUTLINED_FUNCTION_4_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  v31 = v30 - v29;
  v32 = v7 == 1682531441 && v5 == 0xE400000000000000;
  if (!v32 && (OUTLINED_FUNCTION_67() & 1) == 0)
  {
    v38 = v7 == 0x6449776F72 && v5 == 0xE500000000000000;
    if (!v38 && (OUTLINED_FUNCTION_67() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      v42 = v41;
      *v41 = v7;
      v41[1] = v5;
      v41[5] = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v42 + 2);
      sub_19358FC3C(v46, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata);
      *(v42 + 48) = 1;
      swift_willThrow();

      goto LABEL_10;
    }

    Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0);
    sub_193448758(v46 + *(Decoration + 20), v2, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_6_3(v2, 1, v14);
    if (!v32)
    {
      v40 = v44;
      (*(v44 + 32))(v3, v2, v14);
      sub_1934948FC();
      (*(v40 + 8))(v3, v14);
      goto LABEL_10;
    }

    v33 = &qword_1EAE3AA88;
    v34 = &qword_19394F9C0;
    v35 = v2;
    goto LABEL_9;
  }

  sub_193448758(v46, v24, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v24, 1, v25);
  if (v32)
  {
    v33 = &qword_1EAE3BCA0;
    v34 = &unk_19395C320;
    v35 = v24;
LABEL_9:
    sub_19344E6DC(v35, v33, v34);
    *v9 = 0u;
    *(v9 + 16) = 0u;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_40();
  sub_19358D094(v24, v31, v36);
  sub_193494798(v25, &off_1F07C3F90, v9);
  OUTLINED_FUNCTION_0_43();
  sub_19358D0F0(v31, v37);
LABEL_10:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19358D094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t sub_19358D0F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_19358D160(uint64_t a1)
{
  v5 = a1 == OUTLINED_FUNCTION_54_9() && v4 == 0xE600000000000000;
  if (v5 || (v6 = v4, v7 = *(v1 + 8), (sub_19393CA30() & 1) != 0))
  {
    if (v2 == 2)
    {
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_15;
  }

  v8 = a1 == 0x7372656C6C6163 && v6 == 0xE700000000000000;
  if (v8 || (sub_19393CA30() & 1) != 0)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAC0, &qword_193966AA0);
    OUTLINED_FUNCTION_59_11(v9, v10, v11, v12, v13, v14, v15, v16, v19, v7);
LABEL_15:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  v17 = OUTLINED_FUNCTION_13_9();
  *v18 = a1;
  *(v18 + 8) = v6;
  *(v18 + 40) = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDCollectionStarted;
  *(v18 + 16) = v2;
  *(v18 + 24) = v7;
  OUTLINED_FUNCTION_23_2(v17, v18);
}

void sub_19358D2FC()
{
  OUTLINED_FUNCTION_17_20();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_6();
  v10 = type metadata accessor for AIML.UUID();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v15 = v3 == 0xD000000000000015 && v14 == v2;
  if (!v15 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    v22 = v3 == 0x64496C6F6F74 && v2 == 0xE600000000000000;
    if (v22 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v23 = (v0 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0) + 20));
      if (!v23[1])
      {
        goto LABEL_9;
      }

      v48 = *v23;
      v51 = v23[1];
LABEL_17:
      sub_1934948FC();
      goto LABEL_18;
    }

    v24 = v3 == 0x65707954627573 && v2 == 0xE700000000000000;
    if (v24 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
      OUTLINED_FUNCTION_58_1(*(Decoration + 24));
      if (v27)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v28 = v3 == 0x6972616C696D6973 && v2 == 0xEF65726F63537974;
      if (v28 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        v29 = v0 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0) + 28);
        if (*(v29 + 4))
        {
          goto LABEL_9;
        }

        v49 = *v29;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_38();
      v31 = v3 == 0xD000000000000011 && v30 == v2;
      if (!v31 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
      {
        v34 = v3 == 0x72756F536C6F6F74 && v2 == 0xEA00000000006563;
        if (v34 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v35 = (v0 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0) + 36));
          if (!*v35)
          {
            goto LABEL_9;
          }

          v50 = *v35;
          v52 = v35[1];
          v36 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolSource;
          v37 = &off_1F07CEC10;
        }

        else
        {
          v38 = v3 == 0x696665446C6F6F74 && v2 == 0xEE006E6F6974696ELL;
          if (!v38 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
          {
            sub_19349AB64();
            v41 = OUTLINED_FUNCTION_13_9();
            v43 = OUTLINED_FUNCTION_19_0(v41, v42);
            v44 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(v43);
            OUTLINED_FUNCTION_152(v44);
            v45 = OUTLINED_FUNCTION_141();
            sub_19358FC3C(v45, v46, v47);
            OUTLINED_FUNCTION_65_1();

            goto LABEL_18;
          }

          v39 = (v0 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0) + 40));
          if (!*v39)
          {
            goto LABEL_9;
          }

          OUTLINED_FUNCTION_55_9(v39);
          v53 = *(v40 + 40);
          v36 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition;
          v37 = &off_1F07CEBE0;
        }

        sub_193494798(v36, v37, v1);
        goto LABEL_18;
      }

      v32 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
      OUTLINED_FUNCTION_58_1(*(v32 + 32));
      if (v33)
      {
LABEL_9:
        OUTLINED_FUNCTION_104();
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_42_19(v26);
    goto LABEL_17;
  }

  sub_193448758(v0, v4, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v15)
  {
    sub_19344E6DC(v4, &qword_1EAE3BCA0, &unk_19395C320);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_40();
  v19 = OUTLINED_FUNCTION_51_12(v16, v17, v18);
  OUTLINED_FUNCTION_80_0(v19, v20, &off_1F07C3F90);
  OUTLINED_FUNCTION_0_43();
  sub_19358D0F0(v5, v21);
LABEL_18:
  OUTLINED_FUNCTION_72_0();
}

uint64_t sub_19358D6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
  if (v7 || (v10 = v3[1], v9 = v3[2], v11 = v3[3], v23 = v3[4], v12 = v3[5], v13 = v3[6], v22 = v12, (OUTLINED_FUNCTION_49_10() & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAC8, &qword_193966AA8);
    return sub_1934948FC();
  }

  result = 0x74757074756FLL;
  v15 = a1 == 0x74757074756FLL && a2 == 0xE600000000000000;
  if (v15 || (result = OUTLINED_FUNCTION_49_10(), (result & 1) != 0))
  {
    if (v9 == 2)
    {
LABEL_14:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    return sub_193494798(&type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolOutputDefinition, &off_1F07CEC00, a3);
  }

  else
  {
    result = OUTLINED_FUNCTION_23_24();
    v17 = v7 && a2 == v16;
    if (v17 || (result = OUTLINED_FUNCTION_49_10(), (result & 1) != 0))
    {
      if (v13)
      {
        return sub_1934948FC();
      }

      goto LABEL_14;
    }

    sub_19349AB64();
    v21 = v13;
    OUTLINED_FUNCTION_13_9();
    v19 = v18;
    *v18 = a1;
    v18[1] = a2;
    v18[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition;
    v20 = swift_allocObject();
    v19[2] = v20;
    v20[2] = v6;
    v20[3] = v10;
    v20[4] = v9;
    v20[5] = v11;
    v20[6] = v23;
    v20[7] = v22;
    v20[8] = v21;
    *(v19 + 48) = 1;
    swift_willThrow();

    sub_19358D8E8(v10, v9);
  }
}

uint64_t sub_19358D8E8(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1934D1694(a1, a2);
  }

  return a1;
}

uint64_t sub_19358D910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = memcpy(__dst, v4, sizeof(__dst));
  v9 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v9 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    v10 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1))
    {
      v11 = *&__dst[0];
LABEL_8:
      *&v20[0] = v11;
      *(&v20[0] + 1) = v10;
      return sub_1934948FC();
    }

    goto LABEL_22;
  }

  v12 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v12 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    v10 = *(&__dst[1] + 1);
    if (*(&__dst[1] + 1))
    {
      v11 = *&__dst[1];
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  result = OUTLINED_FUNCTION_33_13();
  v14 = a1 == result && a2 == v13;
  if (v14 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    if (*(&__dst[2] + 1) == 1)
    {
LABEL_22:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v20[0] = __dst[2];
    v20[1] = __dst[3];
    return sub_193494798(&type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntityType, &off_1F07CEC50, a3);
  }

  else
  {
    result = OUTLINED_FUNCTION_23_24();
    v16 = v9 && a2 == v15;
    if (v16 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
    {
      v10 = *(&__dst[4] + 1);
      if (*(&__dst[4] + 1))
      {
        v11 = *&__dst[4];
        goto LABEL_8;
      }

      goto LABEL_22;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    v18 = v17;
    *v17 = a1;
    v17[1] = a2;
    v17[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolParameterDefinition;
    v19 = swift_allocObject();
    v18[2] = v19;
    memcpy((v19 + 16), __dst, 0x50uLL);
    *(v18 + 48) = 1;
    swift_willThrow();

    return sub_19358DB00(__dst, v20);
  }
}

uint64_t sub_19358DB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = OUTLINED_FUNCTION_33_13();
  v9 = *v2;
  v8 = v2[1];
  v11 = v2[2];
  v10 = v2[3];
  v12 = a1 == result && v6 == v7;
  if (v12 || (v13 = v6, result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v8 == 1)
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    else
    {
      return sub_193494798(&type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntityType, &off_1F07CEC50, a2);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    v15 = v14;
    *v14 = a1;
    v14[1] = v13;
    v14[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolOutputDefinition;
    OUTLINED_FUNCTION_95();
    v16 = swift_allocObject();
    v15[2] = v16;
    v16[2] = v9;
    v16[3] = v8;
    v16[4] = v11;
    v16[5] = v10;
    *(v15 + 48) = 1;
    swift_willThrow();

    return sub_1934D1694(v9, v8);
  }

  return result;
}

uint64_t sub_19358DCC0()
{
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v4 = *v0;
  v5 = v2 == 0x6374614D6E617073 && v1 == 0xEB00000000736568;
  if (v5 || (v6 = v0[1], (OUTLINED_FUNCTION_15_16() & 1) != 0))
  {
    v22 = v4;
    v7 = &unk_1EAE3DAD0;
    v8 = &unk_193966AB0;
LABEL_7:
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_59_11(v9, v10, v11, v12, v13, v14, v15, v16, v21, v22);
    return sub_1934948FC();
  }

  v18 = v3 == 0xD000000000000010 && 0x8000000193A1FD50 == v1;
  if (v18 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_15_16() & 1) != 0))
  {
    v22 = v6;
    v7 = &qword_1EAE3CF48;
    v8 = &qword_193960FE0;
    goto LABEL_7;
  }

  sub_19349AB64();
  v19 = OUTLINED_FUNCTION_13_9();
  *v20 = v3;
  v20[1] = v1;
  v20[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolSource;
  v20[2] = v4;
  v20[3] = v6;
  OUTLINED_FUNCTION_23_2(v19, v20);
}

void sub_19358DE0C()
{
  OUTLINED_FUNCTION_17_20();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_6();
  v9 = type metadata accessor for AIML.UUID();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v14 = v2 == 0xD000000000000015 && v13 == v1;
  if (!v14 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    v21 = v2 == 0x54747865746E6F63 && v1 == 0xEB00000000657079;
    if (v21 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0);
      OUTLINED_FUNCTION_58_1(*(Decoration + 20));
      if ((v24 & 1) == 0)
      {
        OUTLINED_FUNCTION_41_2(v23);
        OUTLINED_FUNCTION_60_9();
        sub_1934948FC();
        goto LABEL_10;
      }
    }

    else
    {
      OUTLINED_FUNCTION_29_16();
      v26 = v14 && v1 == v25;
      if (!v26 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
      {
        sub_19349AB64();
        v31 = OUTLINED_FUNCTION_13_9();
        v33 = OUTLINED_FUNCTION_19_0(v31, v32);
        v34 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(v33);
        OUTLINED_FUNCTION_152(v34);
        v35 = OUTLINED_FUNCTION_141();
        sub_19358FC3C(v35, v36, v37);
        OUTLINED_FUNCTION_65_1();

        goto LABEL_10;
      }

      v27 = (v0 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0) + 24));
      if (v27->n128_u64[1] != 1)
      {
        OUTLINED_FUNCTION_57_6(v27);
        OUTLINED_FUNCTION_60_9();
        sub_193494798(v28, v29, v30);
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  sub_193448758(v0, v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v14)
  {
    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_40();
  v18 = OUTLINED_FUNCTION_51_12(v15, v16, v17);
  OUTLINED_FUNCTION_80_0(v18, v19, &off_1F07C3F90);
  OUTLINED_FUNCTION_0_43();
  sub_19358D0F0(v4, v20);
LABEL_10:
  OUTLINED_FUNCTION_72_0();
}

void sub_19358E064()
{
  OUTLINED_FUNCTION_17_20();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_6();
  v9 = type metadata accessor for AIML.UUID();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v14 = v2 == 0xD000000000000015 && v13 == v1;
  if (!v14 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    OUTLINED_FUNCTION_29_16();
    v22 = v14 && v1 == v21;
    if (v22 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v23 = (v0 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0) + 20));
      if (v23->n128_u64[1] != 1)
      {
        OUTLINED_FUNCTION_57_6(v23);
        OUTLINED_FUNCTION_60_9();
        sub_193494798(v24, v25, v26);
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v27 = v2 == 0x7365686374616DLL && v1 == 0xE700000000000000;
    if (v27 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v40 = *(v0 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0) + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAD8, &qword_193966AB8);
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v29 = v2 == 0xD000000000000013 && v28 == v1;
      if (!v29 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
      {
        sub_19349AB64();
        v33 = OUTLINED_FUNCTION_13_9();
        v35 = OUTLINED_FUNCTION_19_0(v33, v34);
        Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(v35);
        OUTLINED_FUNCTION_152(Decoration);
        v37 = OUTLINED_FUNCTION_141();
        sub_19358FC3C(v37, v38, v39);
        OUTLINED_FUNCTION_65_1();

        goto LABEL_10;
      }

      v30 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0);
      OUTLINED_FUNCTION_58_1(*(v30 + 28));
      if (v32)
      {
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_41_2(v31);
    }

    OUTLINED_FUNCTION_60_9();
    sub_1934948FC();
    goto LABEL_10;
  }

  sub_193448758(v0, v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v14)
  {
    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_40();
  v18 = OUTLINED_FUNCTION_51_12(v15, v16, v17);
  OUTLINED_FUNCTION_80_0(v18, v19, &off_1F07C3F90);
  OUTLINED_FUNCTION_0_43();
  sub_19358D0F0(v4, v20);
LABEL_10:
  OUTLINED_FUNCTION_72_0();
}

void sub_19358E30C(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v22 = *v2;
  v23 = v4;
  v5 = v2[3];
  v24 = v2[2];
  v25 = v5;
  v6 = a1 == 0x646E497472617473 && a2 == 0xEA00000000007865;
  if (v6 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (BYTE4(v22))
    {
LABEL_7:
      OUTLINED_FUNCTION_35();
      return;
    }

    v8 = v22;
    goto LABEL_9;
  }

  v9 = a1 == 0x7865646E49646E65 && a2 == 0xE800000000000000;
  if (v9 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (BYTE12(v22))
    {
      goto LABEL_7;
    }

    v8 = DWORD2(v22);
LABEL_9:
    LODWORD(v21) = v8;
LABEL_10:
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_38();
  v11 = a1 == 0xD000000000000012 && v10 == a2;
  if (v11 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    *&v21 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAE0, &qword_193966AC0);
    goto LABEL_10;
  }

  v12 = a1 == 0x7265686374616DLL && a2 == 0xE700000000000000;
  if (v12 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (BYTE1(v24))
    {
      goto LABEL_7;
    }

    *&v21 = *(&v23 + 1);
    BYTE8(v21) = v24 & 1;
    goto LABEL_10;
  }

  v13 = a1 == 0x6F6353686374616DLL && a2 == 0xEA00000000006572;
  if (v13 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (BYTE8(v24))
    {
      goto LABEL_7;
    }

    LODWORD(v21) = DWORD1(v24);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38();
  v15 = a1 == 0xD000000000000011 && v14 == a2;
  if (v15 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (!*(&v25 + 1))
    {
      goto LABEL_7;
    }

    v21 = v25;
    goto LABEL_10;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v17 = v16;
  *v16 = a1;
  v16[1] = a2;
  v16[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntityMatch;
  v18 = swift_allocObject();
  v17[2] = v18;
  v19 = v25;
  v18[3] = v24;
  v18[4] = v19;
  v20 = v23;
  v18[1] = v22;
  v18[2] = v20;
  *(v17 + 48) = 1;
  swift_willThrow();

  sub_19358E5B4(&v22, &v21);
}

void sub_19358E628()
{
  OUTLINED_FUNCTION_62_3();
  v3 = v2;
  v5 = *v0;
  v4 = v0[1];
  if (v2 != 0x6449656C646E7562 || v1 != 0xE800000000000000)
  {
    v7 = v1;
    v9 = v0[2];
    v8 = v0[3];
    if ((sub_19393CA30() & 1) == 0)
    {
      if (v3 != 0xD000000000000010 || 0x8000000193A1FDD0 != v7)
      {
        OUTLINED_FUNCTION_27_0();
        if ((sub_19393CA30() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_13_9();
          v12 = v11;
          *v11 = v3;
          v11[1] = v7;
          v11[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntityType;
          OUTLINED_FUNCTION_95();
          v13 = swift_allocObject();
          v12[2] = v13;
          v13[2] = v5;
          v13[3] = v4;
          v13[4] = v9;
          v13[5] = v8;
          *(v12 + 48) = 1;
          swift_willThrow();

          goto LABEL_15;
        }
      }

      if (v8)
      {
        goto LABEL_7;
      }

LABEL_14:
      OUTLINED_FUNCTION_35();
      goto LABEL_15;
    }
  }

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

id sub_19358E7A4()
{
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  v7 = v2 == 0xD000000000000010 && 0x8000000193A1E8E0 == v1;
  if (v7 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_5_5() & 1) != 0))
  {
    if (!(v6 >> 62))
    {
      v15 = *(v6 + 16);
      v18 = *(v6 + 24);
      v8 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDCollectionStarted;
      v9 = &off_1F07CEBA0;
      return sub_193494798(v8, v9, v5);
    }
  }

  else
  {
    v11 = v3 == 0x6465646E65 && v1 == 0xE500000000000000;
    if (!v11 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      if (v3 == 0x64656C696166 && v1 == 0xE600000000000000)
      {
        if (v6 >> 62 != 2)
        {
          goto LABEL_24;
        }
      }

      else if ((OUTLINED_FUNCTION_5_5() & 1) == 0 || (v6 & 0xC000000000000000) != 0x8000000000000000)
      {
        goto LABEL_24;
      }

      v17 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v20 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x24);
      v8 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDCollectionFailed;
      v9 = &off_1F07CEBC0;
      return sub_193494798(v8, v9, v5);
    }

    if (v6 >> 62 == 1)
    {
      v16 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDCollectionCompleted;
      v9 = &off_1F07CEBB0;
      return sub_193494798(v8, v9, v5);
    }
  }

LABEL_24:
  sub_19349AB64();
  v13 = OUTLINED_FUNCTION_13_9();
  *v14 = v3;
  v14[1] = v1;
  v14[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDCollectionContext;
  v14[2] = v6;
  OUTLINED_FUNCTION_23_2(v13, v14);
}

void sub_19358E974()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_21_17();
  v7 = *v0;
  if (v4 == v5 && v2 == v6)
  {
    goto LABEL_6;
  }

  v10 = v0[1];
  v9 = v0[2];
  v12 = v0[3];
  v11 = v0[4];
  if (OUTLINED_FUNCTION_25_20())
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_38();
  v16 = v4 == 0xD000000000000013 && v15 == v2;
  if (v16 || (OUTLINED_FUNCTION_25_20() & 1) != 0 || ((OUTLINED_FUNCTION_38(), v4 == 0xD000000000000010) ? (v18 = v17 == v2) : (v18 = 0), v18 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_25_20() & 1) != 0)))
  {
LABEL_6:
    v13 = &qword_1EAE3CF48;
    v14 = &qword_193960FE0;
  }

  else
  {
    v19 = v4 == 0x6465726975716572 && v2 == 0xEF747865746E6F43;
    if (!v19 && (OUTLINED_FUNCTION_25_20() & 1) == 0)
    {
      v20 = v4 == 0x747865746E6F63 && v2 == 0xE700000000000000;
      if (!v20 && (OUTLINED_FUNCTION_25_20() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        v22 = v21;
        *v21 = v4;
        v21[1] = v2;
        v21[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntitiesCollected;
        v23 = swift_allocObject();
        v22[2] = v23;
        v23[2] = v7;
        v23[3] = v10;
        v23[4] = v9;
        v23[5] = v12;
        v23[6] = v11;
        OUTLINED_FUNCTION_65_1();

        goto LABEL_8;
      }
    }

    v13 = &unk_1EAE3DAE8;
    v14 = &unk_193966AC8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  sub_1934948FC();
LABEL_8:
  OUTLINED_FUNCTION_54_0();
}

void sub_19358EB90()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v4 = *v0;
  v5 = *(v0 + 4);
  if (v2 != 0x664F7265626D756ELL || v1 != 0xEE0073656C707554)
  {
    v7 = v0[2];
    v8 = *(v0 + 12);
    v9 = *(v0 + 13);
    if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v11 = v3 == 0xD000000000000011 && v10 == v1;
      if (v11 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v13 = v3 == 0xD000000000000018 && v12 == v1;
        if (!v13 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
        {
          sub_19349AB64();
          v14 = OUTLINED_FUNCTION_13_9();
          *v15 = v3;
          *(v15 + 8) = v1;
          *(v15 + 40) = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDTuplesGenerated;
          *(v15 + 16) = v4;
          *(v15 + 20) = v5;
          *(v15 + 24) = v7;
          *(v15 + 28) = v8;
          *(v15 + 29) = v9;
          OUTLINED_FUNCTION_23_2(v14, v15);

          goto LABEL_9;
        }

        if (v9 == 2)
        {
          goto LABEL_7;
        }
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_35();
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_19358ED34(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_21_17();
  v7 = *v2;
  v8 = a1 == v5 && a2 == v6;
  if (v8 || (v10 = v2[1], v9 = v2[2], (OUTLINED_FUNCTION_67() & 1) != 0))
  {
    v29 = v7;
    v11 = &unk_1EAE3DAF0;
    v12 = &unk_193966AD0;
LABEL_7:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    OUTLINED_FUNCTION_59_11(v13, v14, v15, v16, v17, v18, v19, v20, v28, v29);
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_38();
  v23 = a1 == 0xD000000000000013 && v22 == a2;
  if (v23 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    v29 = v10;
    v11 = &unk_1EAE3DAD0;
    v12 = &unk_193966AB0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v25 = a1 == 0xD000000000000010 && v24 == a2;
  if (v25 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_67() & 1) != 0))
  {
    v29 = v9;
    v11 = &unk_1EAE3DAE8;
    v12 = &unk_193966AC8;
    goto LABEL_7;
  }

  sub_19349AB64();
  v26 = OUTLINED_FUNCTION_13_9();
  *v27 = a1;
  v27[1] = a2;
  v27[2] = v7;
  v27[3] = v10;
  v27[4] = v9;
  v27[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntitiesRanked;
  OUTLINED_FUNCTION_23_2(v26, v27);
}

uint64_t sub_19358EEB8()
{
  OUTLINED_FUNCTION_61_9();
  result = 0x6F706D6F43627573;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 9);
  v8 = v3 == 0x6F706D6F43627573 && v0 == 0xEC000000746E656ELL;
  if (v8 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v7)
    {
      *v2 = 0u;
      v2[1] = 0u;
    }

    else
    {
      return sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    v9 = OUTLINED_FUNCTION_13_9();
    *v10 = v3;
    *(v10 + 8) = v0;
    *(v10 + 40) = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentStarted;
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    *(v10 + 25) = v7;
    OUTLINED_FUNCTION_23_2(v9, v10);
  }

  return result;
}

void sub_19358EFD4(uint64_t a1)
{
  v5 = a1 == OUTLINED_FUNCTION_54_9() && v3 == 0xE600000000000000;
  if (v5 || (v6 = v4, v7 = v3, (sub_19393CA30() & 1) != 0))
  {
    if (v1 == 2)
    {
      OUTLINED_FUNCTION_35();
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    v8 = OUTLINED_FUNCTION_13_9();
    *v9 = a1;
    *(v9 + 8) = v7;
    *(v9 + 40) = v6;
    *(v9 + 16) = v1;
    OUTLINED_FUNCTION_23_2(v8, v9);
  }
}

void sub_19358F0D0()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_172_0();
  v4 = v3;
  v6 = v5;
  v8 = *v0;
  v7 = v0[1];
  if (v3 != 0x6D6F44726F727265 || v1 != 0xEB000000006E6961)
  {
    v10 = v2;
    v11 = *(v0 + 4);
    v12 = *(v0 + 20);
    if ((OUTLINED_FUNCTION_15_16() & 1) == 0)
    {
      v13 = v4 == 0x646F43726F727265 && v1 == 0xE900000000000065;
      if (!v13 && (OUTLINED_FUNCTION_15_16() & 1) == 0)
      {
        sub_19349AB64();
        v14 = OUTLINED_FUNCTION_13_9();
        *v15 = v4;
        *(v15 + 8) = v1;
        *(v15 + 40) = v10;
        *(v15 + 16) = v8;
        *(v15 + 24) = v7;
        *(v15 + 32) = v11;
        *(v15 + 36) = v12;
        OUTLINED_FUNCTION_23_2(v14, v15);

        goto LABEL_15;
      }

      if ((v12 & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_14:
      *v6 = 0u;
      v6[1] = 0u;
      goto LABEL_15;
    }
  }

  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

void sub_19358F220(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for AIML.UUID();
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v19 = a1 == 0xD000000000000010 && v18 == a2;
  if (v19 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_117_2() & 1) != 0))
  {
    if (*(v3 + 10))
    {
      goto LABEL_7;
    }

    v20 = *(v3 + 4);
    v40 = *v3;
    LOWORD(v41) = v20 & 0x1FF;
    v21 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentStarted;
    v22 = &off_1F07CECA0;
LABEL_9:
    sub_193494798(v21, v22, a3);
    goto LABEL_10;
  }

  v23 = a1 == 0x6465646E65 && a2 == 0xE500000000000000;
  if (v23 || (OUTLINED_FUNCTION_117_2() & 1) != 0)
  {
    if (*(v3 + 11) == 3)
    {
      goto LABEL_7;
    }

    LOBYTE(v40) = *(v3 + 11);
    v21 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentEnded;
    v22 = &off_1F07CECB0;
    goto LABEL_9;
  }

  v24 = a1 == 0x64656C696166 && a2 == 0xE600000000000000;
  if (!v24 && (OUTLINED_FUNCTION_117_2() & 1) == 0)
  {
    v28 = a1 == 0x64496563617274 && a2 == 0xE700000000000000;
    if (!v28 && (OUTLINED_FUNCTION_117_2() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      *v34 = a1;
      v34[1] = a2;
      Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0);
      OUTLINED_FUNCTION_152(Decoration);
      v36 = OUTLINED_FUNCTION_141();
      sub_19358FC3C(v36, v37, v38);
      OUTLINED_FUNCTION_65_1();

      goto LABEL_10;
    }

    v29 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0);
    sub_193448758(v3 + *(v29 + 28), v13, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v13, 1, v14);
    if (!v19)
    {
      OUTLINED_FUNCTION_1_40();
      v31 = sub_19358D094(v13, v4, v30);
      OUTLINED_FUNCTION_80_0(v31, v32, &off_1F07C3F90);
      OUTLINED_FUNCTION_0_43();
      sub_19358D0F0(v4, v33);
      goto LABEL_10;
    }

    sub_19344E6DC(v13, &qword_1EAE3BCA0, &unk_19395C320);
    goto LABEL_7;
  }

  v25 = v3[3];
  if (v25 != 1)
  {
    v26 = *(v3 + 36);
    v27 = *(v3 + 8);
    v40 = v3[2];
    v41 = v25;
    v42 = v27;
    v43 = v26 & 1;
    v21 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentFailed;
    v22 = &off_1F07CECC0;
    goto LABEL_9;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_10:
  OUTLINED_FUNCTION_72_0();
}

void sub_19358F534(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  OUTLINED_FUNCTION_38();
  v7 = v5 == 0xD000000000000013 && v6 == a2;
  if (v7 || (v8 = v5, v9 = v2[1], (OUTLINED_FUNCTION_48_11() & 1) != 0))
  {
    if (v4 == 2)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v11 = v8 == 0xD000000000000013 && v10 == a2;
  if (v11 || (OUTLINED_FUNCTION_48_11() & 1) != 0)
  {
    if (v9 == 2)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  v12 = OUTLINED_FUNCTION_13_9();
  *v13 = v8;
  *(v13 + 8) = a2;
  *(v13 + 40) = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDAppPreLaunchTriggered;
  *(v13 + 16) = v4;
  *(v13 + 17) = v9;
  OUTLINED_FUNCTION_23_2(v12, v13);
}

uint64_t sub_19358F670()
{
  OUTLINED_FUNCTION_172_0();
  v2 = *v0;
  OUTLINED_FUNCTION_38();
  v5 = v3 == 0xD000000000000013 && v4 == v1;
  if (v5 || (v6 = v3, v7 = v0[1], (OUTLINED_FUNCTION_15_16() & 1) != 0))
  {
    v24 = v2;
    v8 = &qword_1EAE3CF48;
    v9 = &qword_193960FE0;
LABEL_7:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    OUTLINED_FUNCTION_59_11(v10, v11, v12, v13, v14, v15, v16, v17, v23, v24);
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_38();
  v20 = v6 == 0xD00000000000001CLL && v19 == v1;
  if (v20 || (OUTLINED_FUNCTION_15_16() & 1) != 0)
  {
    v24 = v7;
    v8 = &qword_1EAE3CF18;
    v9 = &qword_193960FB0;
    goto LABEL_7;
  }

  sub_19349AB64();
  v21 = OUTLINED_FUNCTION_13_9();
  *v22 = v6;
  v22[1] = v1;
  v22[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDContextStatementIdsReported;
  v22[2] = v2;
  v22[3] = v7;
  OUTLINED_FUNCTION_23_2(v21, v22);
}

uint64_t sub_19358F7B0()
{
  OUTLINED_FUNCTION_61_9();
  result = 0x6F6F546C61746F74;
  v5 = *v1;
  v6 = *(v1 + 4);
  v7 = v3 == 0x6F6F546C61746F74 && v0 == 0xEE00746E756F436CLL;
  if (v7 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v6)
    {
      *v2 = 0u;
      v2[1] = 0u;
    }

    else
    {
      return sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    v8 = OUTLINED_FUNCTION_13_9();
    *v9 = v3;
    *(v9 + 8) = v0;
    *(v9 + 40) = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolboxSizeReported;
    *(v9 + 16) = v5;
    *(v9 + 20) = v6;
    OUTLINED_FUNCTION_23_2(v8, v9);
  }

  return result;
}

void sub_19358F8B8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_28_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_6();
  v9 = type metadata accessor for AIML.UUID();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_28();
  v13 = v2 == 0x7254746E65696C63 && v0 == 0xED00006449656361;
  if (v13 || (sub_19393CA30() & 1) != 0)
  {
    sub_193448758(v1, v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_4();
    if (v13)
    {
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_1_40();
      v17 = OUTLINED_FUNCTION_51_12(v14, v15, v16);
      OUTLINED_FUNCTION_80_0(v17, v18, &off_1F07C3F90);
      OUTLINED_FUNCTION_0_43();
      sub_19358D0F0(v4, v19);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    v21 = v20;
    *v20 = v2;
    v20[1] = v0;
    v20[5] = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v21 + 2);
    sub_19358FC3C(v1, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation);
    *(v21 + 48) = 1;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

void sub_19358FA98()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_28_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_6();
  v9 = type metadata accessor for AIML.UUID();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_28();
  v13 = v2 == 0x64496563617274 && v0 == 0xE700000000000000;
  if (v13 || (sub_19393CA30() & 1) != 0)
  {
    sub_193448758(v1, v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_4();
    if (v13)
    {
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_1_40();
      v17 = OUTLINED_FUNCTION_51_12(v14, v15, v16);
      OUTLINED_FUNCTION_80_0(v17, v18, &off_1F07C3F90);
      OUTLINED_FUNCTION_0_43();
      sub_19358D0F0(v4, v19);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v20 = v2;
    v20[1] = v0;
    v21 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall(0);
    v22 = OUTLINED_FUNCTION_152(v21);
    sub_19358FC3C(v1, v22, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
    OUTLINED_FUNCTION_65_1();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_19358FC3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

void OUTLINED_FUNCTION_42_19(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  *(v1 - 120) = *a1;
  *(v1 - 112) = v2 & 1;
}

uint64_t OUTLINED_FUNCTION_48_11()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_49_10()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_51_12(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  return sub_19358D094(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_54_9()
{
  result = 0x737473697865;
  v2 = *v0;
  return result;
}

__n128 OUTLINED_FUNCTION_55_9@<Q0>(uint64_t a1@<X8>)
{
  *(v2 - 120) = v1;
  result = *(a1 + 24);
  *(v2 - 112) = *(a1 + 8);
  *(v2 - 96) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_57_6@<Q0>(__n128 *a1@<X8>)
{
  *(v2 - 96) = a1->n128_u64[0];
  *(v2 - 88) = v1;
  result = a1[1];
  *(v2 - 80) = result;
  return result;
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v233 = a2;
  v234 = a1;
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0);
  v2 = OUTLINED_FUNCTION_4_1(Decoration);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_23_16(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB8, &qword_193966A98);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v10);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAF8, &qword_193966CC0);
  OUTLINED_FUNCTION_4_1(v216);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v14);
  v224 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall(0);
  v15 = OUTLINED_FUNCTION_4_1(v224);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_23_16(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB0, &unk_193967240);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v23);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DB00, &qword_193966CC8);
  OUTLINED_FUNCTION_4_1(v222);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v27);
  v229 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation(0);
  v28 = OUTLINED_FUNCTION_4_1(v229);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_23_16(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA8, &qword_193966A90);
  OUTLINED_FUNCTION_47(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_53_1();
  v225 = v36;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DB08, &qword_193966CD0);
  OUTLINED_FUNCTION_4_1(v227);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_53_1();
  v228 = v40;
  OUTLINED_FUNCTION_22_2();
  v231 = type metadata accessor for MonotonicTimestamp();
  v41 = OUTLINED_FUNCTION_4_1(v231);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_289();
  v226 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_53_1();
  v230 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v214 - v54;
  v56 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0);
  v57 = OUTLINED_FUNCTION_4_1(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v214 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA0, &qword_193966A88);
  OUTLINED_FUNCTION_47(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v214 - v66;
  v68 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DB10, &qword_193966CD8) - 8);
  v69 = *(*v68 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v214 - v71;
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
  v73 = DecorationTelemetry[7];
  v74 = v68[14];
  sub_1934486F8(v234 + v73, v72, &qword_1EAE3DAA0, &qword_193966A88);
  v75 = v233 + v73;
  v76 = v233;
  sub_1934486F8(v75, &v72[v74], &qword_1EAE3DAA0, &qword_193966A88);
  OUTLINED_FUNCTION_31(v72);
  if (v77)
  {
    OUTLINED_FUNCTION_31(&v72[v74]);
    if (v77)
    {
      sub_19344E6DC(v72, &qword_1EAE3DAA0, &qword_193966A88);
      goto LABEL_11;
    }

LABEL_9:
    v78 = &qword_1EAE3DB10;
    v79 = &qword_193966CD8;
    v80 = v72;
LABEL_31:
    sub_19344E6DC(v80, v78, v79);
    return 0;
  }

  sub_1934486F8(v72, v67, &qword_1EAE3DAA0, &qword_193966A88);
  OUTLINED_FUNCTION_31(&v72[v74]);
  if (v77)
  {
    OUTLINED_FUNCTION_83_11();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_33_14();
  sub_19359129C(&v72[v74], v61, v81);
  OUTLINED_FUNCTION_31_21();
  sub_193591D50(v82, v83);
  v84 = sub_19393C550();
  sub_193591244(v61, &qword_1EAE3DAA0);
  v85 = OUTLINED_FUNCTION_175_0();
  sub_193591244(v85, v86);
  sub_19344E6DC(v72, &qword_1EAE3DAA0, &qword_193966A88);
  if ((v84 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v87 = DecorationTelemetry;
  v88 = DecorationTelemetry[8];
  v89 = *(v50 + 48);
  v90 = v234;
  OUTLINED_FUNCTION_25_6(v234 + v88, v55);
  OUTLINED_FUNCTION_25_6(v76 + v88, &v55[v89]);
  OUTLINED_FUNCTION_38_0(v55, 1);
  if (v77)
  {
    OUTLINED_FUNCTION_31(&v55[v89]);
    if (v77)
    {
      sub_19344E6DC(v55, &qword_1EAE3B498, &unk_193959120);
      goto LABEL_21;
    }

LABEL_19:
    v78 = &qword_1EAE3B958;
    v79 = &qword_193957B50;
LABEL_30:
    v80 = v55;
    goto LABEL_31;
  }

  v91 = v230;
  sub_1934486F8(v55, v230, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_31(&v55[v89]);
  if (v92)
  {
    OUTLINED_FUNCTION_83_11();
    goto LABEL_19;
  }

  sub_19359129C(&v55[v89], v226, type metadata accessor for MonotonicTimestamp);
  OUTLINED_FUNCTION_37_13();
  sub_193591D50(v93, v94);
  OUTLINED_FUNCTION_175_0();
  v95 = sub_19393C550();
  v96 = OUTLINED_FUNCTION_23_10();
  sub_193591244(v96, v97);
  sub_193591244(v91, type metadata accessor for MonotonicTimestamp);
  sub_19344E6DC(v55, &qword_1EAE3B498, &unk_193959120);
  if ((v95 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v98 = v87[9];
  v55 = v228;
  v99 = *(v227 + 48);
  OUTLINED_FUNCTION_25_6(v90 + v98, v228);
  OUTLINED_FUNCTION_25_6(v76 + v98, &v55[v99]);
  OUTLINED_FUNCTION_38_0(v55, 1);
  if (v77)
  {
    OUTLINED_FUNCTION_31(&v55[v99]);
    if (v77)
    {
      sub_19344E6DC(v55, &qword_1EAE3DAA8, &qword_193966A90);
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v100 = v225;
  sub_1934486F8(v55, v225, &qword_1EAE3DAA8, &qword_193966A90);
  OUTLINED_FUNCTION_31(&v55[v99]);
  if (v101)
  {
    OUTLINED_FUNCTION_83_11();
LABEL_29:
    v78 = &qword_1EAE3DB08;
    v79 = &qword_193966CD0;
    goto LABEL_30;
  }

  sub_19359129C(&v55[v99], v221, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation);
  OUTLINED_FUNCTION_36_15();
  sub_193591D50(v103, v104);
  OUTLINED_FUNCTION_175_0();
  v105 = sub_19393C550();
  v106 = OUTLINED_FUNCTION_23_10();
  sub_193591244(v106, v107);
  sub_193591244(v100, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation);
  sub_19344E6DC(v55, &qword_1EAE3DAA8, &qword_193966A90);
  if ((v105 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v108 = v87[10];
  v109 = *(v222 + 48);
  v110 = v223;
  OUTLINED_FUNCTION_25_6(v90 + v108, v223);
  v111 = v76 + v108;
  v112 = v110;
  OUTLINED_FUNCTION_25_6(v111, v110 + v109);
  OUTLINED_FUNCTION_38_0(v110, 1);
  if (v77)
  {
    OUTLINED_FUNCTION_31(v110 + v109);
    if (v77)
    {
      sub_19344E6DC(v110, &qword_1EAE3DAB0, &unk_193967240);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v113 = v110;
  v114 = v220;
  sub_1934486F8(v113, v220, &qword_1EAE3DAB0, &unk_193967240);
  OUTLINED_FUNCTION_31(v112 + v109);
  if (v115)
  {
    sub_193591244(v114, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
LABEL_43:
    v78 = &qword_1EAE3DB00;
    v79 = &qword_193966CC8;
    v80 = v112;
    goto LABEL_31;
  }

  sub_19359129C(v112 + v109, v219, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
  OUTLINED_FUNCTION_35_17();
  sub_193591D50(v116, v117);
  v118 = sub_19393C550();
  v119 = OUTLINED_FUNCTION_23_10();
  sub_193591244(v119, v120);
  sub_193591244(v114, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
  sub_19344E6DC(v112, &qword_1EAE3DAB0, &unk_193967240);
  if ((v118 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  v121 = v87[11];
  v122 = *(v90 + v121);
  v123 = *(v76 + v121);
  if ((~v122 & 0xF000000000000007) == 0)
  {
    sub_193438388(v122);
    sub_193438388(v123);
    if ((~v123 & 0xF000000000000007) == 0)
    {
      sub_1934354B4(v122);
      goto LABEL_52;
    }

LABEL_50:
    sub_1934354B4(v122);
    sub_1934354B4(v123);
    return 0;
  }

  v240 = *(v90 + v121);
  if ((~v123 & 0xF000000000000007) == 0)
  {
    sub_193438388(v122);
    sub_193438388(v123);
    sub_193438388(v122);

    goto LABEL_50;
  }

  v235 = v123;
  sub_193438388(v122);
  sub_193438388(v123);
  sub_193438388(v122);
  sub_1935911F0();
  v124 = OUTLINED_FUNCTION_39_16();

  sub_1934354B4(v122);
  if ((v124 & 1) == 0)
  {
    return 0;
  }

LABEL_52:
  v125 = v87[12];
  v126 = v76;
  v128 = *(v90 + v125);
  v127 = *(v90 + v125 + 8);
  v130 = *(v90 + v125 + 16);
  v129 = *(v90 + v125 + 24);
  v131 = *(v90 + v125 + 32);
  v132 = (v126 + v125);
  v134 = *v132;
  v133 = v132[1];
  v136 = v132[2];
  v135 = v132[3];
  v137 = v132[4];
  if (!v128)
  {
    OUTLINED_FUNCTION_9_43();
    sub_193590F00(v143);
    if (!v134)
    {
      OUTLINED_FUNCTION_19_25();
      sub_193590F00(v150);
      OUTLINED_FUNCTION_9_43();
      sub_19345576C(v151);
      goto LABEL_61;
    }

    OUTLINED_FUNCTION_19_25();
    sub_193590F00(v144);
LABEL_59:
    v148 = OUTLINED_FUNCTION_6_33();
    sub_19345576C(v148);
    OUTLINED_FUNCTION_19_25();
    sub_19345576C(v149);
    return 0;
  }

  v240 = v128;
  v241 = v127;
  v242 = v130;
  v243 = v129;
  v244 = v131;
  if (!v134)
  {
    v145 = OUTLINED_FUNCTION_6_33();
    sub_193590F00(v145);
    OUTLINED_FUNCTION_19_25();
    sub_193590F00(v146);
    v147 = OUTLINED_FUNCTION_6_33();
    sub_193590F00(v147);

    goto LABEL_59;
  }

  v235 = v134;
  v236 = v133;
  v237 = v136;
  v238 = v135;
  v239 = v137;
  v138 = OUTLINED_FUNCTION_6_33();
  sub_193590F00(v138);
  OUTLINED_FUNCTION_19_25();
  sub_193590F00(v139);
  v140 = OUTLINED_FUNCTION_6_33();
  sub_193590F00(v140);
  sub_19359119C();
  v141 = OUTLINED_FUNCTION_39_16();

  v142 = OUTLINED_FUNCTION_6_33();
  sub_19345576C(v142);
  if ((v141 & 1) == 0)
  {
    return 0;
  }

LABEL_61:
  v153 = DecorationTelemetry;
  v152 = v233;
  v154 = DecorationTelemetry[13];
  v155 = v234;
  v156 = (v234 + v154);
  v157 = *(v156 + 2) | (*(v156 + 6) << 32);
  v158 = (v233 + v154);
  v159 = *(v158 + 2) | (*(v158 + 6) << 32);
  if ((v157 & 0xFF0000000000) == 0x30000000000)
  {
    if ((v159 & 0xFF0000000000) != 0x30000000000)
    {
      return 0;
    }
  }

  else
  {
    v160 = *v158;
    v240 = *v156;
    WORD2(v241) = WORD2(v157);
    LODWORD(v241) = v157;
    if ((v159 & 0xFF0000000000) == 0x30000000000)
    {
      return 0;
    }

    LODWORD(v235) = v160;
    BYTE4(v235) = BYTE4(v160) & 1;
    LODWORD(v236) = v159;
    BYTE4(v236) = BYTE4(v159) & 1;
    BYTE5(v236) = BYTE5(v159);
    sub_193591148();
    if ((OUTLINED_FUNCTION_39_16() & 1) == 0)
    {
      return 0;
    }
  }

  v161 = v153[14];
  v163 = *(v155 + v161);
  v162 = *(v155 + v161 + 8);
  v164 = *(v155 + v161 + 16);
  v165 = (v152 + v161);
  v167 = *v165;
  v166 = v165[1];
  v168 = v165[2];
  if (!v163)
  {
    sub_193590F6C(0);
    if (!v167)
    {
      sub_193590F6C(0);
      sub_193456D68(0);
      goto LABEL_75;
    }

    v174 = OUTLINED_FUNCTION_56_8();
    sub_193590F6C(v174);
LABEL_73:
    v177 = OUTLINED_FUNCTION_25_21();
    sub_193456D68(v177);
    v178 = OUTLINED_FUNCTION_56_8();
    sub_193456D68(v178);
    return 0;
  }

  v240 = v163;
  v241 = v162;
  v242 = v164;
  if (!v167)
  {
    v175 = OUTLINED_FUNCTION_25_21();
    sub_193590F6C(v175);
    sub_193590F6C(0);
    v176 = OUTLINED_FUNCTION_25_21();
    sub_193590F6C(v176);

    goto LABEL_73;
  }

  v235 = v167;
  v236 = v166;
  v237 = v168;
  v169 = OUTLINED_FUNCTION_25_21();
  sub_193590F6C(v169);
  v170 = OUTLINED_FUNCTION_56_8();
  sub_193590F6C(v170);
  v171 = OUTLINED_FUNCTION_25_21();
  sub_193590F6C(v171);
  sub_1935910F4();
  v172 = OUTLINED_FUNCTION_39_16();

  v173 = OUTLINED_FUNCTION_25_21();
  sub_193456D68(v173);
  if ((v172 & 1) == 0)
  {
    return 0;
  }

LABEL_75:
  v179 = v153[15];
  v180 = *(v216 + 48);
  v181 = v217;
  OUTLINED_FUNCTION_25_6(v155 + v179, v217);
  v182 = v233;
  OUTLINED_FUNCTION_25_6(v233 + v179, v181 + v180);
  OUTLINED_FUNCTION_38_0(v181, 1);
  if (v77)
  {
    OUTLINED_FUNCTION_31(v181 + v180);
    if (v77)
    {
      sub_19344E6DC(v181, &qword_1EAE3DAB8, &qword_193966A98);
      goto LABEL_85;
    }

    goto LABEL_83;
  }

  v183 = v215;
  sub_1934486F8(v181, v215, &qword_1EAE3DAB8, &qword_193966A98);
  OUTLINED_FUNCTION_31(v181 + v180);
  if (v184)
  {
    OUTLINED_FUNCTION_83_11();
LABEL_83:
    v78 = &qword_1EAE3DAF8;
    v79 = &qword_193966CC0;
    v80 = v181;
    goto LABEL_31;
  }

  sub_19359129C(v181 + v180, v214, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext);
  OUTLINED_FUNCTION_34_19();
  sub_193591D50(v185, v186);
  OUTLINED_FUNCTION_175_0();
  v187 = sub_19393C550();
  v188 = OUTLINED_FUNCTION_23_10();
  sub_193591244(v188, v189);
  sub_193591244(v183, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext);
  sub_19344E6DC(v181, &qword_1EAE3DAB8, &qword_193966A98);
  if ((v187 & 1) == 0)
  {
    return 0;
  }

LABEL_85:
  v190 = v153[16];
  v192 = *(v155 + v190);
  v191 = *(v155 + v190 + 8);
  v193 = (v182 + v190);
  v195 = *v193;
  v194 = v193[1];
  if (v192)
  {
    v240 = v192;
    v241 = v191;
    if (v195)
    {
      v235 = v195;
      v236 = v194;
      v196 = OUTLINED_FUNCTION_23_10();
      sub_193590FB8(v196);
      sub_193590FB8(v195);
      v197 = OUTLINED_FUNCTION_23_10();
      sub_193590FB8(v197);
      sub_1935910A0();
      v198 = OUTLINED_FUNCTION_39_16();

      v199 = OUTLINED_FUNCTION_23_10();
      sub_19345741C(v199);
      if ((v198 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_94;
    }

    v200 = OUTLINED_FUNCTION_23_10();
    sub_193590FB8(v200);
    sub_193590FB8(0);
    v201 = OUTLINED_FUNCTION_23_10();
    sub_193590FB8(v201);

LABEL_92:
    v202 = OUTLINED_FUNCTION_23_10();
    sub_19345741C(v202);
    sub_19345741C(v195);
    return 0;
  }

  sub_193590FB8(0);
  if (v195)
  {
    sub_193590FB8(v195);
    goto LABEL_92;
  }

  sub_193590FB8(0);
  sub_19345741C(0);
LABEL_94:
  v203 = DecorationTelemetry[17];
  v204 = *(v234 + v203);
  v205 = *(v233 + v203);
  if (v204 == 3)
  {
    if (v205 != 3)
    {
      return 0;
    }
  }

  else
  {
    LOWORD(v240) = v204;
    if (v205 == 3)
    {
      return 0;
    }

    LOWORD(v235) = v205;
    sub_19359104C();
    if ((OUTLINED_FUNCTION_39_16() & 1) == 0)
    {
      return 0;
    }
  }

  v206 = DecorationTelemetry[18];
  v207 = (v234 + v206);
  v208 = *(v234 + v206 + 5);
  v209 = (v233 + v206);
  v210 = *(v233 + v206 + 5);
  if (v208)
  {
    if (v210)
    {
      return 1;
    }
  }

  else
  {
    v211 = *(v209 + 4);
    v212 = *v209;
    v213 = *v207;
    WORD2(v240) = *(v207 + 4);
    LODWORD(v240) = v213;
    if ((v210 & 1) == 0)
    {
      LODWORD(v235) = v212;
      BYTE4(v235) = ((v212 | (v211 << 32)) >> 32) & 1;
      sub_193590FF8();
      if (OUTLINED_FUNCTION_39_16())
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_193590F00(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_193590F6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_193590FB8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_193590FF8()
{
  result = qword_1EAE3DB18;
  if (!qword_1EAE3DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB18);
  }

  return result;
}

unint64_t sub_19359104C()
{
  result = qword_1EAE3DB20;
  if (!qword_1EAE3DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB20);
  }

  return result;
}

unint64_t sub_1935910A0()
{
  result = qword_1EAE3DB28;
  if (!qword_1EAE3DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB28);
  }

  return result;
}

unint64_t sub_1935910F4()
{
  result = qword_1EAE3DB38;
  if (!qword_1EAE3DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB38);
  }

  return result;
}

unint64_t sub_193591148()
{
  result = qword_1EAE3DB40;
  if (!qword_1EAE3DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB40);
  }

  return result;
}

unint64_t sub_19359119C()
{
  result = qword_1EAE3DB48;
  if (!qword_1EAE3DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB48);
  }

  return result;
}

unint64_t sub_1935911F0()
{
  result = qword_1EAE3DB50;
  if (!qword_1EAE3DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB50);
  }

  return result;
}

uint64_t sub_193591244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_19359129C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.hash(into:)()
{
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0);
  v1 = OUTLINED_FUNCTION_4_1(Decoration);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_289();
  v95 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB8, &qword_193966A98);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_53_1();
  v101 = v9;
  v10 = OUTLINED_FUNCTION_22_2();
  v100 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall(v10);
  v11 = OUTLINED_FUNCTION_4_1(v100);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_289();
  v94 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB0, &unk_193967240);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_53_1();
  v99 = v19;
  v20 = OUTLINED_FUNCTION_22_2();
  v98 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation(v20);
  v21 = OUTLINED_FUNCTION_4_1(v98);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_289();
  v93 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA8, &qword_193966A90);
  OUTLINED_FUNCTION_47(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_53_1();
  v97 = v29;
  OUTLINED_FUNCTION_22_2();
  v96 = type metadata accessor for MonotonicTimestamp();
  v30 = OUTLINED_FUNCTION_4_1(v96);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_289();
  v92 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v92 - v38;
  v40 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0);
  v41 = OUTLINED_FUNCTION_4_1(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v92 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA0, &qword_193966A88);
  OUTLINED_FUNCTION_47(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v92 - v50;
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
  v53 = v0;
  sub_1934486F8(v0 + DecorationTelemetry[7], v51, &qword_1EAE3DAA0, &qword_193966A88);
  if (__swift_getEnumTagSinglePayload(v51, 1, v40) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_33_14();
    sub_19359129C(v51, v45, v54);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_31_21();
    sub_193591D50(v55, v56);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_193591244(v45, &qword_1EAE3DAA0);
  }

  sub_1934486F8(v0 + DecorationTelemetry[8], v39, &qword_1EAE3B498, &unk_193959120);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v96);
  v58 = v98;
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19359129C(v39, v92, type metadata accessor for MonotonicTimestamp);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_37_13();
    sub_193591D50(v59, v60);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    v61 = OUTLINED_FUNCTION_175_0();
    sub_193591244(v61, v62);
  }

  v63 = v100;
  v64 = v97;
  sub_1934486F8(v53 + DecorationTelemetry[9], v97, &qword_1EAE3DAA8, &qword_193966A90);
  if (__swift_getEnumTagSinglePayload(v64, 1, v58) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v65 = v93;
    sub_19359129C(v64, v93, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_36_15();
    sub_193591D50(v66, v67);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_193591244(v65, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation);
  }

  v68 = v99;
  sub_1934486F8(v53 + DecorationTelemetry[10], v99, &qword_1EAE3DAB0, &unk_193967240);
  if (__swift_getEnumTagSinglePayload(v68, 1, v63) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v69 = v94;
    sub_19359129C(v68, v94, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_35_17();
    sub_193591D50(v70, v71);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_193591244(v69, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
  }

  if ((~*(v53 + DecorationTelemetry[11]) & 0xF000000000000007) != 0)
  {
    v103 = *(v53 + DecorationTelemetry[11]);
    OUTLINED_FUNCTION_103_0();
    sub_193591C00();

    OUTLINED_FUNCTION_49_11();
    sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v72 = (v53 + DecorationTelemetry[12]);
  if (*v72)
  {
    v74 = v72[3];
    v73 = v72[4];
    v76 = v72[1];
    v75 = v72[2];
    v103 = *v72;
    v104 = v76;
    v105 = v75;
    v106 = v74;
    v107 = v73;
    OUTLINED_FUNCTION_103_0();
    sub_193591C54();

    OUTLINED_FUNCTION_49_11();
    sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v77 = (v53 + DecorationTelemetry[13]);
  v78 = *(v77 + 2) | (*(v77 + 6) << 32);
  if ((v78 & 0xFF0000000000) == 0x30000000000)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v79 = *v77;
    LODWORD(v103) = v79;
    BYTE4(v103) = BYTE4(v79) & 1;
    LODWORD(v104) = v78;
    BYTE4(v104) = BYTE4(v78) & 1;
    BYTE5(v104) = BYTE5(v78);
    OUTLINED_FUNCTION_103_0();
    sub_193591CA8();
    OUTLINED_FUNCTION_49_11();
    sub_19393C540();
  }

  v80 = (v53 + DecorationTelemetry[14]);
  if (*v80)
  {
    v82 = v80[1];
    v81 = v80[2];
    v103 = *v80;
    v104 = v82;
    v105 = v81;
    OUTLINED_FUNCTION_103_0();
    sub_193591CFC();

    OUTLINED_FUNCTION_49_11();
    sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v83 = v101;
  sub_1934486F8(v53 + DecorationTelemetry[15], v101, &qword_1EAE3DAB8, &qword_193966A98);
  if (__swift_getEnumTagSinglePayload(v83, 1, Decoration) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v84 = v95;
    sub_19359129C(v83, v95, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_34_19();
    sub_193591D50(v85, v86);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_193591244(v84, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext);
  }

  v87 = (v53 + DecorationTelemetry[16]);
  if (*v87)
  {
    v88 = v87[1];
    v103 = *v87;
    v104 = v88;
    OUTLINED_FUNCTION_103_0();
    sub_193591D98();

    OUTLINED_FUNCTION_49_11();
    sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v53 + DecorationTelemetry[17]) == 3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    LOWORD(v103) = *(v53 + DecorationTelemetry[17]);
    OUTLINED_FUNCTION_103_0();
    sub_193591DEC();
    OUTLINED_FUNCTION_49_11();
    sub_19393C540();
  }

  v89 = v53 + DecorationTelemetry[18];
  if (*(v89 + 5) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v91 = *(v89 + 4);
  LODWORD(v103) = *v89;
  BYTE4(v103) = v91 & 1;
  OUTLINED_FUNCTION_103_0();
  sub_193591E40();
  OUTLINED_FUNCTION_49_11();
  return sub_19393C540();
}

unint64_t sub_193591C00()
{
  result = qword_1EAE3DB88;
  if (!qword_1EAE3DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB88);
  }

  return result;
}

unint64_t sub_193591C54()
{
  result = qword_1EAE3DB90;
  if (!qword_1EAE3DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB90);
  }

  return result;
}

unint64_t sub_193591CA8()
{
  result = qword_1EAE3DB98;
  if (!qword_1EAE3DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB98);
  }

  return result;
}

unint64_t sub_193591CFC()
{
  result = qword_1EAE3DBA0;
  if (!qword_1EAE3DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DBA0);
  }

  return result;
}

uint64_t sub_193591D50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_193591D98()
{
  result = qword_1EAE3DBB0;
  if (!qword_1EAE3DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DBB0);
  }

  return result;
}

unint64_t sub_193591DEC()
{
  result = qword_1EAE3DBB8;
  if (!qword_1EAE3DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DBB8);
  }

  return result;
}

unint64_t sub_193591E40()
{
  result = qword_1EAE3DBC0;
  if (!qword_1EAE3DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DBC0);
  }

  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDCaller.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDCaller.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  v7 = sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_16_0(v7);
  if (!(!v14 & v13))
  {
    v40 = OUTLINED_FUNCTION_39(v12);
    v44 = OUTLINED_FUNCTION_84_2(v40, v41, v42, v43, &qword_1EAE3DC58, &unk_193966FE0);
    v8 = OUTLINED_FUNCTION_17_2(v44);
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v45 = OUTLINED_FUNCTION_39(v19);
    v49 = OUTLINED_FUNCTION_85(v45, v46, v47, v48, &qword_1EAE3DC58, &unk_193966FE0);
    v15 = OUTLINED_FUNCTION_17_2(v49);
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    OUTLINED_FUNCTION_39(v26);
    OUTLINED_FUNCTION_57();
    v22 = sub_1934B0FCC(v50, v51, v52, v53, v54, v55);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    v56 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_84_2(v56, v57, v58, v59, &qword_1EAE3DC58, &unk_193966FE0);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v60 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v60, v61, v62, v63, &qword_1EAE3DC58, &unk_193966FE0);
    v35 = v32;
  }

  OUTLINED_FUNCTION_47_5(v32, v33, v34, v35);
  *(v37 + 32) = 3;
  *(v37 + 40) = v0;
  return v38;
}

unint64_t IntelligenceFlowQueryDecorationTelemetry.QDCaller.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6E6E616C50657250;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_75_11();
      break;
    case 2:
      OUTLINED_FUNCTION_38();
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x6D726157657250;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowQueryDecorationTelemetry.QDCaller.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x6E6E616C50657250 && v0 == 0xEA00000000007265;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_75_11() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v8 = v1 == 0xD000000000000018 && 0x8000000193A1FEF0 == v0;
        if (v8 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0x6D726157657250 && v0 == 0xE700000000000000)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_89();
          v4 = 3;
          if ((v1 & 1) == 0)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolSubType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6E656D656C706D49;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_63_10();
      break;
    case 2:
      result = OUTLINED_FUNCTION_73_9();
      break;
    case 3:
      result = OUTLINED_FUNCTION_77_11();
      break;
    case 4:
      result = 0x6F72746E6F434955;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowQueryDecorationTelemetry.QDToolSubType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x6E656D656C706D49 && v0 == 0xEE006E6F69746174;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_63_10() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v9 = v1 == OUTLINED_FUNCTION_73_9() && v0 == v8;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = v1 == OUTLINED_FUNCTION_77_11() && v0 == v10;
          if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else if (v1 == 0x6F72746E6F434955 && v0 == 0xE90000000000006CLL)
          {

            OUTLINED_FUNCTION_69_2();
          }

          else
          {
            OUTLINED_FUNCTION_0_9();
            OUTLINED_FUNCTION_89();
            v4 = 4;
            if ((v1 & 1) == 0)
            {
              v4 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    case 27:
      v3 = 27;
      break;
    case 28:
      v3 = 28;
      break;
    case 29:
      v3 = 29;
      break;
    case 30:
      v3 = 30;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  v7 = sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_16_0(v7);
  if (!(!v14 & v13))
  {
    v229 = OUTLINED_FUNCTION_39(v12);
    v233 = OUTLINED_FUNCTION_84_2(v229, v230, v231, v232, &qword_1EAE3DC48, &qword_193966FD0);
    v8 = OUTLINED_FUNCTION_17_2(v233);
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v234 = OUTLINED_FUNCTION_39(v19);
    v238 = OUTLINED_FUNCTION_85(v234, v235, v236, v237, &qword_1EAE3DC48, &qword_193966FD0);
    v15 = OUTLINED_FUNCTION_17_2(v238);
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    OUTLINED_FUNCTION_39(v26);
    OUTLINED_FUNCTION_57();
    v22 = sub_1934B0FCC(v239, v240, v241, v242, v243, v244);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    v245 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_84_2(v245, v246, v247, v248, &qword_1EAE3DC48, &qword_193966FD0);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v249 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v249, v250, v251, v252, &qword_1EAE3DC48, &qword_193966FD0);
    v35 = v32;
  }

  OUTLINED_FUNCTION_47_5(v32, v33, v34, v35);
  OUTLINED_FUNCTION_4(v37, v38);
  OUTLINED_FUNCTION_80_10();
  if (!(v20 ^ v21 | v14))
  {
    v253 = OUTLINED_FUNCTION_39(v43);
    v39 = OUTLINED_FUNCTION_84_2(v253, v254, v255, v256, &qword_1EAE3DC48, &qword_193966FD0);
    v42 = v39;
  }

  OUTLINED_FUNCTION_50(v39, v40, v41, v42);
  OUTLINED_FUNCTION_4(v44, v45);
  OUTLINED_FUNCTION_79_12();
  if (!(v20 ^ v21 | v14))
  {
    v257 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_85(v257, v258, v259, v260, &qword_1EAE3DC48, &qword_193966FD0);
    v49 = v46;
  }

  OUTLINED_FUNCTION_47_5(v46, v47, v48, v49);
  OUTLINED_FUNCTION_4(v51, v52);
  if (v0 + 8 > (v57 >> 1))
  {
    v261 = OUTLINED_FUNCTION_39(v57);
    v53 = OUTLINED_FUNCTION_84_2(v261, v262, v263, v264, &qword_1EAE3DC48, &qword_193966FD0);
    v56 = v53;
  }

  OUTLINED_FUNCTION_50(v53, v54, v55, v56);
  OUTLINED_FUNCTION_4(v58, v59);
  if (v0 + 9 > (v64 >> 1))
  {
    v265 = OUTLINED_FUNCTION_39(v64);
    v60 = OUTLINED_FUNCTION_85(v265, v266, v267, v268, &qword_1EAE3DC48, &qword_193966FD0);
    v63 = v60;
  }

  OUTLINED_FUNCTION_47_5(v60, v61, v62, v63);
  OUTLINED_FUNCTION_4(v65, v66);
  if (v0 + 10 > (v71 >> 1))
  {
    v269 = OUTLINED_FUNCTION_39(v71);
    v67 = OUTLINED_FUNCTION_84_2(v269, v270, v271, v272, &qword_1EAE3DC48, &qword_193966FD0);
    v70 = v67;
  }

  OUTLINED_FUNCTION_50(v67, v68, v69, v70);
  OUTLINED_FUNCTION_4(v72, v73);
  if (v0 + 11 > (v78 >> 1))
  {
    v273 = OUTLINED_FUNCTION_39(v78);
    v74 = OUTLINED_FUNCTION_85(v273, v274, v275, v276, &qword_1EAE3DC48, &qword_193966FD0);
    v77 = v74;
  }

  OUTLINED_FUNCTION_47_5(v74, v75, v76, v77);
  OUTLINED_FUNCTION_4(v79, v80);
  if (v0 + 12 > (v85 >> 1))
  {
    v277 = OUTLINED_FUNCTION_39(v85);
    v81 = OUTLINED_FUNCTION_84_2(v277, v278, v279, v280, &qword_1EAE3DC48, &qword_193966FD0);
    v84 = v81;
  }

  OUTLINED_FUNCTION_50(v81, v82, v83, v84);
  OUTLINED_FUNCTION_4(v86, v87);
  if (v0 + 13 > (v92 >> 1))
  {
    v281 = OUTLINED_FUNCTION_39(v92);
    v88 = OUTLINED_FUNCTION_85(v281, v282, v283, v284, &qword_1EAE3DC48, &qword_193966FD0);
    v91 = v88;
  }

  OUTLINED_FUNCTION_47_5(v88, v89, v90, v91);
  OUTLINED_FUNCTION_4(v93, v94);
  if (v0 + 14 > (v99 >> 1))
  {
    v285 = OUTLINED_FUNCTION_39(v99);
    v95 = OUTLINED_FUNCTION_84_2(v285, v286, v287, v288, &qword_1EAE3DC48, &qword_193966FD0);
    v98 = v95;
  }

  OUTLINED_FUNCTION_50(v95, v96, v97, v98);
  OUTLINED_FUNCTION_4(v100, v101);
  if (v0 + 15 > (v106 >> 1))
  {
    v289 = OUTLINED_FUNCTION_39(v106);
    v102 = OUTLINED_FUNCTION_85(v289, v290, v291, v292, &qword_1EAE3DC48, &qword_193966FD0);
    v105 = v102;
  }

  OUTLINED_FUNCTION_47_5(v102, v103, v104, v105);
  OUTLINED_FUNCTION_4(v107, v108);
  if (v0 + 16 > (v113 >> 1))
  {
    v293 = OUTLINED_FUNCTION_39(v113);
    v109 = OUTLINED_FUNCTION_84_2(v293, v294, v295, v296, &qword_1EAE3DC48, &qword_193966FD0);
    v112 = v109;
  }

  OUTLINED_FUNCTION_50(v109, v110, v111, v112);
  OUTLINED_FUNCTION_4(v114, v115);
  if (v0 + 17 > (v120 >> 1))
  {
    v297 = OUTLINED_FUNCTION_39(v120);
    v116 = OUTLINED_FUNCTION_85(v297, v298, v299, v300, &qword_1EAE3DC48, &qword_193966FD0);
    v119 = v116;
  }

  OUTLINED_FUNCTION_47_5(v116, v117, v118, v119);
  OUTLINED_FUNCTION_4(v121, v122);
  if (v0 + 18 > (v127 >> 1))
  {
    v301 = OUTLINED_FUNCTION_39(v127);
    v123 = OUTLINED_FUNCTION_84_2(v301, v302, v303, v304, &qword_1EAE3DC48, &qword_193966FD0);
    v126 = v123;
  }

  OUTLINED_FUNCTION_50(v123, v124, v125, v126);
  OUTLINED_FUNCTION_4(v128, v129);
  if (v0 + 19 > (v134 >> 1))
  {
    v305 = OUTLINED_FUNCTION_39(v134);
    v130 = OUTLINED_FUNCTION_85(v305, v306, v307, v308, &qword_1EAE3DC48, &qword_193966FD0);
    v133 = v130;
  }

  OUTLINED_FUNCTION_47_5(v130, v131, v132, v133);
  OUTLINED_FUNCTION_4(v135, v136);
  if (v0 + 20 > (v141 >> 1))
  {
    v309 = OUTLINED_FUNCTION_39(v141);
    v137 = OUTLINED_FUNCTION_84_2(v309, v310, v311, v312, &qword_1EAE3DC48, &qword_193966FD0);
    v140 = v137;
  }

  OUTLINED_FUNCTION_50(v137, v138, v139, v140);
  OUTLINED_FUNCTION_4(v142, v143);
  if (v0 + 21 > (v148 >> 1))
  {
    v313 = OUTLINED_FUNCTION_39(v148);
    v144 = OUTLINED_FUNCTION_85(v313, v314, v315, v316, &qword_1EAE3DC48, &qword_193966FD0);
    v147 = v144;
  }

  OUTLINED_FUNCTION_47_5(v144, v145, v146, v147);
  OUTLINED_FUNCTION_4(v149, v150);
  if (v0 + 22 > (v155 >> 1))
  {
    v317 = OUTLINED_FUNCTION_39(v155);
    v151 = OUTLINED_FUNCTION_84_2(v317, v318, v319, v320, &qword_1EAE3DC48, &qword_193966FD0);
    v154 = v151;
  }

  OUTLINED_FUNCTION_50(v151, v152, v153, v154);
  OUTLINED_FUNCTION_4(v156, v157);
  if (v0 + 23 > (v162 >> 1))
  {
    v321 = OUTLINED_FUNCTION_39(v162);
    v158 = OUTLINED_FUNCTION_85(v321, v322, v323, v324, &qword_1EAE3DC48, &qword_193966FD0);
    v161 = v158;
  }

  OUTLINED_FUNCTION_47_5(v158, v159, v160, v161);
  OUTLINED_FUNCTION_4(v163, v164);
  if (v0 + 24 > (v169 >> 1))
  {
    v325 = OUTLINED_FUNCTION_39(v169);
    v165 = OUTLINED_FUNCTION_84_2(v325, v326, v327, v328, &qword_1EAE3DC48, &qword_193966FD0);
    v168 = v165;
  }

  OUTLINED_FUNCTION_50(v165, v166, v167, v168);
  OUTLINED_FUNCTION_4(v170, v171);
  if (v0 + 25 > (v176 >> 1))
  {
    v329 = OUTLINED_FUNCTION_39(v176);
    v172 = OUTLINED_FUNCTION_85(v329, v330, v331, v332, &qword_1EAE3DC48, &qword_193966FD0);
    v175 = v172;
  }

  OUTLINED_FUNCTION_47_5(v172, v173, v174, v175);
  OUTLINED_FUNCTION_4(v177, v178);
  if (v0 + 26 > (v183 >> 1))
  {
    v333 = OUTLINED_FUNCTION_39(v183);
    v179 = OUTLINED_FUNCTION_84_2(v333, v334, v335, v336, &qword_1EAE3DC48, &qword_193966FD0);
    v182 = v179;
  }

  OUTLINED_FUNCTION_50(v179, v180, v181, v182);
  OUTLINED_FUNCTION_4(v184, v185);
  if (v0 + 27 > (v190 >> 1))
  {
    v337 = OUTLINED_FUNCTION_39(v190);
    v186 = OUTLINED_FUNCTION_85(v337, v338, v339, v340, &qword_1EAE3DC48, &qword_193966FD0);
    v189 = v186;
  }

  OUTLINED_FUNCTION_47_5(v186, v187, v188, v189);
  OUTLINED_FUNCTION_4(v191, v192);
  if (v0 + 28 > (v197 >> 1))
  {
    v341 = OUTLINED_FUNCTION_39(v197);
    v193 = OUTLINED_FUNCTION_84_2(v341, v342, v343, v344, &qword_1EAE3DC48, &qword_193966FD0);
    v196 = v193;
  }

  OUTLINED_FUNCTION_50(v193, v194, v195, v196);
  OUTLINED_FUNCTION_4(v198, v199);
  if (v0 + 29 > (v204 >> 1))
  {
    v345 = OUTLINED_FUNCTION_39(v204);
    v200 = OUTLINED_FUNCTION_85(v345, v346, v347, v348, &qword_1EAE3DC48, &qword_193966FD0);
    v203 = v200;
  }

  OUTLINED_FUNCTION_47_5(v200, v201, v202, v203);
  OUTLINED_FUNCTION_4(v205, v206);
  if (v0 + 30 > (v211 >> 1))
  {
    v349 = OUTLINED_FUNCTION_39(v211);
    v207 = OUTLINED_FUNCTION_84_2(v349, v350, v351, v352, &qword_1EAE3DC48, &qword_193966FD0);
    v210 = v207;
  }

  OUTLINED_FUNCTION_50(v207, v208, v209, v210);
  OUTLINED_FUNCTION_4(v212, v213);
  if (v0 + 31 > (v218 >> 1))
  {
    v353 = OUTLINED_FUNCTION_39(v218);
    v214 = OUTLINED_FUNCTION_85(v353, v354, v355, v356, &qword_1EAE3DC48, &qword_193966FD0);
    v217 = v214;
  }

  OUTLINED_FUNCTION_47_5(v214, v215, v216, v217);
  OUTLINED_FUNCTION_4(v219, v220);
  if (v0 + 32 > (v225 >> 1))
  {
    v357 = OUTLINED_FUNCTION_39(v225);
    v221 = OUTLINED_FUNCTION_84_2(v357, v358, v359, v360, &qword_1EAE3DC48, &qword_193966FD0);
    v224 = v221;
  }

  OUTLINED_FUNCTION_50(v221, v222, v223, v224);
  return OUTLINED_FUNCTION_38_1(v226, v227);
}

void IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
      case 0xELL:
      case 0xFLL:
      case 0x1DLL:
      case 0x1ELL:
        return;
      case 3:
        OUTLINED_FUNCTION_71_13();
        break;
      case 4:
        OUTLINED_FUNCTION_74_9();
        break;
      case 6:
        OUTLINED_FUNCTION_70_8();
        break;
      default:
        OUTLINED_FUNCTION_38();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v6 = v1 == 0xD000000000000012 && v5 == v0;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_6_27();
      v8 = v3 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v9 = v1 == 0x7261646E656C6143 && v0 == 0xEE0073746E657645;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = v1 == OUTLINED_FUNCTION_71_13() && v0 == v10;
          if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v13 = v1 == OUTLINED_FUNCTION_74_9() && v0 == v12;
            if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_38();
              v15 = v1 == 0xD000000000000017 && v14 == v0;
              if (v15 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v17 = v1 == OUTLINED_FUNCTION_70_8() && v0 == v16;
                if (v17 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  v4 = 6;
                }

                else
                {
                  OUTLINED_FUNCTION_38();
                  v19 = v1 == 0xD000000000000010 && v18 == v0;
                  if (v19 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    v4 = 7;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_38();
                    v21 = v1 == 0xD000000000000010 && v20 == v0;
                    if (v21 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      v4 = 8;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_38();
                      v23 = v1 == 0xD00000000000001BLL && v22 == v0;
                      if (v23 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                      {

                        v4 = 9;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        v25 = v1 == 0xD00000000000001ALL && v24 == v0;
                        if (v25 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                        {

                          v4 = 10;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_38();
                          v27 = v1 == 0xD00000000000001CLL && v26 == v0;
                          if (v27 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                          {

                            v4 = 11;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_38();
                            v29 = v1 == 0xD000000000000016 && v28 == v0;
                            if (v29 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                            {

                              v4 = 12;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_38();
                              v31 = v1 == 0xD000000000000018 && v30 == v0;
                              if (v31 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                              {

                                v4 = 13;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_20_18();
                                v33 = v3 && v0 == v32;
                                if (v33 || (OUTLINED_FUNCTION_21_18() & 1) != 0)
                                {

                                  v4 = 14;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_20_18();
                                  v35 = v3 && v0 == v34;
                                  if (v35 || (OUTLINED_FUNCTION_21_18() & 1) != 0)
                                  {

                                    v4 = 15;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_38();
                                    v37 = v1 == 0xD000000000000014 && v36 == v0;
                                    if (v37 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                    {

                                      v4 = 16;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_38();
                                      v39 = v1 == 0xD000000000000010 && v38 == v0;
                                      if (v39 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                      {

                                        v4 = 17;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_38();
                                        v41 = v1 == 0xD000000000000016 && v40 == v0;
                                        if (v41 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                        {

                                          v4 = 18;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_38();
                                          v43 = v1 == 0xD00000000000001BLL && v42 == v0;
                                          if (v43 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                          {

                                            v4 = 19;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_78_11();
                                            v45 = v3 && v44 == v0;
                                            if (v45 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                            {

                                              v4 = 20;
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_78_11();
                                              v47 = v3 && v46 == v0;
                                              if (v47 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                              {

                                                v4 = 21;
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_6_27();
                                                v49 = v3 && v48 == v0;
                                                if (v49 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                                {

                                                  v4 = 22;
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_6_27();
                                                  v51 = v3 && v50 == v0;
                                                  if (v51 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                                  {

                                                    v4 = 23;
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_6_27();
                                                    v53 = v3 && v52 == v0;
                                                    if (v53 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                                    {

                                                      v4 = 24;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_26_4();
                                                      v55 = v3 && v54 == v0;
                                                      if (v55 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                      {

                                                        v4 = 25;
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_6_27();
                                                        v57 = v3 && v56 == v0;
                                                        if (v57 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                                        {

                                                          v4 = 26;
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_60();
                                                          v59 = v3 && v58 == v0;
                                                          if (v59 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                          {

                                                            v4 = 27;
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_38();
                                                            v61 = v1 == 0xD000000000000017 && v60 == v0;
                                                            if (v61 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                            {

                                                              v4 = 28;
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_20_18();
                                                              v63 = v3 && v0 == v62;
                                                              if (v63 || (OUTLINED_FUNCTION_21_18() & 1) != 0)
                                                              {

                                                                v4 = 29;
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_20_18();
                                                                if (v3 && v0 == v64)
                                                                {

                                                                  v4 = 30;
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_21_18();
                                                                  OUTLINED_FUNCTION_89();
                                                                  v4 = 30;
                                                                  if ((v1 & 1) == 0)
                                                                  {
                                                                    v4 = 0;
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

  OUTLINED_FUNCTION_12_1(v4);
}