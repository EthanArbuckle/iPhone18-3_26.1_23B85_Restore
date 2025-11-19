__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CGSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t OnScreenContent.appEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v42 - v5;
  v6 = type metadata accessor for OnScreenContent.Content();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v42 - v20;
  OnScreenContent.content.getter();
  v43 = *(v7 + 88);
  v44 = v7 + 88;
  if (v43(v13, v6) == *MEMORY[0x277D1D368])
  {
    (*(v7 + 96))(v13, v6);
    v22 = type metadata accessor for OnScreenContent.Document();
    v23 = *(v22 - 8);
    v42 = v1;
    v24 = v6;
    v25 = v7;
    v26 = v11;
    v27 = v21;
    v28 = a1;
    v29 = v23;
    (*(v23 + 32))(v17, v13, v22);
    (*(v29 + 56))(v17, 0, 1, v22);
    a1 = v28;
    v21 = v27;
    v11 = v26;
    v7 = v25;
    v6 = v24;
  }

  else
  {
    v22 = type metadata accessor for OnScreenContent.Document();
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
    (*(v7 + 8))(v13, v6);
  }

  type metadata accessor for OnScreenContent.Document();
  v30 = *(v22 - 8);
  if ((*(v30 + 48))(v17, 1, v22) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v17, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMR);
    v31 = type metadata accessor for TypedValue.EntityIdentifierValue();
    (*(*(v31 - 8) + 56))(v21, 1, 1, v31);
  }

  else
  {
    OnScreenContent.Document.entity.getter();
    (*(v30 + 8))(v17, v22);
    v32 = type metadata accessor for TypedValue.EntityIdentifierValue();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v21, 1, v32) != 1)
    {
      (*(v33 + 32))(a1, v21, v32);
      return (*(v33 + 56))(a1, 0, 1, v32);
    }
  }

  v34 = v21;
  OnScreenContent.content.getter();
  if (v43(v11, v6) == *MEMORY[0x277D1D360])
  {
    (*(v7 + 96))(v11, v6);
    v35 = type metadata accessor for OnScreenContent.Image();
    v36 = *(v35 - 8);
    v37 = v45;
    (*(v36 + 32))(v45, v11, v35);
    (*(v36 + 56))(v37, 0, 1, v35);
  }

  else
  {
    v35 = type metadata accessor for OnScreenContent.Image();
    v37 = v45;
    (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
    (*(v7 + 8))(v11, v6);
  }

  type metadata accessor for OnScreenContent.Image();
  v38 = *(v35 - 8);
  if ((*(v38 + 48))(v37, 1, v35) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v37, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
    v39 = type metadata accessor for TypedValue.EntityIdentifierValue();
    (*(*(v39 - 8) + 56))(a1, 1, 1, v39);
  }

  else
  {
    OnScreenContent.Image.entity.getter();
    (*(v38 + 8))(v37, v35);
  }

  v40 = type metadata accessor for TypedValue.EntityIdentifierValue();
  result = (*(*(v40 - 8) + 48))(v34, 1, v40);
  if (result != 1)
  {
    return outlined destroy of OnScreenContent.Document?(v34, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
  }

  return result;
}

Swift::Bool __swiftcall OnScreenContent.isScreenshot()()
{
  v0 = type metadata accessor for OnScreenContent.Content();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  OnScreenContent.content.getter();
  if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D1D360])
  {
    (*(v1 + 96))(v4, v0);
    v9 = type metadata accessor for OnScreenContent.Image();
    v10 = *(v9 - 8);
    (*(v10 + 32))(v8, v4, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
  }

  else
  {
    v9 = type metadata accessor for OnScreenContent.Image();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    (*(v1 + 8))(v4, v0);
  }

  type metadata accessor for OnScreenContent.Image();
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v8, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
    v12 = 0;
  }

  else
  {
    v12 = OnScreenContent.Image.isSnapshot.getter();
    (*(v11 + 8))(v8, v9);
  }

  return v12 & 1;
}

Swift::Bool __swiftcall OnScreenContent.isAppEntity()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v41 = v38 - v3;
  v4 = type metadata accessor for OnScreenContent.Content();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v40 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v42 = v38 - v20;
  v39 = v0;
  OnScreenContent.content.getter();
  v21 = *(v5 + 88);
  if (v21(v11, v4) == *MEMORY[0x277D1D368])
  {
    (*(v5 + 96))(v11, v4);
    v22 = type metadata accessor for OnScreenContent.Document();
    v23 = *(v22 - 8);
    v38[1] = v5 + 88;
    v24 = v21;
    v25 = v23;
    (*(v23 + 32))(v15, v11, v22);
    (*(v25 + 56))(v15, 0, 1, v22);
    v21 = v24;
  }

  else
  {
    v22 = type metadata accessor for OnScreenContent.Document();
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
    (*(v5 + 8))(v11, v4);
  }

  type metadata accessor for OnScreenContent.Document();
  v26 = *(v22 - 8);
  if ((*(v26 + 48))(v15, 1, v22) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v15, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMR);
    v27 = type metadata accessor for TypedValue.EntityIdentifierValue();
    v28 = v42;
    (*(*(v27 - 8) + 56))(v42, 1, 1, v27);
  }

  else
  {
    v28 = v42;
    OnScreenContent.Document.entity.getter();
    (*(v26 + 8))(v15, v22);
    v29 = type metadata accessor for TypedValue.EntityIdentifierValue();
    v30 = 1;
    if ((*(*(v29 - 8) + 48))(v28, 1, v29) != 1)
    {
      goto LABEL_14;
    }
  }

  outlined destroy of OnScreenContent.Document?(v28, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
  OnScreenContent.content.getter();
  if (v21(v9, v4) == *MEMORY[0x277D1D360])
  {
    (*(v5 + 96))(v9, v4);
    v31 = type metadata accessor for OnScreenContent.Image();
    v32 = *(v31 - 8);
    v33 = v41;
    (*(v32 + 32))(v41, v9, v31);
    (*(v32 + 56))(v33, 0, 1, v31);
  }

  else
  {
    v31 = type metadata accessor for OnScreenContent.Image();
    v33 = v41;
    (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
    (*(v5 + 8))(v9, v4);
  }

  v28 = v40;
  type metadata accessor for OnScreenContent.Image();
  v34 = *(v31 - 8);
  if ((*(v34 + 48))(v33, 1, v31) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v33, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
    v35 = type metadata accessor for TypedValue.EntityIdentifierValue();
    (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
LABEL_13:
    v30 = 0;
    goto LABEL_14;
  }

  OnScreenContent.Image.entity.getter();
  (*(v34 + 8))(v33, v31);
  v36 = type metadata accessor for TypedValue.EntityIdentifierValue();
  v30 = 1;
  if ((*(*(v36 - 8) + 48))(v28, 1, v36) == 1)
  {
    goto LABEL_13;
  }

LABEL_14:
  outlined destroy of OnScreenContent.Document?(v28, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
  return v30;
}

Swift::Bool __swiftcall OnScreenContent.isRelevantEntity()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v24[-v2];
  v4 = type metadata accessor for TypeIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v24[-v13];
  OnScreenContent.appEntity.getter(v3);
  v15 = type metadata accessor for TypedValue.EntityIdentifierValue();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v3, 1, v15) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v3, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
LABEL_6:
    v21 = 0;
    return v21 & 1;
  }

  MEMORY[0x253056C10]();
  (*(v16 + 8))(v3, v15);
  (*(v5 + 32))(v14, v12, v4);
  (*(v5 + 16))(v9, v14, v4);
  if ((*(v5 + 88))(v9, v4) != *MEMORY[0x277D72D28])
  {
    v22 = *(v5 + 8);
    v22(v14, v4);
    v22(v9, v4);
    goto LABEL_6;
  }

  (*(v5 + 96))(v9, v4);
  v17 = *v9;
  v18 = *(*v9 + 32);
  v19 = *(v17 + 40);

  v25[0] = v18;
  v25[1] = v19;
  MEMORY[0x28223BE20](v20);
  *&v24[-16] = v25;
  v21 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v24[-32], &outlined read-only object #0 of one-time initialization function for assistantSchemas);
  (*(v5 + 8))(v14, v4);

  return v21 & 1;
}

Swift::Bool __swiftcall OnScreenContent.isWindowContentGeneratedPDF()()
{
  v0 = type metadata accessor for OnScreenContent.Content();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  OnScreenContent.content.getter();
  if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D1D368])
  {
    (*(v1 + 96))(v4, v0);
    v9 = type metadata accessor for OnScreenContent.Document();
    v10 = *(v9 - 8);
    (*(v10 + 32))(v8, v4, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
  }

  else
  {
    v9 = type metadata accessor for OnScreenContent.Document();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    (*(v1 + 8))(v4, v0);
  }

  type metadata accessor for OnScreenContent.Document();
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v8, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMR);
    v12 = 0;
  }

  else
  {
    v12 = OnScreenContent.Document.isWindowContentGeneratedPDF.getter();
    (*(v11 + 8))(v8, v9);
  }

  return v12 & 1;
}

uint64_t OnScreenContent.entityWithType.getter@<X0>(char *a1@<X8>)
{
  v68 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v58 - v4;
  v6 = type metadata accessor for OnScreenContent.Content();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v69 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v66 = &v58 - v22;
  v23 = type metadata accessor for TypedValue.EntityIdentifierValue();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v60 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v61 = &v58 - v28;
  v64 = v1;
  OnScreenContent.content.getter();
  v62 = *(v7 + 88);
  v63 = v7 + 88;
  v29 = v62(v13, v6);
  v30 = *MEMORY[0x277D1D368];
  v65 = v6;
  v67 = v7;
  if (v29 == v30)
  {
    (*(v7 + 96))(v13, v6);
    v31 = type metadata accessor for OnScreenContent.Document();
    v32 = *(v31 - 8);
    v59 = v11;
    v33 = v32;
    (*(v32 + 32))(v17, v13, v31);
    (*(v33 + 56))(v17, 0, 1, v31);
    v11 = v59;
  }

  else
  {
    v31 = type metadata accessor for OnScreenContent.Document();
    (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
    (*(v7 + 8))(v13, v6);
  }

  type metadata accessor for OnScreenContent.Document();
  v34 = *(v31 - 8);
  v35 = (*(v34 + 48))(v17, 1, v31);
  v36 = v66;
  if (v35 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v17, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMR);
    (*(v24 + 56))(v36, 1, 1, v23);
    v37 = v67;
  }

  else
  {
    OnScreenContent.Document.entity.getter();
    (*(v34 + 8))(v17, v31);
    v38 = (*(v24 + 48))(v36, 1, v23);
    v37 = v67;
    if (v38 != 1)
    {
      v47 = *(v24 + 32);
      v48 = v61;
      v47(v61, v36, v23);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetMR);
      v50 = *(v49 + 48);
      v51 = v68;
      v47(v68, v48, v23);
      v51[v50] = 0;
      return (*(*(v49 - 8) + 56))(v51, 0, 1, v49);
    }
  }

  outlined destroy of OnScreenContent.Document?(v36, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
  OnScreenContent.content.getter();
  v39 = v65;
  if (v62(v11, v65) == *MEMORY[0x277D1D360])
  {
    (*(v37 + 96))(v11, v39);
    v40 = type metadata accessor for OnScreenContent.Image();
    v41 = v11;
    v42 = *(v40 - 8);
    (*(v42 + 32))(v5, v41, v40);
    (*(v42 + 56))(v5, 0, 1, v40);
  }

  else
  {
    v40 = type metadata accessor for OnScreenContent.Image();
    (*(*(v40 - 8) + 56))(v5, 1, 1, v40);
    (*(v37 + 8))(v11, v39);
  }

  type metadata accessor for OnScreenContent.Image();
  v43 = *(v40 - 8);
  if ((*(v43 + 48))(v5, 1, v40) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v5, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
    (*(v24 + 56))(v69, 1, 1, v23);
LABEL_13:
    outlined destroy of OnScreenContent.Document?(v69, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetMR);
    return (*(*(v45 - 8) + 56))(v68, 1, 1, v45);
  }

  v44 = v69;
  OnScreenContent.Image.entity.getter();
  (*(v43 + 8))(v5, v40);
  if ((*(v24 + 48))(v44, 1, v23) == 1)
  {
    goto LABEL_13;
  }

  v52 = *(v24 + 32);
  v53 = v60;
  v52(v60, v69, v23);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0V6entity_26GenerativeAssistantActions0E4TypeO4typetMR);
  v55 = v23;
  v56 = *(v54 + 48);
  v57 = v68;
  v52(v68, v53, v55);
  v57[v56] = 1;
  return (*(*(v54 - 8) + 56))(v57, 0, 1, v54);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EntityType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x253057730](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EntityType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x253057730](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x253057040](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance NSTextCheckingType(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x253056EA0](v2);

  *a1 = v3;
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance GATSchemaGATUsecase@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSTextCheckingKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t _sSo21NSAttributedStringKeyaSYSCSY8rawValue03RawE0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSTextCheckingKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x253056EA0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of OnScreenContent.Document?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSTextCheckingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSTextCheckingKey and conformance NSTextCheckingKey, type metadata accessor for NSTextCheckingKey);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSTextCheckingKey and conformance NSTextCheckingKey, type metadata accessor for NSTextCheckingKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t getEnumTagSinglePayload for EntityType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EntityType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type EntityType and conformance EntityType()
{
  result = lazy protocol witness table cache variable for type EntityType and conformance EntityType;
  if (!lazy protocol witness table cache variable for type EntityType and conformance EntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityType and conformance EntityType);
  }

  return result;
}

void type metadata accessor for CGSize(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t one-time initialization function for shared()
{
  v0 = type metadata accessor for SELFUtils();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 57) = 0u;
  *(v3 + 73) = 1;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  v4 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatID;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  result = (v6)(v3 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID, 1, 1, v5);
  v8 = v3 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v3 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount;
  *v9 = 0;
  *(v9 + 4) = 1;
  *(v3 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_didInterruptRequest) = 0;
  static SELFUtils.shared = v3;
  return result;
}

{
  v0 = [objc_allocWithZone(MEMORY[0x277CF89F8]) init];
  v4 = type metadata accessor for CARSessionStatus();
  v5 = &protocol witness table for CARSessionStatus;
  *&v3 = v0;
  type metadata accessor for CarUtils();
  v1 = swift_allocObject();
  result = outlined init with take of TypedValueAsyncResolvable(&v3, v1 + 16);
  static CarUtils.shared = v1;
  return result;
}

uint64_t static SELFUtils.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

__n128 SELFUtils.gatMediaInfo.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 48);
  result = *(v1 + 58);
  *(a1 + 42) = result;
  return result;
}

__n128 SELFUtils.gatMediaInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 58) = result;
  return result;
}

uint64_t key path setter for SELFUtils.turnID : SELFUtils(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 88);
  *(v4 + 80) = v3;
  *(v4 + 88) = v2;
}

uint64_t SELFUtils.turnID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for SELFUtils.gatID : SELFUtils(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of UUID?(a1, &v15 - v10);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  outlined assign with take of UUID?(v11, v12 + v13);
  return swift_endAccess();
}

uint64_t SELFUtils.gatID.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of UUID?(v2 + v4, a2);
}

