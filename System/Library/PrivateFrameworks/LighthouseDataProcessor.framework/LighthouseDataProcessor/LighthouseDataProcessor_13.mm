void sub_20E1E7E88()
{
  sub_20E1ECF10(319, &qword_280E12B40, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1ECF10(319, &qword_280E12B60, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E3221C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E1E7FEC()
{
  sub_20E1E240C(319, &qword_280E04040, type metadata accessor for TranscriptProtoUIType, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, &qword_280E04030, type metadata accessor for TranscriptProtoUILabel, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E072A0, type metadata accessor for TranscriptProtoResponseVisualOptions, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E3221C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20E1E8264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_index_443Tm_0);
}

uint64_t sub_20E1E82BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_444Tm_0);
}

void sub_20E1E838C()
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1288Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_1289Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1279Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_1280Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E1E8798()
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E04F08, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E05798, type metadata accessor for TranscriptProtoSystemPromptResolutionInput, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E3221C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_20E1E89A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_20E1E8A50()
{
  sub_20E1E240C(319, &qword_280E03FD0, type metadata accessor for TranscriptProtoParameterSet, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D328, type metadata accessor for TranscriptProtoParameterSet, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E07DA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E3221C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_514Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_515Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E1E8DC0()
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E11770, type metadata accessor for ContextProtoRetrievedContext, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E8EE4()
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E079F0, type metadata accessor for ContextProtoDynamicEnumerationEntity, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E90B4()
{
  sub_20E1ECF10(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0EBB0, type metadata accessor for TranscriptProtoCandidate, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E1E9210()
{
  result = type metadata accessor for ToolKitProtoTypedValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1234Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_20E3221C0();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *__swift_store_extra_inhabitant_index_1235Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E1E9494()
{
  sub_20E1E3F48(319, &qword_280E040A8, type metadata accessor for ToolKitProtoTypedValue);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E95B4()
{
  sub_20E1E240C(319, &qword_280E03F80, type metadata accessor for TranscriptProtoVariableSetter, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E96D8()
{
  sub_20E1E3F48(319, &qword_27C868CA8, type metadata accessor for TranscriptProtoASTFlatValue);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_895Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_20E3221C0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_896Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptProtoAstpickTypeEnum(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptProtoAstpickTypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_20E1E9C88()
{
  sub_20E1E240C(319, &qword_27C868D98, type metadata accessor for TranscriptProtoASTFlatValue, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, &qword_27C868DA0, type metadata accessor for TranscriptProtoASTFlatValue, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E1E9E88()
{
  result = type metadata accessor for TranscriptProtoASTFlatValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(319);
                                    if (v18 <= 0x3F)
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

  return result;
}

uint64_t sub_20E1EA098()
{
  result = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoStatementID(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_20E1EA1F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_20E1E3F48(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_20E3221C0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E1EA394()
{
  result = type metadata accessor for TranscriptProtoValueExpression(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoStatementID(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoPrefixExpression(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoInfixExpression(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoIndexExpression(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoUpdateParametersExpression(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoCallExpression(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoSayExpression(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoPickExpression(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoConfirmExpression(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoSearchExpression(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoStructuredSearchExpression(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for TranscriptProtoPickOneExpression(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for TranscriptProtoResolveToolExpression(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for TranscriptProtoUndoExpression(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for TranscriptProtoRejectExpression(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for TranscriptProtoCancelExpression(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for TranscriptProtoNoMatchingToolExpression(319);
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for TranscriptProtoContinuePlanningExpression(319);
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for TranscriptProtoEndOfPlanExpression(319);
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(319);
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for TranscriptProtoOpenExpression(319);
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for TranscriptProtoExplicitResolutionRequest(319);
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for TranscriptProtoPayloadExpression(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for TranscriptProtoFormatExpression(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for TranscriptProtoRetrieveContextExpression(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for TranscriptProtoRetrieveSpansExpression(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for TranscriptProtoRetrieveToolsExpression(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for TranscriptProtoSiriXFallbackExpression(319);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for TranscriptProtoUserConfirmExpression(319);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for TranscriptProtoUserDisambiguateExpression(319);
                                                              if (v31 <= 0x3F)
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

  return result;
}

uint64_t sub_20E1EA790()
{
  result = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1861Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 237)
  {
    v6 = *a1;
    if (v6 >= 0x13)
    {
      return v6 - 18;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 28)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *__swift_store_extra_inhabitant_index_1862Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 237)
  {
    *result = a2 + 18;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = &v7[*(a4 + 20)];

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = &v7[*(a4 + 28)];

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E1EAB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_20E1E240C(319, a5, a6, MEMORY[0x277D83D88]);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1924Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 253)
  {
    v6 = *a1;
    if (v6 >= 3)
    {
      return v6 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 24)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *__swift_store_extra_inhabitant_index_1925Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = &v7[*(a4 + 20)];

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = &v7[*(a4 + 24)];

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_395Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = sub_20E3221C0();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_396Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = sub_20E3221C0();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

void sub_20E1EB07C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_20E1E240C(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1EB134()
{
  sub_20E1E240C(319, &qword_280E04050, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1EB258()
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1EB414(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_20E1E3F48(319, a4, a5);
  if (v9 <= 0x3F)
  {
    sub_20E1E240C(319, a6, a7, MEMORY[0x277D83D88]);
    if (v10 <= 0x3F)
    {
      sub_20E3221C0();
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_368Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_369Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20E1EB784()
{
  result = sub_20E3221C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1207Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

void *__swift_store_extra_inhabitant_index_1208Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 24);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 28);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E1EBA84()
{
  sub_20E1E3F48(319, &qword_280E040C8, type metadata accessor for TranscriptProtoStatementID);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, &qword_280E03F18, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E3221C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_472Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_473Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 24);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 28);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E1EBE3C()
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1EC198()
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1EC27C()
{
  sub_20E1E240C(319, &qword_280E03FE8, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E1EC3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_20E03E5B8);
}

uint64_t sub_20E1EC42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_20E03E670);
}

void sub_20E1EC4D4()
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0C340, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_296Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_297Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E1EC7A4()
{
  sub_20E1E240C(319, &qword_280E04008, type metadata accessor for ContextProtoRetrievedTool, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, &qword_280E03F88, type metadata accessor for ContextProtoToolRetrievalType, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1EC8E8()
{
  sub_20E1E240C(319, &qword_280E03F28, type metadata accessor for TranscriptProtoInterpretedStatementResult, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0BA08, type metadata accessor for TranscriptProtoResponseOutput, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E3221C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E1ECA48()
{
  sub_20E1E240C(319, qword_280E09BB0, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E3221C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E1ECBB4()
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0E2D8, type metadata accessor for TranscriptProtoExpression, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1ECF10(319, &qword_280E12B60, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E1ECF10(319, &qword_280E12B48, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E1E240C(319, qword_280E0A298, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_20E3221C0();
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

uint64_t __swift_get_extra_inhabitant_index_805Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_20E3221C0();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *__swift_store_extra_inhabitant_index_806Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E1ECF10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_170Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_171Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20E1ED0E8()
{
  result = sub_20E3221C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_404Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_20E3221C0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_405Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_20E3221C0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_20E1ED3DC()
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_967Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 32);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_968Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 24);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 32);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E1ED754()
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1ED848()
{
  sub_20E1E240C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E3221C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_2344Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(v9 + 48);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v10 = v13;
    v11 = *(v14 + 48);
    v12 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v16 = sub_20E3221C0();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + *(a3 + 28);

  return v17(v18, a2, v16);
}

uint64_t __swift_store_extra_inhabitant_index_2345Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = *(v11 + 56);
    v14 = a1;
LABEL_5:

    return v13(v14, a2, a2, v12);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a3)
  {
    v12 = v15;
    v13 = *(v16 + 56);
    v14 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v18 = sub_20E3221C0();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + *(a4 + 28);

  return v19(v20, a2, a2, v18);
}

void sub_20E1EDC80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_20E1E240C(319, a4, a5, MEMORY[0x277D83D88]);
  if (v5 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v6 <= 0x3F)
    {
      sub_20E3221C0();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1EDD90()
{
  sub_20E1E240C(319, &qword_280E03F90, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, &qword_280E03F10, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, &qword_280E03F30, type metadata accessor for TranscriptProtoRetrievedContextStatement, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E04E60, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E3221C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1012Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  if (a2 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v15 = v14;
    v16 = *(v14 - 8);
    v17 = a3[5];
LABEL_9:
    v19 = *(v16 + 48);

    return v19(a1 + v17, a2, v15);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v15 = v18;
    v16 = *(v18 - 8);
    v17 = a3[6];
    goto LABEL_9;
  }

  v20 = sub_20E3221C0();
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[7];

  return v21(v22, a2, v20);
}

uint64_t __swift_store_extra_inhabitant_index_1013Tm(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v15 = v14;
    v16 = *(v14 - 8);
    v17 = a4[5];
LABEL_7:
    v19 = *(v16 + 56);

    return v19(v9 + v17, a2, a2, v15);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v15 = v18;
    v16 = *(v18 - 8);
    v17 = a4[6];
    goto LABEL_7;
  }

  v20 = sub_20E3221C0();
  v21 = *(*(v20 - 8) + 56);
  v22 = v9 + a4[7];

  return v21(v22, a2, a2, v20);
}

void sub_20E1EE25C()
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E04700, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_269Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_270Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20E1EE6D4()
{
  result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_454Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

void *__swift_store_extra_inhabitant_index_455Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E1EEAF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_20E1E240C(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_197Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_198Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E1EEE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_20E1E240C(319, a5, a6, MEMORY[0x277D83D88]);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_242Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_243Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20E1EF028()
{
  result = sub_20E3221C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_233Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_234Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20E1EF20C()
{
  result = sub_20E3221C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20E1EF280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20E1EF2E8()
{
  result = qword_27C865988;
  if (!qword_27C865988)
  {
    sub_20E3221C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865988);
  }

  return result;
}

uint64_t sub_20E1EFC04()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868F48);
  __swift_project_value_buffer(v0, qword_27C868F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20E3262C0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 0;
  *v5 = "onScreen";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "conversational";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "announcement";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "notification";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "visual";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "unknownSource";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E1EFF10()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868F60);
  __swift_project_value_buffer(v0, qword_27C868F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_20E342180;
  v4 = v70 + v3;
  v5 = v70 + v3 + v1[14];
  *(v70 + v3) = 0;
  *v5 = "APP_IN_FOCUS_BUNDLE_ID";
  *(v5 + 8) = 22;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "BLUETOOTH_DEVICE_TYPE";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CALENDAR_EVENTS";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MOTION_STATE";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "NOW_PLAYING_PLAYBACK_STATE";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "POINT_OF_INTEREST";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "RECENT_TRANSCRIPT";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "SEMANTIC_LOCATION";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ON_SCREEN_CONTENT_EMAIL_ADDRESS";
  *(v22 + 8) = 31;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ON_SCREEN_CONTENT_PHONE_NUMBER";
  *(v24 + 1) = 30;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ON_SCREEN_CONTENT_POSTAL_ADDRESS";
  *(v26 + 1) = 32;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ON_SCREEN_CONTENT_URI_LINK";
  *(v28 + 1) = 26;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ON_SCREEN_PERSON";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ON_SCREEN_HOME";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ON_SCREEN_NOTIFICATION";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ON_SCREEN_DATE_TIME";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "CONVERSATIONAL_REMINDER";
  *(v37 + 8) = 23;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "CONVERSATIONAL_CALENDAR_EVENT";
  *(v39 + 1) = 29;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "CONVERSATIONAL_PEOPLE";
  *(v41 + 1) = 21;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "CONVERSATIONAL_PLACES";
  *(v43 + 1) = 21;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "CONVERSATIONAL_ALARM";
  *(v45 + 1) = 20;
  v45[16] = 2;
  v8();
  v46 = (v4 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "CONVERSATIONAL_TIMER";
  *(v47 + 1) = 20;
  v47[16] = 2;
  v8();
  v48 = (v4 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "NOW_PLAYING_MEDIA_ITEM";
  *(v49 + 1) = 22;
  v49[16] = 2;
  v8();
  v50 = (v4 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "ON_SCREEN_CONTENT_APP_ENTITY";
  *(v51 + 1) = 28;
  v51[16] = 2;
  v8();
  v52 = (v4 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "SIRI_REQUEST_CONTEXT";
  *(v53 + 1) = 20;
  v53[16] = 2;
  v8();
  v54 = (v4 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "CURRENT_LOCATION";
  *(v55 + 1) = 16;
  v55[16] = 2;
  v8();
  v56 = (v4 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "INTELLIGENCE_COMMAND";
  *(v57 + 1) = 20;
  v57[16] = 2;
  v8();
  v58 = (v4 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "HAS_FOCUSED_ON_SCREEN_DOCUMENT";
  *(v59 + 1) = 30;
  v59[16] = 2;
  v8();
  v60 = (v4 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "HAS_FOCUSED_ON_SCREEN_IMAGE";
  *(v61 + 1) = 27;
  v61[16] = 2;
  v8();
  v62 = (v4 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "ON_SCREEN_UI_TEXT";
  *(v63 + 1) = 17;
  v63[16] = 2;
  v8();
  v64 = (v4 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "ON_SCREEN_APP";
  *(v65 + 1) = 13;
  v65[16] = 2;
  v8();
  v66 = (v4 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "ON_SCREEN_CONTENT_DOCUMENT_IMAGE";
  *(v67 + 1) = 32;
  v67[16] = 2;
  v8();
  v68 = v4 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 32;
  *v68 = "LIVE_CALL";
  *(v68 + 8) = 9;
  *(v68 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E1F0874()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868F78);
  __swift_project_value_buffer(v0, qword_27C868F78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20E326330;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "PlaybackStateUnknown";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "PlaybackStatePlaying";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PlaybackStatePaused";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "PlaybackStateStopped";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "PlaybackStateInterrupted";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "PlaybackStateSeeking";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "PlaybackStateUnsupported";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t sub_20E1F0BBC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868F90);
  __swift_project_value_buffer(v0, qword_27C868F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MediaTypeNone";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MediaTypeAudio";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MediaTypeVideo";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MediaTypeUnsupported";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1F0E50()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868FA8);
  __swift_project_value_buffer(v0, qword_27C868FA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20E342190;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "MediaSubTypeMusic";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "MediaSubTypeTVShow";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "MediaSubTypeMovie";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MediaSubTypePodcast";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "MediaSubTypeAudiobook";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "MediaSubTypeITunesU";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "MediaSubTypeHomeMedia";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "MediaSubTypeUnsupported";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "MediaSubTypeNone";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E1F121C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868FC0);
  __swift_project_value_buffer(v0, qword_27C868FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Unsure1";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UnsureN";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Known";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "Confident";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1F14F8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868FD8);
  __swift_project_value_buffer(v0, qword_27C868FD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20E326300;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 0;
  *v5 = "DeviceIdiomUnknown";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "CarPlay";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "EyesFree";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "HomePod";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "Mac";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "AirPods";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "IPhone";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "IPad";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "Watch";
  *(v22 + 8) = 5;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TV";
  *(v24 + 1) = 2;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "Vision";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ELEVEN";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E1F1968()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868FF0);
  __swift_project_value_buffer(v0, qword_27C868FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LOW";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MEDIUM";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "HIGH";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1F1BC4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869008);
  __swift_project_value_buffer(v0, qword_27C869008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "spanMatching";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "contextRetrieval";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "toolRetrieval";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "toolContextRetrieval";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "jointResolver";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "screenContentRetrieval";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1F1ED8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869020);
  __swift_project_value_buffer(v0, qword_27C869020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unset";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "prePlanner";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "fullPlanner";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1F2134()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869038);
  __swift_project_value_buffer(v0, qword_27C869038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "siriEntityMatcher";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "globalEntityMatcher";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1F2390()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869050);
  __swift_project_value_buffer(v0, qword_27C869050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326330;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "homeEntity";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "synonym";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "transliteration";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "expandedEmoji";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "contactRelationship";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "contactHypocorism";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "contactHandle";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1F26FC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869068);
  __swift_project_value_buffer(v0, qword_27C869068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20E326330;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "value";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "relevance";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "metadata";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "typedValue";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "structuredContext";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "identifier";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ContextProtoRetrievedContext.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_20E1F2BB0();
            break;
          case 2:
            sub_20E1F2C64();
            break;
          case 3:
            sub_20E06396C();
            sub_20E322310();
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          sub_20E1F2E80();
        }

        else if (result == 7)
        {
          v3 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 40);
          sub_20E3223D0();
        }
      }

      else if (result == 4)
      {
        sub_20E1F2D18();
      }

      else
      {
        sub_20E1F2DCC();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E1F2BB0()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E21DA3C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E1F2C64()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 24);
  type metadata accessor for ContextProtoConfidence(0);
  sub_20E21DA3C(&qword_27C8696D0, type metadata accessor for ContextProtoConfidence);
  return sub_20E322430();
}

uint64_t sub_20E1F2D18()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 28);
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_20E21DA3C(&qword_27C869678, type metadata accessor for ContextProtoContextMetadata);
  return sub_20E322430();
}

uint64_t sub_20E1F2DCC()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 32);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E21DA3C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E1F2E80()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 36);
  type metadata accessor for ContextProtoStructuredContext(0);
  sub_20E21DA3C(&qword_27C8696E8, type metadata accessor for ContextProtoStructuredContext);
  return sub_20E322430();
}

uint64_t ContextProtoRetrievedContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E1F3088(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E1F32A4(v3, a1, a2, a3);
    if (*v3)
    {
      v10 = *v3;
      sub_20E06396C();
      sub_20E3224D0();
    }

    sub_20E1F34C0(v3, a1, a2, a3);
    sub_20E1F36DC(v3, a1, a2, a3);
    sub_20E1F38F8(v3, a1, a2, a3);
    sub_20E1F532C(v3, a1, a2, a3, type metadata accessor for ContextProtoRetrievedContext);
    v9 = &v3[*(type metadata accessor for ContextProtoRetrievedContext(0) + 44)];
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1F3088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E21DA3C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E1F32A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BD0, &qword_20E323EB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoConfidence(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C863BD0, &qword_20E323EB8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BD0, &qword_20E323EB8);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoConfidence);
  sub_20E21DA3C(&qword_27C8696D0, type metadata accessor for ContextProtoConfidence);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoConfidence);
}

uint64_t sub_20E1F34C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BD8, &qword_20E323EC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoContextMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C863BD8, &qword_20E323EC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BD8, &qword_20E323EC0);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoContextMetadata);
  sub_20E21DA3C(&qword_27C869678, type metadata accessor for ContextProtoContextMetadata);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoContextMetadata);
}

uint64_t sub_20E1F36DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_20E0486F4(a1 + *(v14 + 32), v8, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E21DA3C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E1F38F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BE0, &qword_20E323EC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_20E0486F4(a1 + *(v14 + 36), v8, &qword_27C863BE0, &qword_20E323EC8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BE0, &qword_20E323EC8);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoStructuredContext);
  sub_20E21DA3C(&qword_27C8696E8, type metadata accessor for ContextProtoStructuredContext);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoStructuredContext);
}

uint64_t sub_20E1F3B60@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  v7 = a1[6];
  v8 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = a1[7];
  v10 = type metadata accessor for ContextProtoContextMetadata(0);
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  v6(&a2[a1[8]], 1, 1, v5);
  v11 = a1[9];
  v12 = type metadata accessor for ContextProtoStructuredContext(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = a1[11];
  v14 = &a2[a1[10]];
  *v14 = 0;
  v14[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E1F3D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AE8, type metadata accessor for ContextProtoRetrievedContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1F3DCC()
{
  sub_20E21DA3C(&qword_27C8661D0, type metadata accessor for ContextProtoRetrievedContext);

  return sub_20E322470();
}

uint64_t sub_20E1F3E38()
{
  sub_20E21DA3C(&qword_27C8661D0, type metadata accessor for ContextProtoRetrievedContext);

  return sub_20E322480();
}

uint64_t sub_20E1F3ED4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869080);
  __swift_project_value_buffer(v0, qword_27C869080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20E3421A0;
  v4 = v40 + v3;
  v5 = v40 + v3 + v1[14];
  *(v40 + v3) = 1;
  *v5 = "entity_id";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "app_bundle_id";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "saliency";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21870];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "on_screen_surrounding_text";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "on_screen_bounding_box";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "seq";
  *(v18 + 1) = 3;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "group_id";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "isSelected";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v8();
  v23 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "isPrimary";
  *(v23 + 8) = 9;
  *(v23 + 16) = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "screenDimensions";
  *(v25 + 1) = 16;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "dataSource";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "displayRepresentation";
  *(v29 + 1) = 21;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "appBundleIdentifier";
  *(v31 + 1) = 19;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "screenSize";
  *(v33 + 1) = 10;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "frame";
  *(v35 + 1) = 5;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "elementVisibility";
  *(v37 + 1) = 17;
  v37[16] = 2;
  v8();
  v38 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v38 = "processInstanceIdentifier";
  *(v38 + 8) = 25;
  *(v38 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ContextProtoContextMetadata.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
          goto LABEL_6;
        case 3:
          sub_20E1F4734();
          break;
        case 4:
          type metadata accessor for ContextProtoSurroundingText(0);
          sub_20E21DA3C(&qword_27C869458, type metadata accessor for ContextProtoSurroundingText);
          sub_20E322420();
          break;
        case 5:
          sub_20E1F47E8();
          break;
        case 6:
          v6 = v0;
          v10 = *(type metadata accessor for ContextProtoContextMetadata(0) + 36);
          goto LABEL_20;
        case 7:
          v3 = v0;
          v11 = *(type metadata accessor for ContextProtoContextMetadata(0) + 40);
          goto LABEL_5;
        case 8:
          v8 = v0;
          v9 = *(type metadata accessor for ContextProtoContextMetadata(0) + 44);
          goto LABEL_25;
        case 9:
          v8 = v0;
          v12 = *(type metadata accessor for ContextProtoContextMetadata(0) + 48);
LABEL_25:
          v0 = v8;
          sub_20E3222E0();
          break;
        case 10:
          sub_20E1F489C();
          break;
        case 11:
          sub_20E1F4950();
          break;
        case 12:
          sub_20E1F49C4();
          break;
        case 13:
          v3 = v0;
          v5 = *(type metadata accessor for ContextProtoContextMetadata(0) + 64);
          goto LABEL_5;
        case 14:
          sub_20E1F4A78();
          break;
        case 15:
          sub_20E1F4B2C();
          break;
        case 16:
          v6 = v0;
          v7 = *(type metadata accessor for ContextProtoContextMetadata(0) + 76);
LABEL_20:
          v0 = v6;
          sub_20E3223B0();
          break;
        case 17:
          v3 = v0;
          v4 = *(type metadata accessor for ContextProtoContextMetadata(0) + 80);
LABEL_5:
          v0 = v3;
LABEL_6:
          sub_20E3223D0();
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E1F4734()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 28);
  type metadata accessor for ContextProtoConfidence(0);
  sub_20E21DA3C(&qword_27C8696D0, type metadata accessor for ContextProtoConfidence);
  return sub_20E322430();
}

uint64_t sub_20E1F47E8()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 32);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox);
  return sub_20E322430();
}

uint64_t sub_20E1F489C()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 52);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox);
  return sub_20E322430();
}

uint64_t sub_20E1F4950()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 56);
  sub_20E0639C0();
  return sub_20E322300();
}

uint64_t sub_20E1F49C4()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 60);
  type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  sub_20E21DA3C(&qword_27C869690, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E1F4A78()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 68);
  type metadata accessor for ContextProtoCGRect(0);
  sub_20E21DA3C(&qword_27C869810, type metadata accessor for ContextProtoCGRect);
  return sub_20E322430();
}

uint64_t sub_20E1F4B2C()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 72);
  type metadata accessor for ContextProtoCGRect(0);
  sub_20E21DA3C(&qword_27C869810, type metadata accessor for ContextProtoCGRect);
  return sub_20E322430();
}

uint64_t ContextProtoContextMetadata.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[2])
  {
    v8 = v3[1];
    result = sub_20E322540();
  }

  if (!v4)
  {
    if (v3[4])
    {
      v9 = v3[3];
      sub_20E322540();
    }

    sub_20E1F4E7C(v3, v7, a2, a3);
    if (*(*v3 + 16))
    {
      type metadata accessor for ContextProtoSurroundingText(0);
      sub_20E21DA3C(&qword_27C869458, type metadata accessor for ContextProtoSurroundingText);
      sub_20E322570();
    }

    sub_20E1F5098(v3, v7, a2, a3);
    sub_20E1F52B4(v3);
    sub_20E1F532C(v3, v7, a2, a3, type metadata accessor for ContextProtoContextMetadata);
    sub_20E1F53A8(v3);
    sub_20E1F5420(v3);
    sub_20E1F5498(v3, v7, a2, a3);
    sub_20E1F56B4(v3);
    sub_20E1F5740(v3, v7, a2, a3);
    sub_20E1F595C(v3);
    sub_20E1F59D4(v3, v7, a2, a3);
    sub_20E1F5BF0(v3, v7, a2, a3);
    sub_20E1F5E0C(v3);
    sub_20E1F5E84(v3);
    v10 = v3 + *(type metadata accessor for ContextProtoContextMetadata(0) + 84);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1F4E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BD0, &qword_20E323EB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoConfidence(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C863BD0, &qword_20E323EB8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BD0, &qword_20E323EB8);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoConfidence);
  sub_20E21DA3C(&qword_27C8696D0, type metadata accessor for ContextProtoConfidence);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoConfidence);
}

uint64_t sub_20E1F5098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BE8, &qword_20E323ED0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoBoundingBox(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_20E0486F4(a1 + *(v14 + 32), v8, &qword_27C863BE8, &qword_20E323ED0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BE8, &qword_20E323ED0);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoBoundingBox);
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoBoundingBox);
}

uint64_t sub_20E1F52B4(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322530();
  }

  return result;
}

uint64_t sub_20E1F532C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 40));
  if (v7[1])
  {
    v8 = *v7;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E1F53A8(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_20E3224C0();
  }

  return result;
}

uint64_t sub_20E1F5420(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return sub_20E3224C0();
  }

  return result;
}

uint64_t sub_20E1F5498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BE8, &qword_20E323ED0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoBoundingBox(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_20E0486F4(a1 + *(v14 + 52), v8, &qword_27C863BE8, &qword_20E323ED0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BE8, &qword_20E323ED0);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoBoundingBox);
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoBoundingBox);
}

uint64_t sub_20E1F56B4(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 56)) != 6)
  {
    v3 = *(a1 + *(result + 56));
    sub_20E0639C0();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E1F5740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BF0, &qword_20E323ED8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_20E0486F4(a1 + *(v14 + 60), v8, &qword_27C863BF0, &qword_20E323ED8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BF0, &qword_20E323ED8);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  sub_20E21DA3C(&qword_27C869690, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
}

uint64_t sub_20E1F595C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v3 = (a1 + *(result + 64));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E1F59D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BF8, &qword_20E323EE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoCGRect(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_20E0486F4(a1 + *(v14 + 68), v8, &qword_27C863BF8, &qword_20E323EE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BF8, &qword_20E323EE0);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoCGRect);
  sub_20E21DA3C(&qword_27C869810, type metadata accessor for ContextProtoCGRect);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_20E1F5BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BF8, &qword_20E323EE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoCGRect(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_20E0486F4(a1 + *(v14 + 72), v8, &qword_27C863BF8, &qword_20E323EE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BF8, &qword_20E323EE0);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoCGRect);
  sub_20E21DA3C(&qword_27C869810, type metadata accessor for ContextProtoCGRect);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_20E1F5E0C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v3 = (a1 + *(result + 76));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322530();
  }

  return result;
}

uint64_t sub_20E1F5E84(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v3 = (a1 + *(result + 80));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E1F5F48(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_20E322DE0();
  a1(0);
  sub_20E21DA3C(a2, a3);
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t sub_20E1F5FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 84);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1F6064(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 84);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_20E1F60D8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 84);
  return result;
}

uint64_t sub_20E1F612C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AE0, type metadata accessor for ContextProtoContextMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1F61CC()
{
  sub_20E21DA3C(&qword_27C869678, type metadata accessor for ContextProtoContextMetadata);

  return sub_20E322470();
}

uint64_t sub_20E1F6238()
{
  sub_20E21DA3C(&qword_27C869678, type metadata accessor for ContextProtoContextMetadata);

  return sub_20E322480();
}

uint64_t sub_20E1F62D4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869098);
  __swift_project_value_buffer(v0, qword_27C869098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtitle";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_20E3223D0();
    }
  }

  return result;
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.traverse<A>(visitor:)()
{
  if (v0[1])
  {
    v2 = *v0;
    result = sub_20E322540();
  }

  if (!v1)
  {
    if (v0[3])
    {
      v4 = v0[2];
      sub_20E322540();
    }

    v5 = v0 + *(type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1F6638@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  v2 = a2 + *(a1 + 24);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1F66AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AD8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1F674C()
{
  sub_20E21DA3C(&qword_27C869690, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);

  return sub_20E322470();
}

uint64_t sub_20E1F67B8()
{
  sub_20E21DA3C(&qword_27C869690, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);

  return sub_20E322480();
}

uint64_t sub_20E1F6854()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8690B0);
  __swift_project_value_buffer(v0, qword_27C8690B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "x_coordinate";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y_coordinate";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21870];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "height";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoBoundingBox.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_20E322340();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ContextProtoBoundingBox.traverse<A>(visitor:)()
{
  if ((v0[1] & 1) == 0)
  {
    v2 = *v0;
    result = sub_20E3224F0();
  }

  if (!v1)
  {
    if ((v0[3] & 1) == 0)
    {
      v4 = v0[2];
      sub_20E3224F0();
    }

    if ((v0[5] & 1) == 0)
    {
      v5 = v0[4];
      sub_20E3224F0();
    }

    if ((v0[7] & 1) == 0)
    {
      v6 = v0[6];
      sub_20E3224F0();
    }

    v7 = v0 + *(type metadata accessor for ContextProtoBoundingBox(0) + 32);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1F6CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 1;
  *(a2 + 8) = 0;
  *(a2 + 12) = 1;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  *(a2 + 24) = 0;
  *(a2 + 28) = 1;
  v2 = a2 + *(a1 + 32);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1F6D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AD0, type metadata accessor for ContextProtoBoundingBox);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1F6DEC()
{
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox);

  return sub_20E322470();
}

uint64_t sub_20E1F6E58()
{
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox);

  return sub_20E322480();
}

uint64_t sub_20E1F6EF4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8690C8);
  __swift_project_value_buffer(v0, qword_27C8690C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "on_screen_bounding_box";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoSurroundingText.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E3223D0();
    }

    else if (result == 2)
    {
      sub_20E1F7178();
    }
  }

  return result;
}

uint64_t sub_20E1F7178()
{
  v0 = *(type metadata accessor for ContextProtoSurroundingText(0) + 20);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox);
  return sub_20E322430();
}

uint64_t ContextProtoSurroundingText.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[1])
  {
    v8 = *v3;
    result = sub_20E322540();
  }

  if (!v4)
  {
    sub_20E1F72CC(v3, v7, a2, a3);
    v9 = v3 + *(type metadata accessor for ContextProtoSurroundingText(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1F72CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BE8, &qword_20E323ED0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoBoundingBox(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoSurroundingText(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863BE8, &qword_20E323ED0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BE8, &qword_20E323ED0);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoBoundingBox);
  sub_20E21DA3C(&qword_27C8696A8, type metadata accessor for ContextProtoBoundingBox);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoBoundingBox);
}

uint64_t sub_20E1F7534@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ContextProtoBoundingBox(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1F7600(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AC8, type metadata accessor for ContextProtoSurroundingText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1F76A0()
{
  sub_20E21DA3C(&qword_27C869458, type metadata accessor for ContextProtoSurroundingText);

  return sub_20E322470();
}

uint64_t sub_20E1F770C()
{
  sub_20E21DA3C(&qword_27C869458, type metadata accessor for ContextProtoSurroundingText);

  return sub_20E322480();
}

uint64_t sub_20E1F77A8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8690E0);
  __swift_project_value_buffer(v0, qword_27C8690E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "score";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bucket";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoConfidence.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E322350();
      }

      else if (result == 2)
      {
        sub_20E063774();
        sub_20E322310();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ContextProtoConfidence.traverse<A>(visitor:)()
{
  if (*v0 == 0.0 || (result = sub_20E3224F0(), !v1))
  {
    if (!*(v0 + 4) || (v4 = *(v0 + 4), sub_20E063774(), result = sub_20E3224D0(), !v1))
    {
      v3 = v0 + *(type metadata accessor for ContextProtoConfidence(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t static ContextProtoConfidence.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(type metadata accessor for ContextProtoConfidence(0) + 24);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E1F7C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_20E1F7CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AC0, type metadata accessor for ContextProtoConfidence);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1F7D44()
{
  sub_20E21DA3C(&qword_27C8696D0, type metadata accessor for ContextProtoConfidence);

  return sub_20E322470();
}

uint64_t sub_20E1F7DB0()
{
  sub_20E21DA3C(&qword_27C8696D0, type metadata accessor for ContextProtoConfidence);

  return sub_20E322480();
}

uint64_t sub_20E1F7E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v3 = *(a3 + 24);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E1F7EF8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8690F8);
  __swift_project_value_buffer(v0, qword_27C8690F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siriRequestContext";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "intelligenceCommand";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "appInFocusContext";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "onScreenUIText";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "appContext";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "nowPlayingMediaItem";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoStructuredContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_20E1F943C(v5, a1, a2, a3);
          break;
        case 5:
          sub_20E1F99F8(v5, a1, a2, a3);
          break;
        case 6:
          sub_20E1F9FB4(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_20E1F8314(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E1F88C4(v5, a1, a2, a3);
          break;
        case 3:
          sub_20E1F8E80(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E1F8314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868758, &unk_20E33C210);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863C00, &qword_20E323EE8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863C00, &qword_20E323EE8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E21DAE4(v14, v22, type metadata accessor for ContextProtoStructuredContextKind);
    sub_20E21DAE4(v22, v20, type metadata accessor for ContextProtoStructuredContextKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E21DA84(v20, type metadata accessor for ContextProtoStructuredContextKind);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C868758, &unk_20E33C210);
      v35 = v43;
      sub_20E21DAE4(v20, v43, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
      sub_20E21DAE4(v35, v28, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E21DA3C(&qword_27C868770, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868758, &unk_20E33C210);
  }

  sub_20E0486F4(v28, v36, &qword_27C868758, &unk_20E33C210);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868758, &unk_20E33C210);
    return sub_20E04875C(v36, &qword_27C868758, &unk_20E33C210);
  }

  else
  {
    v39 = v44;
    sub_20E21DAE4(v36, v44, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868758, &unk_20E33C210);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863C00, &qword_20E323EE8);
    sub_20E21DAE4(v39, v40, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E1F88C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B38, &qword_20E345E08);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863C00, &qword_20E323EE8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863C00, &qword_20E323EE8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E21DAE4(v14, v22, type metadata accessor for ContextProtoStructuredContextKind);
    sub_20E21DAE4(v22, v20, type metadata accessor for ContextProtoStructuredContextKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C869B38, &qword_20E345E08);
      v35 = v44;
      sub_20E21DAE4(v20, v44, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
      sub_20E21DAE4(v35, v28, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E21DA84(v20, type metadata accessor for ContextProtoStructuredContextKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E21DA3C(&qword_27C869780, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C869B38, &qword_20E345E08);
  }

  sub_20E0486F4(v28, v36, &qword_27C869B38, &qword_20E345E08);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C869B38, &qword_20E345E08);
    return sub_20E04875C(v36, &qword_27C869B38, &qword_20E345E08);
  }

  else
  {
    v39 = v43;
    sub_20E21DAE4(v36, v43, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C869B38, &qword_20E345E08);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863C00, &qword_20E323EE8);
    sub_20E21DAE4(v39, v40, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E1F8E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B40, &qword_20E345E10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863C00, &qword_20E323EE8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863C00, &qword_20E323EE8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E21DAE4(v14, v22, type metadata accessor for ContextProtoStructuredContextKind);
    sub_20E21DAE4(v22, v20, type metadata accessor for ContextProtoStructuredContextKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C869B40, &qword_20E345E10);
      v35 = v44;
      sub_20E21DAE4(v20, v44, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
      sub_20E21DAE4(v35, v28, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E21DA84(v20, type metadata accessor for ContextProtoStructuredContextKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E21DA3C(&qword_27C869798, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C869B40, &qword_20E345E10);
  }

  sub_20E0486F4(v28, v36, &qword_27C869B40, &qword_20E345E10);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C869B40, &qword_20E345E10);
    return sub_20E04875C(v36, &qword_27C869B40, &qword_20E345E10);
  }

  else
  {
    v39 = v43;
    sub_20E21DAE4(v36, v43, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C869B40, &qword_20E345E10);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863C00, &qword_20E323EE8);
    sub_20E21DAE4(v39, v40, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E1F943C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B48, &qword_20E345E18);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863C00, &qword_20E323EE8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863C00, &qword_20E323EE8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E21DAE4(v14, v22, type metadata accessor for ContextProtoStructuredContextKind);
    sub_20E21DAE4(v22, v20, type metadata accessor for ContextProtoStructuredContextKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C869B48, &qword_20E345E18);
      v35 = v44;
      sub_20E21DAE4(v20, v44, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
      sub_20E21DAE4(v35, v28, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E21DA84(v20, type metadata accessor for ContextProtoStructuredContextKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E21DA3C(&qword_27C8697C8, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C869B48, &qword_20E345E18);
  }

  sub_20E0486F4(v28, v36, &qword_27C869B48, &qword_20E345E18);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C869B48, &qword_20E345E18);
    return sub_20E04875C(v36, &qword_27C869B48, &qword_20E345E18);
  }

  else
  {
    v39 = v43;
    sub_20E21DAE4(v36, v43, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C869B48, &qword_20E345E18);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863C00, &qword_20E323EE8);
    sub_20E21DAE4(v39, v40, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E1F99F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ContextProtoStructedContextAppContext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B50, &qword_20E345E20);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863C00, &qword_20E323EE8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863C00, &qword_20E323EE8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E21DAE4(v14, v22, type metadata accessor for ContextProtoStructuredContextKind);
    sub_20E21DAE4(v22, v20, type metadata accessor for ContextProtoStructuredContextKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v28, &qword_27C869B50, &qword_20E345E20);
      v35 = v44;
      sub_20E21DAE4(v20, v44, type metadata accessor for ContextProtoStructedContextAppContext);
      sub_20E21DAE4(v35, v28, type metadata accessor for ContextProtoStructedContextAppContext);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E21DA84(v20, type metadata accessor for ContextProtoStructuredContextKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E21DA3C(&qword_27C8697B0, type metadata accessor for ContextProtoStructedContextAppContext);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C869B50, &qword_20E345E20);
  }

  sub_20E0486F4(v28, v36, &qword_27C869B50, &qword_20E345E20);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C869B50, &qword_20E345E20);
    return sub_20E04875C(v36, &qword_27C869B50, &qword_20E345E20);
  }

  else
  {
    v39 = v43;
    sub_20E21DAE4(v36, v43, type metadata accessor for ContextProtoStructedContextAppContext);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C869B50, &qword_20E345E20);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863C00, &qword_20E323EE8);
    sub_20E21DAE4(v39, v40, type metadata accessor for ContextProtoStructedContextAppContext);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E1F9FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B58, &qword_20E345E28);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863C00, &qword_20E323EE8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863C00, &qword_20E323EE8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E21DAE4(v14, v22, type metadata accessor for ContextProtoStructuredContextKind);
    sub_20E21DAE4(v22, v20, type metadata accessor for ContextProtoStructuredContextKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v28, &qword_27C869B58, &qword_20E345E28);
      v35 = v44;
      sub_20E21DAE4(v20, v44, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
      sub_20E21DAE4(v35, v28, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E21DA84(v20, type metadata accessor for ContextProtoStructuredContextKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E21DA3C(&qword_27C869700, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C869B58, &qword_20E345E28);
  }

  sub_20E0486F4(v28, v36, &qword_27C869B58, &qword_20E345E28);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C869B58, &qword_20E345E28);
    return sub_20E04875C(v36, &qword_27C869B58, &qword_20E345E28);
  }

  else
  {
    v39 = v43;
    sub_20E21DAE4(v36, v43, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C869B58, &qword_20E345E28);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863C00, &qword_20E323EE8);
    sub_20E21DAE4(v39, v40, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ContextProtoStructuredContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C863C00, &qword_20E323EE8);
  v12 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_14;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_20E1FAE30(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_20E1FB068(v3, a1, a2, a3);
    }

    else
    {
      sub_20E1FB2A0(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E1FA9C0(v3, a1, a2, a3);
    }

    else
    {
      sub_20E1FABF8(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_20E1FA78C(v3, a1, a2, a3);
  }

  result = sub_20E21DA84(v11, type metadata accessor for ContextProtoStructuredContextKind);
  if (!v4)
  {
LABEL_14:
    v15 = v3 + *(type metadata accessor for ContextProtoStructuredContext(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1FA78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863C00, &qword_20E323EE8);
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863C00, &qword_20E323EE8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E21DAE4(v8, v12, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
    sub_20E21DA3C(&qword_27C868770, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
    sub_20E322580();
    return sub_20E21DA84(v12, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  }

  result = sub_20E21DA84(v8, type metadata accessor for ContextProtoStructuredContextKind);
  __break(1u);
  return result;
}

uint64_t sub_20E1FA9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863C00, &qword_20E323EE8);
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863C00, &qword_20E323EE8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E21DAE4(v8, v12, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
    sub_20E21DA3C(&qword_27C869780, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
    sub_20E322580();
    return sub_20E21DA84(v12, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
  }

  result = sub_20E21DA84(v8, type metadata accessor for ContextProtoStructuredContextKind);
  __break(1u);
  return result;
}

uint64_t sub_20E1FABF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863C00, &qword_20E323EE8);
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863C00, &qword_20E323EE8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E21DAE4(v8, v12, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
    sub_20E21DA3C(&qword_27C869798, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
    sub_20E322580();
    return sub_20E21DA84(v12, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
  }

  result = sub_20E21DA84(v8, type metadata accessor for ContextProtoStructuredContextKind);
  __break(1u);
  return result;
}

uint64_t sub_20E1FAE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863C00, &qword_20E323EE8);
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863C00, &qword_20E323EE8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E21DAE4(v8, v12, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
    sub_20E21DA3C(&qword_27C8697C8, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
    sub_20E322580();
    return sub_20E21DA84(v12, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
  }

  result = sub_20E21DA84(v8, type metadata accessor for ContextProtoStructuredContextKind);
  __break(1u);
  return result;
}

uint64_t sub_20E1FB068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoStructedContextAppContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863C00, &qword_20E323EE8);
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863C00, &qword_20E323EE8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E21DAE4(v8, v12, type metadata accessor for ContextProtoStructedContextAppContext);
    sub_20E21DA3C(&qword_27C8697B0, type metadata accessor for ContextProtoStructedContextAppContext);
    sub_20E322580();
    return sub_20E21DA84(v12, type metadata accessor for ContextProtoStructedContextAppContext);
  }

  result = sub_20E21DA84(v8, type metadata accessor for ContextProtoStructuredContextKind);
  __break(1u);
  return result;
}

uint64_t sub_20E1FB2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863C00, &qword_20E323EE8);
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863C00, &qword_20E323EE8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E21DAE4(v8, v12, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
    sub_20E21DA3C(&qword_27C869700, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
    sub_20E322580();
    return sub_20E21DA84(v12, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
  }

  result = sub_20E21DA84(v8, type metadata accessor for ContextProtoStructuredContextKind);
  __break(1u);
  return result;
}

uint64_t sub_20E1FB588(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AB8, type metadata accessor for ContextProtoStructuredContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1FB628()
{
  sub_20E21DA3C(&qword_27C8696E8, type metadata accessor for ContextProtoStructuredContext);

  return sub_20E322470();
}

uint64_t sub_20E1FB694()
{
  sub_20E21DA3C(&qword_27C8696E8, type metadata accessor for ContextProtoStructuredContext);

  return sub_20E322480();
}

uint64_t sub_20E1FB730()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869110);
  __swift_project_value_buffer(v0, qword_27C869110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20E3421B0;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "appBundleId";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "contentIdentifier";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "brandIdentifier";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "iTunesStoreIdentifier";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "iTunesStoreAlbumIdentifier";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "iTunesStoreArtistIdentifier";
  *(v17 + 1) = 27;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "playbackState";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "mediaType";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "mediaSubType";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "albumName";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "trackArtistName";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "currentlyPlayingSongAdamId";
  *(v30 + 1) = 26;
  v30[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_20E3223E0();
          break;
        case 2:
        case 3:
        case 10:
        case 11:
        case 12:
        case 13:
          sub_20E3223D0();
          break;
        case 4:
        case 5:
        case 6:
          sub_20E322380();
          break;
        case 7:
          v3 = v0;
          sub_20E063918();
          goto LABEL_13;
        case 8:
          v3 = v0;
          sub_20E0638C4();
          goto LABEL_13;
        case 9:
          v3 = v0;
          sub_20E063870();
LABEL_13:
          v0 = v3;
          sub_20E322300();
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.traverse<A>(visitor:)()
{
  result = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_20E322540(), !v1))
  {
    if (*(v0 + 24))
    {
      v5 = *(v0 + 16);
      result = sub_20E322540();
    }

    if (!v1)
    {
      if (*(v0 + 40))
      {
        v6 = *(v0 + 32);
        sub_20E322540();
      }

      if ((*(v0 + 56) & 1) == 0)
      {
        v7 = *(v0 + 48);
        sub_20E322510();
      }

      if ((*(v0 + 72) & 1) == 0)
      {
        v8 = *(v0 + 64);
        sub_20E322510();
      }

      if ((*(v0 + 88) & 1) == 0)
      {
        v9 = *(v0 + 80);
        sub_20E322510();
      }

      sub_20E1FBF70(v0);
      sub_20E1FBFE8(v0);
      sub_20E1FC060(v0);
      if (*(v0 + 104))
      {
        v10 = *(v0 + 96);
        sub_20E322540();
      }

      if (*(v0 + 120))
      {
        v11 = *(v0 + 112);
        sub_20E322540();
      }

      if (*(v0 + 136))
      {
        v12 = *(v0 + 128);
        sub_20E322540();
      }

      if (*(v0 + 152))
      {
        v13 = *(v0 + 144);
        sub_20E322540();
      }

      v14 = v0 + *(type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0) + 68);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E1FBF70(uint64_t result)
{
  if (*(result + 89) != 7)
  {
    sub_20E063918();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E1FBFE8(uint64_t result)
{
  if (*(result + 90) != 4)
  {
    sub_20E0638C4();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E1FC060(uint64_t result)
{
  if (*(result + 91) != 9)
  {
    sub_20E063870();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E1FC140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1FC1B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 68);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_20E1FC228(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 68);
  return result;
}

uint64_t sub_20E1FC27C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AB0, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1FC31C()
{
  sub_20E21DA3C(&qword_27C869700, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);

  return sub_20E322470();
}

uint64_t sub_20E1FC388()
{
  sub_20E21DA3C(&qword_27C869700, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);

  return sub_20E322480();
}

uint64_t sub_20E1FC424()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869128);
  __swift_project_value_buffer(v0, qword_27C869128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20E3421C0;
  v4 = v51 + v3;
  v5 = v51 + v3 + v1[14];
  *(v51 + v3) = 1;
  *v5 = "sessionID";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v51 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "requestID";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v51 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "inputOrigin";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v51 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "responseMode";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v51 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "isEyesFree";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v51 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "isMultiUser";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v51 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "isVoiceTriggerEnabled";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v51 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "isTextToSpeechEnabled";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = v51 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "isTriggerlessFollowup";
  *(v22 + 8) = 21;
  *(v22 + 16) = 2;
  v8();
  v23 = (v51 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "deviceRestrictions";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v8();
  v25 = (v51 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "bargeInModes";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v8();
  v27 = (v51 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "identifiedUser";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v51 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "encodedLocation";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  v31 = (v51 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "countryCode";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v8();
  v33 = (v51 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "siriLocale";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  v35 = (v51 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "contentRestrictions";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v8();
  v37 = v51 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "uiScale";
  *(v37 + 8) = 7;
  *(v37 + 16) = 2;
  v8();
  v38 = (v51 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "temperatureUnit";
  *(v39 + 1) = 15;
  v39[16] = 2;
  v8();
  v40 = (v51 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "allowUserGeneratedContent";
  *(v41 + 1) = 25;
  v41[16] = 2;
  v8();
  v42 = (v51 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "censorSpeech";
  *(v43 + 1) = 12;
  v43[16] = 2;
  v8();
  v44 = (v51 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "meCard";
  *(v45 + 1) = 6;
  v45[16] = 2;
  v8();
  v46 = (v51 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "deviceIdiom";
  *(v47 + 1) = 11;
  v47[16] = 2;
  v8();
  v48 = (v51 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "didPSCFire";
  *(v49 + 1) = 10;
  v49[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        goto LABEL_18;
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        goto LABEL_4;
      case 10:
      case 11:
        sub_20E3223A0();
        continue;
      case 12:
        sub_20E1FCD78();
        continue;
      case 13:
        v6 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 64);
        sub_20E322320();
        continue;
      case 14:
        v8 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 68);
        goto LABEL_17;
      case 15:
        v5 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 72);
        goto LABEL_17;
      case 16:
        sub_20E1FCE2C();
        continue;
      case 17:
        v4 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 80);
        sub_20E3223B0();
        continue;
      case 18:
        v7 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 84);
LABEL_17:
        v0 = 0;
LABEL_18:
        sub_20E3223D0();
        continue;
      case 19:
        v1 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 88);
        goto LABEL_3;
      case 20:
        v10 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 92);
        goto LABEL_3;
      case 21:
        sub_20E1FCEE0();
        continue;
      case 22:
        sub_20E1FCF94();
        continue;
      case 23:
        v9 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 104);
LABEL_3:
        v0 = 0;
LABEL_4:
        sub_20E3222E0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_20E1FCD78()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 60);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  sub_20E21DA3C(&qword_27C869740, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  return sub_20E322430();
}

uint64_t sub_20E1FCE2C()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 76);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  sub_20E21DA3C(&qword_27C869728, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  return sub_20E322430();
}

uint64_t sub_20E1FCEE0()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 96);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  sub_20E21DA3C(&qword_27C869758, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
  return sub_20E322430();
}

uint64_t sub_20E1FCF94()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 100);
  sub_20E0637C8();
  return sub_20E322300();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (*(v3 + 24))
  {
    v8 = *(v3 + 16);
    result = sub_20E322540();
  }

  if (!v4)
  {
    if (*(v3 + 40))
    {
      v9 = *(v3 + 32);
      sub_20E322540();
    }

    if (*(v3 + 56))
    {
      v10 = *(v3 + 48);
      sub_20E322540();
    }

    if (*(v3 + 72))
    {
      v11 = *(v3 + 64);
      sub_20E322540();
    }

    if (*(v3 + 80) != 2)
    {
      sub_20E3224C0();
    }

    if (*(v3 + 81) != 2)
    {
      sub_20E3224C0();
    }

    if (*(v3 + 82) != 2)
    {
      sub_20E3224C0();
    }

    if (*(v3 + 83) != 2)
    {
      sub_20E3224C0();
    }

    if (*(v3 + 84) != 2)
    {
      sub_20E3224C0();
    }

    if (*(*v3 + 16))
    {
      sub_20E322520();
    }

    if (*(*(v3 + 8) + 16))
    {
      sub_20E322520();
    }

    sub_20E1FD338(v3, v7, a2, a3);
    sub_20E1FD554(v3);
    sub_20E1FD5F4(v3);
    sub_20E1FD66C(v3);
    sub_20E1FD6E4(v3, v7, a2, a3);
    sub_20E1FD900(v3);
    sub_20E1FD978(v3);
    sub_20E1FD9F0(v3);
    sub_20E1FDA68(v3);
    sub_20E1FDAE0(v3, v7, a2, a3);
    sub_20E1FDCFC(v3);
    sub_20E1FDD88(v3);
    v12 = v3 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 108);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1FD338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C08, &qword_20E323EF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_20E0486F4(a1 + *(v14 + 60), v8, &qword_27C863C08, &qword_20E323EF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C08, &qword_20E323EF0);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  sub_20E21DA3C(&qword_27C869740, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
}

uint64_t sub_20E1FD554(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v3 = a1 + *(result + 64);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_20E05E834(*v3, *(v3 + 8));
    sub_20E3224E0();
    return sub_20E047D10(v5, v4);
  }

  return result;
}

uint64_t sub_20E1FD5F4(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v3 = (a1 + *(result + 68));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E1FD66C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v3 = (a1 + *(result + 72));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E1FD6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C10, &qword_20E323EF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_20E0486F4(a1 + *(v14 + 76), v8, &qword_27C863C10, &qword_20E323EF8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C10, &qword_20E323EF8);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_20E21DA3C(&qword_27C869728, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
}

uint64_t sub_20E1FD900(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v3 = (a1 + *(result + 80));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322530();
  }

  return result;
}

uint64_t sub_20E1FD978(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v3 = (a1 + *(result + 84));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E1FD9F0(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 88)) != 2)
  {
    return sub_20E3224C0();
  }

  return result;
}

uint64_t sub_20E1FDA68(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 92)) != 2)
  {
    return sub_20E3224C0();
  }

  return result;
}

uint64_t sub_20E1FDAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C18, &qword_20E323F00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_20E0486F4(a1 + *(v14 + 96), v8, &qword_27C863C18, &qword_20E323F00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C18, &qword_20E323F00);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
  sub_20E21DA3C(&qword_27C869758, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
}

uint64_t sub_20E1FDCFC(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 100)) != 12)
  {
    v3 = *(a1 + *(result + 100));
    sub_20E0637C8();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E1FDD88(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 104)) != 2)
  {
    return sub_20E3224C0();
  }

  return result;
}

uint64_t sub_20E1FDE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 108);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1FDEDC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 108);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_20E1FDF50(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 108);
  return result;
}

uint64_t sub_20E1FDFA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AA8, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1FE044()
{
  sub_20E21DA3C(&qword_27C868770, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);

  return sub_20E322470();
}

uint64_t sub_20E1FE0B0()
{
  sub_20E21DA3C(&qword_27C868770, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);

  return sub_20E322480();
}

uint64_t sub_20E1FE14C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869140);
  __swift_project_value_buffer(v0, qword_27C869140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "appRestriction";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "countryCode";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "movieRestriction";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tvRestriction";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_20E322360();
      }
    }

    else
    {
      if (result == 1)
      {
        goto LABEL_2;
      }

      if (result == 2)
      {
        sub_20E3223D0();
      }
    }
  }
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.traverse<A>(visitor:)()
{
  if ((v0[1] & 1) == 0)
  {
    v2 = *v0;
    result = sub_20E322500();
  }

  if (!v1)
  {
    if (*(v0 + 2))
    {
      v4 = *(v0 + 1);
      sub_20E322540();
    }

    if ((v0[7] & 1) == 0)
    {
      v5 = v0[6];
      sub_20E322500();
    }

    if ((v0[9] & 1) == 0)
    {
      v6 = v0[8];
      sub_20E322500();
    }

    v7 = v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0) + 32);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1FE5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 1;
  *(a2 + 32) = 0;
  *(a2 + 36) = 1;
  v2 = a2 + *(a1 + 32);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1FE640(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869AA0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1FE6E0()
{
  sub_20E21DA3C(&qword_27C869728, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);

  return sub_20E322470();
}

uint64_t sub_20E1FE74C()
{
  sub_20E21DA3C(&qword_27C869728, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);

  return sub_20E322480();
}

uint64_t sub_20E1FE7E8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869158);
  __swift_project_value_buffer(v0, qword_27C869158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "userID";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isOnlyUserInHome";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "classification";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E06381C();
          sub_20E322300();
          break;
        case 2:
          sub_20E3222E0();
          break;
        case 1:
          sub_20E3223D0();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.traverse<A>(visitor:)()
{
  if (*(v0 + 8))
  {
    v2 = *v0;
    result = sub_20E322540();
  }

  if (!v1)
  {
    if (*(v0 + 16) != 2)
    {
      sub_20E3224C0();
    }

    sub_20E1FEBC4(v0);
    v4 = v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0) + 28);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1FEBC4(uint64_t result)
{
  if (*(result + 17) != 5)
  {
    sub_20E06381C();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E1FEC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1282;
  v2 = a2 + *(a1 + 28);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1FED00(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A98, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1FEDA0()
{
  sub_20E21DA3C(&qword_27C869740, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);

  return sub_20E322470();
}

uint64_t sub_20E1FEE0C()
{
  sub_20E21DA3C(&qword_27C869740, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);

  return sub_20E322480();
}

uint64_t sub_20E1FEEA8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869170);
  __swift_project_value_buffer(v0, qword_27C869170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20E3262C0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "givenName";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "middleName";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "familyName";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "nickName";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "fullName";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "addresses";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
LABEL_4:
          sub_20E3223D0();
          goto LABEL_5;
        }

        if (result == 6)
        {
          type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
          sub_20E21DA3C(&qword_27C8694B0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);
          sub_20E322420();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_4;
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.traverse<A>(visitor:)()
{
  if (v0[2])
  {
    v2 = v0[1];
    result = sub_20E322540();
  }

  if (!v1)
  {
    if (v0[4])
    {
      v4 = v0[3];
      sub_20E322540();
    }

    if (v0[6])
    {
      v5 = v0[5];
      sub_20E322540();
    }

    if (v0[8])
    {
      v6 = v0[7];
      sub_20E322540();
    }

    if (v0[10])
    {
      v7 = v0[9];
      sub_20E322540();
    }

    if (*(*v0 + 16))
    {
      type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
      sub_20E21DA3C(&qword_27C8694B0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);
      sub_20E322570();
    }

    v8 = v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0) + 40);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1FF4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v3 = a2 + *(a1 + 40);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E1FF554(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A90, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1FF5F4()
{
  sub_20E21DA3C(&qword_27C869758, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);

  return sub_20E322470();
}

uint64_t sub_20E1FF660()
{
  sub_20E21DA3C(&qword_27C869758, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);

  return sub_20E322480();
}

uint64_t sub_20E1FF6FC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869188);
  __swift_project_value_buffer(v0, qword_27C869188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20E3262C0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "label";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "street";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "city";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "state";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "postalCode";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "countryCode";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5 || result == 6)
        {
LABEL_11:
          sub_20E3223D0();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_11;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.traverse<A>(visitor:)()
{
  if (v0[1])
  {
    v2 = *v0;
    result = sub_20E322540();
  }

  if (!v1)
  {
    if (v0[3])
    {
      v4 = v0[2];
      sub_20E322540();
    }

    if (v0[5])
    {
      v5 = v0[4];
      sub_20E322540();
    }

    if (v0[7])
    {
      v6 = v0[6];
      sub_20E322540();
    }

    if (v0[9])
    {
      v7 = v0[8];
      sub_20E322540();
    }

    if (v0[11])
    {
      v8 = v0[10];
      sub_20E322540();
    }

    v9 = v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0) + 40);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1FFC38@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v2 = a2 + *(a1 + 40);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1FFCB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A88, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1FFD54()
{
  sub_20E21DA3C(&qword_27C8694B0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);

  return sub_20E322470();
}

uint64_t sub_20E1FFDC0()
{
  sub_20E21DA3C(&qword_27C8694B0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);

  return sub_20E322480();
}

uint64_t sub_20E1FFE5C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8691A0);
  __swift_project_value_buffer(v0, qword_27C8691A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "standaloneTitle";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "embeddingDescription";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "isDisabled";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "menuHierarchyComponents";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          goto LABEL_2;
        case 5:
          sub_20E3222F0();
          break;
        case 6:
          sub_20E3223A0();
          break;
      }
    }

    else if (result == 1)
    {
      sub_20E3223E0();
    }

    else if (result == 2 || result == 3)
    {
LABEL_2:
      sub_20E3223D0();
    }
  }
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.traverse<A>(visitor:)()
{
  result = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_20E322540(), !v1))
  {
    if (*(v0 + 40))
    {
      v5 = *(v0 + 32);
      result = sub_20E322540();
    }

    if (!v1)
    {
      if (*(v0 + 56))
      {
        v6 = *(v0 + 48);
        sub_20E322540();
      }

      if (*(v0 + 72))
      {
        v7 = *(v0 + 64);
        sub_20E322540();
      }

      if (*(v0 + 16) == 1)
      {
        sub_20E3224C0();
      }

      if (*(*(v0 + 24) + 16))
      {
        sub_20E322520();
      }

      v8 = v0 + *(type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0) + 40);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2003D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 32) = 0u;
  v3 = a2 + *(a1 + 40);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E200474(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A80, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E200514()
{
  sub_20E21DA3C(&qword_27C869780, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);

  return sub_20E322470();
}

uint64_t sub_20E200580()
{
  sub_20E21DA3C(&qword_27C869780, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);

  return sub_20E322480();
}

uint64_t sub_20E20061C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8691B8);
  __swift_project_value_buffer(v0, qword_27C8691B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleID";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "appName";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "category";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoStructedContextAppInFocusContext.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_20E3223D0();
    }

    else if (result == 1)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t ContextProtoStructedContextAppInFocusContext.traverse<A>(visitor:)()
{
  result = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_20E322540(), !v1))
  {
    if (v0[3])
    {
      v5 = v0[2];
      result = sub_20E322540();
    }

    if (!v1)
    {
      if (v0[5])
      {
        v6 = v0[4];
        sub_20E322540();
      }

      v7 = v0 + *(type metadata accessor for ContextProtoStructedContextAppInFocusContext(0) + 28);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E200A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v3 = a2 + *(a1 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E200AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A78, type metadata accessor for ContextProtoStructedContextAppInFocusContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E200B40()
{
  sub_20E21DA3C(&qword_27C869798, type metadata accessor for ContextProtoStructedContextAppInFocusContext);

  return sub_20E322470();
}

uint64_t sub_20E200BAC()
{
  sub_20E21DA3C(&qword_27C869798, type metadata accessor for ContextProtoStructedContextAppInFocusContext);

  return sub_20E322480();
}

uint64_t sub_20E200C48()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8691D0);
  __swift_project_value_buffer(v0, qword_27C8691D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleID";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "appName";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "category";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isActive";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoStructedContextAppContext.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        sub_20E3222F0();
      }
    }

    else if (result == 1)
    {
      sub_20E3223E0();
    }

    else if (result == 2)
    {
LABEL_12:
      sub_20E3223D0();
    }
  }
}

uint64_t ContextProtoStructedContextAppContext.traverse<A>(visitor:)()
{
  result = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_20E322540(), !v1))
  {
    if (*(v0 + 32))
    {
      v5 = *(v0 + 24);
      result = sub_20E322540();
    }

    if (!v1)
    {
      if (*(v0 + 48))
      {
        v6 = *(v0 + 40);
        sub_20E322540();
      }

      if (*(v0 + 16) == 1)
      {
        sub_20E3224C0();
      }

      v7 = v0 + *(type metadata accessor for ContextProtoStructedContextAppContext(0) + 32);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E201118(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A70, type metadata accessor for ContextProtoStructedContextAppContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2011B8()
{
  sub_20E21DA3C(&qword_27C8697B0, type metadata accessor for ContextProtoStructedContextAppContext);

  return sub_20E322470();
}

uint64_t sub_20E201224()
{
  sub_20E21DA3C(&qword_27C8697B0, type metadata accessor for ContextProtoStructedContextAppContext);

  return sub_20E322480();
}

uint64_t sub_20E2012C0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8691E8);
  __swift_project_value_buffer(v0, qword_27C8691E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "boundingBox";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "uiMetadata";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fractionVisible";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoStructuredContextOnScreenUIText.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_20E2016D8();
      }

      else if (result == 4)
      {
        v3 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0) + 28);
        sub_20E3223B0();
      }
    }

    else if (result == 1)
    {
      sub_20E3223E0();
    }

    else if (result == 2)
    {
      sub_20E201624();
    }
  }

  return result;
}

uint64_t sub_20E201624()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0) + 20);
  type metadata accessor for ContextProtoCGRect(0);
  sub_20E21DA3C(&qword_27C869810, type metadata accessor for ContextProtoCGRect);
  return sub_20E322430();
}

uint64_t sub_20E2016D8()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0) + 24);
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  sub_20E21DA3C(&qword_27C8697E0, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  return sub_20E322430();
}

uint64_t ContextProtoStructuredContextOnScreenUIText.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_20E322540(), !v4))
  {
    result = sub_20E201868(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E201A84(v3, a1, a2, a3);
      sub_20E201CA0(v3);
      v12 = v3 + *(type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0) + 32);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E201868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BF8, &qword_20E323EE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoCGRect(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863BF8, &qword_20E323EE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BF8, &qword_20E323EE0);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoCGRect);
  sub_20E21DA3C(&qword_27C869810, type metadata accessor for ContextProtoCGRect);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_20E201A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C20, &qword_20E323F08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C863C20, &qword_20E323F08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C20, &qword_20E323F08);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  sub_20E21DA3C(&qword_27C8697E0, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
}

uint64_t sub_20E201CA0(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322530();
  }

  return result;
}

uint64_t sub_20E201D60@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = &a2[a1[7]];
  *v9 = 0;
  v9[8] = 1;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E201E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A68, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E201F24()
{
  sub_20E21DA3C(&qword_27C8697C8, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);

  return sub_20E322470();
}

uint64_t sub_20E201F90()
{
  sub_20E21DA3C(&qword_27C8697C8, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);

  return sub_20E322480();
}

uint64_t sub_20E202108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C28, &qword_20E323F10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863C28, &qword_20E323F10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C28, &qword_20E323F10);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  sub_20E21DA3C(&qword_27C8697F8, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
}

uint64_t sub_20E2023C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A60, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E202468()
{
  sub_20E21DA3C(&qword_27C8697E0, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);

  return sub_20E322470();
}

uint64_t sub_20E2024D4()
{
  sub_20E21DA3C(&qword_27C8697E0, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);

  return sub_20E322480();
}

uint64_t sub_20E202570()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869218);
  __swift_project_value_buffer(v0, qword_27C869218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "isActive";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "boundingBox";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "fractionVisible";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "appBundleId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 24);
        sub_20E3223B0();
      }

      else if (result == 4)
      {
        v4 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 28);
        sub_20E3223D0();
      }
    }

    else if (result == 1)
    {
      sub_20E3222F0();
    }

    else if (result == 2)
    {
      sub_20E2028E4();
    }
  }

  return result;
}

