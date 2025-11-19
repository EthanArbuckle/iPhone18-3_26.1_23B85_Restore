uint64_t TranscriptProtoAction.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (v26 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (v26 - v8);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_20E322B00();
  MEMORY[0x20F32BF40](0x65286E6F69746341, 0xEF203A6449727078);
  v10 = type metadata accessor for TranscriptProtoAction(0);
  sub_20E0486F4(v0 + v10[6], v9, &qword_27C8639D0, &unk_20E33C230);
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_20E04875C(v9, &qword_27C8639D0, &unk_20E33C230);
    v12 = 0xE300000000000000;
    v13 = 4999502;
  }

  else
  {
    v27 = 101;
    v28 = 0xE100000000000000;
    v26[1] = *v9 - 1;
    v14 = sub_20E322D50();
    MEMORY[0x20F32BF40](v14);

    v13 = v27;
    v12 = v28;
    sub_20E2FFB7C(v9, type metadata accessor for TranscriptProtoStatementID);
  }

  MEMORY[0x20F32BF40](v13, v12);

  MEMORY[0x20F32BF40](0x64496C6F6F74202CLL, 0xEA0000000000203ALL);
  sub_20E0486F4(v0 + v10[9], v5, &qword_27C8639C8, &unk_20E323870);
  v15 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  if ((*(*(v15 - 8) + 48))(v5, 1, v15) == 1)
  {
    sub_20E04875C(v5, &qword_27C8639C8, &unk_20E323870);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = *v5;
    v17 = v5[1];

    sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  }

  v27 = v16;
  v28 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D280, &qword_20E356678);
  sub_20E322BA0();

  MEMORY[0x20F32BF40](0x656C646E7562202CLL, 0xEC000000203A6449);
  v18 = (v1 + v10[7]);
  if (v18[1])
  {
    v19 = *v18;
    v20 = v18[1];
  }

  else
  {
    v20 = 0xE300000000000000;
    v19 = 7104878;
  }

  MEMORY[0x20F32BF40](v19, v20);

  MEMORY[0x20F32BF40](0xD000000000000013, 0x800000020E364160);
  v21 = *(v1 + 8);
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  v22 = sub_20E322800();
  MEMORY[0x20F32BF40](v22);

  MEMORY[0x20F32BF40](0x666E6F437369202CLL, 0xEF203A64656D7269);
  if (*v1)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*v1)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x20F32BF40](v23, v24);

  MEMORY[0x20F32BF40](41, 0xE100000000000000);
  return v29;
}

unint64_t TranscriptProtoClientAction.description.getter()
{
  sub_20E322B00();

  MEMORY[0x20F32BF40](*v0, v0[1]);
  MEMORY[0x20F32BF40](0x656D61726170202CLL, 0xEE00203A73726574);
  v1 = v0[2];
  type metadata accessor for ToolKitProtoTypedValue(0);
  v2 = sub_20E322800();
  MEMORY[0x20F32BF40](v2);

  MEMORY[0x20F32BF40](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t TranscriptProtoPayloadEnum.PayloadType.hashValue.getter()
{
  v1 = *v0;
  sub_20E322DE0();
  MEMORY[0x20F32C430](v1);
  return sub_20E322E00();
}

uint64_t TranscriptProtoPayloadEnum.payloadType.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E2FFB14(v2, v7, type metadata accessor for TranscriptProtoPayloadEnum);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v9 = 39;
      goto LABEL_41;
    case 2:
      v9 = 2;
      goto LABEL_41;
    case 3:
      v9 = 3;
      goto LABEL_41;
    case 4:
      v9 = 4;
      goto LABEL_41;
    case 5:
      v9 = 5;
      goto LABEL_41;
    case 6:
      v9 = 6;
      goto LABEL_41;
    case 7:
      v9 = 9;
      goto LABEL_41;
    case 8:
      v9 = 44;
      goto LABEL_41;
    case 9:
      v9 = 15;
      goto LABEL_41;
    case 10:
      v9 = 17;
      goto LABEL_41;
    case 11:
      v9 = 21;
      goto LABEL_41;
    case 12:
      v9 = 22;
      goto LABEL_41;
    case 13:
      v9 = 24;
      goto LABEL_41;
    case 14:
      v9 = 23;
      goto LABEL_41;
    case 15:
      v9 = 25;
      goto LABEL_41;
    case 16:
      v9 = 27;
      goto LABEL_41;
    case 17:
      v9 = 26;
      goto LABEL_41;
    case 18:
      v9 = 28;
      goto LABEL_41;
    case 19:
      v9 = 29;
      goto LABEL_41;
    case 20:
      v9 = 40;
      goto LABEL_41;
    case 21:
      v9 = 32;
      goto LABEL_41;
    case 22:
      v9 = 33;
      goto LABEL_41;
    case 23:
      v9 = 34;
      goto LABEL_41;
    case 24:
      v9 = 35;
      goto LABEL_41;
    case 25:
      v9 = 36;
      goto LABEL_41;
    case 26:
      v9 = 37;
      goto LABEL_41;
    case 27:
      v9 = 38;
      goto LABEL_41;
    case 28:
      v9 = 45;
      goto LABEL_41;
    case 29:
      v9 = 46;
      goto LABEL_41;
    case 30:
      v9 = 47;
      goto LABEL_41;
    case 31:
      v9 = 48;
      goto LABEL_41;
    case 32:
      v9 = 49;
      goto LABEL_41;
    case 33:
      v9 = 50;
      goto LABEL_41;
    case 34:
      v9 = 53;
      goto LABEL_41;
    case 35:
      v9 = 51;
      goto LABEL_41;
    case 36:
      v9 = 52;
      goto LABEL_41;
    case 37:
      *a1 = 11;
      return result;
    case 38:
      *a1 = 12;
      return result;
    default:
      v9 = 43;
LABEL_41:
      *a1 = v9;
      return sub_20E2FFB7C(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  }
}

uint64_t TranscriptProtoStatementID.asExprID.getter()
{
  v3 = *v0 - 1;
  v1 = sub_20E322D50();
  MEMORY[0x20F32BF40](v1);

  return 101;
}

uint64_t TranscriptProtoSystemPromptResolution.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F10, &unk_20E33C3B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - v3;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_20E322B00();
  MEMORY[0x20F32BF40](0xD000000000000020, 0x800000020E3641A0);
  v8 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D280, &qword_20E356678);
  sub_20E322BA0();
  MEMORY[0x20F32BF40](0x634172657375202CLL, 0xEE00203A6E6F6974);
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  sub_20E0486F4(v0 + *(v5 + 24), v4, &qword_27C863F10, &unk_20E33C3B0);
  v6 = sub_20E3228D0();
  MEMORY[0x20F32BF40](v6);

  MEMORY[0x20F32BF40](41, 0xE100000000000000);
  return v9;
}

unint64_t TranscriptProtoActionFailureFailureEnum.description.getter()
{
  v1 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E2FFB14(v0, v4, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6173694469666977;
  switch(EnumCaseMultiPayload)
  {
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
    case 12:
      result = 0xD000000000000010;
      break;
    case 5:
      return result;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x466B726F7774656ELL;
      break;
    case 8:
      result = 0x466C616974726170;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0x6F4E797469746E65;
      break;
    case 13:
    case 17:
      result = 0x6F54656C62616E75;
      break;
    case 14:
      result = 0x61436E6F69746361;
      break;
    case 15:
      result = 0xD00000000000001BLL;
      break;
    case 16:
      result = 0x69686374614D6F6ELL;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    default:
      sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      result = 0xD000000000000015;
      break;
  }

  return result;
}

char *sub_20E2FFA8C(char *a1, int64_t a2, char a3)
{
  result = sub_20E2FFDA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_20E2FFAAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E2FFB14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E2FFB7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20E2FFBE0()
{
  result = qword_27C86D288;
  if (!qword_27C86D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D288);
  }

  return result;
}

uint64_t _s11PayloadTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCB)
  {
    goto LABEL_17;
  }

  if (a2 + 53 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 53) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 53;
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

      return (*a1 | (v4 << 8)) - 53;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 53;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x36;
  v8 = v6 - 54;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11PayloadTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 53 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 53) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCB)
  {
    v4 = 0;
  }

  if (a2 > 0xCA)
  {
    v5 = ((a2 - 203) >> 8) + 1;
    *result = a2 + 53;
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
    *result = a2 + 53;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

size_t sub_20E2FFD84(size_t a1, int64_t a2, char a3)
{
  result = sub_20E2FFEB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20E2FFDA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A98, &qword_20E33C070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

size_t sub_20E2FFEB4(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AB8, &qword_20E33C090);
  v10 = *(sub_20E322600() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_1(v13);
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
  v15 = *(sub_20E322600() - 8);
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

uint64_t sub_20E30008C()
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E3001BC()
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

unint64_t ReliabilityCategory.name.getter()
{
  v1 = *v0 >> 4;
  if (v1 <= 3)
  {
    v6 = 0x617461444D424549;
    if (v1)
    {
      v6 = 0xD000000000000010;
    }

    if (*v0 >> 4 <= 1u)
    {
      return v6;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    v2 = 0xD00000000000001CLL;
    v3 = 0xD00000000000001ALL;
    if (v1 != 7)
    {
      v3 = 0x745372657070614DLL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    if (v1 == 4)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD000000000000019;
    }

    if (*v0 >> 4 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t IEBMDataIssues.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6576457974706D65;
  v3 = 0x746E6576456C696ELL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x5364696C61766E69;
  if (v1 != 1)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = v4;
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

unint64_t DataEncodingError.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

unint64_t FeaturizationError.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

unint64_t IFTranscriptSELFMapperIssues.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000024;
  if (v1 != 3)
  {
    v2 = 0xD000000000000017;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000013;
  if (!*v0)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    result = v4;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

unint64_t MapperStats.rawValue.getter()
{
  v1 = 0xD000000000000014;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

LighthouseDataProcessor::IEBMDataIssues_optional __swiftcall IEBMDataIssues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E322C20();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20E300744()
{
  *v0;
  *v0;
  *v0;
  sub_20E3228F0();
}

void sub_20E300870(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0079646F42746ELL;
  v4 = 0x6576457974706D65;
  v5 = 0xEF64616F6C796150;
  v6 = 0x746E6576456C696ELL;
  v7 = 0x800000020E359F70;
  if (v2 != 4)
  {
    v7 = 0x800000020E359F90;
  }

  if (v2 != 3)
  {
    v6 = 0xD000000000000015;
    v5 = v7;
  }

  v8 = 0xED00006D61657274;
  v9 = 0x5364696C61766E69;
  if (v2 != 1)
  {
    v9 = 0xD000000000000016;
    v8 = 0x800000020E359F40;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t DataUploadIssues.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_20E322C20();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_20E3009B0()
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

uint64_t sub_20E300A24()
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

uint64_t sub_20E300AB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v3)
  {
    v5 = "provisionalEventInitFailed";
  }

  else
  {
    v5 = "jsonEncodingError";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (*a2)
  {
    v8 = "jsonEncodingError";
  }

  else
  {
    v8 = "provisionalEventInitFailed";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_20E322D60();
  }

  return v10 & 1;
}

uint64_t sub_20E300B5C()
{
  v1 = *v0;
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E300BDC()
{
  *v0;
  sub_20E3228F0();
}

uint64_t sub_20E300C48()
{
  v1 = *v0;
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

void sub_20E300CD0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v1)
  {
    v3 = "jsonEncodingError";
  }

  else
  {
    v3 = "provisionalEventInitFailed";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t DataDecodingError.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_20E322C20();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_20E300D68()
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

uint64_t sub_20E300DDC()
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

uint64_t sub_20E300E68@<X0>(char *a1@<X8>)
{
  v2 = sub_20E322C20();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_20E300EC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000019;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = "jsonDecodingError";
  }

  else
  {
    v5 = "emptyTranscriptEvent";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000019;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (*a2)
  {
    v8 = "emptyTranscriptEvent";
  }

  else
  {
    v8 = "jsonDecodingError";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_20E322D60();
  }

  return v10 & 1;
}

uint64_t sub_20E300F74()
{
  v1 = *v0;
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E300FF4()
{
  *v0;
  sub_20E3228F0();
}

uint64_t sub_20E301060()
{
  v1 = *v0;
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E3010E8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E322C20();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_20E301144(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*v1)
  {
    v3 = "emptyTranscriptEvent";
  }

  else
  {
    v3 = "jsonDecodingError";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t AppIntentProcessingIssues.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_20E322C20();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_20E3011DC()
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

uint64_t sub_20E301250()
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

LighthouseDataProcessor::IFTranscriptSELFMapperIssues_optional __swiftcall IFTranscriptSELFMapperIssues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E322C20();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20E301338()
{
  v1 = *v0;
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E301408()
{
  *v0;
  *v0;
  *v0;
  sub_20E3228F0();
}

uint64_t sub_20E3014C4()
{
  v1 = *v0;
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

void sub_20E30159C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "uuidConversionError";
  v4 = "undefinedIFSessionError";
  v5 = 0xD000000000000024;
  if (v2 != 3)
  {
    v5 = 0xD000000000000017;
    v4 = "anscriptEventPayload";
  }

  if (v2 == 2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = v5;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  v7 = 0xD000000000000013;
  if (*v1)
  {
    v8 = "selfMessageInstantiationError";
  }

  else
  {
    v7 = 0xD00000000000001DLL;
    v8 = "ntPayload";
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v7 = v6;
    v9 = v3;
  }

  *a1 = v7;
  a1[1] = v9 | 0x8000000000000000;
}

uint64_t IFTelemetryTimestampIssues.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_20E322C20();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_20E301684()
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

uint64_t sub_20E3016F8()
{
  sub_20E322DE0();
  sub_20E3228F0();
  return sub_20E322E00();
}

uint64_t sub_20E301758@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E322C20();

  *a2 = v5 != 0;
  return result;
}

LighthouseDataProcessor::MapperStats_optional __swiftcall MapperStats.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E322C20();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_20E301828()
{
  result = qword_27C86D290;
  if (!qword_27C86D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D290);
  }

  return result;
}

unint64_t sub_20E301880()
{
  result = qword_27C86D298;
  if (!qword_27C86D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D298);
  }

  return result;
}

unint64_t sub_20E3018D8()
{
  result = qword_27C86D2A0;
  if (!qword_27C86D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D2A0);
  }

  return result;
}

unint64_t sub_20E301930()
{
  result = qword_27C86D2A8;
  if (!qword_27C86D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D2A8);
  }

  return result;
}

unint64_t sub_20E301988()
{
  result = qword_27C86D2B0;
  if (!qword_27C86D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D2B0);
  }

  return result;
}

unint64_t sub_20E3019E0()
{
  result = qword_27C86D2B8;
  if (!qword_27C86D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D2B8);
  }

  return result;
}

unint64_t sub_20E301A38()
{
  result = qword_27C86D2C0;
  if (!qword_27C86D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D2C0);
  }

  return result;
}

unint64_t sub_20E301A90()
{
  result = qword_27C86D2C8;
  if (!qword_27C86D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D2C8);
  }

  return result;
}

uint64_t sub_20E301AE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "rawBiomeEventCount";
  v4 = 0xD000000000000014;
  if (v2 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (v2 == 1)
  {
    v6 = "rawBiomeEventCount";
  }

  else
  {
    v6 = "preMapperEventCount";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "startTimeGreaterThanEndTime";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v3 = "preMapperEventCount";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "startTimeGreaterThanEndTime";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E322D60();
  }

  return v11 & 1;
}

unint64_t sub_20E301BBC()
{
  result = qword_27C86D2D0;
  if (!qword_27C86D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D2D0);
  }

  return result;
}

uint64_t sub_20E301C10()
{
  v1 = *v0;
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E301CA8()
{
  *v0;
  *v0;
  sub_20E3228F0();
}

uint64_t sub_20E301D2C()
{
  v1 = *v0;
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

void sub_20E301DCC(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "rawBiomeEventCount";
  v4 = 0xD000000000000014;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v3 = "preMapperEventCount";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "startTimeGreaterThanEndTime";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t getEnumTagSinglePayload for ReliabilityCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x18)
  {
    goto LABEL_17;
  }

  if (a2 + 232 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 232) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 232;
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

      return (*a1 | (v4 << 8)) - 232;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 232;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 4) & 0xFFFFFFEF | (16 * ((*a1 >> 3) & 1))) ^ 0x1F;
  if (v6 >= 0x17)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ReliabilityCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 232 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 232) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x18)
  {
    v4 = 0;
  }

  if (a2 > 0x17)
  {
    v5 = ((a2 - 24) >> 8) + 1;
    *result = a2 - 24;
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
    *result = 8 * (((-a2 & 0x10) != 0) - 2 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20E3020B4(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_20E3227C0();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_20E3227D0();
}

uint64_t sub_20E302140()
{
  sub_20E302210();
  result = sub_20E322A70();
  qword_280E12C68 = result;
  return result;
}

uint64_t sub_20E3021A8()
{
  sub_20E302210();
  result = sub_20E322A70();
  qword_27C8CC2A8 = result;
  return result;
}

unint64_t sub_20E302210()
{
  result = qword_280E12B50;
  if (!qword_280E12B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E12B50);
  }

  return result;
}

void *sub_20E30225C(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868560, &unk_20E33C2E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D57D00]) init];
  v15 = v14;
  if (v14)
  {
    [v14 setExists_];
    v16 = objc_allocWithZone(MEMORY[0x277D57D10]);
    v17 = v15;
    v18 = [v16 init];
    [v17 setFailure_];
  }

  sub_20E0486F4(a1, v9, &qword_27C868560, &unk_20E33C2E0);
  v19 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  if ((*(*(v19 - 8) + 48))(v9, 1, v19) == 1)
  {
    sub_20E302998(v9);
    v20 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  }

  else
  {
    sub_20E0486F4(v9, v13, &qword_27C865BD0, &qword_20E3263A8);
    sub_20E302A64(v9, type metadata accessor for TranscriptProtoActionFailureFailure);
    v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
    if ((*(*(v21 - 8) + 48))(v13, 1, v21) != 1)
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          if (v15)
          {
            v31 = [v15 failure];
            if (v31)
            {
              v32 = v31;
              [v31 setUnableToHandleRequest_];
            }
          }

          sub_20E302A64(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
          break;
        case 2u:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setPreflightCheckFailure_;
              goto LABEL_69;
            }
          }

          break;
        case 3u:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setPreciseLocationDisabled_;
              goto LABEL_69;
            }
          }

          break;
        case 4u:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setLocationDisabled_;
              goto LABEL_69;
            }
          }

          break;
        case 5u:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setWifiDisabled_;
              goto LABEL_69;
            }
          }

          break;
        case 6u:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setBluetoothDisabled_;
              goto LABEL_69;
            }
          }

          break;
        case 7u:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setNetworkFailure_;
              goto LABEL_69;
            }
          }

          break;
        case 8u:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setPartialFailure_;
              goto LABEL_69;
            }
          }

          break;
        case 9u:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setUnsupportedOnDevice_;
              goto LABEL_69;
            }
          }

          break;
        case 0xAu:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setFeatureCurrentlyRestricted_;
              goto LABEL_69;
            }
          }

          break;
        case 0xBu:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setEntityNotFound_;
              goto LABEL_69;
            }
          }

          break;
        case 0xCu:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setActionNotAllowed_;
              goto LABEL_69;
            }
          }

          break;
        case 0xDu:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setUnableToUndo_;
              goto LABEL_69;
            }
          }

          break;
        case 0xEu:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setActionCanceled_;
              goto LABEL_69;
            }
          }

          break;
        case 0xFu:
          if (v15)
          {
            goto LABEL_67;
          }

          break;
        case 0x10u:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setNoMatchingTool_;
              goto LABEL_69;
            }
          }

          break;
        case 0x11u:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setUnableToCancel_;
              goto LABEL_69;
            }
          }

          break;
        case 0x12u:
          if (v15)
          {
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setSearchSucceededNoMatchingTool_;
              goto LABEL_69;
            }
          }

          break;
        case 0x13u:
          if (v15)
          {
LABEL_67:
            v29 = [v15 failure];
            if (v29)
            {
              v30 = sel_setValueDisambiguationRejected_;
LABEL_69:
              v33 = v29;
              [v29 v30];
            }
          }

          break;
        default:
          sub_20E302A00(v13, v5);
          v22 = [objc_allocWithZone(MEMORY[0x277D57D08]) init];
          if (v22)
          {
            v23 = v22;
            [v22 setCode_];
            v24 = v5[2];
            v25 = v5[3];
            v26 = sub_20E322860();
            [v23 setDomain_];

            if (v15)
            {
              v27 = [v15 failure];
              if (v27)
              {
                v28 = v27;
                [v27 setActionFailureDeveloperDefinedError_];
              }
            }

            sub_20E302A64(v5, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
          }

          else
          {

            sub_20E302A64(v5, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
            v15 = 0;
          }

          break;
      }
    }
  }

  return v15;
}

uint64_t sub_20E302998(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868560, &unk_20E33C2E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E302A00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E302A64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void CoreAnalyticsEmitter.sendSageMetrics(eventCategory:eventPayload:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v71 = a2;
  v5 = type metadata accessor for UsageMetricsDefinitions();
  v68 = *(v5 - 8);
  v6 = *(v68 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v64 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v69 = &v59 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v59 - v14;
  v16 = sub_20E322010();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v66 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  v70 = v5;
  v22 = a3 + *(v5 + 20);
  sub_20E306D90(0, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_20E04875C(v15, &qword_27C863F30, &qword_20E325D90);
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v23 = sub_20E3227C0();
    __swift_project_value_buffer(v23, qword_27C8CC290);
    v24 = v64;
    sub_20E19CEF0(a3, v64);

    v25 = sub_20E3227B0();
    v26 = sub_20E322A40();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v72 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_20E31B6C4(a1, v71, &v72);
      *(v27 + 12) = 2080;
      v29 = *(v70 + 20);
      sub_20E074360();
      v30 = sub_20E322D50();
      v32 = v31;
      sub_20E19CF54(v24);
      v33 = sub_20E31B6C4(v30, v32, &v72);

      *(v27 + 14) = v33;
      _os_log_impl(&dword_20E031000, v25, v26, "Date can not be fuzzed for: %s, Date: %s, exiting CoreAnalytics logging", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F32CA80](v28, -1, -1);
      MEMORY[0x20F32CA80](v27, -1, -1);
    }

    else
    {

      sub_20E19CF54(v24);
    }
  }

  else
  {
    v64 = v21;
    v65 = a1;
    v62 = *(v17 + 32);
    v63 = v17 + 32;
    v62(v21, v15, v16);
    v34 = v16;
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v35 = sub_20E3227C0();
    __swift_project_value_buffer(v35, qword_27C8CC290);
    sub_20E19CEF0(a3, v11);

    v36 = sub_20E3227B0();
    v37 = sub_20E322A40();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v65;
    v61 = v34;
    if (v38)
    {
      v40 = swift_slowAlloc();
      v60 = a3;
      v41 = v40;
      v59 = swift_slowAlloc();
      v72 = v59;
      *v41 = 136315394;
      *(v41 + 4) = sub_20E31B6C4(v39, v71, &v72);
      *(v41 + 12) = 2080;
      v42 = v37;
      v43 = *(v70 + 20);
      sub_20E074360();
      v44 = sub_20E322D50();
      v46 = v45;
      sub_20E19CF54(v11);
      v47 = sub_20E31B6C4(v44, v46, &v72);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_20E031000, v36, v42, "Logging CoreAnalytics event type: %s, Date: %s", v41, 0x16u);
      v48 = v59;
      swift_arrayDestroy();
      MEMORY[0x20F32CA80](v48, -1, -1);
      v49 = v41;
      a3 = v60;
      MEMORY[0x20F32CA80](v49, -1, -1);
    }

    else
    {

      sub_20E19CF54(v11);
    }

    v50 = *(v67 + 24);
    v70 = *(v67 + 16);
    v51 = v69;
    sub_20E19CEF0(a3, v69);
    v52 = v66;
    v53 = v64;
    v54 = v61;
    (*(v17 + 16))(v66, v64, v61);
    v55 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v56 = (v6 + *(v17 + 80) + v55) & ~*(v17 + 80);
    v57 = swift_allocObject();
    sub_20E3041D4(v51, v57 + v55);
    v62((v57 + v56), v52, v54);
    v58 = swift_allocObject();
    *(v58 + 16) = sub_20E304238;
    *(v58 + 24) = v57;
    (v70)(v65, v71, sub_20E304304, v58);

    (*(v17 + 8))(v53, v54);
  }
}

uint64_t sub_20E3031B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D2E0, &qword_20E356FC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E3229F0();
  v12 = sub_20E322A10();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;

  sub_20E303CB8(0, 0, v11, &unk_20E356FD8, v13);

  return sub_20E04875C(v11, &qword_27C86D2E0, &qword_20E356FC8);
}