Swift::Void __swiftcall SELFUtils.syncFirstTurn(_:)(Swift::String_optional a1)
{
  v2 = v1;
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v54 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  if (object)
  {
    v58 = v9;
    swift_beginAccess();
    v20 = *(v1 + 88);
    v59 = countAndFlagsBits;
    *(v2 + 80) = countAndFlagsBits;
    *(v2 + 88) = object;

    UUID.init()();
    v21 = *(v6 + 56);
    v21(v19, 0, 1, v5);
    v22 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
    swift_beginAccess();
    outlined assign with take of UUID?(v19, v2 + v22);
    swift_endAccess();
    UUID.init()();
    v21(v19, 0, 1, v5);
    v23 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatID;
    swift_beginAccess();
    outlined assign with take of UUID?(v19, v2 + v23);
    swift_endAccess();
    SELFUtils.emitRequestLinkForGAT()();
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.selfSchemaLogger);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v56 = v26;
      v57 = v25;
      v27 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v60[0] = v55;
      *v27 = 136315650;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, object, v60);
      *(v27 + 12) = 2080;
      outlined init with copy of UUID?(v2 + v22, v17);
      v59 = *(v6 + 48);
      v28 = v59(v17, 1, v5);
      v54 = v6;
      if (v28)
      {
        outlined destroy of UUID?(v17);
        v29 = 0xE500000000000000;
        v30 = 0x7974706D65;
        v31 = 0x7974706D65;
      }

      else
      {
        v43 = v58;
        (*(v6 + 16))(v58, v17, v5);
        outlined destroy of UUID?(v17);
        v44 = UUID.uuidString.getter();
        v29 = v45;
        (*(v6 + 8))(v43, v5);
        v31 = v44;
        v30 = 0x7974706D65;
      }

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v29, v60);

      *(v27 + 14) = v46;
      *(v27 + 22) = 2080;
      outlined init with copy of UUID?(v2 + v23, v14);
      if (v59(v14, 1, v5))
      {
        outlined destroy of UUID?(v14);
        v47 = 0xE500000000000000;
      }

      else
      {
        v48 = v54;
        v49 = v58;
        (*(v54 + 16))(v58, v14, v5);
        outlined destroy of UUID?(v14);
        v30 = UUID.uuidString.getter();
        v47 = v50;
        (*(v48 + 8))(v49, v5);
      }

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v47, v60);

      *(v27 + 24) = v51;
      v52 = v57;
      _os_log_impl(&dword_24FD67000, v57, v56, "Synced the first turnID from AppIntent: %s\n-> new gatClientTraceID: %s\n-> new gatID: %s", v27, 0x20u);
      v53 = v55;
      swift_arrayDestroy();
      MEMORY[0x253057F40](v53, -1, -1);
      MEMORY[0x253057F40](v27, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.selfSchemaLogger);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_24FD67000, v33, v34, "Error in Syncing the first turnID, neither the turnID or assistantContextID existed.", v35, 2u);
      MEMORY[0x253057F40](v35, -1, -1);
    }

    UUID.init()();
    v36 = UUID.uuidString.getter();
    v38 = v37;
    (*(v6 + 8))(v9, v5);
    swift_beginAccess();
    v39 = *(v2 + 88);
    *(v2 + 80) = v36;
    *(v2 + 88) = v38;

    UUID.init()();
    v40 = *(v6 + 56);
    v40(v19, 0, 1, v5);
    v41 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
    swift_beginAccess();
    outlined assign with take of UUID?(v19, v2 + v41);
    swift_endAccess();
    UUID.init()();
    v40(v19, 0, 1, v5);
    v42 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatID;
    swift_beginAccess();
    outlined assign with take of UUID?(v19, v2 + v42);
    swift_endAccess();
    SELFUtils.emitRequestLinkForGAT()();
  }
}

Swift::Void __swiftcall SELFUtils.syncTurnContext(_:)(Swift::String_optional a1)
{
  v2 = v1;
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v58 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  swift_beginAccess();
  v19 = *(v2 + 88);
  if (object)
  {
    if (v19)
    {
      if (*(v2 + 80) == countAndFlagsBits && v19 == object)
      {
        goto LABEL_6;
      }

      v20 = *(v2 + 88);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_6;
      }
    }
  }

  else if (!v19)
  {
LABEL_6:
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.selfSchemaLogger);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_24FD67000, v22, v23, "syncTurnContext: turnContext.identifier is the same as previous cached turnID, no change.", v24, 2u);
      MEMORY[0x253057F40](v24, -1, -1);
    }

    return;
  }

  v56 = v9;
  *(v2 + 80) = countAndFlagsBits;
  *(v2 + 88) = object;

  UUID.init()();
  v57 = v6;
  v25 = *(v6 + 56);
  v25(v18, 0, 1, v5);
  v26 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
  swift_beginAccess();
  outlined assign with take of UUID?(v18, v2 + v26);
  swift_endAccess();
  UUID.init()();
  v25(v18, 0, 1, v5);
  v27 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatID;
  swift_beginAccess();
  outlined assign with take of UUID?(v18, v2 + v27);
  swift_endAccess();
  SELFUtils.emitRequestLinkForGAT()();
  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.selfSchemaLogger);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v55 = v30;
    v31 = 0x7974706D65;
    v32 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v59[0] = v54;
    *v32 = 136315650;
    if (object)
    {
      v31 = countAndFlagsBits;
      v33 = object;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v59);

    *(v32 + 4) = v34;
    *(v32 + 12) = 2080;
    outlined init with copy of UUID?(v2 + v26, v16);
    v35 = v57;
    v36 = *(v57 + 48);
    if (v36(v16, 1, v5))
    {
      outlined destroy of UUID?(v16);
      v37 = 0xE500000000000000;
      v38 = 0x7974706D65;
      v39 = 0x7974706D65;
    }

    else
    {
      v40 = *(v35 + 16);
      v53 = v29;
      v41 = v56;
      v40(v56, v16, v5);
      outlined destroy of UUID?(v16);
      v42 = UUID.uuidString.getter();
      v37 = v43;
      v44 = v41;
      v29 = v53;
      (*(v35 + 8))(v44, v5);
      v39 = v42;
      v38 = 0x7974706D65;
    }

    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v37, v59);

    *(v32 + 14) = v45;
    *(v32 + 22) = 2080;
    v46 = v58;
    outlined init with copy of UUID?(v2 + v27, v58);
    if (v36(v46, 1, v5))
    {
      outlined destroy of UUID?(v46);
      v47 = 0xE500000000000000;
    }

    else
    {
      v49 = v56;
      v48 = v57;
      (*(v57 + 16))(v56, v46, v5);
      outlined destroy of UUID?(v46);
      v38 = UUID.uuidString.getter();
      v47 = v50;
      (*(v48 + 8))(v49, v5);
    }

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v47, v59);

    *(v32 + 24) = v51;
    _os_log_impl(&dword_24FD67000, v29, v55, "Synced new turnID from AppIntent: %s\n-> new gatClientTraceID: %s\n-> new gatID: %s", v32, 0x20u);
    v52 = v54;
    swift_arrayDestroy();
    MEMORY[0x253057F40](v52, -1, -1);
    MEMORY[0x253057F40](v32, -1, -1);
  }
}

void SELFUtils.emitRequestLinkForGAT()()
{
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64);
  v3 = (MEMORY[0x28223BE20])();
  v51 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v52 = &v48 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v50 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v53 = &v48 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v48 - v22;
  swift_beginAccess();
  if (*(v1 + 88))
  {
    v24 = *(v1 + 80);
    v25 = *(v1 + 88);

    UUID.init(uuidString:)();

    v26 = v13[6];
    if (v26(v11, 1, v12) == 1)
    {
      v9 = v11;
    }

    else
    {
      v49 = v13[4];
      v49(v23, v11, v12);
      v27 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatID;
      swift_beginAccess();
      outlined init with copy of UUID?(v1 + v27, v9);
      if (v26(v9, 1, v12) != 1)
      {
        v49(v21, v9, v12);
        specialized SELFUtils.buildAndEmitRequestLinkEvent(sourceComponent:sourceUUID:targetComponent:targetUUID:)(46, v23, 56);
        v47 = v13[1];
        v47(v21, v12);
        v47(v23, v12);
        v33 = v53;
        v28 = 0x27F39F000;
        goto LABEL_12;
      }

      (v13[1])(v23, v12);
    }

    outlined destroy of UUID?(v9);
  }

  v28 = 0x27F39F000uLL;
  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.selfSchemaLogger);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v53;
  if (v32)
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_24FD67000, v30, v31, "Failed to create target link because no upper stream clientTraceId/turnID or GATID is nil", v34, 2u);
    MEMORY[0x253057F40](v34, -1, -1);
  }

LABEL_12:
  v35 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
  swift_beginAccess();
  v36 = v52;
  outlined init with copy of UUID?(v1 + v35, v52);
  v37 = v13[6];
  if (v37(v36, 1, v12) != 1)
  {
    v38 = v13[4];
    v38(v33, v36, v12);
    v39 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatID;
    swift_beginAccess();
    v40 = v1 + v39;
    v36 = v51;
    outlined init with copy of UUID?(v40, v51);
    if (v37(v36, 1, v12) != 1)
    {
      v45 = v50;
      v38(v50, v36, v12);
      specialized SELFUtils.buildAndEmitRequestLinkEvent(sourceComponent:sourceUUID:targetComponent:targetUUID:)(56, v45, 46);
      v46 = v13[1];
      v46(v45, v12);
      v46(v33, v12);
      return;
    }

    (v13[1])(v33, v12);
  }

  outlined destroy of UUID?(v36);
  if (*(v28 + 1744) != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.selfSchemaLogger);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_24FD67000, v42, v43, "Failed to create target link because no gatClientTraceID", v44, 2u);
    MEMORY[0x253057F40](v44, -1, -1);
  }
}

uint64_t SELFUtils.gatUsecase.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase);
  result = swift_beginAccess();
  v5 = *v3;
  v6 = *(v3 + 4);
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1) & 1;
  if ((v6 & 1) == 0 && v5 == 6 && (a1 & 0x100000000) == 0 && v5 != a1)
  {
    *v3 = 6;
    *(v3 + 4) = 0;
  }

  return result;
}

void (*SELFUtils.gatUsecase.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 4);
  *(v4 + 40) = *v6;
  *(v4 + 44) = v7;
  return SELFUtils.gatUsecase.modify;
}

void SELFUtils.gatUsecase.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 40);
  v3 = (*(v1 + 24) + *(v1 + 32));
  v4 = *(v1 + 44);
  v5 = *v3;
  v6 = *(v3 + 4);
  *v3 = v2;
  *(v3 + 4) = v4;
  if ((v6 & 1) == 0 && v5 == 6 && (v4 & 1) == 0 && v2 != 6)
  {
    v7 = *(v1 + 24) + *(v1 + 32);
    *v7 = 6;
    *(v7 + 4) = 0;
  }

  free(v1);
}

unint64_t SELFUtils.gatUsecase.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  return *v2 | (*(v2 + 4) << 32);
}

uint64_t SELFUtils.generativeResultCharactersCount.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount;
  result = swift_beginAccess();
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1) & 1;
  return result;
}

Swift::Void __swiftcall SELFUtils.cleanCurrentSessionData()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v13 = 1;
  swift_beginAccess();
  *(v0 + 57) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 73) = v13;
  swift_beginAccess();
  v5 = *(v0 + 88);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  v8 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatID;
  swift_beginAccess();
  outlined assign with take of UUID?(v4, v0 + v8);
  swift_endAccess();
  v7(v4, 1, 1, v6);
  v9 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID;
  swift_beginAccess();
  outlined assign with take of UUID?(v4, v0 + v9);
  swift_endAccess();
  v10 = v0 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
  swift_beginAccess();
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v0 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount;
  swift_beginAccess();
  *v11 = 0;
  *(v11 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_didInterruptRequest) = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  MetricsUtils.cleanAllDataAfterEmitToSELF()();
}

void *SELFUtils.createEventMetadata()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277D577E8]) init];
  if (v10)
  {
    v11 = v10;
    v12 = OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatID;
    swift_beginAccess();
    outlined init with copy of UUID?(v0 + v12, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      outlined destroy of UUID?(v4);
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.selfSchemaLogger);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_24FD67000, v14, v15, "Failed to sync GATID because it is nil", v16, 2u);
        MEMORY[0x253057F40](v16, -1, -1);
      }
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
      v21 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v23 = [v21 initWithNSUUID_];

      [v11 setGatId_];
      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.selfSchemaLogger);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24FD67000, v18, v19, "Failed to create event metadata", v20, 2u);
      MEMORY[0x253057F40](v20, -1, -1);
    }

    return 0;
  }

  return v11;
}

id SELFUtils.createPerformanceMetrics()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D57898]) init];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MetricsUtils.shared;
  swift_beginAccess();
  v3 = v2[13];
  v4 = *(v2 + 112);
  v5 = *(v2 + 145);
  if ((v5 & 1) == 0)
  {
    v6 = v2[5];
    v7 = *(v2 + 48);
    v8 = v2[9];
    v9 = *(v2 + 80);
    v10 = v2[11];
    v11 = *(v2 + 96);
    v12 = v2[15];
    v13 = *(v2 + 128);
    v14 = v2[17];
    v17 = *(v2 + 144);
    if (v2[8])
    {
      if ((v2[10] & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      [v1 setStartSiriSessionDurationInSeconds_];
      if ((v9 & 1) == 0)
      {
LABEL_6:
        [v1 setGenerativeRequestDurationInSeconds_];
        if (v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    if (v11)
    {
      goto LABEL_11;
    }

LABEL_10:
    [v1 setLoadScreenContentDurationInSeconds_];
    swift_beginAccess();
    if ((*(v0 + 73) & 1) == 0 && (*(v0 + 32) & 1) == 0 && v1)
    {
      [v1 setLoadScreenContentRateKBsPerSecond_];
      if (v4)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_11:
    if (v4)
    {
LABEL_13:
      if (v7 & 1) != 0 || ([v1 setRegisterMediaDurationInSeconds_], swift_beginAccess(), (*(v0 + 73)) || (*(v0 + 32) & 1) != 0 || !v1)
      {
        if (v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
        [v1 setRegisterMediaRateKBsPerSecond_];
        if (v13)
        {
LABEL_17:
          if ((v17 & 1) == 0)
          {
            [v1 setRegisterMediaRateKBsPerSecond_];
          }

          goto LABEL_19;
        }
      }

      [v1 setLoadScreenContentRateKBsPerSecond_];
      goto LABEL_17;
    }

LABEL_12:
    [v1 setImageResizingDurationInSeconds_];
    goto LABEL_13;
  }

LABEL_19:
  v15 = (v0 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount);
  swift_beginAccess();
  if ((v15[1] & 1) == 0)
  {
    [v1 setGenerativeResultCharactersCount_];
  }

  swift_beginAccess();
  if (((*(v0 + 73) | v5) & 1) == 0 && (v4 & 1) == 0 && (*(v0 + 32) & 1) == 0)
  {
    [v1 setImageResizingRateKBsPerSecond_];
  }

  MetricsUtils.cleanAllDataAfterEmitToSELF()();
  if (v1)
  {
    return v1;
  }

  result = [objc_allocWithZone(MEMORY[0x277D57898]) init];
  v1 = result;
  if (result)
  {
    return v1;
  }

  __break(1u);
  return result;
}

void SELFUtils.recordRequestStarted(turnID:appIntentName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277D578F0]) init];
  if (v17)
  {
    v18 = v17;
    [v17 setAppIntentName_];
    if (a2)
    {
      UUID.init(uuidString:)();
    }

    else
    {
      (*(v6 + 56))(v16, 1, 1, v5);
    }

    outlined init with copy of UUID?(v16, v14);
    if ((*(v6 + 48))(v14, 1, v5) == 1)
    {
      outlined destroy of UUID?(v16);
      UUID.init()();
      v23 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v25 = [v23 initWithNSUUID_];

      (*(v6 + 8))(v9, v5);
    }

    else
    {
      (*(v6 + 32))(v9, v14, v5);
      v26 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v27 = UUID._bridgeToObjectiveC()().super.isa;
      v25 = [v26 initWithNSUUID_];

      (*(v6 + 8))(v9, v5);
      outlined destroy of UUID?(v16);
    }

    [v18 setClientTraceId_];

    v28 = specialized SELFUtils.createRequestEvent()(0x277D578D0, &selRef_setRequestContext_, "Failed to create GATSchemaGATRequestContext instance.");
    if (v28)
    {
      v29 = v28;
      v30 = [v28 requestContext];
      if (v30)
      {
        v31 = v30;
        [v30 setStartedOrChanged_];
      }

      SELFUtils.emitEvent(event:)(v29);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.selfSchemaLogger);
    v33 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24FD67000, v33, v20, "Failed to create GATSchemaGATRequestStarted instance.", v21, 2u);
      MEMORY[0x253057F40](v21, -1, -1);
    }

    v22 = v33;
  }
}

Swift::Void __swiftcall SELFUtils.recordRequestEnded()()
{
  if (*(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_didInterruptRequest))
  {
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.selfSchemaLogger);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "GATSchemaGATRequestFailed/Cancel/handOff event recorded not going to proceed to emit the end event.";
LABEL_19:
      _os_log_impl(&dword_24FD67000, v2, v3, v5, v4, 2u);
      MEMORY[0x253057F40](v4, -1, -1);
    }
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D578D8]) init];
    if (v6)
    {
      v7 = v6;
      v8 = SELFUtils.createPerformanceMetrics()();
      [v7 setPerfMetrics_];

      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.selfSchemaLogger);
      v2 = v7;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v25 = v13;
        *v12 = 136315138;
        v14 = v2;
        v15 = [v14 description];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v25);

        *(v12 + 4) = v19;
        _os_log_impl(&dword_24FD67000, v10, v11, "Record the SELFUtils.recordRequestEnded() with ended event: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x253057F40](v13, -1, -1);
        MEMORY[0x253057F40](v12, -1, -1);
      }

      v20 = specialized SELFUtils.createRequestEvent()(0x277D578D0, &selRef_setRequestContext_, "Failed to create GATSchemaGATRequestContext instance.");
      if (v20)
      {
        v21 = v20;
        v22 = [v20 requestContext];
        if (v22)
        {
          v23 = v22;
          [v22 setEnded_];
        }

        SELFUtils.emitEvent(event:)(v21);

        v2 = v21;
      }
    }

    else
    {
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.selfSchemaLogger);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        v5 = "Failed to create GATSchemaGATRequestEnded instance.";
        goto LABEL_19;
      }
    }
  }

  SELFUtils.cleanCurrentSessionData()();
}