uint64_t sub_20E2028E4()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 20);
  type metadata accessor for ContextProtoCGRect(0);
  sub_20E21DA3C(&qword_27C869810, type metadata accessor for ContextProtoCGRect);
  return sub_20E322430();
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_20E3224C0(), !v4))
  {
    result = sub_20E202A6C(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E202C88(v3);
      sub_20E202D00(v3);
      v9 = &v3[*(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 32)];
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E202A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BF8, &qword_20E323EE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoCGRect(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863BF8, &qword_20E323EE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BF8, &qword_20E323EE0);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoCGRect);
  sub_20E21DA3C(&qword_27C869810, type metadata accessor for ContextProtoCGRect);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_20E202C88(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322530();
  }

  return result;
}

uint64_t sub_20E202D00(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E202DC4@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = &a2[a1[6]];
  *v7 = 0;
  v7[8] = 1;
  v8 = &a2[v6];
  *v8 = 0;
  v8[1] = 0;
  v9 = &a2[a1[8]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E202EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A58, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E202F4C()
{
  sub_20E21DA3C(&qword_27C8697F8, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);

  return sub_20E322470();
}

uint64_t sub_20E202FB8()
{
  sub_20E21DA3C(&qword_27C8697F8, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);

  return sub_20E322480();
}

uint64_t sub_20E20305C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869230);
  __swift_project_value_buffer(v0, qword_27C869230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "origin";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "size";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoCGRect.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ContextProtoCGPoint(0);
        sub_20E21DA3C(&qword_27C869828, type metadata accessor for ContextProtoCGPoint);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E203348();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E203348()
{
  v0 = *(type metadata accessor for ContextProtoCGRect(0) + 20);
  type metadata accessor for ContextProtoCGSize(0);
  sub_20E21DA3C(&qword_27C869840, type metadata accessor for ContextProtoCGSize);
  return sub_20E322430();
}

uint64_t sub_20E203450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C30, &qword_20E323F18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoCGPoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863C30, &qword_20E323F18);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C30, &qword_20E323F18);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoCGPoint);
  sub_20E21DA3C(&qword_27C869828, type metadata accessor for ContextProtoCGPoint);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoCGPoint);
}