unint64_t sub_20E303308(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FE0, &unk_20E359F10);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6449746E65696C63;
  *(inited + 16) = xmmword_20E356F20;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_20E322860();
  *(inited + 56) = 0x6D61747365746164;
  *(inited + 64) = 0xE900000000000070;
  sub_20E321F20();
  *(inited + 72) = sub_20E322A20();
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000020E35F3A0;
  v3 = type metadata accessor for UsageMetricsDefinitions();
  v4 = v3[7];
  *(a1 + v4);
  v5 = sub_20E322860();

  *(inited + 96) = v5;
  strcpy((inited + 104), "errorMessage");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  v6 = (a1 + v3[8]);
  v7 = *v6;
  v8 = v6[1];
  *(inited + 120) = sub_20E322860();
  *(inited + 128) = 0x7475626972747461;
  *(inited + 136) = 0xEF687461506E6F69;
  v9 = (a1 + v3[9]);
  v10 = *v9;
  v11 = v9[1];
  *(inited + 144) = sub_20E322860();
  *(inited + 152) = 0x6F6F54726F727265;
  *(inited + 160) = 0xEB0000000064496CLL;
  v12 = (a1 + v3[6]);
  v13 = *v12;
  v14 = v12[1];
  *(inited + 168) = sub_20E322860();
  *(inited + 176) = 0x6F4364656C696166;
  *(inited + 184) = 0xEB00000000746E75;
  sub_20E074574(0, &qword_27C86D2D8, 0x277CCABB0);
  *(inited + 192) = sub_20E322A60();
  strcpy((inited + 200), "successCount");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  v15 = *(a1 + v4) == 0;
  *(inited + 216) = sub_20E322A60();
  *(inited + 224) = 0xD000000000000017;
  *(inited + 232) = 0x800000020E35F3E0;
  v16 = *(a1 + v3[11]);
  *(inited + 240) = sub_20E322AA0();
  *(inited + 248) = 0xD000000000000015;
  *(inited + 256) = 0x800000020E35F3C0;
  v17 = *(a1 + v3[10]);
  *(inited + 264) = sub_20E322AA0();
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x800000020E35F400;
  v18 = *(a1 + v3[12]);
  *(inited + 288) = sub_20E322AA0();
  v19 = sub_20E048C98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FE8, &unk_20E326060);
  swift_arrayDestroy();
  return v19;
}

Swift::Void __swiftcall CoreAnalyticsEmitter.sendCoreAnalytics(eventName:eventPayload:)(Swift::String eventName, Swift::OpaquePointer eventPayload)
{
  v3 = v2;
  object = eventName._object;
  countAndFlagsBits = eventName._countAndFlagsBits;
  if (qword_27C863978 != -1)
  {
    swift_once();
  }

  v7 = sub_20E3227C0();
  __swift_project_value_buffer(v7, qword_27C8CC290);

  v8 = sub_20E3227B0();
  v9 = sub_20E322A40();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_20E31B6C4(countAndFlagsBits, object, &v16);
    _os_log_impl(&dword_20E031000, v8, v9, "Logging CoreAnalytics for event type: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F32CA80](v11, -1, -1);
    MEMORY[0x20F32CA80](v10, -1, -1);
  }

  v13 = *(v3 + 16);
  v12 = *(v3 + 24);
  v14 = swift_allocObject();
  v14[2]._rawValue = eventPayload._rawValue;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20E30432C;
  *(v15 + 24) = v14;

  v13(countAndFlagsBits, object, sub_20E304650, v15);
}

uint64_t sub_20E303854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return MEMORY[0x2822009F8](sub_20E303878, 0, 0);
}

uint64_t sub_20E303878()
{
  v38 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = sub_20E322860();
  v0[6] = v2;
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20E3205CC;
  v0[5] = &block_descriptor_2;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  LOBYTE(v1) = AnalyticsSendEventLazy();
  _Block_release(v6);

  if (v1)
  {
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v8 = v0[11];
    v9 = v0[9];
    v10 = sub_20E3227C0();
    __swift_project_value_buffer(v10, qword_27C8CC290);

    v11 = sub_20E3227B0();
    v12 = sub_20E322A40();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[10];
      v13 = v0[11];
      v16 = v0[8];
      v15 = v0[9];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_20E31B6C4(v16, v15, &v37);
      *(v17 + 12) = 2080;
      if (!v14())
      {
        sub_20E048C98(MEMORY[0x277D84F90]);
      }

      sub_20E074574(0, &qword_280E03EE0, 0x277D82BB8);
      v19 = sub_20E322800();
      v21 = v20;

      v22 = sub_20E31B6C4(v19, v21, &v37);

      *(v17 + 14) = v22;
      v23 = "Logged CoreAnalytics event type: %s, payload: %s";
LABEL_14:
      _os_log_impl(&dword_20E031000, v11, v12, v23, v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F32CA80](v18, -1, -1);
      MEMORY[0x20F32CA80](v17, -1, -1);
    }
  }

  else
  {
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v24 = v0[11];
    v25 = v0[9];
    v26 = sub_20E3227C0();
    __swift_project_value_buffer(v26, qword_27C8CC290);

    v11 = sub_20E3227B0();
    v12 = sub_20E322A50();

    if (os_log_type_enabled(v11, v12))
    {
      v28 = v0[10];
      v27 = v0[11];
      v30 = v0[8];
      v29 = v0[9];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_20E31B6C4(v30, v29, &v37);
      *(v17 + 12) = 2080;
      if (!v28())
      {
        sub_20E048C98(MEMORY[0x277D84F90]);
      }

      sub_20E074574(0, &qword_280E03EE0, 0x277D82BB8);
      v31 = sub_20E322800();
      v33 = v32;

      v34 = sub_20E31B6C4(v31, v33, &v37);

      *(v17 + 14) = v34;
      v23 = "CoreAnalytics rejected event type: %s, payload: %s";
      goto LABEL_14;
    }
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_20E303CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D2E0, &qword_20E356FC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_20E304458(a3, v27 - v11);
  v13 = sub_20E322A10();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20E04875C(v12, &qword_27C86D2E0, &qword_20E356FC8);
  }

  else
  {
    sub_20E322A00();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20E3229E0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20E3228E0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t CoreAnalyticsEmitter.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CoreAnalyticsEmitter.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_20E303FE4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20E3040DC;

  return v7(a1);
}