void SELFUtils.recordRequestFailed(code:domain:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_didInterruptRequest) = 1;
  v5 = [objc_allocWithZone(MEMORY[0x277D578E0]) init];
  if (!v5)
  {
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.selfSchemaLogger);
    v26 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24FD67000, v26, v24, "Failed to create GATSchemaGATRequestFailed instance.", v25, 2u);
      MEMORY[0x253057F40](v25, -1, -1);
    }

    goto LABEL_14;
  }

  v6 = v5;
  [v5 setErrorCode_];
  [v6 setErrorDomain_];
  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.selfSchemaLogger);
  v26 = v6;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    v12 = v26;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v27);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_24FD67000, v8, v9, "Record the SELFUtils.recordRequestFailed() with failed event: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x253057F40](v11, -1, -1);
    MEMORY[0x253057F40](v10, -1, -1);
  }

  v18 = specialized SELFUtils.createRequestEvent()(0x277D578D0, &selRef_setRequestContext_, "Failed to create GATSchemaGATRequestContext instance.");
  if (!v18)
  {
LABEL_14:
    v22 = v26;
    goto LABEL_15;
  }

  v19 = v18;
  v20 = [v18 requestContext];
  if (v20)
  {
    v21 = v20;
    [v20 setFailed_];
  }

  SELFUtils.emitEvent(event:)(v19);

  v22 = v19;
LABEL_15:
}

void SELFUtils.recordRequestCanceled()(Class *a1, const char *a2, SEL *a3, const char *a4)
{
  *(v4 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_didInterruptRequest) = 1;
  v8 = [objc_allocWithZone(*a1) init];
  if (!v8)
  {
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.selfSchemaLogger);
    v31 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_24FD67000, v31, v29, a4, v30, 2u);
      MEMORY[0x253057F40](v30, -1, -1);
    }

    goto LABEL_14;
  }

  v9 = v8;
  [v8 setExist_];
  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.selfSchemaLogger);
  v31 = v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315138;
    v15 = v31;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = a2;
    v19 = a3;
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v21, &v32);
    a3 = v19;

    *(v13 + 4) = v22;
    _os_log_impl(&dword_24FD67000, v11, v12, v18, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x253057F40](v14, -1, -1);
    MEMORY[0x253057F40](v13, -1, -1);
  }

  v23 = specialized SELFUtils.createRequestEvent()(0x277D578D0, &selRef_setRequestContext_, "Failed to create GATSchemaGATRequestContext instance.");
  if (!v23)
  {
LABEL_14:
    v27 = v31;
    goto LABEL_15;
  }

  v24 = v23;
  v25 = [v23 requestContext];
  if (v25)
  {
    v26 = v25;
    [v25 *a3];
  }

  SELFUtils.emitEvent(event:)(v24);

  v27 = v24;
LABEL_15:
}

Swift::Void __swiftcall SELFUtils.recordLoadScreenContentStarted()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D57880]) init];
  if (!v0)
  {
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.selfSchemaLogger);
    v21 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24FD67000, v21, v19, "Failed to create GATSchemaGATLoadScreenContentEventStarted instance.", v20, 2u);
      MEMORY[0x253057F40](v20, -1, -1);
    }

    goto LABEL_14;
  }

  v1 = v0;
  [v0 setExist_];
  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.selfSchemaLogger);
  v21 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    v7 = v21;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v22);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_24FD67000, v3, v4, "Record the SELFUtils.recordLoadScreenContentStarted() with start event: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253057F40](v6, -1, -1);
    MEMORY[0x253057F40](v5, -1, -1);
  }

  v13 = specialized SELFUtils.createRequestEvent()(0x277D57868, &selRef_setLoadScreenContentContext_, "Failed to create GATSchemaGATLoadScreenContentContext instance.");
  if (!v13)
  {
LABEL_14:
    v17 = v21;
    goto LABEL_15;
  }

  v14 = v13;
  v15 = [v13 loadScreenContentContext];
  if (v15)
  {
    v16 = v15;
    [v15 setStartedOrChanged_];
  }

  SELFUtils.emitEvent(event:)(v14);

  v17 = v14;
LABEL_15:
}

void SELFUtils.recordLoadScreenContentFailed(code:domain:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D57878]) init];
  if (!v4)
  {
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.selfSchemaLogger);
    v25 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_24FD67000, v25, v23, "Failed to create GATSchemaGATLoadScreenContentEventFailed instance.", v24, 2u);
      MEMORY[0x253057F40](v24, -1, -1);
    }

    goto LABEL_14;
  }

  v5 = v4;
  [v4 setErrorCode_];
  [v5 setErrorDomain_];
  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.selfSchemaLogger);
  v25 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    v11 = v25;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v26);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_24FD67000, v7, v8, "Record the SELFUtils.recordLoadScreenContentFailed() with failed event: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x253057F40](v10, -1, -1);
    MEMORY[0x253057F40](v9, -1, -1);
  }

  v17 = specialized SELFUtils.createRequestEvent()(0x277D57868, &selRef_setLoadScreenContentContext_, "Failed to create GATSchemaGATLoadScreenContentContext instance.");
  if (!v17)
  {
LABEL_14:
    v21 = v25;
    goto LABEL_15;
  }

  v18 = v17;
  v19 = [v17 loadScreenContentContext];
  if (v19)
  {
    v20 = v19;
    [v19 setFailed_];
  }

  SELFUtils.emitEvent(event:)(v18);

  v21 = v18;
LABEL_15:
}

void SELFUtils.recordCreateSessionStarted()(Class *a1, char *a2, const char **a3, const char *a4)
{
  v8 = specialized SELFUtils.createRequestEvent()(0x277D57808, &selRef_setCreateSessionContext_, "Failed to create GATSchemaGATCreateSessionContext instance.");
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(*a1) init];
    if (v10)
    {
      v11 = v10;
      [v10 setExist_];
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.selfSchemaLogger);
      v31 = v11;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v32 = v16;
        *v15 = 136315138;
        v17 = v31;
        v18 = [v17 description];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        format = a2;
        v20 = a3;
        v22 = v21;

        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v22, &v32);
        a3 = v20;

        *(v15 + 4) = v23;
        _os_log_impl(&dword_24FD67000, v13, v14, format, v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x253057F40](v16, -1, -1);
        MEMORY[0x253057F40](v15, -1, -1);
      }

      v24 = [v9 createSessionContext];
      if (v24)
      {
        v25 = *a3;
        v26 = v24;
        [v24 v25];
      }

      SELFUtils.emitEvent(event:)(v9);
    }

    else
    {
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.selfSchemaLogger);
      v31 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_24FD67000, v31, v28, a4, v29, 2u);
        MEMORY[0x253057F40](v29, -1, -1);
      }
    }
  }
}

void SELFUtils.recordCreateSessionFailed(code:domain:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized SELFUtils.createRequestEvent()(0x277D57808, &selRef_setCreateSessionContext_, "Failed to create GATSchemaGATCreateSessionContext instance.");
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x277D57818]) init];
    if (v6)
    {
      v7 = v6;
      [v6 setErrorCode_];
      [v7 setErrorDomain_];
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.selfSchemaLogger);
      v24 = v7;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v25 = v12;
        *v11 = 136315138;
        v13 = v24;
        v14 = [v13 description];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v25);

        *(v11 + 4) = v18;
        _os_log_impl(&dword_24FD67000, v9, v10, "Record the SELFUtils.recordCreateSessionFailed() with failed event: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x253057F40](v12, -1, -1);
        MEMORY[0x253057F40](v11, -1, -1);
      }

      v19 = [v5 createSessionContext];
      if (v19)
      {
        v20 = v19;
        [v19 setFailed_];
      }

      SELFUtils.emitEvent(event:)(v5);
    }

    else
    {
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.selfSchemaLogger);
      v24 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_24FD67000, v24, v22, "Failed to create GATSchemaGATCreateSessionEventFailed instance.", v23, 2u);
        MEMORY[0x253057F40](v23, -1, -1);
      }
    }
  }
}

Swift::Void __swiftcall SELFUtils.recordRegisterMediaStarted()()
{
  v0 = specialized SELFUtils.createRequestEvent()(0x277D578A8, &selRef_setRegisterMediaContext_, "Failed to create GATSchemaGATRegisterMediaContext instance.");
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(MEMORY[0x277D578C0]) init];
    if (v2)
    {
      v3 = v2;
      [v2 setExist_];
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.selfSchemaLogger);
      v20 = v3;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v21 = v8;
        *v7 = 136315138;
        v9 = v20;
        v10 = [v9 description];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v21);

        *(v7 + 4) = v14;
        _os_log_impl(&dword_24FD67000, v5, v6, "SELFUtils.recordRegisterMediaStarted() with start event: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x253057F40](v8, -1, -1);
        MEMORY[0x253057F40](v7, -1, -1);
      }

      v15 = [v1 registerMediaContext];
      if (v15)
      {
        v16 = v15;
        [v15 setStartedOrChanged_];
      }

      SELFUtils.emitEvent(event:)(v1);
    }

    else
    {
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.selfSchemaLogger);
      v20 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_24FD67000, v20, v18, "SELFUtils Failed to create GATSchemaGATRegisterMediaEventStarted instance.", v19, 2u);
        MEMORY[0x253057F40](v19, -1, -1);
      }
    }
  }
}

Swift::Void __swiftcall SELFUtils.recordRegisterMediaEnded()()
{
  v0 = specialized SELFUtils.createRequestEvent()(0x277D578A8, &selRef_setRegisterMediaContext_, "Failed to create GATSchemaGATRegisterMediaContext instance.");
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(MEMORY[0x277D578B0]) init];
    if (v2)
    {
      v3 = v2;
      [v2 setExist_];
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.selfSchemaLogger);
      v20 = v3;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v21 = v8;
        *v7 = 136315138;
        v9 = v20;
        v10 = [v9 description];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v21);

        *(v7 + 4) = v14;
        _os_log_impl(&dword_24FD67000, v5, v6, "Record the SELFUtils.recordRegisterMediaEnded() with end event: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x253057F40](v8, -1, -1);
        MEMORY[0x253057F40](v7, -1, -1);
      }

      v15 = [v1 registerMediaContext];
      if (v15)
      {
        v16 = v15;
        [v15 setEnded_];
      }

      SELFUtils.emitEvent(event:)(v1);
    }

    else
    {
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.selfSchemaLogger);
      v20 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_24FD67000, v20, v18, "Failed to create GATSchemaGATRegisterMediaEventEnded instance.", v19, 2u);
        MEMORY[0x253057F40](v19, -1, -1);
      }
    }
  }
}

void SELFUtils.recordRegisterMediaFailed(code:domain:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized SELFUtils.createRequestEvent()(0x277D578A8, &selRef_setRegisterMediaContext_, "Failed to create GATSchemaGATRegisterMediaContext instance.");
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x277D578B8]) init];
    if (v6)
    {
      v7 = v6;
      [v6 setErrorCode_];
      [v7 setErrorDomain_];
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.selfSchemaLogger);
      v24 = v7;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v25 = v12;
        *v11 = 136315138;
        v13 = v24;
        v14 = [v13 description];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v25);

        *(v11 + 4) = v18;
        _os_log_impl(&dword_24FD67000, v9, v10, "Record the SELFUtils.recordRegisterMediaFailed() with failed event: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x253057F40](v12, -1, -1);
        MEMORY[0x253057F40](v11, -1, -1);
      }

      v19 = [v5 registerMediaContext];
      if (v19)
      {
        v20 = v19;
        [v19 setFailed_];
      }

      SELFUtils.emitEvent(event:)(v5);
    }

    else
    {
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.selfSchemaLogger);
      v24 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_24FD67000, v24, v22, "Failed to create GATSchemaGATRegisterMediaEventFailed instance.", v23, 2u);
        MEMORY[0x253057F40](v23, -1, -1);
      }
    }
  }
}

Swift::Void __swiftcall SELFUtils.recordGenerativeRequestEnded()()
{
  v0 = specialized SELFUtils.createRequestEvent()(0x277D57828, &selRef_setGenerativeRequestContext_, "Failed to create GATSchemaGATGenerativeRequestContext instance.");
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(MEMORY[0x277D57830]) init];
    if (v2)
    {
      v3 = v2;
      [v2 setExist_];
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.selfSchemaLogger);
      v20 = v3;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v21 = v8;
        *v7 = 136315138;
        v9 = v20;
        v10 = [v9 description];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v21);

        *(v7 + 4) = v14;
        _os_log_impl(&dword_24FD67000, v5, v6, "Record the SELFUtils.recordGenerativeRequestEnded() with end event: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x253057F40](v8, -1, -1);
        MEMORY[0x253057F40](v7, -1, -1);
      }

      v15 = [v1 generativeRequestContext];
      if (v15)
      {
        v16 = v15;
        [v15 setEnded_];
      }

      SELFUtils.emitEvent(event:)(v1);
    }

    else
    {
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.selfSchemaLogger);
      v20 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_24FD67000, v20, v18, "Failed to create GATSchemaGATGenerativeRequestEventEnded instance.", v19, 2u);
        MEMORY[0x253057F40](v19, -1, -1);
      }
    }
  }
}

void SELFUtils.recordGenerativeRequestFailed(code:domain:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized SELFUtils.createRequestEvent()(0x277D57828, &selRef_setGenerativeRequestContext_, "Failed to create GATSchemaGATGenerativeRequestContext instance.");
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x277D57838]) init];
    if (v6)
    {
      v7 = v6;
      [v6 setErrorCode_];
      [v7 setErrorDomain_];
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.selfSchemaLogger);
      v24 = v7;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v25 = v12;
        *v11 = 136315138;
        v13 = v24;
        v14 = [v13 description];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v25);

        *(v11 + 4) = v18;
        _os_log_impl(&dword_24FD67000, v9, v10, "Record the SELFUtils.recordGenerativeRequestFailed() with failed event: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x253057F40](v12, -1, -1);
        MEMORY[0x253057F40](v11, -1, -1);
      }

      v19 = [v5 generativeRequestContext];
      if (v19)
      {
        v20 = v19;
        [v19 setFailed_];
      }

      SELFUtils.emitEvent(event:)(v5);
    }

    else
    {
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.selfSchemaLogger);
      v24 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_24FD67000, v24, v22, "Failed to create GATSchemaGATGenerativeRequestEventFailed instance.", v23, 2u);
        MEMORY[0x253057F40](v23, -1, -1);
      }
    }
  }
}

Swift::Void __swiftcall SELFUtils.recordImageResizingStarted()()
{
  v0 = specialized SELFUtils.createImageResizingEvent()();
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(MEMORY[0x277D57860]) init];
    if (v2)
    {
      oslog = v2;
      [v2 setExist:1];
      v3 = [v1 imageResizingContext];
      if (v3)
      {
        v4 = v3;
        [v3 setStartedOrChanged_];
      }

      SELFUtils.emitEvent(event:)(v1);
    }

    else
    {
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.selfSchemaLogger);
      oslog = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_24FD67000, oslog, v6, "Failed to create GATSchemaGATImageResizingEventEnded instance.", v7, 2u);
        MEMORY[0x253057F40](v7, -1, -1);
      }
    }
  }
}

