unint64_t MentalHealthAssessmentsAnalyticsActionType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0x6E69676542;
    v7 = 1954047310;
    v8 = 1701736260;
    if (v1 != 3)
    {
      v8 = 0x74726F707845;
    }

    if (v1 != 2)
    {
      v7 = v8;
    }

    if (*v0)
    {
      v6 = 0x65736F6C43;
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
    v2 = 0xD000000000000025;
    if (v1 == 9)
    {
      v2 = 0xD00000000000001ALL;
    }

    if (v1 == 8)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0x20656C6369747241;
    v4 = 0x696C43206F666E49;
    if (v1 != 6)
    {
      v4 = 0xD000000000000013;
    }

    if (v1 != 5)
    {
      v3 = v4;
    }

    if (*v0 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2589F69A4()
{
  v1 = *v0;
  sub_258B03514();
  sub_2589C81AC();
  return sub_258B03554();
}

uint64_t sub_2589F69F4()
{
  v1 = *v0;
  sub_258B03514();
  sub_2589C81AC();
  return sub_258B03554();
}

unint64_t sub_2589F6A44@<X0>(unint64_t *a1@<X8>)
{
  result = MentalHealthAssessmentsAnalyticsActionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

MentalHealthUI::MentalHealthAssessmentsAnalyticsAssessmentType_optional __swiftcall MentalHealthAssessmentsAnalyticsAssessmentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MentalHealthAssessmentsAnalyticsAssessmentType.rawValue.getter()
{
  v1 = 927220039;
  if (*v0 != 1)
  {
    v1 = 0x50646E6137444147;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 961628240;
  }
}

uint64_t sub_2589F6B1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 927220039;
  if (v2 != 1)
  {
    v5 = 0x50646E6137444147;
    v4 = 0xEB00000000395148;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 961628240;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 927220039;
  if (*a2 != 1)
  {
    v8 = 0x50646E6137444147;
    v3 = 0xEB00000000395148;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 961628240;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258B03454();
  }

  return v11 & 1;
}

uint64_t sub_2589F6C14()
{
  v1 = *v0;
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589F6CB0()
{
  *v0;
  *v0;
  sub_258B02B74();
}

uint64_t sub_2589F6D38()
{
  v1 = *v0;
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

void sub_2589F6DDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 927220039;
  if (v2 != 1)
  {
    v5 = 0x50646E6137444147;
    v4 = 0xEB00000000395148;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 961628240;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

MentalHealthUI::MentalHealthAssessmentsAnalyticsEntryPoint_optional __swiftcall MentalHealthAssessmentsAnalyticsEntryPoint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter()
{
  result = 0x6565442039514850;
  switch(*v0)
  {
    case 1:
    case 6:
      result = 0xD000000000000021;
      break;
    case 2:
    case 0xA:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 0xB:
      return result;
    case 0xC:
      result = 0x6565442037444147;
      break;
    default:
      result = 0xD000000000000020;
      break;
  }

  return result;
}

uint64_t sub_2589F7004(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter();
  v4 = v3;
  if (v2 == MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_258B03454();
  }

  return v7 & 1;
}

uint64_t sub_2589F70A0()
{
  v1 = *v0;
  sub_258B03514();
  MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589F7108()
{
  v2 = *v0;
  MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter();
  sub_258B02B74();
}

uint64_t sub_2589F716C()
{
  v1 = *v0;
  sub_258B03514();
  MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter();
  sub_258B02B74();

  return sub_258B03554();
}

unint64_t sub_2589F71DC@<X0>(unint64_t *a1@<X8>)
{
  result = MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

MentalHealthUI::MentalHealthAssessmentsAnalyticsProvenance_optional __swiftcall MentalHealthAssessmentsAnalyticsProvenance.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MentalHealthAssessmentsAnalyticsProvenance.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7972616D6D7553;
  v3 = 0xD000000000000012;
  v4 = 0x6163696669746F4ELL;
  if (v1 != 4)
  {
    v4 = 0x6E694C2070656544;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7079542065746144;
  if (v1 != 1)
  {
    v5 = 0x656C6369747241;
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

unint64_t sub_2589F733C()
{
  result = qword_27F96D928;
  if (!qword_27F96D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D928);
  }

  return result;
}

unint64_t sub_2589F7394()
{
  result = qword_27F96D930;
  if (!qword_27F96D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D930);
  }

  return result;
}

unint64_t sub_2589F73EC()
{
  result = qword_27F96D938;
  if (!qword_27F96D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D938);
  }

  return result;
}

unint64_t sub_2589F7444()
{
  result = qword_27F96D940;
  if (!qword_27F96D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D940);
  }

  return result;
}

unint64_t sub_2589F74A8()
{
  result = qword_27F96D948;
  if (!qword_27F96D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D948);
  }

  return result;
}

uint64_t sub_2589F7504()
{
  *v0;
  *v0;
  *v0;
  sub_258B02B74();
}

void sub_2589F7624(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972616D6D7553;
  v5 = 0x8000000258B360E0;
  v6 = 0xD000000000000012;
  v7 = 0xEC0000006E6F6974;
  v8 = 0x6163696669746F4ELL;
  if (v2 != 4)
  {
    v8 = 0x6E694C2070656544;
    v7 = 0xE90000000000006BLL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE006D6F6F522065;
  v10 = 0x7079542065746144;
  if (v2 != 1)
  {
    v10 = 0x656C6369747241;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for MentalHealthAssessmentsAnalyticsStepType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MentalHealthAssessmentsAnalyticsStepType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MentalHealthAssessmentsAnalyticsActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MentalHealthAssessmentsAnalyticsActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MentalHealthAssessmentsAnalyticsAssessmentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MentalHealthAssessmentsAnalyticsAssessmentType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2589F7B10(void *a1, uint64_t a2)
{
  sub_2589F7DCC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258B00084();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  sub_2589F84F8(a2, v8, sub_2589F7DCC);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_2589F85F4(v8, sub_2589F7DCC);
  }

  v17 = *(v10 + 32);
  v17(v15, v8, v9);
  (*(v10 + 16))(v13, v15, v9);
  v18 = *(v10 + 80);
  v24 = a1;
  v19 = (v18 + 24) & ~v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  v17((v20 + v19), v13, v9);
  aBlock[4] = sub_2589F7E24;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2589F7EA0;
  aBlock[3] = &block_descriptor_2;
  v21 = _Block_copy(aBlock);
  v22 = v2;

  [v24 setTitleTapOutBlock_];
  _Block_release(v21);
  return (*(v10 + 8))(v15, v9);
}

void sub_2589F7DCC()
{
  if (!qword_27F96EBF0)
  {
    sub_258B00084();
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EBF0);
    }
  }
}

uint64_t sub_2589F7E24(void *a1, void *a2)
{
  v5 = *(sub_258B00084() - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));
  v7 = *(v2 + 16);
  return sub_2589F7F3C(v6, a1, a2);
}

void sub_2589F7EA0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2589F7F3C(uint64_t a1, void *a2, void *a3)
{
  v44 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for StateOfMindTimeline.EntryFullView();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v45 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = (&v39 - v9);
  v11 = sub_258B00084();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_258B00384();
  v16 = *(v42 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v42);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v20 = *(v12 + 16);
  v43 = a1;
  v20(v15, a1, v11);
  v21 = sub_258B00374();
  v22 = sub_258B02EA4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = a3;
    v24 = v23;
    v39 = swift_slowAlloc();
    v46 = v39;
    *v24 = 136446466;
    v25 = sub_258B035A4();
    v27 = sub_2589F1F78(v25, v26, &v46);
    ObjectType = v10;
    v28 = v27;

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    sub_2589F8654(&qword_27F96D970, MEMORY[0x277CC9578]);
    v29 = sub_258B03414();
    v31 = v30;
    (*(v12 + 8))(v15, v11);
    v32 = sub_2589F1F78(v29, v31, &v46);
    v10 = ObjectType;

    *(v24 + 14) = v32;
    _os_log_impl(&dword_2589A1000, v21, v22, "[%{public}s] Presenting timeline for date: %{public}s", v24, 0x16u);
    v33 = v39;
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v33, -1, -1);
    v34 = v24;
    a3 = v40;
    MEMORY[0x259C945C0](v34, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  (*(v16 + 8))(v19, v42);
  _s14MentalHealthUI19StateOfMindTimelineO5ModelC05buildgH03day11healthStoreAE10Foundation4DateV_So08HKHealthL0CtFZ_0(v43, v44);

  StateOfMindTimeline.EntryFullView.init(model:)(v10);
  sub_2589F84F8(v10, v45, type metadata accessor for StateOfMindTimeline.EntryFullView);
  sub_2589F8560();
  v36 = objc_allocWithZone(v35);
  v37 = sub_258B011C4();
  [a3 hk:v37 presentModalCardViewController:0 fullScreen:1 animated:0 completion:?];

  return sub_2589F85F4(v10, type metadata accessor for StateOfMindTimeline.EntryFullView);
}

id StateOfMindChartTapOutFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StateOfMindChartTapOutFormatter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindChartTapOutFormatter();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t type metadata accessor for StateOfMindChartTapOutFormatter()
{
  result = qword_27F96D950;
  if (!qword_27F96D950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2589F841C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for StateOfMindChartTapOutFormatter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id StateOfMindChartTapOutFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindChartTapOutFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2589F84F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2589F8560()
{
  if (!qword_27F96D960)
  {
    type metadata accessor for StateOfMindTimeline.EntryFullView();
    sub_2589F8654(&qword_27F96D968, type metadata accessor for StateOfMindTimeline.EntryFullView);
    v0 = sub_258B011D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D960);
    }
  }
}

uint64_t sub_2589F85F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589F8654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s21StateOfMindSymbolViewVMa()
{
  result = qword_27F96D978;
  if (!qword_27F96D978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589F8710()
{
  sub_2589F95C4(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2589F95C4(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2589F8818@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F95C4(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_2589DC538(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B006A4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_258B02E94();
    v16 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2589F8A24()
{
  sub_2589F927C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F9344(0, &qword_27F96D998, MEMORY[0x277CE0330]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = sub_258B02094();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(_s21StateOfMindSymbolViewVMa() + 24)) == 1)
  {
    type metadata accessor for MentalHealthUIRepresentative();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_258B020D4();
    (*(v10 + 104))(v13, *MEMORY[0x277CE0FE0], v9);
    v16 = sub_258B020C4();

    (*(v10 + 8))(v13, v9);
    *v8 = v16;
    *(v8 + 1) = 0;
    *(v8 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_2589BF7E8(0, &qword_27F96C858, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    sub_2589C0238();
    sub_2589F9480(&qword_27F96D9A0, sub_2589F927C, sub_2589F9444);
    return sub_258B012A4();
  }

  else
  {
    sub_2589F8DF8(v4);
    sub_2589F93E0(v4, v8);
    swift_storeEnumTagMultiPayload();
    sub_2589BF7E8(0, &qword_27F96C858, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    sub_2589C0238();
    sub_2589F9480(&qword_27F96D9A0, sub_2589F927C, sub_2589F9444);
    sub_258B012A4();
    return sub_2589F9500(v4, sub_2589F927C);
  }
}

void sub_2589F8DF8(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_258B02554();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v1);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_258B006A4();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v38);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258B02094();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F92DC();
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B020A4();
  (*(v16 + 104))(v19, *MEMORY[0x277CE0FE0], v15);
  v37 = sub_258B020C4();

  (*(v16 + 8))(v19, v15);
  v36 = *(_s21StateOfMindSymbolViewVMa() + 20);
  sub_258AC1060(v14);
  sub_2589F9500(v14, type metadata accessor for StateOfMindTimeline.Styles);
  v25 = [objc_opt_self() labelColor];
  v35 = sub_258B01F94();
  sub_2589F8818(v10);
  v26 = v38;
  (*(v4 + 104))(v8, *MEMORY[0x277CDF3D0], v38);
  LOBYTE(v15) = sub_258B00694();
  v27 = *(v4 + 8);
  v27(v8, v26);
  v27(v10, v26);
  v29 = v39;
  v28 = v40;
  v30 = MEMORY[0x277CE13B0];
  if ((v15 & 1) == 0)
  {
    v30 = MEMORY[0x277CE13B8];
  }

  v31 = v41;
  (*(v40 + 104))(v39, *v30, v41);
  (*(v28 + 32))(&v24[*(v21 + 44)], v29, v31);
  *v24 = v37;
  *(v24 + 1) = 0;
  *(v24 + 8) = 1;
  *(v24 + 3) = v35;
  sub_258AC1060(v14);
  sub_2589F9500(v14, type metadata accessor for StateOfMindTimeline.Styles);
  v32 = v42;
  sub_2589F9560(v24, v42);
  sub_2589F927C();
  *(v32 + *(v33 + 36)) = 0x3FA999999999999ALL;
}

void sub_2589F927C()
{
  if (!qword_27F96D988)
  {
    sub_2589F92DC();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D988);
    }
  }
}

void sub_2589F92DC()
{
  if (!qword_27F96D990)
  {
    sub_2589BF728();
    sub_258B00C84();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D990);
    }
  }
}

void sub_2589F9344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2589BF7E8(255, &qword_27F96C858, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    v7 = v6;
    sub_2589F927C();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2589F93E0(uint64_t a1, uint64_t a2)
{
  sub_2589F927C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589F9480(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2589F9500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589F9560(uint64_t a1, uint64_t a2)
{
  sub_2589F92DC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2589F95C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2589F9628()
{
  result = qword_27F96D9B0;
  if (!qword_27F96D9B0)
  {
    sub_2589F9344(255, &qword_27F96D9B8, MEMORY[0x277CE0338]);
    sub_2589C0238();
    sub_2589F9480(&qword_27F96D9A0, sub_2589F927C, sub_2589F9444);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D9B0);
  }

  return result;
}

uint64_t type metadata accessor for IntroPhase_iOS()
{
  result = qword_27F96D9C0;
  if (!qword_27F96D9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589F9770()
{
  sub_2589FA1A4(319, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2589E3D24();
    if (v1 <= 0x3F)
    {
      sub_2589C0D10();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2589F9860@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FA1A4(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_2589FA328(v2, &v16 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2589FA3BC(v12, a1, type metadata accessor for IntroPhaseSpecs);
  }

  v14 = *v12;
  sub_258B02E94();
  v15 = sub_258B01824();
  sub_258B00354();

  sub_258B00F74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

id sub_2589F9A50@<X0>(__n128 *a1@<X8>)
{
  v3 = type metadata accessor for IntroPhaseSpecs();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IntroPhaseContent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for IntroPhase_iOS();
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  if (*(v1 + v11[6]) == 1)
  {
    sub_2589F9D9C(v39);
    v12 = v39[0];
    v13 = v39[1];
    v14 = v39[2];
    v15 = v39[3];
    v16 = v39[4];
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
  v17 = *(v1 + v11[5] + 8);
  v18 = (v1 + v11[7]);
  v20 = *v18;
  v19 = v18[1];
  *(v10 + *(v7 + 24)) = swift_getKeyPath();
  sub_2589FA1A4(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for StateOfMindEntryModel(0);
  sub_2589FA15C(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);

  *v10 = sub_258B00A24();
  v10[1] = v21;
  v10[2] = v20;
  v10[3] = v19;
  v22 = sub_258B01864();
  sub_2589F9860(v6);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v24 = result;
    [result isiPad];

    sub_2589F9F8C(v6);
    sub_2589F9FE8();
    v26 = v25;
    v27 = a1 + *(v25 + 36);
    sub_258B00654();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_2589FA3BC(v10, v27, type metadata accessor for IntroPhaseContent);
    sub_2589FA04C();
    v37 = v27 + *(v36 + 36);
    *v37 = v22;
    *(v37 + 8) = v29;
    *(v37 + 16) = v31;
    *(v37 + 24) = v33;
    *(v37 + 32) = v35;
    *(v37 + 40) = 0;
    v38 = *(v26 + 40);
    *(a1->n128_u64 + v38) = swift_getKeyPath();
    sub_2589FA1A4(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_2589F9D9C@<Q0>(__n128 *a1@<X8>)
{
  v3 = type metadata accessor for IntroPhase_iOS();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v6 = sub_258AFFD94();
  v8 = v7;
  sub_2589FA208(v1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_2589FA3BC(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for IntroPhase_iOS);
  v14[1] = 0;
  v15 = 1;
  sub_2589FA2D8();
  sub_258B02354();
  result = v16;
  v12 = v17;
  v13 = v18;
  a1->n128_u64[0] = v6;
  a1->n128_u64[1] = v8;
  a1[1] = result;
  a1[2].n128_u64[0] = v12;
  a1[2].n128_u8[8] = v13;
  a1[3].n128_u64[0] = 0x747475427478654ELL;
  a1[3].n128_u64[1] = 0xEA00000000006E6FLL;
  a1[4].n128_u64[0] = sub_2589FA26C;
  a1[4].n128_u64[1] = v10;
  return result;
}

uint64_t sub_2589F9F8C(uint64_t a1)
{
  v2 = type metadata accessor for IntroPhaseSpecs();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2589F9FE8()
{
  if (!qword_27F96D9D0)
  {
    sub_2589FA04C();
    sub_2589FA0AC();
    v0 = type metadata accessor for StateOfMindEntryPhase_iOS();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D9D0);
    }
  }
}

void sub_2589FA04C()
{
  if (!qword_27F96D9D8)
  {
    type metadata accessor for IntroPhaseContent();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D9D8);
    }
  }
}

unint64_t sub_2589FA0AC()
{
  result = qword_27F96D9E0;
  if (!qword_27F96D9E0)
  {
    sub_2589FA04C();
    sub_2589FA15C(&qword_27F96D9E8, type metadata accessor for IntroPhaseContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D9E0);
  }

  return result;
}

uint64_t sub_2589FA15C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2589FA1A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2589FA208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntroPhase_iOS();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589FA26C()
{
  v1 = type metadata accessor for IntroPhase_iOS();
  v2 = v0 + *(v1 + 28) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

void sub_2589FA2D8()
{
  if (!qword_27F96D9F0)
  {
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D9F0);
    }
  }
}

uint64_t sub_2589FA328(uint64_t a1, uint64_t a2)
{
  sub_2589FA1A4(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589FA3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s14EntryEmptyViewVMa()
{
  result = qword_27F96DA00;
  if (!qword_27F96DA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589FA498()
{
  sub_2589FC328(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2589FC328(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2589DB8A8(319, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2589FA5D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CDF3E0];
  v10 = MEMORY[0x277CDF458];
  sub_2589FC328(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v19 - v13);
  sub_2589FC538(v2, &v19 - v13, &qword_27F96C908, v9, v10, sub_2589FC328);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_258B006A4();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_258B02E94();
    v18 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2589FA814@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_258B01634();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s6StylesV5EmptyVMa(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FBCE0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2589FBCE0;
  sub_2589FBF48(0, &qword_27F96DA48, sub_2589FBCE0);
  v21 = v20;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v39 - v23;
  sub_2589FBFAC();
  v42 = v25;
  v41 = *(v25 - 8);
  v26 = *(v41 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v19 = sub_258B01194();
  *(v19 + 1) = 0;
  v19[16] = 0;
  sub_2589FC170();
  sub_2589FAD34(v1, &v19[*(v29 + 44)]);
  v30 = v1 + *(_s14EntryEmptyViewVMa() + 20);
  sub_258AC1060(v15);
  sub_2589FC208(&v15[*(v12 + 60)], v10);
  sub_2589FC26C(v15, type metadata accessor for StateOfMindTimeline.Styles);
  LODWORD(v15) = v10[*(v7 + 32)];
  sub_2589FC26C(v10, _s6StylesV5EmptyVMa);
  sub_258B024F4();
  sub_258B00C94();
  sub_2589FC38C(v19, v24, sub_2589FBCE0);
  v31 = &v24[*(v21 + 36)];
  v32 = v55;
  *(v31 + 4) = v54;
  *(v31 + 5) = v32;
  *(v31 + 6) = v56;
  v33 = v51;
  *v31 = v50;
  *(v31 + 1) = v33;
  v34 = v53;
  *(v31 + 2) = v52;
  *(v31 + 3) = v34;
  sub_258B01614();
  v35 = sub_2589FC054();
  sub_258B01D84();
  (*(v43 + 8))(v5, v44);
  sub_2589FC2CC(v24, &qword_27F96DA48, v40);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v48 = sub_258AFFD94();
  v49 = v36;
  v46 = v21;
  v47 = v35;
  swift_getOpaqueTypeConformance2();
  sub_2589BFF58();
  v37 = v42;
  sub_258B01D34();

  return (*(v41 + 8))(v28, v37);
}

uint64_t sub_2589FAD34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v164 = a2;
  v165 = a1;
  v155 = sub_258B02554();
  v154 = *(v155 - 8);
  v2 = *(v154 + 64);
  MEMORY[0x28223BE20](v155);
  v153 = &v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_258B006A4();
  v151 = *(v152 - 8);
  v4 = *(v151 + 64);
  v5 = MEMORY[0x28223BE20](v152);
  v149 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v148 = &v140 - v7;
  v144 = sub_258B019F4();
  v143 = *(v144 - 8);
  v8 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v142 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5144();
  v145 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v146 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DB778();
  v150 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v147 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FC6CC(0, &qword_27F96DA38, sub_2589DB778);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v158 = &v140 - v18;
  sub_2589FBE44();
  v156 = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v161 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FBF48(0, &qword_27F96DA28, sub_2589FBE44);
  v160 = v22;
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v163 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v159 = &v140 - v27;
  MEMORY[0x28223BE20](v26);
  v162 = &v140 - v28;
  v29 = _s6StylesV5EmptyVMa(0);
  v30 = *(v29 - 8);
  v167 = (v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v33 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v35 = v34 - 8;
  v36 = *(*(v34 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v168 = &v140 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v140 - v39;
  v41 = _s21StateOfMindSymbolViewVMa();
  v42 = v41 - 8;
  v43 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v45 = (&v140 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = _s21StateOfMindSymbolViewVMa;
  sub_2589FBF48(0, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa);
  v47 = v46 - 8;
  v48 = *(*(v46 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v46);
  v157 = &v140 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v140 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = &v140 - v54;
  *v45 = swift_getKeyPath();
  v56 = MEMORY[0x277CDF458];
  sub_2589FC328(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v57 = *(v42 + 28);
  *(v45 + v57) = swift_getKeyPath();
  sub_2589FC328(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v56);
  swift_storeEnumTagMultiPayload();
  *(v45 + *(v42 + 32)) = 0;
  v141 = _s14EntryEmptyViewVMa();
  v166 = *(v141 + 20);
  sub_258AC1060(v40);
  sub_2589FC208(&v40[*(v35 + 60)], v33);
  sub_2589FC26C(v40, type metadata accessor for StateOfMindTimeline.Styles);
  LODWORD(v57) = v33[*(v167 + 8)];
  sub_2589FC26C(v33, _s6StylesV5EmptyVMa);
  sub_258B024F4();
  sub_258B00854();
  sub_2589FC38C(v45, v53, _s21StateOfMindSymbolViewVMa);
  v58 = &v53[*(v47 + 44)];
  v59 = v172;
  *v58 = v171;
  *(v58 + 1) = v59;
  *(v58 + 2) = v173;
  v167 = v55;
  sub_2589FC3F4(v53, v55, &qword_27F96CA00, v140);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v169 = sub_258AFFD94();
  v170 = v60;
  sub_2589BFF58();
  v61 = sub_258B01B44();
  v63 = v62;
  v65 = v64;
  v66 = v168;
  sub_258AC1060(v168);
  v140 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_2589FC26C(v66, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B019C4();
  sub_258B01994();
  sub_258B019E4();

  v67 = v143;
  v68 = v142;
  v69 = v144;
  (*(v143 + 104))(v142, *MEMORY[0x277CE0A10], v144);
  sub_258B01A14();

  (*(v67 + 8))(v68, v69);
  v70 = sub_258B01AE4();
  v72 = v71;
  v74 = v73;
  sub_2589BFFAC(v61, v63, v65 & 1);

  v75 = v165;
  v76 = v168;
  sub_258AC1060(v168);
  sub_2589FC26C(v76, v140);
  v77 = [objc_opt_self() tertiaryLabelColor];
  v169 = sub_258B01F94();
  v78 = sub_258B01AB4();
  v80 = v79;
  v82 = v81;
  v144 = v83;
  sub_2589BFFAC(v70, v72, v74 & 1);

  v84 = v148;
  sub_2589FA5D4(v148);
  v85 = v151;
  v86 = v149;
  v87 = v152;
  (*(v151 + 104))(v149, *MEMORY[0x277CDF3D0], v152);
  v88 = sub_258B00694();
  v89 = *(v85 + 8);
  v89(v86, v87);
  v89(v84, v87);
  v90 = v154;
  v91 = MEMORY[0x277CE13B0];
  if ((v88 & 1) == 0)
  {
    v91 = MEMORY[0x277CE13B8];
  }

  v92 = v153;
  v93 = v155;
  (*(v154 + 104))(v153, *v91, v155);
  v94 = v146;
  (*(v90 + 32))(&v146[*(v145 + 36)], v92, v93);
  *v94 = v78;
  *(v94 + 1) = v80;
  v94[16] = v82 & 1;
  *(v94 + 3) = v144;
  KeyPath = swift_getKeyPath();
  v96 = v94;
  v97 = v147;
  sub_2589FC38C(v96, v147, sub_2589C5144);
  v98 = v97 + *(v150 + 36);
  *v98 = KeyPath;
  *(v98 + 8) = 1;
  v99 = *(v75 + *(v141 + 24));
  sub_258B003E4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v101 = v168;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v99 = sub_258A74828(0, *(v99 + 2) + 1, 1, v99);
  }

  v103 = *(v99 + 2);
  v102 = *(v99 + 3);
  if (v103 >= v102 >> 1)
  {
    v99 = sub_258A74828((v102 > 1), v103 + 1, 1, v99);
  }

  *(v99 + 2) = v103 + 1;
  v104 = &v99[16 * v103];
  *(v104 + 4) = 0x62614C7974706D45;
  *(v104 + 5) = 0xEA00000000006C65;
  v169 = &unk_2869D4670;
  v105 = sub_258B003E4();
  sub_2589FC8C8(v105);
  sub_2589DB8A8(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589DC374();
  v106 = v158;
  sub_258B01DD4();

  sub_2589FC26C(v97, sub_2589DB778);
  v107 = sub_258B01884();
  sub_258AC1060(v101);
  sub_2589FC26C(v101, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00654();
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v115 = v114;
  v116 = v161;
  sub_2589FC4B8(v106, v161);
  v117 = v116 + *(v156 + 36);
  *v117 = v107;
  *(v117 + 8) = v109;
  *(v117 + 16) = v111;
  *(v117 + 24) = v113;
  *(v117 + 32) = v115;
  *(v117 + 40) = 0;
  v118 = sub_258B01864();
  sub_258AC1060(v101);
  sub_2589FC26C(v101, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00654();
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v127 = v116;
  v128 = v159;
  sub_2589FC38C(v127, v159, sub_2589FBE44);
  v129 = v128 + *(v160 + 36);
  *v129 = v118;
  *(v129 + 8) = v120;
  *(v129 + 16) = v122;
  *(v129 + 24) = v124;
  *(v129 + 32) = v126;
  *(v129 + 40) = 0;
  v130 = MEMORY[0x277CDF928];
  v131 = v162;
  sub_2589FC3F4(v128, v162, &qword_27F96DA28, sub_2589FBE44);
  v132 = MEMORY[0x277CDF688];
  v133 = v157;
  sub_2589FC538(v167, v157, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa, MEMORY[0x277CDF688], sub_2589FBF48);
  v134 = v163;
  sub_2589FC538(v131, v163, &qword_27F96DA28, sub_2589FBE44, v130, sub_2589FBF48);
  v135 = v164;
  *v164 = 0;
  *(v135 + 8) = 1;
  sub_2589FBD74();
  v137 = v136;
  sub_2589FC538(v133, v135 + *(v136 + 48), &qword_27F96CA00, _s21StateOfMindSymbolViewVMa, v132, sub_2589FBF48);
  sub_2589FC538(v134, v135 + *(v137 + 64), &qword_27F96DA28, sub_2589FBE44, MEMORY[0x277CDF928], sub_2589FBF48);
  v138 = v135 + *(v137 + 80);
  *v138 = 0;
  v138[8] = 1;
  sub_2589FC2CC(v131, &qword_27F96DA28, sub_2589FBE44);
  sub_2589FC2CC(v167, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa);
  sub_2589FC2CC(v134, &qword_27F96DA28, sub_2589FBE44);
  return sub_2589FC2CC(v133, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa);
}

void sub_2589FBCE0()
{
  if (!qword_27F96DA10)
  {
    sub_2589FC328(255, &qword_27F96DA18, sub_2589FBD74, MEMORY[0x277CE14B8]);
    sub_2589FBEC0();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DA10);
    }
  }
}

void sub_2589FBD74()
{
  if (!qword_27F96DA20)
  {
    sub_2589FBF48(255, &qword_27F96CA00, _s21StateOfMindSymbolViewVMa);
    sub_2589FBF48(255, &qword_27F96DA28, sub_2589FBE44);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96DA20);
    }
  }
}

void sub_2589FBE44()
{
  if (!qword_27F96DA30)
  {
    sub_2589FC6CC(255, &qword_27F96DA38, sub_2589DB778);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DA30);
    }
  }
}

unint64_t sub_2589FBEC0()
{
  result = qword_27F96DA40;
  if (!qword_27F96DA40)
  {
    sub_2589FC328(255, &qword_27F96DA18, sub_2589FBD74, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DA40);
  }

  return result;
}

void sub_2589FBF48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2589FBFAC()
{
  if (!qword_27F96DA50)
  {
    sub_2589FBF48(255, &qword_27F96DA48, sub_2589FBCE0);
    sub_2589FC054();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96DA50);
    }
  }
}

unint64_t sub_2589FC054()
{
  result = qword_27F96DA58;
  if (!qword_27F96DA58)
  {
    sub_2589FBF48(255, &qword_27F96DA48, sub_2589FBCE0);
    sub_2589FC128(&qword_27F96DA60, sub_2589FBCE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DA58);
  }

  return result;
}

uint64_t sub_2589FC128(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2589FC170()
{
  if (!qword_27F96DA68)
  {
    sub_2589FC328(255, &qword_27F96DA18, sub_2589FBD74, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DA68);
    }
  }
}

uint64_t sub_2589FC208(uint64_t a1, uint64_t a2)
{
  v4 = _s6StylesV5EmptyVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589FC26C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589FC2CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2589FBF48(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2589FC328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2589FC38C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589FC3F4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2589FBF48(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2589FC464@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258B00E54();
  *a1 = result;
  return result;
}

uint64_t sub_2589FC4B8(uint64_t a1, uint64_t a2)
{
  sub_2589FC6CC(0, &qword_27F96DA38, sub_2589DB778);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589FC538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_2589FC5AC()
{
  result = qword_27F96DA70;
  if (!qword_27F96DA70)
  {
    sub_2589FC6CC(255, &qword_27F96DA78, sub_2589FBFAC);
    sub_2589FBF48(255, &qword_27F96DA48, sub_2589FBCE0);
    sub_2589FC054();
    swift_getOpaqueTypeConformance2();
    sub_2589FC128(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DA70);
  }

  return result;
}

void sub_2589FC6CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258B017D4();
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t MentalHealthAccessibilityCategory.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_258B03324();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2589FC7AC()
{
  sub_258B03514();
  sub_258B02B74();
  return sub_258B03554();
}

uint64_t sub_2589FC810()
{
  sub_258B03514();
  sub_258B02B74();
  return sub_258B03554();
}

uint64_t sub_2589FC85C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_258B03324();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2589FC8C8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_258A74828(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2589FC9BC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_258A75498(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2589FCAB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_258B032B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_258B032B4();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2589FD048(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2589F427C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2589FCBA4(uint64_t result)
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

  result = sub_258A757CC(result, v12, 1, v3);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_2589FCC90(uint64_t result)
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

  result = sub_258A758E8(result, v12, 1, v3);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

uint64_t static String.mindAccessibilityIdentifier(_:)()
{
  v0 = sub_258B003E4();
  sub_2589FC8C8(v0);
  sub_2589FCE08();
  sub_2589C6824();
  v1 = sub_258B02A34();

  return v1;
}

void sub_2589FCE08()
{
  if (!qword_280DF8948)
  {
    v0 = sub_258B02CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF8948);
    }
  }
}

uint64_t static String.mindAccessibilityIdentifier(_:components:)()
{
  v0 = sub_258B003E4();
  sub_2589FC8C8(v0);
  v1 = sub_258B003E4();
  sub_2589FC8C8(v1);
  sub_2589FCE08();
  sub_2589C6824();
  v2 = sub_258B02A34();

  return v2;
}

unint64_t sub_2589FCF14()
{
  result = qword_27F96DA80;
  if (!qword_27F96DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DA80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MentalHealthAccessibilityCategory(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MentalHealthAccessibilityCategory(_WORD *result, int a2, int a3)
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

uint64_t sub_2589FD048(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_258B032B4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_258B031D4();
  *v1 = result;
  return result;
}

uint64_t _s14EntryViewStackVMa()
{
  result = qword_27F96DA88;
  if (!qword_27F96DA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589FD15C()
{
  sub_2589FE24C(319, &qword_27F96C788, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2589FD1E8()
{
  result = qword_27F96DA98;
  if (!qword_27F96DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DA98);
  }

  return result;
}

uint64_t sub_2589FD23C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = sub_258B00934();
  v8 = *(v43 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  if (a2)
  {
    sub_258AC1060(&v41 - v19);
    sub_2589FE5A4(v20, type metadata accessor for StateOfMindTimeline.Styles);
    v21 = 373.0;
  }

  else
  {
    v21 = *&a1;
  }

  sub_258AC1060(v20);
  sub_2589FE5A4(v20, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258AC1060(v18);
  sub_2589FE5A4(v18, type metadata accessor for StateOfMindTimeline.Styles);
  v22 = v21 + -40.0;
  sub_258AC1060(v15);
  sub_2589FE5A4(v15, type metadata accessor for StateOfMindTimeline.Styles);
  if (v21 + -40.0 > 373.0)
  {
    v22 = 373.0;
  }

  sub_258B009D4();
  sub_2589FE55C(&qword_27F96DAE0, MEMORY[0x277CDF7F8]);
  v23 = a5;
  v24 = sub_258B02DA4();
  v25 = MEMORY[0x277D84F90];
  if (!v24)
  {
    return v25;
  }

  v26 = v24;
  v46 = MEMORY[0x277D84F90];
  sub_258AA920C(0, v24 & ~(v24 >> 63), 0);
  v25 = v46;
  result = sub_258B02D94();
  if ((v26 & 0x8000000000000000) == 0)
  {
    v41 = v22;
    v28 = (v8 + 16);
    v29 = (v8 + 8);
    do
    {
      v30 = sub_258B02DD4();
      v32 = v42;
      v31 = v43;
      (*v28)(v42);
      v30(v45, 0);
      v45[0] = 0;
      v44 = 1;
      sub_258B00914();
      v34 = v33;
      v36 = v35;
      (*v29)(v32, v31);
      v46 = v25;
      v37 = v23;
      v39 = *(v25 + 16);
      v38 = *(v25 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_258AA920C((v38 > 1), v39 + 1, 1);
        v25 = v46;
      }

      *(v25 + 16) = v39 + 1;
      v40 = v25 + 16 * v39;
      *(v40 + 32) = v34;
      *(v40 + 40) = v36;
      sub_258B02DC4();
      --v26;
      v23 = v37;
    }

    while (v26);
    return v25;
  }

  __break(1u);
  return result;
}

double sub_2589FD5F8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = sub_2589FD23C(a1, a2 & 1, a3, a4 & 1, a5);
  v7 = v6;
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = (v5 + 40);
    v10 = 0.0;
    do
    {
      v11 = *v9;
      v9 += 2;
      v12 = v11;
      if (v10 <= v11)
      {
        v10 = v12;
      }

      --v8;
    }

    while (v8);
  }

  return v7;
}

uint64_t sub_2589FD66C(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, double a6)
{
  LODWORD(v94) = a4;
  v84 = sub_258B00F84();
  v12 = *(v84 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v84);
  v83 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FE24C(0, &qword_27F96CC08, MEMORY[0x277CDF458]);
  v90 = v15;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v89 = (&v79 - v17);
  v18 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v88 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_258B00934();
  v79 = *(v98 - 8);
  v21 = *(v79 + 64);
  MEMORY[0x28223BE20](v98);
  v97 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FE2AC();
  v93 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v96 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_258B009D4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FE364(0, &qword_27F96DAB0, MEMORY[0x277D84110]);
  v81 = v31;
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v79 - v33;
  sub_2589FE364(0, &qword_27F96DAD0, MEMORY[0x277D84118]);
  v95 = v35;
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v92 = &v79 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v80 = &v79 - v39;
  LOBYTE(v99[0]) = a2 & 1;
  v100 = v94 & 1;
  v91 = v6;
  v40 = sub_2589FD23C(a1, a2 & 1, a3, v94 & 1, a5);
  v41 = v40;
  v42 = *(v40 + 16);
  v94 = v26;
  if (v42)
  {
    v82 = v30;
    v86 = a5;
    v87 = v12;
    v43 = 0.0;
    v44 = 40;
    v45 = v42;
    do
    {
      if (v43 <= *(v40 + v44))
      {
        v43 = *(v40 + v44);
      }

      v44 += 16;
      --v45;
    }

    while (v45);
    v99[0] = MEMORY[0x277D84F90];
    sub_258AA922C(0, v42, 0);
    v46 = v99[0];
    v47 = *(v99[0] + 16);
    v48 = 32 * v47 + 56;
    v49 = 32;
    do
    {
      v50 = *(v41 + v49);
      v99[0] = v46;
      v51 = *(v46 + 24);
      v52 = v47 + 1;
      if (v47 >= v51 >> 1)
      {
        sub_258AA922C((v51 > 1), v47 + 1, 1);
        v46 = v99[0];
      }

      *(v46 + 16) = v52;
      v53 = (v46 + v48);
      *(v53 - 3) = v50;
      *(v53 - 16) = 0;
      *(v53 - 1) = v43;
      v48 += 32;
      v49 += 16;
      v47 = v52;
      *v53 = 0;
      --v42;
    }

    while (v42);

    v26 = v94;
    v12 = v87;
    a5 = v86;
    v30 = v82;
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  v54 = v80;
  (*(v27 + 16))(v80, a5, v26);
  v55 = v95;
  *(v54 + *(v95 + 52)) = v46;
  v56 = v92;
  sub_2589FE458(v54, v92, &qword_27F96DAD0, MEMORY[0x277D84118], sub_2589FE364);
  (*(v27 + 32))(v30, v56, v26);
  v57 = MEMORY[0x277CDF7F8];
  sub_2589FE55C(&qword_27F96DAC0, MEMORY[0x277CDF7F8]);
  sub_258B02C14();
  v58 = &v34[*(v81 + 52)];
  v95 = *(v56 + *(v55 + 52));
  *v58 = v95;
  *(v58 + 1) = 0;
  v92 = v58;
  sub_2589FE4C8();
  v60 = *(v59 + 36);
  v61 = sub_2589FE55C(&qword_27F96DAE0, v57);
  sub_258B02DB4();
  if (*&v34[v60] == v99[0])
  {
LABEL_22:
    v78 = *(v81 + 56);
    sub_2589FE668(v80, &qword_27F96DAD0, MEMORY[0x277D84118]);
    v34[v78] = 1;
    return sub_2589FE668(v34, &qword_27F96DAB0, MEMORY[0x277D84110]);
  }

  else
  {
    v62 = 0;
    v87 = (v79 + 16);
    v86 = (v79 + 32);
    v82 = (v12 + 1);
    v63 = (v95 + 56);
    v85 = v34;
    while (1)
    {
      v68 = sub_258B02DD4();
      (*v87)(v97);
      v68(v99, 0);
      result = sub_258B02DC4();
      v70 = *(v95 + 16);
      if (v62 == v70)
      {
        (*(v79 + 8))(v97, v98);
        goto LABEL_22;
      }

      if (v62 >= v70)
      {
        break;
      }

      v71 = v61;
      v72 = *(v63 - 3);
      v73 = *v63;
      v74 = *(v63 - 1);
      v75 = *(v63 - 16);
      *(v92 + 1) = v62 + 1;
      v76 = v96 + *(v93 + 48);
      (*v86)(v96, v97, v98);
      *v76 = v72;
      *(v76 + 8) = v75;
      *(v76 + 16) = v74;
      *(v76 + 24) = v73;
      sub_258B025B4();
      LOBYTE(v99[0]) = v75;
      v100 = v73;
      result = sub_258B00924();
      if (v75)
      {
        goto LABEL_24;
      }

      v77 = v89;
      sub_2589FE458(v91, v89, &qword_27F96CC08, MEMORY[0x277CDF458], sub_2589FE24C);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v67 = v88;
        sub_2589FE604(v77, v88);
      }

      else
      {
        v64 = *v77;
        sub_258B02E94();
        v65 = sub_258B01824();
        sub_258B00354();

        v66 = v83;
        sub_258B00F74();
        v67 = v88;
        swift_getAtKeyPath();

        (*v82)(v66, v84);
      }

      v61 = v71;
      sub_2589FE5A4(v67, type metadata accessor for StateOfMindTimeline.Styles);
      a6 = a6 + v72 + 10.0;
      sub_2589FE5A4(v96, sub_2589FE2AC);
      v34 = v85;
      sub_258B02DB4();
      v63 += 4;
      ++v62;
      if (*&v34[v60] == v99[0])
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

void (*sub_2589FE130(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_258B005E4();
  return sub_2589FE1B8;
}

void sub_2589FE1B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_2589FE24C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StateOfMindTimeline.Styles(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2589FE2AC()
{
  if (!qword_27F96DAA8)
  {
    sub_258B00934();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96DAA8);
    }
  }
}

void sub_2589FE314()
{
  if (!qword_27F96DAB8)
  {
    v0 = sub_258B02CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DAB8);
    }
  }
}

void sub_2589FE364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_258B009D4();
    sub_2589FE314();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = sub_2589FE55C(&qword_27F96DAC0, MEMORY[0x277CDF7F8]);
    v10[3] = sub_2589FE55C(&qword_27F96DAC8, sub_2589FE314);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2589FE458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_2589FE4C8()
{
  if (!qword_27F96DAD8)
  {
    sub_258B009D4();
    sub_2589FE55C(&qword_27F96DAE0, MEMORY[0x277CDF7F8]);
    v0 = sub_258B03284();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DAD8);
    }
  }
}

uint64_t sub_2589FE55C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2589FE5A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589FE604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMindTimeline.Styles(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589FE668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  sub_2589FE364(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for LabelsSelectionPhase_iOS()
{
  result = qword_27F96DAE8;
  if (!qword_27F96DAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589FE738()
{
  sub_2589E3D24();
  if (v0 <= 0x3F)
  {
    sub_2589C0D10();
    if (v1 <= 0x3F)
    {
      sub_2589FF830(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2589FF830(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2589FE878@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v72 = sub_258B006A4();
  v70 = *(v72 - 8);
  v2 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v69 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FF31C(0, &qword_27F96DAF8, sub_2589FF2D4, sub_2589FF3A0, MEMORY[0x277CE0330]);
  v65 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v60 - v6;
  sub_2589FF2D4(0);
  v66 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v60 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for LabelsSelectionPhaseContent();
  v10 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FF3A0();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589FF7E8(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v68 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v62 = *(v1 + 17);
  if ((v62 & 1) == 0)
  {
    sub_2589FF13C(v85);
    v21 = v85[0];
    v22 = v85[1];
    v23 = v85[2];
    v24 = v85[3];
    v25 = v85[4];
  }

  *v17 = v21;
  v17[1] = v22;
  v17[2] = v23;
  v17[3] = v24;
  v17[4] = v25;
  v26 = *(v14 + 36);
  v64 = v14;
  v27 = v17 + v26;
  v28 = v1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v29 = v79;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v30 = sub_258B02F94();
  v31 = *v1;
  type metadata accessor for StateOfMindEntryModel(0);
  sub_2589FF654(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);
  v63 = v28;
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v32 = v79;
  v33 = *(v1 + 16);
  v34 = v1[3];
  v35 = v1[4];
  *v12 = v29;
  *(v12 + 1) = v30;
  *(v12 + 2) = v32;
  *(v12 + 24) = *v80;
  v12[40] = v33;
  *(v12 + 6) = v34;
  *(v12 + 7) = v35;
  v36 = *(v61 + 36);
  *&v12[v36] = swift_getKeyPath();
  sub_2589FF830(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();

  *v27 = sub_258B01834();
  sub_2589FFC48();
  v38 = &v27[*(v37 + 44)];
  v39 = v64;
  sub_2589FF894(v12, v38);
  sub_258A001FC(v12, type metadata accessor for LabelsSelectionPhaseContent);
  v40 = *(v39 + 40);
  *(v17->n128_u64 + v40) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  if (v62)
  {
    *&v41 = COERCE_DOUBLE(sub_258B024F4());
    v43 = v42;
    sub_258A0032C(0, &qword_27F96CC10, MEMORY[0x277CE0F78], MEMORY[0x277D84560]);
    v44 = swift_allocObject();
    if (v33)
    {
      *(v44 + 16) = xmmword_258B2BE60;
      *(v44 + 32) = sub_258B01FF4();
      *(v44 + 40) = sub_258B02004();
    }

    else
    {
      *(v44 + 16) = xmmword_258B2C470;
      *(v44 + 32) = sub_258B01FF4();
    }

    MEMORY[0x259C92A80](v44);
    sub_258B009F4();
    v46 = sub_258B00B54();
    if (v33)
    {
      v47 = sub_258B018B4();
    }

    else
    {
      v47 = sub_258B018D4();
    }

    v48 = v47;
    v49 = v86;
    v51 = v87;
    v50 = v88;
    *&v74 = v41;
    *(&v74 + 1) = v43;
    v75 = v86;
    v76 = v87;
    *&v77 = v88;
    *(&v77 + 1) = v46;
    v78 = v47;
    v52 = v60;
    sub_258A0025C(v17, v60, sub_2589FF3A0);
    v53 = v52 + *(v66 + 36);
    v54 = v77;
    *(v53 + 32) = v76;
    *(v53 + 48) = v54;
    *(v53 + 64) = v78;
    v55 = v75;
    *v53 = v74;
    *(v53 + 16) = v55;
    v79 = *&v41;
    *v80 = v43;
    *&v80[8] = v49;
    v81 = v51;
    v82 = v50;
    v83 = v46;
    v84 = v48;
    sub_258A002C4(&v74, &v73, sub_2589FF69C);
    sub_258A001FC(&v79, sub_2589FF69C);
    sub_258A0025C(v52, v67, sub_2589FF2D4);
    swift_storeEnumTagMultiPayload();
    sub_2589FFD08();
    sub_2589FF654(&qword_27F96DB88, sub_2589FF3A0);
    v45 = v68;
    sub_258B012A4();
    sub_258A0019C(v52, sub_2589FF2D4);
  }

  else
  {
    sub_258A0025C(v17, v67, sub_2589FF3A0);
    swift_storeEnumTagMultiPayload();
    sub_2589FFD08();
    sub_2589FF654(&qword_27F96DB88, sub_2589FF3A0);
    v45 = v68;
    sub_258B012A4();
  }

  sub_258A0019C(v17, sub_2589FF3A0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v56 = v79;
  v57 = v1 + *(type metadata accessor for LabelsSelectionPhase_iOS() + 36);
  v58 = v69;
  sub_258AC14E8(v69);
  sub_258A9A8D0(v58, v45, v71, v56);
  (*(v70 + 8))(v58, v72);
  return sub_258A0019C(v45, sub_2589FF7E8);
}

__n128 sub_2589FF13C@<Q0>(__n128 *a1@<X8>)
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v3 = sub_258AFFD94();
  v5 = v4;
  v6 = v1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v8 = v1[3];
  v7 = v1[4];
  sub_258A0032C(0, &qword_27F96D9F0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);

  sub_258B02354();
  result = v10;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v5;
  a1[1] = v10;
  a1[2].n128_u64[0] = v11;
  a1[2].n128_u8[8] = v12;
  a1[3].n128_u64[0] = 0x747475427478654ELL;
  a1[3].n128_u64[1] = 0xEA00000000006E6FLL;
  a1[4].n128_u64[0] = v8;
  a1[4].n128_u64[1] = v7;
  return result;
}

void sub_2589FF31C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_2589FF3A0()
{
  if (!qword_27F96DB08)
  {
    sub_2589FF434();
    sub_2589FF654(&qword_27F96DB40, sub_2589FF434);
    v0 = type metadata accessor for StateOfMindEntryPhase_iOS();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DB08);
    }
  }
}

void sub_2589FF434()
{
  if (!qword_27F96DB10)
  {
    sub_2589FF4C8();
    sub_2589FF654(&qword_27F96DB38, sub_2589FF4C8);
    v0 = sub_258B00844();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DB10);
    }
  }
}

void sub_2589FF4C8()
{
  if (!qword_27F96DB18)
  {
    sub_258A00480(255, &qword_27F96DB20, type metadata accessor for LabelsSelectionPhaseContent, sub_2589FF550);
    v0 = sub_258B02574();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DB18);
    }
  }
}

void sub_2589FF550()
{
  if (!qword_27F96DB28)
  {
    type metadata accessor for LabelsSelectionPhaseContent();
    sub_2589D5AFC();
    sub_2589FF654(&qword_27F96DB30, type metadata accessor for LabelsSelectionPhaseContent);
    sub_2589FF654(&qword_27F96D030, sub_2589D5AFC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96DB28);
    }
  }
}

uint64_t sub_2589FF654(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2589FF6BC()
{
  if (!qword_27F96DB50)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DB50);
    }
  }
}

unint64_t sub_2589FF714()
{
  result = qword_27F96DB58;
  if (!qword_27F96DB58)
  {
    sub_2589FF6BC();
    sub_2589FF794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DB58);
  }

  return result;
}

unint64_t sub_2589FF794()
{
  result = qword_27F96DB60;
  if (!qword_27F96DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DB60);
  }

  return result;
}

void sub_2589FF830(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2589FF894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v2 = type metadata accessor for LabelsSelectionPhaseContent();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D5AFC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589FF550();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = *MEMORY[0x277CDF9A8];
  v20 = sub_258B00AA4();
  (*(*(v20 - 8) + 104))(v9, v19, v20);
  sub_2589FF654(&qword_27F96D048, MEMORY[0x277CDFA28]);
  result = sub_258B02AA4();
  if (result)
  {
    sub_2589FF654(&qword_27F96DB30, type metadata accessor for LabelsSelectionPhaseContent);
    sub_2589FF654(&qword_27F96D030, sub_2589D5AFC);
    v22 = v27;
    sub_258B01C84();
    sub_258A001FC(v9, sub_2589D5AFC);
    sub_258A002C4(v22, v5, type metadata accessor for LabelsSelectionPhaseContent);
    v23 = v12[2];
    v23(v16, v18, v11);
    v24 = v28;
    sub_258A002C4(v5, v28, type metadata accessor for LabelsSelectionPhaseContent);
    sub_258A00480(0, &qword_27F96DB20, type metadata accessor for LabelsSelectionPhaseContent, sub_2589FF550);
    v23((v24 + *(v25 + 48)), v16, v11);
    v26 = v12[1];
    v26(v18, v11);
    v26(v16, v11);
    return sub_258A001FC(v5, type metadata accessor for LabelsSelectionPhaseContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2589FFC48()
{
  if (!qword_27F96DB70)
  {
    sub_2589FF4C8();
    sub_2589FFCB4();
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DB70);
    }
  }
}

unint64_t sub_2589FFCB4()
{
  result = qword_27F96DB78;
  if (!qword_27F96DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DB78);
  }

  return result;
}

unint64_t sub_2589FFD08()
{
  result = qword_27F96DB80;
  if (!qword_27F96DB80)
  {
    sub_2589FF2D4(255);
    sub_2589FF654(&qword_27F96DB88, sub_2589FF3A0);
    sub_2589FF654(&qword_27F96DB90, sub_2589FF69C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DB80);
  }

  return result;
}

uint64_t sub_2589FFDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v2 = type metadata accessor for DomainsSelectionPhaseContent();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D5AFC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0037C();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = *MEMORY[0x277CDF9A8];
  v20 = sub_258B00AA4();
  (*(*(v20 - 8) + 104))(v9, v19, v20);
  sub_2589FF654(&qword_27F96D048, MEMORY[0x277CDFA28]);
  result = sub_258B02AA4();
  if (result)
  {
    sub_2589FF654(&qword_27F96DBA0, type metadata accessor for DomainsSelectionPhaseContent);
    sub_2589FF654(&qword_27F96D030, sub_2589D5AFC);
    v22 = v27;
    sub_258B01C84();
    sub_258A001FC(v9, sub_2589D5AFC);
    sub_258A002C4(v22, v5, type metadata accessor for DomainsSelectionPhaseContent);
    v23 = v12[2];
    v23(v16, v18, v11);
    v24 = v28;
    sub_258A002C4(v5, v28, type metadata accessor for DomainsSelectionPhaseContent);
    sub_258A00480(0, &qword_27F96DBA8, type metadata accessor for DomainsSelectionPhaseContent, sub_258A0037C);
    v23((v24 + *(v25 + 48)), v16, v11);
    v26 = v12[1];
    v26(v18, v11);
    v26(v16, v11);
    return sub_258A001FC(v5, type metadata accessor for DomainsSelectionPhaseContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258A0019C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A001FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A0025C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A002C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A0032C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_258A0037C()
{
  if (!qword_27F96DB98)
  {
    type metadata accessor for DomainsSelectionPhaseContent();
    sub_2589D5AFC();
    sub_2589FF654(&qword_27F96DBA0, type metadata accessor for DomainsSelectionPhaseContent);
    sub_2589FF654(&qword_27F96D030, sub_2589D5AFC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96DB98);
    }
  }
}

void sub_258A00480(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_258A004FC()
{
  result = qword_27F96DBB0;
  if (!qword_27F96DBB0)
  {
    sub_2589FF31C(255, &qword_27F96DBB8, sub_2589FF7E8, sub_258A005F0, MEMORY[0x277CDFAB8]);
    sub_258A0067C();
    sub_2589FF654(qword_27F96DBD0, sub_258A005F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DBB0);
  }

  return result;
}

void sub_258A00610(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_2589FF6BC();
    v7 = v6;
    v8 = sub_2589FF714();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_258A0067C()
{
  result = qword_27F96DBC8;
  if (!qword_27F96DBC8)
  {
    sub_2589FF7E8(255);
    sub_2589FFD08();
    sub_2589FF654(&qword_27F96DB88, sub_2589FF3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DBC8);
  }

  return result;
}

void sub_258A00734(uint64_t a1)
{
  sub_258A00D6C(319, &qword_27F96DC58, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    sub_258A00D14();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        v6 = *(a1 + 24);
        swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          sub_258A00D6C(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_258A00858(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 40) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = a2 - v13;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v14);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  v24 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  if (v12 > 0x7FFFFFFE)
  {
    v26 = (v24 + v9 + 16) & ~v9;
    if (v5 == v13)
    {
      return (*(v4 + 48))(v26);
    }

    else
    {
      return (*(v7 + 48))((v26 + v10 + v11) & ~v11, v8, v6);
    }
  }

  else
  {
    v25 = *v24;
    if (*v24 >= 0xFFFFFFFF)
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
}

unsigned int *sub_258A00A58(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v5 + 80);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= *(v7 + 84))
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((v11 + ((v9 + v10 + ((v8 + 40) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = a3 - v13;
    if (((v11 + ((v9 + v10 + ((v8 + 40) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(result + v14) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v14) = 0;
      }

      else if (v18)
      {
        *(result + v14) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        v23 = ((result + 31) & 0xFFFFFFFFFFFFFFF8);
        if (v12 > 0x7FFFFFFE)
        {
          v24 = (v23 + v8 + 16) & ~v8;
          if (v6 == v13)
          {
            v25 = *(v5 + 56);

            return v25(v24);
          }

          else
          {
            v26 = *(v7 + 56);
            v27 = (v24 + v9 + v10) & ~v10;

            return v26(v27);
          }
        }

        else if (a2 > 0x7FFFFFFE)
        {
          *v23 = 0;
          v23[1] = 0;
          *v23 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v23 = a2;
        }

        return result;
      }

      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  if (((v11 + ((v9 + v10 + ((v8 + 40) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((v11 + ((v9 + v10 + ((v8 + 40) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    v22 = result;
    bzero(result, ((v11 + ((v9 + v10 + ((v8 + 40) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v22;
    *v22 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(result + v14) = v20;
    }

    else
    {
      *(result + v14) = v20;
    }
  }

  else if (v18)
  {
    *(result + v14) = v20;
  }

  return result;
}

void sub_258A00D14()
{
  if (!qword_27F96DC60)
  {
    sub_2589C0D10();
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DC60);
    }
  }
}

void sub_258A00D6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A00DBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258A00E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20[0] = a6;
  v20[1] = a7;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_258B007B4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  (*(v13 + 16))(v16, v7, a3);
  sub_258B007C4();
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = v20[0];
  v20[8] = a1;
  v20[9] = a2;
  swift_getWitnessTable();
  return sub_258B00984();
}

uint64_t sub_258A00FA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v82 = *(a1 - 1);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](a1);
  v81 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A023F4(255, &qword_27F96DC68, sub_258A023A0, &_s21UnlimitedHeightVStackVN, MEMORY[0x277CDF4F8]);
  v78 = a1[2];
  sub_258B00B04();
  sub_258A023F4(255, &qword_27F96DC78, sub_2589D2E7C, MEMORY[0x277D85048], MEMORY[0x277CE06A0]);
  sub_258B00B04();
  sub_258A0245C(&qword_27F96DC80);
  v4 = sub_258B00974();
  v79 = *(v4 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](v4);
  v74 = &v59 - v6;
  v59 = v4;
  v7 = sub_258B00B04();
  v77 = *(v7 - 8);
  v8 = *(v77 + 64);
  MEMORY[0x28223BE20](v7);
  v73 = &v59 - v9;
  sub_258A023F4(255, &qword_27F96DC88, sub_2589E0E14, MEMORY[0x277CE14A8], MEMORY[0x277CDF4E0]);
  v60 = v7;
  v10 = sub_258B00B04();
  v75 = *(v10 - 8);
  v11 = *(v75 + 64);
  MEMORY[0x28223BE20](v10);
  v70 = &v59 - v12;
  v67 = a1[3];
  v13 = sub_258B030C4();
  v66 = a1[5];
  v14 = a1;
  v69 = a1;
  v108 = v66;
  v71 = v13;
  WitnessTable = swift_getWitnessTable();
  sub_258B00CA4();
  v62 = v10;
  v15 = sub_258B00B04();
  v76 = *(v15 - 8);
  v16 = *(v76 + 64);
  MEMORY[0x28223BE20](v15);
  v68 = &v59 - v17;
  v18 = sub_258A0245C(&qword_27F96DC90);
  v106 = v14[4];
  v19 = v106;
  v107 = MEMORY[0x277CDFC60];
  v20 = swift_getWitnessTable();
  v21 = sub_258A024D8();
  v104 = v20;
  v105 = v21;
  v22 = swift_getWitnessTable();
  v102 = v18;
  v103 = v22;
  v100 = swift_getWitnessTable();
  v101 = MEMORY[0x277CDF678];
  v23 = swift_getWitnessTable();
  v24 = sub_258A02568();
  v98 = v23;
  v99 = v24;
  v25 = swift_getWitnessTable();
  v61 = v25;
  v26 = swift_getWitnessTable();
  v96 = v25;
  v97 = v26;
  v63 = v15;
  v64 = swift_getWitnessTable();
  v94 = v15;
  v95 = v64;
  v65 = MEMORY[0x277CE0CA8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = *(OpaqueTypeMetadata2 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v32 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v59 - v33;
  v35 = swift_allocObject();
  *&v36 = v78;
  *(&v36 + 1) = v67;
  v86 = v36;
  *&v37 = v19;
  *(&v37 + 1) = v66;
  v85 = v37;
  *(v35 + 16) = v36;
  *(v35 + 32) = v37;
  v91 = v36;
  v92 = v37;
  v38 = v80;
  v93 = v80;
  v39 = v74;
  sub_258A01980(sub_258A025F8, v90, v74);

  v40 = *v38;
  sub_258B024F4();
  v41 = v73;
  v42 = v59;
  sub_258B01E74();
  (*(v79 + 8))(v39, v42);
  v43 = v70;
  v44 = v60;
  sub_258B01EA4();
  (*(v77 + 8))(v41, v44);
  sub_258B024E4();
  v88 = v85;
  v87 = v86;
  v89 = v38;
  v45 = v68;
  v46 = v62;
  sub_258B01EC4();
  (*(v75 + 8))(v43, v46);
  v47 = v82;
  v48 = v81;
  v49 = v38;
  v50 = v69;
  (*(v82 + 16))(v81, v49, v69);
  v51 = (*(v47 + 80) + 48) & ~*(v47 + 80);
  v52 = swift_allocObject();
  v53 = v85;
  *(v52 + 16) = v86;
  *(v52 + 32) = v53;
  (*(v47 + 32))(v52 + v51, v48, v50);
  v54 = v63;
  v55 = v64;
  sub_258B01C34();

  (*(v76 + 8))(v45, v54);
  v94 = v54;
  v95 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_258A4DFD4(v32, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v57 = *(v28 + 8);
  v57(v32, OpaqueTypeMetadata2);
  sub_258A4DFD4(v34, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v57)(v34, OpaqueTypeMetadata2);
}

uint64_t sub_258A01980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_258B00B04();
  sub_258A023F4(255, &qword_27F96DC78, sub_2589D2E7C, MEMORY[0x277D85048], MEMORY[0x277CE06A0]);
  v6 = sub_258B00B04();
  v7 = sub_258A023A0();
  swift_getWitnessTable();
  sub_258A024D8();
  WitnessTable = swift_getWitnessTable();
  return sub_258A00E00(a1, a2, &_s21UnlimitedHeightVStackVN, v6, v7, WitnessTable, a3);
}

uint64_t sub_258A01AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a3;
  v45 = a5;
  v40 = a4;
  v48 = a6;
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v8 = type metadata accessor for UnlimitedHeightVStackWithFooter();
  v9 = *(v8 - 8);
  v42 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v41 = &v36 - v10;
  v37 = a2;
  v11 = sub_258B00B04();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v38 = &v36 - v13;
  sub_258A023F4(255, &qword_27F96DC78, sub_2589D2E7C, MEMORY[0x277D85048], MEMORY[0x277CE06A0]);
  v14 = sub_258B00B04();
  v46 = *(v14 - 8);
  v15 = *(v46 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v39 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v43 = &v36 - v18;
  v19 = *(v8 + 60);
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  sub_258B024F4();
  v22 = v40;
  v23 = v38;
  sub_258B01E84();
  v24 = v41;
  (*(v9 + 16))(v41, a1, v8);
  v25 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v26 = swift_allocObject();
  v28 = v44;
  v27 = v45;
  *(v26 + 2) = v37;
  *(v26 + 3) = v28;
  *(v26 + 4) = v22;
  *(v26 + 5) = v27;
  (*(v9 + 32))(&v26[v25], v24, v8);
  v51 = v22;
  v52 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  sub_2589D2E7C();
  v30 = v39;
  sub_258B01CD4();

  (*(v47 + 8))(v23, v11);
  v31 = sub_258A024D8();
  v49 = WitnessTable;
  v50 = v31;
  v32 = swift_getWitnessTable();
  v33 = v43;
  sub_258A4DFD4(v30, v14, v32);
  v34 = *(v46 + 8);
  v34(v30, v14);
  sub_258A4DFD4(v33, v14, v32);
  return (v34)(v33, v14);
}

uint64_t sub_258A01F10@<X0>(void *a1@<X8>)
{
  result = sub_258B008C4();
  *a1 = v3;
  return result;
}

uint64_t sub_258A01F3C(double *a1, double *a2)
{
  v2 = *a2 < *a1;
  v3 = a2 + *(type metadata accessor for UnlimitedHeightVStackWithFooter() + 68);
  v5 = *v3;
  v6 = *(v3 + 1);
  sub_258A00D6C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_258A01FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a4;
  v37 = a6;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v16 = sub_258B030C4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  v40 = a2;
  v41 = a3;
  v42 = v36;
  v43 = a5;
  v24 = type metadata accessor for UnlimitedHeightVStackWithFooter();
  v25 = *(v24 + 68);
  v36 = a1;
  v26 = (a1 + v25);
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v40) = v27;
  v41 = v28;
  sub_258A00D6C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02124();
  if (v39 == 1)
  {
    sub_258A4DFD4(v36 + *(v24 + 64), a3, a5);
    v29 = v35;
    sub_258A4DFD4(v15, a3, a5);
    (*(v10 + 8))(v15, a3);
    (*(v10 + 32))(v21, v29, a3);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v10 + 56))(v21, v30, 1, a3);
  sub_258A4B214(v21, v23);
  v31 = *(v17 + 8);
  v31(v21, v16);
  v38 = a5;
  WitnessTable = swift_getWitnessTable();
  sub_258A4DFD4(v23, v16, WitnessTable);
  return (v31)(v23, v16);
}

uint64_t sub_258A022F0(uint64_t a1)
{
  v2 = (a1 + *(type metadata accessor for UnlimitedHeightVStackWithFooter() + 68));
  v7 = *v2;
  v8 = *(v2 + 1);
  sub_258A00D6C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  result = sub_258B02124();
  if (v6 == 1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = *(a1 + 32);
      return v4(result);
    }
  }

  return result;
}

unint64_t sub_258A023A0()
{
  result = qword_27F96DC70;
  if (!qword_27F96DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DC70);
  }

  return result;
}

void sub_258A023F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_258A0245C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_258A023F4(255, &qword_27F96DC68, sub_258A023A0, &_s21UnlimitedHeightVStackVN, MEMORY[0x277CDF4F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A024D8()
{
  result = qword_27F96DC98;
  if (!qword_27F96DC98)
  {
    sub_258A023F4(255, &qword_27F96DC78, sub_2589D2E7C, MEMORY[0x277D85048], MEMORY[0x277CE06A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DC98);
  }

  return result;
}

unint64_t sub_258A02568()
{
  result = qword_27F96DCA0;
  if (!qword_27F96DCA0)
  {
    sub_258A023F4(255, &qword_27F96DC88, sub_2589E0E14, MEMORY[0x277CE14A8], MEMORY[0x277CDF4E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DCA0);
  }

  return result;
}

uint64_t sub_258A02640()
{
  v1 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *(type metadata accessor for UnlimitedHeightVStackWithFooter() - 8);
  v3 = v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  return sub_258A022F0(v3);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 40);
  v2 = type metadata accessor for UnlimitedHeightVStackWithFooter();
  v3 = *(*(v2 - 1) + 64);
  v4 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));
  if (*(v4 + 24))
  {
    v5 = *(v4 + 32);
  }

  (*(*(v1 - 8) + 8))(v4 + v2[15], v1);
  (*(*(v8 - 8) + 8))(v4 + v2[16]);
  v6 = *(v4 + v2[17] + 8);

  return swift_deallocObject();
}

uint64_t sub_258A0283C(double *a1)
{
  v3 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v4 = *(type metadata accessor for UnlimitedHeightVStackWithFooter() - 8);
  v5 = (v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80)));

  return sub_258A01F3C(a1, v5);
}

uint64_t sub_258A028E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v18 - v14;
  v13();
  sub_258A4DFD4(v12, a4, a6);
  v16 = *(v8 + 8);
  v16(v12, a4);
  sub_258A4DFD4(v15, a4, a6);
  return (v16)(v15, a4);
}

uint64_t type metadata accessor for NotificationsSetupPhase_iOS()
{
  result = qword_27F96DCB0;
  if (!qword_27F96DCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A02AA0()
{
  sub_2589E3D24();
  if (v0 <= 0x3F)
  {
    sub_2589C0D10();
    if (v1 <= 0x3F)
    {
      sub_258A04844(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_258A04844(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_258A02BD0@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_258A03E2C(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A03E04(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A03D78(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B024F4();
  sub_258B00C94();
  sub_258A050BC(v2, v8, type metadata accessor for NotificationsSetupPhaseContent);
  v19 = &v8[*(v5 + 44)];
  v20 = v46[5];
  *(v19 + 4) = v46[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v46[6];
  v21 = v46[1];
  *v19 = v46[0];
  *(v19 + 1) = v21;
  v22 = v46[3];
  *(v19 + 2) = v46[2];
  *(v19 + 3) = v22;
  LOBYTE(v2) = sub_258B01864();
  sub_258B00654();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_258A05124(v8, v13, sub_258A03E2C);
  v31 = &v13[*(v10 + 44)];
  *v31 = v2;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  LOBYTE(v8) = sub_258B01894();
  sub_258B00654();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_258A05124(v13, v18, sub_258A03E04);
  v40 = &v18[*(v15 + 44)];
  *v40 = v8;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  sub_258B024F4();
  sub_258B00C94();
  sub_258A05124(v18, a1, sub_258A03D78);
  sub_258A03D50(0);
  v42 = a1 + *(v41 + 36);
  v43 = v46[12];
  *(v42 + 64) = v46[11];
  *(v42 + 80) = v43;
  *(v42 + 96) = v46[13];
  v44 = v46[8];
  *v42 = v46[7];
  *(v42 + 16) = v44;
  result = v46[10];
  *(v42 + 32) = v46[9];
  *(v42 + 48) = result;
  return result;
}

__n128 sub_258A02F04@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_258A04788(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0506C(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A05094(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B024F4();
  sub_258B00C94();
  sub_258A050BC(v2, v8, sub_258A047B0);
  v19 = &v8[*(v5 + 44)];
  v20 = v46[5];
  *(v19 + 4) = v46[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v46[6];
  v21 = v46[1];
  *v19 = v46[0];
  *(v19 + 1) = v21;
  v22 = v46[3];
  *(v19 + 2) = v46[2];
  *(v19 + 3) = v22;
  LOBYTE(v2) = sub_258B01864();
  sub_258B00654();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_258A05124(v8, v13, sub_258A04788);
  v31 = &v13[*(v10 + 44)];
  *v31 = v2;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  LOBYTE(v8) = sub_258B01894();
  sub_258B00654();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_258A05124(v13, v18, sub_258A0506C);
  v40 = &v18[*(v15 + 44)];
  *v40 = v8;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  sub_258B024F4();
  sub_258B00C94();
  sub_258A05124(v18, a1, sub_258A05094);
  sub_258A03DA0(0, &qword_27F96DE38, sub_258A05094);
  v42 = a1 + *(v41 + 36);
  v43 = v46[12];
  *(v42 + 64) = v46[11];
  *(v42 + 80) = v43;
  *(v42 + 96) = v46[13];
  v44 = v46[8];
  *v42 = v46[7];
  *(v42 + 16) = v44;
  result = v46[10];
  *(v42 + 32) = v46[9];
  *(v42 + 48) = result;
  return result;
}

uint64_t sub_258A0325C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v58 = a3;
  v59 = sub_258B006A4();
  v57 = *(v59 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B024B4();
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NotificationsSetupPhase_iOS();
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = type metadata accessor for NotificationsSetupPhaseContent();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A03D50(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v50 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A03E54();
  v22 = (v21 - 8);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  v26 = *(a2 + 8);
  sub_258A050BC(a2, &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotificationsSetupPhase_iOS);
  v27 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v28 = swift_allocObject();
  sub_258A05124(&v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for NotificationsSetupPhase_iOS);
  v29 = *(v14 + 32);
  v30 = sub_258B008E4();
  (*(*(v30 - 8) + 16))(v17 + v29, v52, v30);
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258A04DE8(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);
  v51 = v26;

  *v17 = sub_258B00A24();
  v17[1] = v31;
  v17[2] = sub_258A0518C;
  v17[3] = v28;
  v32 = *(v14 + 36);
  *(v17 + v32) = swift_getKeyPath();
  sub_258A04844(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v63 = type metadata accessor for NotificationsSetupPhaseSpecs();
  v64 = &off_2869D92E8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v61);
  v34 = v49;
  v35 = v49 + *(v10 + 32);
  sub_258AC1B5C(boxed_opaque_existential_1);
  v36 = v50;
  sub_258A02BD0(v50);
  sub_258A0442C(v17, type metadata accessor for NotificationsSetupPhaseContent);
  __swift_destroy_boxed_opaque_existential_1(&v61);
  v37 = v53;
  sub_258B024A4();
  v39 = v54;
  v38 = v55;
  (*(v54 + 16))(&v25[v22[19]], v37, v55);
  *v25 = 1;
  sub_258A050BC(v36, &v25[v22[20]], sub_258A03D50);
  v40 = v34;
  sub_258A0388C(v34, &v25[v22[21]]);
  v41 = &v25[v22[22]];
  v60 = 0;
  sub_258B02114();
  v42 = v62;
  *v41 = v61;
  *(v41 + 1) = v42;
  v43 = &v25[v22[23]];
  v60 = 0;
  sub_258B02114();
  (*(v39 + 8))(v37, v38);
  v44 = v62;
  *v43 = v61;
  *(v43 + 1) = v44;
  sub_258A0442C(v36, sub_258A03D50);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v45 = v61;
  v46 = v40 + *(v10 + 36);
  v47 = v56;
  sub_258AC14E8(v56);
  sub_258A9A904(v47, v25, v58, v45);
  (*(v57 + 8))(v47, v59);
  return sub_258A0442C(v25, sub_258A03E54);
}

uint64_t sub_258A0388C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotificationsSetupPhase_iOS();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-v9];
  v11 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v12 = v25;
  sub_258A050BC(a1, v10, type metadata accessor for NotificationsSetupPhase_iOS);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_258A05124(v10, v14 + v13, type metadata accessor for NotificationsSetupPhase_iOS);
  sub_258A050BC(a1, v8, type metadata accessor for NotificationsSetupPhase_iOS);
  v15 = swift_allocObject();
  sub_258A05124(v8, v15 + v13, type metadata accessor for NotificationsSetupPhase_iOS);
  *a2 = v12;
  *(a2 + 8) = sub_258A0448C;
  *(a2 + 16) = v14;
  *(a2 + 24) = [objc_allocWithZone(MEMORY[0x277D280B8]) init];
  *(a2 + 32) = sub_258A044F4;
  *(a2 + 40) = v15;
  v24 = 0;
  sub_258B02114();
  v16 = v26;
  *(a2 + 48) = v25;
  *(a2 + 56) = v16;
  v24 = 2;
  sub_258A0456C();
  sub_258B02114();
  v17 = v26;
  *(a2 + 64) = v25;
  *(a2 + 72) = v17;
  v18 = *(type metadata accessor for NotificationsNextButtonView(0) + 40);
  *(a2 + v18) = swift_getKeyPath();
  v19 = MEMORY[0x277CDF458];
  sub_258A04844(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_258A03F68();
  v21 = *(v20 + 36);
  *(a2 + v21) = swift_getKeyPath();
  sub_258A04844(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, v19);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_258A03BBC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_258A050BC(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotificationsSetupPhase_iOS);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_258A05124(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for NotificationsSetupPhase_iOS);
  *a2 = sub_258A03CD0;
  a2[1] = v7;
  return result;
}

uint64_t sub_258A03CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NotificationsSetupPhase_iOS() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_258A0325C(a1, v6, a2);
}

void sub_258A03DA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A03E54()
{
  if (!qword_27F96DCE0)
  {
    sub_258A03D50(255);
    sub_258A03F68();
    sub_258B024B4();
    sub_258A04038(&qword_27F96DCF8, sub_258A03D50, sub_258A03FFC);
    sub_258A04DE8(&qword_27F96DD20, sub_258A03F68);
    v0 = type metadata accessor for ScrollableWithPinnedFooter();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DCE0);
    }
  }
}

void sub_258A03F68()
{
  if (!qword_27F96DCE8)
  {
    type metadata accessor for NotificationsNextButtonView(255);
    sub_258A04DE8(&qword_27F96DCF0, type metadata accessor for NotificationsNextButtonView);
    v0 = type metadata accessor for StateOfMindEntryButtonTray();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DCE8);
    }
  }
}

uint64_t sub_258A04038(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A040F4()
{
  result = qword_27F96DD10;
  if (!qword_27F96DD10)
  {
    sub_258A03E2C(255);
    sub_258A04DE8(&qword_27F96DD18, type metadata accessor for NotificationsSetupPhaseContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DD10);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for NotificationsSetupPhase_iOS();
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = (v3 + *(v1 + 24));
  sub_258A04844(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_258B01504();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v6, 1, v7))
    {
      (*(v8 + 8))(v6, v7);
    }

    v9 = *(type metadata accessor for NotificationsSetupPhaseSpecs() + 20);
    v10 = sub_258B00AA4();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
    v11 = *v6;
  }

  v12 = *(v1 + 28);
  sub_258A04844(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B006A4();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
    v14 = *(v3 + v12);
  }

  return swift_deallocObject();
}

uint64_t sub_258A0442C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A04490()
{
  v1 = *(type metadata accessor for NotificationsSetupPhase_iOS() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 24);
  return (*(v2 + 16))();
}

uint64_t sub_258A044F4(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for NotificationsSetupPhase_iOS() - 8);
  v6 = *(v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 8);
  return sub_258A16CF4(a1, a2);
}

void sub_258A0456C()
{
  if (!qword_27F96DD28)
  {
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DD28);
    }
  }
}

void sub_258A045BC()
{
  if (!qword_27F96DD38)
  {
    sub_258A04F38(255, &qword_27F96DD40, sub_258A03E54, sub_258A005F0, MEMORY[0x277CDFAB8]);
    sub_258A04664();
    v0 = sub_258B009C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DD38);
    }
  }
}

unint64_t sub_258A04664()
{
  result = qword_27F96DD48;
  if (!qword_27F96DD48)
  {
    sub_258A04F38(255, &qword_27F96DD40, sub_258A03E54, sub_258A005F0, MEMORY[0x277CDFAB8]);
    sub_258A04DE8(&qword_27F96DD50, sub_258A03E54);
    sub_258A04DE8(qword_27F96DBD0, sub_258A005F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DD48);
  }

  return result;
}

void sub_258A047B0()
{
  if (!qword_27F96DD60)
  {
    sub_258A04844(255, &qword_27F96DD68, sub_258A048A8, MEMORY[0x277CE14B8]);
    sub_258A04FE4();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DD60);
    }
  }
}

void sub_258A04844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A048A8()
{
  if (!qword_27F96DD70)
  {
    sub_258A04EB0(255, &qword_27F96DD78, &qword_27F96DD80);
    sub_258A04F38(255, &qword_27F96DD90, sub_258A04A70, sub_258A04D54, MEMORY[0x277CDFAB8]);
    sub_258A04E30();
    sub_258A049DC(255, &qword_27F96DE08, &qword_27F96DE10, sub_258A04FBC);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96DD70);
    }
  }
}

void sub_258A049DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_258A04F38(255, a3, a4, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258A04A70()
{
  if (!qword_27F96DD98)
  {
    sub_258A04F38(255, &qword_27F96DDA0, sub_258A04B14, sub_258A04CCC, MEMORY[0x277CE0338]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DD98);
    }
  }
}

void sub_258A04BAC()
{
  if (!qword_27F96D900)
  {
    sub_2589BF7E8(255, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D900);
    }
  }
}

void sub_258A04C38()
{
  if (!qword_27F96DDC0)
  {
    type metadata accessor for CGRect(255);
    sub_258A04DE8(&qword_27F96DDC8, type metadata accessor for CGRect);
    v0 = sub_258B01584();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DDC0);
    }
  }
}

void sub_258A04CF4()
{
  if (!qword_27F96DDD8)
  {
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DDD8);
    }
  }
}

void sub_258A04D54()
{
  if (!qword_27F96DDE0)
  {
    type metadata accessor for CGSize(255);
    sub_258A04DE8(&qword_27F96DDE8, type metadata accessor for CGSize);
    v0 = sub_258B01584();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DDE0);
    }
  }
}

uint64_t sub_258A04DE8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A04E30()
{
  if (!qword_27F96DDF0)
  {
    sub_258A04EB0(255, &qword_27F96DDF8, &qword_27F96DE00);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DDF0);
    }
  }
}

void sub_258A04EB0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_258A049DC(255, a3, &qword_27F96DD88, type metadata accessor for ValenceSelectionTitleText);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A04F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_258A04FE4()
{
  result = qword_27F96DE20;
  if (!qword_27F96DE20)
  {
    sub_258A04844(255, &qword_27F96DD68, sub_258A048A8, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DE20);
  }

  return result;
}

uint64_t sub_258A050BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A05124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AssessmentRiskInformationalView.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

uint64_t sub_258A0521C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDF3E0];
  sub_258A07268(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - v11);
  v13 = type metadata accessor for AssessmentRiskInformationalView();
  sub_258A0883C(v1 + *(v13 + 20), v12, &qword_27F96C908, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_258B006A4();
    return (*(*(v14 - 8) + 32))(a1, v12, v14);
  }

  else
  {
    v16 = *v12;
    sub_258B02E94();
    v17 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double AssessmentRiskInformationalView.init(configuration:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for AssessmentRiskInformationalView();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  v6 = MEMORY[0x277CDF458];
  sub_258A07268(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v7 = v4[6];
  *(a2 + v7) = swift_getKeyPath();
  sub_258A07268(0, &qword_27F96C968, MEMORY[0x277CDD848], v6);
  swift_storeEnumTagMultiPayload();
  v8 = v4[7];
  *(a2 + v8) = swift_getKeyPath();
  sub_258A07268(0, &qword_27F96DE40, MEMORY[0x277CDFA28], v6);
  swift_storeEnumTagMultiPayload();
  v9 = v4[8];
  *(a2 + v9) = swift_getKeyPath();
  sub_258A07268(0, &qword_27F96DE48, sub_258A07454, v6);
  swift_storeEnumTagMultiPayload();
  sub_258AC9984(v12);
  v10 = v12[1];
  *a2 = v12[0];
  *(a2 + 16) = v10;
  result = *&v13;
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  return result;
}

uint64_t type metadata accessor for AssessmentRiskInformationalView()
{
  result = qword_27F96DF08;
  if (!qword_27F96DF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssessmentRiskInformationalView.body.getter()
{
  sub_258A07490();
  sub_258A07C50();
  return sub_258B00B24();
}

void sub_258A056C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_258B006A4();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v70 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v69 = &v58 - v7;
  v64 = sub_258B00FB4();
  v62 = *(v64 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A07860();
  v12 = v11;
  v60 = *(v11 - 8);
  v13 = *(v60 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A077AC();
  v17 = v16;
  v61 = *(v16 - 8);
  v18 = *(v61 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A076C0();
  v22 = *(v21 - 8);
  v65 = v21;
  v66 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v59 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A07524();
  v67 = *(v25 - 8);
  v68 = v25;
  v26 = *(v67 + 64);
  MEMORY[0x28223BE20](v25);
  v63 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  sub_258A078E0();
  sub_258A07940();
  sub_258B01A74();
  v58 = a1;
  v28 = a1[1];
  v76 = *a1;
  v77 = v28;
  sub_2589BFF58();
  sub_258B003E4();
  v29 = sub_258B01B44();
  v31 = v30;
  v33 = v32;
  v34 = sub_258A07C08(&qword_27F96DE98, sub_258A07860);
  sub_258B01CA4();
  sub_2589BFFAC(v29, v31, v33 & 1);

  (*(v60 + 8))(v15, v12);
  v35 = v62;
  v36 = v64;
  (*(v62 + 104))(v10, *MEMORY[0x277CDDDC0], v64);
  v76 = v12;
  v77 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v59;
  sub_258B01E24();
  (*(v35 + 8))(v10, v36);
  (*(v61 + 8))(v20, v17);
  v74 = v58;
  sub_258A07A20();
  v76 = v17;
  v77 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_258A07AD4();
  v40 = v39;
  v41 = sub_258A07C08(&qword_27F96DEC8, sub_258A07AD4);
  v76 = v40;
  v77 = v41;
  swift_getOpaqueTypeConformance2();
  v42 = v63;
  v43 = v65;
  sub_258B01EE4();
  (*(v66 + 8))(v38, v43);
  v44 = v69;
  sub_258A0521C(v69);
  v45 = v70;
  v46 = v71;
  v47 = v72;
  (*(v71 + 104))(v70, *MEMORY[0x277CDF3C0], v72);
  v48 = v45;
  LOBYTE(v45) = sub_258B00694();
  v49 = *(v46 + 8);
  v49(v48, v47);
  v49(v44, v47);
  v50 = objc_opt_self();
  v51 = &selRef_systemBackgroundColor;
  if ((v45 & 1) == 0)
  {
    v51 = &selRef_systemGroupedBackgroundColor;
  }

  v52 = [v50 *v51];
  v53 = sub_258B01F94();
  v54 = sub_258B01874();
  v55 = v73;
  (*(v67 + 32))(v73, v42, v68);
  sub_258A07490();
  v57 = v55 + *(v56 + 36);
  *v57 = v53;
  *(v57 + 8) = v54;
}

uint64_t sub_258A05DE0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  sub_2589BFF58();
  sub_258B003E4();
  sub_258B01B44();
  sub_258A079CC();
  return sub_258B02434();
}

uint64_t sub_258A05E94(uint64_t a1)
{
  v2 = sub_258B01384();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_258A07AD4();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258B01354();
  v13 = a1;
  sub_258A07B74();
  sub_258A07C08(&qword_27F96DEC0, sub_258A07B74);
  sub_258B00784();
  v10 = sub_258A07C08(&qword_27F96DEC8, sub_258A07AD4);
  MEMORY[0x259C91A00](v9, v5, v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258A06064(uint64_t a1)
{
  v2 = type metadata accessor for AssessmentRiskInformationalView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_258B00624();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00614();
  sub_258A08A88(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AssessmentRiskInformationalView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_258A08778(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return MEMORY[0x259C92780](v8, sub_258A087DC, v10);
}

uint64_t sub_258A061CC(uint64_t a1)
{
  v21 = sub_258B00F84();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CDD848];
  sub_258A07268(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  v11 = sub_258B008A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AssessmentRiskInformationalView();
  sub_258A0883C(a1 + *(v16 + 24), v10, &qword_27F96C968, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_258B02E94();
    v18 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v21);
  }

  sub_258B00894();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_258A06478()
{
  sub_258A07490();
  sub_258A07C50();
  return sub_258B00B24();
}

uint64_t sub_258A064DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v96 = a3;
  v106 = a1;
  v107 = a2;
  v98 = a4;
  sub_258A0834C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v113 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v97 = (v91 - v8);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v94 = qword_27F97AB98;
  v95 = qword_27F97AB90;
  v93 = qword_27F97ABA0;
  v154 = sub_258AFFD94();
  v155 = v9;
  v91[1] = sub_2589BFF58();
  v10 = sub_258B01B44();
  v12 = v11;
  v14 = v13;
  sub_258B01944();
  sub_258B01924();

  v15 = sub_258B01AE4();
  v17 = v16;
  v19 = v18;

  sub_2589BFFAC(v10, v12, v14 & 1);

  v20 = objc_opt_self();
  v92 = v20;
  v21 = [v20 labelColor];
  sub_258B01F94();
  v108 = sub_258B01AA4();
  v109 = v22;
  v110 = v23;
  v25 = v24;

  sub_2589BFFAC(v15, v17, v19 & 1);

  v112 = sub_258B01894();
  sub_258B00654();
  v101 = v27;
  v102 = v26;
  v99 = v29;
  v100 = v28;
  v111 = v25 & 1;
  LOBYTE(v143[0]) = 0;
  v154 = v106;
  v155 = v107;
  sub_258B003E4();
  v30 = sub_258B01B44();
  v32 = v31;
  v34 = v33;
  v35 = [v20 labelColor];
  sub_258B01F94();
  v36 = sub_258B01AA4();
  v104 = v37;
  v105 = v36;
  LOBYTE(v17) = v38;
  v106 = v39;

  sub_2589BFFAC(v30, v32, v34 & 1);

  v103 = sub_258B01894();
  sub_258B00654();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  LODWORD(v107) = v17 & 1;
  LOBYTE(v154) = v17 & 1;
  LOBYTE(v143[0]) = 0;
  v154 = sub_258AFFD94();
  v155 = v48;
  v49 = sub_258B01B44();
  v51 = v50;
  v53 = v52;
  sub_258B01944();
  sub_258B01924();

  v54 = sub_258B01AE4();
  v56 = v55;
  LOBYTE(v17) = v57;

  sub_2589BFFAC(v49, v51, v53 & 1);

  v58 = [v92 labelColor];
  sub_258B01F94();
  v59 = sub_258B01AA4();
  v94 = v60;
  v95 = v61;
  LOBYTE(v51) = v62;

  sub_2589BFFAC(v54, v56, v17 & 1);

  LODWORD(v93) = sub_258B01894();
  sub_258B00654();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  LODWORD(v92) = v51 & 1;
  LOBYTE(v154) = v51 & 1;
  LOBYTE(v143[0]) = 0;
  v71 = sub_258B011A4();
  v72 = v97;
  *v97 = v71;
  *(v72 + 8) = 0x4034000000000000;
  *(v72 + 16) = 0;
  sub_258A085E4(0, &qword_27F96DF80, sub_258A083B0);
  v74 = *(v73 + 44);
  v154 = v96;
  swift_getKeyPath();
  sub_258A08474();
  sub_258A07C08(&qword_27F96DF60, sub_258A08474);
  sub_258A084C4();
  sub_258A08590();
  sub_258B003E4();
  sub_258B023B4();
  sub_258A08A88(v72, v113, sub_258A0834C);
  *&v120 = v108;
  *(&v120 + 1) = v110;
  LOBYTE(v121) = v111;
  *(&v121 + 1) = *v119;
  DWORD1(v121) = *&v119[3];
  *(&v121 + 1) = v109;
  LOBYTE(v122) = v112;
  *(&v122 + 1) = *v118;
  DWORD1(v122) = *&v118[3];
  *(&v122 + 1) = v102;
  *&v123[0] = v101;
  *(&v123[0] + 1) = v100;
  *&v123[1] = v99;
  BYTE8(v123[1]) = 0;
  v75 = v120;
  v76 = v121;
  v77 = v98;
  *(v98 + 57) = *(v123 + 9);
  v78 = v123[0];
  v77[2] = v122;
  v77[3] = v78;
  *v77 = v75;
  v77[1] = v76;
  *&v124 = v105;
  *(&v124 + 1) = v104;
  LOBYTE(v125) = v107;
  DWORD1(v125) = *(v117 + 3);
  *(&v125 + 1) = v117[0];
  *(&v125 + 1) = v106;
  LOBYTE(v126) = v103;
  DWORD1(v126) = *&v116[3];
  *(&v126 + 1) = *v116;
  *(&v126 + 1) = v41;
  *&v127[0] = v43;
  *(&v127[0] + 1) = v45;
  *&v127[1] = v47;
  BYTE8(v127[1]) = 0;
  v79 = v124;
  v80 = v125;
  *(v77 + 137) = *(v127 + 9);
  v81 = v127[0];
  v77[7] = v126;
  v77[8] = v81;
  v77[5] = v79;
  v77[6] = v80;
  v83 = v94;
  v82 = v95;
  *&v128 = v59;
  *(&v128 + 1) = v94;
  LOBYTE(v51) = v92;
  LOBYTE(v129) = v92;
  DWORD1(v129) = *(v115 + 3);
  *(&v129 + 1) = v115[0];
  *(&v129 + 1) = v95;
  LOBYTE(v74) = v93;
  LOBYTE(v130) = v93;
  DWORD1(v130) = *&v114[3];
  *(&v130 + 1) = *v114;
  *(&v130 + 1) = v64;
  *&v131[0] = v66;
  *(&v131[0] + 1) = v68;
  *&v131[1] = v70;
  BYTE8(v131[1]) = 0;
  v84 = v128;
  v85 = v129;
  *(v77 + 217) = *(v131 + 9);
  v86 = v131[0];
  v77[12] = v130;
  v77[13] = v86;
  v77[10] = v84;
  v77[11] = v85;
  sub_258A082A0();
  v88 = v77 + *(v87 + 80);
  v89 = v113;
  sub_258A08A88(v113, v88, sub_258A0834C);
  sub_258A08648(&v120, &v154);
  sub_258A08648(&v124, &v154);
  sub_258A08648(&v128, &v154);
  sub_258A08CD4(v72, sub_258A0834C);
  sub_258A08CD4(v89, sub_258A0834C);
  v132[0] = v59;
  v132[1] = v83;
  v133 = v51;
  *v134 = v115[0];
  *&v134[3] = *(v115 + 3);
  v135 = v82;
  v136 = v74;
  *v137 = *v114;
  *&v137[3] = *&v114[3];
  v138 = v64;
  v139 = v66;
  v140 = v68;
  v141 = v70;
  v142 = 0;
  sub_258A086D8(v132);
  v143[0] = v105;
  v143[1] = v104;
  v144 = v107;
  *v145 = v117[0];
  *&v145[3] = *(v117 + 3);
  v146 = v106;
  v147 = v103;
  *v148 = *v116;
  *&v148[3] = *&v116[3];
  v149 = v41;
  v150 = v43;
  v151 = v45;
  v152 = v47;
  v153 = 0;
  sub_258A086D8(v143);
  v154 = v108;
  v155 = v110;
  v156 = v111;
  *v157 = *v119;
  *&v157[3] = *&v119[3];
  v158 = v109;
  v159 = v112;
  *v160 = *v118;
  *&v160[3] = *&v118[3];
  v161 = v102;
  v162 = v101;
  v163 = v100;
  v164 = v99;
  v165 = 0;
  return sub_258A086D8(&v154);
}

uint64_t sub_258A06DA0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  sub_258B003E4();

  return sub_258B003E4();
}

uint64_t sub_258A06DE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *a1 = sub_258B011A4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_258A085E4(0, &qword_27F96DF28, sub_258A0826C);
  return sub_258A064DC(v3, v4, v5, (a1 + *(v6 + 44)));
}

uint64_t sub_258A06E60@<X0>(uint64_t a1@<X8>)
{
  sub_2589BFF58();
  sub_258B003E4();
  v2 = sub_258B01B44();
  v4 = v3;
  v6 = v5;
  sub_258B01A44();
  v7 = sub_258B01AE4();
  v9 = v8;
  v11 = v10;

  sub_2589BFFAC(v2, v4, v6 & 1);

  v12 = [objc_opt_self() labelColor];
  sub_258B01F94();
  v13 = sub_258B01AA4();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_2589BFFAC(v7, v9, v11 & 1);

  sub_258B003E4();
  v20 = sub_258B01B44();
  v22 = v21;
  v23 = v17 & 1;
  v28 = v17 & 1;
  v25 = v24 & 1;
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v23;
  *(a1 + 24) = v19;
  *(a1 + 32) = v20;
  *(a1 + 40) = v21;
  *(a1 + 48) = v24 & 1;
  *(a1 + 56) = v26;
  *(a1 + 64) = 256;
  *(a1 + 72) = 0x3FF0000000000000;
  sub_2589E36D4(v13, v15, v23);
  sub_258B003E4();
  sub_2589E36D4(v20, v22, v25);
  sub_258B003E4();
  sub_2589BFFAC(v20, v22, v25);

  sub_2589BFFAC(v13, v15, v28);
}

double sub_258A07070@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = sub_258B011A4();
  v19 = 0;
  sub_258A06E60(&v13);
  v22 = v15;
  v23 = v16;
  v20 = v13;
  v21 = v14;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[1] = v14;
  v24 = v17;
  v25[0] = v13;
  sub_258A08A88(&v20, &v12, sub_258A08AF0);
  sub_258A08CD4(v25, sub_258A08AF0);
  *&v18[7] = v20;
  *&v18[71] = v24;
  *&v18[55] = v23;
  *&v18[39] = v22;
  *&v18[23] = v21;
  v8 = *&v18[48];
  *(a1 + 49) = *&v18[32];
  *(a1 + 65) = v8;
  *(a1 + 81) = *&v18[64];
  result = *v18;
  v10 = *&v18[16];
  *(a1 + 17) = *v18;
  v11 = v19;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 96) = *&v18[79];
  *(a1 + 33) = v10;
  return result;
}

double OnBoardingKitPresentationSizing.proposedSize(for:context:)()
{
  sub_258A07E9C();
  [swift_getObjCClassFromMetadata() preferredContentSize];
  return result;
}

double sub_258A07214()
{
  sub_258A07E9C();
  [swift_getObjCClassFromMetadata() preferredContentSize];
  return result;
}

void sub_258A07268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A072F0(uint64_t a1)
{
  v2 = sub_258B00AA4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_258B00D94();
}

uint64_t sub_258A073B8(uint64_t a1)
{
  sub_258A07454(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_258A08A88(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), sub_258A07454);
  return sub_258B00E44();
}

void sub_258A07490()
{
  if (!qword_27F96DE58)
  {
    sub_258A07524();
    sub_258A08C20(255, &qword_27F96DED0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DE58);
    }
  }
}

void sub_258A07524()
{
  if (!qword_27F96DE60)
  {
    sub_258A076C0();
    sub_258A07A20();
    sub_258A077AC();
    sub_258A07860();
    sub_258A07C08(&qword_27F96DE98, sub_258A07860);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A07AD4();
    sub_258A07C08(&qword_27F96DEC8, sub_258A07AD4);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96DE60);
    }
  }
}

void sub_258A076C0()
{
  if (!qword_27F96DE68)
  {
    sub_258A077AC();
    sub_258A07860();
    sub_258A07C08(&qword_27F96DE98, sub_258A07860);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96DE68);
    }
  }
}

void sub_258A077AC()
{
  if (!qword_27F96DE70)
  {
    sub_258A07860();
    sub_258A07C08(&qword_27F96DE98, sub_258A07860);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96DE70);
    }
  }
}

void sub_258A07860()
{
  if (!qword_27F96DE78)
  {
    sub_258A078E0();
    sub_258A07940();
    v0 = sub_258B01A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DE78);
    }
  }
}

void sub_258A078E0()
{
  if (!qword_27F96DE80)
  {
    v0 = sub_258B02444();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DE80);
    }
  }
}

unint64_t sub_258A07940()
{
  result = qword_27F96DE88;
  if (!qword_27F96DE88)
  {
    sub_258A078E0();
    sub_258A079CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DE88);
  }

  return result;
}

unint64_t sub_258A079CC()
{
  result = qword_27F96DE90;
  if (!qword_27F96DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DE90);
  }

  return result;
}

void sub_258A07A20()
{
  if (!qword_27F96DEA0)
  {
    sub_258A07AD4();
    sub_258A07C08(&qword_27F96DEC8, sub_258A07AD4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96DEA0);
    }
  }
}

void sub_258A07AD4()
{
  if (!qword_27F96DEA8)
  {
    sub_258A07B74();
    sub_258A07C08(&qword_27F96DEC0, sub_258A07B74);
    v0 = sub_258B00794();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DEA8);
    }
  }
}

void sub_258A07B74()
{
  if (!qword_27F96DEB0)
  {
    sub_258B01014();
    sub_258A07C08(&qword_27F96DEB8, MEMORY[0x277CDDE30]);
    v0 = sub_258B021B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DEB0);
    }
  }
}

uint64_t sub_258A07C08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258A07C50()
{
  result = qword_27F96DED8;
  if (!qword_27F96DED8)
  {
    sub_258A07490();
    sub_258A076C0();
    sub_258A07A20();
    sub_258A077AC();
    sub_258A07860();
    sub_258A07C08(&qword_27F96DE98, sub_258A07860);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A07AD4();
    sub_258A07C08(&qword_27F96DEC8, sub_258A07AD4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A07E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DED8);
  }

  return result;
}

unint64_t sub_258A07E18()
{
  result = qword_27F96DEE0;
  if (!qword_27F96DEE0)
  {
    sub_258A08C20(255, &qword_27F96DED0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DEE0);
  }

  return result;
}

unint64_t sub_258A07E9C()
{
  result = qword_27F96DEE8;
  if (!qword_27F96DEE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F96DEE8);
  }

  return result;
}

unint64_t sub_258A07EEC()
{
  result = qword_27F96DEF0;
  if (!qword_27F96DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DEF0);
  }

  return result;
}

void sub_258A07F84()
{
  sub_258A07268(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258A07268(319, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_258A07268(319, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_258A07268(319, &qword_27F96DF00, sub_258A07454, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_258A08128()
{
  if (!qword_27F96DF20)
  {
    sub_258B00A14();
    sub_258A07490();
    sub_258A07C50();
    v0 = sub_258B00B34();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DF20);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_258A081B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_258A08200(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_258A082A0()
{
  if (!qword_27F96DF38)
  {
    sub_258A08C20(255, &qword_27F96DF40, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_258A0834C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96DF38);
    }
  }
}

void sub_258A0834C()
{
  if (!qword_27F96DF48)
  {
    sub_258A083B0();
    sub_258A08518();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DF48);
    }
  }
}

void sub_258A083B0()
{
  if (!qword_27F96DF50)
  {
    sub_258A08474();
    sub_258A07C08(&qword_27F96DF60, sub_258A08474);
    sub_258A084C4();
    v0 = sub_258B023D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DF50);
    }
  }
}

void sub_258A08474()
{
  if (!qword_27F96DF58)
  {
    v0 = sub_258B02CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DF58);
    }
  }
}

unint64_t sub_258A084C4()
{
  result = qword_27F96DF68;
  if (!qword_27F96DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DF68);
  }

  return result;
}

unint64_t sub_258A08518()
{
  result = qword_27F96DF70;
  if (!qword_27F96DF70)
  {
    sub_258A083B0();
    sub_258A08590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DF70);
  }

  return result;
}

unint64_t sub_258A08590()
{
  result = qword_27F96DF78;
  if (!qword_27F96DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DF78);
  }

  return result;
}

void sub_258A085E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258A08648(uint64_t a1, uint64_t a2)
{
  sub_258A08C20(0, &qword_27F96DF40, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A086D8(uint64_t a1)
{
  sub_258A08C20(0, &qword_27F96DF40, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A08778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssessmentRiskInformationalView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A087DC()
{
  v1 = *(type metadata accessor for AssessmentRiskInformationalView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258A061CC(v2);
}

uint64_t sub_258A0883C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_258A07268(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258A088BC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[3];
  v4 = v2[4];
  *a1 = v2[2];
  a1[1] = v3;
  a1[2] = v4;
  sub_258B003E4();

  return sub_258B003E4();
}

uint64_t sub_258A08904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_258A0894C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_258A089D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258A07C08(a4, a5);
    v8 = sub_258B022D4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258A08A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A08B24()
{
  if (!qword_27F96DFA8)
  {
    sub_258A08B8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96DFA8);
    }
  }
}

void sub_258A08B8C()
{
  if (!qword_27F96DFB0)
  {
    sub_258A08C20(255, &qword_27F96D1F8, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
    sub_258A08C74();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DFB0);
    }
  }
}

void sub_258A08C20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A08C74()
{
  if (!qword_27F96DFB8)
  {
    sub_258B014C4();
    v0 = sub_258B01454();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DFB8);
    }
  }
}

uint64_t sub_258A08CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for EditButton()
{
  result = qword_27F96DFD8;
  if (!qword_27F96DFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A08DF4()
{
  sub_2589E3D24();
  if (v0 <= 0x3F)
  {
    sub_258A0A95C(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2589C0D10();
      if (v2 <= 0x3F)
      {
        sub_258A09E48(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258A08F18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for EditButton();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_258A0A04C();
  v8 = v7;
  v9 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A09F78();
  v54 = *(v12 - 8);
  v55 = v12;
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v12);
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0A134(0, &qword_27F96E000, sub_258A09F78, MEMORY[0x277CDE470]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v53 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v51 = &v46 - v19;
  v20 = type metadata accessor for NotificationsSetupPhaseSpecs();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1 + *(v4 + 36);
  sub_258AC1B5C(v23);
  sub_258A0A8FC(v23, type metadata accessor for NotificationsSetupPhaseSpecs);
  sub_258B024F4();
  sub_258B00854();
  v50 = v62;
  v49 = v64;
  v48 = v66;
  v47 = v67;
  v70 = 1;
  v69 = v63;
  v68 = v65;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v56 = sub_258AFFD94();
  v57 = v25;
  sub_258A0A7C4(a1, &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v27 = swift_allocObject();
  sub_258A0A828(&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  sub_2589BFF58();
  sub_258B021A4();
  v28 = sub_258B01FC4();
  KeyPath = swift_getKeyPath();
  v30 = &v11[v8[9]];
  *v30 = KeyPath;
  v30[1] = v28;
  v31 = *(a1 + 24);
  v60 = *(a1 + 16);
  v61 = v31;
  sub_258A0A95C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  sub_258A0A7C4(a1, &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = swift_allocObject();
  sub_258A0A828(&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v26);
  sub_258A0A134(0, &qword_27F96E020, sub_258A0A1A8, sub_2589D3448);
  v34 = v33;
  v44 = sub_258A0A580();
  v45 = sub_258A0A6B4();
  v35 = v52;
  sub_258B01E94();

  sub_258A0A8FC(v11, sub_258A0A04C);
  v56 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5198);
  sub_258A0A95C(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D51B8);
  v56 = v8;
  v57 = v34;
  v58 = v44;
  v59 = v45;
  swift_getOpaqueTypeConformance2();
  v36 = v51;
  v37 = v55;
  sub_258B01DD4();

  (*(v54 + 8))(v35, v37);
  LOBYTE(v28) = v70;
  LOBYTE(v37) = v69;
  v38 = v68;
  v39 = v53;
  sub_2589A92E4(v36, v53);
  v40 = v46;
  *v46 = 0;
  *(v40 + 8) = v28;
  v40[2] = v50;
  *(v40 + 24) = v37;
  v40[4] = v49;
  *(v40 + 40) = v38;
  v41 = v47;
  v40[6] = v48;
  v40[7] = v41;
  sub_258A09EAC();
  sub_2589A92E4(v39, v40 + *(v42 + 48));
  sub_2589A9378(v36);
  return sub_2589A9378(v39);
}

void sub_258A095EC(uint64_t a1@<X8>)
{
  sub_258A0A2D8();
  sub_258A0A3D8();
  sub_258A0A52C();
  sub_258A0A48C();
  sub_258A0AC24(&qword_27F96E048, sub_258A0A48C);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_258B00B24();
  KeyPath = swift_getKeyPath();
  sub_258A0A134(0, &qword_27F96E020, sub_258A0A1A8, sub_2589D3448);
  v4 = (a1 + *(v3 + 36));
  *v4 = KeyPath;
  v4[1] = 0;
}

uint64_t sub_258A09758()
{
  v0 = [objc_allocWithZone(type metadata accessor for NotificationSettingsModel()) init];
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  sub_258AFFD94();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v3 = v1;
  MEMORY[0x28223BE20](v1);
  sub_258A0A3D8();
  sub_258A0A52C();
  sub_258A0A48C();
  sub_258A0AC24(&qword_27F96E048, sub_258A0A48C);
  swift_getOpaqueTypeConformance2();
  sub_258B01EE4();
  sub_258A0A9C4(sub_258A0A9B4, v3, 0);
}

uint64_t sub_258A09954(uint64_t a1)
{
  v2 = sub_258B01384();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_258A0A48C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258B01354();
  v13 = a1;
  sub_258B026B4();
  sub_258A0AC24(&qword_27F96D6D8, MEMORY[0x277D12688]);
  sub_258B00784();
  v10 = sub_258A0AC24(&qword_27F96E048, sub_258A0A48C);
  MEMORY[0x259C91A00](v9, v5, v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258A09B24(uint64_t a1)
{
  v2 = type metadata accessor for EditButton();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_258A0A7C4(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_258A0A828(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_258B026A4();
}

uint64_t sub_258A09C28(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  sub_258A0A95C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

  sub_258B02124();
  sub_258B02134();
}

uint64_t sub_258A09CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for NotificationsSetupPhaseSpecs();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(a1 + 28);
  sub_258AC1B5C(v9);
  sub_258A0A8FC(v9, type metadata accessor for NotificationsSetupPhaseSpecs);
  *a2 = sub_258B01004();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  sub_258A09DB0();
  return sub_258A08F18(v4, (a2 + *(v11 + 44)));
}

void sub_258A09DB0()
{
  if (!qword_27F96DFE8)
  {
    sub_258A09E48(255, &qword_27F96DFF0, sub_258A09EAC, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96DFE8);
    }
  }
}

void sub_258A09E48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A09EAC()
{
  if (!qword_27F96DFF8)
  {
    sub_258A0A0E0(255, &qword_27F96C7B8, MEMORY[0x277CE1180], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_258A0A134(255, &qword_27F96E000, sub_258A09F78, MEMORY[0x277CDE470]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96DFF8);
    }
  }
}

void sub_258A09F78()
{
  if (!qword_27F96E008)
  {
    sub_258A0A04C();
    sub_258A0A134(255, &qword_27F96E020, sub_258A0A1A8, sub_2589D3448);
    sub_258A0A580();
    sub_258A0A6B4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E008);
    }
  }
}

void sub_258A0A04C()
{
  if (!qword_27F96E010)
  {
    sub_258A0A0E0(255, &qword_27F96E018, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    sub_2589D3448();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E010);
    }
  }
}

void sub_258A0A0E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A0A134(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A0A1A8()
{
  if (!qword_27F96E028)
  {
    sub_258B00A14();
    sub_258A0A2D8();
    sub_258A0A3D8();
    sub_258A0A52C();
    sub_258A0A48C();
    sub_258A0AC24(&qword_27F96E048, sub_258A0A48C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_258B00B34();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E028);
    }
  }
}

void sub_258A0A2D8()
{
  if (!qword_27F96E030)
  {
    sub_258A0A3D8();
    sub_258A0A52C();
    sub_258A0A48C();
    sub_258A0AC24(&qword_27F96E048, sub_258A0A48C);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E030);
    }
  }
}

void sub_258A0A3D8()
{
  if (!qword_27F96E038)
  {
    sub_258A0A48C();
    sub_258A0AC24(&qword_27F96E048, sub_258A0A48C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E038);
    }
  }
}

void sub_258A0A48C()
{
  if (!qword_27F96E040)
  {
    sub_258B026B4();
    sub_258A0AC24(&qword_27F96D6D8, MEMORY[0x277D12688]);
    v0 = sub_258B00794();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E040);
    }
  }
}

unint64_t sub_258A0A52C()
{
  result = qword_27F96E050;
  if (!qword_27F96E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E050);
  }

  return result;
}

unint64_t sub_258A0A580()
{
  result = qword_27F96E058;
  if (!qword_27F96E058)
  {
    sub_258A0A04C();
    sub_258A0A630();
    sub_258A0AC24(&qword_27F96CF60, sub_2589D3448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E058);
  }

  return result;
}

unint64_t sub_258A0A630()
{
  result = qword_27F96E060;
  if (!qword_27F96E060)
  {
    sub_258A0A0E0(255, &qword_27F96E018, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E060);
  }

  return result;
}

unint64_t sub_258A0A6B4()
{
  result = qword_27F96E068;
  if (!qword_27F96E068)
  {
    sub_258A0A134(255, &qword_27F96E020, sub_258A0A1A8, sub_2589D3448);
    sub_258A0AC24(&qword_27F96E070, sub_258A0A1A8);
    sub_258A0AC24(&qword_27F96CF60, sub_2589D3448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E068);
  }

  return result;
}

uint64_t sub_258A0A7C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A0A828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258A0A88C(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for EditButton() - 8) + 80);

  sub_258A095EC(a1);
}

uint64_t sub_258A0A8FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A0A95C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A0A9C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8]();
  }

  else
  {
  }
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for EditButton() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = v3[1];

  v5 = v3[3];

  v6 = v3[5];

  v7 = v3 + v1[9];
  sub_258A09E48(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_258B01504();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v7, 1, v8))
    {
      (*(v9 + 8))(v7, v8);
    }

    v10 = *(type metadata accessor for NotificationsSetupPhaseSpecs() + 20);
    v11 = sub_258B00AA4();
    (*(*(v11 - 8) + 8))(&v7[v10], v11);
  }

  else
  {
    v12 = *v7;
  }

  return swift_deallocObject();
}

uint64_t sub_258A0AC24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A0AC6C()
{
  if (!qword_27F96E080)
  {
    sub_258A09E48(255, &qword_27F96DFF0, sub_258A09EAC, MEMORY[0x277CE14B8]);
    sub_258A0AD00();
    v0 = sub_258B021D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E080);
    }
  }
}

unint64_t sub_258A0AD00()
{
  result = qword_27F96E088;
  if (!qword_27F96E088)
  {
    sub_258A09E48(255, &qword_27F96DFF0, sub_258A09EAC, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E088);
  }

  return result;
}

uint64_t type metadata accessor for DomainsSelectionPhaseContent()
{
  result = qword_27F96E090;
  if (!qword_27F96E090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A0AE00()
{
  sub_258A0B99C(319, &qword_27F96E0A0, type metadata accessor for Label, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_258A0B99C(319, &qword_27F96E0A8, sub_258A0AFC8, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_258A0B99C(319, &qword_27F96E0B8, sub_258A0AFC8, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_258A0AFFC();
        if (v3 <= 0x3F)
        {
          sub_2589C0D10();
          if (v4 <= 0x3F)
          {
            sub_258A0B99C(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
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

void sub_258A0AFFC()
{
  if (!qword_27F96E0C0)
  {
    v0 = sub_258B02364();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E0C0);
    }
  }
}

id sub_258A0B068@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v94 = type metadata accessor for DomainsAndContextEntry();
  v3 = *(*(v94 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v94);
  v96 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v88 - v6;
  v89 = type metadata accessor for AssociationSelectionPhaseSpecs();
  v8 = *(*(v89 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v89);
  *&v100 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v99 = &v88 - v12;
  MEMORY[0x28223BE20](v11);
  v98 = &v88 - v13;
  v14 = type metadata accessor for ValenceSelectionSummary();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0B920(0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v97 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0B900(0);
  v90 = v23;
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v93 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v88 - v28;
  MEMORY[0x28223BE20](v27);
  v92 = &v88 - v30;
  v31 = *a1;
  v32 = a1[1];
  v33 = *(a1 + 80);
  *&v18[*(v15 + 40)] = swift_getKeyPath();
  v34 = MEMORY[0x277CDF458];
  sub_258A0B99C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v18 = v31;
  *(v18 + 1) = v32;
  v18[16] = v33;
  v35 = *(v15 + 36);
  *&v18[v35] = swift_getKeyPath();
  sub_258A0B99C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, v34);
  v91 = v36;
  swift_storeEnumTagMultiPayload();
  sub_258B003E4();
  v37 = sub_258B01894();
  v38 = *(v32 + 16);
  v39 = type metadata accessor for DomainsSelectionPhaseContent();
  v40 = v39;
  if (v38)
  {
    v41 = v99;
  }

  else
  {
    v41 = v98;
  }

  v42 = a1 + *(v39 + 52);
  sub_258AC1B28(v41);
  sub_258A0BAD0(v41, type metadata accessor for AssociationSelectionPhaseSpecs);
  sub_258B00654();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v18;
  v52 = v97;
  sub_258A0BA00(v51, v97, type metadata accessor for ValenceSelectionSummary);
  v53 = v52 + *(v20 + 44);
  *v53 = v37;
  v54 = v100;
  *(v53 + 8) = v44;
  *(v53 + 16) = v46;
  *(v53 + 24) = v48;
  *(v53 + 32) = v50;
  *(v53 + 40) = 0;
  v55 = sub_258B01884();
  v56 = a1 + *(v40 + 52);
  sub_258AC1B28(v54);
  if (v33 == 1)
  {
    goto LABEL_8;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v58 = result;
    homeButtonType = MobileGestalt_get_homeButtonType();

    if (homeButtonType == 2)
    {
      v60 = v54 + *(v89 + 20);
      sub_258B00A84();
      sub_258A0BAD0(v54, type metadata accessor for AssociationSelectionPhaseSpecs);
LABEL_9:
      sub_258B00654();
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v68 = v67;
      sub_258A0BA00(v52, v29, sub_258A0B920);
      v69 = &v29[*(v90 + 36)];
      *v69 = v55;
      *(v69 + 1) = v62;
      *(v69 + 2) = v64;
      *(v69 + 3) = v66;
      *(v69 + 4) = v68;
      v69[40] = 0;
      v70 = v92;
      sub_258A0BA00(v29, v92, sub_258A0B900);
      v71 = a1[2];
      *v103 = a1[3];
      *&v103[8] = *(a1 + 2);
      sub_258A0B99C(0, &qword_27F96E0B8, sub_258A0AFC8, MEMORY[0x277CE11F8]);
      sub_258B003E4();
      sub_258B02334();
      v72 = *v101;
      sub_258A0AFFC();
      v100 = *&v101[8];
      v73 = a1[8];
      v74 = a1[9];
      *v103 = *(a1 + 3);
      *&v103[16] = v73;
      v104 = v74;
      sub_258B02334();
      v75 = *v101;
      v76 = *&v101[16];
      v77 = v102;
      v78 = *(a1 + 81);
      v79 = a1[11];
      *v7 = v71;
      *(v7 + 1) = v72;
      *(v7 + 1) = v100;
      *(v7 + 2) = v75;
      *(v7 + 6) = v76;
      *(v7 + 7) = v77;
      v7[64] = v78;
      *(v7 + 9) = v79;
      v80 = v94;
      v81 = *(v94 + 36);
      *&v7[v81] = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v82 = &v7[*(v80 + 40)];
      v101[0] = 0;
      sub_258B02114();
      v83 = *&v103[8];
      *v82 = v103[0];
      *(v82 + 1) = v83;
      v84 = v93;
      sub_258A0BA68(v70, v93, sub_258A0B900);
      v85 = v96;
      sub_258A0BA68(v7, v96, type metadata accessor for DomainsAndContextEntry);
      v86 = v95;
      sub_258A0BA68(v84, v95, sub_258A0B900);
      sub_258A0B890();
      sub_258A0BA68(v85, v86 + *(v87 + 48), type metadata accessor for DomainsAndContextEntry);
      sub_258A0BAD0(v7, type metadata accessor for DomainsAndContextEntry);
      sub_258A0BAD0(v70, sub_258A0B900);
      sub_258A0BAD0(v85, type metadata accessor for DomainsAndContextEntry);
      return sub_258A0BAD0(v84, sub_258A0B900);
    }

LABEL_8:
    sub_258A0BAD0(v54, type metadata accessor for AssociationSelectionPhaseSpecs);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_258A0B7B0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_258B01194();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_258A0B7F4();
  return sub_258A0B068(v1, a1 + *(v3 + 44));
}

void sub_258A0B7F4()
{
  if (!qword_27F96E0C8)
  {
    sub_258A0B85C(255);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E0C8);
    }
  }
}

void sub_258A0B890()
{
  if (!qword_27F96E0D8)
  {
    sub_258A0B900(255);
    type metadata accessor for DomainsAndContextEntry();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96E0D8);
    }
  }
}

void sub_258A0B940(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A0B99C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A0BA00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A0BA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A0BAD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A0BB30()
{
  if (!qword_27F96E0F8)
  {
    sub_258A0B85C(255);
    sub_258A0BBC4(&qword_27F96E100, sub_258A0B85C);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E0F8);
    }
  }
}

uint64_t sub_258A0BBC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258A0BC1C@<X0>(uint64_t a1@<X8>)
{
  sub_258B009D4();
  sub_258A0CCA8();
  sub_258B02D94();
  sub_258B02DB4();
  if (v9[4] == v9[0])
  {
    v2 = sub_258B00934();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_258B02DD4();
    v6 = v5;
    v7 = sub_258B00934();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

double sub_258A0BD84(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, double a6, double a7)
{
  v75 = a3;
  v76 = *&a1;
  v79 = *MEMORY[0x277D85DE8];
  sub_258A0CBA4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v69[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_258B00934();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v69[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v69[-v21];
  sub_258A0BC1C(v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v70 = a4;
    v72 = v16;
    (*(v16 + 32))(v22, v14, v15);
    sub_258B00C24();
    LOBYTE(v78) = v24 & 1;
    LOBYTE(v77) = v25 & 1;
    sub_258B00914();
    v27 = v26;
    v29 = v28;
    sub_258A0CC58();
    v30 = a5;
    inited = swift_initStackObject();
    v74 = xmmword_258B2C470;
    *(inited + 16) = xmmword_258B2C470;
    *(inited + 32) = v27;
    v32 = swift_initStackObject();
    *(v32 + 16) = v74;
    *(v32 + 32) = v29;
    sub_258B009D4();
    sub_258A0CCA8();
    sub_258B02D94();
    v73 = v30;
    sub_258B02DB4();
    v34 = v77;
    v33 = v78;
    if (v77 >= v78)
    {
      if (__OFSUB__(v77, v78))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v77 != v78)
      {
        v35 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (v35 < v78 || (v33 = v78 + 1, v77 < v35))
        {
LABEL_49:
          __break(1u);
        }
      }

      if (v77 < v33)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v71 = v22;
      *&v74 = v15;
      if (v33 == v77)
      {
LABEL_11:
        v36 = *(inited + 16);
        v23 = 0.0;
        if (v36)
        {
          v37 = (inited + 32);
          do
          {
            v38 = *v37++;
            v39 = v38;
            if (v23 <= v38)
            {
              v23 = v39;
            }

            --v36;
          }

          while (v36);
        }

        v40 = *(v32 + 16);
        if (!v40)
        {
          goto LABEL_40;
        }

        if (v40 > 3)
        {
          v41 = v40 & 0x7FFFFFFFFFFFFFFCLL;
          v60 = v32 + 48;
          v42 = 0.0;
          v61 = v40 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v62 = *v60;
            v42 = v42 + *(v60 - 16) + *(v60 - 8) + *v60 + *(v60 + 8);
            v60 += 32;
            v61 -= 4;
          }

          while (v61);
          if (v40 == v41)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v41 = 0;
          v42 = 0.0;
        }

        v63 = v40 - v41;
        v64 = (v32 + 8 * v41 + 32);
        do
        {
          v65 = *v64++;
          v42 = v42 + v65;
          --v63;
        }

        while (v63);
LABEL_40:
        (*(v72 + 8))(v71, v74);

        v66 = *(v32 + 16);

        goto LABEL_41;
      }

      v43 = v76;
      v44 = (v72 + 8);
      v45 = v70 & 1;
      while (1)
      {
        sub_258B009E4();
        LOBYTE(v78) = a2 & 1;
        LOBYTE(v77) = v45;
        sub_258B00914();
        v48 = *(inited + 16);
        if (!v48)
        {
          break;
        }

        v49 = v47;
        v50 = (inited + 24);
        v51 = v46 + a7 + *(inited + 24 + 8 * v48);
        if ((a2 & 1) != 0 || v51 <= v43)
        {
          *&v50[v48] = v51;
          v55 = *(v32 + 16);
          if (!v55)
          {
            goto LABEL_43;
          }

          v56 = *(v32 + 24 + 8 * v55);
          (*v44)(v20, v74);
          if (v55 > *(v32 + 16))
          {
            goto LABEL_44;
          }

          if (v56 > v49)
          {
            v57 = v56;
          }

          else
          {
            v57 = v49;
          }

          *(v32 + 24 + 8 * v55) = v57;
        }

        else
        {
          v52 = *v50;
          if (v48 >= v52 >> 1)
          {
            v58 = v46;
            v59 = sub_258A74DF4((v52 > 1), v48 + 1, 1, inited);
            v46 = v58;
            inited = v59;
          }

          *(inited + 16) = v48 + 1;
          *(inited + 8 * v48 + 32) = v46;
          v54 = *(v32 + 16);
          v53 = *(v32 + 24);
          if (v54 >= v53 >> 1)
          {
            v32 = sub_258A74DF4((v53 > 1), v54 + 1, 1, v32);
          }

          (*v44)(v20, v74);
          *(v32 + 16) = v54 + 1;
          *(v32 + 8 * v54 + 32) = v49;
        }

        if (v34 == ++v33)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_258A0CBFC(v14);
  v23 = 0.0;
LABEL_41:
  v67 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t sub_258A0C304(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11)
{
  v93 = a11;
  v92 = a10;
  v95 = a4;
  v94 = a3;
  v98 = *MEMORY[0x277D85DE8];
  sub_258A0CBA4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_258B00934();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v86 - v28;
  sub_258A0BC1C(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    result = sub_258A0CBFC(v21);
    goto LABEL_13;
  }

  v31 = *(v23 + 32);
  v91 = v22;
  v31(v29, v21, v22);
  sub_258B00C24();
  v33 = v32;
  v35 = v34;
  sub_258B025B4();
  LOBYTE(v97) = v33 & 1;
  LOBYTE(v96) = v35 & 1;
  sub_258B00924();
  sub_258B00C24();
  LOBYTE(v97) = v36 & 1;
  LOBYTE(v96) = v37 & 1;
  v87 = v29;
  sub_258B00914();
  v39 = v38;
  v41 = v40;
  sub_258A0CC58();
  inited = swift_initStackObject();
  v90 = xmmword_258B2C470;
  *(inited + 16) = xmmword_258B2C470;
  *(inited + 32) = v39;
  v43 = swift_initStackObject();
  *(v43 + 16) = v90;
  *(v43 + 32) = v41;
  sub_258B009D4();
  sub_258A0CCA8();
  sub_258B02D94();
  sub_258B02DB4();
  v44 = v97;
  if (v96 < v97)
  {
    goto LABEL_54;
  }

  if (__OFSUB__(v96, v97))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v96 != v97)
  {
    v45 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v45 < v97 || (v44 = v97 + 1, v96 < v45))
    {
LABEL_58:
      __break(1u);
    }
  }

  if (v96 < v44)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v44 != v96)
  {
    *&v90 = a5;
    v88 = *&a1;
    v48 = (v23 + 8);
    v89 = v96;
    while (1)
    {
      sub_258B009E4();
      LOBYTE(v97) = a2 & 1;
      LOBYTE(v96) = v95 & 1;
      sub_258B00914();
      v51 = *(inited + 16);
      if (!v51)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v52 = v50;
      v53 = v49 + v93;
      v54 = inited + 32;
      if ((a2 & 1) == 0 && v53 + *(v54 + 8 * v51 - 8) > v88)
      {
        v55 = v49;
        v99.origin.x = a6;
        v99.origin.y = a7;
        v99.size.width = a8;
        v99.size.height = a9;
        CGRectGetMinY(v99);
        v56 = *(v43 + 16);
        if (v56)
        {
          if (v56 <= 3)
          {
            v57 = 0;
            v58 = 0.0;
            goto LABEL_43;
          }

          v57 = v56 & 0x7FFFFFFFFFFFFFFCLL;
          v76 = v43 + 48;
          v58 = 0.0;
          v77 = v56 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v78 = *v76;
            v58 = v58 + *(v76 - 16) + *(v76 - 8) + *v76 + *(v76 + 8);
            v76 += 32;
            v77 -= 4;
          }

          while (v77);
          if (v56 != v57)
          {
LABEL_43:
            v79 = v56 - v57;
            v80 = (v43 + 8 * v57 + 32);
            do
            {
              v81 = *v80++;
              v58 = v58 + v81;
              --v79;
            }

            while (v79);
          }
        }

        v102.origin.x = a6;
        v102.origin.y = a7;
        v102.size.width = a8;
        v102.size.height = a9;
        CGRectGetMinX(v102);
        sub_258B025B4();
        LOBYTE(v97) = 0;
        LOBYTE(v96) = v95 & 1;
        sub_258B00924();
        v83 = *(inited + 16);
        v82 = *(inited + 24);
        if (v83 >= v82 >> 1)
        {
          inited = sub_258A74DF4((v82 > 1), v83 + 1, 1, inited);
        }

        *(inited + 16) = v83 + 1;
        *(inited + 8 * v83 + 32) = v55;
        v85 = *(v43 + 16);
        v84 = *(v43 + 24);
        if (v85 >= v84 >> 1)
        {
          v43 = sub_258A74DF4((v84 > 1), v85 + 1, 1, v43);
        }

        v46 = *v48;
        (*v48)(v27, v91);
        *(v43 + 16) = v85 + 1;
        *(v43 + 8 * v85 + 32) = v52;
        goto LABEL_16;
      }

      v100.origin.x = a6;
      v100.origin.y = a7;
      v100.size.width = a8;
      v100.size.height = a9;
      CGRectGetMinX(v100);
      v59 = *(inited + 16);
      if (!v59)
      {
        goto LABEL_50;
      }

      v60 = v54 + 8 * v59;
      v61 = *(v60 - 8);
      v101.origin.x = a6;
      v101.origin.y = a7;
      v101.size.width = a8;
      v101.size.height = a9;
      CGRectGetMinY(v101);
      v62 = *(v43 + 16);
      v63 = v62 - 1;
      v64 = 0.0;
      if (v62 >= 2)
      {
        if (v62 > 4)
        {
          v65 = v63 & 0xFFFFFFFFFFFFFFFCLL;
          v66 = v43 + 48;
          v67 = v63 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v68 = *v66;
            v64 = v64 + *(v66 - 16) + *(v66 - 8) + *v66 + *(v66 + 8);
            v66 += 32;
            v67 -= 4;
          }

          while (v67);
          if (v63 == v65)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v65 = 0;
        }

        v69 = ~v65 + v62;
        v70 = (v43 + 8 * v65 + 32);
        do
        {
          v71 = *v70++;
          v64 = v64 + v71;
          --v69;
        }

        while (v69);
      }

LABEL_32:
      sub_258B025B4();
      LOBYTE(v97) = a2 & 1;
      LOBYTE(v96) = v95 & 1;
      sub_258B00924();
      if (v59 > *(inited + 16))
      {
        goto LABEL_51;
      }

      *(v60 - 8) = v53 + *(v60 - 8);
      v72 = *(v43 + 16);
      if (!v72)
      {
        goto LABEL_52;
      }

      v73 = v43 + 8 * v72;
      v74 = *(v73 + 24);
      v46 = *v48;
      (*v48)(v27, v91);
      if (v72 > *(v43 + 16))
      {
        goto LABEL_53;
      }

      if (v74 > v52)
      {
        v75 = v74;
      }

      else
      {
        v75 = v52;
      }

      *(v73 + 24) = v75;
LABEL_16:
      if (++v44 == v89)
      {
        goto LABEL_12;
      }
    }
  }

  v46 = *(v23 + 8);
LABEL_12:
  v46(v87, v91);

LABEL_13:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

void (*sub_258A0CAC4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_258B005E4();
  return sub_2589FE1B8;
}

unint64_t sub_258A0CB50()
{
  result = qword_27F96E108;
  if (!qword_27F96E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E108);
  }

  return result;
}

void sub_258A0CBA4()
{
  if (!qword_27F96E110)
  {
    sub_258B00934();
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E110);
    }
  }
}

uint64_t sub_258A0CBFC(uint64_t a1)
{
  sub_258A0CBA4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A0CC58()
{
  if (!qword_27F96E118)
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E118);
    }
  }
}

unint64_t sub_258A0CCA8()
{
  result = qword_27F96DAE0;
  if (!qword_27F96DAE0)
  {
    sub_258B009D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96DAE0);
  }

  return result;
}

uint64_t type metadata accessor for ValenceSliderStyle()
{
  result = qword_27F96E120;
  if (!qword_27F96E120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A0CD74()
{
  sub_258A0E334(319, &qword_27F96CC80, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258A0E334(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258A0CE68(uint64_t a1, int a2)
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

uint64_t sub_258A0CEB0(uint64_t result, int a2, int a3)
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

uint64_t sub_258A0CF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a4;
  v7 = sub_258B015B4();
  v61 = *(v7 - 8);
  v62 = v7;
  v66 = *(v61 + 64);
  MEMORY[0x28223BE20](v7);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_258B008E4();
  v9 = *(v58 - 8);
  v59 = *(v9 + 64);
  MEMORY[0x28223BE20](v58);
  v54 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ValenceSliderStyle();
  v55 = *(v11 - 8);
  v53 = *(v55 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v13;
  v14 = sub_258B012E4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v63 = sub_258B00704();
  v65 = *(v63 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  v52 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589D27E4();
  v19 = *(v18 - 8);
  v67 = v18;
  v68 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v56 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0E2A0();
  v64 = v22;
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258B01594();
  v27 = v26;
  sub_258B008C4();
  v29 = v28;
  sub_258B008C4();
  if (v30 >= v29)
  {
    v30 = v29;
  }

  v31 = *a3 * v30;
  *v25 = sub_258B02504();
  v25[1] = v32;
  v57 = v25;
  sub_258A0E6C0();
  sub_258A0D5BC(a3, a1, v25 + *(v33 + 44), v31, v27);
  sub_258B01514();
  sub_258B006D4();
  sub_258A0E948(a3, v13, type metadata accessor for ValenceSliderStyle);
  v34 = v9;
  v35 = v54;
  v36 = v58;
  (*(v9 + 16))(v54, a1, v58);
  v38 = v60;
  v37 = v61;
  v39 = v62;
  (*(v61 + 16))(v60, a2, v62);
  v40 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v41 = (v53 + *(v9 + 80) + v40) & ~*(v9 + 80);
  v42 = v37;
  v43 = (v59 + *(v37 + 80) + v41) & ~*(v37 + 80);
  v44 = swift_allocObject();
  sub_258A0E8E0(v51, v44 + v40, type metadata accessor for ValenceSliderStyle);
  (*(v34 + 32))(v44 + v41, v35, v36);
  (*(v42 + 32))(v44 + v43, v38, v39);
  sub_258A0E258(&qword_27F96CE38, MEMORY[0x277CDD730]);
  sub_258A0E258(&qword_27F96CE40, MEMORY[0x277CDD708]);
  v45 = v56;
  v46 = v63;
  v47 = v52;
  sub_258B023F4();

  (*(v65 + 8))(v47, v46);
  sub_258B00734();
  sub_258A0E258(&qword_27F96E190, sub_258A0E2A0);
  sub_258A0E258(&qword_27F96CE48, sub_2589D27E4);
  v48 = v67;
  v49 = v57;
  sub_258B01EB4();
  (*(v68 + 8))(v45, v48);
  return sub_258A0E9B0(v49, sub_258A0E2A0);
}

uint64_t sub_258A0D5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v85 = a2;
  *&v87 = a1;
  v86 = a3;
  v83 = sub_258B02554();
  v82 = *(v83 - 8);
  v7 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258B006A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v77 - v15;
  sub_258A0E504();
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_258B02384();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v25;
  sub_258A0E408();
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v84 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v77 - v32;
  MEMORY[0x28223BE20](v31);
  v80 = &v77 - v34;
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_258B010C4();
  (*(*(v36 - 8) + 104))(v25, v35, v36);
  v37 = [objc_opt_self() systemGray6Color];
  v78 = sub_258B01F94();
  v38 = v87 + *(type metadata accessor for ValenceSliderStyle() + 24);
  sub_258AC14E8(v16);
  (*(v10 + 104))(v14, *MEMORY[0x277CDF3C0], v9);
  LOBYTE(v38) = sub_258B00694();
  v39 = *(v10 + 8);
  v39(v14, v9);
  v39(v16, v9);
  v40 = v82;
  v41 = MEMORY[0x277CE13B8];
  if ((v38 & 1) == 0)
  {
    v41 = MEMORY[0x277CE13B0];
  }

  v42 = v81;
  v43 = v83;
  (*(v82 + 104))(v81, *v41, v83);
  (*(v40 + 32))(v21 + *(v18 + 44), v42, v43);
  *v21 = v78;
  sub_258A0E8E0(v21, &v33[*(v27 + 44)], sub_258A0E504);
  sub_258A0E8E0(v79, v33, MEMORY[0x277CE1260]);
  v44 = v80;
  sub_258A0E8E0(v33, v80, sub_258A0E408);
  sub_258B008C4();
  v46 = v45;
  sub_258B008C4();
  if (v47 >= v46)
  {
    v47 = v46;
  }

  v48 = v87;
  v49 = *v87;
  v50 = v47 * (1.0 - (v49 + v49));
  sub_258B008C4();
  v52 = v51;
  sub_258B008C4();
  if (v53 >= v52)
  {
    v53 = v52;
  }

  v54 = v49 * v53;
  sub_258B008C4();
  v56 = v55 - v50 - (v54 + v54);
  v57 = *(v48 + 8);
  sub_258B01FF4();
  v58 = sub_258B02024();

  v59 = sub_258B018D4();
  sub_258B00654();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  LOBYTE(v94) = 0;
  *&v68 = v56 * a5 + a4;
  v69 = v84;
  sub_258A0E948(v44, v84, sub_258A0E408);
  v70 = v86;
  sub_258A0E948(v69, v86, sub_258A0E408);
  sub_258A0E398();
  v72 = (v70 + *(v71 + 48));
  *&v88 = v57;
  WORD4(v88) = 256;
  *&v89[0] = v58;
  v87 = xmmword_258B2E2A0;
  *(v89 + 8) = xmmword_258B2E2A0;
  *(&v89[1] + 1) = 0x3FF0000000000000;
  LOBYTE(v90) = v59;
  *(&v90 + 1) = v61;
  *&v91 = v63;
  *(&v91 + 1) = v65;
  *&v92 = v67;
  BYTE8(v92) = 0;
  v93 = v68;
  v73 = v89[0];
  *v72 = v88;
  v72[1] = v73;
  v74 = v90;
  v72[2] = v89[1];
  v72[3] = v74;
  v75 = v92;
  v72[4] = v91;
  v72[5] = v75;
  v72[6] = v93;
  sub_258A0E948(&v88, &v94, sub_258A0E55C);
  sub_258A0E9B0(v44, sub_258A0E408);
  v94 = v57;
  v95 = 256;
  v96 = v58;
  v97 = v87;
  v98 = 0x3FF0000000000000;
  v99 = v59;
  v100 = v61;
  v101 = v63;
  v102 = v65;
  v103 = v67;
  v104 = 0;
  v105 = v68;
  v106 = 0;
  sub_258A0E9B0(&v94, sub_258A0E55C);
  return sub_258A0E9B0(v69, sub_258A0E408);
}

uint64_t sub_258A0DCE8(uint64_t a1, double *a2)
{
  v3 = sub_258B00AC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  sub_258B008C4();
  v12 = v11;
  sub_258B008C4();
  if (v13 >= v12)
  {
    v13 = v12;
  }

  v14 = *a2;
  v15 = 1.0 - (v14 + v14);
  v16 = v13 * v15;
  sub_258B008C4();
  v18 = v17;
  sub_258B008C4();
  if (v19 >= v18)
  {
    v19 = v18;
  }

  v20 = v14 * v19;
  sub_258B008C4();
  v22 = v21;
  sub_258B008C4();
  if (v23 >= v22)
  {
    v23 = v22;
  }

  v24 = v15 * v23;
  sub_258B008C4();
  v26 = v25;
  sub_258B008C4();
  if (v27 >= v26)
  {
    v27 = v26;
  }

  v28 = v14 * v27;
  sub_258B008C4();
  v30 = v29 - v24 - (v28 + v28);
  sub_258B006F4();
  v32 = v31 - v20 + v16 * -0.5;
  v33 = a2 + *(type metadata accessor for ValenceSliderStyle() + 20);
  sub_258AC1778(v10);
  (*(v4 + 104))(v8, *MEMORY[0x277CDFA90], v3);
  LOBYTE(v33) = sub_258B00AB4();
  v34 = *(v4 + 8);
  v34(v8, v3);
  v34(v10, v3);
  v35 = v30 - v32;
  if ((v33 & 1) == 0)
  {
    v35 = v32;
  }

  v36 = v35 / v30;
  v43 = sub_258B015A4();
  v44 = v37;
  v45 = v38;
  v41 = v36;
  v40 = xmmword_258B2E2B0;
  sub_258B02A44();
  *&v40 = v42;
  sub_258A0E890();
  sub_258B02314();
}

uint64_t sub_258A0DF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B015B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  (*(v11 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  sub_258A0E948(v4, v9, type metadata accessor for ValenceSliderStyle);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v11 + 32))(v15 + v13, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  result = sub_258A0E8E0(v9, v15 + v14, type metadata accessor for ValenceSliderStyle);
  *a3 = sub_258A0E174;
  a3[1] = v15;
  return result;
}

uint64_t sub_258A0E174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_258B015B4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ValenceSliderStyle() - 8);
  v9 = (v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));

  return sub_258A0CF18(a1, v2 + v6, v9, a2);
}

uint64_t sub_258A0E258(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A0E2A0()
{
  if (!qword_27F96E130)
  {
    sub_258A0E334(255, &qword_27F96E138, sub_258A0E398, MEMORY[0x277CE14B8]);
    sub_258A0E638();
    v0 = sub_258B022E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E130);
    }
  }
}

void sub_258A0E334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A0E398()
{
  if (!qword_27F96E140)
  {
    sub_258A0E408();
    sub_258A0E55C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96E140);
    }
  }
}

void sub_258A0E408()
{
  if (!qword_27F96E148)
  {
    sub_258B02384();
    sub_258A0E470();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E148);
    }
  }
}

void sub_258A0E470()
{
  if (!qword_27F96E150)
  {
    sub_258A0E504();
    sub_258A0E258(&qword_27F96E160, sub_258A0E504);
    v0 = sub_258B015C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E150);
    }
  }
}

void sub_258A0E504()
{
  if (!qword_27F96E158)
  {
    v0 = sub_258B013B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E158);
    }
  }
}

void sub_258A0E5D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_258A0E638()
{
  result = qword_27F96E180;
  if (!qword_27F96E180)
  {
    sub_258A0E334(255, &qword_27F96E138, sub_258A0E398, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E180);
  }

  return result;
}

void sub_258A0E6C0()
{
  if (!qword_27F96E188)
  {
    sub_258A0E334(255, &qword_27F96E138, sub_258A0E398, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E188);
    }
  }
}

uint64_t sub_258A0E758(uint64_t a1)
{
  v3 = *(type metadata accessor for ValenceSliderStyle() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_258B008E4() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_258B015B4() - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_258A0DCE8(a1, (v1 + v4));
}

void sub_258A0E890()
{
  if (!qword_27F96E198)
  {
    v0 = sub_258B02364();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E198);
    }
  }
}

uint64_t sub_258A0E8E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A0E948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A0E9B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A0EA10()
{
  if (!qword_27F96E1A8)
  {
    sub_258A0EB34();
    sub_258A0E2A0();
    sub_2589D27E4();
    sub_258A0E258(&qword_27F96E190, sub_258A0E2A0);
    sub_258A0E258(&qword_27F96CE48, sub_2589D27E4);
    swift_getOpaqueTypeConformance2();
    v0 = sub_258B009C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E1A8);
    }
  }
}

void sub_258A0EB34()
{
  if (!qword_27F96E1B0)
  {
    sub_258A0E2A0();
    sub_2589D27E4();
    sub_258A0E258(&qword_27F96E190, sub_258A0E2A0);
    sub_258A0E258(&qword_27F96CE48, sub_2589D27E4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96E1B0);
    }
  }
}