uint64_t sub_20E3040DC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20E3041D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageMetricsDefinitions();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20E304238()
{
  v1 = *(type metadata accessor for UsageMetricsDefinitions() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_20E322010() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_20E303308(v0 + v2);
}

uint64_t sub_20E304304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_20E304384(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20E04CC18;

  return sub_20E303854(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_20E304458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D2E0, &qword_20E356FC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E3044C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20E04CE24;

  return sub_20E303FE4(a1, v5);
}

uint64_t sub_20E304580(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20E04CC18;

  return sub_20E303FE4(a1, v5);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_20E304654(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v79 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868288, &qword_20E33B318);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v80 = &v73 - v7;
  v8 = sub_20E322060();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = *(v77 + 64);
  MEMORY[0x28223BE20](v8);
  v76 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = (&v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v73 - v16);
  v18 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v74 = *(v18 - 8);
  v75 = v18;
  v19 = *(v74 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B80, &qword_20E323E70);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v73 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865E08, &unk_20E33C3C0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v73 - v28;
  v30 = [objc_allocWithZone(MEMORY[0x277D580C0]) init];
  sub_20E0486F4(a1, v25, &qword_27C863B80, &qword_20E323E70);
  v31 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  if ((*(*(v31 - 8) + 48))(v25, 1, v31) == 1)
  {

    sub_20E04875C(v25, &qword_27C863B80, &qword_20E323E70);
    v32 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
    (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
    return 0;
  }

  sub_20E0486F4(v25, v29, &qword_27C865E08, &unk_20E33C3C0);
  sub_20E3050D4(v25, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  v33 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  if ((*(*(v33 - 8) + 48))(v29, 1, v33) == 1)
  {

    return 0;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = v30;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (!v30)
      {
        return v34;
      }

      v45 = objc_allocWithZone(MEMORY[0x277D57FE0]);
      v46 = v30;
      v47 = [v45 init];
      [v46 setTouch_];

      v48 = [v46 touch];
    }

    else
    {
      if (!v30)
      {
        return v34;
      }

      v56 = objc_allocWithZone(MEMORY[0x277D57FB8]);
      v57 = v30;
      v58 = [v56 init];
      [v57 setHeadGesture_];

      v48 = [v57 headGesture];
    }

    v59 = v48;
    if (v59)
    {
      v60 = v59;
      [v59 setExists_];
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v49 = v79;
    sub_20E305008(v29, v79, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    v50 = [objc_allocWithZone(MEMORY[0x277D57FC0]) init];
    v51 = [objc_allocWithZone(MEMORY[0x277D58070]) init];
    if (v51)
    {
      v52 = v51;
      v53 = *(v2 + 24);
      v54 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
      sub_20E0486F4(v49 + v53, v15, &qword_27C8639D0, &unk_20E33C230);
      v55 = type metadata accessor for TranscriptProtoStatementID(0);
      if ((*(*(v55 - 8) + 48))(v15, 1, v55) == 1)
      {
        sub_20E04875C(v15, &qword_27C8639D0, &unk_20E33C230);
      }

      else
      {
        v71 = *v15;
        sub_20E3050D4(v15, type metadata accessor for TranscriptProtoStatementID);
        [v54 setIndex_];
      }

      [v52 setStatementId_];

      v72 = v50;
      [v72 addCandidates_];
    }

    if (v30)
    {
      [v30 setSpeech_];

      sub_20E3050D4(v49, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    }

    else
    {
      sub_20E3050D4(v49, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    }
  }

  else
  {
    v37 = v21;
    sub_20E305008(v29, v21, type metadata accessor for TranscriptProtoRequestContentTextContent);
    v38 = [objc_allocWithZone(MEMORY[0x277D57FD0]) init];
    v39 = v75;
    if (v38)
    {
      v40 = *(v75 + 20);
      v41 = objc_allocWithZone(MEMORY[0x277D58078]);
      v42 = v38;
      v43 = [v41 &off_277E1BB78];
      sub_20E0486F4(v37 + v40, v17, &qword_27C8639D0, &unk_20E33C230);
      v44 = type metadata accessor for TranscriptProtoStatementID(0);
      if ((*(*(v44 - 8) + 48))(v17, 1, v44) == 1)
      {
        sub_20E04875C(v17, &qword_27C8639D0, &unk_20E33C230);
      }

      else
      {
        v61 = *v17;
        sub_20E3050D4(v17, type metadata accessor for TranscriptProtoStatementID);
        [v43 setIndex_];
      }

      [v42 setStatementId_];
    }

    v62 = v76;
    sub_20E322050();
    v63 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v64 = sub_20E322030();
    v65 = [v63 initWithNSUUID_];

    (*(v77 + 8))(v62, v78);
    if (v38)
    {
      [v38 setLinkId_];
    }

    v66 = v80;
    sub_20E305070(v37, v80);
    (*(v74 + 56))(v66, 0, 1, v39);
    v67 = sub_20E31C960(v66, v65);
    v69 = v68;
    sub_20E04875C(v66, &qword_27C868288, &qword_20E33B318);
    v70 = v67;
    if (v34)
    {
      [v34 setText_];

      sub_20E3050D4(v37, type metadata accessor for TranscriptProtoRequestContentTextContent);
    }

    else
    {
      sub_20E3050D4(v37, type metadata accessor for TranscriptProtoRequestContentTextContent);
    }
  }

  return v34;
}

uint64_t sub_20E305008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E305070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E3050D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E305134()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8CC2B0);
  __swift_project_value_buffer(v0, qword_27C8CC2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "events";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E3052FC()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E322330();
      }

      else if (result == 2)
      {
        type metadata accessor for DillSessionEvent(0);
        sub_20E3060EC(&qword_27C86D2F0, type metadata accessor for DillSessionEvent);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E3053F8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_20E3224E0();
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v0[2] + 16) || (type metadata accessor for DillSessionEvent(0), sub_20E3060EC(&qword_27C86D2F0, type metadata accessor for DillSessionEvent), result = sub_20E322570(), !v1))
  {
    v8 = v0 + *(type metadata accessor for DillSession(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

double sub_20E305534@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a2 = xmmword_20E326350;
  *(a2 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E3055C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E3060EC(&qword_27C86D328, type metadata accessor for DillSession);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E305664()
{
  sub_20E3060EC(&qword_27C86D310, type metadata accessor for DillSession);

  return sub_20E322470();
}

uint64_t sub_20E3056D0()
{
  sub_20E3060EC(&qword_27C86D310, type metadata accessor for DillSession);

  return sub_20E322480();
}

uint64_t sub_20E30574C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_20E15F7B0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_20E1577E4(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_20E3221C0();
  sub_20E3060EC(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E305808()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8CC2C8);
  __swift_project_value_buffer(v0, qword_27C8CC2C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 100;
  *v10 = "transcript";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E3059D4()
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
      sub_20E3223C0();
    }

    else if (result == 100)
    {
      sub_20E305A64();
    }
  }

  return result;
}

uint64_t sub_20E305B4C()
{
  if (*v0 == 0.0 || (result = sub_20E322530(), !v1))
  {
    if (*(v0 + 16) >> 60 == 15 || (result = sub_20E305C08(v0), !v1))
    {
      v3 = v0 + *(type metadata accessor for DillSessionEvent(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E305C08(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v2 = *(result + 8);
    sub_20E05E834(v2, v1);
    sub_20E3224E0();
    return sub_20E047D10(v2, v1);
  }

  return result;
}

uint64_t sub_20E305C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = xmmword_20E323EA0;
  v3 = a2 + *(a1 + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E305D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E3060EC(&qword_27C86D330, type metadata accessor for DillSessionEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E305DC0()
{
  sub_20E3060EC(&qword_27C86D2F0, type metadata accessor for DillSessionEvent);

  return sub_20E322470();
}

uint64_t sub_20E305E2C()
{
  sub_20E3060EC(&qword_27C86D2F0, type metadata accessor for DillSessionEvent);

  return sub_20E322480();
}

uint64_t sub_20E3060EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20E306134(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v2 >> 60 != 15)
  {
    if (v4 >> 60 != 15)
    {
      sub_20E1965BC(*(a1 + 8), v2);
      sub_20E1965BC(v5, v4);
      v9 = sub_20E15F7B0(v3, v2, v5, v4);
      sub_20E047D10(v5, v4);
      if (v9)
      {
        goto LABEL_10;
      }

      v6 = v3;
      v7 = v2;
      goto LABEL_7;
    }

LABEL_6:
    sub_20E1965BC(*(a1 + 8), v2);
    sub_20E1965BC(v5, v4);
    sub_20E047D10(v3, v2);
    v6 = v5;
    v7 = v4;
LABEL_7:
    sub_20E047D10(v6, v7);
    return 0;
  }

  if (v4 >> 60 != 15)
  {
    goto LABEL_6;
  }

  sub_20E1965BC(*(a1 + 8), v2);
  sub_20E1965BC(v5, v4);
LABEL_10:
  sub_20E047D10(v3, v2);
  v10 = *(type metadata accessor for DillSessionEvent(0) + 24);
  sub_20E3221C0();
  sub_20E3060EC(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

void sub_20E306334()
{
  if (!qword_27C86D348)
  {
    type metadata accessor for DillSessionEvent(255);
    v0 = sub_20E3229D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27C86D348);
    }
  }
}

uint64_t sub_20E3063F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    result = sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_20E306484()
{
  if (!qword_27C86D360)
  {
    v0 = sub_20E322A90();
    if (!v1)
    {
      atomic_store(v0, &qword_27C86D360);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_20E3064F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20E306544(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t MonotonicTimestamp.init(biomeTimestamp:)(uint64_t a1)
{
  v2 = sub_20E3220B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v11 = sub_20E322780();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E322760();
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x277D20610])
  {
    v17 = MEMORY[0x277D55298];
LABEL_5:
    (*(v12 + 96))(v15, v11);
    v18 = *(*v15 + 16);
    sub_20E322750();
    v19 = sub_20E322060();
    (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
    (*(v3 + 104))(v6, *v17, v2);
    sub_20E3220C0();
    v20 = sub_20E322770();
    (*(*(v20 - 8) + 8))(a1, v20);
  }

  if (v16 == *MEMORY[0x277D205F8])
  {
    v17 = MEMORY[0x277D55290];
    goto LABEL_5;
  }

  result = sub_20E322BB0();
  __break(1u);
  return result;
}

uint64_t MonotonicTimestamp.init(biomeTimestamp:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_20E3220B0();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20E322060();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  v21 = sub_20E3220D0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v44 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [a1 bootSessionUUID];
  if (v25)
  {
    v26 = v25;
    sub_20E322040();

    (*(v7 + 32))(v20, v10, v6);
    v27 = *(v7 + 56);
    v27(v20, 0, 1, v6);
    sub_20E06CC70(v20);
    v28 = [a1 value];
    if (v28)
    {
      v29 = v28;
      if (([v28 hasContinuousNanosecondsSinceBoot] & 1) != 0 || objc_msgSend(v29, sel_hasSuspendingNanosecondsSinceBoot))
      {
        if ([v29 hasSuspendingNanosecondsSinceBoot])
        {
          v30 = [a1 bootSessionUUID];
          if (v30)
          {
            v31 = v30;
            sub_20E322040();

            v32 = 0;
          }

          else
          {
            v32 = 1;
          }

          v27(v18, v32, 1, v6);
          v38 = MEMORY[0x277D55298];
          v39 = &selRef_suspendingNanosecondsSinceBoot;
LABEL_19:
          [v29 *v39];
          (*(v46 + 104))(v45, *v38, v47);
          v40 = v44;
          sub_20E3220C0();

          v41 = v48;
          (*(v22 + 32))(v48, v40, v21);
          v37 = v41;
          v33 = 0;
          return (*(v22 + 56))(v37, v33, 1, v21);
        }

        if ([v29 hasContinuousNanosecondsSinceBoot])
        {
          v34 = [a1 bootSessionUUID];
          if (v34)
          {
            v35 = v34;
            sub_20E322040();

            v36 = 0;
          }

          else
          {
            v36 = 1;
          }

          v27(v15, v36, 1, v6);
          v38 = MEMORY[0x277D55290];
          v39 = &selRef_continuousNanosecondsSinceBoot;
          goto LABEL_19;
        }
      }
    }

    v33 = 1;
  }

  else
  {

    v33 = 1;
    (*(v7 + 56))(v20, 1, 1, v6);
    sub_20E06CC70(v20);
  }

  v37 = v48;
  return (*(v22 + 56))(v37, v33, 1, v21);
}

uint64_t sub_20E306D90@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  if (qword_27C863978 != -1)
  {
    swift_once();
  }

  v4 = sub_20E3227C0();
  __swift_project_value_buffer(v4, qword_27C8CC290);
  v5 = sub_20E3227B0();
  v6 = sub_20E322A40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 1920298824;
    }

    else
    {
      v9 = 7954756;
    }

    if (a1)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE300000000000000;
    }

    v11 = sub_20E31B6C4(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20E031000, v5, v6, "Applying time fuzzing to date with precision: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F32CA80](v8, -1, -1);
    MEMORY[0x20F32CA80](v7, -1, -1);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v13 = sub_20E322860();
  [v12 setDateFormat_];

  v14 = sub_20E321FB0();
  v15 = [v12 stringFromDate_];

  if (!v15)
  {
    sub_20E322890();
    v15 = sub_20E322860();
  }

  v16 = [v12 dateFromString_];

  if (v16)
  {
    sub_20E321FD0();

    v17 = 0;
    v12 = v16;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_20E322010();
  v19 = *(*(v18 - 8) + 56);

  return v19(a2, v17, 1, v18);
}

id sub_20E30705C(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v40 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D57F50]) init];
  sub_20E3075E0(a1, v13);
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        [v14 setPrimitiveInt_];
        return v14;
      case 2u:
        [v14 setPrimitiveDouble_];
        return v14;
      case 3u:
        sub_20E307650(v13, v9, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
        if (v14)
        {
          sub_20E307718();
          v20 = v14;
          sub_20E322470();
          v21 = sub_20E322860();

          [v20 setPrimitiveDecimal_];
        }

        v22 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal;
        v23 = v9;
        goto LABEL_29;
      case 4u:
      case 5u:
      case 7u:
      case 8u:
      case 0x10u:
      case 0x11u:
        goto LABEL_28;
      case 6u:
        sub_20E3076B8(v13, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        v29 = [objc_allocWithZone(MEMORY[0x277D57DD8]) &off_277E1BB78];
        v30 = v29;
        if (v29)
        {
          [v29 setExists_];
        }

        v31 = v14;
        [v31 setPrimitiveDateComponents_];

        return v14;
      case 9u:
        v24 = [objc_allocWithZone(MEMORY[0x277D57E90]) &off_277E1BB78];
        v17 = v24;
        if (v24)
        {
          [v24 setExists_];
        }

        v18 = v14;
        [v18 setMeasurement_];
        goto LABEL_27;
      case 0xAu:
        v27 = [objc_allocWithZone(MEMORY[0x277D57DC8]) &off_277E1BB78];
        v17 = v27;
        if (v27)
        {
          [v27 setExists_];
        }

        v18 = v14;
        [v18 setCurrencyAmount_];
        goto LABEL_27;
      case 0xBu:
        v19 = [objc_allocWithZone(MEMORY[0x277D57EF0]) &off_277E1BB78];
        v17 = v19;
        if (v19)
        {
          [v19 setExists_];
        }

        v18 = v14;
        [v18 setPaymentMethod_];
        goto LABEL_27;
      case 0xCu:
        v25 = [objc_allocWithZone(MEMORY[0x277D57F18]) &off_277E1BB78];
        v17 = v25;
        if (v25)
        {
          [v25 setExists_];
        }

        v18 = v14;
        [v18 setPlacemark_];
        goto LABEL_27;
      case 0xDu:
        v16 = [objc_allocWithZone(MEMORY[0x277D57F00]) &off_277E1BB78];
        v17 = v16;
        if (v16)
        {
          [v16 setExists_];
        }

        v18 = v14;
        [v18 setPerson_];
        goto LABEL_27;
      case 0xEu:
        v26 = [objc_allocWithZone(MEMORY[0x277D57E38]) &off_277E1BB78];
        v17 = v26;
        if (v26)
        {
          [v26 setExists_];
        }

        v18 = v14;
        [v18 setFile_];
LABEL_27:

LABEL_28:
        v22 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind;
        v23 = v13;
        goto LABEL_29;
      case 0xFu:
        sub_20E307650(v13, v5, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
        if (v14)
        {
          v32 = objc_allocWithZone(MEMORY[0x277D57D40]);
          v33 = v14;
          v34 = [v32 &off_277E1BB78];
          v35 = v34;
          if (v34)
          {
            v36 = *v5;
            v37 = v5[1];
            v38 = v34;
            v39 = sub_20E322860();
            [v38 setBundleId_];
          }

          [v33 setApp_];
        }

        v22 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App;
        v23 = v5;
LABEL_29:
        sub_20E3076B8(v23, v22);
        break;
      case 0x12u:
        return v14;
      default:
        [v14 setPrimitiveBool_];
        break;
    }
  }

  return v14;
}

uint64_t sub_20E3075E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E307650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E3076B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20E307718()
{
  result = qword_27C86BFA0;
  if (!qword_27C86BFA0)
  {
    type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BFA0);
  }

  return result;
}

uint64_t sub_20E307770(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = "ntPayload";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD00000000000001DLL;
    }

    if (v4)
    {
      v5 = "selfMessageInstantiationError";
    }

    else
    {
      v5 = "ntPayload";
    }
  }

  else
  {
    if (a1 == 2)
    {
      v7 = "undefinedIFSessionError";
    }

    else
    {
      if (a1 == 3)
      {
        v5 = "undefinedIFSessionError";
        v6 = 0xD000000000000024;
        goto LABEL_14;
      }

      v7 = "metaDataConversionError";
    }

    v5 = (v7 - 32);
    v6 = 0xD000000000000017;
  }

LABEL_14:
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v8 = "undefinedIFSessionError";
    }

    else
    {
      if (a2 == 3)
      {
        v3 = "undefinedIFSessionError";
        v2 = 0xD000000000000024;
        goto LABEL_27;
      }

      v8 = "metaDataConversionError";
    }

    v3 = (v8 - 32);
    goto LABEL_27;
  }

  if (a2)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xD00000000000001DLL;
  }

  if (a2)
  {
    v3 = "selfMessageInstantiationError";
  }

LABEL_27:
  if (v6 == v2 && (v5 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_20E322D60();
  }

  return v9 & 1;
}

uint64_t sub_20E3078D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0xD000000000000012;
    v13 = 0x800000020E35A1B0;
    if (a1 != 2)
    {
      v12 = 0x72656E6E616C70;
      v13 = 0xE700000000000000;
    }

    v14 = 0x726568746FLL;
    if (a1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v14 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x746E65696C63;
    v5 = 0x6E65746E49707061;
    v6 = 0xE900000000000074;
    if (a1 != 7)
    {
      v5 = 0x696C707041746F6ELL;
      v6 = 0xED0000656C626163;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0xE800000000000000;
    v8 = 0x726F747563657865;
    if (a1 != 4)
    {
      v8 = 0x74696B6C6F6F74;
      v7 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0x800000020E35A1B0;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x72656E6E616C70)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x726568746FLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x726F747563657865)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x74696B6C6F6F74)
      {
LABEL_52:
        v16 = sub_20E322D60();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x746E65696C63)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE900000000000074;
    if (v9 != 0x6E65746E49707061)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xED0000656C626163;
    if (v9 != 0x696C707041746F6ELL)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_20E307BA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0079646F42746ELL;
  v3 = 0x6576457974706D65;
  v4 = a1;
  v5 = 0xEF64616F6C796150;
  v6 = 0xD000000000000015;
  v7 = 0x800000020E359F70;
  if (a1 != 4)
  {
    v6 = 0xD000000000000015;
    v7 = 0x800000020E359F90;
  }

  if (a1 == 3)
  {
    v6 = 0x746E6576456C696ELL;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x5364696C61766E69;
  if (a1 == 1)
  {
    v9 = 0xED00006D61657274;
  }

  else
  {
    v8 = 0xD000000000000016;
    v9 = 0x800000020E359F40;
  }

  if (!a1)
  {
    v8 = 0x6576457974706D65;
    v9 = 0xEE0079646F42746ELL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEF64616F6C796150;
      if (v10 != 0x746E6576456C696ELL)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x800000020E359F70;
      if (v10 != 0xD000000000000015)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v2 = 0x800000020E359F90;
      if (v10 != 0xD000000000000015)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xED00006D61657274;
        if (v10 != 0x5364696C61766E69)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v2 = 0x800000020E359F40;
      v3 = 0xD000000000000016;
    }

    if (v10 != v3)
    {
LABEL_33:
      v12 = sub_20E322D60();
      goto LABEL_34;
    }
  }

LABEL_30:
  if (v11 != v2)
  {
    goto LABEL_33;
  }

  v12 = 1;
LABEL_34:

  return v12 & 1;
}

uint64_t sub_20E307DA0()
{
  sub_20E3228F0();
}

double RequestSignature.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *&result = 3;
  *(a1 + 8) = xmmword_20E325EB0;
  *(a1 + 24) = 2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = MEMORY[0x277D84F90];
  *(a1 + 56) = 0;
  *(a1 + 60) = 2049;
  return result;
}

unint64_t ErrorComponent.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0xD000000000000012;
    if (v1 != 2)
    {
      v7 = 0x72656E6E616C70;
    }

    if (*v0)
    {
      v6 = 0x726568746FLL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x746E65696C63;
    v3 = 0x6E65746E49707061;
    if (v1 != 7)
    {
      v3 = 0x696C707041746F6ELL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x726F747563657865;
    if (v1 != 4)
    {
      v4 = 0x74696B6C6F6F74;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t SessionSignature.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SessionSignature(0);
  v3 = (a1 + v2[7]);
  v4 = type metadata accessor for AttributionTraits(0);
  v12 = *(*(v4 - 8) + 56);
  v12(v3, 1, 1, v4);
  *a1 = 769;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  v5 = MEMORY[0x277D84F90];
  *(a1 + v2[8]) = sub_20E049AE4(MEMORY[0x277D84F90]);
  *(a1 + v2[9]) = &unk_282537420;
  *(a1 + v2[10]) = v5;
  sub_20E04875C(v3, &qword_27C8688E8, &unk_20E3573E0);
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  v6 = *(v4 + 24);
  v7 = sub_20E322060();
  v8 = *(*(v7 - 8) + 56);
  v8(&v3[v6], 1, 1, v7);
  v9 = &v3[*(v4 + 28)];
  *v3 = 0;
  *(v3 + 1) = 0;
  sub_20E04875C(&v3[v6], &qword_27C863A90, &unk_20E33C020);
  v8(&v3[v6], 1, 1, v7);
  *v9 = 0;
  *(v9 + 1) = 0;
  result = (v12)(v3, 0, 1, v4);
  *(a1 + v2[11]) = MEMORY[0x277D84F90];
  v11 = (a1 + v2[12]);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  return result;
}

uint64_t SessionView.end.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionView(0) + 20);
  v4 = sub_20E322010();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SessionView.end.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SessionView(0) + 20);
  v4 = sub_20E322010();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SessionView.numSessions.setter(uint64_t a1)
{
  result = type metadata accessor for SessionView(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SessionView.sessions.getter()
{
  v1 = *(v0 + *(type metadata accessor for SessionView(0) + 28));
}

uint64_t SessionView.sessions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SessionView(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SessionData.sessionSignature.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SessionData(0) + 20);

  return sub_20E310F28(a1, v3);
}

uint64_t SessionData.clientSessionId.getter()
{
  v1 = (v0 + *(type metadata accessor for SessionData(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SessionData.clientSessionId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SessionData(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SessionData.rawSessionId.getter()
{
  v1 = (v0 + *(type metadata accessor for SessionData(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SessionData.rawSessionId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SessionData(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SessionData.requests.getter()
{
  v1 = *(v0 + *(type metadata accessor for SessionData(0) + 32));
}

uint64_t SessionData.requests.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SessionData(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestData.requestID.getter()
{
  v1 = (v0 + *(type metadata accessor for RequestData(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RequestData.requestID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RequestData(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RequestData.events.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestData(0) + 24));
}

uint64_t RequestData.events.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RequestData(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestData.eventWrapper.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RequestData(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 RequestData.eventWrapper.setter(__n128 *a1)
{
  v3 = (v1 + *(type metadata accessor for RequestData(0) + 28));
  v5 = v3->n128_u64[0];
  v4 = v3->n128_i64[1];

  result = *a1;
  *v3 = *a1;
  return result;
}

uint64_t RequestData.requestSignature.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RequestData(0) + 32));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11[0] = v4;
  *(v11 + 14) = *(v3 + 46);
  v6 = *(v11 + 14);
  v9 = *v3;
  *a1 = v9;
  a1[1] = v5;
  a1[2] = v4;
  *(a1 + 46) = v6;
  return sub_20E310FAC(&v9, &v8);
}

__n128 RequestData.requestSignature.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RequestData(0) + 32));
  v4 = v3[2];
  v7[1] = v3[1];
  v8[0] = v4;
  *(v8 + 14) = *(v3 + 46);
  v7[0] = *v3;
  sub_20E04875C(v7, &qword_27C868A80, &qword_20E3573F0);
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  v3[2] = *(a1 + 32);
  result = *(a1 + 46);
  *(v3 + 46) = result;
  return result;
}

uint64_t RequestSignature.requestStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_20E31101C(v2, v3, v4);
}

uint64_t RequestSignature.requestStatus.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_20E07119C(*(v1 + 8), *(v1 + 16), *(v1 + 24));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t RequestSignature.requestStatusReason.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t RequestSignature.requestStatusReason.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RequestSignature.executedToolIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t RequestSignature.originProgramStatementId.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_20E308E58()
{
  v1 = *v0;
  v2 = 0x746E65696C63;
  v3 = 0x6465747563657865;
  v4 = 0xD000000000000018;
  if (v1 != 4)
  {
    v4 = 0x6D6F43726F727265;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x5374736575716572;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
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

uint64_t sub_20E308F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20E3147F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20E308F68(uint64_t a1)
{
  v2 = sub_20E311034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E308FA4(uint64_t a1)
{
  v2 = sub_20E311034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestSignature.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D368, &qword_20E3573F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  v11 = v1[24];
  v12 = *(v1 + 5);
  v24 = *(v1 + 4);
  v25 = v9;
  v22 = *(v1 + 6);
  v23 = v12;
  v21 = *(v1 + 14);
  v30 = v1[60];
  HIDWORD(v20) = v1[61];
  v14 = a1[3];
  v13 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_20E311034();
  sub_20E322E40();
  LOBYTE(v27) = v8;
  v31 = 0;
  sub_20E311088();
  v18 = v26;
  sub_20E322D40();
  if (!v18)
  {
    v27 = v25;
    v28 = v10;
    v29 = v11;
    v31 = 1;
    sub_20E31101C(v25, v10, v11);
    sub_20E3110DC();
    sub_20E322D40();
    sub_20E07119C(v27, v28, v29);
    LOBYTE(v27) = 2;
    sub_20E322D10();
    v27 = v22;
    v31 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868900, &qword_20E357400);
    sub_20E31122C(&qword_27C86D388);
    sub_20E322D40();
    LOBYTE(v27) = 4;
    v31 = v30;
    sub_20E322D00();
    LOBYTE(v27) = BYTE4(v20);
    v31 = 5;
    sub_20E311130();
    sub_20E322D40();
  }

  return (*(v4 + 8))(v7, v17);
}

uint64_t RequestSignature.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D398, &qword_20E357408);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311034();
  sub_20E322E20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v28) = 0;
  sub_20E311184();
  sub_20E322CB0();
  v11 = v31;
  LOBYTE(v28) = 1;
  sub_20E3111D8();
  sub_20E322CB0();
  v26 = v31;
  v27 = v32;
  v41 = v33;
  LOBYTE(v31) = 2;
  v12 = sub_20E322C80();
  *(&v25 + 1) = v13;
  *&v25 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868900, &qword_20E357400);
  LOBYTE(v28) = 3;
  sub_20E31122C(&qword_27C86D3B0);
  sub_20E322CB0();
  v24 = v31;
  LOBYTE(v31) = 4;
  v23 = sub_20E322C70();
  v42 = BYTE4(v23) & 1;
  v43 = 5;
  sub_20E311298();
  sub_20E322CB0();
  (*(v6 + 8))(v9, v5);
  v22 = v44;
  LOBYTE(v28) = v11;
  v14 = v26;
  v15 = v27;
  *(&v28 + 1) = v26;
  *&v29 = v27;
  v16 = v41;
  BYTE8(v29) = v41;
  v17 = *(&v25 + 1);
  *v30 = v25;
  v18 = v24;
  *&v30[16] = v24;
  *&v30[24] = v23;
  v21 = v42;
  v30[28] = v42;
  v30[29] = v44;
  v19 = v29;
  *a2 = v28;
  a2[1] = v19;
  a2[2] = *v30;
  *(a2 + 46) = *&v30[14];
  sub_20E0711B4(&v28, &v31);
  __swift_destroy_boxed_opaque_existential_0(a1);
  LOBYTE(v31) = v11;
  v32 = v14;
  v33 = v15;
  v34 = v16;
  v35 = v25;
  v36 = v17;
  v37 = v18;
  v38 = v23;
  v39 = v21;
  v40 = v22;
  return sub_20E0710E0(&v31);
}

uint64_t static PromptType.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_20E322D60();
  }
}

uint64_t sub_20E3097F8(uint64_t a1)
{
  v2 = sub_20E311394();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E309834(uint64_t a1)
{
  v2 = sub_20E311394();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E309870(uint64_t a1)
{
  v2 = sub_20E311490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E3098AC(uint64_t a1)
{
  v2 = sub_20E311490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E3098E8()
{
  v1 = *v0;
  v2 = 0x6574656C706D6F63;
  v3 = 0x74706D6F7270;
  v4 = 0x656E6F646E616261;
  if (v1 != 4)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64656C696166;
  if (v1 != 1)
  {
    v5 = 0x64656C65636E6163;
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

uint64_t sub_20E30999C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20E314A10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20E3099C4(uint64_t a1)
{
  v2 = sub_20E3112EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E309A00(uint64_t a1)
{
  v2 = sub_20E3112EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E309A3C(uint64_t a1)
{
  v2 = sub_20E311538();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E309A78(uint64_t a1)
{
  v2 = sub_20E311538();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E309AC0(uint64_t a1)
{
  v2 = sub_20E3114E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E309AFC(uint64_t a1)
{
  v2 = sub_20E3114E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E309B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E322D60();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20E309BB8(uint64_t a1)
{
  v2 = sub_20E3113E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E309BF4(uint64_t a1)
{
  v2 = sub_20E3113E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E309C30(uint64_t a1)
{
  v2 = sub_20E311340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E309C6C(uint64_t a1)
{
  v2 = sub_20E311340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IERequestStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D3C0, &qword_20E357410);
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D3C8, &qword_20E357418);
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D3D0, &qword_20E357420);
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v9);
  v55 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D3D8, &qword_20E357428);
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12);
  v44 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D3E0, &qword_20E357430);
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = *(v53 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D3E8, &qword_20E357438);
  v42 = *(v19 - 8);
  v43 = v19;
  v20 = *(v42 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D3F0, &qword_20E357440);
  v58 = *(v23 - 8);
  v59 = v23;
  v24 = *(v58 + 64);
  MEMORY[0x28223BE20](v23);
  v25 = *v1;
  v26 = *(v1 + 8);
  v27 = *(v1 + 16);
  v29 = a1[3];
  v28 = a1[4];
  v30 = a1;
  v32 = &v41 - v31;
  __swift_project_boxed_opaque_existential_1(v30, v29);
  sub_20E3112EC();
  sub_20E322E40();
  if (!v27)
  {
    LOBYTE(v60) = 1;
    sub_20E3114E4();
    v34 = v59;
    sub_20E322CD0();
    LOBYTE(v60) = v25;
    sub_20E311130();
    v36 = v54;
    sub_20E322D40();
    (*(v53 + 8))(v18, v36);
    return (*(v58 + 8))(v32, v34);
  }

  if (v27 == 1)
  {
    LOBYTE(v60) = 3;
    sub_20E3113E8();
    v33 = v55;
    v34 = v59;
    sub_20E322CD0();
    v60 = v25;
    v61 = v26;
    sub_20E31143C();
    v35 = v57;
    sub_20E322D40();
    (*(v56 + 8))(v33, v35);
    return (*(v58 + 8))(v32, v34);
  }

  if (v25 > 1)
  {
    if (v25 ^ 2 | v26)
    {
      LOBYTE(v60) = 5;
      sub_20E311340();
      v22 = v50;
      v38 = v59;
      sub_20E322CD0();
      v40 = v51;
      v39 = v52;
    }

    else
    {
      LOBYTE(v60) = 4;
      sub_20E311394();
      v22 = v47;
      v38 = v59;
      sub_20E322CD0();
      v40 = v48;
      v39 = v49;
    }
  }

  else if (v25 | v26)
  {
    LOBYTE(v60) = 2;
    sub_20E311490();
    v22 = v44;
    v38 = v59;
    sub_20E322CD0();
    v40 = v45;
    v39 = v46;
  }

  else
  {
    LOBYTE(v60) = 0;
    sub_20E311538();
    v38 = v59;
    sub_20E322CD0();
    v40 = v42;
    v39 = v43;
  }

  (*(v40 + 8))(v22, v39);
  return (*(v58 + 8))(v32, v38);
}

uint64_t IERequestStatus.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D438, &qword_20E357448);
  v64 = *(v69 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v69);
  v74 = &v57 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D440, &qword_20E357450);
  v66 = *(v68 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v70 = &v57 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D448, &qword_20E357458);
  v65 = *(v67 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v73 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D450, &qword_20E357460);
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v9);
  v71 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D458, &qword_20E357468);
  v13 = *(v12 - 8);
  v60 = v12;
  v61 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D460, &qword_20E357470);
  v59 = *(v17 - 8);
  v18 = *(v59 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D468, &qword_20E357478);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v57 - v24;
  v27 = a1[3];
  v26 = a1[4];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_20E3112EC();
  v28 = v75;
  sub_20E322E20();
  if (!v28)
  {
    v58 = v17;
    v29 = v16;
    v31 = v73;
    v30 = v74;
    v75 = v22;
    v32 = v25;
    v33 = sub_20E322CC0();
    if (*(v33 + 16) != 1 || (v34 = *(v33 + 32), v34 == 6))
    {
      v42 = sub_20E322B30();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D470, &qword_20E357480) + 48);
      *v44 = &type metadata for IERequestStatus;
      sub_20E322C40();
      sub_20E322B20();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
      swift_willThrow();
      (*(v75 + 8))(v32, v21);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v33 + 32) > 2u)
      {
        if (v34 == 3)
        {
          LOBYTE(v76) = 3;
          sub_20E3113E8();
          v50 = v31;
          sub_20E322C30();
          v51 = v72;
          v52 = v75;
          sub_20E31158C();
          v53 = v67;
          sub_20E322CB0();
          (*(v65 + 8))(v50, v53);
          (*(v52 + 8))(v25, v21);
          swift_unknownObjectRelease();
          v40 = v76;
          v38 = v77;
          v39 = 1;
          v41 = v51;
        }

        else
        {
          v47 = v72;
          v48 = v75;
          if (v34 == 4)
          {
            v41 = v72;
            LOBYTE(v76) = 4;
            sub_20E311394();
            v49 = v70;
            sub_20E322C30();
            (*(v66 + 8))(v49, v68);
            (*(v48 + 8))(v25, v21);
            swift_unknownObjectRelease();
            v38 = 0;
            v40 = 2;
            v39 = 2;
          }

          else
          {
            LOBYTE(v76) = 5;
            sub_20E311340();
            v56 = v30;
            sub_20E322C30();
            v41 = v47;
            (*(v64 + 8))(v56, v69);
            (*(v48 + 8))(v25, v21);
            swift_unknownObjectRelease();
            v38 = 0;
            v39 = 2;
            v40 = 3;
          }
        }
      }

      else if (*(v33 + 32))
      {
        if (v34 == 1)
        {
          LOBYTE(v76) = 1;
          sub_20E3114E4();
          v35 = v29;
          sub_20E322C30();
          v36 = v75;
          sub_20E311298();
          v37 = v60;
          sub_20E322CB0();
          (*(v61 + 8))(v35, v37);
          (*(v36 + 8))(v25, v21);
          swift_unknownObjectRelease();
          v38 = 0;
          v39 = 0;
          v40 = v76;
        }

        else
        {
          LOBYTE(v76) = 2;
          sub_20E311490();
          v54 = v71;
          sub_20E322C30();
          v55 = v75;
          (*(v62 + 8))(v54, v63);
          (*(v55 + 8))(v25, v21);
          swift_unknownObjectRelease();
          v38 = 0;
          v39 = 2;
          v40 = 1;
        }

        v41 = v72;
      }

      else
      {
        LOBYTE(v76) = 0;
        sub_20E311538();
        sub_20E322C30();
        (*(v59 + 8))(v20, v58);
        (*(v75 + 8))(v25, v21);
        swift_unknownObjectRelease();
        v40 = 0;
        v38 = 0;
        v39 = 2;
        v41 = v72;
      }

      *v41 = v40;
      *(v41 + 8) = v38;
      *(v41 + 16) = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v78);
}

uint64_t sub_20E30AD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E322D60();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20E30ADB4(uint64_t a1)
{
  v2 = sub_20E3115E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30ADF0(uint64_t a1)
{
  v2 = sub_20E3115E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PromptType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D480, &qword_20E357488);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E3115E0();
  sub_20E322E40();
  sub_20E322D10();
  return (*(v4 + 8))(v7, v3);
}

uint64_t PromptType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D490, &qword_20E357490);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E3115E0();
  sub_20E322E20();
  if (!v2)
  {
    v11 = sub_20E322C80();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_20E30B0F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D480, &qword_20E357488);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E3115E0();
  sub_20E322E40();
  sub_20E322D10();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_20E30B230(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_20E322D60();
  }
}

uint64_t sub_20E30B260(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746E65696C63;
    v6 = 0x6552737574617473;
    if (a1 != 2)
    {
      v6 = 0x7475626972747461;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    v2 = 0x747461506E617073;
    if (a1 == 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_20E30B3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20E314C14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20E30B3D8(uint64_t a1)
{
  v2 = sub_20E311634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30B414(uint64_t a1)
{
  v2 = sub_20E311634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SessionSignature.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D498, &qword_20E357498);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311634();
  sub_20E322E40();
  LOBYTE(v20) = *v3;
  v21 = 0;
  sub_20E311088();
  sub_20E322D40();
  if (!v2)
  {
    LOBYTE(v20) = *(v3 + 1);
    v21 = 1;
    sub_20E19C87C();
    sub_20E322D40();
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    LOBYTE(v20) = 2;
    sub_20E322D10();
    v13 = type metadata accessor for SessionSignature(0);
    v14 = v13[7];
    LOBYTE(v20) = 3;
    type metadata accessor for AttributionTraits(0);
    sub_20E3116DC(&qword_27C86D4A8, type metadata accessor for AttributionTraits);
    sub_20E322CF0();
    v20 = *(v3 + v13[8]);
    v21 = 4;
    sub_20E311688();

    sub_20E322D40();

    v20 = *(v3 + v13[9]);
    v21 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868900, &qword_20E357400);
    sub_20E31122C(&qword_27C86D388);
    sub_20E322D40();
    v20 = *(v3 + v13[10]);
    v21 = 6;
    sub_20E322D40();
    v20 = *(v3 + v13[11]);
    v21 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D4B8, &qword_20E3574A0);
    sub_20E311798(&qword_27C86D4C0, &qword_27C86D4C8);
    sub_20E322D40();
    v15 = (v3 + v13[12]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v20) = 8;
    sub_20E322D10();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SessionSignature.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688E8, &unk_20E3573E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D4D0, &qword_20E3574A8);
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for SessionSignature(0);
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 28);
  v18 = type metadata accessor for AttributionTraits(0);
  v19 = *(*(v18 - 8) + 56);
  v39 = v17;
  v40 = v16;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[3];
  v21 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_20E311634();
  sub_20E322E20();
  if (v2)
  {
    v23 = v40;
    __swift_destroy_boxed_opaque_existential_0(v38);
    return sub_20E04875C(&v23[v39], &qword_27C8688E8, &unk_20E3573E0);
  }

  else
  {
    v22 = v36;
    v42 = 0;
    sub_20E311184();
    sub_20E322CB0();
    v24 = v40;
    *v40 = v41;
    v42 = 1;
    sub_20E19CE9C();
    sub_20E322CB0();
    v24[1] = v41;
    LOBYTE(v41) = 2;
    *(v24 + 1) = sub_20E322C80();
    *(v24 + 2) = v25;
    LOBYTE(v41) = 3;
    sub_20E3116DC(&qword_27C86D4D8, type metadata accessor for AttributionTraits);
    sub_20E322C60();
    sub_20E05EC5C(v7, &v24[v39], &qword_27C8688E8, &unk_20E3573E0);
    v42 = 4;
    sub_20E311744();
    sub_20E322CB0();
    *&v24[v12[8]] = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868900, &qword_20E357400);
    v42 = 5;
    sub_20E31122C(&qword_27C86D3B0);
    sub_20E322CB0();
    *&v24[v12[9]] = v41;
    v42 = 6;
    sub_20E322CB0();
    *&v24[v12[10]] = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D4B8, &qword_20E3574A0);
    v42 = 7;
    sub_20E311798(&qword_27C86D4E8, &qword_27C86D4F0);
    v26 = v37;
    sub_20E322CB0();
    *&v24[v12[11]] = v41;
    LOBYTE(v41) = 8;
    v27 = sub_20E322C80();
    v29 = v28;
    (*(v22 + 8))(v11, v26);
    v30 = v12[12];
    v31 = v40;
    v32 = &v40[v30];
    *v32 = v27;
    v32[1] = v29;
    sub_20E3118E8(v31, v35, type metadata accessor for SessionSignature);
    __swift_destroy_boxed_opaque_existential_0(v38);
    return sub_20E311888(v31, type metadata accessor for SessionSignature);
  }
}

uint64_t SessionSignature.description.getter()
{
  v0 = sub_20E3228C0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27C8627C0 != -1)
  {
    swift_once();
  }

  type metadata accessor for SessionSignature(0);
  sub_20E3116DC(&qword_27C86D4F8, type metadata accessor for SessionSignature);
  v2 = sub_20E321E90();
  v4 = v3;
  sub_20E3228B0();
  v5 = sub_20E3228A0();
  if (v6)
  {
    v7 = v5;
    sub_20E05E888(v2, v4);
    return v7;
  }

  else
  {
    sub_20E05E888(v2, v4);
    return 0;
  }
}

unint64_t sub_20E30C120()
{
  v1 = 0x7475626972747461;
  v2 = 0x75716552746F6F72;
  if (*v0 != 2)
  {
    v2 = 0x526572756C696166;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20E30C1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20E314F0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20E30C1EC(uint64_t a1)
{
  v2 = sub_20E311834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30C228(uint64_t a1)
{
  v2 = sub_20E311834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionTraits.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D500, &qword_20E3574B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311834();
  sub_20E322E40();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  sub_20E322CE0();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v21[14] = 1;
    sub_20E322CE0();
    v16 = type metadata accessor for AttributionTraits(0);
    v17 = *(v16 + 24);
    v21[13] = 2;
    sub_20E322060();
    sub_20E3116DC(&qword_27C863AD8, MEMORY[0x277CC95F0]);
    sub_20E322CF0();
    v18 = (v3 + *(v16 + 28));
    v19 = *v18;
    v20 = v18[1];
    v21[12] = 3;
    sub_20E322CE0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AttributionTraits.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v29 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D510, &qword_20E3574B8);
  v32 = *(v35 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v29 - v7;
  v9 = type metadata accessor for AttributionTraits(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = *(v10 + 32);
  v15 = sub_20E322060();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = &v13[*(v10 + 36)];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311834();
  v34 = v8;
  v18 = v36;
  sub_20E322E20();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v29 = v16;
    v30 = v14;
    v36 = a1;
    v19 = v32;
    v20 = v33;
    v40 = 0;
    v21 = v34;
    *v13 = sub_20E322C50();
    *(v13 + 1) = v22;
    v39 = 1;
    *(v13 + 2) = sub_20E322C50();
    *(v13 + 3) = v23;
    v38 = 2;
    sub_20E3116DC(&qword_27C863AE8, MEMORY[0x277CC95F0]);
    sub_20E322C60();
    sub_20E05EC5C(v20, &v13[v30], &qword_27C863A90, &unk_20E33C020);
    v37 = 3;
    v25 = sub_20E322C50();
    v27 = v26;
    (*(v19 + 8))(v21, v35);
    v28 = v29;
    *v29 = v25;
    v28[1] = v27;
    sub_20E3118E8(v13, v31, type metadata accessor for AttributionTraits);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  return sub_20E311888(v13, type metadata accessor for AttributionTraits);
}

uint64_t sub_20E30C894()
{
  if (*v0)
  {
    result = 0x6D617453656D6974;
  }

  else
  {
    result = 0x7069636974726170;
  }

  *v0;
  return result;
}

uint64_t sub_20E30C8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61;
  if (v6 || (sub_20E322D60() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617453656D6974 && a2 == 0xE900000000000070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E322D60();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20E30C9C4(uint64_t a1)
{
  v2 = sub_20E311950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30CA00(uint64_t a1)
{
  v2 = sub_20E311950();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ParticipantInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D518, &qword_20E3574C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311950();
  sub_20E322E40();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_20E322CE0();
  if (!v2)
  {
    v13 = *(type metadata accessor for ParticipantInfo(0) + 20);
    v15[14] = 1;
    sub_20E322010();
    sub_20E3116DC(&qword_27C868920, MEMORY[0x277CC9578]);
    sub_20E322D40();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ParticipantInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_20E322010();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D528, &qword_20E3574C8);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ParticipantInfo(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311950();
  sub_20E322E20();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v23 = v10;
    v16 = v26;
    v15 = v27;
    v30 = 0;
    *v13 = sub_20E322C50();
    v13[1] = v17;
    v22 = v13;
    v29 = 1;
    sub_20E3116DC(&qword_27C868938, MEMORY[0x277CC9578]);
    v18 = v28;
    sub_20E322CB0();
    (*(v16 + 8))(v9, v18);
    v19 = v22;
    (*(v24 + 32))(v22 + *(v23 + 20), v6, v15);
    sub_20E3118E8(v19, v25, type metadata accessor for ParticipantInfo);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_20E311888(v19, type metadata accessor for ParticipantInfo);
  }
}

uint64_t sub_20E30CF48()
{
  sub_20E322DE0();
  MEMORY[0x20F32C430](0);
  return sub_20E322E00();
}

uint64_t sub_20E30CF8C()
{
  sub_20E322DE0();
  MEMORY[0x20F32C430](0);
  return sub_20E322E00();
}

uint64_t sub_20E30CFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974616974696E69 && a2 == 0xEF736E617053676ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E322D60();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20E30D080(uint64_t a1)
{
  v2 = sub_20E3119A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30D0BC(uint64_t a1)
{
  v2 = sub_20E3119A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SpanRespresentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D530, &qword_20E3574D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E3119A4();

  sub_20E322E40();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D540, &qword_20E3574D8);
  sub_20E3119F8();
  sub_20E322D40();

  return (*(v4 + 8))(v7, v3);
}

uint64_t SpanRespresentation.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D550, &qword_20E3574E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E3119A4();
  sub_20E322E20();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D540, &qword_20E3574D8);
    sub_20E311AB4();
    sub_20E322CB0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_20E30D41C(uint64_t a1)
{
  v2 = sub_20E311C18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30D458(uint64_t a1)
{
  v2 = sub_20E311C18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30D494()
{
  v1 = 0x6574656C706D6F63;
  v2 = 0x64656C65636E6163;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x64656C696166;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20E30D510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20E315090(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20E30D538(uint64_t a1)
{
  v2 = sub_20E311B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30D574(uint64_t a1)
{
  v2 = sub_20E311B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30D5B0(uint64_t a1)
{
  v2 = sub_20E311CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30D5EC(uint64_t a1)
{
  v2 = sub_20E311CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30D628(uint64_t a1)
{
  v2 = sub_20E311C6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30D664(uint64_t a1)
{
  v2 = sub_20E311C6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30D6A0(uint64_t a1)
{
  v2 = sub_20E311BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30D6DC(uint64_t a1)
{
  v2 = sub_20E311BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TaskCompletionStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D560, &qword_20E3574E8);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D568, &qword_20E3574F0);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D570, &qword_20E3574F8);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D578, &qword_20E357500);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D580, &qword_20E357508);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311B70();
  sub_20E322E40();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_20E311C18();
      v24 = v33;
      sub_20E322CD0();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_20E311BC4();
      v24 = v36;
      sub_20E322CD0();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_20E311C6C();
    v24 = v30;
    sub_20E322CD0();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_20E311CC0();
  sub_20E322CD0();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t TaskCompletionStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5B0, &qword_20E357510);
  v47 = *(v51 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v51);
  v54 = v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5B8, &qword_20E357518);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = v42 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5C0, &qword_20E357520);
  v45 = *(v48 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v48);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5C8, &qword_20E357528);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5D0, &qword_20E357530);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v42 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_20E311B70();
  v23 = v55;
  sub_20E322E20();
  if (!v23)
  {
    v43 = v12;
    v44 = 0;
    v24 = v53;
    v25 = v54;
    v55 = v17;
    v26 = v20;
    v27 = sub_20E322CC0();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 4) : (v30 = 1), v30))
    {
      v31 = sub_20E322B30();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D470, &qword_20E357480) + 48);
      *v33 = &type metadata for TaskCompletionStatus;
      sub_20E322C40();
      sub_20E322B20();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v55 + 8))(v26, v16);
    }

    else
    {
      v42[1] = v27;
      if (v29 <= 1)
      {
        if (v29)
        {
          v58 = 1;
          sub_20E311C6C();
          v39 = v44;
          sub_20E322C30();
          if (!v39)
          {
            (*(v45 + 8))(v11, v48);
            goto LABEL_23;
          }
        }

        else
        {
          v57 = 0;
          sub_20E311CC0();
          v35 = v44;
          sub_20E322C30();
          if (!v35)
          {
            (*(v46 + 8))(v15, v43);
LABEL_23:
            (*(v55 + 8))(v20, v16);
LABEL_25:
            swift_unknownObjectRelease();
            *v52 = v29;
            return __swift_destroy_boxed_opaque_existential_0(v56);
          }
        }

        (*(v55 + 8))(v20, v16);
        goto LABEL_20;
      }

      v36 = v52;
      v37 = v55;
      if (v29 == 2)
      {
        v59 = 2;
        sub_20E311C18();
        v38 = v44;
        sub_20E322C30();
        if (!v38)
        {
          (*(v50 + 8))(v24, v49);
          (*(v37 + 8))(v26, v16);
          swift_unknownObjectRelease();
          *v36 = 2;
          return __swift_destroy_boxed_opaque_existential_0(v56);
        }
      }

      else
      {
        v60 = 3;
        sub_20E311BC4();
        v40 = v44;
        sub_20E322C30();
        if (!v40)
        {
          (*(v47 + 8))(v25, v51);
          (*(v37 + 8))(v26, v16);
          goto LABEL_25;
        }
      }

      (*(v37 + 8))(v26, v16);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v56);
}

uint64_t sub_20E30E218()
{
  v1 = 0x6769626D61736964;
  if (*v0 != 1)
  {
    v1 = 0x616D7269666E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

uint64_t sub_20E30E284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20E3151F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20E30E2B8(uint64_t a1)
{
  v2 = sub_20E311D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30E2F4(uint64_t a1)
{
  v2 = sub_20E311D14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30E330(uint64_t a1)
{
  v2 = sub_20E311D68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30E36C(uint64_t a1)
{
  v2 = sub_20E311D68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30E3A8(uint64_t a1)
{
  v2 = sub_20E311DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30E3E4(uint64_t a1)
{
  v2 = sub_20E311DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30E420(uint64_t a1)
{
  v2 = sub_20E311E10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30E45C(uint64_t a1)
{
  v2 = sub_20E311E10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserInteractionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5D8, &qword_20E357538);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5E0, &qword_20E357540);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5E8, &qword_20E357548);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D5F0, &qword_20E357550);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311D14();
  sub_20E322E40();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_20E311DBC();
      v12 = v26;
      sub_20E322CD0();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_20E311D68();
      v12 = v29;
      sub_20E322CD0();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_20E311E10();
    sub_20E322CD0();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t UserInteractionType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D618, &qword_20E357558);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D620, &qword_20E357560);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D628, &qword_20E357568);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D630, &qword_20E357570);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311D14();
  v18 = v49;
  sub_20E322E20();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_20E322CC0();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_20E311DBC();
          v33 = v40;
          sub_20E322C30();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_20E311D68();
          v37 = v40;
          sub_20E322C30();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_20E311E10();
        v35 = v40;
        sub_20E322C30();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_0(v30);
    }
  }

  v26 = sub_20E322B30();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D470, &qword_20E357480) + 48);
  *v28 = &type metadata for UserInteractionType;
  sub_20E322C40();
  sub_20E322B20();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v30);
}

uint64_t sub_20E30EE3C()
{
  if (*v0)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x30303169726973;
  }
}

uint64_t sub_20E30EE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x30303169726973 && a2 == 0xE700000000000000;
  if (v6 || (sub_20E322D60() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E322D60();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20E30EF4C(uint64_t a1)
{
  v2 = sub_20E311E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30EF88(uint64_t a1)
{
  v2 = sub_20E311E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30EFC4(uint64_t a1)
{
  v2 = sub_20E311F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30F000(uint64_t a1)
{
  v2 = sub_20E311F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30F03C(uint64_t a1)
{
  v2 = sub_20E311EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30F078(uint64_t a1)
{
  v2 = sub_20E311EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SageClient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D638, &qword_20E357578);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D640, &qword_20E357580);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D648, &qword_20E357588);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311E64();
  sub_20E322E40();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_20E311EB8();
    v18 = v22;
    sub_20E322CD0();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_20E311F0C();
    sub_20E322CD0();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t SageClient.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D668, &qword_20E357590);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D670, &qword_20E357598);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D678, &qword_20E3575A0);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311E64();
  v17 = v37;
  sub_20E322E20();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_20E322CC0();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_20E322B30();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D470, &qword_20E357480) + 48);
    *v25 = &type metadata for SageClient;
    sub_20E322C40();
    sub_20E322B20();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_20E311EB8();
    sub_20E322C30();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_20E311F0C();
    sub_20E322C30();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

uint64_t sub_20E30F818()
{
  if (*v0)
  {
    result = 0x6E776F6E6B6E75;
  }

  else
  {
    result = 1769105779;
  }

  *v0;
  return result;
}

uint64_t sub_20E30F84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1769105779 && a2 == 0xE400000000000000;
  if (v5 || (sub_20E322D60() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E322D60();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20E30F928(uint64_t a1)
{
  v2 = sub_20E311F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30F964(uint64_t a1)
{
  v2 = sub_20E311F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30F9A0(uint64_t a1)
{
  v2 = sub_20E312008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30F9DC(uint64_t a1)
{
  v2 = sub_20E312008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20E30FA18(uint64_t a1)
{
  v2 = sub_20E311FB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E30FA54(uint64_t a1)
{
  v2 = sub_20E311FB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IEClient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D680, &qword_20E3575A8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D688, &qword_20E3575B0);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D690, &qword_20E3575B8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311F60();
  sub_20E322E40();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_20E311FB4();
    v18 = v22;
    sub_20E322CD0();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_20E312008();
    sub_20E322CD0();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t IEClient.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D6B0, &qword_20E3575C0);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D6B8, &qword_20E3575C8);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D6C0, &qword_20E3575D0);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E311F60();
  v17 = v37;
  sub_20E322E20();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_20E322CC0();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_20E322B30();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D470, &qword_20E357480) + 48);
    *v25 = &type metadata for IEClient;
    sub_20E322C40();
    sub_20E322B20();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_20E311FB4();
    sub_20E322C30();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_20E312008();
    sub_20E322C30();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

LighthouseDataProcessor::ErrorComponent_optional __swiftcall ErrorComponent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E322C20();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20E310220()
{
  v1 = *v0;
  sub_20E322DE0();
  sub_20E307DA0();
  return sub_20E322E00();
}

uint64_t sub_20E310270()
{
  v1 = *v0;
  sub_20E322DE0();
  sub_20E307DA0();
  return sub_20E322E00();
}

unint64_t sub_20E3102C0@<X0>(unint64_t *a1@<X8>)
{
  result = ErrorComponent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20E3103A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20E322250();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoParticipantID(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E322E10();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_20E31205C();
    sub_20E322D70();
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_20E322240();
    sub_20E3116DC(qword_280E0C940, type metadata accessor for TranscriptProtoParticipantID);
    sub_20E322450();
    sub_20E315318(v10, a2, type metadata accessor for TranscriptProtoParticipantID);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_20E3105AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20E322250();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoEvent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E322E10();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_20E31205C();
    sub_20E322D70();
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_20E322240();
    sub_20E3116DC(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent);
    sub_20E322450();
    sub_20E315318(v10, a2, type metadata accessor for TranscriptProtoEvent);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t CodableMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v21 = a4;
  v7 = sub_20E322250();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E322E10();
  if (!v4)
  {
    v19 = v10;
    v20 = a2;
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_20E31205C();
    sub_20E322D70();
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v15 = *(v26 + 8);
    sub_20E322240();
    v16 = v20;
    sub_20E322450();
    (*(v19 + 32))(v21, v13, v16);
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_20E3109BC(void *a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(0);
  sub_20E3116DC(a3, a4);
  result = sub_20E322460();
  if (!v4)
  {
    v10 = a1[3];
    v11 = a1[4];
    v12 = result;
    v13 = a1;
    v14 = v9;
    __swift_project_boxed_opaque_existential_1(v13, v10);
    sub_20E322E30();
    __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_20E3120B0();
    sub_20E322D90();
    sub_20E05E888(v12, v14);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  return result;
}

uint64_t CodableMessage.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  result = sub_20E322460();
  if (!v3)
  {
    v8 = a1[3];
    v9 = a1[4];
    v10 = result;
    v11 = a1;
    v12 = v7;
    __swift_project_boxed_opaque_existential_1(v11, v8);
    sub_20E322E30();
    __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_20E3120B0();
    sub_20E322D90();
    sub_20E05E888(v10, v12);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return result;
}

BOOL _s23LighthouseDataProcessor15IERequestStatusO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v12 = sub_20E3078D0(*a1, *a2);
      sub_20E07119C(v3, v2, 0);
      sub_20E07119C(v6, v5, 0);
      return v12 & 1;
    }

    goto LABEL_17;
  }

  if (v4 != 1)
  {
    if (v3 > 1)
    {
      if (v3 ^ 2 | v2)
      {
        if (v7 != 2 || v6 != 3 || v5)
        {
          goto LABEL_17;
        }

        sub_20E07119C(*a1, v2, 2);
        v14 = 3;
      }

      else
      {
        if (v7 != 2 || v6 != 2 || v5)
        {
          goto LABEL_17;
        }

        sub_20E07119C(*a1, v2, 2);
        v14 = 2;
      }
    }

    else
    {
      if (v3 | v2)
      {
        if (v7 == 2 && v6 == 1 && !v5)
        {
          sub_20E07119C(*a1, v2, 2);
          v11 = 1;
          sub_20E07119C(1, 0, 2);
          return v11;
        }

        goto LABEL_17;
      }

      if (v7 != 2 || v5 | v6)
      {
LABEL_17:
        sub_20E31101C(v6, v5, v7);
        sub_20E07119C(v3, v2, v4);
        sub_20E07119C(v6, v5, v7);
        return 0;
      }

      sub_20E07119C(*a1, v2, 2);
      v14 = 0;
    }

    v16 = 0;
    v17 = 2;
    goto LABEL_33;
  }

  if (v7 != 1)
  {
    v15 = *(a1 + 8);

    goto LABEL_17;
  }

  v8 = *a1;
  if (v3 == v6 && v2 == v5)
  {
    sub_20E31101C(v8, v2, 1);
    sub_20E31101C(v3, v2, 1);
    sub_20E07119C(v3, v2, 1);
    v14 = v3;
    v16 = v2;
    v17 = 1;
LABEL_33:
    sub_20E07119C(v14, v16, v17);
    return 1;
  }

  v10 = sub_20E322D60();
  sub_20E31101C(v6, v5, 1);
  sub_20E31101C(v3, v2, 1);
  sub_20E07119C(v3, v2, 1);
  sub_20E07119C(v6, v5, 1);
  return (v10 & 1) != 0;
}

uint64_t sub_20E310F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSignature(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E310FAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A80, &qword_20E3573F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E31101C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_20E311034()
{
  result = qword_27C86D370;
  if (!qword_27C86D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D370);
  }

  return result;
}

unint64_t sub_20E311088()
{
  result = qword_27C86D378;
  if (!qword_27C86D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D378);
  }

  return result;
}

unint64_t sub_20E3110DC()
{
  result = qword_27C86D380;
  if (!qword_27C86D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D380);
  }

  return result;
}

unint64_t sub_20E311130()
{
  result = qword_27C86D390;
  if (!qword_27C86D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D390);
  }

  return result;
}

unint64_t sub_20E311184()
{
  result = qword_27C86D3A0;
  if (!qword_27C86D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D3A0);
  }

  return result;
}