void SELFUtils.recordImageResizingEnded(processedMediaType:processedMediaSizeInKBs:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = specialized SELFUtils.createImageResizingEvent()();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D57850]) init];
  if (v9)
  {
    v10 = v9;
    if ((a1 & 0x100000000) != 0)
    {
      swift_beginAccess();
      if (*(v3 + 73) & 1) != 0 || (*(v3 + 56))
      {
LABEL_14:
        if (a3)
        {
          swift_beginAccess();
          if (*(v3 + 73) & 1) != 0 || (*(v3 + 72))
          {
            goto LABEL_20;
          }

          v14 = *(v3 + 64);
        }

        else
        {
          v14 = *&a2;
        }

        [v10 setProcessedMediaSizeInKBs_];
LABEL_20:
        if (one-time initialization token for selfSchemaLogger != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Logger.selfSchemaLogger);
        v16 = v10;
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v30 = v20;
          *v19 = 136315138;
          v21 = v16;
          v22 = [v21 description];
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v30);

          *(v19 + 4) = v26;
          _os_log_impl(&dword_24FD67000, v17, v18, "Record the SELFUtils.recordImageResizingEnded() with end event: %s", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v20);
          MEMORY[0x253057F40](v20, -1, -1);
          MEMORY[0x253057F40](v19, -1, -1);
        }

        v27 = [v8 imageResizingContext];
        if (v27)
        {
          v28 = v27;
          [v27 setEnded_];
        }

        SELFUtils.emitEvent(event:)(v8);

        return;
      }

      a1 = *(v3 + 52);
    }

    [v10 setProcessedMediaType_];
    goto LABEL_14;
  }

  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.selfSchemaLogger);
  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24FD67000, oslog, v12, "Failed to create GATSchemaGATImageResizingEventEnded instance.", v13, 2u);
    MEMORY[0x253057F40](v13, -1, -1);
  }
}

void SELFUtils.recordImageResizingFailed(code:domain:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized SELFUtils.createImageResizingEvent()();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x277D57858]) init];
    if (v6)
    {
      v7 = v6;
      [v6 setErrorCode_];
      [v7 setErrorDomain_];
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.selfSchemaLogger);
      v24 = v7;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v25 = v12;
        *v11 = 136315138;
        v13 = v24;
        v14 = [v13 description];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v25);

        *(v11 + 4) = v18;
        _os_log_impl(&dword_24FD67000, v9, v10, "Record the SELFUtils.recordImageResizingFailed() with failed event: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x253057F40](v12, -1, -1);
        MEMORY[0x253057F40](v11, -1, -1);
      }

      v19 = [v5 imageResizingContext];
      if (v19)
      {
        v20 = v19;
        [v19 setFailed_];
      }

      SELFUtils.emitEvent(event:)(v5);
    }

    else
    {
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.selfSchemaLogger);
      v24 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_24FD67000, v24, v22, "Failed to create GATSchemaGATImageResizingEventFailed instance.", v23, 2u);
        MEMORY[0x253057F40](v23, -1, -1);
      }
    }
  }
}

Swift::Void __swiftcall SELFUtils.emitLLMAgent()()
{
  v0 = type metadata accessor for GenerativeAssistantProvider.LLMProvider();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D57888]) init];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x277D577E0]) init];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for GenerativeAssistantProvider();
      static GenerativeAssistantProvider.shared.getter();
      dispatch thunk of GenerativeAssistantProvider.llm()();

      (*(v1 + 16))(v5, v7, v0);
      if ((*(v1 + 88))(v5, v0) == *MEMORY[0x277D0D670])
      {
        if (one-time initialization token for selfSchemaLogger != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logger.selfSchemaLogger);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = 2;
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_24FD67000, v13, v14, "Agent is ChatGPT", v16, 2u);
          MEMORY[0x253057F40](v16, -1, -1);
        }

        else
        {

          v15 = 2;
        }
      }

      else
      {
        if (one-time initialization token for selfSchemaLogger != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.selfSchemaLogger);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_24FD67000, v22, v23, "Not currently supported LLM agent", v24, 2u);
          MEMORY[0x253057F40](v24, -1, -1);
        }

        (*(v1 + 8))(v5, v0);
        v15 = 0;
      }

      [v9 setRequestedAgent_];
      [v9 setSettingsAgent_];
      [v11 setModelAgentCaptured_];
      SELFUtils.emitEvent(event:)(v11);

      (*(v1 + 8))(v7, v0);
      return;
    }
  }

  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.selfSchemaLogger);
  v26 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24FD67000, v26, v18, "Create GATSchemaGATNotForMeResponseReturned instance.", v19, 2u);
    MEMORY[0x253057F40](v19, -1, -1);
  }

  v20 = v26;
}

Swift::Void __swiftcall SELFUtils.recordBoomerangEvent(orignalQuery:agentReturnedQuery:)(Swift::String orignalQuery, Swift::String agentReturnedQuery)
{
  if (orignalQuery._countAndFlagsBits == agentReturnedQuery._countAndFlagsBits && orignalQuery._object == agentReturnedQuery._object)
  {
    v2 = 0;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  SELFUtils.recordAndEmitBoomerangEvent(utteranceRewrite:)(v2 & 1);
}

void SELFUtils.recordAndEmitBoomerangEvent(utteranceRewrite:)(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D57890]) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D577E0]) init];
    if (v4)
    {
      v16 = v4;
      [v3 setIsUtteranceRewritten_];
      [v16 setNotForMeResponseReturned:v3];
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.selfSchemaLogger);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v17 = v9;
        *v8 = 136315138;
        if (a1)
        {
          v10 = 1702195828;
        }

        else
        {
          v10 = 0x65736C6166;
        }

        if (a1)
        {
          v11 = 0xE400000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_24FD67000, v6, v7, "Record the SELFUtils.recordBoomerangEvent() with utterance rewrite: %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x253057F40](v9, -1, -1);
        MEMORY[0x253057F40](v8, -1, -1);
      }

      SELFUtils.emitEvent(event:)(v16);
      goto LABEL_19;
    }
  }

  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.selfSchemaLogger);
  v16 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24FD67000, v16, v14, "Create GATSchemaGATNotForMeResponseReturned instance.", v15, 2u);
    MEMORY[0x253057F40](v15, -1, -1);
  }

LABEL_19:
}

void SELFUtils.emitEvent(event:)(void *a1)
{
  v2 = SELFUtils.createEventMetadata()();
  if (v2)
  {
    v3 = v2;
    [a1 setEventMetadata_];

    [objc_msgSend(objc_opt_self() sharedStream)];

    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.selfSchemaLogger);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24FD67000, oslog, v5, "Failed to add event metadata.", v6, 2u);
      MEMORY[0x253057F40](v6, -1, -1);
    }
  }
}

uint64_t SELFUtils.deinit()
{
  v1 = *(v0 + 88);

  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatID);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID);
  return v0;
}

uint64_t SELFUtils.__deallocating_deinit()
{
  v1 = v0[11];

  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatID);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatClientTraceID);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t GATAttachedMediaInfo.originalMediaType.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t GATAttachedMediaInfo.originalMediaSizeInKBs.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t GATAttachedMediaInfo.originalMediaSizeInKBs.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t GATAttachedMediaInfo.mediaQAUseCase.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

uint64_t GATAttachedMediaInfo.gatUsecase.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t GATAttachedMediaInfo.processedMediaType.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t GATAttachedMediaInfo.processedMediaSizeInKBs.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t GATAttachedMediaInfo.processedMediaSizeInKBs.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t GATAttachedMediaInfo.init(originalMediaType:originalMediaSizeInKBs:mediaQAUseCase:gatUsecase:processedMediaType:processedMediaSizeInKBs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 4) = BYTE4(result) & 1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 20) = a4;
  *(a9 + 24) = BYTE4(a4) & 1;
  *(a9 + 28) = a5;
  *(a9 + 32) = BYTE4(a5) & 1;
  *(a9 + 36) = a6;
  *(a9 + 40) = BYTE4(a6) & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  return result;
}

uint64_t GATAttachedMediaInfo.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 1);
  v4 = *(v0 + 16);
  v5 = v0[5];
  v6 = *(v0 + 24);
  v7 = v0[7];
  v8 = *(v0 + 32);
  v16 = *(v0 + 40);
  v17 = v0[9];
  v19 = *(v0 + 6);
  v18 = *(v0 + 56);
  _StringGuts.grow(_:)(160);
  MEMORY[0x253056FE0](0xD000000000000029, 0x800000024FE1EF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21GATSchemaGATMediaTypeVSgMd, &_sSo21GATSchemaGATMediaTypeVSgMR);
  v9 = String.init<A>(describing:)();
  MEMORY[0x253056FE0](v9);

  MEMORY[0x253056FE0](0xD00000000000001ALL, 0x800000024FE1EF50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v10 = String.init<A>(describing:)();
  MEMORY[0x253056FE0](v10);

  MEMORY[0x253056FE0](0xD000000000000012, 0x800000024FE1EF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27GATSchemaGATMediaQnAUseCaseVSgMd, &_sSo27GATSchemaGATMediaQnAUseCaseVSgMR);
  v11 = String.init<A>(describing:)();
  MEMORY[0x253056FE0](v11);

  MEMORY[0x253056FE0](0x6573557461670A2CLL, 0xEE00203A65736163);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19GATSchemaGATUsecaseVSgMd, &_sSo19GATSchemaGATUsecaseVSgMR);
  v12 = String.init<A>(describing:)();
  MEMORY[0x253056FE0](v12);

  MEMORY[0x253056FE0](0xD000000000000016, 0x800000024FE1EF90);
  v13 = String.init<A>(describing:)();
  MEMORY[0x253056FE0](v13);

  MEMORY[0x253056FE0](0xD00000000000001BLL, 0x800000024FE1EFB0);
  v14 = String.init<A>(describing:)();
  MEMORY[0x253056FE0](v14);

  return 0;
}

uint64_t static GATSchemaGATMediaType.from(utType:)(uint64_t a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  (*(v3 + 16))(&v25 - v8, a1, v2);
  static UTType.jpeg.getter();
  lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (v10)
  {
    v11(v9, v2);
    return 1;
  }

  else
  {
    static UTType.png.getter();
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    v11(v7, v2);
    if (v13)
    {
      v11(v9, v2);
      return 2;
    }

    else
    {
      static UTType.bmp.getter();
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      v11(v7, v2);
      if (v14)
      {
        v11(v9, v2);
        return 3;
      }

      else
      {
        static UTType.gif.getter();
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        v11(v7, v2);
        if (v15)
        {
          v11(v9, v2);
          return 5;
        }

        else
        {
          static UTType.tiff.getter();
          v16 = dispatch thunk of static Equatable.== infix(_:_:)();
          v11(v7, v2);
          if (v16)
          {
            v11(v9, v2);
            return 7;
          }

          else
          {
            static UTType.pdf.getter();
            v17 = dispatch thunk of static Equatable.== infix(_:_:)();
            v11(v7, v2);
            if (v17)
            {
              v11(v9, v2);
              return 9;
            }

            else
            {
              static UTType.plainText.getter();
              v18 = dispatch thunk of static Equatable.== infix(_:_:)();
              v11(v7, v2);
              if (v18)
              {
                v11(v9, v2);
                return 10;
              }

              else
              {
                static UTType.rtf.getter();
                v19 = dispatch thunk of static Equatable.== infix(_:_:)();
                v11(v7, v2);
                if (v19)
                {
                  v11(v9, v2);
                  return 11;
                }

                else
                {
                  static UTType.heic.getter();
                  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v11(v7, v2);
                  v11(v9, v2);
                  if (v20)
                  {
                    return 6;
                  }

                  else
                  {
                    v27 = UTType.identifier.getter();
                    v28 = v21;
                    v25 = 7501925;
                    v26 = 0xE300000000000000;
                    lazy protocol witness table accessor for type String and conformance String();
                    v22 = StringProtocol.contains<A>(_:)();

                    if (v22)
                    {
                      return 4;
                    }

                    else
                    {
                      v27 = UTType.identifier.getter();
                      v28 = v23;
                      v25 = 7501925;
                      v26 = 0xE300000000000000;
                      v24 = StringProtocol.contains<A>(_:)();

                      if (v24)
                      {
                        return 8;
                      }

                      else
                      {
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

uint64_t GATError.logError()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  result = GATError.errorCode.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    SELFUtils.recordRequestFailed(code:domain:)(result, 4);
    v3 = type metadata accessor for GATError();
    lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
    v4 = swift_allocError();
    (*(*(v3 - 8) + 16))(v5, v1, v3);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
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

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys12StaticStringVGMd, &_ss23_ContiguousArrayStorageCys12StaticStringVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions11AttributionVGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions11AttributionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySS5IndexVGGMd, &_ss23_ContiguousArrayStorageCySnySS5IndexVGGMR);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized SELFUtils.buildAndEmitRequestLinkEvent(sourceComponent:sourceUUID:targetComponent:targetUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (!v5)
  {
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.selfSchemaLogger);
    v41 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v41, v17))
    {
      goto LABEL_22;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v42 = v19;
    *v18 = 136315394;
    v20 = SISchemaComponentName.description.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v42);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = SISchemaComponentName.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v42);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_24FD67000, v41, v17, "Failed to create RequestLink event for source component: %s and target component: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v19, -1, -1);
    MEMORY[0x253057F40](v18, -1, -1);
    goto LABEL_19;
  }

  v6 = v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v7)
  {
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.selfSchemaLogger);
    v41 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v41, v27))
    {

      goto LABEL_22;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v42 = v29;
    *v28 = 136315138;
    v30 = SISchemaComponentName.description.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v42);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_24FD67000, v41, v27, "Failed to create source link event for source component: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x253057F40](v29, -1, -1);
    MEMORY[0x253057F40](v28, -1, -1);

LABEL_19:
    return;
  }

  v41 = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (v8)
  {
    v9 = v8;
    [v41 setComponent:a1];
    v10 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v12 = [v10 initWithNSUUID_];

    [v41 setUuid:v12];
    [v9 setComponent_];
    v13 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v14 = UUID._bridgeToObjectiveC()().super.isa;
    v15 = [v13 initWithNSUUID_];

    [v9 setUuid_];
    [v6 setSource_];
    [v6 setTarget_];
    [objc_msgSend(objc_opt_self() sharedStream)];

    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.selfSchemaLogger);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    *v36 = 136315138;
    v38 = SISchemaComponentName.description.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v42);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_24FD67000, v34, v35, "Failed to create target link event for target component: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x253057F40](v37, -1, -1);
    MEMORY[0x253057F40](v36, -1, -1);

    goto LABEL_19;
  }

LABEL_22:
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void specialized SELFUtils.recordLoadScreenContentEnded(originalMediaType:originalMediaSizeInKBs:)()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D57870]) init];
  if (v1)
  {
    v2 = v1;
    swift_beginAccess();
    if (*(v0 + 73))
    {
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.selfSchemaLogger);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_35;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "SELFUtils recordLoadScreenContentEnded() get empty gatMediaInfo";
      goto LABEL_29;
    }

    v11 = *(v0 + 24);
    v12 = *(v0 + 32);
    if (*(v0 + 20))
    {
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.selfSchemaLogger);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_24;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24FD67000, v14, v15, "SELFUtils recordLoadScreenContentEnded() get empty originalMediaType", v16, 2u);
    }

    else
    {
      [v2 setOriginalMediaType_];
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.selfSchemaLogger);
      v14 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v14, v18))
      {
        goto LABEL_24;
      }

      v16 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37 = v19;
      *v16 = 136315138;
      v20 = GATSchemaGATMediaType.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v37);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_24FD67000, v14, v18, "SELFUtils recordGenerativeRequestStarted originalMediaType %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x253057F40](v19, -1, -1);
    }

    MEMORY[0x253057F40](v16, -1, -1);
