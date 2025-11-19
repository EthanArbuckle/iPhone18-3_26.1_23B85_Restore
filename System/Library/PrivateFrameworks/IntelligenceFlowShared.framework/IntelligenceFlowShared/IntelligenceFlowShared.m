void FeatureFlag.isEnabled.getter()
{
  v1 = 0;
  v2 = *v0;
  if (v2 == 44)
  {
    v3 = &unk_28672A2C0;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = v3[2];
  if (v2 == 44)
  {
    v5 = &unk_28672A2E0;
  }

  else
  {
    v5 = (MEMORY[0x277D84F90] + 32);
  }

  while (1)
  {
    if (v4 == v1)
    {

      v9 = &type metadata for FeatureFlag;
      v10 = sub_254F4DA08();
      v8[0] = v2;
      sub_254F9B770();
      sub_254F4DA5C(v8);
      return;
    }

    if (v1 >= v3[2])
    {
      break;
    }

    v6 = v1 + 1;
    v8[0] = v5[v1];
    v7 = FeatureFlag.isEnabled.getter();
    v1 = v6;
    if ((v7 & 1) == 0)
    {

      return;
    }
  }

  __break(1u);
}

unint64_t sub_254F4DA08()
{
  result = qword_280C46308;
  if (!qword_280C46308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46308);
  }

  return result;
}

uint64_t sub_254F4DA5C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *FeatureFlag.requirements.getter()
{
  if (*v0 == 44)
  {
    return &unk_28672A2C0;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeatureFlag.checkEnabled()()
{
  v1 = *v0;
  FeatureFlag.isEnabled.getter();
  if ((v2 & 1) == 0)
  {
    sub_254F78710();
    swift_allocError();
    *v3 = v1;
    swift_willThrow();
  }
}

const char *FeatureFlag.feature.getter()
{
  result = "IntelligenceFlow";
  switch(*v0)
  {
    case 1:
      result = "IFOrchestration";
      break;
    case 2:
      result = "DisableIndexingSampleInvocationsForToolbox";
      break;
    case 3:
      result = "ResponseGeneration";
      break;
    case 4:
      result = "PlanOverrides";
      break;
    case 5:
      result = "QueryDecorationRanker";
      break;
    case 6:
      result = "DisableQueryDecorationHydration";
      break;
    case 7:
      result = "QueryDecorationBackgroundHydration";
      break;
    case 8:
      result = "QueryDecorationBackgroundToolRetrieval";
      break;
    case 9:
      result = "QueryDecorationOnScreenContentRetrieval";
      break;
    case 0xA:
      result = "QueryDecorationAppPreLaunch";
      break;
    case 0xB:
      result = "ContextRetrieval";
      break;
    case 0xC:
      result = "PlannerSpanMatcher";
      break;
    case 0xD:
      result = "JointResolver";
      break;
    case 0xE:
      result = "EntitySimilarity";
      break;
    case 0xF:
      result = "InteractionStore";
      break;
    case 0x10:
      result = "FeedbackLearning";
      break;
    case 0x11:
      result = "JointResolverCurareLogging";
      break;
    case 0x12:
      result = "UIIntelligence";
      break;
    case 0x13:
      result = "ContextualEntityGrounding";
      break;
    case 0x14:
      result = "CustomNLTagger";
      break;
    case 0x15:
      result = "MenuCommandsAsTools";
      break;
    case 0x16:
      result = "GlobalEntitySpanMatcher";
      break;
    case 0x17:
      result = "JointResolverLocationSignal";
      break;
    case 0x18:
      result = "ShimToolRetrieval";
      break;
    case 0x19:
      result = "SearchSupport";
      break;
    case 0x1A:
      result = "SearchInCarSupport";
      break;
    case 0x1B:
      result = "SearchXPCSupport";
      break;
    case 0x1C:
      result = "ConfirmSearchAnswerEntities";
      break;
    case 0x1D:
      result = "FullPlannerUnredactedLogging";
      break;
    case 0x1E:
      result = "FullPlannerEntityReferencePruning";
      break;
    case 0x1F:
      result = "FullPlannerStrongPreheat";
      break;
    case 0x20:
      result = "SpanMatchingErrorsFailRequest";
      break;
    case 0x21:
      result = "ContextRetrievalErrorsFailRequest";
      break;
    case 0x22:
      result = "ToolRetrievalErrorsFailRequest";
      break;
    case 0x23:
      result = "DynamicEnumErrorsFailRequest";
      break;
    case 0x24:
      result = "ToolSelectionErrorsFailRequest";
      break;
    case 0x25:
      result = "ForegroundAppErrorsFailRequest";
      break;
    case 0x26:
      result = "AppEntityErrorsFailRequest";
      break;
    case 0x27:
      result = "MissingContextDisplayRepresentationFailRequest";
      break;
    case 0x28:
      result = "DisableAllActions";
      break;
    case 0x29:
      result = "NowPlayingContextFiltersMusicTools";
      break;
    case 0x2A:
      result = "DisablePayloadGenerationAppEntityAllowlist";
      break;
    case 0x2B:
      result = "GenerativeAssistantRerouting";
      break;
    case 0x2C:
      result = "ForceENUSLocaleInEnablementCheck";
      break;
    case 0x2D:
      result = "UseShortcutAndHomeSpanMatchesOnly";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F4DED0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_254F4DF64()
{
  v0[34] = 0;
  v0[35] = 0;
  v0[33] = 0;
  v0[30] = 0;
  v0[31] = 0;
  v0[28] = 0;
  v0[29] = 0;
  v0[25] = 0;
  v0[26] = 0;
  v0[23] = 0;
  v0[21] = 0;
}

uint64_t sub_254F4E03C()
{

  return sub_254F9BC30();
}

uint64_t sub_254F4E090@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = sub_254F4DED0(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

__n128 sub_254F4E328@<Q0>(uint64_t a1@<X8>)
{
  *(v2 + 520) = a1;
  *(v2 + 528) = v1;
  result = *(v2 + 200);
  v4 = *(v2 + 216);
  *(v2 + 536) = result;
  *(v2 + 552) = v4;
  return result;
}

void sub_254F4E370()
{
  *(v0 + 216) = 0;
  *(v0 + 344) = 0;
  *(v1 - 72) = 0;
}

uint64_t sub_254F4E3F4(unint64_t *a1)
{

  return sub_254F5B264(a1);
}

void sub_254F4E47C()
{
  *(v0 + 216) = 0;
  *(v0 + 344) = 0;
  *(v1 - 72) = 0;
}

void *sub_254F4E518()
{

  return memcpy(v0, &STACK[0x3F0], 0x14AuLL);
}

void sub_254F4E568()
{
  v0[32] = 0xF000000000000000;
  v0[22] = 1;
  v0[24] = 1;
}

uint64_t sub_254F4E618()
{

  return sub_254F9BD30();
}

uint64_t sub_254F4E7F8()
{

  return sub_254F9BE30();
}

uint64_t sub_254F4E814()
{

  return sub_254F9BE00();
}

void *sub_254F4E864(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char __dst)
{

  return memcpy(&__dst, &a9, 0x14AuLL);
}

_BYTE *sub_254F4E8B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = sub_254F77A8C(result, v6);
        break;
      case 2:
        result = sub_254F77A84(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x254F4E970);
      case 4:
        result = sub_254F4FC54(result, v6);
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
          result = sub_254F779F8(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

id QueryDecorationInput.init(query:servicesExecuted:requestId:contextId:loggingSalt:caller:requiredContextReturned:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  sub_254F996FC();
  v12 = v11;
  v14 = v13;
  sub_254F99154();
  ObjectType = swift_getObjectType();
  v15 = *a9;
  sub_254F997D4(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_query);
  v16 = &v9[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_requestId];
  *v16 = v14;
  *(v16 + 1) = v12;
  sub_254F9B760();
  sub_254F5001C();
  v17 = sub_254F990E8();
  v18(v17);
  sub_254F99ACC(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_loggingSalt);
  *&v9[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_caller] = v15;
  *&v9[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_servicesExecuted] = v10;
  v19 = &v9[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_deviceIdsID];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v9[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_timeout] = 0x4024000000000000;
  *&v9[OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_previousQueries] = MEMORY[0x277D84F90];
  sub_254F99750(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_refreshServices);
  v25.receiver = v9;
  v25.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v25, sel_init);
  v21 = sub_254F4F238();
  v22(v21);
  return v20;
}

void QueryDecorationInput.encode(to:)()
{
  sub_254F99C20();
  sub_254F52F94(&qword_27F761AD8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F4E558();
  sub_254F98F98();
  sub_254F4EF68();
  sub_254F4F1BC();
  sub_254F9961C(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_query);
  sub_254F4E2F0();
  sub_254F9BDB0();
  if (!v0)
  {
    sub_254F9961C(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_requestId);
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F995B0();
    sub_254F4F3E4();
    sub_254F4E2F0();
    sub_254F9BE00();
    sub_254F993E0();
    sub_254F52F94(&qword_27F761AE0);
    sub_254F93724();
    sub_254F99A24();
    sub_254F98F48();
    sub_254F9BE00();
    sub_254F4E2F0();
    sub_254F9BDD0();
    sub_254F9B760();
    sub_254F99258();
    sub_254F505E4(v1, v2);
    sub_254F9909C();
    sub_254F9BE00();
    sub_254F9961C(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_loggingSalt);
    sub_254F4E2F0();
    sub_254F9BDB0();
    sub_254F9961C(OBJC_IVAR____TtC22IntelligenceFlowShared20QueryDecorationInput_deviceIdsID);
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F52F94(&qword_27F760DD0);
    sub_254F50650(&qword_280C460D8);
    sub_254F99A24();
    sub_254F98F48();
    sub_254F9BE00();
    sub_254F4E2F0();
    sub_254F9BDC0();
  }

  v3 = sub_254F4F36C();
  v4(v3);
  sub_254F99C0C();
}

uint64_t sub_254F4EEB4()
{

  return sub_254F9BD10();
}

void *sub_254F4EED4(void *a1)
{

  return memcpy(a1, v1, 0x50uLL);
}

uint64_t sub_254F4EF04()
{

  return sub_254F9BC30();
}

void *sub_254F4EF24(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_254F4EF68()
{
  result = qword_280C45C50;
  if (!qword_280C45C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C50);
  }

  return result;
}

uint64_t sub_254F4F004(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      v3 = 0x736575716572;
      goto LABEL_9;
    case 2:
      result = 0x72656C6C6163;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x74756F656D6974;
      break;
    case 5:
      v3 = 0x7865746E6F63;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
      break;
    case 6:
      result = 0x53676E6967676F6CLL;
      break;
    case 7:
      result = 0x6449656369766564;
      break;
    case 8:
      result = 0x73756F6976657270;
      break;
    case 9:
      result = 0x5368736572666572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F4F18C()
{
  v2 = v0[47];
  v3 = v0[48];
  v4 = v0[49];

  return sub_254F5C5AC(v2, v3, v4);
}

uint64_t sub_254F4F1BC()
{

  return sub_254F9BF20();
}

uint64_t sub_254F4F1DC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254F4F244()
{

  return sub_254F9B9A0();
}

uint64_t sub_254F4F280()
{

  return sub_254F9BD30();
}

uint64_t sub_254F4F2D0(unint64_t *a1)
{

  return sub_254F5B264(a1);
}

void *sub_254F4F3AC()
{

  return memcpy(&STACK[0x3F0], &STACK[0x2A0], 0x14AuLL);
}

unint64_t sub_254F4F3E4()
{
  result = qword_280C45568[0];
  if (!qword_280C45568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C45568);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryDecorationInput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x254F4F504);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryDecorationInput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_254F4F604()
{
  result = qword_280C45C28;
  if (!qword_280C45C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C28);
  }

  return result;
}

uint64_t sub_254F4F65C@<X0>(_DWORD *a1@<X8>)
{
  result = AliasTypes.rawValue.getter();
  *a1 = result;
  return result;
}

void QueryDecorationCoreService.encode(to:)()
{
  sub_254F4E9D0();
  v2 = v0;
  v4 = v3;
  sub_254F52F94(&qword_27F761A08);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F686A4();
  sub_254F52F94(&qword_27F761A10);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F686A4();
  sub_254F52F94(&qword_27F761A18);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F686A4();
  sub_254F52F94(&qword_27F761A20);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F686A4();
  sub_254F52F94(&qword_27F761A28);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F686A4();
  sub_254F52F94(&qword_27F761A30);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F4E558();
  v5 = sub_254F52F94(&qword_27F761A38);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F50064();
  v16 = sub_254F52F94(&qword_27F761A40);
  sub_254F4DF18();
  v7 = v6;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F778C8();
  v8 = *v2;
  sub_254F4EFBC(v4, v4[3]);
  sub_254F4FC78();
  sub_254F994AC();
  sub_254F9BF20();
  switch(v8)
  {
    case 1:
      sub_254F505B0();
      sub_254F5055C();
      sub_254F4FD34();
      goto LABEL_9;
    case 2:
      sub_254F9367C();
      sub_254F4FD34();
      goto LABEL_9;
    case 3:
      sub_254F999CC();
      sub_254F93628();
      sub_254F4FD34();
      goto LABEL_9;
    case 4:
      sub_254F935D4();
      sub_254F4FD34();
      goto LABEL_9;
    case 5:
      sub_254F4FCCC();
      sub_254F4FD34();
      goto LABEL_9;
    case 6:
      sub_254F93580();
      sub_254F4FD34();
LABEL_9:
      v11 = sub_254F99358();
      v12(v11);
      v13 = sub_254F995A4();
      v15(v13, v14);
      break;
    default:
      sub_254F936D0();
      sub_254F99110();
      sub_254F9BD30();
      v9 = sub_254F9924C();
      v10(v9, v5);
      (*(v7 + 8))(v1, v16);
      break;
  }

  sub_254F4F348();
}

unint64_t sub_254F4FC78()
{
  result = qword_280C45B38;
  if (!qword_280C45B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45B38);
  }

  return result;
}

unint64_t sub_254F4FCCC()
{
  result = qword_280C45AB0;
  if (!qword_280C45AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45AB0);
  }

  return result;
}

uint64_t sub_254F4FD34()
{

  return sub_254F9BD30();
}

unint64_t sub_254F4FD60(char a1)
{
  result = 0x6374614D6E617073;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x727465526C6F6F74;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x736552746E696F6ALL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_254F4FE8C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = sub_254F77A8C(result, v6);
        break;
      case 2:
        result = sub_254F77A84(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x254F4FF48);
      case 4:
        result = sub_254F4FC54(result, v6);
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
          result = sub_254F779F8(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t _s22IntelligenceFlowShared10SourceTypeOwet_0_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_254F77A94(-1);
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
      return sub_254F77A94((*a1 | (v4 << 8)) - 7);
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

      return sub_254F77A94((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_254F77A94((*a1 | (v4 << 8)) - 7);
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

  return sub_254F77A94(v8);
}

uint64_t sub_254F4FFF8()
{

  return sub_254F9BE30();
}

uint64_t sub_254F50048@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 + a2) = v5;
  *(v3 + *(result + 24)) = v2;
  *(v3 + *(result + 28)) = v4;
  return result;
}

uint64_t ContextType.rawValue.getter()
{
  result = 0x7261646E656C6163;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 0x4C746E6572727563;
      break;
    case 4:
      result = 0x74536E6F69746F6DLL;
      break;
    case 5:
    case 0x18:
      sub_254F77CB4();
      result = v5 | 4;
      break;
    case 6:
      result = 0x49664F746E696F70;
      break;
    case 7:
    case 8:
    case 0x11:
      sub_254F77CB4();
      result = v7 - 3;
      break;
    case 9:
    case 0x1A:
      sub_254F77CB4();
      result = v10 | 8;
      break;
    case 0xA:
    case 0x17:
      sub_254F77CB4();
      result = v8 + 7;
      break;
    case 0xB:
    case 0xE:
      sub_254F77CB4();
      result = v2 + 9;
      break;
    case 0xC:
    case 0x19:
      sub_254F77CB4();
      result = v3 + 3;
      break;
    case 0xD:
      sub_254F77CB4();
      result = v6 + 5;
      break;
    case 0xF:
    case 0x10:
    case 0x12:
    case 0x1F:
      result = 0x6E65657263536E6FLL;
      break;
    case 0x13:
      result = 0xD000000000000013;
      break;
    case 0x15:
      result = 0xD000000000000013;
      break;
    case 0x16:
      result = 0x6C6C61436576696CLL;
      break;
    case 0x1B:
    case 0x1C:
    case 0x20:
      sub_254F77CB4();
      result = v9 + 1;
      break;
    case 0x1D:
      result = 0xD000000000000013;
      break;
    case 0x1E:
      result = 0xD000000000000013;
      break;
    default:
      sub_254F77CB4();
      result = v4 - 1;
      break;
  }

  return result;
}

unint64_t sub_254F504A8()
{
  result = qword_280C46440;
  if (!qword_280C46440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46440);
  }

  return result;
}

uint64_t sub_254F504FC@<X0>(uint64_t *a1@<X8>)
{
  result = ContextType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_254F5055C()
{
  result = qword_280C45AE8;
  if (!qword_280C45AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45AE8);
  }

  return result;
}

uint64_t sub_254F505E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254F50650(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_254F55B94(&qword_27F760DD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254F506CC()
{

  return sub_254F9BC30();
}

uint64_t sub_254F506F0()
{

  return sub_254F9BD10();
}

uint64_t sub_254F50710(uint64_t a1, char a2)
{
  sub_254F9BEB0();
  sub_254F509F0(v4, a2);
  return sub_254F9BF00();
}

uint64_t sub_254F50788(unsigned __int8 a1, char a2)
{
  v2 = 5395027;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 5395027;
  switch(v4)
  {
    case 1:
      v5 = 0x666E496563616C70;
      v3 = 0xEE0065636E657265;
      break;
    case 2:
      v5 = 0x7865746E6F436975;
      v3 = 0xE900000000000074;
      break;
    case 3:
      v5 = 0xD000000000000014;
      v3 = 0x8000000254FA6090;
      break;
    case 4:
      v5 = 0x74756374726F6873;
      v3 = 0xE900000000000073;
      break;
    case 5:
      v5 = 0x6D6552616964656DLL;
      v3 = 0xEB0000000065746FLL;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x666E496563616C70;
      v6 = 0xEE0065636E657265;
      break;
    case 2:
      v2 = 0x7865746E6F436975;
      v6 = 0xE900000000000074;
      break;
    case 3:
      v2 = 0xD000000000000014;
      v6 = 0x8000000254FA6090;
      break;
    case 4:
      v2 = 0x74756374726F6873;
      v6 = 0xE900000000000073;
      break;
    case 5:
      v2 = 0x6D6552616964656DLL;
      v6 = 0xEB0000000065746FLL;
      break;
    case 6:
      v6 = 0xE700000000000000;
      sub_254F58DB0();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_254F4E7F8();
  }

  return v8 & 1;
}

uint64_t sub_254F509F0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 6:
      sub_254F9918C();
      break;
    default:
      break;
  }

  sub_254F9B9C0();
}

uint64_t sub_254F50B7C@<X0>(uint64_t a1@<X8>)
{

  return sub_254F69104(a1 + v1, v2, v3);
}

uint64_t sub_254F50C0C(uint64_t a1, int a2)
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

uint64_t sub_254F50C2C(uint64_t result, int a2, int a3)
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

uint64_t sub_254F50EA8@<X0>(uint64_t *a1@<X8>)
{
  result = StructuredContext.SiriRequestContext.DeviceIdiom.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_254F51080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F64CAC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254F513A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F51370();
  *a1 = result & 1;
  return result;
}

uint64_t sub_254F51410(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_254F9B890();
    sub_254F50010();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = sub_254F52F94(&qword_27F761178);
      v11 = *(a3 + 24);
    }

    return sub_254F4E5C0(a1 + v11, a2, v10);
  }
}

uint64_t sub_254F514E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_254F9B890();
    sub_254F50010();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = sub_254F52F94(&qword_27F761178);
      v11 = *(a4 + 24);
    }

    return sub_254F4E598(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_254F515B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_254F77C50();
  sub_254F9B890();
  sub_254F50010();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_5:

    return sub_254F4E5C0(v9, a2, v8);
  }

  sub_254F52F94(&qword_27F761178);
  sub_254F50010();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v3 + *(a3 + 28) + 80);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_254F516B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_254F77C50();
  sub_254F9B890();
  sub_254F50010();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_254F52F94(&qword_27F761178);
    sub_254F50010();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 28) + 80) = a2;
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 20);
  }

  sub_254F4E598(v11, a2, a2, v10);
}