unint64_t sub_20E3111D8()
{
  result = qword_27C86D3A8;
  if (!qword_27C86D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D3A8);
  }

  return result;
}

uint64_t sub_20E31122C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C868900, &qword_20E357400);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20E311298()
{
  result = qword_27C86D3B8;
  if (!qword_27C86D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D3B8);
  }

  return result;
}

unint64_t sub_20E3112EC()
{
  result = qword_27C86D3F8;
  if (!qword_27C86D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D3F8);
  }

  return result;
}

unint64_t sub_20E311340()
{
  result = qword_27C86D400;
  if (!qword_27C86D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D400);
  }

  return result;
}

unint64_t sub_20E311394()
{
  result = qword_27C86D408;
  if (!qword_27C86D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D408);
  }

  return result;
}

unint64_t sub_20E3113E8()
{
  result = qword_27C86D410;
  if (!qword_27C86D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D410);
  }

  return result;
}

unint64_t sub_20E31143C()
{
  result = qword_27C86D418;
  if (!qword_27C86D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D418);
  }

  return result;
}

unint64_t sub_20E311490()
{
  result = qword_27C86D420;
  if (!qword_27C86D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D420);
  }

  return result;
}

unint64_t sub_20E3114E4()
{
  result = qword_27C86D428;
  if (!qword_27C86D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D428);
  }

  return result;
}

unint64_t sub_20E311538()
{
  result = qword_27C86D430;
  if (!qword_27C86D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D430);
  }

  return result;
}

unint64_t sub_20E31158C()
{
  result = qword_27C86D478;
  if (!qword_27C86D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D478);
  }

  return result;
}

unint64_t sub_20E3115E0()
{
  result = qword_27C86D488;
  if (!qword_27C86D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D488);
  }

  return result;
}

unint64_t sub_20E311634()
{
  result = qword_27C86D4A0;
  if (!qword_27C86D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D4A0);
  }

  return result;
}

unint64_t sub_20E311688()
{
  result = qword_27C86D4B0;
  if (!qword_27C86D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D4B0);
  }

  return result;
}

uint64_t sub_20E3116DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20E311744()
{
  result = qword_27C86D4E0;
  if (!qword_27C86D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D4E0);
  }

  return result;
}

uint64_t sub_20E311798(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C86D4B8, &qword_20E3574A0);
    sub_20E3116DC(a2, type metadata accessor for ParticipantInfo);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20E311834()
{
  result = qword_27C86D508;
  if (!qword_27C86D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D508);
  }

  return result;
}

uint64_t sub_20E311888(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E3118E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20E311950()
{
  result = qword_27C86D520;
  if (!qword_27C86D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D520);
  }

  return result;
}

unint64_t sub_20E3119A4()
{
  result = qword_27C86D538;
  if (!qword_27C86D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D538);
  }

  return result;
}

unint64_t sub_20E3119F8()
{
  result = qword_27C86D548;
  if (!qword_27C86D548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C86D540, &qword_20E3574D8);
    sub_20E3116DC(&qword_27C86D4C8, type metadata accessor for ParticipantInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D548);
  }

  return result;
}

unint64_t sub_20E311AB4()
{
  result = qword_27C86D558;
  if (!qword_27C86D558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C86D540, &qword_20E3574D8);
    sub_20E3116DC(&qword_27C86D4F0, type metadata accessor for ParticipantInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D558);
  }

  return result;
}

unint64_t sub_20E311B70()
{
  result = qword_27C86D588;
  if (!qword_27C86D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D588);
  }

  return result;
}

unint64_t sub_20E311BC4()
{
  result = qword_27C86D590;
  if (!qword_27C86D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D590);
  }

  return result;
}

unint64_t sub_20E311C18()
{
  result = qword_27C86D598;
  if (!qword_27C86D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D598);
  }

  return result;
}

unint64_t sub_20E311C6C()
{
  result = qword_27C86D5A0;
  if (!qword_27C86D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D5A0);
  }

  return result;
}

unint64_t sub_20E311CC0()
{
  result = qword_27C86D5A8;
  if (!qword_27C86D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D5A8);
  }

  return result;
}

unint64_t sub_20E311D14()
{
  result = qword_27C86D5F8;
  if (!qword_27C86D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D5F8);
  }

  return result;
}

unint64_t sub_20E311D68()
{
  result = qword_27C86D600;
  if (!qword_27C86D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D600);
  }

  return result;
}

unint64_t sub_20E311DBC()
{
  result = qword_27C86D608;
  if (!qword_27C86D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D608);
  }

  return result;
}

unint64_t sub_20E311E10()
{
  result = qword_27C86D610;
  if (!qword_27C86D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D610);
  }

  return result;
}

unint64_t sub_20E311E64()
{
  result = qword_27C86D650;
  if (!qword_27C86D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D650);
  }

  return result;
}

unint64_t sub_20E311EB8()
{
  result = qword_27C86D658;
  if (!qword_27C86D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D658);
  }

  return result;
}

unint64_t sub_20E311F0C()
{
  result = qword_27C86D660;
  if (!qword_27C86D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D660);
  }

  return result;
}

unint64_t sub_20E311F60()
{
  result = qword_27C86D698;
  if (!qword_27C86D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D698);
  }

  return result;
}

unint64_t sub_20E311FB4()
{
  result = qword_27C86D6A0;
  if (!qword_27C86D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6A0);
  }

  return result;
}

unint64_t sub_20E312008()
{
  result = qword_27C86D6A8;
  if (!qword_27C86D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6A8);
  }

  return result;
}

unint64_t sub_20E31205C()
{
  result = qword_27C86D6C8;
  if (!qword_27C86D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6C8);
  }

  return result;
}

unint64_t sub_20E3120B0()
{
  result = qword_27C86D6D0;
  if (!qword_27C86D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6D0);
  }

  return result;
}

unint64_t sub_20E312108()
{
  result = qword_27C86D6D8;
  if (!qword_27C86D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6D8);
  }

  return result;
}

unint64_t sub_20E312160()
{
  result = qword_27C86D6E0;
  if (!qword_27C86D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6E0);
  }

  return result;
}

unint64_t sub_20E3121B8()
{
  result = qword_27C86D6E8;
  if (!qword_27C86D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6E8);
  }

  return result;
}

unint64_t sub_20E312210()
{
  result = qword_27C86D6F0;
  if (!qword_27C86D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6F0);
  }

  return result;
}

unint64_t sub_20E312268()
{
  result = qword_27C86D6F8;
  if (!qword_27C86D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D6F8);
  }

  return result;
}

uint64_t sub_20E3122BC(void *a1)
{
  a1[1] = sub_20E3116DC(qword_280E0C940, type metadata accessor for TranscriptProtoParticipantID);
  a1[2] = sub_20E3116DC(&qword_27C86D700, type metadata accessor for TranscriptProtoParticipantID);
  result = sub_20E3116DC(&qword_27C86D708, type metadata accessor for TranscriptProtoParticipantID);
  a1[3] = result;
  return result;
}