LABEL_24:

    if ((v12 & 1) == 0)
    {
      [v2 setOriginalMediaSizeInKBs_];
      if (one-time initialization token for selfSchemaLogger != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.selfSchemaLogger);
      v4 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v4, v26))
      {
        goto LABEL_35;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37 = v28;
      *v27 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21GATSchemaGATMediaTypeVSgMd, &_sSo21GATSchemaGATMediaTypeVSgMR);
      v29 = String.init<A>(describing:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v37);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_24FD67000, v4, v26, "SELFUtils recordGenerativeRequestStarted originalMediaSizeInKBs %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x253057F40](v28, -1, -1);
      v24 = v27;
      goto LABEL_34;
    }

    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.selfSchemaLogger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_35;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "SELFUtils recordLoadScreenContentEnded() get empty originalMediaSizeInKBs";
LABEL_29:
    _os_log_impl(&dword_24FD67000, v4, v5, v7, v6, 2u);
    v24 = v6;
LABEL_34:
    MEMORY[0x253057F40](v24, -1, -1);
LABEL_35:

    v32 = specialized SELFUtils.createRequestEvent()(0x277D57868, &selRef_setLoadScreenContentContext_, "Failed to create GATSchemaGATLoadScreenContentContext instance.");
    if (v32)
    {
      v33 = v32;
      v34 = [v32 loadScreenContentContext];
      if (v34)
      {
        v35 = v34;
        [v34 setEnded_];
      }

      SELFUtils.emitEvent(event:)(v33);
    }

    else
    {
    }

    return;
  }

  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.selfSchemaLogger);
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24FD67000, oslog, v9, "Failed to create GATSchemaGATLoadScreenContentEventEnded instance.", v10, 2u);
    MEMORY[0x253057F40](v10, -1, -1);
  }
}

NSObject *specialized SELFUtils.createRequestEvent()(Class *a1, SEL *a2, const char *a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D577E0]) init];
  if (!v6)
  {
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.selfSchemaLogger);
    v7 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24FD67000, v7, v12, "Failed to create GATSchemaGATClientEvent instance.", v13, 2u);
      MEMORY[0x253057F40](v13, -1, -1);
    }

    goto LABEL_13;
  }

  v7 = v6;
  v8 = [objc_allocWithZone(*a1) init];
  if (!v8)
  {
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.selfSchemaLogger);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24FD67000, v15, v16, a3, v17, 2u);
      MEMORY[0x253057F40](v17, -1, -1);
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v9 = v8;
  v10 = v7;
  [v7 *a2];
  v7 = v9;
LABEL_14:

  return v10;
}

void specialized SELFUtils.recordGenerativeRequestStarted(usecase:mediaQAUseCase:llmAgentName:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = specialized SELFUtils.createRequestEvent()(0x277D57828, &selRef_setGenerativeRequestContext_, "Failed to create GATSchemaGATGenerativeRequestContext instance.");
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D57840]) init];
  if (v8)
  {
    v9 = v8;
    if ((a1 & 0x100000000) != 0)
    {
      v10 = (v2 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase);
      swift_beginAccess();
      if (*(v10 + 4) == 1)
      {
        swift_beginAccess();
        if (*(v3 + 73) & 1) != 0 || (*(v3 + 48))
        {
          if (one-time initialization token for selfSchemaLogger != -1)
          {
            swift_once();
          }

          v11 = type metadata accessor for Logger();
          __swift_project_value_buffer(v11, static Logger.selfSchemaLogger);
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            *v14 = 0;
            _os_log_impl(&dword_24FD67000, v12, v13, "SELFUtils empty recordGenerativeRequestStarted start.usecase", v14, 2u);
LABEL_23:
            MEMORY[0x253057F40](v14, -1, -1);
            goto LABEL_24;
          }

          goto LABEL_24;
        }

        a1 = *(v3 + 44);
      }

      else
      {
        a1 = *v10;
      }
    }

    [v9 setUsecase_];
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.selfSchemaLogger);
    v12 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v19))
    {
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v52 = v20;
      *v14 = 136315138;
      v21 = GATSchemaGATUsecase.description.getter();
      v23 = v7;
      v24 = v3;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v52);

      *(v14 + 4) = v25;
      v3 = v24;
      v7 = v23;
      _os_log_impl(&dword_24FD67000, v12, v19, "SELFUtils recordGenerativeRequestStarted start.usecase %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x253057F40](v20, -1, -1);
      goto LABEL_23;
    }

LABEL_24:

    if ((a2 & 0x100000000) != 0)
    {
      swift_beginAccess();
      if (*(v3 + 73) & 1) != 0 || (*(v3 + 40))
      {
        if (one-time initialization token for selfSchemaLogger != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Logger.selfSchemaLogger);
        v27 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v27, v35))
        {
          goto LABEL_36;
        }

        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_24FD67000, v27, v35, "SELFUtils empty mediaQAUseCase, not recording this field to SELF event", v29, 2u);
        goto LABEL_35;
      }

      a2 = *(v3 + 36);
    }

    [v9 setMediaQAUseCase_];
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.selfSchemaLogger);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_36;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v51 = v30;
    *v29 = 136315138;
    v31 = GATSchemaGATMediaQnAUseCase.description.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v51);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_24FD67000, v27, v28, "SELFUtils recordGenerativeRequestStarted start.usecase %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x253057F40](v30, -1, -1);
LABEL_35:
    MEMORY[0x253057F40](v29, -1, -1);
LABEL_36:

    [v9 setGenAIAgentUsed_];
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.selfSchemaLogger);
    v37 = v9;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      osloga = swift_slowAlloc();
      v51 = osloga;
      *v40 = 136315138;
      v41 = v37;
      v42 = [v41 description];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v51);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_24FD67000, v38, v39, "Record the SELFUtils.recordGenerativeRequestStarted() with start event: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(osloga);
      MEMORY[0x253057F40](osloga, -1, -1);
      MEMORY[0x253057F40](v40, -1, -1);
    }

    v47 = [v7 generativeRequestContext];
    if (v47)
    {
      v48 = v47;
      [v47 setStartedOrChanged_];
    }

    SELFUtils.emitEvent(event:)(v7);

    return;
  }

  if (one-time initialization token for selfSchemaLogger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.selfSchemaLogger);
  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24FD67000, oslog, v16, "Failed to create GATSchemaGATGenerativeRequestEventStarted instance.", v17, 2u);
    MEMORY[0x253057F40](v17, -1, -1);
  }
}

id specialized SELFUtils.createImageResizingEvent()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D57848]) init];
  if (!v0)
  {
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.selfSchemaLogger);
    v1 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24FD67000, v1, v5, "Failed to create GATSchemaGATImageResizingContext instance.", v6, 2u);
      MEMORY[0x253057F40](v6, -1, -1);
    }

    goto LABEL_13;
  }

  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D577E0]) init];
  if (!v2)
  {
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.selfSchemaLogger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24FD67000, v8, v9, "Failed to create GATSchemaGATClientEvent instance.", v10, 2u);
      MEMORY[0x253057F40](v10, -1, -1);
    }

LABEL_13:
    v3 = 0;
    goto LABEL_14;
  }

  v3 = v2;
  [v2 setImageResizingContext_];
LABEL_14:

  return v3;
}

uint64_t specialized static GATSchemaGATMediaType.from(fileExtension:)()
{
  String.lowercased()();
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)())
  {

    return 1;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 2;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 3;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 4;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 5;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 6;
  }

  else if (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)())
  {

    return 7;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 8;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 9;
  }

  else if (StringProtocol.contains<A>(_:)())
  {

    return 10;
  }

  else
  {
    v1 = StringProtocol.contains<A>(_:)();

    if (v1)
    {
      return 11;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UTType and conformance UTType(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_24FD75258@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v3 + 48);
  result = *(v3 + 58);
  *(a2 + 42) = result;
  return result;
}

__n128 sub_24FD752B0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  result = *(a1 + 42);
  *(v3 + 58) = result;
  return result;
}

uint64_t sub_24FD75308@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t keypath_get_5Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return outlined init with copy of UUID?(v4 + v5, a3);
}

uint64_t keypath_get_9Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 4);
  *a3 = *v4;
  *(a3 + 4) = v6;
  return result;
}

uint64_t sub_24FD754B8(int *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2 + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_generativeResultCharactersCount;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3;
  return result;
}