uint64_t sub_20E203660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C38, &unk_20E323F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoCGSize(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoCGRect(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863C38, &unk_20E323F20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C38, &unk_20E323F20);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoCGSize);
  sub_20E21DA3C(&qword_27C869840, type metadata accessor for ContextProtoCGSize);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoCGSize);
}

uint64_t sub_20E203948(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A50, type metadata accessor for ContextProtoCGRect);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2039E8()
{
  sub_20E21DA3C(&qword_27C869810, type metadata accessor for ContextProtoCGRect);

  return sub_20E322470();
}

uint64_t sub_20E203A54()
{
  sub_20E21DA3C(&qword_27C869810, type metadata accessor for ContextProtoCGRect);

  return sub_20E322480();
}

uint64_t sub_20E203AF8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869248);
  __swift_project_value_buffer(v0, qword_27C869248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 1) = 1;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E203DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A48, type metadata accessor for ContextProtoCGPoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E203E48()
{
  sub_20E21DA3C(&qword_27C869828, type metadata accessor for ContextProtoCGPoint);

  return sub_20E322470();
}

uint64_t sub_20E203EB4()
{
  sub_20E21DA3C(&qword_27C869828, type metadata accessor for ContextProtoCGPoint);

  return sub_20E322480();
}

uint64_t sub_20E203F54()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869260);
  __swift_project_value_buffer(v0, qword_27C869260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E204158()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_20E3223C0();
    }
  }

  return result;
}