BOOL sub_254F51A60(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_254F51A8C(uint64_t a1@<X8>, int a2@<W0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  sub_254F992D8(a1);
}

uint64_t sub_254F51C90(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_254F51CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F8AE98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F51D98@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = AliasTypes.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_254F51EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254F778A0();
  type metadata accessor for RetrievedTool.Definition(v6);
  sub_254F50010();
  if (*(v7 + 84) != a2)
  {
    return sub_254F990FC(*(v3 + *(a3 + 24)));
  }

  v8 = sub_254F9964C();

  return sub_254F4E5C0(v8, a2, v9);
}

void sub_254F51F90()
{
  sub_254F993B0();
  type metadata accessor for RetrievedTool.Definition(0);
  sub_254F50010();
  if (*(v4 + 84) == v3)
  {
    sub_254F4F214();

    sub_254F4E598(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_254F5205C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_254F990FC(*(a1 + 8));
  }

  v7 = sub_254F52F94(&qword_27F761900);
  v8 = a1 + *(a3 + 28);

  return sub_254F4E5C0(v8, a2, v7);
}

void sub_254F520E4()
{
  sub_254F99A58();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_254F52F94(&qword_27F761900);
    sub_254F4F214();

    sub_254F4E598(v3, v4, v5, v6);
  }
}

uint64_t sub_254F52160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_254F990FC(*(a1 + 8));
  }

  sub_254F9B8B0();
  sub_254F50010();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = sub_254F9B890();
    v10 = *(a3 + 24);
  }

  return sub_254F4E5C0(a1 + v10, a2, v9);
}

void sub_254F5221C()
{
  sub_254F99A58();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_254F9B8B0();
    sub_254F50010();
    if (*(v5 + 84) != v4)
    {
      sub_254F9B890();
    }

    sub_254F4F214();

    sub_254F4E598(v6, v7, v8, v9);
  }
}

uint64_t sub_254F522D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_254F9B8F0();
  sub_254F50010();
  if (*(v6 + 84) == a2)
  {
    v7 = sub_254F997BC();
  }

  else
  {
    v8 = sub_254F9B8D0();
    v7 = a1 + *(a3 + 20);
  }

  return sub_254F4E5C0(v7, a2, v8);
}

uint64_t sub_254F5236C()
{
  sub_254F993B0();
  sub_254F9B8F0();
  sub_254F50010();
  if (*(v1 + 84) != v0)
  {
    sub_254F9B8D0();
  }

  sub_254F4F214();

  return sub_254F4E598(v2, v3, v4, v5);
}

uint64_t sub_254F52404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_254F52F94(&qword_27F761178);
  sub_254F50010();
  if (*(v6 + 84) != a2)
  {
    return sub_254F990FC(*(a1 + *(a3 + 20)));
  }

  v7 = sub_254F9964C();

  return sub_254F4E5C0(v7, a2, v8);
}