uint64_t type metadata accessor for SELFUtils()
{
  result = type metadata singleton initialization cache for SELFUtils;
  if (!type metadata singleton initialization cache for SELFUtils)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SELFUtils()
{
  type metadata accessor for UUID?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GATAttachedMediaInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GATAttachedMediaInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t one-time initialization function for generativeAssistantToolsLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Log.generativeAssistantToolsLog = result;
  return result;
}

uint64_t static Log.begin(_:enableTelemetry:)()
{
  if (one-time initialization token for generativeAssistantToolsLog != -1)
  {
    swift_once();
  }

  v0 = static Log.generativeAssistantToolsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Log.end(_:_:)()
{
  static os_signpost_type_t.end.getter();
  if (one-time initialization token for generativeAssistantToolsLog != -1)
  {
    swift_once();
  }

  return os_signpost(_:dso:log:name:signpostID:)();
}

const char *GenerativeUsecases.staticString.getter()
{
  v1 = *v0;
  v2 = "Usecase.InlineImageQnA";
  v3 = "Usecase.TextAssistant";
  if (v1 != 5)
  {
    v3 = "Usecase.ImageGeneration";
  }

  v4 = "Usecase.TextGeneration";
  if (v1 != 3)
  {
    v4 = "Usecase.Knowledge";
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = "Usecase.DocumentQnA";
  if (v1 != 1)
  {
    v5 = "Usecase.SessionImageQnA";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

GenerativeAssistantActions::GenerativeUsecases_optional __swiftcall GenerativeUsecases.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GenerativeUsecases.init(rawValue:), v3);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t GenerativeUsecases.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6D49656E696C6E49;
  v3 = 0x6973734174786554;
  if (v1 != 5)
  {
    v3 = 0x6E65476567616D49;
  }

  v4 = 0x656E654774786554;
  if (v1 != 3)
  {
    v4 = 0x6764656C776F6E4BLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746E656D75636F44;
  if (v1 != 1)
  {
    v5 = 0x496E6F6973736553;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GenerativeUsecases()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GenerativeUsecases(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00416E51656761;
  v4 = 0x6D49656E696C6E49;
  v5 = 0xED0000746E617473;
  v6 = 0x6973734174786554;
  if (v2 != 5)
  {
    v6 = 0x6E65476567616D49;
    v5 = 0xEF6E6F6974617265;
  }

  v7 = 0xEE006E6F69746172;
  v8 = 0x656E654774786554;
  if (v2 != 3)
  {
    v8 = 0x6764656C776F6E4BLL;
    v7 = 0xE900000000000065;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000416E51;
  v10 = 0x746E656D75636F44;
  if (v2 != 1)
  {
    v10 = 0x496E6F6973736553;
    v9 = 0xEF416E516567616DLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

void key path setter for SignpostInterval.log : SignpostInterval(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id SignpostInterval.log.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void SignpostInterval.log.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t key path getter for SignpostInterval.signpostID : SignpostInterval@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  v8 = a3(0);
  return (*(*(v8 - 8) + 16))(a4, v6 + v7, v8);
}

uint64_t key path setter for SignpostInterval.signpostID : SignpostInterval(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = *a2;
  v15 = *a6;
  swift_beginAccess();
  (*(v10 + 40))(v14 + v15, v13, v9);
  return swift_endAccess();
}

uint64_t SignpostInterval.signpostID.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t SignpostInterval.signpostID.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t key path setter for SignpostInterval.end : SignpostInterval(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Date?(a1, &v11 - v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_end;
  swift_beginAccess();
  outlined assign with take of Date?(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t SignpostInterval.end.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_end;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t SignpostInterval.end.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_end;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SignpostInterval.timeInterval.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_timeInterval);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SignpostInterval.timeInterval.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_timeInterval;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t SignpostInterval.name.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_name);
  swift_beginAccess();
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t SignpostInterval.name.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_name;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t SignpostInterval.__allocating_init(name:)(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  SignpostInterval.init(name:)(a1, a2, a3);
  return v9;
}

uint64_t SignpostInterval.init(name:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v45 = a3;
  v44 = a2;
  v6 = type metadata accessor for OSSignpostID();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v40 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for generativeAssistantToolsLog != -1)
  {
    swift_once();
  }

  v18 = static Log.generativeAssistantToolsLog;
  *(v4 + 16) = static Log.generativeAssistantToolsLog;
  v40[0] = OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_signpostID;
  v19 = v18;
  OSSignpostID.init(log:)();
  v20 = OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_end;
  v21 = *(v14 + 56);
  v21(v4 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_end, 1, 1, v13);
  v22 = v4 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_timeInterval;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v4 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_name;
  *v23 = a1;
  v40[1] = a1;
  *(v23 + 8) = v44;
  *(v23 + 16) = v45;
  Date.init()();
  (*(v14 + 32))(v4 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_begin, v17, v13);
  v21(v12, 1, 1, v13);
  swift_beginAccess();
  outlined assign with take of Date?(v12, v4 + v20);
  swift_endAccess();
  static os_signpost_type_t.begin.getter();
  swift_beginAccess();
  v24 = *(v4 + 16);
  v25 = v40[0];
  swift_beginAccess();
  v27 = v41;
  v26 = v42;
  v28 = v4 + v25;
  v29 = v43;
  (*(v42 + 16))(v41, v28, v43);
  v30 = v24;
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v26 + 8))(v27, v29);
  if (one-time initialization token for metricsLogger != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.metricsLogger);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = v35;
    *v34 = 136315138;
    v36 = StaticString.description.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v46);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_24FD67000, v32, v33, "Started signpost: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x253057F40](v35, -1, -1);
    MEMORY[0x253057F40](v34, -1, -1);
  }

  return v4;
}

Swift::Void __swiftcall SignpostInterval.endSignpost()()
{
  v41 = type metadata accessor for OSSignpostID();
  v39 = *(v41 - 8);
  v1 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  Date.init()();
  (*(v4 + 56))(v17, 0, 1, v3);
  v18 = OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_end;
  swift_beginAccess();
  outlined assign with take of Date?(v17, v0 + v18);
  swift_endAccess();
  outlined init with copy of Date?(v0 + v18, v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v19 = *(v4 + 32);
    v38 = v10;
    v19(v10, v15, v3);
    v20 = OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_begin;
    swift_beginAccess();
    (*(v4 + 16))(v8, v0 + v20, v3);
    v21 = v0;
    Date.timeIntervalSince(_:)();
    v23 = v22;
    v37 = *(v4 + 8);
    v37(v8, v3);
    v24 = v0 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_timeInterval;
    swift_beginAccess();
    *v24 = v23;
    *(v24 + 8) = 0;
    v36 = static os_signpost_type_t.end.getter();
    swift_beginAccess();
    v35 = *(v21 + 16);
    v25 = (v21 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_name);
    swift_beginAccess();
    v26 = *v25;
    v27 = v25[1];
    v28 = OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_signpostID;
    v29 = *(v25 + 16);
    swift_beginAccess();
    v31 = v39;
    v30 = v40;
    v32 = v41;
    (*(v39 + 16))(v40, v21 + v28, v41);
    v33 = v35;
    os_signpost(_:dso:log:name:signpostID:)();

    (*(v31 + 8))(v30, v32);
    SignpostInterval.printTimeInterval()();
    v37(v38, v3);
  }
}

Swift::Void __swiftcall SignpostInterval.printTimeInterval()()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_timeInterval);
  swift_beginAccess();
  if ((v2[1] & 1) == 0)
  {
    v3 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D839F8];
    *(v4 + 16) = xmmword_24FE1A560;
    v6 = MEMORY[0x277D83A80];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = v3;
    v7 = String.init(format:_:)();
    v9 = v8;
    if (one-time initialization token for metricsLogger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.metricsLogger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315650;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7274654D54414723, 0xED0000203A736369, &v23);
      *(v13 + 12) = 2080;
      v15 = (v1 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_name);
      swift_beginAccess();
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v15 + 16);
      v19 = StaticString.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v23);

      *(v13 + 14) = v21;
      *(v13 + 22) = 2080;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v23);

      *(v13 + 24) = v22;
      _os_log_impl(&dword_24FD67000, v11, v12, "%s%s : %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v14, -1, -1);
      MEMORY[0x253057F40](v13, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t static SignpostInterval.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_name);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = StaticString.description.getter();
  v9 = v8;
  v10 = (a2 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_name);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  if (v7 == StaticString.description.getter() && v9 == v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

uint64_t SignpostInterval.deinit()
{
  v1 = OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_signpostID;
  v2 = type metadata accessor for OSSignpostID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_begin;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  outlined destroy of OnScreenContent.Document?(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_end, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v0;
}

uint64_t SignpostInterval.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_signpostID;
  v2 = type metadata accessor for OSSignpostID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_begin;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  outlined destroy of OnScreenContent.Document?(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_end, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

double one-time initialization function for shared()
{
  type metadata accessor for MetricsUtils();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v2 = MEMORY[0x277D84F90];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v2;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 129) = 0u;
  *(v0 + 145) = 1;
  static MetricsUtils.shared = v0;
  return result;
}

uint64_t static MetricsUtils.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t key path setter for MetricsUtils.signpostIntervals : MetricsUtils(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t MetricsUtils.signpostIntervals.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t MetricsUtils.signpostIntervals.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t key path setter for MetricsUtils.usecasesAndEvents : MetricsUtils(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

uint64_t MetricsUtils.usecasesAndEvents.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t MetricsUtils.usecasesAndEvents.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void MetricsUtils.performanceMetrics.didset()
{
  v1 = v0;
  if (one-time initialization token for metricsLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.metricsLogger);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v14 = *(v1 + 104);
    *v15 = *(v1 + 120);
    *&v15[10] = *(v1 + 130);
    v10 = *(v1 + 40);
    v11 = *(v1 + 56);
    v12 = *(v1 + 72);
    v13 = *(v1 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions28GATPerformanceLatencyMetricsVSgMd, &_s26GenerativeAssistantActions28GATPerformanceLatencyMetricsVSgMR);
    v6 = String.init<A>(describing:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24FD67000, oslog, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x253057F40](v5, -1, -1);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  else
  {
  }
}

__n128 MetricsUtils.performanceMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 88);
  v4 = *(v1 + 120);
  *(a1 + 64) = *(v1 + 104);
  *(a1 + 80) = v4;
  *(a1 + 90) = *(v1 + 130);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v5;
  *(a1 + 32) = *(v1 + 72);
  *(a1 + 48) = result;
  return result;
}

void MetricsUtils.performanceMetrics.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = a1[2];
  *(v1 + 88) = a1[3];
  v4 = a1[5];
  *(v1 + 104) = a1[4];
  *(v1 + 120) = v4;
  *(v1 + 130) = *(a1 + 90);
  v5 = a1[1];
  *(v1 + 40) = *a1;
  *(v1 + 56) = v5;
  *(v1 + 72) = v3;
  MetricsUtils.performanceMetrics.didset();
}

void (*MetricsUtils.performanceMetrics.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MetricsUtils.performanceMetrics.modify;
}

void MetricsUtils.performanceMetrics.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    MetricsUtils.performanceMetrics.didset();
  }
}

id MetricsUtils.recordSignpostBegin(for:)(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v3 + 16);
  [v7 lock];
  v8 = type metadata accessor for SignpostInterval();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  SignpostInterval.init(name:)(a1, a2, a3);
  swift_beginAccess();

  MEMORY[0x253057080](v11);
  if (*((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v21 = *((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (one-time initialization token for metricsLogger != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.metricsLogger);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7274654D54414723, 0xED0000203A736369, v22);
    *(v15 + 12) = 2080;
    v17 = StaticString.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v22);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_24FD67000, v13, v14, "%s Recorded signpost begin: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v16, -1, -1);
    MEMORY[0x253057F40](v15, -1, -1);
  }

  return [v7 unlock];
}

void MetricsUtils.recordSignpostEnd(for:signPostID:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v43 = a3;
  v42[1] = a1;
  v42[2] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v42 - v8;
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(v4 + 24);
  outlined init with copy of Date?(a4, v9, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    outlined destroy of OnScreenContent.Document?(v9, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    v44 = v15;
    if (v15 >> 62)
    {
      if (v15 < 0)
      {
        v41 = v15;
      }

      else
      {
        v41 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      v16 = MEMORY[0x253057520](v41);
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    while (1)
    {
      if (!v16)
      {
        v32 = 0;
        goto LABEL_23;
      }

      if (__OFSUB__(v16--, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x2530574C0](v16, v15);
      }

      else
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v16 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v18 = *(v15 + 32 + 8 * v16);
      }

      v19 = v18 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_name;
      swift_beginAccess();
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = StaticString.description.getter();
      v25 = v24;
      if (v23 == StaticString.description.getter() && v25 == v26)
      {
        break;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_22;
      }
    }

LABEL_22:
    MEMORY[0x28223BE20](v29);
    v42[-2] = &v44;
    v45 = v16;
    partial apply for specialized closure #1 in BidirectionalCollection.last(where:)(&v45, &v46);
    v32 = v46;
LABEL_23:

    if (v32)
    {
      SignpostInterval.endSignpost()();
    }
  }

  else
  {
    v30 = (*(v11 + 32))(v14, v9, v10);
    MEMORY[0x28223BE20](v30);
    v42[-2] = v14;

    v31 = specialized Sequence.first(where:)(partial apply for closure #1 in MetricsUtils.recordSignpostEnd(for:signPostID:), &v42[-4], v15);

    if (v31)
    {
      SignpostInterval.endSignpost()();
    }

    (*(v11 + 8))(v14, v10);
  }

  if (one-time initialization token for metricsLogger != -1)
  {
LABEL_32:
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.metricsLogger);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v46 = v37;
    *v36 = 136315394;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7274654D54414723, 0xED0000203A736369, &v46);
    *(v36 + 12) = 2080;
    v38 = StaticString.description.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v46);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_24FD67000, v34, v35, "%s Recorded signpost end: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v37, -1, -1);
    MEMORY[0x253057F40](v36, -1, -1);
  }
}

uint64_t closure #1 in MetricsUtils.recordSignpostEnd(for:signPostID:)(uint64_t *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_signpostID;
  swift_beginAccess();
  (*(v3 + 16))(v6, v7 + v8, v2);
  v9 = static OSSignpostID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v9 & 1;
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (1)
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530574C0](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:

          return v7;
        }

LABEL_7:
        v13 = v7;
        v9 = a1(&v13);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
        if (v8 == v5)
        {
          return 0;
        }
      }

      if (v6 < *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_16:
      if (a3 < 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = MEMORY[0x253057520](v10);
      if (!v5)
      {
        return 0;
      }
    }

    v7 = *(a3 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  return 0;
}

Swift::Void __swiftcall MetricsUtils.emitAllSignpostAndEvent()()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v60 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v60;
    v4 = (v1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = StaticString.description.getter();
      v60 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        v13 = v8;
        v14 = v9;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v9 = v14;
        v8 = v13;
        v3 = v60;
      }

      v4 += 24;
      *(v3 + 16) = v11 + 1;
      v12 = v3 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      --v2;
    }

    while (v2);
  }

  v60 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v56 = BidirectionalCollection<>.joined(separator:)();
  v16 = v15;

  swift_beginAccess();
  v17 = *(v0 + 24);
  if (v17 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x253057520](v54))
  {
    v19 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v59 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v55 = v16;
    v20 = 0;
    v19 = v59;
    v21 = i;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x2530574C0](v20, v17);
      }

      else
      {
        if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v23 = *(v17 + 8 * v20 + 32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_24FE1A560;
      v25 = v23 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_timeInterval;
      swift_beginAccess();
      v26 = *v25;
      v27 = *(v25 + 8);
      *(v24 + 56) = MEMORY[0x277D839F8];
      *(v24 + 64) = MEMORY[0x277D83A80];
      if (v27)
      {
        v26 = 0.0;
      }

      *(v24 + 32) = v26;
      v28 = String.init(format:_:)();
      v30 = v29;
      v31 = v23 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_name;
      swift_beginAccess();
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      v57 = StaticString.description.getter();
      v58 = v35;
      MEMORY[0x253056FE0](2112032, 0xE300000000000000);
      MEMORY[0x253056FE0](v28, v30);

      v16 = v57;
      v36 = v58;
      v59 = v19;
      v38 = *(v19 + 16);
      v37 = *(v19 + 24);
      if (v38 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        v19 = v59;
      }

      *(v19 + 16) = v38 + 1;
      v39 = v19 + 16 * v38;
      *(v39 + 32) = v16;
      *(v39 + 40) = v36;
      ++v20;
      if (v22 == v21)
      {

        v16 = v55;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    if (v17 < 0)
    {
      v54 = v17;
    }

    else
    {
      v54 = v17 & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_23:
  v57 = v19;
  v40 = BidirectionalCollection<>.joined(separator:)();
  v42 = v41;

  if (one-time initialization token for metricsLogger != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logger.metricsLogger);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v57 = v47;
    *v46 = 136315650;
    *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7274654D54414723, 0xED0000203A736369, &v57);
    *(v46 + 12) = 2080;
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v16, &v57);

    *(v46 + 14) = v48;
    *(v46 + 22) = 2080;
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v57);

    *(v46 + 24) = v49;
    _os_log_impl(&dword_24FD67000, v44, v45, "%s Events and usecases: %s\nIntervals: %s", v46, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v47, -1, -1);
    MEMORY[0x253057F40](v46, -1, -1);
  }

  else
  {
  }

  MetricsUtils.savePerformanceMetricsAndCleanOther()();
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v57 = v53;
    *v52 = 136315138;
    *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7274654D54414723, 0xED0000203A736369, &v57);
    _os_log_impl(&dword_24FD67000, v50, v51, "%s Emitted all signposts and events.", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x253057F40](v53, -1, -1);
    MEMORY[0x253057F40](v52, -1, -1);
  }
}

uint64_t MetricsUtils.emitSignpostEvent(_:)(const char *a1, uint64_t a2, char a3)
{
  v31 = type metadata accessor for OSSignpostID();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v11, static Logger.signposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  swift_beginAccess();
  v12 = *(v3 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 32) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    *(v3 + 32) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[24 * v15];
  *(v16 + 4) = a1;
  *(v16 + 5) = a2;
  v16[48] = a3;
  *(v3 + 32) = v12;
  v17 = OSSignposter.logHandle.getter();
  v18 = static os_signpost_type_t.event.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_24:
        __break(1u);
        return result;
      }

      if (a1 >> 16 <= 0x10)
      {
        v20 = &v32;
        goto LABEL_15;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v20 = a1;
LABEL_15:
  v21 = swift_slowAlloc();
  *v21 = 0;
  v22 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_24FD67000, v17, v18, v22, v20, "", v21, 2u);
  MEMORY[0x253057F40](v21, -1, -1);
LABEL_16:

  if (one-time initialization token for metricsLogger != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.metricsLogger);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315394;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7274654D54414723, 0xED0000203A736369, &v33);
    *(v26 + 12) = 2080;
    v28 = StaticString.description.getter();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v33);

    *(v26 + 14) = v30;
    _os_log_impl(&dword_24FD67000, v24, v25, "%s Event emitted: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v27, -1, -1);
    MEMORY[0x253057F40](v26, -1, -1);
  }

  return (*(v7 + 8))(v10, v31);
}

void MetricsUtils.savePerformanceMetricsAndCleanOther()()
{
  v1 = 1;
  LOBYTE(v53) = 1;
  v60 = 1;
  v59 = 1;
  v51 = 1;
  *&v61 = 0;
  BYTE8(v61) = 1;
  *&v62 = 0;
  BYTE8(v62) = 1;
  *&v63 = 0;
  BYTE8(v63) = 1;
  *&v64 = 0;
  BYTE8(v64) = 1;
  *&v65 = 0;
  BYTE8(v65) = 1;
  *v66 = 0;
  v66[8] = 1;
  *&v66[16] = 0;
  v66[24] = 1;
  swift_beginAccess();
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v49 = *(v0 + 24);
    }

    else
    {
      v49 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v3 = MEMORY[0x253057520](v49);
    if (!v3)
    {
LABEL_56:
      v57 = v65;
      v58[0] = *v66;
      *(v58 + 9) = *&v66[9];
      v53 = v61;
      v54 = v62;
      v55 = v63;
      v56 = v64;
      v52 = 0;
      swift_beginAccess();
      v38 = v63;
      *(v0 + 88) = v64;
      v39 = v58[0];
      *(v0 + 104) = v57;
      *(v0 + 120) = v39;
      *(v0 + 129) = *(v58 + 9);
      v40 = v54;
      *(v0 + 40) = v53;
      *(v0 + 56) = v40;
      *(v0 + 72) = v38;
      *(v0 + 145) = v52;
      MetricsUtils.performanceMetrics.didset();
      if (one-time initialization token for metricsLogger != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.metricsLogger);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v50 = v45;
        *v44 = 136315138;
        swift_beginAccess();
        v46 = GATPerformanceLatencyMetrics.description.getter();
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v50);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_24FD67000, v42, v43, "MetricsUtils - Performance metrics saved: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x253057F40](v45, -1, -1);
        MEMORY[0x253057F40](v44, -1, -1);
      }

      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_56;
    }
  }

  if (v3 >= 1)
  {

    v4 = 0;
    v5 = 0.0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530574C0](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_name;
      swift_beginAccess();
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = StaticString.description.getter();
      v13 = v12;
      if (StaticString.description.getter() == v11 && v14 == v13)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        if (StaticString.description.getter() == v11 && v17 == v13)
        {
          break;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
          if (StaticString.description.getter() == v11 && v20 == v13)
          {

LABEL_36:

            v26 = v6 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_timeInterval;
            swift_beginAccess();
            v27 = *v26;
            LOBYTE(v26) = *(v26 + 8);

            *&v62 = v27;
            BYTE8(v62) = v26;
            v25 = v5;
            goto LABEL_6;
          }

          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v22)
          {
            goto LABEL_36;
          }

          if (StaticString.description.getter() == v11 && v28 == v13)
          {
          }

          else
          {
            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v29 & 1) == 0)
            {
              if (StaticString.description.getter() == v11 && v32 == v13)
              {

LABEL_46:
                v34 = v6 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_timeInterval;
                swift_beginAccess();
                if ((*(v34 + 8) & 1) == 0)
                {
                  v35 = *v34;
                  *&v64 = *v34;
                  BYTE8(v64) = 0;
                  if (one-time initialization token for shared != -1)
                  {
                    swift_once();
                  }

                  v36 = static SELFUtils.shared;

                  swift_beginAccess();
                  if (*(v36 + 73) & 1) != 0 || (v36[4])
                  {
                    v37 = 0.0 / v35;
                  }

                  else
                  {
                    v37 = v36[3];
                  }

                  *v66 = v37;
                  v66[8] = 0;
                  v25 = v5;
                  goto LABEL_6;
                }
              }

              else
              {
                v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v33)
                {
                  goto LABEL_46;
                }
              }

              v25 = v5;
              goto LABEL_6;
            }
          }

          v30 = v6 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_timeInterval;
          swift_beginAccess();
          v31 = *v30;
          LOBYTE(v30) = *(v30 + 8);

          *&v63 = v31;
          BYTE8(v63) = v30;
          v25 = v5;
          goto LABEL_6;
        }
      }

LABEL_27:

      v23 = v6 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_timeInterval;
      swift_beginAccess();
      v24 = *v23;
      LODWORD(v23) = *(v23 + 8);

      if (v23)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v24;
      }

      if (v1)
      {
        if (v25 <= 0.0)
        {
          v1 = 1;
          v25 = v5;
          goto LABEL_6;
        }
      }

      else if (v5 >= v25)
      {
        v1 = 0;
        v25 = v5;
        goto LABEL_6;
      }

      v1 = 0;
      *&v61 = v25;
      BYTE8(v61) = 0;
LABEL_6:
      ++v4;
      v5 = v25;
      if (v3 == v4)
      {

        goto LABEL_56;
      }
    }

    goto LABEL_27;
  }

  __break(1u);
}