uint64_t sub_20E312368(void *a1)
{
  a1[1] = sub_20E3116DC(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent);
  a1[2] = sub_20E3116DC(&qword_27C86D710, type metadata accessor for TranscriptProtoEvent);
  result = sub_20E3116DC(&qword_27C86D718, type metadata accessor for TranscriptProtoEvent);
  a1[3] = result;
  return result;
}

void sub_20E31243C()
{
  sub_20E322010();
  if (v0 <= 0x3F)
  {
    sub_20E3125DC(319, &qword_27C86D720, type metadata accessor for SessionData);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E312514()
{
  sub_20E322010();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SessionSignature(319);
    if (v1 <= 0x3F)
    {
      sub_20E3125DC(319, &qword_27C86D728, type metadata accessor for RequestData);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E3125DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20E322810();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20E312668()
{
  sub_20E322010();
  if (v0 <= 0x3F)
  {
    sub_20E312B10(319, &qword_280E04048, type metadata accessor for TranscriptProtoEvent, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E312C78(319, &qword_27C86D740, &type metadata for RequestSignature, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_23LighthouseDataProcessor15IERequestStatusO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy62_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20E3127A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 62))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20E3127E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 62) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 62) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20E31284C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20E312894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_20E3128D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_20E312900(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20E312948(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_20E3129BC()
{
  sub_20E312B10(319, &qword_27C86D748, type metadata accessor for AttributionTraits, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E312C78(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E312B10(319, &qword_27C86D750, type metadata accessor for ParticipantInfo, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E312B10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20E312B9C()
{
  sub_20E312C78(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E312B10(319, &qword_27C86D768, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E312C78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_20E312CF0()
{
  sub_20E312C78(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E322010();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for IFRequestTelemetryRequestLinkMapper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IFRequestTelemetryRequestLinkMapper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20E313040()
{
  result = qword_27C86D780;
  if (!qword_27C86D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D780);
  }

  return result;
}

unint64_t sub_20E313098()
{
  result = qword_27C86D788;
  if (!qword_27C86D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D788);
  }

  return result;
}

unint64_t sub_20E3130F0()
{
  result = qword_27C86D790;
  if (!qword_27C86D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D790);
  }

  return result;
}

unint64_t sub_20E313148()
{
  result = qword_27C86D798;
  if (!qword_27C86D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D798);
  }

  return result;
}

unint64_t sub_20E3131A0()
{
  result = qword_27C86D7A0;
  if (!qword_27C86D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7A0);
  }

  return result;
}

unint64_t sub_20E3131F8()
{
  result = qword_27C86D7A8;
  if (!qword_27C86D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7A8);
  }

  return result;
}

unint64_t sub_20E313250()
{
  result = qword_27C86D7B0;
  if (!qword_27C86D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7B0);
  }

  return result;
}

unint64_t sub_20E3132A8()
{
  result = qword_27C86D7B8;
  if (!qword_27C86D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7B8);
  }

  return result;
}

unint64_t sub_20E313300()
{
  result = qword_27C86D7C0;
  if (!qword_27C86D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7C0);
  }

  return result;
}

unint64_t sub_20E313358()
{
  result = qword_27C86D7C8;
  if (!qword_27C86D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7C8);
  }

  return result;
}

unint64_t sub_20E3133B0()
{
  result = qword_27C86D7D0;
  if (!qword_27C86D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7D0);
  }

  return result;
}

unint64_t sub_20E313408()
{
  result = qword_27C86D7D8;
  if (!qword_27C86D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7D8);
  }

  return result;
}

unint64_t sub_20E313460()
{
  result = qword_27C86D7E0;
  if (!qword_27C86D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7E0);
  }

  return result;
}

unint64_t sub_20E3134B8()
{
  result = qword_27C86D7E8;
  if (!qword_27C86D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7E8);
  }

  return result;
}

unint64_t sub_20E313510()
{
  result = qword_27C86D7F0;
  if (!qword_27C86D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7F0);
  }

  return result;
}

unint64_t sub_20E313568()
{
  result = qword_27C86D7F8;
  if (!qword_27C86D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D7F8);
  }

  return result;
}

unint64_t sub_20E3135C0()
{
  result = qword_27C86D800;
  if (!qword_27C86D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D800);
  }

  return result;
}

unint64_t sub_20E313618()
{
  result = qword_27C86D808;
  if (!qword_27C86D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D808);
  }

  return result;
}

unint64_t sub_20E313670()
{
  result = qword_27C86D810;
  if (!qword_27C86D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D810);
  }

  return result;
}

unint64_t sub_20E3136C8()
{
  result = qword_27C86D818;
  if (!qword_27C86D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D818);
  }

  return result;
}

unint64_t sub_20E313720()
{
  result = qword_27C86D820;
  if (!qword_27C86D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D820);
  }

  return result;
}

unint64_t sub_20E313778()
{
  result = qword_27C86D828;
  if (!qword_27C86D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D828);
  }

  return result;
}

unint64_t sub_20E3137D0()
{
  result = qword_27C86D830;
  if (!qword_27C86D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D830);
  }

  return result;
}

unint64_t sub_20E313828()
{
  result = qword_27C86D838;
  if (!qword_27C86D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D838);
  }

  return result;
}

unint64_t sub_20E313880()
{
  result = qword_27C86D840;
  if (!qword_27C86D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D840);
  }

  return result;
}

unint64_t sub_20E3138D8()
{
  result = qword_27C86D848;
  if (!qword_27C86D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D848);
  }

  return result;
}

unint64_t sub_20E313930()
{
  result = qword_27C86D850;
  if (!qword_27C86D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D850);
  }

  return result;
}

unint64_t sub_20E313988()
{
  result = qword_27C86D858;
  if (!qword_27C86D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D858);
  }

  return result;
}

unint64_t sub_20E3139E0()
{
  result = qword_27C86D860;
  if (!qword_27C86D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D860);
  }

  return result;
}

unint64_t sub_20E313A38()
{
  result = qword_27C86D868;
  if (!qword_27C86D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D868);
  }

  return result;
}

unint64_t sub_20E313A90()
{
  result = qword_27C86D870;
  if (!qword_27C86D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D870);
  }

  return result;
}

unint64_t sub_20E313AE8()
{
  result = qword_27C86D878;
  if (!qword_27C86D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D878);
  }

  return result;
}

unint64_t sub_20E313B40()
{
  result = qword_27C86D880;
  if (!qword_27C86D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D880);
  }

  return result;
}

unint64_t sub_20E313B98()
{
  result = qword_27C86D888;
  if (!qword_27C86D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D888);
  }

  return result;
}

unint64_t sub_20E313BF0()
{
  result = qword_27C86D890;
  if (!qword_27C86D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D890);
  }

  return result;
}

unint64_t sub_20E313C48()
{
  result = qword_27C86D898;
  if (!qword_27C86D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D898);
  }

  return result;
}

unint64_t sub_20E313CA0()
{
  result = qword_27C86D8A0;
  if (!qword_27C86D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8A0);
  }

  return result;
}

unint64_t sub_20E313CF8()
{
  result = qword_27C86D8A8;
  if (!qword_27C86D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8A8);
  }

  return result;
}

unint64_t sub_20E313D50()
{
  result = qword_27C86D8B0;
  if (!qword_27C86D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8B0);
  }

  return result;
}

unint64_t sub_20E313DA8()
{
  result = qword_27C86D8B8;
  if (!qword_27C86D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8B8);
  }

  return result;
}

unint64_t sub_20E313E00()
{
  result = qword_27C86D8C0;
  if (!qword_27C86D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8C0);
  }

  return result;
}

unint64_t sub_20E313E58()
{
  result = qword_27C86D8C8;
  if (!qword_27C86D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8C8);
  }

  return result;
}

unint64_t sub_20E313EB0()
{
  result = qword_27C86D8D0;
  if (!qword_27C86D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8D0);
  }

  return result;
}

unint64_t sub_20E313F08()
{
  result = qword_27C86D8D8;
  if (!qword_27C86D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8D8);
  }

  return result;
}

unint64_t sub_20E313F60()
{
  result = qword_27C86D8E0;
  if (!qword_27C86D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8E0);
  }

  return result;
}

unint64_t sub_20E313FB8()
{
  result = qword_27C86D8E8;
  if (!qword_27C86D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8E8);
  }

  return result;
}

unint64_t sub_20E314010()
{
  result = qword_27C86D8F0;
  if (!qword_27C86D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8F0);
  }

  return result;
}

unint64_t sub_20E314068()
{
  result = qword_27C86D8F8;
  if (!qword_27C86D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D8F8);
  }

  return result;
}

unint64_t sub_20E3140C0()
{
  result = qword_27C86D900;
  if (!qword_27C86D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D900);
  }

  return result;
}

unint64_t sub_20E314118()
{
  result = qword_27C86D908;
  if (!qword_27C86D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D908);
  }

  return result;
}

unint64_t sub_20E314170()
{
  result = qword_27C86D910;
  if (!qword_27C86D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D910);
  }

  return result;
}

unint64_t sub_20E3141C8()
{
  result = qword_27C86D918;
  if (!qword_27C86D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D918);
  }

  return result;
}

unint64_t sub_20E314220()
{
  result = qword_27C86D920;
  if (!qword_27C86D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D920);
  }

  return result;
}

unint64_t sub_20E314278()
{
  result = qword_27C86D928;
  if (!qword_27C86D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D928);
  }

  return result;
}

unint64_t sub_20E3142D0()
{
  result = qword_27C86D930;
  if (!qword_27C86D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D930);
  }

  return result;
}

unint64_t sub_20E314328()
{
  result = qword_27C86D938;
  if (!qword_27C86D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D938);
  }

  return result;
}

unint64_t sub_20E314380()
{
  result = qword_27C86D940;
  if (!qword_27C86D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D940);
  }

  return result;
}

unint64_t sub_20E3143D8()
{
  result = qword_27C86D948;
  if (!qword_27C86D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D948);
  }

  return result;
}

unint64_t sub_20E314430()
{
  result = qword_27C86D950;
  if (!qword_27C86D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D950);
  }

  return result;
}

unint64_t sub_20E314488()
{
  result = qword_27C86D958;
  if (!qword_27C86D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D958);
  }

  return result;
}

unint64_t sub_20E3144E0()
{
  result = qword_27C86D960;
  if (!qword_27C86D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D960);
  }

  return result;
}

unint64_t sub_20E314538()
{
  result = qword_27C86D968;
  if (!qword_27C86D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D968);
  }

  return result;
}

unint64_t sub_20E314590()
{
  result = qword_27C86D970;
  if (!qword_27C86D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D970);
  }

  return result;
}

unint64_t sub_20E3145E8()
{
  result = qword_27C86D978;
  if (!qword_27C86D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D978);
  }

  return result;
}

unint64_t sub_20E314640()
{
  result = qword_27C86D980;
  if (!qword_27C86D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D980);
  }

  return result;
}

unint64_t sub_20E314698()
{
  result = qword_27C86D988;
  if (!qword_27C86D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D988);
  }

  return result;
}

unint64_t sub_20E3146F0()
{
  result = qword_27C86D990;
  if (!qword_27C86D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D990);
  }

  return result;
}

unint64_t sub_20E314748()
{
  result = qword_27C86D998;
  if (!qword_27C86D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D998);
  }

  return result;
}

unint64_t sub_20E3147A0()
{
  result = qword_27C86D9A0;
  if (!qword_27C86D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D9A0);
  }

  return result;
}

uint64_t sub_20E3147F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5374736575716572 && a2 == 0xED00007375746174 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020E364380 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465747563657865 && a2 == 0xEF7344496C6F6F54 || (sub_20E322D60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020E35D1A0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F43726F727265 && a2 == 0xEE00746E656E6F70)
  {

    return 5;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_20E314A10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C65636E6163 && a2 == 0xE800000000000000 || (sub_20E322D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (sub_20E322D60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E6F646E616261 && a2 == 0xE900000000000064 || (sub_20E322D60() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_20E314C14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E35F3A0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6552737574617473 && a2 == 0xEC0000006E6F7361 || (sub_20E322D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEB000000006E6F69 || (sub_20E322D60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E3643A0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E3643C0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020E3643E0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E364400 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x747461506E617073 && a2 == 0xEB000000006E7265)
  {

    return 8;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_20E314F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475626972747461 && a2 == 0xEF687461506E6F69;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E364420 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x75716552746F6F72 && a2 == 0xED00006449747365 || (sub_20E322D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x526572756C696166 && a2 == 0xED00006E6F736165)
  {

    return 3;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_20E315090(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C65636E6163 && a2 == 0xE800000000000000 || (sub_20E322D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_20E3151F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6769626D61736964 && a2 == 0xEE006E6F69746175 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_20E315318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20E315380()
{
  result = qword_27C86D9A8;
  if (!qword_27C86D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D9A8);
  }

  return result;
}

void *sub_20E315438(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v34 - v4;
  v6 = 0x277E1B000uLL;
  v7 = [objc_allocWithZone(MEMORY[0x277D58110]) init];
  v8 = v7;
  if (v7)
  {
    v9 = a1[2];
    if (v9)
    {
      v10 = a1[1];
      v11 = v7;
      v9 = sub_20E322860();
    }

    else
    {
      v12 = v7;
    }

    [v8 setAssistantSchemaKind_];

    sub_20E31587C();
    v13 = v8;
    v14 = sub_20E322960();
    [v13 setTools_];
  }

  v15 = *a1;
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
    v18 = *(v17 - 8);
    v19 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v20 = *(v18 + 72);
    v21 = (v18 + 56);
    v22 = 0x277D58000uLL;
    v35 = v17;
    v36 = v20;
    do
    {
      sub_20E3157B0(v19, v5);
      (*v21)(v5, 0, 1, v17);
      sub_20E315814(v5);
      v23 = [objc_allocWithZone(*(v22 + 264)) *(v6 + 3936)];
      if (v23)
      {
        v24 = v23;
        if (v8)
        {
          v25 = v8;
          v26 = [v25 tools];
          if (v26)
          {
            v27 = v26;
            sub_20E31587C();
            v28 = sub_20E322970();

            v37 = v28;
            v29 = v24;
            MEMORY[0x20F32BF90]();
            if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v31 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_20E322990();
            }

            sub_20E3229B0();
            if (v37)
            {
              v30 = sub_20E322960();
            }

            else
            {
              v30 = 0;
            }

            v17 = v35;
            [v25 setTools_];

            v6 = 0x277E1B000;
          }

          else
          {
            [v25 setTools_];
          }

          v20 = v36;
          v22 = 0x277D58000;
        }

        else
        {
        }
      }

      v19 += v20;
      --v16;
    }

    while (v16);
  }

  v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v32 - 8) + 56))(v5, 1, 1, v32);
  return v8;
}

uint64_t sub_20E3157B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E315814(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20E31587C()
{
  result = qword_27C86D9B0;
  if (!qword_27C86D9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C86D9B0);
  }

  return result;
}

uint64_t AppIntentMetricsDefinitions.dateStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20E322010();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppIntentMetricsDefinitions.dateStamp.setter(uint64_t a1)
{
  v3 = sub_20E322010();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppIntentMetricsDefinitions.executedToolId.getter()
{
  v1 = (v0 + *(type metadata accessor for AppIntentMetricsDefinitions() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for AppIntentMetricsDefinitions()
{
  result = qword_27C86D9D0;
  if (!qword_27C86D9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppIntentMetricsDefinitions.executedToolId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppIntentMetricsDefinitions() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AppIntentMetricsDefinitions.runtimeErrorComponent.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AppIntentMetricsDefinitions();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AppIntentMetricsDefinitions.runtimeErrorComponent.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AppIntentMetricsDefinitions();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t AppIntentMetricsDefinitions.toolCompletionStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppIntentMetricsDefinitions() + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_20E31101C(v4, v5, v6);
}

uint64_t AppIntentMetricsDefinitions.toolCompletionStatus.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for AppIntentMetricsDefinitions() + 28);
  result = sub_20E07119C(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t AppIntentMetricsDefinitions.errorMessage.getter()
{
  v1 = (v0 + *(type metadata accessor for AppIntentMetricsDefinitions() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppIntentMetricsDefinitions.errorMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppIntentMetricsDefinitions() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t sub_20E315D44()
{
  v1 = *v0;
  v2 = 0x6D61745365746164;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x73654D726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465747563657865;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20E315E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20E3168E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20E315E38(uint64_t a1)
{
  v2 = sub_20E316130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E315E74(uint64_t a1)
{
  v2 = sub_20E316130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppIntentMetricsDefinitions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D9B8, &qword_20E359880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E316130();
  sub_20E322E40();
  LOBYTE(v23) = 0;
  sub_20E322010();
  sub_20E19CE58(&qword_27C868920);
  sub_20E322D40();
  if (!v2)
  {
    v11 = type metadata accessor for AppIntentMetricsDefinitions();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v23) = 1;
    sub_20E322D10();
    LOBYTE(v23) = *(v3 + v11[6]);
    v26 = 2;
    sub_20E311130();
    sub_20E322D40();
    v15 = v3 + v11[7];
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    v23 = *v15;
    v24 = v16;
    v25 = v17;
    v26 = 3;
    sub_20E31101C(v23, v16, v17);
    sub_20E3110DC();
    sub_20E322D40();
    sub_20E07119C(v23, v24, v25);
    v18 = (v3 + v11[8]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v23) = 4;
    sub_20E322D10();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20E316130()
{
  result = qword_27C86D9C0;
  if (!qword_27C86D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D9C0);
  }

  return result;
}

uint64_t AppIntentMetricsDefinitions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_20E322010();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D9C8, &qword_20E359888);
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AppIntentMetricsDefinitions();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E316130();
  v33 = v10;
  sub_20E322E20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v29;
  LOBYTE(v34) = 0;
  sub_20E19CE58(&qword_27C868938);
  v17 = v30;
  sub_20E322CB0();
  (*(v16 + 32))(v14, v17, v4);
  LOBYTE(v34) = 1;
  v18 = sub_20E322C80();
  v19 = &v14[v11[5]];
  *v19 = v18;
  v19[1] = v20;
  v36 = 2;
  sub_20E311298();
  sub_20E322CB0();
  v14[v11[6]] = v34;
  v36 = 3;
  sub_20E3111D8();
  sub_20E322CB0();
  v21 = v35;
  v22 = &v14[v11[7]];
  *v22 = v34;
  v22[16] = v21;
  LOBYTE(v34) = 4;
  v23 = sub_20E322C80();
  v25 = v24;
  (*(v31 + 8))(v33, v32);
  v26 = &v14[v11[8]];
  *v26 = v23;
  v26[1] = v25;
  sub_20E316628(v14, v28);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_20E31668C(v14);
}

uint64_t sub_20E316628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentMetricsDefinitions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E31668C(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentMetricsDefinitions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E316740()
{
  result = sub_20E322010();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20E3167E4()
{
  result = qword_27C86D9E0;
  if (!qword_27C86D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D9E0);
  }

  return result;
}

unint64_t sub_20E31683C()
{
  result = qword_27C86D9E8;
  if (!qword_27C86D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D9E8);
  }

  return result;
}

unint64_t sub_20E316894()
{
  result = qword_27C86D9F0;
  if (!qword_27C86D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D9F0);
  }

  return result;
}

uint64_t sub_20E3168E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D61745365746164 && a2 == 0xE900000000000070;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465747563657865 && a2 == 0xEE0064496C6F6F54 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000020E364440 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000020E364460 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173)
  {

    return 4;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void IFRequestTelemetryRequestLinkMapper.init(bookmarkSuite:)(void *a1@<X8>)
{
  type metadata accessor for DataProcessorBookmarkProvider();
  v2 = swift_allocObject();
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_20E322860();

  v5 = [v3 initWithSuiteName_];

  v2[2] = v5;
  v2[3] = 0xD000000000000023;
  v2[4] = 0x800000020E364480;
  v2[5] = 0xD000000000000038;
  v2[6] = 0x800000020E3644B0;
  *a1 = v2;
}

uint64_t IFRequestTelemetryRequestLinkMapper.ingest(dataPool:)(uint64_t a1)
{
  v2[7] = a1;
  v3 = sub_20E3220A0();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v2[10] = *(v4 + 64);
  v2[11] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_20E322010();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v2[15] = *(v7 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v1;
  v2[19] = v8;
  v2[20] = v9;

  return MEMORY[0x2822009F8](sub_20E316D18, 0, 0);
}

uint64_t sub_20E316D18()
{
  v55 = v0;
  v1 = v0[20];
  DataProcessorBookmarkProvider.lastCollectionDate.getter(v0[19]);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[13];
  v5 = v0[14];
  v6 = sub_20E3227C0();
  __swift_project_value_buffer(v6, qword_280E12C48);
  v52 = *(v5 + 16);
  v52(v2, v3, v4);
  v7 = sub_20E3227B0();
  v8 = sub_20E322A40();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v11 = v0[13];
  v12 = v0[14];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v54 = v14;
    *v13 = 136315138;
    sub_20E317CA8(&qword_280E12B30, MEMORY[0x277CC9578]);
    v15 = sub_20E322D50();
    v17 = v16;
    v53 = *(v12 + 8);
    v53(v10, v11);
    v18 = sub_20E31B6C4(v15, v17, &v54);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20E031000, v7, v8, "Bookmark: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F32CA80](v14, -1, -1);
    MEMORY[0x20F32CA80](v13, -1, -1);
  }

  else
  {

    v53 = *(v12 + 8);
    v53(v10, v11);
  }

  v19 = v0[19];
  v20 = v0[17];
  v21 = v0[13];
  v22 = v0[14];
  v23 = v0[12];
  sub_20E321FE0();
  (*(v22 + 56))(v23, 1, 1, v21);
  v24 = sub_20E321FB0();
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    v25 = 0;
  }

  else
  {
    v26 = v0[13];
    v27 = v0[14];
    v28 = v0[12];
    v25 = sub_20E321FB0();
    v53(v28, v26);
  }

  v29 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v24 endDate:v25 maxEvents:0 lastN:0 reversed:0];

  sub_20E322720();
  sub_20E317CA8(qword_280E040E8, MEMORY[0x277D20308]);
  v30 = v29;
  sub_20E322740();

  v31 = v0[20];
  v32 = v0[17];
  v50 = v0[19];
  v49 = v30;
  v33 = v0[15];
  v35 = v0[13];
  v34 = v0[14];
  v36 = v0[11];
  v51 = v0[12];
  v37 = v0[9];
  v45 = v0[8];
  v46 = v0[10];
  v44 = v0[7];
  v48 = v0[6];
  v47 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v52(v47, v32, v35);
  v38 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v31;
  (*(v34 + 32))(v39 + v38, v47, v35);
  (*(v37 + 16))(v36, v44, v45);
  v40 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v41 = swift_allocObject();
  (*(v37 + 32))(v41 + v40, v36, v45);

  sub_20E3227E0();

  v53(v32, v35);
  v53(v50, v35);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v42 = v0[1];

  return v42();
}

void sub_20E31732C(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20E322010();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (v10)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v11 = sub_20E3227C0();
    __swift_project_value_buffer(v11, qword_280E12C48);
    v12 = v10;
    v19 = sub_20E3227B0();
    v13 = sub_20E322A50();
    if (os_log_type_enabled(v19, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_20E031000, v19, v13, "Error, sink failed: %@", v14, 0xCu);
      sub_20E04875C(v15, &qword_27C863F48, &qword_20E325DA8);
      MEMORY[0x20F32CA80](v15, -1, -1);
      MEMORY[0x20F32CA80](v14, -1, -1);
      v17 = v19;
    }

    else
    {

      v17 = v10;
    }
  }

  else
  {
    (*(v7 + 16))(v9, a3);
    DataProcessorBookmarkProvider.lastCollectionDate.setter(v9);
  }
}

void sub_20E317564(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D9F8, &qword_20E359AE8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - v4;
  v6 = sub_20E3220D0();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FF8, &qword_20E359AF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - v11;
  v13 = sub_20E322770();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v41 = &v36 - v19;
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v20 = sub_20E3227C0();
  __swift_project_value_buffer(v20, qword_280E12C48);
  v21 = sub_20E3227B0();
  v22 = sub_20E322A40();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v37 = v18;
    v24 = v6;
    v25 = v23;
    *v23 = 0;
    _os_log_impl(&dword_20E031000, v21, v22, "event received", v23, 2u);
    v26 = v25;
    v6 = v24;
    v18 = v37;
    MEMORY[0x20F32CA80](v26, -1, -1);
  }

  sub_20E322670();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20E04875C(v12, &qword_27C863FF8, &qword_20E359AF0);
    v27 = sub_20E3227B0();
    v28 = sub_20E322A50();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_20E31B6C4(0xD00000000000001ALL, 0x800000020E3644F0, &v42);
      _os_log_impl(&dword_20E031000, v27, v28, "%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x20F32CA80](v30, -1, -1);
      MEMORY[0x20F32CA80](v29, -1, -1);
    }

    LOBYTE(v42) = 5;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v42, 0xD00000000000001ALL, 0x800000020E3644F0);
  }

  else
  {
    v31 = v41;
    (*(v14 + 32))(v41, v12, v13);
    v32 = sub_20E319298();
    if (v32)
    {
      v33 = v32;
      (*(v14 + 16))(v18, v31, v13);
      v34 = v40;
      MonotonicTimestamp.init(biomeTimestamp:)(v18);
      v35 = v39;
      (*(v39 + 16))(v5, v34, v6);
      (*(v35 + 56))(v5, 0, 1, v6);
      sub_20E322090();

      sub_20E04875C(v5, &qword_27C86D9F8, &qword_20E359AE8);
      (*(v35 + 8))(v34, v6);
      (*(v14 + 8))(v41, v13);
    }

    else
    {
      (*(v14 + 8))(v31, v13);
    }
  }
}

void sub_20E317B64(void **a1)
{
  v3 = *(sub_20E322010() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_20E31732C(a1, v4, v5);
}

void sub_20E317BD8(uint64_t a1)
{
  v3 = *(sub_20E3220A0() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_20E317564(a1, v4);
}

uint64_t sub_20E317C48(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_20E317CA8(unint64_t *a1, void (*a2)(uint64_t))
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

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

void sub_20E317DA8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_20E317E1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA18, &qword_20E359B10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27[-v4];
  v6 = sub_20E3226D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v27[-v12];
  sub_20E3197AC(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C86DA18, &qword_20E359B10);
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v11, v13, v6);
    v14 = (*(v7 + 88))(v11, v6);
    if (v14 == *MEMORY[0x277D1FA98])
    {
      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v15 = sub_20E3227C0();
      __swift_project_value_buffer(v15, qword_280E12C48);
      v16 = sub_20E3227B0();
      v17 = sub_20E322A50();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_20E031000, v16, v17, "Unknown participant", v18, 2u);
        MEMORY[0x20F32CA80](v18, -1, -1);
      }

      (*(v7 + 8))(v13, v6);
    }

    else
    {
      if (v14 == *MEMORY[0x277D1FA88])
      {
        (*(v7 + 8))(v13, v6);
        v20 = 0;
        v19 = 59;
        goto LABEL_10;
      }

      if (v14 == *MEMORY[0x277D1FA90])
      {
        (*(v7 + 8))(v13, v6);
        v20 = 0;
        v19 = 57;
        goto LABEL_10;
      }

      if (v14 == *MEMORY[0x277D1FAA0])
      {
        (*(v7 + 8))(v13, v6);
        v20 = 0;
        v19 = 58;
        goto LABEL_10;
      }

      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v22 = sub_20E3227C0();
      __swift_project_value_buffer(v22, qword_280E12C48);
      v23 = sub_20E3227B0();
      v24 = sub_20E322A50();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_20E031000, v23, v24, "Unknown unknown participant", v25, 2u);
        MEMORY[0x20F32CA80](v25, -1, -1);
      }

      v26 = *(v7 + 8);
      v26(v13, v6);
      v26(v11, v6);
    }
  }

  v19 = 0;
  v20 = 1;
LABEL_10:
  v27[12] = v20;
  return v19 | (v20 << 32);
}