void sub_254F524A8()
{
  sub_254F993B0();
  sub_254F52F94(&qword_27F761178);
  sub_254F50010();
  if (*(v4 + 84) == v3)
  {
    sub_254F4F214();

    sub_254F4E598(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t _s22IntelligenceFlowShared21QueryDecorationCallerVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return sub_254F77A94(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s22IntelligenceFlowShared21QueryDecorationCallerVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t StructuredContext.AppContext.bundleId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t StructuredContext.AppContext.appName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t StructuredContext.AppContext.category.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t StructuredContext.AppContext.init(bundleId:appName:category:isActive:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t static StructuredContext.AppContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v12 && (sub_254F9BE30() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    v13 = v2 == v8 && v4 == v7;
    if (!v13 && (sub_254F9BE30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (v9)
    {
      if (v3 == v10 && v5 == v9)
      {
        return v6 ^ v11 ^ 1u;
      }

      sub_254F4E364();
      if (sub_254F9BE30())
      {
        return v6 ^ v11 ^ 1u;
      }
    }
  }

  else if (!v9)
  {
    return v6 ^ v11 ^ 1u;
  }

  return 0;
}

uint64_t sub_254F52A64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6576697463417369 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_254F9BE30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_254F52BCC(unsigned __int8 a1)
{
  sub_254F9BEB0();
  MEMORY[0x259C2FEE0](a1);
  return sub_254F9BF00();
}

uint64_t sub_254F52C20(char a1)
{
  result = 0x6449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x656D614E707061;
      break;
    case 2:
      result = 0x79726F6765746163;
      break;
    case 3:
      result = 0x6576697463417369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F52C9C()
{
  v1 = *v0;
  sub_254F9BEB0();
  MEMORY[0x259C2FEE0](v1);
  return sub_254F9BF00();
}

uint64_t sub_254F52CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F52A64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F52D30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F52BC4();
  *a1 = result;
  return result;
}

uint64_t sub_254F52D58(uint64_t a1)
{
  v2 = sub_254F52FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F52D94(uint64_t a1)
{
  v2 = sub_254F52FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StructuredContext.AppContext.encode(to:)(void *a1)
{
  sub_254F52F94(&qword_27F760D40);
  sub_254F4DF18();
  v5 = v4;
  MEMORY[0x28223BE20]();
  v7 = v15 - v6;
  v8 = *(v1 + 16);
  v15[2] = *(v1 + 24);
  v15[3] = v8;
  v9 = *(v1 + 32);
  v15[0] = *(v1 + 40);
  v15[1] = v9;
  v16 = *(v1 + 48);
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  sub_254F4EF24(v11, v10);
  sub_254F52FDC();
  sub_254F9BF20();
  v20 = 0;
  sub_254F4E3C4();
  sub_254F9BDB0();
  if (!v2)
  {
    v19 = 1;
    sub_254F4E3C4();
    sub_254F9BD40();
    v18 = 2;
    sub_254F4E3C4();
    sub_254F9BD40();
    v17 = 3;
    sub_254F9BDC0();
  }

  return (*(v5 + 8))(v7, v13);
}

uint64_t sub_254F52F94(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_254F52FDC()
{
  result = qword_27F760D48;
  if (!qword_27F760D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760D48);
  }

  return result;
}

uint64_t StructuredContext.AppContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_254F52F94(&qword_27F760D50);
  sub_254F4DF18();
  MEMORY[0x28223BE20]();
  sub_254F4EF24(a1, a1[3]);
  sub_254F52FDC();
  sub_254F9BF10();
  if (v2)
  {
    return sub_254F4DA5C(a1);
  }

  sub_254F4DFD8();
  v5 = sub_254F9BCC0();
  v18 = v6;
  sub_254F4DFD8();
  v16 = sub_254F9BC50();
  v17 = v7;
  sub_254F4DFD8();
  v8 = sub_254F9BC50();
  v10 = v9;
  v15 = v8;
  sub_254F4DFD8();
  v12 = sub_254F9BCD0();
  v13 = sub_254F4DF08();
  v14(v13);
  *a2 = v5;
  *(a2 + 8) = v18;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v15;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12 & 1;

  sub_254F4DA5C(a1);
}

__n128 sub_254F532E0(uint64_t a1, uint64_t a2)
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

uint64_t sub_254F532FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_254F5333C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_254F5339C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_254F533A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254F533C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t _s10AppContextV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s10AppContextV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_254F53570()
{
  result = qword_27F760D58;
  if (!qword_27F760D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760D58);
  }

  return result;
}

unint64_t sub_254F535C8()
{
  result = qword_27F760D60;
  if (!qword_27F760D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760D60);
  }

  return result;
}

unint64_t sub_254F53620()
{
  result = qword_27F760D68;
  if (!qword_27F760D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760D68);
  }

  return result;
}

__n128 sub_254F53688(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_254F536BC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_254F53718(uint64_t a1, id *a2)
{
  result = sub_254F9B970();
  *a2 = 0;
  return result;
}

uint64_t sub_254F53794(uint64_t a1, id *a2)
{
  v3 = sub_254F9B980();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_254F53814@<X0>(uint64_t *a1@<X8>)
{
  result = sub_254F53B50();
  *a1 = result;
  return result;
}

uint64_t sub_254F5383C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_254F9B960();

  *a1 = v2;
  return result;
}

uint64_t sub_254F53884@<X0>(uint64_t *a1@<X8>)
{
  result = sub_254F538B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_254F538B4(uint64_t a1)
{
  v2 = sub_254F539B4(&qword_27F760D98);
  v3 = sub_254F539B4(&qword_27F760DA0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_254F539B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254F53A00()
{
  v0 = sub_254F9B990();
  v1 = MEMORY[0x259C2FA30](v0);

  return v1;
}

uint64_t sub_254F53A40()
{
  sub_254F9B990();
  sub_254F9B9C0();
}

uint64_t sub_254F53A9C()
{
  sub_254F9B990();
  sub_254F9BEB0();
  sub_254F9B9C0();
  v0 = sub_254F9BF00();

  return v0;
}

uint64_t sub_254F53B50()
{
  sub_254F9B990();
  v0 = sub_254F9B960();

  return v0;
}

uint64_t StructuredContext.AppInFocusContext.bundleId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t StructuredContext.AppInFocusContext.appName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t StructuredContext.AppInFocusContext.category.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t StructuredContext.AppInFocusContext.init(bundleId:appName:category:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static StructuredContext.AppInFocusContext.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_254F9BE30() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6)
    {
      return 0;
    }

    v11 = v2 == v7 && v4 == v6;
    if (!v11 && (sub_254F9BE30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v3 == v9 && v5 == v8)
      {
        return 1;
      }

      sub_254F4E364();
      if (sub_254F9BE30())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_254F53E10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_254F9BE30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_254F53F28(char a1)
{
  if (!a1)
  {
    return 0x6449656C646E7562;
  }

  if (a1 == 1)
  {
    return 0x656D614E707061;
  }

  return 0x79726F6765746163;
}

uint64_t sub_254F53F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F53E10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F53FB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F53F20();
  *a1 = result;
  return result;
}

uint64_t sub_254F53FD8(uint64_t a1)
{
  v2 = sub_254F541F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F54014(uint64_t a1)
{
  v2 = sub_254F541F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StructuredContext.AppInFocusContext.encode(to:)(void *a1)
{
  v3 = sub_254F52F94(&qword_27F760DA8);
  sub_254F4DF18();
  v5 = v4;
  MEMORY[0x28223BE20]();
  v7 = v12 - v6;
  v8 = v1[2];
  v12[3] = v1[3];
  v12[4] = v8;
  v9 = v1[4];
  v12[1] = v1[5];
  v12[2] = v9;
  sub_254F4EF24(a1, a1[3]);
  sub_254F541F4();
  sub_254F9BF20();
  v15 = 0;
  v10 = v12[5];
  sub_254F9BDB0();
  if (!v10)
  {
    v14 = 1;
    sub_254F9BD40();
    v13 = 2;
    sub_254F9BD40();
  }

  return (*(v5 + 8))(v7, v3);
}

unint64_t sub_254F541F4()
{
  result = qword_280C46260;
  if (!qword_280C46260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46260);
  }

  return result;
}

uint64_t StructuredContext.AppInFocusContext.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_254F52F94(&qword_27F760DB0);
  sub_254F4DF18();
  v7 = v6;
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  sub_254F4EF24(a1, a1[3]);
  sub_254F541F4();
  sub_254F9BF10();
  if (v2)
  {
    return sub_254F4DA5C(a1);
  }

  v26 = 0;
  sub_254F4DFE8();
  v10 = sub_254F9BCC0();
  v12 = v11;
  v25 = 1;
  sub_254F4DFE8();
  v22 = sub_254F9BC50();
  v23 = v13;
  v24 = 2;
  sub_254F4DFE8();
  v14 = sub_254F9BC50();
  v17 = v16;
  v18 = *(v7 + 8);
  v21 = v14;
  v18(v9, v5);
  *a2 = v10;
  a2[1] = v12;
  v19 = v23;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v21;
  a2[5] = v17;

  sub_254F4DA5C(a1);
}

__n128 sub_254F544A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_254F544BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_254F544FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s17AppInFocusContextV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s17AppInFocusContextV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_254F546C0()
{
  result = qword_27F760DB8;
  if (!qword_27F760DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760DB8);
  }

  return result;
}

unint64_t sub_254F54718()
{
  result = qword_280C46250;
  if (!qword_280C46250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46250);
  }

  return result;
}

unint64_t sub_254F54770()
{
  result = qword_280C46258;
  if (!qword_280C46258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46258);
  }

  return result;
}

uint64_t StructuredContext.IntelligenceCommandContext.identifier.setter()
{
  sub_254F5653C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t StructuredContext.IntelligenceCommandContext.title.setter()
{
  sub_254F5653C();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t StructuredContext.IntelligenceCommandContext.standaloneTitle.setter()
{
  sub_254F5653C();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t StructuredContext.IntelligenceCommandContext.menuHierarchyComponents.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t StructuredContext.IntelligenceCommandContext.embeddingDescription.setter()
{
  sub_254F5653C();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t StructuredContext.IntelligenceCommandContext.init(identifier:title:standaloneTitle:menuHierarchyComponents:embeddingDescription:isDisabled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t static StructuredContext.IntelligenceCommandContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v19 = *(a1 + 72);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v16 = *(a2 + 56);
  v17 = *(a1 + 56);
  v20 = *(a2 + 64);
  v21 = *(a1 + 64);
  v10 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v18 = *(a2 + 72);
  if (!v10 && (sub_254F9BE30() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v11 = v2 == v7 && v3 == v6;
    if (!v11 && (sub_254F9BE30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (!v8)
    {
      return 0;
    }

    v12 = v4 == v9 && v5 == v8;
    if (!v12 && (sub_254F9BE30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  sub_254F551E4();
  if (v13)
  {
    if (v21)
    {
      if (v20)
      {
        v14 = v17 == v16 && v21 == v20;
        if (v14 || (sub_254F9BE30() & 1) != 0)
        {
          return v19 ^ v18 ^ 1u;
        }
      }
    }

    else if (!v20)
    {
      return v19 ^ v18 ^ 1u;
    }
  }

  return 0;
}

void sub_254F54BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RetrievedTool(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16) && v11 && a1 != a2)
  {
    v12 = 0;
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v32 = a1 + v13;
    v14 = a2 + v13;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_254F563C8(v32 + v15 * v12, v10, type metadata accessor for RetrievedTool);
      if (v12 == v11)
      {
        break;
      }

      sub_254F563C8(v14 + v15 * v12, v7, type metadata accessor for RetrievedTool);
      static RetrievedTool.Definition.== infix(_:_:)();
      if ((v16 & 1) == 0 || *&v10[v4[5]] != *&v7[v4[5]] || (v17 = v4[6], v18 = *&v10[v17], v19 = *&v7[v17], v20 = *(v18 + 16), v20 != *(v19 + 16)))
      {
LABEL_30:
        sub_254F5642C(v7, type metadata accessor for RetrievedTool);
        sub_254F5642C(v10, type metadata accessor for RetrievedTool);
        return;
      }

      if (v20)
      {
        v21 = v18 == v19;
      }

      else
      {
        v21 = 1;
      }

      if (!v21)
      {
        v22 = (v19 + 48);
        v23 = (v18 + 48);
        while (v20)
        {
          v24 = *v23;
          v25 = *v22;
          v26 = *(v23 - 2) == *(v22 - 2) && *(v23 - 1) == *(v22 - 1);
          if (!v26 && (sub_254F9BE30() & 1) == 0 || v24 != v25)
          {
            goto LABEL_30;
          }

          v22 += 6;
          v23 += 6;
          if (!--v20)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        break;
      }

LABEL_22:
      if (v10[v4[7]] != v7[v4[7]])
      {
        goto LABEL_30;
      }

      ++v12;
      v27 = v4[8];
      v28 = v10[v27];
      v29 = v7[v27];
      sub_254F5642C(v7, type metadata accessor for RetrievedTool);
      sub_254F5642C(v10, type metadata accessor for RetrievedTool);
      if (v28 != v29 || v12 == v11)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_254F54E8C()
{
  sub_254F4E3D4();
  if (v7 && v0 && v1 != v2)
  {
    v3 = (v2 + 48);
    v4 = (v1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      v7 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
      if (v7)
      {
        if (v5 != v6)
        {
          return;
        }
      }

      else if ((sub_254F9BE30() & 1) == 0 || v5 != v6)
      {
        return;
      }

      v3 += 6;
      v4 += 6;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_254F54F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RetrievedContext(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_254F563C8(v13, v10, type metadata accessor for RetrievedContext);
        sub_254F563C8(v14, v7, type metadata accessor for RetrievedContext);
        static RetrievedContext.== infix(_:_:)();
        v17 = v16;
        sub_254F5642C(v7, type metadata accessor for RetrievedContext);
        sub_254F5642C(v10, type metadata accessor for RetrievedContext);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_254F550E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v5 = ContextType.rawValue.getter();
      v7 = v6;
      if (v5 == ContextType.rawValue.getter() && v7 == v8)
      {
      }

      else
      {
        v10 = sub_254F9BE30();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_254F551E4()
{
  sub_254F4E3D4();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v1 + 40);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (!v5 && (sub_254F9BE30() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_254F55268(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 96)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      v5 = static StructuredContext.SiriRequestContext.MeCard.Address.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      sub_254F5648C(__dst, v7);
      sub_254F5648C(v11, v7);
      sub_254F564E8(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_254F564E8(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 96;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_254F55378()
{
  sub_254F4E3D4();
  if (v5 && v0 && v1 != v2)
  {
    v3 = v2 + 56;
    v4 = v1 + 56;
    while (v0)
    {
      v5 = !CGRectEqualToRect(*(v4 - 24), *(v3 - 24)) || v0-- == 1;
      v3 += 32;
      v4 += 32;
      if (v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_254F553FC()
{
  sub_254F4E3D4();
  if (v13 && v0 && v1 != v2)
  {
    v3 = (v1 + 68);
    v4 = (v2 + 68);
    do
    {
      v6 = *(v3 - 5);
      v5 = *(v3 - 4);
      v8 = *(v3 - 3);
      v7 = *(v3 - 2);
      v9 = *(v4 - 5);
      v10 = *(v4 - 4);
      v12 = *(v4 - 3);
      v11 = *(v4 - 2);
      v13 = *(v3 - 9) == *(v4 - 9) && *(v3 - 7) == *(v4 - 7);
      if (v13)
      {
        if (v6 != v9 || v5 != v10 || v8 != v12 || v7 != v11 || *(v3 - 1) != *(v4 - 1) || *v3 != *v4)
        {
          return;
        }
      }

      else
      {
        v24 = *(v4 - 1);
        v25 = *(v3 - 1);
        v26 = *v4;
        v27 = *v3;
        if ((sub_254F9BE30() & 1) == 0)
        {
          return;
        }

        v14 = v6 == v9 && v5 == v10;
        v15 = v14 && v8 == v12;
        v16 = v15 && v7 == v11;
        v17 = v16 && v25 == v24;
        if (!v17 || v27 != v26)
        {
          return;
        }
      }

      v3 += 10;
      v4 += 10;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_254F5551C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F6C61646E617473 && a2 == 0xEF656C746954656ELL;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x8000000254FA63C0 == a2;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x8000000254FA63E0 == a2;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6C62617369447369 && a2 == 0xEA00000000006465)
          {

            return 5;
          }

          else
          {
            v11 = sub_254F9BE30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_254F55724(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x6F6C61646E617473;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x6C62617369447369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F55800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F5551C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F55828@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F5571C();
  *a1 = result;
  return result;
}

uint64_t sub_254F55850(uint64_t a1)
{
  v2 = sub_254F55B40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F5588C(uint64_t a1)
{
  v2 = sub_254F55B40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StructuredContext.IntelligenceCommandContext.encode(to:)(void *a1)
{
  v3 = sub_254F52F94(&qword_27F760DC0);
  sub_254F4DF18();
  v5 = v4;
  MEMORY[0x28223BE20]();
  v7 = v14 - v6;
  v8 = *(v1 + 16);
  v20 = *(v1 + 24);
  v21 = v8;
  v9 = *(v1 + 32);
  v18 = *(v1 + 40);
  v19 = v9;
  v10 = *(v1 + 48);
  v16 = *(v1 + 56);
  v17 = v10;
  v15 = *(v1 + 64);
  v14[1] = *(v1 + 72);
  sub_254F4EF24(a1, a1[3]);
  sub_254F55B40();
  sub_254F9BF20();
  v29 = 0;
  v11 = v22;
  sub_254F9BDB0();
  if (!v11)
  {
    v12 = v17;
    v28 = 1;
    sub_254F4E2F0();
    sub_254F9BD40();
    v27 = 2;
    sub_254F4E2F0();
    sub_254F9BD40();
    v23 = v12;
    v26 = 3;
    sub_254F52F94(&qword_27F760DD0);
    sub_254F50650(&qword_280C460D8);
    sub_254F4E2F0();
    sub_254F9BE00();
    v25 = 4;
    sub_254F4E2F0();
    sub_254F9BD40();
    v24 = 5;
    sub_254F4E2F0();
    sub_254F9BDC0();
  }

  return (*(v5 + 8))(v7, v3);
}

unint64_t sub_254F55B40()
{
  result = qword_27F760DC8;
  if (!qword_27F760DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760DC8);
  }

  return result;
}

uint64_t sub_254F55B94(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t StructuredContext.IntelligenceCommandContext.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_254F52F94(&qword_27F760DD8);
  sub_254F4DF18();
  MEMORY[0x28223BE20]();
  sub_254F4EF24(a1, a1[3]);
  sub_254F55B40();
  sub_254F9BF10();
  if (v2)
  {
    sub_254F4DA5C(a1);
  }

  else
  {
    sub_254F4DFF8();
    v5 = sub_254F9BCC0();
    v24 = v6;
    sub_254F4DFF8();
    v7 = sub_254F9BC50();
    v23 = v8;
    LOBYTE(v26[0]) = 2;
    sub_254F4DFF8();
    v21 = sub_254F9BC50();
    v22 = v9;
    sub_254F52F94(&qword_27F760DD0);
    LOBYTE(__src[0]) = 3;
    sub_254F50650(&qword_280C459D8);
    sub_254F9BD10();
    v20 = v7;
    v19 = v5;
    v10 = v26[0];
    LOBYTE(v26[0]) = 4;
    sub_254F4DFF8();
    v11 = sub_254F9BC50();
    v13 = v12;
    v18 = v11;
    v29 = 5;
    v14 = sub_254F9BCD0();
    v15 = sub_254F4DF3C();
    v16(v15);
    v28 = v14 & 1;
    __src[0] = v19;
    __src[1] = v24;
    __src[2] = v20;
    __src[3] = v23;
    __src[4] = v21;
    __src[5] = v22;
    __src[6] = v10;
    __src[7] = v18;
    __src[8] = v13;
    LOBYTE(__src[9]) = v14 & 1;
    memcpy(a2, __src, 0x49uLL);
    sub_254F56014(__src, v26);
    sub_254F4DA5C(a1);
    v26[0] = v19;
    v26[1] = v24;
    v26[2] = v20;
    v26[3] = v23;
    v26[4] = v21;
    v26[5] = v22;
    v26[6] = v10;
    v26[7] = v18;
    v26[8] = v13;
    v27 = v28;
    return sub_254F5604C(v26);
  }
}

uint64_t sub_254F560B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_254F560F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s26IntelligenceCommandContextV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s26IntelligenceCommandContextV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_254F562C4()
{
  result = qword_27F760DE0;
  if (!qword_27F760DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760DE0);
  }

  return result;
}

unint64_t sub_254F5631C()
{
  result = qword_27F760DE8;
  if (!qword_27F760DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760DE8);
  }

  return result;
}

unint64_t sub_254F56374()
{
  result = qword_27F760DF0;
  if (!qword_27F760DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760DF0);
  }

  return result;
}

uint64_t sub_254F563C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v4 = sub_254F4E364();
  v5(v4);
  return a2;
}

uint64_t sub_254F5642C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StructuredContext.NowPlayingMediaItemContext.init(appBundleId:contentIdentifier:brandIdentifier:iTunesStoreIdentifier:iTunesStoreAlbumIdentifier:iTunesStoreArtistIdentifier:playbackState:mediaType:mediaSubType:title:albumName:trackArtistName:currentlyPlayingSongAdamId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, char *a14, char *a15, char *a16, __int128 a17, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21)
{
  v21 = *a14;
  v22 = *a15;
  v23 = *a16;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  result = a8 & 1;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 89) = v21;
  *(a9 + 90) = v22;
  *(a9 + 91) = v23;
  *(a9 + 96) = a17;
  *(a9 + 112) = a18;
  *(a9 + 128) = a19;
  *(a9 + 144) = a20;
  *(a9 + 152) = a21;
  return result;
}

uint64_t sub_254F56794@<X0>(uint64_t *a1@<X8>)
{
  result = StructuredContext.NowPlayingMediaItemContext.MediaRemotePlaybackState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_254F56878()
{
  v0 = sub_254F9B990();
  v2 = v1;
  if (v0 == sub_254F9B990() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_254F4E7F8();
  }

  return v5 & 1;
}

uint64_t sub_254F5697C()
{
  sub_254F58DB0();
  v4 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 + 2;
    }

    if (v4 == 1)
    {
      v6 = 0x8000000254FA6160;
    }

    else
    {
      v6 = 0x8000000254FA6180;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = v2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = v3;
    }

    else
    {
      v2 = v3 + 2;
    }

    if (v1 == 1)
    {
      v7 = 0x8000000254FA6160;
    }

    else
    {
      v7 = 0x8000000254FA6180;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v5 == v2 && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_254F4E7F8();
  }

  return v9 & 1;
}

uint64_t sub_254F56A68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_254F4E7F8();
  }

  return v9 & 1;
}

uint64_t sub_254F56B50@<X0>(uint64_t *a1@<X8>)
{
  result = StructuredContext.NowPlayingMediaItemContext.MediaRemoteContentItemMediaType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_254F56C88@<X0>(uint64_t *a1@<X8>)
{
  result = StructuredContext.NowPlayingMediaItemContext.MediaRemoteContentItemMediaSubType.rawValue.getter();
  *a1 = result;
  return result;
}

BOOL static StructuredContext.NowPlayingMediaItemContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v52 = *(a1 + 48);
  v49 = *(a1 + 64);
  v53 = *(a1 + 72);
  v54 = *(a1 + 56);
  v50 = *(a1 + 88);
  v45 = *(a1 + 80);
  v46 = *(a1 + 89);
  v42 = *(a1 + 90);
  v40 = *(a1 + 91);
  v34 = *(a1 + 96);
  v38 = *(a1 + 104);
  v30 = *(a1 + 112);
  v36 = *(a1 + 120);
  v26 = *(a1 + 128);
  v32 = *(a1 + 136);
  v24 = *(a1 + 144);
  v28 = *(a1 + 152);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v51 = *(a2 + 48);
  v10 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v11 = *(a2 + 56);
  v47 = *(a2 + 64);
  v12 = *(a2 + 72);
  v43 = *(a2 + 80);
  v48 = *(a2 + 88);
  v44 = *(a2 + 89);
  v41 = *(a2 + 90);
  v39 = *(a2 + 91);
  v33 = *(a2 + 96);
  v37 = *(a2 + 104);
  v29 = *(a2 + 112);
  v35 = *(a2 + 120);
  v25 = *(a2 + 128);
  v31 = *(a2 + 136);
  v23 = *(a2 + 144);
  v27 = *(a2 + 152);
  if (!v10 && (sub_254F9BE30() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    if (v2 != v7 || v3 != v6)
    {
      sub_254F4E364();
      if ((sub_254F9BE30() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (!v8)
    {
      return 0;
    }

    v14 = v4 == v9 && v5 == v8;
    if (!v14 && (sub_254F9BE30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v54)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v52 == v51)
    {
      v15 = v11;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v53)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v49 == v47)
    {
      v16 = v12;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if (v50)
  {
    if (!v48)
    {
      return 0;
    }
  }

  else
  {
    v17 = v48;
    if (v45 != v43)
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v46 == 7)
  {
    if (v44 != 7)
    {
      return 0;
    }
  }

  else
  {
    if (v44 == 7)
    {
      return 0;
    }

    sub_254F4E2FC();
    if (!v10)
    {
      return 0;
    }
  }

  if (v42 == 4)
  {
    if (v41 != 4)
    {
      return 0;
    }
  }

  else
  {
    if (v41 == 4)
    {
      return 0;
    }

    sub_254F4E2FC();
    if (!v10)
    {
      return 0;
    }
  }

  if (v40 == 9)
  {
    if (v39 != 9)
    {
      return 0;
    }
  }

  else
  {
    if (v39 == 9)
    {
      return 0;
    }

    sub_254F4E2FC();
    if (!v10)
    {
      return 0;
    }
  }

  if (v38)
  {
    if (!v37)
    {
      return 0;
    }

    v18 = v34 == v33 && v38 == v37;
    if (!v18 && (sub_254F9BE30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  if (v36)
  {
    if (!v35)
    {
      return 0;
    }

    v19 = v30 == v29 && v36 == v35;
    if (!v19 && (sub_254F9BE30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  if (v32)
  {
    if (!v31)
    {
      return 0;
    }

    v20 = v26 == v25 && v32 == v31;
    if (!v20 && (sub_254F9BE30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  if (v28)
  {
    if (!v27)
    {
      return 0;
    }

    v21 = v24 == v23 && v28 == v27;
    return v21 || (sub_254F9BE30() & 1) != 0;
  }

  return !v27;
}

uint64_t sub_254F57168(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000254FA6400 == a2;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656449646E617262 && a2 == 0xEF7265696669746ELL;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000254FA6420 == a2;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x8000000254FA6440 == a2;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x8000000254FA6460 == a2;
            if (v10 || (sub_254F9BE30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6B63616279616C70 && a2 == 0xED00006574617453;
              if (v11 || (sub_254F9BE30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x707954616964656DLL && a2 == 0xE900000000000065;
                if (v12 || (sub_254F9BE30() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x627553616964656DLL && a2 == 0xEC00000065707954;
                  if (v13 || (sub_254F9BE30() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
                    if (v14 || (sub_254F9BE30() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
                      if (v15 || (sub_254F9BE30() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7472416B63617274 && a2 == 0xEF656D614E747369;
                        if (v16 || (sub_254F9BE30() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD00000000000001ALL && 0x8000000254FA6480 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_254F9BE30();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_254F57578(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x656449646E617262;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0x6B63616279616C70;
      break;
    case 7:
      result = 0x707954616964656DLL;
      break;
    case 8:
      result = 0x627553616964656DLL;
      break;
    case 9:
      result = 0x656C746974;
      break;
    case 10:
      result = 0x6D614E6D75626C61;
      break;
    case 11:
      result = 0x7472416B63617274;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F57724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F57168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F5774C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F57570();
  *a1 = result;
  return result;
}

uint64_t sub_254F57774(uint64_t a1)
{
  v2 = sub_254F57BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F577B0(uint64_t a1)
{
  v2 = sub_254F57BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StructuredContext.NowPlayingMediaItemContext.encode(to:)(void *a1)
{
  v3 = sub_254F52F94(&qword_27F760DF8);
  sub_254F4DF18();
  v5 = v4;
  MEMORY[0x28223BE20]();
  v6 = *(v1 + 16);
  v29 = *(v1 + 24);
  v30 = v6;
  v7 = *(v1 + 32);
  v27 = *(v1 + 40);
  v28 = v7;
  v26 = *(v1 + 48);
  v32 = *(v1 + 56);
  v24 = *(v1 + 64);
  v25 = *(v1 + 72);
  v22 = *(v1 + 80);
  v23 = *(v1 + 88);
  LODWORD(v7) = *(v1 + 89);
  v20 = *(v1 + 90);
  v21 = v7;
  v19 = *(v1 + 91);
  v8 = *(v1 + 104);
  v18[6] = *(v1 + 96);
  v18[7] = v8;
  v9 = *(v1 + 120);
  v18[4] = *(v1 + 112);
  v18[5] = v9;
  v10 = *(v1 + 136);
  v18[2] = *(v1 + 128);
  v18[3] = v10;
  v11 = *(v1 + 152);
  v18[1] = *(v1 + 144);
  v12 = a1[3];
  v13 = a1;
  v15 = v18 - v14;
  sub_254F4EF24(v13, v12);
  sub_254F57BBC();
  sub_254F9BF20();
  v34 = 0;
  v16 = v31;
  sub_254F9BDB0();
  if (!v16)
  {
    v31 = v11;
    sub_254F58DA4(1);
    sub_254F4E00C();
    sub_254F9BD40();
    sub_254F58DA4(2);
    sub_254F4E00C();
    sub_254F9BD40();
    sub_254F58DA4(3);
    sub_254F4E00C();
    sub_254F9BDA0();
    sub_254F58DA4(4);
    sub_254F4E00C();
    sub_254F9BDA0();
    sub_254F58DA4(5);
    sub_254F4E00C();
    sub_254F9BDA0();
    v34 = v21;
    v33 = 6;
    sub_254F57C10();
    sub_254F4F2C4();
    sub_254F9BD80();
    v34 = v20;
    v33 = 7;
    sub_254F57C64();
    sub_254F4F2C4();
    sub_254F9BD80();
    v34 = v19;
    v33 = 8;
    sub_254F57CB8();
    sub_254F4F2C4();
    sub_254F9BD80();
    sub_254F58DA4(9);
    sub_254F4E00C();
    sub_254F9BD40();
    sub_254F58DA4(10);
    sub_254F4F2C4();
    sub_254F9BD40();
    sub_254F58DA4(11);
    sub_254F9BD40();
    sub_254F58DA4(12);
    sub_254F9BD40();
  }

  return (*(v5 + 8))(v15, v3);
}

unint64_t sub_254F57BBC()
{
  result = qword_280C45C90;
  if (!qword_280C45C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C90);
  }

  return result;
}

unint64_t sub_254F57C10()
{
  result = qword_280C45660;
  if (!qword_280C45660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45660);
  }

  return result;
}

unint64_t sub_254F57C64()
{
  result = qword_280C45650;
  if (!qword_280C45650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45650);
  }

  return result;
}

unint64_t sub_254F57CB8()
{
  result = qword_280C45640;
  if (!qword_280C45640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45640);
  }

  return result;
}

uint64_t StructuredContext.NowPlayingMediaItemContext.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v66 = sub_254F52F94(&qword_27F760E00);
  sub_254F4DF18();
  MEMORY[0x28223BE20]();
  sub_254F4EF24(a1, a1[3]);
  sub_254F57BBC();
  sub_254F9BF10();
  if (v2)
  {
    return sub_254F4DA5C(a1);
  }

  v35 = a2;
  sub_254F4E544();
  v5 = sub_254F9BCC0();
  v39 = v6;
  sub_254F4DF4C(1);
  v34 = sub_254F9BC50();
  v38 = v7;
  sub_254F4DF4C(2);
  v33 = sub_254F9BC50();
  v37 = v8;
  sub_254F4DF4C(3);
  v32 = sub_254F9BCB0();
  v65 = v9 & 1;
  sub_254F4DF4C(4);
  v31 = sub_254F9BCB0();
  v63 = v10 & 1;
  sub_254F4DF4C(5);
  v30 = sub_254F9BCB0();
  v61 = v11 & 1;
  sub_254F58340();
  sub_254F4E544();
  sub_254F9BC90();
  sub_254F58394();
  sub_254F4E544();
  sub_254F9BC90();
  LOBYTE(v40[0]) = 8;
  sub_254F583E8();
  sub_254F4E544();
  sub_254F9BC90();
  sub_254F4DF4C(9);
  v12 = sub_254F9BC50();
  v36 = v13;
  v14 = v12;
  sub_254F4E544();
  v28 = sub_254F9BC50();
  v29 = v15;
  LOBYTE(v41[0]) = 11;
  sub_254F4E544();
  v27 = sub_254F9BC50();
  v17 = v16;
  v60 = 12;
  sub_254F4E544();
  v18 = sub_254F9BC50();
  v26 = v19;
  v20 = v18;
  v21 = sub_254F4E3E4();
  v22(v21);
  v40[0] = v5;
  v40[1] = v39;
  v40[2] = v34;
  v40[3] = v38;
  v40[4] = v33;
  v40[5] = v37;
  v40[6] = v32;
  v24 = v65;
  LOBYTE(v40[7]) = v65;
  v40[8] = v31;
  v25 = v63;
  LOBYTE(v40[9]) = v63;
  v40[10] = v30;
  LODWORD(v66) = v61;
  LODWORD(v40[11]) = v61;
  v40[12] = v14;
  v40[13] = v36;
  v40[14] = v28;
  v40[15] = v29;
  v40[16] = v27;
  v40[17] = v17;
  v40[18] = v20;
  v40[19] = v26;
  memcpy(v35, v40, 0xA0uLL);
  sub_254F5843C(v40, v41);
  sub_254F4DA5C(a1);
  v41[0] = v5;
  v41[1] = v39;
  v41[2] = v34;
  v41[3] = v38;
  v41[4] = v33;
  v41[5] = v37;
  v41[6] = v32;
  v42 = v24;
  *v43 = *v64;
  *&v43[3] = *&v64[3];
  v44 = v31;
  v45 = v25;
  *v46 = *v62;
  *&v46[3] = *&v62[3];
  v47 = v30;
  v48 = v66;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = v14;
  v53 = v36;
  v54 = v28;
  v55 = v29;
  v56 = v27;
  v57 = v17;
  v58 = v20;
  v59 = v26;
  return sub_254F58474(v41);
}

unint64_t sub_254F58340()
{
  result = qword_280C45658;
  if (!qword_280C45658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45658);
  }

  return result;
}

unint64_t sub_254F58394()
{
  result = qword_280C45648;
  if (!qword_280C45648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45648);
  }

  return result;
}

unint64_t sub_254F583E8()
{
  result = qword_280C45638;
  if (!qword_280C45638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45638);
  }

  return result;
}

unint64_t sub_254F584A8()
{
  result = qword_27F760E08;
  if (!qword_27F760E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760E08);
  }

  return result;
}

unint64_t sub_254F58500()
{
  result = qword_27F760E10;
  if (!qword_27F760E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760E10);
  }

  return result;
}

unint64_t sub_254F58558()
{
  result = qword_27F760E18;
  if (!qword_27F760E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760E18);
  }

  return result;
}

uint64_t sub_254F585E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_254F58628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s26NowPlayingMediaItemContextV24MediaRemotePlaybackStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s26NowPlayingMediaItemContextV24MediaRemotePlaybackStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s26NowPlayingMediaItemContextV31MediaRemoteContentItemMediaTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s26NowPlayingMediaItemContextV34MediaRemoteContentItemMediaSubTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s26NowPlayingMediaItemContextV34MediaRemoteContentItemMediaSubTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s26NowPlayingMediaItemContextV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s26NowPlayingMediaItemContextV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254F58B9C()
{
  result = qword_27F760E20;
  if (!qword_27F760E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760E20);
  }

  return result;
}

unint64_t sub_254F58BF4()
{
  result = qword_280C45C80;
  if (!qword_280C45C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C80);
  }

  return result;
}

unint64_t sub_254F58C4C()
{
  result = qword_280C45C88;
  if (!qword_280C45C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C88);
  }

  return result;
}

unint64_t sub_254F58CA0()
{
  result = qword_280C45C98;
  if (!qword_280C45C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C98);
  }

  return result;
}

unint64_t sub_254F58CF4()
{
  result = qword_280C45CA0;
  if (!qword_280C45CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45CA0);
  }

  return result;
}

unint64_t sub_254F58D48()
{
  result = qword_280C45CA8;
  if (!qword_280C45CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45CA8);
  }

  return result;
}

uint64_t StructuredContext.OnScreenUIText.text.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t StructuredContext.OnScreenUIText.selections.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void StructuredContext.OnScreenUIText.boundingBox.setter(double a1, double a2, double a3, double a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
}

uint64_t StructuredContext.OnScreenUIText.fractionVisible.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t StructuredContext.OnScreenUIText.uiMetadata.getter@<X0>(void *a1@<X8>)
{
  sub_254F5BE68();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 72), 0x50uLL);
  return sub_254F58F60(v8, &v7);
}

void *StructuredContext.OnScreenUIText.uiMetadata.setter()
{
  sub_254F5BE68();
  memcpy(v1, v2, v3);
  sub_254F58FDC(&v5);
  return sub_254F4EED4((v0 + 72));
}

void *StructuredContext.OnScreenUIText.init(text:boundingBox:fractionVisible:uiMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, const void *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  v10 = MEMORY[0x277D84F90];
  *(a6 + 8) = a2;
  *(a6 + 16) = v10;
  *a6 = a1;
  *(a6 + 24) = a7;
  *(a6 + 32) = a8;
  *(a6 + 40) = a9;
  *(a6 + 48) = a10;
  *(a6 + 56) = a3;
  *(a6 + 64) = a4 & 1;
  return sub_254F4E01C((a6 + 72), a5);
}

void *StructuredContext.OnScreenUIText.init(text:selections:boundingBox:fractionVisible:uiMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, const void *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a8;
  *(a7 + 32) = a9;
  *(a7 + 40) = a10;
  *(a7 + 48) = a11;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5 & 1;
  return sub_254F4E01C((a7 + 72), a6);
}

uint64_t StructuredContext.OnScreenUIText.description.getter()
{
  sub_254F5BE68();
  memcpy(v0, v1, v2);
  *&v4[0] = 0;
  *(&v4[0] + 1) = 0xE000000000000000;
  sub_254F9BB90();
  v5 = v4[0];
  MEMORY[0x259C2FA00](0xD00000000000002ELL, 0x8000000254FA64A0);
  type metadata accessor for CGRect(0);
  sub_254F5BEA0();
  MEMORY[0x259C2FA00](0x646174654D697520, 0xED0000203A617461);
  memcpy(v4, __src, sizeof(v4));
  sub_254F5BEA0();
  return v5;
}

uint64_t static StructuredContext.OnScreenUIText.== infix(_:_:)(double *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v26 = a1[7];
  v6 = *(a1 + 64);
  memcpy(__dst, a1 + 9, sizeof(__dst));
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = *(a2 + 6);
  v25 = *(a2 + 7);
  v13 = *(a2 + 64);
  sub_254F5BE68();
  memcpy(v14, v15, v16);
  v17 = *&v4 == *&v7 && v5 == v8;
  if (!v17 && (sub_254F9BE30() & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_254F551E4();
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

  v31.origin.x = sub_254F4E468();
  v32.origin.x = v9;
  v32.origin.y = v10;
  v32.size.width = v11;
  v32.size.height = v12;
  if (!CGRectEqualToRect(v31, v32))
  {
    goto LABEL_10;
  }

  if ((v6 & 1) == 0)
  {
    if (v26 == v25)
    {
      v21 = v13;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_10;
    }

LABEL_16:
    sub_254F58F60(__dst, v28);
    sub_254F58F60(v30, v28);
    v19 = static StructuredContext.UIMetadata.Window.== infix(_:_:)(a1 + 72, a2 + 72);
    sub_254F5BE68();
    memcpy(v22, v23, v24);
    sub_254F5A1A0(v27);
    memcpy(v28, a1 + 9, sizeof(v28));
    sub_254F5A1A0(v28);
    return v19 & 1;
  }

  if (v13)
  {
    goto LABEL_16;
  }

LABEL_10:
  v19 = 0;
  return v19 & 1;
}

uint64_t static StructuredContext.UIMetadata.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  sub_254F4E4E4();
  memcpy(v4, v5, v6);
  sub_254F4EED4(v13);
  sub_254F5A1D0(&v12, v15);
  sub_254F5A1D0(v13, v15);
  v7 = static StructuredContext.UIMetadata.Window.== infix(_:_:)(a1, a2);
  sub_254F4EED4(v14);
  sub_254F5A1A0(v14);
  sub_254F4E4E4();
  memcpy(v8, v9, v10);
  sub_254F5A1A0(v15);
  return v7 & 1;
}

uint64_t sub_254F59394(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F697463656C6573 && a2 == 0xEA0000000000736ELL;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697463617266 && a2 == 0xEF656C6269736956;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x61646174654D6975 && a2 == 0xEA00000000006174)
        {

          return 4;
        }

        else
        {
          v10 = sub_254F9BE30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_254F59558(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0x6F697463656C6573;
      break;
    case 2:
      result = 0x676E69646E756F62;
      break;
    case 3:
      result = 0x6E6F697463617266;
      break;
    case 4:
      result = 0x61646174654D6975;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F59610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F59394(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F59638@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F59550();
  *a1 = result;
  return result;
}

uint64_t sub_254F59660(uint64_t a1)
{
  v2 = sub_254F5A208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F5969C(uint64_t a1)
{
  v2 = sub_254F5A208();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredContext.OnScreenUIText.encode(to:)()
{
  sub_254F4E9D0();
  v4 = v3;
  v5 = sub_254F52F94(&qword_27F760E28);
  sub_254F4DF18();
  v7 = v6;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F4E558();
  v13 = *(v0 + 16);
  v11 = *(v0 + 40);
  v12 = *(v0 + 24);
  sub_254F5BE68();
  memcpy(v8, v9, v10);
  sub_254F4EF24(v4, v4[3]);
  sub_254F5A208();
  sub_254F4F360();
  sub_254F9BF20();
  LOBYTE(v15[0]) = 0;
  sub_254F9BDB0();
  if (v1)
  {
    (*(v7 + 8))(v2, v5);
  }

  else
  {
    *&v15[0] = v13;
    v14[0] = 1;
    sub_254F52F94(&qword_27F760DD0);
    sub_254F50650(&qword_280C460D8);
    sub_254F4E814();
    v15[1] = v11;
    v15[0] = v12;
    v14[0] = 2;
    type metadata accessor for CGRect(0);
    sub_254F4E3F4(&qword_280C460D0);
    sub_254F4E814();
    sub_254F9BD60();
    memcpy(v15, v16, sizeof(v15));
    sub_254F58F60(v16, v14);
    sub_254F5A25C();
    sub_254F9BE00();
    memcpy(v14, v15, sizeof(v14));
    sub_254F58FDC(v14);
    (*(v7 + 8))(v2, v5);
  }

  sub_254F4F348();
}

uint64_t StructuredContext.OnScreenUIText.hash(into:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_254F9B9C0();
  v3 = sub_254F4E364();
  sub_254F5B1EC(v3, v4);
  v5 = sub_254F4E468();
  sub_254F5B168(v5, v6, v7, v8);
  if (v2 == 1)
  {
    sub_254F9BED0();
  }

  else
  {
    sub_254F9BED0();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v1;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x259C2FF10](v9);
  }

  return StructuredContext.UIMetadata.Window.hash(into:)();
}

uint64_t StructuredContext.OnScreenUIText.hashValue.getter()
{
  sub_254F9BEB0();
  StructuredContext.OnScreenUIText.hash(into:)();
  return sub_254F9BF00();
}

uint64_t StructuredContext.OnScreenUIText.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v22 = sub_254F52F94(&qword_27F760E30);
  sub_254F4DF18();
  v7 = v6;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F4E558();
  sub_254F4EF24(a1, a1[3]);
  sub_254F5A208();
  v23 = v3;
  sub_254F4F360();
  sub_254F9BF10();
  if (v2)
  {
    return sub_254F4DA5C(a1);
  }

  LOBYTE(v25) = 0;
  v8 = sub_254F9BCC0();
  v10 = v9;
  v21 = v8;
  sub_254F52F94(&qword_27F760DD0);
  sub_254F50650(&qword_280C459D8);
  sub_254F5BE74();
  v11 = v25;
  type metadata accessor for CGRect(0);
  LOBYTE(v24[0]) = 2;
  sub_254F4F2D0(&qword_280C459C0);
  sub_254F5BE74();
  v12 = a1;
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v16 = v28;
  LOBYTE(v25) = 3;
  v17 = sub_254F9BC70();
  v37 = v18 & 1;
  v38 = 4;
  sub_254F5B2A8();
  sub_254F9BD10();
  (*(v7 + 8))(v23, v22);
  memcpy(&__src[7], v35, 0x50uLL);
  v24[0] = v21;
  v24[1] = v10;
  v24[2] = v11;
  v24[3] = v13;
  v24[4] = v26;
  v24[5] = v27;
  v24[6] = v28;
  v24[7] = v17;
  v19 = v37;
  LOBYTE(v24[8]) = v37;
  memcpy(&v24[8] + 1, __src, 0x57uLL);
  memcpy(a2, v24, 0x98uLL);
  sub_254F5B2FC(v24, &v25);
  sub_254F4DA5C(v12);
  v25 = v21;
  v26 = v10;
  v27 = v11;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = v19;
  memcpy(v34, __src, sizeof(v34));
  return sub_254F5B334(&v25);
}

uint64_t sub_254F59E5C()
{
  sub_254F9BEB0();
  StructuredContext.OnScreenUIText.hash(into:)();
  return sub_254F9BF00();
}

uint64_t StructuredContext.UIMetadata.window.getter()
{
  sub_254F4E4E4();
  memcpy(v0, v1, v2);
  sub_254F4E4E4();
  memcpy(v3, v4, v5);
  return sub_254F5A1D0(v8, &v7);
}

void *StructuredContext.UIMetadata.window.setter()
{
  sub_254F4E4E4();
  memcpy(v1, v2, v3);
  sub_254F58FDC(&v5);
  return sub_254F4EED4(v0);
}

__n128 StructuredContext.UIMetadata.Window.boundingBox.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 StructuredContext.UIMetadata.Window.boundingBox.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 40) = *(a1 + 32);
  return result;
}

uint64_t StructuredContext.UIMetadata.Window.fractionVisible.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t StructuredContext.UIMetadata.Window.appBundleId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

double StructuredContext.UIMetadata.Window.init(isActive:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *a2 = a1;
  return result;
}

uint64_t static StructuredContext.UIMetadata.Window.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 6);
  v4 = a1[56];
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *(a2 + 6);
  v8 = a2[56];
  v10 = *(a2 + 8);
  v9 = *(a2 + 9);
  if (a1[40])
  {
    if ((a2[40] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[40])
    {
      return 0;
    }

    result = CGRectEqualToRect(*(a1 + 8), *(a2 + 8));
    if (!result)
    {
      return result;
    }
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v7)
    {
      v11 = v8;
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

  if (v6)
  {
    if (!v9)
    {
      return 0;
    }

    if (v5 != v10 || v6 != v9)
    {
      sub_254F4E364();
      if ((sub_254F9BE30() & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return !v9;
}

unint64_t sub_254F5A208()
{
  result = qword_280C461F0;
  if (!qword_280C461F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461F0);
  }

  return result;
}

unint64_t sub_254F5A25C()
{
  result = qword_280C461F8;
  if (!qword_280C461F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461F8);
  }

  return result;
}

uint64_t sub_254F5A2B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697463417369 && a2 == 0xE800000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F697463617266 && a2 == 0xEF656C6269736956;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965)
      {

        return 3;
      }

      else
      {
        v9 = sub_254F9BE30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_254F5A418(char a1)
{
  result = 0x6576697463417369;
  switch(a1)
  {
    case 1:
      result = 0x676E69646E756F62;
      break;
    case 2:
      result = 0x6E6F697463617266;
      break;
    case 3:
      result = 0x6C646E7542707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F5A4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F5A2B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F5A4E8(uint64_t a1)
{
  v2 = sub_254F5B364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F5A524(uint64_t a1)
{
  v2 = sub_254F5B364();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredContext.UIMetadata.Window.encode(to:)()
{
  sub_254F4E9D0();
  v3 = v2;
  v4 = sub_254F52F94(&qword_27F760E38);
  sub_254F4DF18();
  v6 = v5;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F4E558();
  sub_254F4EF24(v3, v3[3]);
  sub_254F5B364();
  sub_254F4F360();
  sub_254F9BF20();
  sub_254F4E2F0();
  sub_254F9BDC0();
  if (!v0)
  {
    type metadata accessor for CGRect(0);
    sub_254F4E3F4(&qword_280C460D0);
    sub_254F4E2F0();
    sub_254F9BD80();
    sub_254F4E2F0();
    sub_254F9BD60();
    sub_254F4E2F0();
    sub_254F9BD40();
  }

  (*(v6 + 8))(v1, v4);
  sub_254F4F348();
}

uint64_t StructuredContext.UIMetadata.Window.hash(into:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 72);
  sub_254F9BED0();
  if (v1 == 1)
  {
    sub_254F9BED0();
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_254F9BED0();
    v7 = sub_254F4E468();
    sub_254F5B168(v7, v8, v9, v10);
    if (!v3)
    {
LABEL_3:
      sub_254F9BED0();
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v2;
      }

      else
      {
        v5 = 0;
      }

      MEMORY[0x259C2FF10](v5);
      if (v4)
      {
        goto LABEL_7;
      }

      return sub_254F9BED0();
    }
  }

  sub_254F9BED0();
  if (!v4)
  {
    return sub_254F9BED0();
  }

LABEL_7:
  sub_254F9BED0();

  return sub_254F9B9C0();
}

void StructuredContext.UIMetadata.Window.init(from:)()
{
  sub_254F4E9D0();
  v2 = v1;
  v4 = v3;
  v5 = sub_254F52F94(&qword_27F760E40);
  sub_254F4DF18();
  v7 = v6;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  sub_254F4EF24(v2, v2[3]);
  sub_254F5B364();
  sub_254F9BF10();
  if (v0)
  {
    sub_254F4DA5C(v2);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_254F4F38C();
    v10 = sub_254F9BCD0();
    type metadata accessor for CGRect(0);
    LOBYTE(v26[0]) = 1;
    sub_254F4F2D0(&qword_280C459C0);
    sub_254F9BC90();
    v45 = v27;
    v24 = v28;
    v11 = v30;
    v25 = v29;
    v43 = v31;
    LOBYTE(v27) = 2;
    sub_254F4F38C();
    v22 = sub_254F9BC70();
    v23 = v11;
    v41 = v12 & 1;
    v39 = 3;
    sub_254F4F38C();
    v13 = sub_254F9BC50();
    LOBYTE(v11) = v10 & 1;
    HIDWORD(v20) = v10 & 1;
    v14 = *(v7 + 8);
    v21 = v13;
    v16 = v15;
    v14(v9, v5);
    LOBYTE(v26[0]) = v11;
    *(v26 + 1) = *v44;
    HIDWORD(v26[0]) = *&v44[3];
    v26[1] = v45;
    v17 = v24;
    v26[2] = v24;
    v26[3] = v25;
    v26[4] = v23;
    LOBYTE(v11) = v43;
    LOBYTE(v26[5]) = v43;
    *(&v26[5] + 1) = *v42;
    HIDWORD(v26[5]) = *&v42[3];
    v18 = v22;
    v26[6] = v22;
    v19 = v41;
    LOBYTE(v26[7]) = v41;
    HIDWORD(v26[7]) = *&v40[3];
    *(&v26[7] + 1) = *v40;
    v26[8] = v21;
    v26[9] = v16;
    memcpy(v4, v26, 0x50uLL);
    sub_254F5A1D0(v26, &v27);
    sub_254F4DA5C(v2);
    LOBYTE(v27) = BYTE4(v20);
    *(&v27 + 1) = *v44;
    HIDWORD(v27) = *&v44[3];
    v28 = v45;
    v29 = v17;
    v30 = v25;
    v31 = v23;
    v32 = v11;
    *v33 = *v42;
    *&v33[3] = *&v42[3];
    v34 = v18;
    v35 = v19;
    *&v36[3] = *&v40[3];
    *v36 = *v40;
    v37 = v21;
    v38 = v16;
    sub_254F5A1A0(&v27);
  }

  sub_254F4F348();
}

uint64_t sub_254F5ABF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x776F646E6977 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254F9BE30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254F5AC6C()
{
  sub_254F9BEB0();
  MEMORY[0x259C2FEE0](0);
  return sub_254F9BF00();
}

uint64_t sub_254F5ACCC()
{
  sub_254F9BEB0();
  MEMORY[0x259C2FEE0](0);
  return sub_254F9BF00();
}

uint64_t sub_254F5AD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F5ABF8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254F5AD58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F568F0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_254F5AD84(uint64_t a1)
{
  v2 = sub_254F5B3B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F5ADC0(uint64_t a1)
{
  v2 = sub_254F5B3B8();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredContext.UIMetadata.encode(to:)()
{
  sub_254F4E9D0();
  v2 = v1;
  v3 = sub_254F52F94(&qword_27F760E48);
  sub_254F4DF18();
  v5 = v4;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F4E558();
  sub_254F4E4E4();
  memcpy(v6, v7, v8);
  sub_254F4EF24(v2, v2[3]);
  sub_254F5A1D0(v11, v10);
  sub_254F5B3B8();
  sub_254F4F360();
  sub_254F9BF20();
  memcpy(v10, v11, sizeof(v10));
  sub_254F5B40C();
  sub_254F4E2F0();
  sub_254F9BE00();
  memcpy(v9, v10, sizeof(v9));
  sub_254F5A1A0(v9);
  (*(v5 + 8))(v0, v3);
  sub_254F4F348();
}

uint64_t _s22IntelligenceFlowShared17StructuredContextV10UIMetadataV6WindowV9hashValueSivg_0()
{
  sub_254F9BEB0();
  StructuredContext.UIMetadata.Window.hash(into:)();
  return sub_254F9BF00();
}

void StructuredContext.UIMetadata.init(from:)()
{
  sub_254F4E9D0();
  v2 = v1;
  v4 = v3;
  v5 = sub_254F52F94(&qword_27F760E50);
  sub_254F4DF18();
  v7 = v6;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  v9 = &v10[-v8];
  sub_254F4EF24(v2, v2[3]);
  sub_254F5B3B8();
  sub_254F9BF10();
  if (!v0)
  {
    sub_254F5B460();
    sub_254F9BD10();
    (*(v7 + 8))(v9, v5);
    memcpy(v4, v10, 0x50uLL);
  }

  sub_254F4DA5C(v2);
  sub_254F4F348();
}

uint64_t sub_254F5B12C()
{
  sub_254F9BEB0();
  StructuredContext.UIMetadata.Window.hash(into:)();
  return sub_254F9BF00();
}

uint64_t sub_254F5B168(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x259C2FF10](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x259C2FF10](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x259C2FF10](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x259C2FF10](*&v9);
}

uint64_t sub_254F5B1EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C2FEE0](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_254F9B9C0();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_254F5B264(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_254F5B2A8()
{
  result = qword_280C45C70;
  if (!qword_280C45C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C70);
  }

  return result;
}

unint64_t sub_254F5B364()
{
  result = qword_280C46218;
  if (!qword_280C46218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46218);
  }

  return result;
}

unint64_t sub_254F5B3B8()
{
  result = qword_280C46230;
  if (!qword_280C46230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46230);
  }

  return result;
}

unint64_t sub_254F5B40C()
{
  result = qword_280C46200;
  if (!qword_280C46200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46200);
  }

  return result;
}

unint64_t sub_254F5B460()
{
  result = qword_280C45C78;
  if (!qword_280C45C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C78);
  }

  return result;
}

unint64_t sub_254F5B4B8()
{
  result = qword_27F760E58;
  if (!qword_27F760E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760E58);
  }

  return result;
}

unint64_t sub_254F5B510()
{
  result = qword_27F760E60;
  if (!qword_27F760E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760E60);
  }

  return result;
}

unint64_t sub_254F5B568()
{
  result = qword_27F760E68;
  if (!qword_27F760E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760E68);
  }

  return result;
}

uint64_t sub_254F5B5C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_254F5B604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_254F5B688(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 72);
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

uint64_t sub_254F5B6DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t _s10UIMetadataV10CodingKeysOwet(unsigned int *a1, int a2)
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

_BYTE *_s10UIMetadataV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s10UIMetadataV6WindowV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s14OnScreenUITextV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s14OnScreenUITextV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_254F5BA9C()
{
  result = qword_27F760E70;
  if (!qword_27F760E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760E70);
  }

  return result;
}

unint64_t sub_254F5BAF4()
{
  result = qword_27F760E78;
  if (!qword_27F760E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760E78);
  }

  return result;
}

unint64_t sub_254F5BB4C()
{
  result = qword_27F760E80;
  if (!qword_27F760E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760E80);
  }

  return result;
}

unint64_t sub_254F5BBA4()
{
  result = qword_280C46220;
  if (!qword_280C46220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46220);
  }

  return result;
}

unint64_t sub_254F5BBFC()
{
  result = qword_280C46228;
  if (!qword_280C46228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46228);
  }

  return result;
}

unint64_t sub_254F5BC54()
{
  result = qword_280C46208;
  if (!qword_280C46208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46208);
  }

  return result;
}

unint64_t sub_254F5BCAC()
{
  result = qword_280C46210;
  if (!qword_280C46210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46210);
  }

  return result;
}

unint64_t sub_254F5BD04()
{
  result = qword_280C461E0;
  if (!qword_280C461E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461E0);
  }

  return result;
}

unint64_t sub_254F5BD5C()
{
  result = qword_280C461E8;
  if (!qword_280C461E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461E8);
  }

  return result;
}

uint64_t sub_254F5BDB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C2FEE0](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v5 += 24;

      sub_254F9B9C0();
      sub_254F9BEE0();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_254F5BE74()
{

  return sub_254F9BD10();
}

uint64_t sub_254F5BEA0()
{

  return sub_254F9BBD0();
}

uint64_t StructuredContext.SiriRequestContext.sessionID.setter()
{
  sub_254F5653C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.requestID.setter()
{
  sub_254F5653C();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.inputOrigin.setter()
{
  sub_254F5653C();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.responseMode.setter()
{
  sub_254F5653C();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.deviceRestrictions.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.bargeInModes.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.identifiedUser.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 104);
  return sub_254F5C238(v2, v3);
}

uint64_t sub_254F5C238(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t StructuredContext.SiriRequestContext.identifiedUser.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  result = sub_254F5C28C(*(v1 + 88), *(v1 + 96));
  *(v1 + 88) = v2;
  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
  return result;
}

uint64_t sub_254F5C28C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t StructuredContext.SiriRequestContext.encodedLocation.getter()
{
  v0 = sub_254F4E364();
  sub_254F5C2EC(v0, v1);
  return sub_254F4E364();
}

uint64_t sub_254F5C2EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_254F5C300(a1, a2);
  }

  return a1;
}

uint64_t sub_254F5C300(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t StructuredContext.SiriRequestContext.encodedLocation.setter()
{
  sub_254F5653C();
  result = sub_254F5C38C(*(v1 + 112), *(v1 + 120));
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t sub_254F5C38C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_254F5C3A0(a1, a2);
  }

  return a1;
}

uint64_t sub_254F5C3A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t StructuredContext.SiriRequestContext.countryCode.setter()
{
  sub_254F5653C();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.siriLocale.setter()
{
  sub_254F5653C();

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.contentRestrictions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 168);
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = *(v1 + 196);
  v7 = *(v1 + 192);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 36) = v6;
  *(a1 + 32) = v7;
  return sub_254F5C540(v2, v3, v4);
}

uint64_t sub_254F5C540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

__n128 StructuredContext.SiriRequestContext.contentRestrictions.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = v1 + 192;
  sub_254F5C5AC(*(v5 - 32), *(v5 - 24), *(v5 - 16));
  result = *a1;
  v7 = *(a1 + 16);
  *(v5 - 32) = *a1;
  *(v5 - 16) = v7;
  *(v5 + 4) = v4;
  *v5 = v3;
  return result;
}

uint64_t sub_254F5C5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t StructuredContext.SiriRequestContext.uiScale.setter(uint64_t result, char a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2 & 1;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.temperatureUnit.setter()
{
  sub_254F5653C();

  *(v1 + 216) = v2;
  *(v1 + 224) = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.meCard.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 240), sizeof(__dst));
  memcpy(a1, (v1 + 240), 0x58uLL);
  return sub_254F5C750(__dst, &v4);
}

uint64_t sub_254F5C750(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F52F94(&qword_27F760E98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *StructuredContext.SiriRequestContext.meCard.setter(const void *a1)
{
  memcpy(__dst, (v1 + 240), sizeof(__dst));
  sub_254F60B2C(__dst, &qword_27F760E98);
  return memcpy((v1 + 240), a1, 0x58uLL);
}

uint64_t StructuredContext.SiriRequestContext.ContentRestriction.appRestriction.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.ContentRestriction.countryCode.setter()
{
  sub_254F5653C();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.ContentRestriction.movieRestriction.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.ContentRestriction.tvRestriction.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.ContentRestriction.init(appRestriction:countryCode:movieRestriction:tvRestriction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 4) = BYTE4(result) & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 28) = BYTE4(a4) & 1;
  *(a6 + 32) = a5;
  *(a6 + 36) = BYTE4(a5) & 1;
  return result;
}

uint64_t static StructuredContext.SiriRequestContext.ContentRestriction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  v9 = *(a1 + 32);
  v10 = *(a1 + 36);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 28);
  v14 = *(a2 + 32);
  v15 = *(a2 + 36);
  if (v4)
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v16 = *(a2 + 4);
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v17 = v5 == *(a2 + 8) && v6 == v11;
    if (!v17 && (sub_254F9BE30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v8)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v12)
    {
      v18 = v13;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v10)
  {
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v14)
    {
      v20 = v15;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_254F5CAFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7274736552707061 && a2 == 0xEE006E6F69746369;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000254FA64D0 == a2;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6972747365527674 && a2 == 0xED00006E6F697463)
      {

        return 3;
      }

      else
      {
        v9 = sub_254F9BE30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_254F5CC70(char a1)
{
  result = 0x7274736552707061;
  switch(a1)
  {
    case 1:
      result = 0x437972746E756F63;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6972747365527674;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F5CD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F5CAFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F5CD48(uint64_t a1)
{
  v2 = sub_254F5CF88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F5CD84(uint64_t a1)
{
  v2 = sub_254F5CF88();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredContext.SiriRequestContext.ContentRestriction.encode(to:)()
{
  sub_254F4E9D0();
  v3 = v2;
  v4 = sub_254F52F94(&qword_27F760EA0);
  sub_254F4DF18();
  v6 = v5;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F4E558();
  sub_254F4EFBC(v3, v3[3]);
  sub_254F5CF88();
  sub_254F4F360();
  sub_254F9BF20();
  sub_254F9BD90();
  if (!v0)
  {
    sub_254F509D0();
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F4E2F0();
    sub_254F9BD90();
    sub_254F4E2F0();
    sub_254F9BD90();
  }

  (*(v6 + 8))(v1, v4);
  sub_254F4FC6C();
  sub_254F4F348();
}

unint64_t sub_254F5CF88()
{
  result = qword_27F760EA8;
  if (!qword_27F760EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760EA8);
  }

  return result;
}

void StructuredContext.SiriRequestContext.ContentRestriction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  sub_254F4E9D0();
  sub_254F4F268();
  v14 = v13;
  sub_254F52F94(&qword_27F760EB0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  v39 = 1;
  sub_254F4EFBC(v11, v11[3]);
  sub_254F5CF88();
  sub_254F4E9E8();
  sub_254F9BF10();
  if (v12)
  {
    sub_254F4DA5C(v11);
    v29 = 0;
    v30 = 1;
    v31 = *(&a11 + 1);
    v32 = HIBYTE(a11);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 1;
    v37 = 0;
    v38 = v39;
  }

  else
  {
    sub_254F64260();
    v15 = sub_254F9BCA0();
    v16 = v15;
    v26 = v14;
    v41 = BYTE4(v15) & 1;
    sub_254F64260();
    v17 = sub_254F9BC50();
    v19 = v18;
    LOBYTE(v29) = 2;
    sub_254F64260();
    v20 = sub_254F9BCA0();
    v21 = v20;
    v40 = BYTE4(v20) & 1;
    sub_254F64260();
    v22 = sub_254F9BCA0();
    v23 = sub_254F64298();
    v24(v23);
    v39 = BYTE4(v22) & 1;
    LODWORD(v27) = v16;
    BYTE4(v27) = v41;
    *(&v27 + 1) = v17;
    *v28 = v19;
    *&v28[8] = v21;
    v28[12] = v40;
    *&v28[16] = v22;
    v28[20] = BYTE4(v22) & 1;
    v25 = *v28;
    *v26 = v27;
    *(v26 + 16) = v25;
    *(v26 + 29) = *&v28[13];
    sub_254F5D2D8(&v27, &v29);
    sub_254F4DA5C(v11);
    v29 = v16;
    v30 = v41;
    v33 = v17;
    v34 = v19;
    v35 = v21;
    v36 = v40;
    v37 = v22;
    v38 = BYTE4(v22) & 1;
  }

  sub_254F5D2A8(&v29);
  sub_254F643E4();
  sub_254F4F348();
}

uint64_t StructuredContext.SiriRequestContext.User.userID.setter()
{
  sub_254F5653C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

unint64_t StructuredContext.SiriRequestContext.User.Classification.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.User.init(userID:isOnlyUserInHome:classification:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 17) = v5;
  return result;
}

uint64_t static StructuredContext.SiriRequestContext.User.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_254F9BE30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }

LABEL_15:
    if (v5 == 5)
    {
      if (v8 != 5)
      {
        return 0;
      }
    }

    else if (v8 == 5 || v5 != v8)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v7 != 2 && ((v7 ^ v4) & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_254F5D5E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000254FA64F0 == a2;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163)
    {

      return 2;
    }

    else
    {
      v8 = sub_254F9BE30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_254F5D6FC(char a1)
{
  if (!a1)
  {
    return 0x444972657375;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x6966697373616C63;
}

uint64_t sub_254F5D768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F5D5E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F5D790(uint64_t a1)
{
  v2 = sub_254F5D990();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F5D7CC(uint64_t a1)
{
  v2 = sub_254F5D990();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredContext.SiriRequestContext.User.encode(to:)()
{
  sub_254F4E9D0();
  v3 = v2;
  v4 = sub_254F52F94(&qword_27F760EB8);
  sub_254F4DF18();
  v6 = v5;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F4E558();
  sub_254F4EFBC(v3, v3[3]);
  sub_254F5D990();
  sub_254F4F360();
  sub_254F9BF20();
  sub_254F9BD40();
  if (!v0)
  {
    sub_254F4E2F0();
    sub_254F9BD50();
    sub_254F5D9E4();
    sub_254F4E2F0();
    sub_254F9BD80();
  }

  (*(v6 + 8))(v1, v4);
  sub_254F4FC6C();
  sub_254F4F348();
}

unint64_t sub_254F5D990()
{
  result = qword_27F760EC0;
  if (!qword_27F760EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760EC0);
  }

  return result;
}

unint64_t sub_254F5D9E4()
{
  result = qword_27F760EC8;
  if (!qword_27F760EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760EC8);
  }

  return result;
}

void StructuredContext.SiriRequestContext.User.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  sub_254F4E9D0();
  sub_254F4F268();
  v15 = v14;
  sub_254F52F94(&qword_27F760ED0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F4EFBC(v12, v12[3]);
  sub_254F5D990();
  sub_254F4E9E8();
  sub_254F9BF10();
  if (!v13)
  {
    v16 = sub_254F9BC50();
    v18 = v17;
    v21 = sub_254F9BC60();
    sub_254F5DC10();
    sub_254F9BC90();
    v19 = sub_254F4E508();
    v20(v19);
    *v15 = v16;
    *(v15 + 8) = v18;
    *(v15 + 16) = v21;
    *(v15 + 17) = a12;
  }

  sub_254F4DA5C(v12);

  sub_254F643E4();
  sub_254F4F348();
}

unint64_t sub_254F5DC10()
{
  result = qword_27F760ED8;
  if (!qword_27F760ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760ED8);
  }

  return result;
}

uint64_t StructuredContext.SiriRequestContext.MeCard.givenName.setter()
{
  sub_254F5653C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.MeCard.middleName.setter()
{
  sub_254F5653C();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.MeCard.familyName.setter()
{
  sub_254F5653C();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.MeCard.nickName.setter()
{
  sub_254F5653C();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.MeCard.fullName.setter()
{
  sub_254F5653C();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.MeCard.addresses.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.MeCard.Address.label.setter()
{
  sub_254F5653C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.MeCard.Address.street.setter()
{
  sub_254F5653C();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.MeCard.Address.city.setter()
{
  sub_254F5653C();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.MeCard.Address.state.setter()
{
  sub_254F5653C();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.MeCard.Address.postalCode.setter()
{
  sub_254F5653C();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t StructuredContext.SiriRequestContext.MeCard.Address.countryCode.setter()
{
  sub_254F5653C();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

__n128 StructuredContext.SiriRequestContext.MeCard.Address.init(label:street:city:state:postalCode:countryCode:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t static StructuredContext.SiriRequestContext.MeCard.Address.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v12 = a1[9];
  v11 = a1[10];
  v13 = a1[11];
  v14 = a2[1];
  v15 = a2[2];
  v17 = a2[3];
  v16 = a2[4];
  v19 = a2[5];
  v18 = a2[6];
  v21 = a2[7];
  v20 = a2[8];
  v23 = a2[9];
  v22 = a2[10];
  v24 = a2[11];
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v14)
    {
      v64 = a2[9];
      v67 = a2[4];
      v60 = a1[8];
      v61 = a1[9];
      v58 = a2[11];
      v59 = a2[10];
      v57 = a1[11];
      v26 = a1[10];
      v27 = a2[8];
      v71 = a1[6];
      v73 = a1[5];
      v28 = a1[7];
      v29 = a2[7];
      v30 = a2[6];
      v31 = a1[4];
      v69 = a2[5];
      v32 = a1[2];
      v33 = sub_254F9BE30();
      v4 = v32;
      v16 = v67;
      v19 = v69;
      v5 = v31;
      v7 = v71;
      v8 = v73;
      v18 = v30;
      v21 = v29;
      v9 = v28;
      v20 = v27;
      v11 = v26;
      v13 = v57;
      v24 = v58;
      v22 = v59;
      v10 = v60;
      v12 = v61;
      v23 = v64;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v6)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v15 || v6 != v17)
    {
      v65 = v21;
      v68 = v16;
      v62 = v11;
      v35 = v20;
      v72 = v7;
      v74 = v8;
      v36 = v9;
      v37 = v18;
      v38 = v5;
      v70 = v19;
      v39 = sub_254F9BE30();
      v16 = v68;
      v19 = v70;
      v5 = v38;
      v7 = v72;
      v8 = v74;
      v18 = v37;
      v11 = v62;
      v21 = v65;
      v9 = v36;
      v20 = v35;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v8)
  {
    if (!v19)
    {
      return 0;
    }

    if (v5 != v16 || v8 != v19)
    {
      v63 = v11;
      v66 = v21;
      v41 = v20;
      v42 = v7;
      v43 = v9;
      v44 = v18;
      v45 = sub_254F9BE30();
      v18 = v44;
      v11 = v63;
      v21 = v66;
      v9 = v43;
      v7 = v42;
      v20 = v41;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v9)
  {
    if (!v21)
    {
      return 0;
    }

    if (v7 != v18 || v9 != v21)
    {
      v47 = v24;
      v48 = v11;
      v49 = v20;
      v50 = sub_254F9BE30();
      v20 = v49;
      v11 = v48;
      v24 = v47;
      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v12)
  {
    if (!v23)
    {
      return 0;
    }

    if (v10 != v20 || v12 != v23)
    {
      v52 = v24;
      v53 = v11;
      v54 = sub_254F9BE30();
      v11 = v53;
      v24 = v52;
      if ((v54 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v13)
  {
    if (v24)
    {
      v55 = v11 == v22 && v13 == v24;
      if (v55 || (sub_254F9BE30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v24)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_254F5E4E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746565727473 && a2 == 0xE600000000000000;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 2037672291 && a2 == 0xE400000000000000;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
          {

            return 5;
          }

          else
          {
            v11 = sub_254F9BE30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_254F5E6CC(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 0x746565727473;
      break;
    case 2:
      result = 2037672291;
      break;
    case 3:
      result = 0x6574617473;
      break;
    case 4:
      result = 0x6F436C6174736F70;
      break;
    case 5:
      result = 0x437972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F5E77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F5E4E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F5E7A4(uint64_t a1)
{
  v2 = sub_254F5E9FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F5E7E0(uint64_t a1)
{
  v2 = sub_254F5E9FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredContext.SiriRequestContext.MeCard.Address.encode(to:)()
{
  sub_254F4E9D0();
  v3 = v2;
  v4 = sub_254F52F94(&qword_27F760EE0);
  sub_254F4DF18();
  v6 = v5;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  sub_254F4E558();
  sub_254F4EFBC(v3, v3[3]);
  sub_254F5E9FC();
  sub_254F4F360();
  sub_254F9BF20();
  sub_254F9BD40();
  if (!v0)
  {
    sub_254F509D0();
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F64404();
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F643F0();
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F4E2F0();
    sub_254F9BD40();
  }

  (*(v6 + 8))(v1, v4);
  sub_254F4FC6C();
  sub_254F4F348();
}

unint64_t sub_254F5E9FC()
{
  result = qword_27F760EE8;
  if (!qword_27F760EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760EE8);
  }

  return result;
}

void StructuredContext.SiriRequestContext.MeCard.Address.init(from:)()
{
  sub_254F4E9D0();
  sub_254F4F268();
  v4 = v3;
  v5 = sub_254F52F94(&qword_27F760EF0);
  sub_254F4DF18();
  v7 = v6;
  sub_254F4E30C();
  MEMORY[0x28223BE20]();
  v9 = &v31 - v8;
  v10 = v0[3];
  v11 = v0[4];
  v41 = v0;
  sub_254F4EFBC(v0, v10);
  sub_254F5E9FC();
  sub_254F4E9E8();
  sub_254F9BF10();
  if (v1)
  {
    v40 = v1;
    sub_254F4E4F0();
    sub_254F64350();
    sub_254F4DA5C(v41);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = v11;
    v48 = v7;
    v49 = v0;
    v50 = v4;
    v51 = v2;
    v52 = v39;
    v53 = 0;
    v54 = 0;
  }

  else
  {
    LOBYTE(v43) = 0;
    v37 = sub_254F9BC50();
    v38 = v12;
    v35 = sub_254F642DC(1);
    v36 = v13;
    v14 = sub_254F642DC(2);
    v34 = v15;
    v33 = sub_254F642DC(3);
    v32 = v16;
    v17 = sub_254F642DC(4);
    v39 = v18;
    v19 = sub_254F9BC50();
    v40 = 0;
    v20 = v19;
    v22 = v21;
    (*(v7 + 8))(v9, v5);
    v23 = v37;
    v42[0] = v37;
    v24 = v38;
    v42[1] = v38;
    v25 = v35;
    v42[2] = v35;
    v42[3] = v36;
    v42[4] = v14;
    v31 = v14;
    v26 = v34;
    v42[5] = v34;
    v42[6] = v33;
    v27 = v4;
    v28 = v32;
    v42[7] = v32;
    v42[8] = v17;
    v29 = v17;
    v30 = v39;
    v42[9] = v39;
    v42[10] = v20;
    v42[11] = v22;
    memcpy(v27, v42, 0x60uLL);
    sub_254F5648C(v42, &v43);
    sub_254F4DA5C(v41);
    v43 = v23;
    v44 = v24;
    v45 = v25;
    v46 = v36;
    v47 = v31;
    v48 = v26;
    v49 = v33;
    v50 = v28;
    v51 = v29;
    v52 = v30;
    v53 = v20;
    v54 = v22;
  }

  sub_254F564E8(&v43);
  sub_254F4F348();
}

__n128 StructuredContext.SiriRequestContext.MeCard.init(givenName:middleName:familyName:nickName:fullName:addresses:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

uint64_t static StructuredContext.SiriRequestContext.MeCard.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v12 = a1[9];
  v11 = a1[10];
  v13 = a2[1];
  v14 = a2[2];
  v16 = a2[3];
  v15 = a2[4];
  v18 = a2[5];
  v17 = a2[6];
  v19 = a2[7];
  v20 = a2[8];
  v21 = a2[9];
  v22 = a2[10];
  if (v3)
  {
    if (!v13)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v13)
    {
      v55 = a2[2];
      v56 = a1[2];
      v63 = a2[8];
      v65 = a1[7];
      v59 = a1[8];
      v61 = a2[9];
      v57 = a2[10];
      v58 = a1[9];
      v24 = a1[10];
      v25 = a1[6];
      v26 = a2[7];
      v27 = a2[6];
      v28 = a1[5];
      v29 = a1[4];
      v30 = a2[5];
      v31 = a2[4];
      v32 = sub_254F9BE30();
      v14 = v55;
      v4 = v56;
      v15 = v31;
      v18 = v30;
      v5 = v29;
      v8 = v28;
      v17 = v27;
      v19 = v26;
      v7 = v25;
      v11 = v24;
      v22 = v57;
      v12 = v58;
      v9 = v59;
      v21 = v61;
      v20 = v63;
      v10 = v65;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v6)
  {
    if (!v16)
    {
      return 0;
    }

    if (v4 != v14 || v6 != v16)
    {
      v64 = v11;
      v66 = v8;
      v34 = v7;
      v60 = v19;
      v62 = v18;
      v35 = v17;
      v36 = v5;
      v37 = v15;
      v38 = sub_254F9BE30();
      v15 = v37;
      v19 = v60;
      v18 = v62;
      v5 = v36;
      v11 = v64;
      v8 = v66;
      v17 = v35;
      v7 = v34;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v8)
  {
    if (!v18)
    {
      return 0;
    }

    if (v5 != v15 || v8 != v18)
    {
      v40 = v10;
      v41 = v20;
      v42 = v11;
      v43 = v7;
      v44 = v19;
      v45 = v17;
      v46 = sub_254F9BE30();
      v17 = v45;
      v19 = v44;
      v7 = v43;
      v11 = v42;
      v20 = v41;
      v10 = v40;
      if ((v46 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v10)
  {
    if (!v19)
    {
      return 0;
    }

    if (v7 != v17 || v10 != v19)
    {
      v48 = v20;
      v49 = v11;
      v50 = sub_254F9BE30();
      v11 = v49;
      v20 = v48;
      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v12)
  {
    if (v21)
    {
      if (v9 == v20 && v12 == v21)
      {
        goto LABEL_44;
      }

      v52 = v11;
      v53 = sub_254F9BE30();
      v11 = v52;
      if (v53)
      {
        goto LABEL_44;
      }
    }

    return 0;
  }

  if (v21)
  {
    return 0;
  }

LABEL_44:

  return sub_254F55268(v11, v22);
}

uint64_t sub_254F5F10C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E6B63696ELL && a2 == 0xE800000000000000;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6573736572646461 && a2 == 0xE900000000000073)
          {

            return 5;
          }

          else
          {
            v11 = sub_254F9BE30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_254F5F308(char a1)
{
  result = 0x6D614E6E65766967;
  switch(a1)
  {
    case 1:
      v3 = 0x656C6464696DLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
    case 2:
      v3 = 0x796C696D6166;
      return v3 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
    case 3:
      v4 = 1801677166;
      goto LABEL_7;
    case 4:
      v4 = 1819047270;
LABEL_7:
      result = v4 | 0x656D614E00000000;
      break;
    case 5:
      result = 0x6573736572646461;
      break;
    default:
      return result;
  }

  return result;
}