Swift::Void __swiftcall MetricsUtils.cleanAllDataAfterEmitToSELF()()
{
  v10 = 1;
  swift_beginAccess();
  *(v0 + 129) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 145) = v10;
  MetricsUtils.performanceMetrics.didset();
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = MEMORY[0x277D84F90];
  *(v0 + 24) = MEMORY[0x277D84F90];

  swift_beginAccess();
  v3 = *(v0 + 32);
  *(v0 + 32) = v2;

  if (one-time initialization token for metricsLogger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.metricsLogger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7274654D54414723, 0xED0000203A736369, &v9);
    _os_log_impl(&dword_24FD67000, v5, v6, "%s All data cleaned after emitting to SELF.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x253057F40](v8, -1, -1);
    MEMORY[0x253057F40](v7, -1, -1);
  }
}

uint64_t MetricsUtils.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t MetricsUtils.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t GATPerformanceLatencyMetrics.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = v0[6];
  v8 = *(v0 + 56);
  v18 = v0[8];
  v17 = *(v0 + 72);
  v20 = v0[10];
  v19 = *(v0 + 88);
  v22 = v0[12];
  v21 = *(v0 + 104);
  _StringGuts.grow(_:)(245);
  MEMORY[0x253056FE0](0xD000000000000035, 0x800000024FE1F4E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v9 = String.init<A>(describing:)();
  MEMORY[0x253056FE0](v9);

  MEMORY[0x253056FE0](0xD000000000000018, 0x800000024FE1F520);
  v10 = String.init<A>(describing:)();
  MEMORY[0x253056FE0](v10);

  MEMORY[0x253056FE0](0xD00000000000001DLL, 0x800000024FE1F540);
  v11 = String.init<A>(describing:)();
  MEMORY[0x253056FE0](v11);

  MEMORY[0x253056FE0](0xD00000000000001DLL, 0x800000024FE1F560);
  v12 = String.init<A>(describing:)();
  MEMORY[0x253056FE0](v12);

  MEMORY[0x253056FE0](0xD000000000000019, 0x800000024FE1F580);
  v13 = String.init<A>(describing:)();
  MEMORY[0x253056FE0](v13);

  MEMORY[0x253056FE0](0xD000000000000025, 0x800000024FE1F5A0);
  v14 = String.init<A>(describing:)();
  MEMORY[0x253056FE0](v14);

  MEMORY[0x253056FE0](0xD000000000000021, 0x800000024FE1F5D0);
  v15 = String.init<A>(describing:)();
  MEMORY[0x253056FE0](v15);

  MEMORY[0x253056FE0](41, 0xE100000000000000);
  return 0;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV10AnnotationVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV10AnnotationVGMR, MEMORY[0x277D71BF0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR, type metadata accessor for GeneratedResponse.RichContentEntity);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PromptKit011ChatMessageD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit011ChatMessageD0VGMR, MEMORY[0x277D42D60]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy23IntelligenceFlowContext15OnScreenContentVGMd, &_ss23_ContiguousArrayStorageCy23IntelligenceFlowContext15OnScreenContentVGMR, MEMORY[0x277D1D3A8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation8ToolTypeVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation8ToolTypeVGMR, MEMORY[0x277D0DE18]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR, MEMORY[0x277D85578]);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation7Tooling_pGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation7Tooling_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation7Tooling_pMd, &_s29GenerativeFunctionsFoundation7Tooling_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t type metadata accessor for SignpostInterval()
{
  result = type metadata singleton initialization cache for SignpostInterval;
  if (!type metadata singleton initialization cache for SignpostInterval)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy21UIIntelligenceSupport23IntelligenceProcessInfoVGMd, &_ss23_ContiguousArrayStorageCy21UIIntelligenceSupport23IntelligenceProcessInfoVGMR, MEMORY[0x277D74708]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy23IntelligenceFlowContext15OnScreenContentVGMd, &_ss23_ContiguousArrayStorageCy23IntelligenceFlowContext15OnScreenContentVGMR, MEMORY[0x277D1D3A8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation8ToolTypeVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation8ToolTypeVGMR, MEMORY[0x277D0DE18]);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy23IntelligenceFlowContext22OnScreenContentSourcesV_SStGMd, &_ss23_ContiguousArrayStorageCy23IntelligenceFlowContext22OnScreenContentSourcesV_SStGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMd, _s23IntelligenceFlowContext22OnScreenContentSourcesV_SStMR) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

unint64_t specialized closure #1 in BidirectionalCollection.last(where:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x2530574C0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 8 * result + 32);

LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
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

void specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(uint64_t a1, uint64_t a2)
{
  v4 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v5 = [v4 Signals];
  swift_unknownObjectRelease();
  v6 = objc_allocWithZone(MEMORY[0x277CF1168]);
  v7 = MEMORY[0x253056EA0](a1, a2);
  v8 = [v6 initWithContentIdentifier:v7 context:0 osBuild:0 userInfo:0];

  v9 = [v5 source];
  [v9 sendEvent_];
}

unint64_t lazy protocol witness table accessor for type GenerativeUsecases and conformance GenerativeUsecases()
{
  result = lazy protocol witness table cache variable for type GenerativeUsecases and conformance GenerativeUsecases;
  if (!lazy protocol witness table cache variable for type GenerativeUsecases and conformance GenerativeUsecases)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerativeUsecases and conformance GenerativeUsecases);
  }

  return result;
}

id sub_24FD7BAC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_24FD7BBF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_end;
  swift_beginAccess();
  return outlined init with copy of Date?(v3 + v4, a2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t sub_24FD7BC60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_timeInterval;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_24FD7BCBC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_timeInterval;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

__n128 sub_24FD7BD1C@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_name);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_24FD7BD78(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2 + OBJC_IVAR____TtC26GenerativeAssistantActions16SignpostInterval_name;
  result = swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t sub_24FD7BDD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_24FD7BE28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

__n128 sub_24FD7BE78@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 88);
  v5 = *(v3 + 120);
  *(a2 + 64) = *(v3 + 104);
  *(a2 + 80) = v5;
  *(a2 + 90) = *(v3 + 130);
  v6 = *(v3 + 56);
  *a2 = *(v3 + 40);
  *(a2 + 16) = v6;
  *(a2 + 32) = *(v3 + 72);
  *(a2 + 48) = result;
  return result;
}

void sub_24FD7BEE4(_OWORD *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = a1[2];
  *(v3 + 88) = a1[3];
  v5 = a1[5];
  *(v3 + 104) = a1[4];
  *(v3 + 120) = v5;
  *(v3 + 130) = *(a1 + 90);
  v6 = a1[1];
  *(v3 + 40) = *a1;
  *(v3 + 56) = v6;
  *(v3 + 72) = v4;
  MetricsUtils.performanceMetrics.didset();
}

uint64_t getEnumTagSinglePayload for GenerativeUsecases(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeUsecases(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for SignpostInterval()
{
  v0 = type metadata accessor for OSSignpostID();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for Date?();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GATPerformanceLatencyMetrics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 105))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GATPerformanceLatencyMetrics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
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

  *(result + 105) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Log(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Log(_WORD *result, int a2, int a3)
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

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

Swift::Bool __swiftcall ScreenLockChecker.isScreenLocked()()
{
  v0 = MKBGetDeviceLockState();
  if (one-time initialization token for screenshot != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.screenshot);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v0;
    _os_log_impl(&dword_24FD67000, v2, v3, "MKBGetDeviceLockState: %d", v4, 8u);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  return v0 == 1;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

_OWORD *ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, int a4)
{
  v40 = a4;
  v44 = a3;
  v41 = a2;
  v6 = type metadata accessor for GenerativeAssistantUseCase();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd, &_s17_StringProcessing5RegexVySs_SstGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39[-v13];
  v43 = *a1;
  v15 = (v4 + *(type metadata accessor for ModelResponse() + 56));
  v16 = *v15;
  v17 = v15[1];

  v18 = specialized RangeReplaceableCollection.filter(_:)(v16, v17);
  v20 = v19;

  specialized Sequence.reduce<A>(into:_:)(0, 0xE000000000000000, v18, v20);
  v22 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_SstMd, &_sSs_SstMR);
  Regex.init(_regexString:version:)();
  v47 = 0;
  v48 = v22;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type Substring and conformance Substring();
  lazy protocol witness table accessor for type Regex<(Substring, Substring)> and conformance Regex<A>();
  RangeReplaceableCollection<>.replacing<A, B, C>(_:maxReplacements:with:)();
  (*(v11 + 8))(v14, v10);
  v23 = v44;

  v25 = v49;
  v24 = v50;
  v26 = *v23;

  v27 = String.isLongerThan(num:unit:)(v26, NLTokenUnitWord);

  if (v43 < 2)
  {
    v28 = v42;
    (*(v42 + 104))(v9, *MEMORY[0x277D0D638], v6);
    lazy protocol witness table accessor for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v47 == v45 && v48 == v46)
    {
      (*(v28 + 8))(v9, v6);
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v28 + 8))(v9, v6);

      if ((v32 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (String.isLongerThan(num:unit:)(*(v23 + 8), NLTokenUnitSentence) || v27)
    {
      if (one-time initialization token for intent != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.intent);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_24FD67000, v34, v35, "ModelResponse#dialog ReadableResponse too long in composition mode, setting to short response", v36, 2u);
        MEMORY[0x253057F40](v36, -1, -1);
      }

      String.setSentToResponse(partnerName:)(*(v23 + 40));
      goto LABEL_17;
    }

LABEL_16:
    String.addVoiceModesDisclaimer(isLongResponse:isFirstRequest:partnerName:)(v27, v40 & 1, *(v23 + 40));
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    result = swift_allocObject();
    result[1] = xmmword_24FE1A560;
    v37 = v50;
    *(result + 4) = v49;
    *(result + 5) = v37;
    return result;
  }

  if (v43 == 2)
  {
    v29 = String.isLongerThan(num:unit:)(*(v23 + 8), NLTokenUnitSentence) || v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    result = swift_allocObject();
    result[1] = xmmword_24FE1A560;
    if (v29)
    {
      v30 = *(v23 + 32);
      *(result + 4) = *(v23 + 24);
      *(result + 5) = v30;
      v31 = result;

      return v31;
    }

    else
    {
      *(result + 4) = v25;
      *(result + 5) = v24;
    }
  }

  else
  {

    return &outlined read-only object #0 of one-time initialization function for NO_DIALOG;
  }

  return result;
}

Swift::Void __swiftcall String.setSentToResponse(partnerName:)(Swift::String_optional partnerName)
{
  countAndFlagsBits = partnerName.value._countAndFlagsBits;
  object = v1->_object;
  v4 = v1->_countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((object & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(object) & 0xF;
  }

  if (v4)
  {
    v5 = v1;
    v6 = partnerName.value._object;

    if (one-time initialization token for intent != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.intent);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24FD67000, v8, v9, "String#setSentToResponse setting response", v10, 2u);
      MEMORY[0x253057F40](v10, -1, -1);
    }

    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    v18 = 45;
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v12.value._countAndFlagsBits = countAndFlagsBits;
    v12.value._object = v6;
    v13 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v18, v12, v11);

    *v5 = v13;
  }

  else
  {
    if (one-time initialization token for intent != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.intent);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24FD67000, oslog, v15, "String#setSentToiOSResponse handling empty string", v16, 2u);
      MEMORY[0x253057F40](v16, -1, -1);
    }
  }
}

Swift::Void __swiftcall String.addVoiceModesDisclaimer(isLongResponse:isFirstRequest:partnerName:)(Swift::Bool isLongResponse, Swift::Bool isFirstRequest, Swift::String_optional partnerName)
{
  v4 = v3;
  v6 = *v3;
  v5 = v3[1];
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    object = partnerName.value._object;
    countAndFlagsBits = partnerName.value._countAndFlagsBits;
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v18._countAndFlagsBits) = 46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24FE1A8C0;
    strcpy((inited + 32), "isLongResponse");
    *(inited + 47) = -18;
    v13 = MEMORY[0x277D839B0];
    *(inited + 48) = isLongResponse;
    *(inited + 72) = v13;
    strcpy((inited + 80), "isFirstRequest");
    *(inited + 95) = -18;
    *(inited + 120) = v13;
    *(inited + 96) = isFirstRequest;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();
    v15.value._countAndFlagsBits = countAndFlagsBits;
    v15.value._object = object;
    v16 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v18, v15, v14);

    if (isLongResponse)
    {
      v18 = v16;

      MEMORY[0x253056FE0](32, 0xE100000000000000);

      MEMORY[0x253056FE0](v6, v5);
    }

    else
    {
      v18._countAndFlagsBits = v6;
      v18._object = v5;

      MEMORY[0x253056FE0](32, 0xE100000000000000);

      MEMORY[0x253056FE0](v16._countAndFlagsBits, v16._object);
    }

    v17 = v18._object;
    *v4 = v18._countAndFlagsBits;
    v4[1] = v17;
  }
}

void Optional<A>.asGATInteractionMode.getter(unsigned __int8 *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v60 - v9;
  if (one-time initialization token for _interactionMode != -1)
  {
    swift_once();
  }

  if (byte_27F39FA60)
  {
    v11 = unk_27F39FA50;
    v12 = static Overrides._interactionMode;

    v11(&v60, v12);

    v13 = v61;
    if (v61)
    {
      v14 = v60;

      v15._countAndFlagsBits = v14;
      v15._object = v13;
      v16 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GATInteractionMode.init(rawValue:), v15);

      if (v16 <= 3)
      {

        if (one-time initialization token for intent != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Logger.intent);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v60 = v21;
          *v20 = 136315138;
          v22 = 0xE900000000000079;
          v23 = 0x4679616C70736964;
          v24 = 0xEE0064726177726FLL;
          if (v16 != 2)
          {
            v23 = 0x4F79616C70736964;
            v24 = 0xEB00000000796C6ELL;
          }

          v25 = 0x726F466563696F76;
          if (v16)
          {
            v22 = 0xEC00000064726177;
          }

          else
          {
            v25 = 0x6C6E4F6563696F76;
          }

          if (v16 <= 1u)
          {
            v26 = v25;
          }

          else
          {
            v26 = v23;
          }

          if (v16 <= 1u)
          {
            v27 = v22;
          }

          else
          {
            v27 = v24;
          }

          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v60);

          *(v20 + 4) = v28;
          _os_log_impl(&dword_24FD67000, v18, v19, "Using interaction mode override: %s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x253057F40](v21, -1, -1);
          MEMORY[0x253057F40](v20, -1, -1);
        }

        *a1 = v16;
        return;
      }

      if (one-time initialization token for intent != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.intent);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v60 = v33;
        *v32 = 136315138;
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v60);

        *(v32 + 4) = v34;
        _os_log_impl(&dword_24FD67000, v30, v31, "Invalid interaction mode override: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x253057F40](v33, -1, -1);
        MEMORY[0x253057F40](v32, -1, -1);
      }

      else
      {
      }
    }
  }

  outlined init with copy of IntentSystemContext.AssistantContext.InteractionMode?(v2, v10);
  v35 = type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v10, 1, v35) == 1)
  {
    if (one-time initialization token for intent != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.intent);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24FD67000, v38, v39, "Nil interaction mode -- defaulting to displayOnly", v40, 2u);
      MEMORY[0x253057F40](v40, -1, -1);
    }

    *a1 = 3;
    outlined destroy of IntentSystemContext.AssistantContext.InteractionMode?(v10);
    return;
  }

  outlined init with copy of IntentSystemContext.AssistantContext.InteractionMode?(v10, v8);
  v41 = (*(v36 + 88))(v8, v35);
  if (v41 == *MEMORY[0x277CBA0B8])
  {
    v42 = 2;
  }

  else
  {
    if (v41 != *MEMORY[0x277CBA0A8])
    {
      if (v41 == *MEMORY[0x277CBA0C0])
      {
        v62 = 0;
        goto LABEL_39;
      }

      if (v41 == *MEMORY[0x277CBA0B0])
      {
        v42 = 1;
        goto LABEL_38;
      }

      (*(v36 + 8))(v8, v35);
      if (one-time initialization token for intent != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logger.intent);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_24FD67000, v57, v58, "Unsupported interaction mode -- defaulting to displayOnly", v59, 2u);
        MEMORY[0x253057F40](v59, -1, -1);
      }
    }

    v42 = 3;
  }

LABEL_38:
  v62 = v42;