uint64_t sub_20E204204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*v4 == 0.0 || (result = sub_20E322530(), !v5))
  {
    if (v4[1] == 0.0 || (result = sub_20E322530(), !v5))
    {
      v7 = v4 + *(a4(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2042E0(double *a1, double *a2, uint64_t (*a3)(void))
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3(0) + 24);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E204424(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A40, type metadata accessor for ContextProtoCGSize);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2044C4()
{
  sub_20E21DA3C(&qword_27C869840, type metadata accessor for ContextProtoCGSize);

  return sub_20E322470();
}

uint64_t sub_20E204530()
{
  sub_20E21DA3C(&qword_27C869840, type metadata accessor for ContextProtoCGSize);

  return sub_20E322480();
}

uint64_t sub_20E2045AC(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E20467C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869278);
  __swift_project_value_buffer(v0, qword_27C869278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20E342190;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "version";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "spans";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "spansIsPresent";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "toolRetrievalResponse";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "dynamicEnumerationEntities";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "dynamicEnumerationEntitiesIsPresent";
  *(v17 + 1) = 35;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "context";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "contextIsPresent";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "deviceIdsID";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ContextProtoVersionedQueryDecorationOutput.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 3)
        {
          if (result == 1)
          {
            sub_20E0635D0();
            sub_20E322310();
            goto LABEL_5;
          }

          if (result != 3)
          {
            goto LABEL_5;
          }

          v3 = v0;
          type metadata accessor for ContextProtoSpanMatchedEntity(0);
          sub_20E21DA3C(&qword_27C8661A0, type metadata accessor for ContextProtoSpanMatchedEntity);
LABEL_23:
          v0 = v3;
LABEL_25:
          sub_20E322420();
          goto LABEL_5;
        }

        if (result == 4)
        {
          goto LABEL_4;
        }

        sub_20E204CBC();
      }

      else
      {
        if (result <= 7)
        {
          if (result != 6)
          {
LABEL_4:
            sub_20E3222F0();
            goto LABEL_5;
          }

          type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
          sub_20E21DA3C(&qword_27C868258, type metadata accessor for ContextProtoDynamicEnumerationEntity);
          goto LABEL_25;
        }

        v3 = v0;
        switch(result)
        {
          case 8:
            type metadata accessor for ContextProtoRetrievedContext(0);
            sub_20E21DA3C(&qword_27C8661D0, type metadata accessor for ContextProtoRetrievedContext);
            goto LABEL_23;
          case 9:
            goto LABEL_4;
          case 10:
            v4 = *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 48);
            sub_20E3223D0();
            break;
        }
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E204CBC()
{
  v0 = *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 44);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_20E21DA3C(&qword_27C867FB8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  return sub_20E322430();
}

uint64_t ContextProtoVersionedQueryDecorationOutput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ContextProtoSpanMatchedEntity(0), sub_20E21DA3C(&qword_27C8661A0, type metadata accessor for ContextProtoSpanMatchedEntity), result = sub_20E322570(), !v4))
  {
    if (*(v3 + 8) != 1 || (result = sub_20E3224C0(), !v4))
    {
      result = sub_20E204FF8(v3, a1, a2, a3);
      if (!v4)
      {
        if (*(*(v3 + 16) + 16))
        {
          type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
          sub_20E21DA3C(&qword_27C868258, type metadata accessor for ContextProtoDynamicEnumerationEntity);
          sub_20E322570();
        }

        if (*(v3 + 24) == 1)
        {
          sub_20E3224C0();
        }

        if (*(*(v3 + 32) + 16))
        {
          type metadata accessor for ContextProtoRetrievedContext(0);
          sub_20E21DA3C(&qword_27C8661D0, type metadata accessor for ContextProtoRetrievedContext);
          sub_20E322570();
        }

        if (*(v3 + 40) == 1)
        {
          sub_20E3224C0();
        }

        sub_20E205214(v3);
        v9 = v3 + *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 52);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E204FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C40, &unk_20E33C460);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v10 = *(DecorationToolRetrievalResponse - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  sub_20E0486F4(a1 + *(DecorationOutput + 44), v8, &qword_27C863C40, &unk_20E33C460);
  if ((*(v10 + 48))(v8, 1, DecorationToolRetrievalResponse) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C40, &unk_20E33C460);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_20E21DA3C(&qword_27C867FB8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
}

uint64_t sub_20E205214(uint64_t a1)
{
  result = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v3 = (a1 + *(result + 48));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E2052D8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[11];
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a2 + v4, 1, 1, DecorationToolRetrievalResponse);
  v6 = a1[13];
  v7 = (a2 + a1[12]);
  *v7 = 0;
  v7[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v9 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = 0;
  *(a2 + 32) = v9;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_20E205398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E20540C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_20E205480(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_20E2054D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A38, type metadata accessor for ContextProtoVersionedQueryDecorationOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E205574()
{
  sub_20E21DA3C(&qword_27C869858, type metadata accessor for ContextProtoVersionedQueryDecorationOutput);

  return sub_20E322470();
}

uint64_t sub_20E2055E0()
{
  sub_20E21DA3C(&qword_27C869858, type metadata accessor for ContextProtoVersionedQueryDecorationOutput);

  return sub_20E322480();
}

uint64_t sub_20E2056F8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8692A8);
  __swift_project_value_buffer(v0, qword_27C8692A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 12;
  *v6 = "spans";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 13;
  *v10 = "spansIsPresent";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 11;
  *v12 = "toolRetrievalResponse";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 22;
  *v14 = "dynamicEnumerationEntities";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 23;
  *v16 = "dynamicEnumerationEntitiesIsPresent";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 24;
  *v18 = "context";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 25;
  *v20 = "contextIsPresent";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 26;
  *v22 = "deviceIdsId";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoQueryDecorationOutput.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 22)
      {
        if (result <= 24)
        {
          if (result != 23)
          {
            v3 = v0;
            type metadata accessor for ContextProtoRetrievedContext(0);
            sub_20E21DA3C(&qword_27C8661D0, type metadata accessor for ContextProtoRetrievedContext);
            goto LABEL_4;
          }

LABEL_22:
          sub_20E3222F0();
          goto LABEL_5;
        }

        if (result == 25)
        {
          goto LABEL_22;
        }

        if (result == 26)
        {
          v4 = *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 44);
          sub_20E3223D0();
        }
      }

      else if (result > 12)
      {
        if (result == 13)
        {
          goto LABEL_22;
        }

        if (result == 22)
        {
          v3 = v0;
          type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
          sub_20E21DA3C(&qword_27C868258, type metadata accessor for ContextProtoDynamicEnumerationEntity);
          goto LABEL_4;
        }
      }

      else if (result == 11)
      {
        sub_20E205CC4();
      }

      else if (result == 12)
      {
        v3 = v0;
        type metadata accessor for ContextProtoSpanMatchedEntity(0);
        sub_20E21DA3C(&qword_27C8661A0, type metadata accessor for ContextProtoSpanMatchedEntity);
LABEL_4:
        v0 = v3;
        sub_20E322420();
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E205CC4()
{
  v0 = *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 40);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_20E21DA3C(&qword_27C867FB8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  return sub_20E322430();
}

uint64_t ContextProtoQueryDecorationOutput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E206008(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ContextProtoSpanMatchedEntity(0);
      sub_20E21DA3C(&qword_27C8661A0, type metadata accessor for ContextProtoSpanMatchedEntity);
      sub_20E322570();
    }

    if (*(v5 + 8) == 1)
    {
      sub_20E3224C0();
    }

    if (*(*(v5 + 16) + 16))
    {
      type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
      sub_20E21DA3C(&qword_27C868258, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_20E322570();
    }

    if (*(v5 + 24) == 1)
    {
      sub_20E3224C0();
    }

    if (*(*(v5 + 32) + 16))
    {
      type metadata accessor for ContextProtoRetrievedContext(0);
      sub_20E21DA3C(&qword_27C8661D0, type metadata accessor for ContextProtoRetrievedContext);
      sub_20E322570();
    }

    if (*(v5 + 40) == 1)
    {
      sub_20E3224C0();
    }

    sub_20E206224(v5);
    v8 = v5 + *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 48);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E206008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C40, &unk_20E33C460);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v10 = *(DecorationToolRetrievalResponse - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  sub_20E0486F4(a1 + *(DecorationOutput + 40), v8, &qword_27C863C40, &unk_20E33C460);
  if ((*(v10 + 48))(v8, 1, DecorationToolRetrievalResponse) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C40, &unk_20E33C460);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_20E21DA3C(&qword_27C867FB8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
}

uint64_t sub_20E206224(uint64_t a1)
{
  result = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v3 = (a1 + *(result + 44));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E2062E8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[10];
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a2 + v4, 1, 1, DecorationToolRetrievalResponse);
  v6 = a1[12];
  v7 = (a2 + a1[11]);
  *v7 = 0;
  v7[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v9 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = 0;
  *(a2 + 32) = v9;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_20E2063D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A30, type metadata accessor for ContextProtoQueryDecorationOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E206478()
{
  sub_20E21DA3C(&qword_27C869880, type metadata accessor for ContextProtoQueryDecorationOutput);

  return sub_20E322470();
}

uint64_t sub_20E2064E4()
{
  sub_20E21DA3C(&qword_27C869880, type metadata accessor for ContextProtoQueryDecorationOutput);

  return sub_20E322480();
}

uint64_t sub_20E206580()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8692C0);
  __swift_project_value_buffer(v0, qword_27C8692C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20E326330;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "query";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 8;
  *v8 = "requestId";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 9;
  *v10 = "caller";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 10;
  *v12 = "contextId";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 11;
  *v14 = "loggingSalt";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 12;
  *v16 = "servicesExecuted";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 13;
  *v18 = "deviceIdsId";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ContextProtoQueryDecorationInput.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 9)
      {
        switch(result)
        {
          case 1:
            sub_20E3223E0();
            break;
          case 8:
            goto LABEL_4;
          case 9:
            sub_20E0636CC();
            sub_20E322310();
            break;
        }
      }

      else
      {
        if (result <= 11)
        {
          goto LABEL_4;
        }

        if (result == 12)
        {
          sub_20E063720();
          sub_20E3222D0();
        }

        else if (result == 13)
        {
LABEL_4:
          sub_20E3223D0();
        }
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ContextProtoQueryDecorationInput.traverse<A>(visitor:)()
{
  result = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_20E322540(), !v1))
  {
    if (*(v0 + 40))
    {
      v5 = *(v0 + 32);
      result = sub_20E322540();
    }

    if (!v1)
    {
      if (*(v0 + 16))
      {
        v10 = *(v0 + 16);
        sub_20E0636CC();
        sub_20E3224D0();
      }

      if (*(v0 + 56))
      {
        v6 = *(v0 + 48);
        sub_20E322540();
      }

      if (*(v0 + 72))
      {
        v7 = *(v0 + 64);
        sub_20E322540();
      }

      if (*(*(v0 + 24) + 16))
      {
        sub_20E063720();
        sub_20E3224B0();
      }

      if (*(v0 + 88))
      {
        v8 = *(v0 + 80);
        sub_20E322540();
      }

      v9 = v0 + *(type metadata accessor for ContextProtoQueryDecorationInput(0) + 44);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E206C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v3 = a2 + *(a1 + 44);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E206CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A28, type metadata accessor for ContextProtoQueryDecorationInput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E206D40()
{
  sub_20E21DA3C(&qword_27C869898, type metadata accessor for ContextProtoQueryDecorationInput);

  return sub_20E322470();
}

uint64_t sub_20E206DAC()
{
  sub_20E21DA3C(&qword_27C869898, type metadata accessor for ContextProtoQueryDecorationInput);

  return sub_20E322480();
}

uint64_t sub_20E206E48()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8692D8);
  __swift_project_value_buffer(v0, qword_27C8692D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterTypeInstance";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "typedValue";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoDynamicEnumerationEntity.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_20E2071E8();
        break;
      case 2:
        sub_20E207134();
        break;
      case 1:
        sub_20E3223E0();
        break;
    }
  }

  return result;
}

uint64_t sub_20E207134()
{
  v0 = *(type metadata accessor for ContextProtoDynamicEnumerationEntity(0) + 20);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E21DA3C(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t sub_20E2071E8()
{
  v0 = *(type metadata accessor for ContextProtoDynamicEnumerationEntity(0) + 24);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E21DA3C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t ContextProtoDynamicEnumerationEntity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_20E322540(), !v4))
  {
    result = sub_20E207360(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E20757C(v3, a1, a2, a3);
      v12 = v3 + *(type metadata accessor for ContextProtoDynamicEnumerationEntity(0) + 28);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E207360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863C48, &qword_20E323F30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E21DA3C(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_20E20757C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E21DA3C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E2077E4@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = &a2[a1[7]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E2078F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A20, type metadata accessor for ContextProtoDynamicEnumerationEntity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E207998()
{
  sub_20E21DA3C(&qword_27C868258, type metadata accessor for ContextProtoDynamicEnumerationEntity);

  return sub_20E322470();
}

uint64_t sub_20E207A04()
{
  sub_20E21DA3C(&qword_27C868258, type metadata accessor for ContextProtoDynamicEnumerationEntity);

  return sub_20E322480();
}

uint64_t sub_20E207AA0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8692F0);
  __swift_project_value_buffer(v0, qword_27C8692F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "definition";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "similarityScore";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sampleInvocations";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "stage";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "source";
  *(v15 + 8) = 6;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoRetrievedTool.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_20E207EFC();
        }

        else if (result == 2)
        {
          sub_20E322350();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            type metadata accessor for ContextProtoSampleInvocation(0);
            sub_20E21DA3C(&qword_27C869530, type metadata accessor for ContextProtoSampleInvocation);
            sub_20E322420();
            break;
          case 4:
            sub_20E063528();
            sub_20E322310();
            break;
          case 5:
            sub_20E06357C();
            sub_20E3222D0();
            break;
        }
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E207EFC()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedTool(0) + 32);
  type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  sub_20E21DA3C(&qword_27C8698F0, type metadata accessor for ContextProtoRetrievedTool.Definition);
  return sub_20E322430();
}

uint64_t ContextProtoRetrievedTool.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E208160(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 != 0.0)
    {
      sub_20E3224F0();
    }

    if (*(*(v3 + 8) + 16))
    {
      type metadata accessor for ContextProtoSampleInvocation(0);
      sub_20E21DA3C(&qword_27C869530, type metadata accessor for ContextProtoSampleInvocation);
      sub_20E322570();
    }

    if (*(v3 + 16))
    {
      v7 = *(v3 + 16);
      sub_20E063528();
      sub_20E3224D0();
    }

    if (*(*(v3 + 24) + 16))
    {
      sub_20E06357C();
      sub_20E3224B0();
    }

    v6 = v3 + *(type metadata accessor for ContextProtoRetrievedTool(0) + 36);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E208160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C50, &qword_20E323F38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoRetrievedTool(0);
  sub_20E0486F4(a1 + *(v14 + 32), v8, &qword_27C863C50, &qword_20E323F38);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C50, &qword_20E323F38);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_20E21DA3C(&qword_27C8698F0, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoRetrievedTool.Definition);
}

uint64_t sub_20E2083C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  v8 = MEMORY[0x277D84F90];
  *(a2 + 8) = MEMORY[0x277D84F90];
  *(a2 + 16) = 0;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_20E2084A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A18, type metadata accessor for ContextProtoRetrievedTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E208548()
{
  sub_20E21DA3C(&qword_27C866108, type metadata accessor for ContextProtoRetrievedTool);

  return sub_20E322470();
}

uint64_t sub_20E2085B4()
{
  sub_20E21DA3C(&qword_27C866108, type metadata accessor for ContextProtoRetrievedTool);

  return sub_20E322480();
}

uint64_t sub_20E208634()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869308);
  __swift_project_value_buffer(v0, qword_27C869308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "inForeground";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "spanMatch";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E208844()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869320);
  __swift_project_value_buffer(v0, qword_27C869320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "one";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "two";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "three";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "four";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}