id sub_20E31826C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA18, &qword_20E359B10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v71 = v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA20, &qword_20E359B18);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v70 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v65 - v16;
  v18 = sub_20E322060();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v69 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v72 = a1;
  v73 = v65 - v23;
  sub_20E322700();
  v24 = sub_20E3227A0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v11, 1, v24) == 1)
  {
    sub_20E04875C(v11, &qword_27C86DA20, &qword_20E359B18);
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_4:
    sub_20E04875C(v17, &qword_27C863A90, &unk_20E33C020);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v28 = sub_20E3227C0();
    __swift_project_value_buffer(v28, qword_280E12C48);
    v29 = sub_20E3227B0();
    v30 = sub_20E322A50();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20E031000, v29, v30, "Missing sourceId", v31, 2u);
      MEMORY[0x20F32CA80](v31, -1, -1);
    }

    return 0;
  }

  sub_20E322790();
  v27 = *(v25 + 8);
  v27(v11, v24);
  v67 = *(v19 + 48);
  if (v67(v17, 1, v18) == 1)
  {
    goto LABEL_4;
  }

  v66 = v19;
  v32 = *(v19 + 32);
  v68 = v18;
  v65[0] = v32;
  v65[1] = v19 + 32;
  v32(v73, v17);
  v33 = v71;
  sub_20E3226E0();
  v34 = sub_20E317E1C(v33);
  sub_20E04875C(v33, &qword_27C86DA18, &qword_20E359B10);
  if ((v34 & 0x100000000) != 0)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v36 = sub_20E3227C0();
    __swift_project_value_buffer(v36, qword_280E12C48);
    v37 = sub_20E3227B0();
    v38 = sub_20E322A50();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_22;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Missing/invalid source participant";
    goto LABEL_21;
  }

  sub_20E3226C0();
  if (v26(v9, 1, v24) == 1)
  {
    sub_20E04875C(v9, &qword_27C86DA20, &qword_20E359B18);
    v35 = v70;
    (*(v66 + 56))(v70, 1, 1, v68);
LABEL_17:
    sub_20E04875C(v35, &qword_27C863A90, &unk_20E33C020);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v42 = sub_20E3227C0();
    __swift_project_value_buffer(v42, qword_280E12C48);
    v37 = sub_20E3227B0();
    v38 = sub_20E322A50();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_22;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Missing targetId";
LABEL_21:
    _os_log_impl(&dword_20E031000, v37, v38, v40, v39, 2u);
    MEMORY[0x20F32CA80](v39, -1, -1);
LABEL_22:

    (*(v66 + 8))(v73, v68);
    return 0;
  }

  v35 = v70;
  sub_20E322790();
  v27(v9, v24);
  v41 = v68;
  if (v67(v35, 1, v68) == 1)
  {
    goto LABEL_17;
  }

  v44 = v69;
  (v65[0])(v69, v35, v41);
  v45 = v71;
  sub_20E3226F0();
  v46 = sub_20E317E1C(v45);
  sub_20E04875C(v45, &qword_27C86DA18, &qword_20E359B10);
  if ((v46 & 0x100000000) != 0)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v59 = sub_20E3227C0();
    __swift_project_value_buffer(v59, qword_280E12C48);
    v60 = sub_20E3227B0();
    v61 = sub_20E322A50();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_20E031000, v60, v61, "Missing/invalid target participant", v62, 2u);
      MEMORY[0x20F32CA80](v62, -1, -1);
    }

    v63 = *(v66 + 8);
    v64 = v68;
    v63(v44, v68);
    v63(v73, v64);
    return 0;
  }

  result = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_35;
  }

  v47 = result;
  [result setComponent_];
  v48 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v49 = sub_20E322030();
  v50 = [v48 initWithNSUUID_];

  [v47 setUuid_];
  result = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v51 = result;
  [result setComponent_];
  v52 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v53 = v69;
  v54 = sub_20E322030();
  v55 = [v52 initWithNSUUID_];

  [v51 setUuid_];
  result = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (result)
  {
    v56 = result;
    [result setSource_];
    [v56 setTarget_];

    v57 = *(v66 + 8);
    v58 = v68;
    v57(v53, v68);
    v57(v73, v58);
    return v56;
  }

LABEL_36:
  __break(1u);
  return result;
}

id sub_20E318B94(uint64_t a1)
{
  v54 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA20, &qword_20E359B18);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v14 = sub_20E322060();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v53 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  sub_20E322640();
  v20 = sub_20E3227A0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v7, 1, v20) == 1)
  {
    sub_20E04875C(v7, &qword_27C86DA20, &qword_20E359B18);
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_4:
    sub_20E04875C(v13, &qword_27C863A90, &unk_20E33C020);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v25 = sub_20E3227C0();
    __swift_project_value_buffer(v25, qword_280E12C48);
    v26 = sub_20E3227B0();
    v27 = sub_20E322A50();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20E031000, v26, v27, "Missing sourceId", v28, 2u);
      MEMORY[0x20F32CA80](v28, -1, -1);
    }

    return 0;
  }

  sub_20E322790();
  v52 = *(v21 + 8);
  v52(v7, v20);
  v23 = v15;
  v24 = *(v15 + 48);
  if (v24(v13, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  v50 = *(v23 + 32);
  v51 = v23;
  v50(v56, v13, v14);
  sub_20E322640();
  if (v22(v5, 1, v20) == 1)
  {
    sub_20E04875C(v5, &qword_27C86DA20, &qword_20E359B18);
    v30 = v51;
    v31 = v55;
    v32 = v14;
    (*(v51 + 56))(v55, 1, 1, v14);
LABEL_13:
    sub_20E04875C(v31, &qword_27C863A90, &unk_20E33C020);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v34 = sub_20E3227C0();
    __swift_project_value_buffer(v34, qword_280E12C48);
    v35 = sub_20E3227B0();
    v36 = sub_20E322A50();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_20E031000, v35, v36, "Missing targetId", v37, 2u);
      MEMORY[0x20F32CA80](v37, -1, -1);
    }

    (*(v30 + 8))(v56, v32);
    return 0;
  }

  v31 = v55;
  sub_20E322790();
  v52(v5, v20);
  v32 = v14;
  v33 = v24(v31, 1, v14);
  v30 = v51;
  if (v33 == 1)
  {
    goto LABEL_13;
  }

  v50(v53, v31, v14);
  result = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v38 = result;
  [result setComponent_];
  v39 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v40 = sub_20E322030();
  v41 = [v39 initWithNSUUID_];

  [v38 setUuid_];
  result = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v42 = result;
  [result setComponent_];
  v43 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v44 = v53;
  v45 = sub_20E322030();
  v46 = [v43 initWithNSUUID_];

  [v42 setUuid_];
  result = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (result)
  {
    v47 = result;
    [result setSource_];
    [v47 setTarget_];

    v48 = *(v51 + 8);
    v48(v44, v14);
    v48(v56, v14);
    return v47;
  }

LABEL_24:
  __break(1u);
  return result;
}

id sub_20E319298()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA00, &qword_20E359AF8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v37 - v2;
  v4 = sub_20E322650();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA08, &qword_20E359B00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_20E322690();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA10, &qword_20E359B08);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = sub_20E322710();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E3226B0();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_20E04875C(v19, &qword_27C86DA10, &qword_20E359B08);
    sub_20E3226A0();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      v25 = &qword_27C86DA08;
      v26 = &qword_20E359B00;
      v27 = v10;
    }

    else
    {
      (*(v12 + 32))(v15, v10, v11);
      sub_20E322660();
      v34 = v39;
      v33 = v40;
      if ((*(v39 + 48))(v3, 1, v40) != 1)
      {
        v35 = v38;
        (*(v34 + 32))(v38, v3, v33);
        v32 = sub_20E318B94(v15);
        (*(v34 + 8))(v35, v33);
        (*(v12 + 8))(v15, v11);
        return v32;
      }

      (*(v12 + 8))(v15, v11);
      v25 = &qword_27C86DA00;
      v26 = &qword_20E359AF8;
      v27 = v3;
    }

    sub_20E04875C(v27, v25, v26);
    return 0;
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v28 = sub_20E3227C0();
    __swift_project_value_buffer(v28, qword_280E12C48);
    v29 = sub_20E3227B0();
    v30 = sub_20E322A40();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20E031000, v29, v30, "Event missing sessionCoordinatorLoop", v31, 2u);
      MEMORY[0x20F32CA80](v31, -1, -1);
    }

    v32 = sub_20E31826C(v24);
    (*(v21 + 8))(v24, v20);
  }

  return v32;
}

uint64_t sub_20E3197AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA18, &qword_20E359B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E319834()
{
  v1 = 0x757165725F6D756ELL;
  if (*v0 != 1)
  {
    v1 = 0x6E6576655F6D756ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737365735F6D756ELL;
  }
}

uint64_t sub_20E3198A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20E31A6A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20E3198CC(uint64_t a1)
{
  v2 = sub_20E319AF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E319908(uint64_t a1)
{
  v2 = sub_20E319AF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SampleMetricsProducer.SessionStats.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA28, &qword_20E359B20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v13[1] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E319AF4();
  sub_20E322E40();
  v16 = 0;
  sub_20E322D20();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_20E322D20();
  v14 = 2;
  sub_20E322D20();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_20E319AF4()
{
  result = qword_27C86DA30;
  if (!qword_27C86DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86DA30);
  }

  return result;
}

uint64_t SampleMetricsProducer.SessionStats.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA38, &qword_20E359B28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E319AF4();
  sub_20E322E20();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_20E322C90();
    v18 = 1;
    v16 = sub_20E322C90();
    v17 = 2;
    v13 = sub_20E322C90();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t static SampleMetricsProducer.createSessionStats(sessionView:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for RequestData(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SessionData(0);
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SessionView(0);
  v38 = a1;
  v9 = *(a1 + *(v37 + 28));
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v45 = *(a1 + *(v37 + 28));

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v40 = v14;
  v41 = v10;
LABEL_6:
  if (v13)
  {
    v20 = v19;
LABEL_11:
    v21 = v42;
    sub_20E31A0AC(*(v45 + 56) + *(v43 + 72) * (__clz(__rbit64(v13)) | (v20 << 6)), v42, type metadata accessor for SessionData);
    v22 = *(v21 + *(v44 + 32));

    result = sub_20E31A114(v21, type metadata accessor for SessionData);
    v23 = *(v22 + 16);
    v24 = __OFADD__(v17, v23);
    v25 = v17 + v23;
    if (v24)
    {
      goto LABEL_29;
    }

    v46 = v25;
    v17 = 0;
    v13 &= v13 - 1;
    v50 = v22;
    v26 = v22 + 64;
    v27 = 1 << *(v22 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v22 + 64);
    v30 = (v27 + 63) >> 6;
    while (v29)
    {
      v31 = v17;
      result = v50;
LABEL_23:
      v32 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v33 = v47;
      sub_20E31A0AC(*(result + 56) + *(v48 + 72) * (v32 | (v31 << 6)), v47, type metadata accessor for RequestData);
      v34 = *(v33 + *(v49 + 24));

      sub_20E31A114(v33, type metadata accessor for RequestData);
      v35 = *(v34 + 16);

      v24 = __OFADD__(v18, v35);
      v16 = v18 + v35;
      v18 += v35;
      if (v24)
      {
        __break(1u);
        goto LABEL_26;
      }
    }

    result = v50;
    while (1)
    {
      v31 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v31 >= v30)
      {

        v19 = v20;
        v14 = v40;
        v10 = v41;
        v17 = v46;
        goto LABEL_6;
      }

      v29 = *(v26 + 8 * v31);
      ++v17;
      if (v29)
      {
        v17 = v31;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v14)
      {
LABEL_26:

        v36 = v39;
        *v39 = *(v38 + *(v37 + 24));
        v36[1] = v17;
        v36[2] = v16;
        return result;
      }

      v13 = *(v10 + 8 * v20);
      ++v19;
      if (v13)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_20E31A0AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E31A114(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

LighthouseDataProcessor::SampleMetricsProducer::DateRange_optional __swiftcall SampleMetricsProducer.DateRange.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E322C20();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SampleMetricsProducer.DateRange.rawValue.getter()
{
  if (*v0)
  {
    result = 0x796C6B656577;
  }

  else
  {
    result = 0x796C696164;
  }

  *v0;
  return result;
}

uint64_t sub_20E31A20C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x796C6B656577;
  }

  else
  {
    v4 = 0x796C696164;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x796C6B656577;
  }

  else
  {
    v6 = 0x796C696164;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_20E322D60();
  }

  return v9 & 1;
}

unint64_t sub_20E31A2B0()
{
  result = qword_27C86DA40;
  if (!qword_27C86DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86DA40);
  }

  return result;
}

uint64_t sub_20E31A304()
{
  v1 = *v0;
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E31A380()
{
  *v0;
  sub_20E3228F0();
}

uint64_t sub_20E31A3E8()
{
  v1 = *v0;
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E31A460@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E322C20();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_20E31A4C0(uint64_t *a1@<X8>)
{
  v2 = 0x796C696164;
  if (*v1)
  {
    v2 = 0x796C6B656577;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SampleMetricsProducer.SessionStats(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SampleMetricsProducer.SessionStats(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_20E31A59C()
{
  result = qword_27C86DA48;
  if (!qword_27C86DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86DA48);
  }

  return result;
}

unint64_t sub_20E31A5F4()
{
  result = qword_27C86DA50;
  if (!qword_27C86DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86DA50);
  }

  return result;
}

unint64_t sub_20E31A64C()
{
  result = qword_27C86DA58;
  if (!qword_27C86DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86DA58);
  }

  return result;
}

uint64_t sub_20E31A6A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737365735F6D756ELL && a2 == 0xEC000000736E6F69;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x757165725F6D756ELL && a2 == 0xEC00000073747365 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6576655F6D756ELL && a2 == 0xEA00000000007374)
  {

    return 2;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t DataProcessorBookmarkProvider.lastCollectionDate.setter(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[3] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (v4)
  {
    v5 = v1;
    sub_20E321F20();
    v7 = v6;
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v8 = sub_20E3227C0();
    __swift_project_value_buffer(v8, qword_280E12C48);

    v9 = sub_20E3227B0();
    v10 = sub_20E322A40();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v37 = v12;
      *v11 = 136315394;
      swift_beginAccess();
      v13 = v1[5];
      v14 = v1[6];

      v15 = sub_20E31B6C4(v13, v14, &v37);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v7;
      _os_log_impl(&dword_20E031000, v9, v10, "Set key %s to %f", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F32CA80](v12, -1, -1);
      MEMORY[0x20F32CA80](v11, -1, -1);
    }

    v16 = v1[2];
    if (v16)
    {
      v17 = v16;
      v18 = sub_20E322A20();
      swift_beginAccess();
      v20 = v5[5];
      v19 = v5[6];

      v21 = sub_20E322860();

      [v17 setValue:v18 forKey:v21];
    }

    else
    {

      v29 = sub_20E3227B0();
      v30 = sub_20E322A40();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v38 = v32;
        *v31 = 136315138;
        swift_beginAccess();
        v34 = v5[5];
        v33 = v5[6];

        v35 = sub_20E31B6C4(v34, v33, &v38);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_20E031000, v29, v30, "Fail to set key %s due to empty userdefaults", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x20F32CA80](v32, -1, -1);
        MEMORY[0x20F32CA80](v31, -1, -1);
      }
    }

    v36 = sub_20E322010();
    return (*(*(v36 - 8) + 8))(a1, v36);
  }

  else
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v22 = sub_20E3227C0();
    __swift_project_value_buffer(v22, qword_280E12C48);
    v23 = sub_20E3227B0();
    v24 = sub_20E322A40();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20E031000, v23, v24, "Skip userDefault set due to empty identifier", v25, 2u);
      MEMORY[0x20F32CA80](v25, -1, -1);
    }

    v26 = sub_20E322010();
    v27 = *(*(v26 - 8) + 8);

    return v27(a1, v26);
  }
}

uint64_t DataProcessorBookmarkProvider.lastCollectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20E322010();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  sub_20E321FC0();
  v12 = *(v1 + 16);
  if (v12)
  {
    swift_beginAccess();
    v13 = *(v2 + 40);
    v14 = *(v2 + 48);

    v15 = sub_20E322860();

    v16 = [v12 valueForKey_];

    if (v16)
    {
      sub_20E322AB0();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47 = v45;
    v48 = v46;
    if (*(&v46 + 1))
    {
      sub_20E31BC7C(&v47);
      v17 = *(v2 + 40);
      v18 = *(v2 + 48);

      v19 = sub_20E322860();

      [v12 doubleForKey_];
      v21 = v20;

      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v22 = sub_20E3227C0();
      __swift_project_value_buffer(v22, qword_280E12C48);

      v23 = sub_20E3227B0();
      v24 = sub_20E322A40();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v47 = v26;
        *v25 = 136315394;
        v44 = v4;
        v27 = a1;
        v29 = *(v2 + 40);
        v28 = *(v2 + 48);

        v30 = sub_20E31B6C4(v29, v28, &v47);

        *(v25 + 4) = v30;
        a1 = v27;
        v4 = v44;
        *(v25 + 12) = 2048;
        *(v25 + 14) = v21;
        _os_log_impl(&dword_20E031000, v23, v24, "The userdefault has key %s with the value %f", v25, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x20F32CA80](v26, -1, -1);
        MEMORY[0x20F32CA80](v25, -1, -1);
      }

      sub_20E321F10();
      sub_20E31BCE4();
      v31 = sub_20E322840();
      v32 = *(v5 + 8);
      v33 = (v5 + 32);
      if (v31)
      {
        v32(v11, v4);
        return (*v33)(a1, v9, v4);
      }

      else
      {
        v32(v9, v4);
        return (*v33)(a1, v11, v4);
      }
    }
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  sub_20E31BC7C(&v47);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v35 = sub_20E3227C0();
  __swift_project_value_buffer(v35, qword_280E12C48);

  v36 = sub_20E3227B0();
  v37 = sub_20E322A40();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v45 = v39;
    *v38 = 136315138;
    swift_beginAccess();
    v41 = *(v2 + 40);
    v40 = *(v2 + 48);

    v42 = sub_20E31B6C4(v41, v40, &v45);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_20E031000, v36, v37, "The userdefault contained no value for %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x20F32CA80](v39, -1, -1);
    MEMORY[0x20F32CA80](v38, -1, -1);
  }

  return (*(v5 + 32))(a1, v11, v4);
}

uint64_t DataProcessorBookmarkProvider.__allocating_init(streamIdentifier:domain:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DataProcessorBookmarkProvider.init(streamIdentifier:domain:)(a1, a2);
  return v4;
}

uint64_t DataProcessorBookmarkProvider.userDefaultsKey.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void *DataProcessorBookmarkProvider.init(streamIdentifier:domain:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_20E322860();

  v8 = [v6 initWithSuiteName_];

  v3[2] = v8;
  v3[3] = a1;
  v3[4] = a2;

  MEMORY[0x20F32BF40](0xD000000000000015, 0x800000020E35F6E0);
  v3[5] = a1;
  v3[6] = a2;
  return v3;
}

uint64_t sub_20E31B2F4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_20E322010();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return DataProcessorBookmarkProvider.lastCollectionDate.setter(v7);
}

void (*DataProcessorBookmarkProvider.lastCollectionDate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_20E322010();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  DataProcessorBookmarkProvider.lastCollectionDate.getter(v9);
  return sub_20E31B4C8;
}