void sub_258A0ED00(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_258A0EE38(void *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v77[1] = *MEMORY[0x277D85DE8];
  v8 = sub_258AFFE44();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v69 - v15;
  MEMORY[0x28223BE20](v14);
  v71 = &v69 - v17;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_framerateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink] = 0;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkTarget] = 0;
  v18 = &v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLinkWillRenderFrame];
  *v18 = 0;
  v18[1] = 0;
  v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_commandQueueIsEmpty] = 1;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_metalArchive] = 0;
  v19 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer] = 0;
  v20 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_sampleCount;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_sampleCount] = 1;
  v21 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_superSampling;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_superSampling] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_currentTime] = 0;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_timeDelta] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_lastDrawableSize] = _Q0;
  *&v4[v19] = a1;
  *&v4[v20] = a2;
  *&v4[v21] = a3;
  if (a1)
  {
    v27 = a1;
    v28 = [v27 device];
    if (!v28)
    {
LABEL_21:
      result = sub_258B03294();
      __break(1u);
      return result;
    }

    v29 = v28;
  }

  else
  {
    v29 = MTLCreateSystemDefaultDevice();
    if (!v29)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  v69 = v13;
  v70 = a1;
  v72 = v8;
  v73 = v9;
  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device] = v29;
  v30 = [swift_unknownObjectRetain() newCommandQueue];
  swift_unknownObjectRelease();
  if (!v30)
  {
    goto LABEL_21;
  }

  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_commandQueue] = v30;
  swift_unknownObjectRetain_n();
  v31 = sub_258B02AD4();
  [v30 setLabel_];
  swift_unknownObjectRelease();

  v32 = type metadata accessor for MetalRenderer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [objc_opt_self() bundleForClass_];
  v35 = sub_258B02AD4();
  v36 = sub_258B02AD4();
  v37 = [v34 URLForResource:v35 withExtension:v36];

  if (!v37)
  {
    goto LABEL_21;
  }

  sub_258AFFE24();

  (*(v73 + 32))(v71, v16, v72);
  v38 = *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device];
  swift_unknownObjectRetain();
  v39 = sub_258AFFE14();
  v77[0] = 0;
  v40 = [v38 newLibraryWithURL:v39 error:v77];
  swift_unknownObjectRelease();

  v41 = v77[0];
  if (!v40)
  {
    v67 = v77[0];
    v68 = sub_258AFFDC4();

    swift_willThrow();
    goto LABEL_21;
  }

  *&v4[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_defaultLibrary] = v40;
  v76.receiver = v4;
  v76.super_class = v32;
  swift_unknownObjectRetain();
  v42 = v41;
  v43 = objc_msgSendSuper2(&v76, sel_init);
  v44 = v70;
  if (v70)
  {
    sub_258A0F680();
    v45 = *&v43[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_displayLink];
    if (v45)
    {
      [v45 setPaused_];
    }
  }

  v46 = sub_258B02AD4();
  v47 = sub_258B02AD4();
  v48 = [v34 pathForResource:v46 ofType:v47];

  if (v48)
  {
    sub_258B02B14();

    v49 = [objc_allocWithZone(MEMORY[0x277CD6C88]) init];
    v50 = v69;
    sub_258AFFE04();

    v51 = sub_258AFFE14();
    v52 = v72;
    v54 = v73 + 8;
    v53 = *(v73 + 8);
    v53(v50, v72);
    [v49 setUrl_];

    v55 = *&v43[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device];
    v77[0] = 0;
    v56 = [v55 newBinaryArchiveWithDescriptor:v49 error:v77];
    v57 = v77[0];
    if (v56)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v53(v71, v52);
      v58 = *&v43[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_metalArchive];
      *&v43[OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_metalArchive] = v56;

      swift_unknownObjectRelease();
    }

    else
    {
      v59 = v57;
      v60 = sub_258AFFDC4();

      swift_willThrow();
      sub_258A1043C();
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_258B2BE60;
      *(v61 + 56) = MEMORY[0x277D837D0];
      *(v61 + 32) = 0xD000000000000049;
      *(v61 + 40) = 0x8000000258B36D70;
      swift_getErrorValue();
      v73 = v54;
      v62 = v74;
      v63 = v75;
      *(v61 + 88) = v75;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v61 + 64));
      (*(*(v63 - 8) + 16))(boxed_opaque_existential_1, v62, v63);
      sub_258B034F4();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v53(v71, v72);
    }
  }

  else
  {
    (*(v73 + 8))(v71, v72);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v65 = *MEMORY[0x277D85DE8];
  return v43;
}