LABEL_39:
  outlined destroy of IntentSystemContext.AssistantContext.InteractionMode?(v10);
  if (one-time initialization token for intent != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logger.intent);
  v44 = v62;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v60 = v48;
    *v47 = 136315138;
    v49 = 0xE900000000000079;
    v50 = 0x4679616C70736964;
    v51 = 0xEE0064726177726FLL;
    if (v44 != 2)
    {
      v50 = 0x4F79616C70736964;
      v51 = 0xEB00000000796C6ELL;
    }

    v52 = 0x726F466563696F76;
    if (v44)
    {
      v49 = 0xEC00000064726177;
    }

    else
    {
      v52 = 0x6C6E4F6563696F76;
    }

    if (v44 <= 1)
    {
      v53 = v52;
    }

    else
    {
      v53 = v50;
    }

    if (v44 <= 1)
    {
      v54 = v49;
    }

    else
    {
      v54 = v51;
    }

    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v60);

    *(v47 + 4) = v55;
    _os_log_impl(&dword_24FD67000, v45, v46, "Using interaction mode %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x253057F40](v48, -1, -1);
    MEMORY[0x253057F40](v47, -1, -1);
  }

  swift_beginAccess();
  *a1 = v62;
}

uint64_t IntentDialog.init(fullAndSupportingString:)()
{
  v0 = type metadata accessor for LocalizedStringResource();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v2);

  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  return IntentDialog.init(full:supporting:)();
}

uint64_t outlined init with copy of IntentSystemContext.AssistantContext.InteractionMode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of IntentSystemContext.AssistantContext.InteractionMode?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t getEnumTagSinglePayload for DialogConfig(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DialogConfig(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Regex<(Substring, Substring)> and conformance Regex<A>()
{
  result = lazy protocol witness table cache variable for type Regex<(Substring, Substring)> and conformance Regex<A>;
  if (!lazy protocol witness table cache variable for type Regex<(Substring, Substring)> and conformance Regex<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17_StringProcessing5RegexVySs_SstGMd, &_s17_StringProcessing5RegexVySs_SstGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex<(Substring, Substring)> and conformance Regex<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase()
{
  result = lazy protocol witness table cache variable for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase;
  if (!lazy protocol witness table cache variable for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase)
  {
    type metadata accessor for GenerativeAssistantUseCase();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase);
  }

  return result;
}

void one-time initialization function for _modelMaximumTokens()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x800000024FE1F8A0;
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    internalBuild = MobileGestalt_get_internalBuild();

    v5 = MEMORY[0x253056EA0](0xD000000000000014, 0x800000024FE1F840);
    [v1 addSuiteNamed_];

    static Overrides._modelMaximumTokens = v1;
    unk_27F39F9B0 = 0xD000000000000012;
    qword_27F39F9B8 = 0x800000024FE1F8A0;
    unk_27F39F9C0 = closure #1 in Overridable<A>.init(key:)partial apply;
    qword_27F39F9C8 = v0;
    byte_27F39F9D0 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

void one-time initialization function for _modelRandomSeed()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6E61526C65646F6DLL;
  *(v0 + 24) = 0xEF646565536D6F64;
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    internalBuild = MobileGestalt_get_internalBuild();

    v5 = MEMORY[0x253056EA0](0xD000000000000014, 0x800000024FE1F840);
    [v1 addSuiteNamed_];

    static Overrides._modelRandomSeed = v1;
    unk_27F39F9E0 = 0x6E61526C65646F6DLL;
    qword_27F39F9E8 = 0xEF646565536D6F64;
    unk_27F39F9F0 = partial apply for closure #1 in Overridable<A>.init(key:);
    qword_27F39F9F8 = v0;
    byte_27F39FA00 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

void one-time initialization function for _temperature()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x74617265706D6574;
  *(v0 + 24) = 0xEB00000000657275;
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    internalBuild = MobileGestalt_get_internalBuild();

    v5 = MEMORY[0x253056EA0](0xD000000000000014, 0x800000024FE1F840);
    [v1 addSuiteNamed_];

    static Overrides._temperature = v1;
    unk_27F39FA10 = 0x74617265706D6574;
    qword_27F39FA18 = 0xEB00000000657275;
    unk_27F39FA20 = partial apply for closure #1 in Overridable<A>.init(key:);
    qword_27F39FA28 = v0;
    byte_27F39FA30 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

void one-time initialization function for _interactionMode()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7463617265746E69;
  *(v0 + 24) = 0xEF65646F4D6E6F69;
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    internalBuild = MobileGestalt_get_internalBuild();

    v5 = MEMORY[0x253056EA0](0xD000000000000014, 0x800000024FE1F840);
    [v1 addSuiteNamed_];

    static Overrides._interactionMode = v1;
    unk_27F39FA40 = 0x7463617265746E69;
    qword_27F39FA48 = 0xEF65646F4D6E6F69;
    unk_27F39FA50 = closure #1 in Overridable<A>.init(key:defaultValue:)partial apply;
    qword_27F39FA58 = v0;
    byte_27F39FA60 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static Overrides.showMockWebSources.getter()
{
  if (one-time initialization token for _showMockWebSources != -1)
  {
    swift_once();
  }

  if (byte_27F39FA90 != 1)
  {
    return 2;
  }

  v0 = unk_27F39FA80;
  v1 = static Overrides._showMockWebSources;

  v0(&v3, v1);

  return v3;
}

void one-time initialization function for _showMockWebSources()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x800000024FE1F9A0;
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    internalBuild = MobileGestalt_get_internalBuild();

    v5 = MEMORY[0x253056EA0](0xD000000000000014, 0x800000024FE1F840);
    [v1 addSuiteNamed_];

    static Overrides._showMockWebSources = v1;
    unk_27F39FA70 = 0xD000000000000012;
    qword_27F39FA78 = 0x800000024FE1F9A0;
    unk_27F39FA80 = closure #1 in Overridable<A>.init(key:)partial apply;
    qword_27F39FA88 = v0;
    byte_27F39FA90 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static Overrides.disableTextCompositionConfirmation.getter()
{
  if (one-time initialization token for _disableTextCompositionConfirmation != -1)
  {
    swift_once();
  }

  if (byte_27F39FAC0 != 1)
  {
    return 2;
  }

  v0 = unk_27F39FAB0;
  v1 = static Overrides._disableTextCompositionConfirmation;

  v0(&v3, v1);

  return v3;
}

void one-time initialization function for _disableTextCompositionConfirmation()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000022;
  *(v0 + 24) = 0x800000024FE1F970;
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    internalBuild = MobileGestalt_get_internalBuild();

    v5 = MEMORY[0x253056EA0](0xD000000000000014, 0x800000024FE1F840);
    [v1 addSuiteNamed_];

    static Overrides._disableTextCompositionConfirmation = v1;
    unk_27F39FAA0 = 0xD000000000000022;
    qword_27F39FAA8 = 0x800000024FE1F970;
    unk_27F39FAB0 = closure #1 in Overridable<A>.init(key:)partial apply;
    qword_27F39FAB8 = v0;
    byte_27F39FAC0 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

void one-time initialization function for _enableImageInline()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x800000024FE1F860;
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    internalBuild = MobileGestalt_get_internalBuild();

    v5 = MEMORY[0x253056EA0](0xD000000000000014, 0x800000024FE1F840);
    [v1 addSuiteNamed_];

    static Overrides._enableImageInline = v1;
    unk_27F39FAD0 = 0xD000000000000011;
    qword_27F39FAD8 = 0x800000024FE1F860;
    unk_27F39FAE0 = partial apply for closure #1 in Overridable<A>.init(key:);
    qword_27F39FAE8 = v0;
    byte_27F39FAF0 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

void one-time initialization function for _compressionRatio()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x800000024FE1F820;
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    internalBuild = MobileGestalt_get_internalBuild();

    v5 = MEMORY[0x253056EA0](0xD000000000000014, 0x800000024FE1F840);
    [v1 addSuiteNamed_];

    static Overrides._compressionRatio = v1;
    unk_27F39FB00 = 0xD000000000000010;
    qword_27F39FB08 = 0x800000024FE1F820;
    unk_27F39FB10 = partial apply for closure #1 in Overridable<A>.init(key:);
    qword_27F39FB18 = v0;
    byte_27F39FB20 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

void one-time initialization function for _enableWebSources()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x800000024FE1F880;
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    internalBuild = MobileGestalt_get_internalBuild();

    v5 = MEMORY[0x253056EA0](0xD000000000000014, 0x800000024FE1F840);
    [v1 addSuiteNamed_];

    static Overrides._enableWebSources = v1;
    unk_27F39FB30 = 0xD000000000000010;
    qword_27F39FB38 = 0x800000024FE1F880;
    unk_27F39FB40 = closure #1 in Overridable<A>.init(key:)partial apply;
    qword_27F39FB48 = v0;
    byte_27F39FB50 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

void one-time initialization function for _tamalePromptOverridePath()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x800000024FE1F8E0;
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    internalBuild = MobileGestalt_get_internalBuild();

    v5 = MEMORY[0x253056EA0](0xD000000000000014, 0x800000024FE1F840);
    [v1 addSuiteNamed_];

    static Overrides._tamalePromptOverridePath = v1;
    unk_27F39FB60 = 0xD000000000000018;
    qword_27F39FB68 = 0x800000024FE1F8E0;
    unk_27F39FB70 = closure #1 in Overridable<A>.init(key:defaultValue:)partial apply;
    qword_27F39FB78 = v0;
    byte_27F39FB80 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static Overrides.tamaleAppDebugPromptOverridePath.getter()
{
  if (one-time initialization token for _tamaleAppDebugPromptOverridePath != -1)
  {
    swift_once();
  }

  if (byte_27F39FBB0 != 1)
  {
    return 0;
  }

  v0 = *(&xmmword_27F39FB98 + 1);
  v1 = static Overrides._tamaleAppDebugPromptOverridePath;

  v0(&v3, v1);

  return v3;
}

double one-time initialization function for _tamaleAppDebugPromptOverridePath()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000020;
  *(v0 + 24) = 0x800000024FE1F900;
  _s26GenerativeAssistantActions11OverridableV3key12defaultValue3getACyxGSS_SSSgxSgSo14NSUserDefaultsCctc33_890C0CD07C4081F7248A1A2228934776LlfCSS_Tt3g5(0xD000000000000020, 0x800000024FE1F900, 0xD000000000000033, 0x800000024FE1F930, closure #1 in Overridable<A>.init(key:defaultValue:)partial apply, v0, v2);
  static Overrides._tamaleAppDebugPromptOverridePath = v2[0];
  unk_27F39FB90 = v2[1];
  result = *&v3;
  xmmword_27F39FB98 = v3;
  qword_27F39FBA8 = v4;
  byte_27F39FBB0 = v5;
  return result;
}

void one-time initialization function for _systemPromptOverridePath()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x800000024FE1F8C0;
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    internalBuild = MobileGestalt_get_internalBuild();

    v5 = MEMORY[0x253056EA0](0xD000000000000014, 0x800000024FE1F840);
    [v1 addSuiteNamed_];

    static Overrides._systemPromptOverridePath = v1;
    unk_27F39FBC0 = 0xD000000000000018;
    qword_27F39FBC8 = 0x800000024FE1F8C0;
    unk_27F39FBD0 = partial apply for closure #1 in Overridable<A>.init(key:defaultValue:);
    qword_27F39FBD8 = v0;
    byte_27F39FBE0 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

void _s26GenerativeAssistantActions11OverridableV3key12defaultValue3getACyxGSS_SSSgxSgSo14NSUserDefaultsCctc33_890C0CD07C4081F7248A1A2228934776LlfCSS_Tt3g5(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = MobileGestalt_get_current_device();
  if (v15)
  {
    v16 = v15;
    internalBuild = MobileGestalt_get_internalBuild();

    v18 = MEMORY[0x253056EA0](0xD000000000000014, 0x800000024FE1F840);
    [v14 addSuiteNamed_];

    if (a4)
    {

      v19 = MEMORY[0x253056EA0](a3, a4);

      v20 = MEMORY[0x253056EA0](a1, a2);

      [v14 setObject:v19 forKey:v20];
    }

    *a7 = v14;
    *(a7 + 8) = a1;
    *(a7 + 16) = a2;
    *(a7 + 24) = a5;
    *(a7 + 32) = a6;
    *(a7 + 40) = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24FD7F184()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #1 in Overridable<A>.init(key:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return closure #1 in Overridable<A>.init(key:)(a1, *(v2 + 16), *(v2 + 24), a2);
}

{
  return closure #1 in Overridable<A>.init(key:)(a1, *(v2 + 16), *(v2 + 24), a2);
}

{
  return closure #1 in Overridable<A>.init(key:)(a1, *(v2 + 16), *(v2 + 24), a2);
}

uint64_t dispatch thunk of TextAssistantHandoffProviding.attemptHandoff(userQuery:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of TextAssistantHandoffProviding.attemptHandoff(userQuery:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TextAssistantHandoffProviding.attemptHandoff(userQuery:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TextAssistantHandoff(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TextAssistantHandoff(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void one-time initialization function for instance()
{
  qword_27F3A3E70 = &type metadata for ForegroundAppDetector;
  unk_27F3A3E78 = &protocol witness table for ForegroundAppDetector;
  static TextAssistantHandoff.instance = 0x4000000000000000;
  qword_27F3A3E98 = &type metadata for TextAssistantExecutor;
  unk_27F3A3EA0 = &protocol witness table for TextAssistantExecutor;
  qword_27F3A3E80 = 0xD00000000000002DLL;
  unk_27F3A3E88 = 0x800000024FE1FA10;
}

uint64_t TextAssistantHandoff.attemptHandoff(userQuery:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](TextAssistantHandoff.attemptHandoff(userQuery:), 0, 0);
}

uint64_t TextAssistantHandoff.attemptHandoff(userQuery:)()
{
  v25 = v0;
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  v2 = ForegroundAppDetector.getForegroundAppBundleID()();
  *(v0 + 48) = v2.value._object;
  if (v3)
  {
    v4 = *(v0 + 40);

    v5 = *(v0 + 8);
LABEL_3:

    return v5(0);
  }

  if (!v2.value._object)
  {
    if (one-time initialization token for textAssistantHandoff != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.textAssistantHandoff);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24FD67000, v20, v21, "No foreground app detected", v22, 2u);
      MEMORY[0x253057F40](v22, -1, -1);
    }

    v23 = *(v0 + 40);

    v5 = *(v0 + 8);
    goto LABEL_3;
  }

  if (one-time initialization token for textAssistantHandoff != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  *(v0 + 56) = __swift_project_value_buffer(v7, static Logger.textAssistantHandoff);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2.value._countAndFlagsBits, v2.value._object, &v24);
    _os_log_impl(&dword_24FD67000, v8, v9, "Attempting handoff to Text Assistant for app: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x253057F40](v11, -1, -1);
    MEMORY[0x253057F40](v10, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 32);
  *(v0 + 64) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("TextAssistantHandoff.Time", 25, 2);
  v13 = __swift_project_boxed_opaque_existential_1((v12 + 40), *(v12 + 64));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v0 + 72) = v16;
  *v16 = v0;
  v16[1] = TextAssistantHandoff.attemptHandoff(userQuery:);
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);

  return TextAssistantExecutor.execute(appBundleID:userQuery:)(v2.value._countAndFlagsBits, v2.value._object, v17, v18, v14, v15);
}

{
  v19 = v0;
  v1 = *(v0 + 56);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 0xD000000000000029;
    }

    else
    {
      v7 = 0xD00000000000001ALL;
    }

    if (v4)
    {
      v8 = "Text Assistant unavailable";
    }

    else
    {
      v8 = "showMockWebSources";
    }

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8 | 0x8000000000000000, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24FD67000, v2, v3, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253057F40](v6, -1, -1);
    MEMORY[0x253057F40](v5, -1, -1);
  }

  if (*(v0 + 80) == 1)
  {
    v10 = *(v0 + 64);
    MetricsUtils.emitSignpostEvent(_:)("Usecase.TextAssistant", 21, 2);
  }

  v11 = *(v0 + 64);
  v12 = *(v0 + 40);
  v13 = type metadata accessor for OSSignpostID();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("TextAssistantHandoff.Time", 25, 2, v12);
  outlined destroy of OSSignpostID?(v12);
  v14 = *(v0 + 80);
  v15 = *(v0 + 40);

  v16 = *(v0 + 8);

  return v16(v14);
}