void sub_20E31B4C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    DataProcessorBookmarkProvider.lastCollectionDate.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    DataProcessorBookmarkProvider.lastCollectionDate.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t DataProcessorBookmarkProvider.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t DataProcessorBookmarkProvider.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_20E31B5F4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_20E31B668(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_20E31B6C4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_20E31B6C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20E31B790(v11, 0, 0, 1, a1, a2);
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
    sub_20E31BD8C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_20E31B790(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20E31B89C(a5, a6);
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
    result = sub_20E322B40();
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

uint64_t sub_20E31B89C(uint64_t a1, unint64_t a2)
{
  v4 = sub_20E31B8E8(a1, a2);
  sub_20E31BA18(&unk_282536FE0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_20E31B8E8(uint64_t a1, unint64_t a2)
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

  v6 = sub_20E31BB04(v5, 0);
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

  result = sub_20E322B40();
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
        v10 = sub_20E322910();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20E31BB04(v10, 0);
        result = sub_20E322AF0();
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

uint64_t sub_20E31BA18(uint64_t result)
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

  result = sub_20E31BB78(result, v12, 1, v3);
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

void *sub_20E31BB04(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA68, qword_20E359E40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_1(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20E31BB78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA68, qword_20E359E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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

_BYTE **sub_20E31BC6C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_20E31BC7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86DA60, &qword_20E359DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20E31BCE4()
{
  result = qword_280E12B38;
  if (!qword_280E12B38)
  {
    sub_20E322010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E12B38);
  }

  return result;
}

uint64_t sub_20E31BD8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_20E31BDE8(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v77 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = (&v71 - v7);
  v73 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v8 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v78 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v71 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F88, &unk_20E33C200);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v71 - v29;
  v31 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v30, &qword_27C863F88, &unk_20E33C200);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    v36 = &qword_27C863F88;
    v37 = &unk_20E33C200;
    v38 = v30;
LABEL_12:
    sub_20E04875C(v38, v36, v37);
    return 0;
  }

  sub_20E31C898(v30, v35, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  v39 = [objc_allocWithZone(MEMORY[0x277D57FE8]) init];
  if (!v39)
  {
    sub_20E31C900(v35, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
    return 0;
  }

  v72 = v39;
  sub_20E0486F4(v35, v26, &qword_27C8659F8, &unk_20E33C240);
  v40 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v40 - 8) + 48))(v26, 1, v40) == 1)
  {
    goto LABEL_5;
  }

  sub_20E0486F4(v26, v24, &qword_27C8659F8, &unk_20E33C240);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    switch(EnumCaseMultiPayload)
    {
      case 5:
        v47 = v76;
        sub_20E31C898(v24, v76, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
        v55 = [objc_allocWithZone(MEMORY[0x277D57FF8]) init];
        if (v55)
        {
          v56 = v55;
          [v55 setIsExplicit_];
          [v72 setKnowledgeTool_];

          v50 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool;
          goto LABEL_50;
        }

        v67 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool;
        break;
      case 6:
        v47 = v78;
        sub_20E31C898(v24, v78, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
        v61 = [objc_allocWithZone(MEMORY[0x277D58008]) init];
        if (v61)
        {
          v62 = v61;
          v63 = v47 + *(v73 + 20);
          if ((*(v63 + 8) & 1) == 0)
          {
            [v61 setElementAtIndex_];
          }

          v64 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
          v65 = v74;
          sub_20E0486F4(v47, v74, &qword_27C8639D0, &unk_20E33C230);
          v66 = type metadata accessor for TranscriptProtoStatementID(0);
          if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
          {
            sub_20E04875C(v65, &qword_27C8639D0, &unk_20E33C230);
          }

          else
          {
            v70 = *v65;
            sub_20E31C900(v65, type metadata accessor for TranscriptProtoStatementID);
            [v64 setIndex_];
          }

          [v62 setResultStatementId_];

          [v72 setOpenTool_];
          v50 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool;
          goto LABEL_50;
        }

        v67 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool;
        break;
      case 7:
        v47 = v77;
        sub_20E31C898(v24, v77, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
        v51 = [objc_allocWithZone(MEMORY[0x277D58000]) init];
        if (v51)
        {
          v52 = v51;
          if ((*(v47 + 8) & 1) == 0)
          {
            [v51 setElementAtIndex_];
          }

          [v72 setOpenSuccessValueFromLatestRequestTool_];

          v50 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
          goto LABEL_50;
        }

        v67 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
        break;
      default:
        goto LABEL_32;
    }

LABEL_46:
    v68 = v67;
    v69 = v47;
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E31C898(v24, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      v57 = [objc_allocWithZone(MEMORY[0x277D58018]) init];
      if (v57)
      {
        v58 = v57;
        [v57 setIsExplicit_];
        [v72 setTextTool_];

        v59 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool;
        v60 = v19;
LABEL_51:
        sub_20E31C900(v60, v59);
        goto LABEL_52;
      }

      v68 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool;
      v69 = v19;
LABEL_47:
      sub_20E31C900(v69, v68);
LABEL_10:
      sub_20E31C900(v35, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
LABEL_11:
      v36 = &qword_27C8659F8;
      v37 = &unk_20E33C240;
      v38 = v26;
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v47 = v75;
      sub_20E31C898(v24, v75, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      v48 = [objc_allocWithZone(MEMORY[0x277D57FF0]) init];
      if (v48)
      {
        v49 = v48;
        [v48 setIsExplicit_];
        [v72 setConvertTool_];

        v50 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool;
LABEL_50:
        v59 = v50;
        v60 = v47;
        goto LABEL_51;
      }

      v67 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool;
      goto LABEL_46;
    }

LABEL_32:
    sub_20E31C900(v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
LABEL_5:
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v41 = sub_20E3227C0();
    __swift_project_value_buffer(v41, qword_280E12C48);
    v42 = sub_20E3227B0();
    v43 = sub_20E322A40();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_20E031000, v42, v43, "#IFTPrscribedPlanConverter - unmapped plan values", v44, 2u);
      MEMORY[0x20F32CA80](v44, -1, -1);
    }

    goto LABEL_10;
  }

  sub_20E31C900(v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  v53 = [objc_allocWithZone(MEMORY[0x277D58010]) init];
  if (!v53)
  {
    sub_20E31C900(v35, type metadata accessor for TranscriptProtoRequestPrescribedPlan);

    goto LABEL_11;
  }

  v54 = v53;
  [v53 setExists_];
  [v72 setSearchTool_];

LABEL_52:
  sub_20E31C900(v35, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  sub_20E04875C(v26, &qword_27C8659F8, &unk_20E33C240);
  return v72;
}

uint64_t sub_20E31C898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E31C900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E31C960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868288, &qword_20E33B318);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  sub_20E31CB64(a1, &v22 - v9);
  v11 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v10, 1, v11);
  sub_20E31CBD4(v10);
  if (v13 == 1)
  {
    return 0;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D57FD8]) init];
  if (v14)
  {
    sub_20E31CB64(a1, v8);
    if (v12(v8, 1, v11) == 1)
    {
      v15 = v14;
      sub_20E31CBD4(v8);
      v16 = 0;
    }

    else
    {
      v17 = *v8;
      v18 = *(v8 + 1);
      v19 = v14;

      sub_20E31CC3C(v8);
      v16 = sub_20E322860();
    }

    [v14 setTextQuery_];

    [v14 setLinkId_];
    v20 = [v14 linkId];
  }

  return v14;
}

uint64_t sub_20E31CB64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868288, &qword_20E33B318);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E31CBD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868288, &qword_20E33B318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E31CC3C(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20E31CC98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v98 = &v92 - v4;
  v97 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  v100 = *(v97 - 8);
  v5 = *(v100 + 64);
  v6 = MEMORY[0x28223BE20](v97);
  v96 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v99 = &v92 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v92 - v11;
  v13 = sub_20E322060();
  v94 = *(v13 - 8);
  v95 = v13;
  v14 = v94[8];
  MEMORY[0x28223BE20](v13);
  v93 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v92 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = (&v92 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F10, &qword_20E33AFE0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v92 - v26;
  v28 = type metadata accessor for TranscriptProtoAction(0);
  v29 = *(v28 - 1);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v27, &qword_27C867F10, &qword_20E33AFE0);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_20E04875C(v27, &qword_27C867F10, &qword_20E33AFE0);
    return;
  }

  sub_20E31D8C4(v27, v32, type metadata accessor for TranscriptProtoAction);
  v33 = [objc_allocWithZone(MEMORY[0x277D57CD8]) init];
  if (v33)
  {
    v34 = v28[6];
    v35 = objc_allocWithZone(MEMORY[0x277D58078]);
    v36 = v33;
    v37 = [v35 init];
    sub_20E0486F4(&v32[v34], v23, &qword_27C8639D0, &unk_20E33C230);
    v38 = type metadata accessor for TranscriptProtoStatementID(0);
    if ((*(*(v38 - 8) + 48))(v23, 1, v38) == 1)
    {
      sub_20E04875C(v23, &qword_27C8639D0, &unk_20E33C230);
    }

    else
    {
      v39 = *v23;
      sub_20E31D978(v23, type metadata accessor for TranscriptProtoStatementID);
      [v37 setIndex_];
    }

    [v36 setStatementId_];

    sub_20E0486F4(&v32[v28[9]], v19, &qword_27C8639C8, &unk_20E323870);
    v40 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
    if ((*(*(v40 - 8) + 48))(v19, 1, v40) == 1)
    {
      v41 = v36;
      sub_20E04875C(v19, &qword_27C8639C8, &unk_20E323870);
      v42 = 0;
    }

    else
    {
      v43 = *v19;
      v44 = v19[1];
      v45 = v36;

      sub_20E31D978(v19, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      v42 = sub_20E322860();
    }

    [v36 setToolId_];

    v46 = &v32[v28[7]];
    v47 = *(v46 + 1);
    if (v47)
    {
      v48 = *v46;
      v49 = v36;
      v47 = sub_20E322860();
    }

    else
    {
      v50 = v36;
    }

    [v36 setBundleId_];

    [v36 setIsConfirmed_];
  }

  v51 = &v32[v28[8]];
  v52 = *v51;
  v53 = *(v51 + 1);
  sub_20E06C5DC(5, v12);
  v55 = v94;
  v54 = v95;
  v56 = (v94[6])(v12, 1, v95);
  v57 = v93;
  if (v56 == 1)
  {
    sub_20E04875C(v12, &qword_27C863A90, &unk_20E33C020);
    v58 = &selRef_setPayload_;
    if (!v33)
    {
      goto LABEL_21;
    }
  }

  else
  {
    (v55[4])(v93, v12, v54);
    if (v33)
    {
      v59 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v60 = v33;
      v61 = sub_20E322030();
      v62 = [v59 initWithNSUUID_];

      [v60 setPlanEventId_];
    }

    (v55[1])(v57, v54);
    v58 = &selRef_setPayload_;
    if (!v33)
    {
      goto LABEL_21;
    }
  }

  sub_20E31D92C();
  v63 = v33;
  v64 = sub_20E322960();
  [v63 v58[274]];

LABEL_21:
  v94 = v33;
  v92 = v32;
  v65 = *(v32 + 1);
  v66 = v65 + 64;
  v67 = 1 << v65[32];
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(v65 + 8);
  v70 = (v67 + 63) >> 6;
  v71 = *(v32 + 1);

  v72 = 0;
  v73 = 0x277D57000uLL;
  v74 = v96;
  v93 = v65;
  v95 = v70;
  while (v69)
  {
LABEL_30:
    v76 = v99;
    sub_20E31D860(*(v65 + 7) + *(v100 + 72) * (__clz(__rbit64(v69)) | (v72 << 6)), v99);
    sub_20E31D8C4(v76, v74, type metadata accessor for TranscriptProtoActionParameterValue);
    v77 = [objc_allocWithZone(*(v73 + 3360)) init];
    if (!v77)
    {
      sub_20E31D978(v74, type metadata accessor for TranscriptProtoActionParameterValue);

      sub_20E31D978(v92, type metadata accessor for TranscriptProtoAction);
      return;
    }

    v78 = v77;
    v79 = v65;
    v80 = v73;
    v69 &= v69 - 1;
    v81 = v98;
    sub_20E0486F4(v74 + *(v97 + 20), v98, &qword_27C863B58, &qword_20E323E68);
    v82 = type metadata accessor for TranscriptProtoPromptSelection(0);
    if ((*(*(v82 - 8) + 48))(v81, 1, v82) == 1)
    {
      sub_20E31D978(v74, type metadata accessor for TranscriptProtoActionParameterValue);

      sub_20E04875C(v81, &qword_27C863B58, &qword_20E323E68);
      v65 = v79;
      v70 = v95;
    }

    else
    {
      v83 = *v81;
      v84 = *(v81 + 8);
      v85 = *(v81 + 9);
      sub_20E31D978(v81, type metadata accessor for TranscriptProtoPromptSelection);
      if (v85)
      {
        v74 = v96;
        sub_20E31D978(v96, type metadata accessor for TranscriptProtoActionParameterValue);

        v73 = v80;
        goto LABEL_50;
      }

      if (v84)
      {
        if (v83)
        {
          [v78 setDenied_];
        }

        else
        {
          [v78 setConfirmed_];
        }
      }

      else
      {
        [v78 setSelectedInDisambiguation_];
      }

      v73 = v80;
      if (!v94)
      {
        v74 = v96;
        sub_20E31D978(v96, type metadata accessor for TranscriptProtoActionParameterValue);

        goto LABEL_47;
      }

      v86 = v94;
      v87 = [v86 actionParameterValues];
      if (v87)
      {
        v88 = v87;
        sub_20E31D92C();
        v89 = sub_20E322970();

        v101 = v89;
        v90 = v78;
        MEMORY[0x20F32BF90]();
        if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();
        if (v101)
        {
          v91 = sub_20E322960();
        }

        else
        {
          v91 = 0;
        }

        v73 = v80;
        [v86 setActionParameterValues_];

        v74 = v96;
        sub_20E31D978(v96, type metadata accessor for TranscriptProtoActionParameterValue);
LABEL_50:
        v65 = v93;
        v70 = v95;
      }

      else
      {
        [v86 setActionParameterValues_];

        v74 = v96;
        sub_20E31D978(v96, type metadata accessor for TranscriptProtoActionParameterValue);
LABEL_47:
        v65 = v93;
        v70 = v95;
      }
    }
  }

  while (1)
  {
    v75 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v75 >= v70)
    {

      sub_20E31D978(v92, type metadata accessor for TranscriptProtoAction);
      return;
    }

    v69 = *&v66[8 * v75];
    ++v72;
    if (v69)
    {
      v72 = v75;
      goto LABEL_30;
    }
  }

  __break(1u);
}

uint64_t sub_20E31D860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E31D8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20E31D92C()
{
  result = qword_27C86DA70;
  if (!qword_27C86DA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C86DA70);
  }

  return result;
}

uint64_t sub_20E31D978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20E31D9E8(char *a1, uint64_t a2)
{
  v261 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v223 = &v218 - v5;
  v222 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v221 = *(v222 - 8);
  v6 = *(v221 + 64);
  MEMORY[0x28223BE20](v222);
  v219 = &v218 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868560, &unk_20E33C2E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v228 = &v218 - v10;
  v226 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  v225 = *(v226 - 8);
  v11 = *(v225 + 64);
  MEMORY[0x28223BE20](v226);
  v220 = &v218 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TranscriptProtoActionFailure(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v227 = &v218 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v245 = &v218 - v18;
  v19 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v243 = *(v19 - 8);
  v244 = v19;
  v20 = *(v243 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v237 = &v218 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v238 = &v218 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v254 = &v218 - v26;
  v27 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v252 = *(v27 - 8);
  v253 = v27;
  v28 = *(v252 + 64);
  MEMORY[0x28223BE20](v27);
  v249 = &v218 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v259 = &v218 - v32;
  v33 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v257 = *(v33 - 8);
  v258 = v33;
  v34 = *(v257 + 64);
  MEMORY[0x28223BE20](v33);
  v255 = &v218 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for TranscriptProtoStatementResult(0);
  v36 = *(*(v256 - 8) + 64);
  MEMORY[0x28223BE20](v256);
  v260 = &v218 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v233 = &v218 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v250 = &v218 - v42;
  v236 = type metadata accessor for TranscriptProtoExecutorError(0);
  v43 = *(*(v236 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v236);
  v235 = &v218 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v247 = &v218 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v47 - 8);
  v232 = &v218 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v248 = &v218 - v51;
  v234 = type metadata accessor for TranscriptProtoPlannerError(0);
  v52 = *(*(v234 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v234);
  v240 = &v218 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v246 = &v218 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v56 - 8);
  v231 = &v218 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v241 = &v218 - v60;
  v229 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  v61 = *(*(v229 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v229);
  v239 = &v218 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v242 = &v218 - v64;
  v65 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v230 = *(v65 - 8);
  v66 = *(v230 + 64);
  v67 = MEMORY[0x28223BE20](v65);
  v224 = (&v218 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v67);
  v251 = (&v218 - v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v71 = *(*(v70 - 8) + 64);
  v72 = MEMORY[0x28223BE20](v70 - 8);
  v74 = &v218 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v76 = &v218 - v75;
  v77 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v78 = *(*(v77 - 8) + 64);
  v79 = MEMORY[0x28223BE20](v77);
  v81 = &v218 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v83 = &v218 - v82;
  v84 = type metadata accessor for TranscriptProtoSessionError(0);
  v85 = *(*(v84 - 8) + 64);
  v86 = MEMORY[0x28223BE20](v84);
  v88 = &v218 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v90 = &v218 - v89;
  sub_20E320504(a2, v83, type metadata accessor for TranscriptProtoPayloadEnum);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_20E32056C(v83, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E320504(a2, v81, type metadata accessor for TranscriptProtoPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 19)
    {
      v105 = 0xD000000000000015;
      sub_20E32056C(v81, type metadata accessor for TranscriptProtoPayloadEnum);
LABEL_20:
      v119 = 1;
      v120 = v261;
      goto LABEL_21;
    }

    v103 = v260;
    sub_20E32049C(v81, v260, type metadata accessor for TranscriptProtoStatementResult);
    v104 = v259;
    sub_20E0486F4(v103 + *(v256 + 20), v259, &qword_27C863FB8, &unk_20E325F60);
    if ((*(v257 + 48))(v104, 1, v258) == 1)
    {
      v105 = 0xD000000000000015;
      sub_20E32056C(v103, type metadata accessor for TranscriptProtoStatementResult);
      v106 = &qword_27C863FB8;
      v107 = &unk_20E325F60;
LABEL_19:
      sub_20E04875C(v104, v106, v107);
      goto LABEL_20;
    }

    v121 = v255;
    sub_20E32049C(v104, v255, type metadata accessor for TranscriptProtoStatementResultPayload);
    v104 = v254;
    sub_20E0486F4(v121, v254, &qword_27C863BA8, &unk_20E345F00);
    if ((*(v252 + 48))(v104, 1, v253) == 1)
    {
      v105 = 0xD000000000000015;
      sub_20E32056C(v121, type metadata accessor for TranscriptProtoStatementResultPayload);
      sub_20E32056C(v103, type metadata accessor for TranscriptProtoStatementResult);
      v106 = &qword_27C863BA8;
      v107 = &unk_20E345F00;
      goto LABEL_19;
    }

    v156 = v249;
    sub_20E32049C(v104, v249, type metadata accessor for TranscriptProtoStatementOutcome);
    v157 = v245;
    sub_20E0486F4(v156, v245, &qword_27C863BA0, &unk_20E325F20);
    v158 = (*(v243 + 48))(v157, 1, v244);
    v120 = v261;
    if (v158 == 1)
    {
      v105 = 0xD000000000000015;
      sub_20E32056C(v156, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_20E32056C(v121, type metadata accessor for TranscriptProtoStatementResultPayload);
      sub_20E32056C(v103, type metadata accessor for TranscriptProtoStatementResult);
      sub_20E04875C(v157, &qword_27C863BA0, &unk_20E325F20);
      v119 = 1;
      goto LABEL_21;
    }

    v174 = v238;
    sub_20E32049C(v157, v238, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v175 = v237;
    sub_20E320504(v174, v237, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (swift_getEnumCaseMultiPayload() != 9)
    {
      v105 = 0xD000000000000015;
      sub_20E32056C(v174, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      sub_20E32056C(v156, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_20E32056C(v121, type metadata accessor for TranscriptProtoStatementResultPayload);
      sub_20E32056C(v103, type metadata accessor for TranscriptProtoStatementResult);
      sub_20E32056C(v175, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v119 = 1;
      goto LABEL_21;
    }

    v176 = v175;
    v177 = v227;
    sub_20E32049C(v176, v227, type metadata accessor for TranscriptProtoActionFailure);
    v178 = v228;
    sub_20E0486F4(v177, v228, &qword_27C868560, &unk_20E33C2E0);
    if ((*(v225 + 48))(v178, 1, v226) == 1)
    {
      v105 = 0xD000000000000015;
      sub_20E32056C(v177, type metadata accessor for TranscriptProtoActionFailure);
      sub_20E32056C(v174, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      sub_20E32056C(v156, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_20E32056C(v121, type metadata accessor for TranscriptProtoStatementResultPayload);
      sub_20E32056C(v103, type metadata accessor for TranscriptProtoStatementResult);
      v179 = &qword_27C868560;
      v180 = &unk_20E33C2E0;
    }

    else
    {
      v215 = v220;
      sub_20E32049C(v178, v220, type metadata accessor for TranscriptProtoActionFailureFailure);
      v178 = v223;
      sub_20E0486F4(v215, v223, &qword_27C865BD0, &qword_20E3263A8);
      if ((*(v221 + 48))(v178, 1, v222) != 1)
      {
        v216 = v178;
        v217 = v219;
        sub_20E32049C(v216, v219, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
        v105 = TranscriptProtoActionFailureFailureEnum.description.getter();
        sub_20E32056C(v217, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
        sub_20E32056C(v215, type metadata accessor for TranscriptProtoActionFailureFailure);
        sub_20E32056C(v177, type metadata accessor for TranscriptProtoActionFailure);
        sub_20E32056C(v174, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        sub_20E32056C(v156, type metadata accessor for TranscriptProtoStatementOutcome);
        sub_20E32056C(v121, type metadata accessor for TranscriptProtoStatementResultPayload);
        sub_20E32056C(v103, type metadata accessor for TranscriptProtoStatementResult);
        goto LABEL_69;
      }

      v105 = 0xD000000000000015;
      sub_20E32056C(v215, type metadata accessor for TranscriptProtoActionFailureFailure);
      sub_20E32056C(v177, type metadata accessor for TranscriptProtoActionFailure);
      sub_20E32056C(v174, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      sub_20E32056C(v156, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_20E32056C(v121, type metadata accessor for TranscriptProtoStatementResultPayload);
      sub_20E32056C(v103, type metadata accessor for TranscriptProtoStatementResult);
      v179 = &qword_27C865BD0;
      v180 = &qword_20E3263A8;
    }

    sub_20E04875C(v178, v179, v180);
LABEL_69:
    v119 = 7;
    goto LABEL_21;
  }

  sub_20E32049C(v83, v90, type metadata accessor for TranscriptProtoSessionError);
  sub_20E0486F4(v90, v76, &qword_27C863EE0, &qword_20E325D18);
  v91 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v92 = v76;
  if ((*(*(v91 - 8) + 48))(v76, 1, v91) == 1)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v93 = sub_20E3227C0();
    __swift_project_value_buffer(v93, qword_280E12C48);
    v94 = v90;
    sub_20E320504(v90, v88, type metadata accessor for TranscriptProtoSessionError);
    v95 = sub_20E3227B0();
    v96 = sub_20E322A40();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v262 = v98;
      *v97 = 136315138;
      sub_20E065D4C(&qword_27C863EE8, type metadata accessor for TranscriptProtoSessionError);
      v99 = sub_20E322470();
      v101 = v100;
      sub_20E32056C(v88, type metadata accessor for TranscriptProtoSessionError);
      v102 = sub_20E31B6C4(v99, v101, &v262);

      *(v97 + 4) = v102;
      _os_log_impl(&dword_20E031000, v95, v96, "Unrecognized error from sessionError: %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x20F32CA80](v98, -1, -1);
      MEMORY[0x20F32CA80](v97, -1, -1);
    }

    else
    {

      sub_20E32056C(v88, type metadata accessor for TranscriptProtoSessionError);
    }

    v120 = v261;
    sub_20E32056C(v94, type metadata accessor for TranscriptProtoSessionError);
    v105 = 0xD000000000000020;
    v119 = 1;
    goto LABEL_16;
  }

  sub_20E0486F4(v76, v74, &qword_27C863EE0, &qword_20E325D18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v159 = v247;
      sub_20E32049C(v74, v247, type metadata accessor for TranscriptProtoExecutorError);
      v160 = v250;
      sub_20E0486F4(v159, v250, &qword_27C863EC8, &unk_20E359E90);
      v161 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
      if ((*(*(v161 - 8) + 48))(v160, 1, v161) == 1)
      {
        if (qword_280E12B88 != -1)
        {
          swift_once();
        }

        v162 = v90;
        v163 = sub_20E3227C0();
        __swift_project_value_buffer(v163, qword_280E12C48);
        v164 = v235;
        sub_20E320504(v159, v235, type metadata accessor for TranscriptProtoExecutorError);
        v165 = sub_20E3227B0();
        v166 = sub_20E322A40();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          v262 = v168;
          *v167 = 136315138;
          sub_20E065D4C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError);
          v169 = sub_20E322470();
          v170 = v164;
          v172 = v171;
          sub_20E32056C(v170, type metadata accessor for TranscriptProtoExecutorError);
          v173 = sub_20E31B6C4(v169, v172, &v262);

          *(v167 + 4) = v173;
          _os_log_impl(&dword_20E031000, v165, v166, "Unrecognized error from executorError: %s", v167, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v168);
          MEMORY[0x20F32CA80](v168, -1, -1);
          MEMORY[0x20F32CA80](v167, -1, -1);
        }

        else
        {

          sub_20E32056C(v164, type metadata accessor for TranscriptProtoExecutorError);
        }

        v120 = v261;
        sub_20E32056C(v159, type metadata accessor for TranscriptProtoExecutorError);
        sub_20E32056C(v162, type metadata accessor for TranscriptProtoSessionError);
        v105 = 0xD000000000000020;
      }

      else
      {
        v181 = v233;
        sub_20E0486F4(v160, v233, &qword_27C863EC8, &unk_20E359E90);
        if ((*(v230 + 48))(v181, 1, v65) == 1)
        {
          sub_20E065D4C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError);
          v105 = sub_20E322470();
          sub_20E32056C(v159, type metadata accessor for TranscriptProtoExecutorError);
          v182 = type metadata accessor for TranscriptProtoSessionError;
          v183 = v90;
        }

        else
        {
          v195 = v251;
          sub_20E32049C(v181, v251, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v196 = *v195;
          v197 = v195[1];
          v198 = v90;
          v199 = v195[2];
          v200 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v201 = sub_20E322860();
          v202 = [v200 initWithDomain:v201 code:v199 userInfo:0];

          v203 = [v202 debugDescription];
          v105 = sub_20E322890();

          sub_20E32056C(v159, type metadata accessor for TranscriptProtoExecutorError);
          sub_20E32056C(v198, type metadata accessor for TranscriptProtoSessionError);
          v182 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
          v183 = v195;
        }

        sub_20E32056C(v183, v182);
        v120 = v261;
      }

      sub_20E04875C(v160, &qword_27C863EC8, &unk_20E359E90);
      v119 = 4;
      goto LABEL_16;
    }

    v123 = v246;
    sub_20E32049C(v74, v246, type metadata accessor for TranscriptProtoPlannerError);
    v124 = v248;
    sub_20E0486F4(v123, v248, &qword_27C863ED0, &unk_20E33C2C0);
    v125 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
    v126 = (*(*(v125 - 8) + 48))(v124, 1, v125);
    v127 = v240;
    if (v126 == 1)
    {
      goto LABEL_27;
    }

    v128 = v232;
    sub_20E0486F4(v124, v232, &qword_27C863ED0, &unk_20E33C2C0);
    v129 = swift_getEnumCaseMultiPayload();
    if (v129)
    {
      if (v129 == 1)
      {
        sub_20E32056C(v128, type metadata accessor for TranscriptProtoPlannerErrorEnum);
LABEL_27:
        if (qword_280E12B88 != -1)
        {
          swift_once();
        }

        v130 = v90;
        v131 = sub_20E3227C0();
        __swift_project_value_buffer(v131, qword_280E12C48);
        sub_20E320504(v123, v127, type metadata accessor for TranscriptProtoPlannerError);
        v132 = sub_20E3227B0();
        v133 = sub_20E322A40();
        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          v135 = swift_slowAlloc();
          v262 = v135;
          *v134 = 136315138;
          sub_20E065D4C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError);
          v136 = sub_20E322470();
          v137 = v127;
          v139 = v138;
          sub_20E32056C(v137, type metadata accessor for TranscriptProtoPlannerError);
          v140 = sub_20E31B6C4(v136, v139, &v262);

          *(v134 + 4) = v140;
          _os_log_impl(&dword_20E031000, v132, v133, "Unrecognized error from plannerError: %s", v134, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v135);
          MEMORY[0x20F32CA80](v135, -1, -1);
          MEMORY[0x20F32CA80](v134, -1, -1);
        }

        else
        {

          sub_20E32056C(v127, type metadata accessor for TranscriptProtoPlannerError);
        }

        v120 = v261;
        sub_20E32056C(v123, type metadata accessor for TranscriptProtoPlannerError);
        sub_20E32056C(v130, type metadata accessor for TranscriptProtoSessionError);
        v105 = 0xD00000000000001FLL;
        goto LABEL_64;
      }

      sub_20E065D4C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError);
      v105 = sub_20E322470();
      sub_20E32056C(v123, type metadata accessor for TranscriptProtoPlannerError);
      v213 = type metadata accessor for TranscriptProtoSessionError;
      v214 = v90;
    }

    else
    {
      v204 = v251;
      sub_20E32049C(v128, v251, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v205 = *v204;
      v206 = v204[1];
      v207 = v90;
      v208 = v204[2];
      v209 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v210 = sub_20E322860();
      v211 = [v209 initWithDomain:v210 code:v208 userInfo:0];

      v212 = [v211 debugDescription];
      v105 = sub_20E322890();

      sub_20E32056C(v123, type metadata accessor for TranscriptProtoPlannerError);
      sub_20E32056C(v207, type metadata accessor for TranscriptProtoSessionError);
      v213 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
      v214 = v204;
    }

    sub_20E32056C(v214, v213);
    v120 = v261;
LABEL_64:
    sub_20E04875C(v124, &qword_27C863ED0, &unk_20E33C2C0);
    v119 = 3;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    v141 = v242;
    sub_20E32049C(v74, v242, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    v142 = v241;
    sub_20E0486F4(v141, v241, &qword_27C863ED8, &unk_20E33C2B0);
    v143 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
    v144 = (*(*(v143 - 8) + 48))(v142, 1, v143);
    v145 = v239;
    if (v144 != 1)
    {
      v146 = v231;
      sub_20E0486F4(v142, v231, &qword_27C863ED8, &unk_20E33C2B0);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        v147 = v224;
        sub_20E32049C(v146, v224, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_20E04875C(v142, &qword_27C863ED8, &unk_20E33C2B0);
        v148 = *v147;
        v149 = v147[1];
        v150 = v90;
        v151 = v147[2];
        v152 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v153 = sub_20E322860();
        v154 = [v152 initWithDomain:v153 code:v151 userInfo:0];

        v155 = [v154 debugDescription];
        v105 = sub_20E322890();

        sub_20E32056C(v141, type metadata accessor for TranscriptProtoSessionCoordinatorError);
        sub_20E32056C(v150, type metadata accessor for TranscriptProtoSessionError);
        sub_20E32056C(v147, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v119 = 2;
        v120 = v261;
        goto LABEL_16;
      }

      sub_20E32056C(v146, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    }

    v184 = v90;
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v185 = sub_20E3227C0();
    __swift_project_value_buffer(v185, qword_280E12C48);
    sub_20E320504(v141, v145, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    v186 = sub_20E3227B0();
    v187 = sub_20E322A40();
    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v262 = v189;
      *v188 = 136315138;
      sub_20E065D4C(&qword_27C863F00, type metadata accessor for TranscriptProtoSessionCoordinatorError);
      v190 = sub_20E322470();
      v191 = v145;
      v193 = v192;
      sub_20E32056C(v191, type metadata accessor for TranscriptProtoSessionCoordinatorError);
      v194 = sub_20E31B6C4(v190, v193, &v262);

      *(v188 + 4) = v194;
      _os_log_impl(&dword_20E031000, v186, v187, "Unrecognized error from sessionCoordinatorError: %s", v188, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v189);
      MEMORY[0x20F32CA80](v189, -1, -1);
      MEMORY[0x20F32CA80](v188, -1, -1);
    }

    else
    {

      sub_20E32056C(v145, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    }

    v120 = v261;
    sub_20E32056C(v141, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    sub_20E32056C(v184, type metadata accessor for TranscriptProtoSessionError);
    sub_20E04875C(v142, &qword_27C863ED8, &unk_20E33C2B0);
    v105 = 0xD00000000000002ALL;
    v119 = 2;
    goto LABEL_16;
  }

  v109 = v74;
  v110 = v251;
  sub_20E32049C(v109, v251, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v111 = *v110;
  v112 = v110[1];
  v113 = v90;
  v114 = v110[2];
  v115 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v116 = sub_20E322860();
  v117 = [v115 initWithDomain:v116 code:v114 userInfo:0];

  v118 = [v117 debugDescription];
  v105 = sub_20E322890();

  sub_20E32056C(v113, type metadata accessor for TranscriptProtoSessionError);
  sub_20E32056C(v110, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v119 = 1;
  v120 = v261;
LABEL_16:
  sub_20E04875C(v92, &qword_27C863EE0, &qword_20E325D18);
LABEL_21:
  *v120 = v119;
  return v105;
}

uint64_t sub_20E31FCC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864168, &unk_20E33C440);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - v9;
  v52 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v11 = *(v52 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v52);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v46 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v45 = &v42 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v42 - v20;
  v22 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v53 = *(v22 - 8);
  v23 = *(v53 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 32);
  v51 = *(v27 + 16);
  if (!v51)
  {
LABEL_13:
    v34 = type metadata accessor for TranscriptProtoStatementID(0);
    return (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
  }

  v28 = 0;
  v50 = v27 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
  v29 = *(v24 + 20);
  v48 = (v11 + 48);
  v49 = v29;
  v47 = (v11 + 56);
  v43 = v27;
  while (1)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    sub_20E320504(v50 + *(v53 + 72) * v28, v26, type metadata accessor for TranscriptProtoProgramStatement);
    sub_20E0486F4(v26, v21, &qword_27C8639D0, &unk_20E33C230);
    sub_20E0486F4(&v26[v49], v6, &qword_27C864168, &unk_20E33C440);
    sub_20E32056C(v26, type metadata accessor for TranscriptProtoProgramStatement);
    v30 = type metadata accessor for TranscriptProtoExpression(0);
    if ((*(*(v30 - 8) + 48))(v6, 1, v30) != 1)
    {
      break;
    }

    sub_20E04875C(v21, &qword_27C8639D0, &unk_20E33C230);
    sub_20E04875C(v6, &qword_27C864168, &unk_20E33C440);
    (*v47)(v10, 1, 1, v52);
LABEL_4:
    sub_20E04875C(v10, &qword_27C864160, &unk_20E33C410);
LABEL_5:
    if (v51 == ++v28)
    {
      goto LABEL_13;
    }
  }

  sub_20E0486F4(v6, v10, &qword_27C864160, &unk_20E33C410);
  sub_20E32056C(v6, type metadata accessor for TranscriptProtoExpression);
  if ((*v48)(v10, 1, v52) == 1)
  {
    sub_20E04875C(v21, &qword_27C8639D0, &unk_20E33C230);
    goto LABEL_4;
  }

  v27 = v45;
  sub_20E32049C(v10, v45, type metadata accessor for TranscriptProtoExpressionEnum);
  v31 = v46;
  sub_20E320504(v27, v46, type metadata accessor for TranscriptProtoExpressionEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_20E32056C(v31, type metadata accessor for TranscriptProtoExpressionEnum);
  if (EnumCaseMultiPayload == 6)
  {
    if (qword_280E12B88 == -1)
    {
LABEL_15:
      v36 = sub_20E3227C0();
      __swift_project_value_buffer(v36, qword_280E12C48);
      v37 = sub_20E3227B0();
      v38 = sub_20E322A40();
      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_22;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "Derive valid originalStatementID from PlanCreated Call expression";
      goto LABEL_21;
    }

LABEL_24:
    swift_once();
    goto LABEL_15;
  }

  v33 = v44;
  sub_20E320504(v27, v44, type metadata accessor for TranscriptProtoExpressionEnum);
  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_20E32056C(v27, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E04875C(v21, &qword_27C8639D0, &unk_20E33C230);
    sub_20E32056C(v33, type metadata accessor for TranscriptProtoExpressionEnum);
    v27 = v43;
    goto LABEL_5;
  }

  sub_20E32056C(v33, type metadata accessor for TranscriptProtoExpressionEnum);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v41 = sub_20E3227C0();
  __swift_project_value_buffer(v41, qword_280E12C48);
  v37 = sub_20E3227B0();
  v38 = sub_20E322A40();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Derive valid originalStatementID from PlanCreated Search expression";
LABEL_21:
    _os_log_impl(&dword_20E031000, v37, v38, v40, v39, 2u);
    MEMORY[0x20F32CA80](v39, -1, -1);
  }

LABEL_22:

  sub_20E32056C(v27, type metadata accessor for TranscriptProtoExpressionEnum);
  return sub_20E32042C(v21, v42);
}

uint64_t sub_20E32042C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E32049C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E320504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E32056C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E3205CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_20E321DD4();
    v5 = sub_20E3227F0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t AppIntentMetricsProducer.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000023;
  *(result + 24) = 0x800000020E364640;
  return result;
}

uint64_t AppIntentMetricsProducer.init()()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000023;
  *(v0 + 24) = 0x800000020E364640;
  return result;
}

void AppIntentMetricsProducer.produce(from:with:)(uint64_t a1, Swift::OpaquePointer a2)
{
  if (qword_27C863978 != -1)
  {
    swift_once();
  }

  v4 = sub_20E3227C0();
  __swift_project_value_buffer(v4, qword_27C8CC290);
  v5 = sub_20E3227B0();
  v6 = sub_20E322A40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20E031000, v5, v6, "#AppIntentMetricsProducer producing metrics", v7, 2u);
    MEMORY[0x20F32CA80](v7, -1, -1);
  }

  v8 = _s23LighthouseDataProcessor24AppIntentMetricsProducerC09formulateF04fromSayAA0deF11DefinitionsVGAA11SessionViewV_tF_0(a1);
  if (*(v8 + 16))
  {
    AppIntentMetricsProducer.produceMetricsFor(results:reportTypes:)(v8, a2);
  }

  else
  {

    oslog = sub_20E3227B0();
    v9 = sub_20E322A40();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20E031000, oslog, v9, "#AppIntentMetricsProducer No metrics formulated for reporting", v10, 2u);
      MEMORY[0x20F32CA80](v10, -1, -1);
    }
  }
}

Swift::Void __swiftcall AppIntentMetricsProducer.produceMetricsFor(results:reportTypes:)(Swift::OpaquePointer results, Swift::OpaquePointer reportTypes)
{
  v2 = *(reportTypes._rawValue + 2);
  if (v2)
  {
    v4 = 0;
    v5 = reportTypes._rawValue + 32;
    do
    {
      if (v5[v4])
      {
        if (qword_27C863978 != -1)
        {
          swift_once();
        }

        v6 = sub_20E3227C0();
        __swift_project_value_buffer(v6, qword_27C8CC290);
        v7 = sub_20E3227B0();
        v8 = sub_20E322A40();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_20E031000, v7, v8, "#AppIntentMetricsProducer TODO: Implement SELF", v9, 2u);
          MEMORY[0x20F32CA80](v9, -1, -1);
        }
      }

      else
      {
        if (qword_27C863978 != -1)
        {
          swift_once();
        }

        v10 = sub_20E3227C0();
        __swift_project_value_buffer(v10, qword_27C8CC290);
        v11 = sub_20E3227B0();
        v12 = sub_20E322A40();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_20E031000, v11, v12, "#AppIntentMetricsProducer Uploading to CoreAnalytics", v13, 2u);
          MEMORY[0x20F32CA80](v13, -1, -1);
        }

        v14 = *(results._rawValue + 2);
        if (v14)
        {
          v15 = *(type metadata accessor for AppIntentMetricsDefinitions() - 8);
          v16 = results._rawValue + ((*(v15 + 80) + 32) & ~*(v15 + 80));
          v17 = *(v15 + 72);
          do
          {
            sub_20E320AD4(v16);
            v16 += v17;
            --v14;
          }

          while (v14);
        }
      }

      ++v4;
    }

    while (v4 != v2);
  }
}

uint64_t sub_20E320AD4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FE0, &unk_20E359F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E326320;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000020E3646D0;
  *(inited + 48) = sub_20E322860();
  *(inited + 56) = 0x44496C6F6F74;
  *(inited + 64) = 0xE600000000000000;
  v4 = type metadata accessor for AppIntentMetricsDefinitions();
  v5 = (a1 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  *(inited + 72) = sub_20E322860();
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x800000020E364460;
  v8 = (a1 + v4[7]);
  if (*(v8 + 16) && *(v8 + 16) != 1)
  {
    v11 = *v8;
    v10 = v8[1];
  }

  v9 = sub_20E322860();

  *(inited + 96) = v9;
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x800000020E364440;
  *(a1 + v4[6]);
  v12 = sub_20E322860();

  *(inited + 120) = v12;
  strcpy((inited + 128), "errorMessage");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  v13 = (a1 + v4[8]);
  v14 = *v13;
  v15 = v13[1];
  *(inited + 144) = sub_20E322860();
  v16 = sub_20E048C98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FE8, &unk_20E326060);
  swift_arrayDestroy();
  type metadata accessor for CoreAnalyticsEmitter();
  swift_initStaticObject();
  CoreAnalyticsEmitter.sendCoreAnalytics(eventName:eventPayload:)(v1[1], v16);
}

uint64_t AppIntentMetricsProducer.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t AppIntentMetricsProducer.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_20E320F14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s23LighthouseDataProcessor24AppIntentMetricsProducerC09formulateF04fromSayAA0deF11DefinitionsVGAA11SessionViewV_tF_0(a1);
  *a2 = result;
  return result;
}

void sub_20E320F3C(uint64_t a1, void **a2)
{
  v3._rawValue = *a2;
  v4 = *v2;
  AppIntentMetricsProducer.produce(from:with:)(a1, v3);
}

uint64_t _s23LighthouseDataProcessor24AppIntentMetricsProducerC09formulateF04fromSayAA0deF11DefinitionsVGAA11SessionViewV_tF_0(uint64_t a1)
{
  v135 = sub_20E322010();
  v2 = *(v135 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v135);
  v134 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for AppIntentMetricsDefinitions();
  v122 = *(v123 - 8);
  v5 = *(v122 + 64);
  v6 = MEMORY[0x28223BE20](v123);
  v121 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v133 = &v102 - v8;
  v9 = type metadata accessor for RequestData(0);
  v119 = *(v9 - 8);
  v10 = *(v119 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v102 - v15;
  MEMORY[0x28223BE20](v14);
  v118 = &v102 - v17;
  v18 = type metadata accessor for SessionData(0);
  v104 = *(v18 - 8);
  v19 = *(v104 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v108 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v102 - v23;
  MEMORY[0x28223BE20](v22);
  v103 = &v102 - v25;
  v26 = *(a1 + *(type metadata accessor for SessionView(0) + 28));
  v27 = *(v26 + 64);
  v107 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v124 = v29 & v27;
  v106 = (v28 + 63) >> 6;
  v117 = 0x800000020E3646F0;
  v112 = 0x800000020E35A9F0;
  v111 = "DataDecodingError";
  v110 = v137;
  v116 = (v2 + 16);
  v115 = (v2 + 32);
  v105 = v26;

  v31 = 0;
  v32 = MEMORY[0x277D84F90];
  *&v33 = 136315138;
  v114 = v33;
  v125 = v13;
  v130 = v16;
  v120 = v9;
  v102 = v18;
  v113 = v24;
LABEL_6:
  v34 = v124;
  if (v124)
  {
    v35 = v31;
    v36 = v108;
LABEL_12:
    v124 = v34;
    v109 = v35;
    v37 = v103;
    sub_20E321CA4(*(v105 + 56) + *(v104 + 72) * (__clz(__rbit64(v34)) | (v35 << 6)), v103, type metadata accessor for SessionData);
    v38 = v37;
    v39 = v113;
    sub_20E321D6C(v38, v113, type metadata accessor for SessionData);
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v40 = sub_20E3227C0();
    v41 = __swift_project_value_buffer(v40, qword_27C8CC290);
    sub_20E321CA4(v39, v36, type metadata accessor for SessionData);
    v129 = v41;
    v42 = sub_20E3227B0();
    v43 = sub_20E322A40();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = v32;
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *v44 = v114;
      v47 = (v36 + *(v18 + 24));
      v49 = *v47;
      v48 = v47[1];

      sub_20E321D0C(v36, type metadata accessor for SessionData);
      v50 = sub_20E31B6C4(v49, v48, aBlock);

      *(v44 + 4) = v50;
      v13 = v125;
      _os_log_impl(&dword_20E031000, v42, v43, "#AppIntentMetricsProducer Formulating metrics from sessionId:  %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      v51 = v46;
      v32 = v45;
      MEMORY[0x20F32CA80](v51, -1, -1);
      v52 = v44;
      v16 = v130;
      MEMORY[0x20F32CA80](v52, -1, -1);
    }

    else
    {

      sub_20E321D0C(v36, type metadata accessor for SessionData);
    }

    v53 = *&v113[*(v18 + 32)];
    v124 &= v124 - 1;
    v54 = v53 + 64;
    v55 = 1 << *(v53 + 32);
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    else
    {
      v56 = -1;
    }

    v57 = v56 & *(v53 + 64);
    v58 = (v55 + 63) >> 6;
    v128 = v53;

    v59 = 0;
    v126 = v58;
    for (i = v54; v57; v58 = v126)
    {
      v131 = v32;
LABEL_26:
      v61 = v118;
      sub_20E321CA4(*(v128 + 56) + *(v119 + 72) * (__clz(__rbit64(v57)) | (v59 << 6)), v118, type metadata accessor for RequestData);
      sub_20E321D6C(v61, v16, type metadata accessor for RequestData);
      sub_20E321CA4(v16, v13, type metadata accessor for RequestData);
      v62 = sub_20E3227B0();
      v63 = sub_20E322A40();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        aBlock[0] = v65;
        *v64 = v114;
        v66 = &v13[*(v9 + 20)];
        v67 = v13;
        v69 = *v66;
        v68 = v66[1];

        sub_20E321D0C(v67, type metadata accessor for RequestData);
        v70 = sub_20E31B6C4(v69, v68, aBlock);
        v16 = v130;

        *(v64 + 4) = v70;
        _os_log_impl(&dword_20E031000, v62, v63, "#AppIntentMetricsProducer Formulating metrics from requestId:  %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x20F32CA80](v65, -1, -1);
        MEMORY[0x20F32CA80](v64, -1, -1);
      }

      else
      {

        sub_20E321D0C(v13, type metadata accessor for RequestData);
      }

      v71 = &v16[*(v9 + 32)];
      v72 = v117;
      if (*(v71 + 5) && (v73 = *(v71 + 6), v73[2]))
      {
        v74 = v73[4];
        v75 = v73[5];
      }

      else
      {
        v76 = sub_20E3227B0();
        v77 = sub_20E322A40();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          aBlock[0] = v79;
          *v78 = v114;
          *(v78 + 4) = sub_20E31B6C4(0xD000000000000024, v72, aBlock);
          _os_log_impl(&dword_20E031000, v76, v77, "%s", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v79);
          v80 = v79;
          v16 = v130;
          MEMORY[0x20F32CA80](v80, -1, -1);
          MEMORY[0x20F32CA80](v78, -1, -1);
        }

        v81 = sub_20E322860();
        v82 = swift_allocObject();
        v83 = v112;
        v82[2] = 0xD000000000000019;
        v82[3] = v83;
        v82[4] = 0x496C6F6F546C696ELL;
        v82[5] = 0xE900000000000044;
        v82[6] = 0xD000000000000024;
        v82[7] = v72;
        v137[2] = sub_20E06AE28;
        v137[3] = v82;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v137[0] = sub_20E3205CC;
        v137[1] = &block_descriptor_3;
        v84 = _Block_copy(aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v84);

        v74 = 0;
        v75 = 0;
      }

      (*v116)(v134, v16, v135);
      v85 = 0x6E776F6E6B6E75;
      if (v75)
      {
        v85 = v74;
      }

      v132 = v85;
      if (v75)
      {
        v86 = v75;
      }

      else
      {
        v86 = 0xE700000000000000;
      }

      v87 = *(v71 + 5);
      if (v87)
      {
        v88 = v71[61];
      }

      else
      {
        v88 = 0;
      }

      if (v87)
      {
        v89 = v71[24];
        v91 = *(v71 + 1);
        v90 = *(v71 + 2);
        sub_20E31101C(v91, v90, v89);
        v92 = *(v71 + 5);
        if (v92)
        {
          v93 = *(v71 + 4);
        }

        else
        {
          v93 = 0;
          v92 = 0xE000000000000000;
        }
      }

      else
      {
        v90 = 0;
        v93 = 0;
        v92 = 0xE000000000000000;
        v89 = 2;
        v91 = 3;
      }

      v94 = v133;
      (*v115)(v133, v134, v135);
      v95 = v123;
      v96 = (v94 + *(v123 + 20));
      *v96 = v132;
      v96[1] = v86;
      *(v94 + v95[6]) = v88;
      v97 = v94 + v95[7];
      *v97 = v91;
      *(v97 + 8) = v90;
      *(v97 + 16) = v89;
      v98 = (v94 + v95[8]);
      *v98 = v93;
      v98[1] = v92;
      v99 = v121;
      sub_20E321CA4(v94, v121, type metadata accessor for AppIntentMetricsDefinitions);
      v32 = v131;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_20E22558C(0, v32[2] + 1, 1, v32);
      }

      v9 = v120;
      v13 = v125;
      v54 = i;
      v101 = v32[2];
      v100 = v32[3];
      if (v101 >= v100 >> 1)
      {
        v32 = sub_20E22558C(v100 > 1, v101 + 1, 1, v32);
      }

      v57 &= v57 - 1;
      sub_20E321D0C(v133, type metadata accessor for AppIntentMetricsDefinitions);
      v32[2] = v101 + 1;
      sub_20E321D6C(v99, v32 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v101, type metadata accessor for AppIntentMetricsDefinitions);
      v16 = v130;
      result = sub_20E321D0C(v130, type metadata accessor for RequestData);
    }

    while (1)
    {
      v60 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v60 >= v58)
      {

        result = sub_20E321D0C(v113, type metadata accessor for SessionData);
        v31 = v109;
        v18 = v102;
        goto LABEL_6;
      }

      v57 = *(v54 + 8 * v60);
      ++v59;
      if (v57)
      {
        v131 = v32;
        v59 = v60;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = v108;
    while (1)
    {
      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v35 >= v106)
      {

        return v32;
      }

      v34 = *(v107 + 8 * v35);
      ++v31;
      if (v34)
      {
        goto LABEL_12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20E321CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E321D0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E321D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20E321DD4()
{
  result = qword_280E03EE0;
  if (!qword_280E03EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E03EE0);
  }

  return result;
}