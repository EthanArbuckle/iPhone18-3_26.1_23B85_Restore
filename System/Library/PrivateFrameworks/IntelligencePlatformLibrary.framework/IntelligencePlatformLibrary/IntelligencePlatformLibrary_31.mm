void sub_193685A30()
{
  v1 = v0;
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        v4 = *(type metadata accessor for AppleIntelligenceAvailability() + 28);
        goto LABEL_11;
      case 2:
        v7 = *(type metadata accessor for AppleIntelligenceAvailability() + 32);
LABEL_11:
        sub_193498018();
        goto LABEL_14;
      case 3:
        v6 = *(type metadata accessor for AppleIntelligenceAvailability() + 36);
        goto LABEL_9;
      case 4:
        v6 = *(type metadata accessor for AppleIntelligenceAvailability() + 40);
LABEL_9:
        OUTLINED_FUNCTION_8_2(v6);
        sub_19393C0F0();
        goto LABEL_14;
      case 5:
        v5 = *(type metadata accessor for AppleIntelligenceAvailability() + 44);
        sub_1934976E4();
        goto LABEL_14;
      case 6:
        v8 = type metadata accessor for AppleIntelligenceAvailability();
        OUTLINED_FUNCTION_8_2(*(v8 + 48));
        sub_19393C1B0();
        goto LABEL_14;
      case 7:
        v9 = *(type metadata accessor for AppleIntelligenceAvailability() + 52);
        sub_1934982A8();
LABEL_14:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_193685BC8()
{
  v2 = v1;
  v3 = type metadata accessor for AppleIntelligenceAvailability();
  OUTLINED_FUNCTION_15_41(v3[7]);
  if (!v4)
  {
    OUTLINED_FUNCTION_3_59();
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
    v2 = v1;
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_15_41(v3[8]);
    if (v4 || (OUTLINED_FUNCTION_3_59(), OUTLINED_FUNCTION_78_1(), sub_193447600(), (v2 = v1) == 0))
    {
      if (*(v0 + v3[9]) == 2 || (OUTLINED_FUNCTION_15_11(), sub_19393C2E0(), (v2 = v1) == 0))
      {
        if (*(v0 + v3[10]) == 2 || (OUTLINED_FUNCTION_15_11(), sub_19393C2E0(), (v2 = v1) == 0))
        {
          sub_193685D64(v0);
          if (!v2)
          {
            if (*(*(v0 + v3[12]) + 16))
            {
              OUTLINED_FUNCTION_15_11();
              sub_19393C380();
            }

            v5 = v0 + v3[13];
            if ((*(v5 + 8) & 1) == 0)
            {
              v12 = *v5;
              OUTLINED_FUNCTION_78_1();
              sub_193447324(v6, v7, v8, v9, v10, v11);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_193685D64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_19393BE00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppleIntelligenceAvailability();
  sub_1934DE90C(a1 + *(v11 + 44), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1934DFCD4(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_193451F04(v10, 5, 2020175477, 0xE400000000000000);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_193685F84()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABBB8);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FAC0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v5 = "RegionUnknown";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  (*(v8 + 104))(v5, v6);
  return sub_19393C410();
}

void sub_193686108()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA86B8);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FBB0;
  v7 = (v6 + v5);
  v8 = v6 + v5 + qword_1EAEA86F0;
  *v7 = 1;
  *v8 = "isDeviceEligible";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  (v12)(v8, v9, v10);
  v13 = OUTLINED_FUNCTION_3_1(v7 + v3);
  *v14 = 2;
  *v13 = "shouldBlockAppleIntelligenceAssets";
  *(v13 + 8) = 34;
  *(v13 + 16) = 2;
  v12();
  v15 = OUTLINED_FUNCTION_3_1(v7 + 2 * v3);
  *v16 = 3;
  *v15 = "waitlistStatus";
  *(v15 + 8) = 14;
  *(v15 + 16) = 2;
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936862D4()
{
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      sub_1934982A8();
    }

    else if (v1 == 2 || v1 == 1)
    {
      sub_19393C0F0();
    }
  }
}

uint64_t sub_193686388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 1);
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 17);
  if (*v3 != 2)
  {
    result = sub_19393C2E0();
  }

  if (!v4)
  {
    if (v7 != 2)
    {
      result = sub_19393C2E0();
    }

    if ((v10 & 1) == 0)
    {
      v12 = v8;
      v13 = v9 & 1;
      return sub_193447324(&v12, 3, a2, &type metadata for AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus, a3, &off_1F07DCAF8);
    }
  }

  return result;
}

void sub_1936864CC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEA86D0);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FBD0;
  v7 = v6 + v5 + qword_1EAEA8708;
  *(v6 + v5) = 0;
  *v7 = "WaitlistStatusUnknown";
  *(v7 + 8) = 21;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_2_0();
  v11();
  v12 = OUTLINED_FUNCTION_3_1(v6 + v5 + v3);
  *v13 = 1;
  *v12 = "WaitlistStatusNotYetJoined";
  *(v12 + 8) = 26;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  v14 = OUTLINED_FUNCTION_3_1(v6 + v5 + 2 * v3);
  *v15 = 2;
  *v14 = "WaitlistStatusJoinedOrDequeued";
  *(v14 + 8) = 30;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  v16 = OUTLINED_FUNCTION_3_1(v6 + v5 + 3 * v3);
  *v17 = 3;
  *v16 = "WaitlistStatusJoined";
  *(v16 + 8) = 20;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  v18 = OUTLINED_FUNCTION_3_1(v6 + v5 + 4 * v3);
  *v19 = 4;
  *v18 = "WaitlistStatusDequeued";
  *(v18 + 8) = 22;
  *(v18 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t AppleIntelligenceAvailability.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceAvailability();
  return sub_1934488AC(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AppleIntelligenceAvailability()
{
  result = qword_1ED50F3E0;
  if (!qword_1ED50F3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppleIntelligenceAvailability.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceAvailability();
  return sub_1934488AC(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

double AppleIntelligenceAvailability.appleIntelligenceUseCase.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceAvailability();
  *&result = OUTLINED_FUNCTION_7_37(*(v0 + 28)).n128_u64[0];
  return result;
}

uint64_t AppleIntelligenceAvailability.appleIntelligenceUseCase.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  result = type metadata accessor for AppleIntelligenceAvailability();
  v6 = v1 + *(result + 28);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

double sub_1936869A4@<D0>(uint64_t a1@<X8>)
{
  *&result = 3;
  *a1 = xmmword_19396F4D0;
  *(a1 + 16) = 0;
  return result;
}

double AppleIntelligenceAvailability.appleIntelligenceDiffusionUseCase.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceAvailability();
  *&result = OUTLINED_FUNCTION_7_37(*(v0 + 32)).n128_u64[0];
  return result;
}

uint64_t AppleIntelligenceAvailability.appleIntelligenceDiffusionUseCase.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  result = type metadata accessor for AppleIntelligenceAvailability();
  v6 = v1 + *(result + 32);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t AppleIntelligenceAvailability.isAppleIntelligenceToggleEnabled.setter(char a1)
{
  result = type metadata accessor for AppleIntelligenceAvailability();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t AppleIntelligenceAvailability.hasEngagedWithAppleIntelligenceCFU.setter(char a1)
{
  result = type metadata accessor for AppleIntelligenceAvailability();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t AppleIntelligenceAvailability.datePostedAppleIntelligenceCFU.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceAvailability();
  return sub_1934488AC(v1 + *(v2 + 44), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t AppleIntelligenceAvailability.languages.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppleIntelligenceAvailability() + 48));
}

uint64_t AppleIntelligenceAvailability.languages.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_58() + 48);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t AppleIntelligenceAvailability.region.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for AppleIntelligenceAvailability();
  v3 = (v1 + *(result + 52));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t AppleIntelligenceAvailability.region.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for AppleIntelligenceAvailability();
  v5 = v1 + *(result + 52);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_193686DC0@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceAvailability.Region.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193686DE8@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceAvailability.Region.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193686E18()
{
  sub_19393CAB0();
  v0 = AppleIntelligenceAvailability.Region.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_193686E68()
{
  sub_19393CAB0();
  v0 = AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_193686F54()
{
  sub_19393CAB0();
  v0 = AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_193686FAC()
{
  sub_19393CAB0();
  v0 = AppleIntelligenceAvailability.Region.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_193686FF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_19368705C();
}

void AppleIntelligenceAvailability.UseCaseInfo.waitlistStatus.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t AppleIntelligenceAvailability.UseCaseInfo.waitlistStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  *(v1 + 17) = v3;
  return result;
}

void AppleIntelligenceAvailability.UseCaseInfo.init()(uint64_t a1@<X8>)
{
  *a1 = 514;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

uint64_t sub_193687178@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936871A0@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936871C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_193686E68();
}

uint64_t sub_1936871D4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_193686F08();
}

uint64_t sub_1936871E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_193686F54();
}

BOOL sub_1936871EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_193687004();
}

uint64_t static AppleIntelligenceAvailability.UseCaseInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = a1[16];
  v6 = a1[17];
  v7 = *a2;
  v8 = a2[1];
  if (v2 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v7 == 2 || ((v7 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  if (v3 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 == 2 || ((v8 ^ v3) & 1) != 0)
    {
      return result;
    }
  }

  if (v6)
  {
    if ((a2[17] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[17])
    {
      return 0;
    }

    v11 = *(a2 + 1);
    v12 = a2[16] & 1;
    v10 = AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.rawValue.getter();
    if (v10 != AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.rawValue.getter())
    {
      return 0;
    }
  }

  return 1;
}

uint64_t AppleIntelligenceAvailability.UseCaseInfo.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v4)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  v6 = AppleIntelligenceAvailability.UseCaseInfo.WaitlistStatus.rawValue.getter();
  return MEMORY[0x193B18030](v6);
}

uint64_t AppleIntelligenceAvailability.UseCaseInfo.hashValue.getter()
{
  OUTLINED_FUNCTION_2_61();
  sub_19393CAB0();
  AppleIntelligenceAvailability.UseCaseInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193687424()
{
  OUTLINED_FUNCTION_2_61();
  sub_19393CAB0();
  AppleIntelligenceAvailability.UseCaseInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceAvailability.hashValue.getter()
{
  sub_19393CAB0();
  AppleIntelligenceAvailability.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1936874B0()
{
  sub_19393CAB0();
  AppleIntelligenceAvailability.hash(into:)(v1);
  return sub_19393CB00();
}

unint64_t sub_193687554()
{
  result = qword_1EAE3FE58;
  if (!qword_1EAE3FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FE58);
  }

  return result;
}

unint64_t sub_1936875B0()
{
  result = qword_1EAE3FE60;
  if (!qword_1EAE3FE60)
  {
    type metadata accessor for AppleIntelligenceAvailability();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FE60);
  }

  return result;
}

uint64_t sub_193687634()
{
  sub_19349D140();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198();
    if (v4 > 0x3F)
    {
      return v3;
    }

    OUTLINED_FUNCTION_0_81(v3, &qword_1ED506D28, &type metadata for AppleIntelligenceAvailability.UseCaseInfo);
    if (v5 > 0x3F)
    {
      return v3;
    }

    OUTLINED_FUNCTION_0_81(v3, &qword_1ED506698, MEMORY[0x1E69E6370]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_193687794(319, qword_1ED507ED8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v1 = v7;
      if (v8 <= 0x3F)
      {
        OUTLINED_FUNCTION_0_81(v7, &qword_1ED506D20, &type metadata for AppleIntelligenceAvailability.Region);
        v1 = v9;
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_193687794(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for AppleIntelligenceAvailability.UseCaseInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[18])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

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

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAvailability.UseCaseInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1936878D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511718);
  v5 = __swift_project_value_buffer(v4, qword_1ED511718);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.PlanGenerationTelemetry.attribute(_:)(void (*a1)(void))
{
  result = sub_193687AFC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193687B34(void (*a1)(void))
{
  result = sub_193687AFC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193687B9C(uint64_t a1)
{
  result = sub_193687BC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193687BC4()
{
  result = qword_1ED5068B0;
  if (!qword_1ED5068B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5068B0);
  }

  return result;
}

_BYTE *_s23PlanGenerationTelemetryOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowPlanGenerationTelemetry.json()()
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
  v12 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE70, &qword_193979978);
  OUTLINED_FUNCTION_4_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v29 - v23;
  OUTLINED_FUNCTION_6_49();
  sub_19368AFF8(v0, v18, v25);
  sub_1934470C8(v18, v12, v24);
  sub_19393C080();
  sub_193687E74();
  sub_19393C250();
  (*(v6 + 8))(v11, v3);
  sub_19344E6DC(v24, &qword_1EAE3FE70, &qword_193979978);
  OUTLINED_FUNCTION_27();
  result._object = v27;
  result._countAndFlagsBits = v26;
  return result;
}

unint64_t sub_193687E74()
{
  result = qword_1EAE3FE78;
  if (!qword_1EAE3FE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3FE70, &qword_193979978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FE78);
  }

  return result;
}

uint64_t static IntelligenceFlowPlanGenerationTelemetry.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = OUTLINED_FUNCTION_47(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE70, &qword_193979978);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;

  sub_19393C060();
  sub_193687E74();
  result = sub_19393C260();
  if (!v1)
  {
    OUTLINED_FUNCTION_21_35();
    return sub_193689208(v12, a1, v14);
  }

  return result;
}

void static IntelligenceFlowPlanGenerationTelemetry.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v37 = v3;
  v38 = v2;
  v36 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE70, &qword_193979978);
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_6();
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v35 - v25;
  if (*sub_1936945BC() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    (*(v18 + 16))(v23, v26, v15);
    sub_193450688(v10, v8);
    sub_193687E74();
    sub_19393C280();
    (*(v18 + 8))(v26, v15);
    if (!v0)
    {
      OUTLINED_FUNCTION_21_35();
      v28 = v37;
      sub_193689208(v1, v37, v29);
      v30 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
      v31 = *(v30 + 20);
      sub_19344E6DC(v28 + v31, &qword_1EAE3A9E8, &qword_19394F800);
      v32 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v32);
      (*(v33 + 16))(v28 + v31, v36, v32);
      __swift_storeEnumTagSinglePayload(v28 + v31, 0, 1, v32);
      v34 = *(v30 + 24);
      sub_19344E6DC(v28 + v34, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v38, v28 + v34);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v27 = v6;
    *(v27 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.serialize()()
{
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE70, &qword_193979978);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  OUTLINED_FUNCTION_6_49();
  sub_19368AFF8(v0, v7, v14);
  sub_1934470C8(v7, v1, v13);
  sub_193687E74();
  sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3FE70, &qword_193979978);
  return OUTLINED_FUNCTION_13_0();
}

void sub_193688448()
{
  OUTLINED_FUNCTION_26();
  v151 = v1;
  v152 = v0;
  v3 = v2;
  v5 = v4;
  v150 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE98, &qword_193979990);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v143 = &v141 - v11;
  v142 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
  v12 = OUTLINED_FUNCTION_4_1(v142);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v141 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE90, &unk_193979E60);
  OUTLINED_FUNCTION_47(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v146 = &v141 - v21;
  v145 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(0);
  v22 = OUTLINED_FUNCTION_4_1(v145);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v144 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE88, &qword_193979988);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v149 = &v141 - v31;
  v148 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(0);
  v32 = OUTLINED_FUNCTION_4_1(v148);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_1();
  v147 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v141 - v41;
  v43 = type metadata accessor for MonotonicTimestamp();
  v44 = OUTLINED_FUNCTION_4_1(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_1();
  v49 = v48 - v47;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE80, &qword_193979980);
  OUTLINED_FUNCTION_47(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v141 - v54;
  v56 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](0x74654D746E657665);
  OUTLINED_FUNCTION_5_1();
  v61 = v60 - v59;
  v63 = v5 == v62 && v3 == v58;
  if (v63 || (sub_19393CA30() & 1) != 0)
  {
    v64 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    v65 = OUTLINED_FUNCTION_35_3(*(v64 + 28));
    sub_193448758(v65, v55, v66, v67);
    v68 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v68, v69, v56);
    if (!v63)
    {
      v74 = OUTLINED_FUNCTION_54_15();
      sub_193689208(v74, v61, v75);
      sub_193494798(v56, &off_1F07DCF10, v150);
      v76 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata;
      v77 = v61;
LABEL_12:
      sub_19368B43C(v77, v76);
      goto LABEL_13;
    }

    v70 = &qword_1EAE3FE80;
    v71 = &qword_193979980;
    goto LABEL_9;
  }

  v78 = v5 == 0x6D617473656D6974 && v3 == 0xE900000000000070;
  if (v78 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
  {
    v79 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    v80 = OUTLINED_FUNCTION_35_3(*(v79 + 32));
    sub_193448758(v80, v42, v81, v82);
    OUTLINED_FUNCTION_6_3(v42, 1, v43);
    if (!v63)
    {
      sub_193689208(v42, v49, type metadata accessor for MonotonicTimestamp);
      sub_193494798(v43, &off_1F07BD958, v150);
      v76 = type metadata accessor for MonotonicTimestamp;
      v77 = v49;
      goto LABEL_12;
    }

    v70 = &qword_1EAE3B498;
    v71 = &unk_193959120;
    v72 = v42;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38();
  v84 = v5 == 0xD000000000000010 && v83 == v3;
  if (v84 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
  {
    v85 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    OUTLINED_FUNCTION_6_36(*(v85 + 36));
    if (v63)
    {
      goto LABEL_11;
    }

    v86 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGRequestContext;
    v87 = &off_1F07DD020;
LABEL_29:
    sub_193494798(v86, v87, v150);
    goto LABEL_13;
  }

  v88 = v5 == 0x74706D6F72506770 && v3 == 0xED00003172656954;
  if (v88 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
  {
    v89 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    v90 = OUTLINED_FUNCTION_35_3(*(v89 + 40));
    v55 = v149;
    sub_193448758(v90, v149, v91, v92);
    v93 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v93, v94, v148);
    if (!v63)
    {
      v95 = OUTLINED_FUNCTION_54_15();
      v96 = v147;
      sub_193689208(v95, v147, v97);
      OUTLINED_FUNCTION_13_0();
      sub_193494798(v98, v99, v100);
      v101 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1;
LABEL_38:
      v76 = v101;
      v77 = v96;
      goto LABEL_12;
    }

    v70 = &qword_1EAE3FE88;
    v71 = &qword_193979988;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v103 = v5 == 0xD000000000000015 && v102 == v3;
  if (v103 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
  {
    v104 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    v105 = OUTLINED_FUNCTION_35_3(*(v104 + 44));
    v55 = v146;
    sub_193448758(v105, v146, v106, v107);
    v108 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v108, v109, v145);
    if (!v63)
    {
      v110 = OUTLINED_FUNCTION_54_15();
      v96 = v144;
      sub_193689208(v110, v144, v111);
      OUTLINED_FUNCTION_13_0();
      sub_193494798(v112, v113, v114);
      v101 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1;
      goto LABEL_38;
    }

    v70 = &qword_1EAE3FE90;
    v71 = &unk_193979E60;
LABEL_9:
    v72 = v55;
LABEL_10:
    sub_19344E6DC(v72, v70, v71);
LABEL_11:
    v73 = v150;
    *v150 = 0u;
    *(v73 + 1) = 0u;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_38();
  v116 = v5 == 0xD000000000000017 && v115 == v3;
  if (v116 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
  {
    v117 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    v118 = OUTLINED_FUNCTION_35_3(*(v117 + 48));
    v55 = v143;
    sub_193448758(v118, v143, v119, v120);
    v121 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v121, v122, v142);
    if (!v63)
    {
      v123 = OUTLINED_FUNCTION_54_15();
      v96 = v141;
      sub_193689208(v123, v141, v124);
      OUTLINED_FUNCTION_13_0();
      sub_193494798(v125, v126, v127);
      v101 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext;
      goto LABEL_38;
    }

    v70 = &qword_1EAE3FE98;
    v71 = &qword_193979990;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v129 = v5 == 0xD000000000000019 && v128 == v3;
  if (v129 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
  {
    v130 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    OUTLINED_FUNCTION_6_36(*(v130 + 52));
    if (v63)
    {
      goto LABEL_11;
    }

    v86 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGOverridesRequestContext;
    v87 = &off_1F07DD060;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_38();
  v132 = v5 == 0xD00000000000001ELL && v131 == v3;
  if (v132 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
  {
    v133 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    OUTLINED_FUNCTION_6_36(*(v133 + 56));
    if (v63)
    {
      goto LABEL_11;
    }

    v86 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanRequestContext;
    v87 = &off_1F07DD070;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_38();
  v135 = v5 == 0xD000000000000015 && v134 == v3;
  if (v135 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
  {
    v153 = *(v152 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0) + 60));

    sub_193494798(&type metadata for IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanContext, &off_1F07DD080, v150);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    v137 = v136;
    *v136 = v5;
    v136[1] = v3;
    v138 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    OUTLINED_FUNCTION_126(v138);
    OUTLINED_FUNCTION_6_49();
    sub_19368AFF8(v152, v139, v140);
    *(v137 + 48) = 1;
    swift_willThrow();
  }

LABEL_13:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193688D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x6E69616D6F64;
  v8 = *v3;
  v7 = v3[1];
  v9 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v9 || (v11 = v3[2], v12 = *(v3 + 24), result = OUTLINED_FUNCTION_42_9(), (result & 1) != 0))
  {
    if (v7)
    {
      return sub_1934948FC();
    }

    goto LABEL_14;
  }

  v13 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v13 || (result = OUTLINED_FUNCTION_42_9(), (result & 1) != 0))
  {
    if ((v12 & 1) == 0)
    {
      return sub_1934948FC();
    }

LABEL_14:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v15 = v14;
  *v14 = a1;
  v14[1] = a2;
  v14[5] = &type metadata for IntelligenceFlowPlanGenerationTelemetry.IFError;
  OUTLINED_FUNCTION_184();
  v16 = swift_allocObject();
  v15[2] = v16;
  *(v16 + 16) = v8;
  *(v16 + 24) = v7;
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  *(v15 + 48) = 1;
  swift_willThrow();
}

void sub_193688EDC()
{
  OUTLINED_FUNCTION_26();
  v43 = v1;
  v5 = v4;
  v7 = v6;
  v42 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v10 = OUTLINED_FUNCTION_47(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_61_4();
  v17 = type metadata accessor for AIML.UUID();
  v18 = OUTLINED_FUNCTION_4_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_66_4();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_98_6();
  v22 = v7 == 0x7365757165526669 && v5 == 0xEB00000000644974;
  if (v22 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    sub_193448758(v43, v0, &qword_1EAE3BCA0, &unk_19395C320);
    v23 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v23, v24, v17);
    if (!v22)
    {
      OUTLINED_FUNCTION_1_61();
      sub_193689208(v0, v3, v26);
      sub_193494798(v17, &off_1F07C3F90, v42);
      OUTLINED_FUNCTION_0_82();
      v28 = v3;
LABEL_11:
      sub_19368B43C(v28, v27);
      goto LABEL_12;
    }

    v25 = v0;
  }

  else
  {
    v29 = v7 == 0x53676E6974736F70 && v5 == 0xED000064496E6170;
    if (v29 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
    {
      v30 = v43 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0) + 20);
      if ((*(v30 + 8) & 1) == 0)
      {
        v44 = *v30;
        sub_1934948FC();
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v31 = v7 == 0x6C6379436E616C70 && v5 == 0xEB00000000644965;
    if (!v31 && (OUTLINED_FUNCTION_0_18() & 1) == 0)
    {
      sub_19349AB64();
      v37 = OUTLINED_FUNCTION_13_9();
      v39 = OUTLINED_FUNCTION_63_12(v37, v38);
      v40 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(v39);
      v41 = OUTLINED_FUNCTION_126(v40);
      sub_19368AFF8(v43, v41, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata);
      OUTLINED_FUNCTION_74_10();

      goto LABEL_12;
    }

    v32 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
    v33 = OUTLINED_FUNCTION_35_3(*(v32 + 24));
    sub_193448758(v33, v15, v34, v35);
    OUTLINED_FUNCTION_6_3(v15, 1, v17);
    if (!v22)
    {
      OUTLINED_FUNCTION_1_61();
      sub_193689208(v15, v2, v36);
      sub_193494798(v17, &off_1F07C3F90, v42);
      OUTLINED_FUNCTION_0_82();
      v28 = v2;
      goto LABEL_11;
    }

    v25 = v15;
  }

  sub_19344E6DC(v25, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  *v42 = 0u;
  *(v42 + 16) = 0u;
LABEL_12:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193689208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

void sub_19368927C()
{
  OUTLINED_FUNCTION_26();
  v5 = v0;
  v7 = v6;
  OUTLINED_FUNCTION_7_38();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_6();
  v12 = type metadata accessor for AIML.UUID();
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_28();
  v16 = v1 == v4 && v7 == 0xE600000000000000;
  if (v16 || (sub_19393CA30() & 1) != 0)
  {
    sub_193448758(v5, v2, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_4();
    if (v16)
    {
      sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_1_61();
      v20 = OUTLINED_FUNCTION_56_15(v17, v18, v19);
      OUTLINED_FUNCTION_80_0(v20, v21, &off_1F07C3F90);
      OUTLINED_FUNCTION_0_82();
      sub_19368B43C(v3, v22);
    }
  }

  else
  {
    sub_19349AB64();
    v23 = OUTLINED_FUNCTION_13_9();
    v25 = OUTLINED_FUNCTION_51_0(v23, v24);
    v26 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted(v25);
    OUTLINED_FUNCTION_152(v26);
    OUTLINED_FUNCTION_22_31();
    sub_19368AFF8(v5, v27, v28);
    OUTLINED_FUNCTION_65_1();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193689410()
{
  OUTLINED_FUNCTION_184_0();
  v38 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v10 = OUTLINED_FUNCTION_47(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_98_6();
  v17 = type metadata accessor for AIML.UUID();
  v18 = OUTLINED_FUNCTION_4_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_66_4();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_61_4();
  v22 = v8 == 0x6E6F73616572 && v6 == 0xE600000000000000;
  if (!v22 && (OUTLINED_FUNCTION_14_30() & 1) == 0)
  {
    v23 = v8 == 0x64496B6E696CLL && v6 == 0xE600000000000000;
    if (v23 || (OUTLINED_FUNCTION_14_30() & 1) != 0)
    {
      v24 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
      sub_193448758(v1 + *(v24 + 20), v3, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_6_3(v3, 1, v17);
      if (!v22)
      {
        OUTLINED_FUNCTION_1_61();
        sub_193689208(v3, v0, v26);
        sub_193494798(v17, &off_1F07C3F90, v38);
        OUTLINED_FUNCTION_0_82();
        v28 = v0;
LABEL_19:
        sub_19368B43C(v28, v27);
        goto LABEL_18;
      }

      v25 = v3;
    }

    else
    {
      v29 = v8 == 0xD000000000000011 && 0x8000000193A197E0 == v6;
      if (!v29 && (OUTLINED_FUNCTION_14_30() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        *v34 = v8;
        v34[1] = v6;
        v35 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
        OUTLINED_FUNCTION_126(v35);
        OUTLINED_FUNCTION_25_31();
        sub_19368AFF8(v1, v36, v37);
        OUTLINED_FUNCTION_74_10();

        goto LABEL_18;
      }

      v30 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
      sub_193448758(v1 + *(v30 + 24), v15, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_6_3(v15, 1, v17);
      if (!v22)
      {
        OUTLINED_FUNCTION_1_61();
        OUTLINED_FUNCTION_56_15(v31, v32, v33);
        sub_193494798(v17, &off_1F07C3F90, v38);
        OUTLINED_FUNCTION_0_82();
        v28 = v2;
        goto LABEL_19;
      }

      v25 = v15;
    }

    sub_19344E6DC(v25, &qword_1EAE3BCA0, &unk_19395C320);
    goto LABEL_17;
  }

  if (*(v1 + 9))
  {
LABEL_17:
    *v38 = 0u;
    *(v38 + 16) = 0u;
    goto LABEL_18;
  }

  v39 = *v1;
  v40 = *(v1 + 8) & 1;
  sub_1934948FC();
LABEL_18:
  OUTLINED_FUNCTION_183();
}

void sub_193689760()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_66_19();
  OUTLINED_FUNCTION_7_38();
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
  v16 = v2 == v5 && v1 == 0xE600000000000000;
  if (!v16)
  {
    v14 = OUTLINED_FUNCTION_59_0();
    if ((v14 & 1) == 0)
    {
      v23 = v2 == 0x746E496C65646F6DLL && v1 == 0xEE00656361667265;
      if (!v23 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
      {
        sub_19349AB64();
        v25 = OUTLINED_FUNCTION_13_9();
        v27 = OUTLINED_FUNCTION_19_0(v25, v26);
        v28 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(v27);
        OUTLINED_FUNCTION_152(v28);
        v29 = OUTLINED_FUNCTION_141();
        sub_19368AFF8(v29, v30, v31);
        OUTLINED_FUNCTION_65_1();

        goto LABEL_10;
      }

      v24 = (v0 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(0) + 20));
      if ((*(v24 + 9) & 1) == 0)
      {
        v32 = *v24;
        v33 = v24[1] & 1;
        OUTLINED_FUNCTION_51_17();
        sub_1934948FC();
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_94_9(v14, v15, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v16)
  {
    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_61();
  v20 = OUTLINED_FUNCTION_56_15(v17, v18, v19);
  OUTLINED_FUNCTION_80_0(v20, v21, &off_1F07C3F90);
  OUTLINED_FUNCTION_0_82();
  sub_19368B43C(v4, v22);
LABEL_10:
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

void sub_19368995C()
{
  OUTLINED_FUNCTION_184_0();
  v41 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v10 = OUTLINED_FUNCTION_47(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_98_6();
  v17 = type metadata accessor for AIML.UUID();
  v18 = OUTLINED_FUNCTION_4_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_66_4();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_61_4();
  v22 = v8 == 0x64496B6E696CLL && v6 == 0xE600000000000000;
  if (v22 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    sub_193448758(v1, v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v3, 1, v17);
    if (!v22)
    {
      OUTLINED_FUNCTION_1_61();
      sub_193689208(v3, v0, v24);
      sub_193494798(v17, &off_1F07C3F90, v41);
      OUTLINED_FUNCTION_0_82();
      v26 = v0;
LABEL_11:
      sub_19368B43C(v26, v25);
      goto LABEL_12;
    }

    v23 = v3;
  }

  else
  {
    v27 = v8 == 0xD000000000000011 && 0x8000000193A197E0 == v6;
    if (!v27 && (OUTLINED_FUNCTION_0_18() & 1) == 0)
    {
      v31 = v8 == OUTLINED_FUNCTION_33_20() && v6 == v30;
      if (!v31 && (OUTLINED_FUNCTION_0_18() & 1) == 0)
      {
        sub_19349AB64();
        v34 = OUTLINED_FUNCTION_13_9();
        v36 = OUTLINED_FUNCTION_63_12(v34, v35);
        v37 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(v36);
        OUTLINED_FUNCTION_126(v37);
        v38 = OUTLINED_FUNCTION_141();
        sub_19368AFF8(v38, v39, v40);
        OUTLINED_FUNCTION_74_10();

        goto LABEL_12;
      }

      v32 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
      OUTLINED_FUNCTION_65_15(*(v32 + 24));
      if (v33)
      {
        OUTLINED_FUNCTION_64_14(v33);
        sub_1934948FC();
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v28 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
    sub_193448758(v1 + *(v28 + 20), v15, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v15, 1, v17);
    if (!v22)
    {
      OUTLINED_FUNCTION_1_61();
      sub_193689208(v15, v2, v29);
      sub_193494798(v17, &off_1F07C3F90, v41);
      OUTLINED_FUNCTION_0_82();
      v26 = v2;
      goto LABEL_11;
    }

    v23 = v15;
  }

  sub_19344E6DC(v23, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  *v41 = 0u;
  *(v41 + 16) = 0u;
LABEL_12:
  OUTLINED_FUNCTION_183();
}

uint64_t sub_193689C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x65686374614D7369;
  v7 = *v3;
  v8 = a1 == 0x65686374614D7369 && a2 == 0xE900000000000064;
  if (v8 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v7 == 2)
    {
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      return sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    v10 = OUTLINED_FUNCTION_13_9();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 40) = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGOverridesMatchMetadata;
    *(v11 + 16) = v7;
    OUTLINED_FUNCTION_23_2(v10, v11);
  }

  return result;
}

void sub_193689D80(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_61_17();
  v9 = v9 && a2 == v8;
  if (v9 || (v10 = *(v3 + 32), v11 = *(v3 + 40), v44 = v10, (OUTLINED_FUNCTION_42_9() & 1) != 0))
  {
    if (v4 != 1)
    {
      OUTLINED_FUNCTION_60_17();
      OUTLINED_FUNCTION_59_16(v12, &type metadata for IntelligenceFlowPlanGenerationTelemetry.IFError, &off_1F07DCF00, v13, v14, v15, v16, v17, v39);
      sub_193494798(v18, v19, v20);
      goto LABEL_17;
    }
  }

  else
  {
    v21 = OUTLINED_FUNCTION_33_20();
    if (a1 != v21 || a2 != v22)
    {
      v21 = OUTLINED_FUNCTION_42_9();
      if ((v21 & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        *v30 = a1;
        v30[1] = a2;
        v30[5] = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceFailed;
        v31 = swift_allocObject();
        OUTLINED_FUNCTION_34_29(v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);

        OUTLINED_FUNCTION_76_13();
        goto LABEL_17;
      }
    }

    if (v11)
    {
      OUTLINED_FUNCTION_59_16(v21, MEMORY[0x1E69E6158], v23, v24, v25, v26, v27, v28, v44);
      sub_1934948FC();
      goto LABEL_17;
    }
  }

  *a3 = 0u;
  a3[1] = 0u;
LABEL_17:
  OUTLINED_FUNCTION_71_17();
}

void sub_193689EE8()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_66_19();
  v5 = v4;
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
  v16 = v5 == 0xD000000000000011 && v15 == v1;
  if (!v16)
  {
    v14 = OUTLINED_FUNCTION_59_0();
    if ((v14 & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v24 = v5 == 0xD000000000000010 && v23 == v1;
      if (v24 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
      {
        if (*(v0 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0) + 20)) != 3)
        {
          OUTLINED_FUNCTION_51_17();
          sub_193494798(v25, v26, v27);
          goto LABEL_10;
        }
      }

      else
      {
        v29 = v5 == OUTLINED_FUNCTION_40_22() && v1 == v28;
        if (!v29 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
        {
          sub_19349AB64();
          v32 = OUTLINED_FUNCTION_13_9();
          v34 = OUTLINED_FUNCTION_19_0(v32, v33);
          v35 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(v34);
          OUTLINED_FUNCTION_152(v35);
          OUTLINED_FUNCTION_24_33();
          sub_19368AFF8(v0, v36, v37);
          OUTLINED_FUNCTION_65_1();

          goto LABEL_10;
        }

        v30 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
        OUTLINED_FUNCTION_65_15(*(v30 + 24));
        if (v31)
        {
          OUTLINED_FUNCTION_64_14(v31);
          OUTLINED_FUNCTION_51_17();
          sub_1934948FC();
          goto LABEL_10;
        }
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_94_9(v14, v15, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v16)
  {
    sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_61();
  v20 = OUTLINED_FUNCTION_56_15(v17, v18, v19);
  OUTLINED_FUNCTION_80_0(v20, v21, &off_1F07C3F90);
  OUTLINED_FUNCTION_0_82();
  sub_19368B43C(v3, v22);
LABEL_10:
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

void sub_19368A118(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_61_17();
  v9 = v9 && a2 == v8;
  if (v9 || (v10 = *(v3 + 32), v11 = *(v3 + 40), v44 = v10, (OUTLINED_FUNCTION_42_9() & 1) != 0))
  {
    if (v4 != 1)
    {
      OUTLINED_FUNCTION_60_17();
      OUTLINED_FUNCTION_59_16(v12, &type metadata for IntelligenceFlowPlanGenerationTelemetry.IFError, &off_1F07DCF00, v13, v14, v15, v16, v17, v39);
      sub_193494798(v18, v19, v20);
      goto LABEL_17;
    }
  }

  else
  {
    v21 = OUTLINED_FUNCTION_40_22();
    if (a1 != v21 || a2 != v22)
    {
      v21 = OUTLINED_FUNCTION_42_9();
      if ((v21 & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        *v30 = a1;
        v30[1] = a2;
        v30[5] = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed;
        v31 = swift_allocObject();
        OUTLINED_FUNCTION_34_29(v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);

        OUTLINED_FUNCTION_76_13();
        goto LABEL_17;
      }
    }

    if (v11)
    {
      OUTLINED_FUNCTION_59_16(v21, MEMORY[0x1E69E6158], v23, v24, v25, v26, v27, v28, v44);
      sub_1934948FC();
      goto LABEL_17;
    }
  }

  *a3 = 0u;
  a3[1] = 0u;
LABEL_17:
  OUTLINED_FUNCTION_71_17();
}

uint64_t objectdestroy_5Tm_0()
{
  if (*(v0 + 24) != 1)
  {
  }

  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_19368A2C8()
{
  OUTLINED_FUNCTION_26();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_6();
  v12 = type metadata accessor for AIML.UUID();
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v17 = v7 == 0xD000000000000011 && v16 == v5;
  if (v17 || (sub_19393CA30() & 1) != 0)
  {
    sub_193448758(v3, v1, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_4();
    if (v17)
    {
      sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_1_61();
      v21 = OUTLINED_FUNCTION_56_15(v18, v19, v20);
      OUTLINED_FUNCTION_80_0(v21, v22, &off_1F07C3F90);
      OUTLINED_FUNCTION_0_82();
      sub_19368B43C(v2, v23);
    }
  }

  else
  {
    sub_19349AB64();
    v24 = OUTLINED_FUNCTION_13_9();
    v26 = OUTLINED_FUNCTION_51_0(v24, v25);
    v27 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded(v26);
    OUTLINED_FUNCTION_152(v27);
    OUTLINED_FUNCTION_23_34();
    sub_19368AFF8(v3, v28, v29);
    OUTLINED_FUNCTION_65_1();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19368A4D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_111_1();
  v11 = *v3;
  v10 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = a1 == v7 && a2 == v8;
  if (v14 || (v15 = v9, (OUTLINED_FUNCTION_10_33() & 1) != 0))
  {
    if (v10 == 1)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    else
    {
      sub_193494798(&type metadata for IntelligenceFlowPlanGenerationTelemetry.IFError, &off_1F07DCF00, a3);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    v17 = v16;
    *v16 = a1;
    v16[1] = a2;
    v16[5] = v15;
    OUTLINED_FUNCTION_184();
    v18 = swift_allocObject();
    v17[2] = v18;
    *(v18 + 16) = v11;
    *(v18 + 24) = v10;
    *(v18 + 32) = v12;
    *(v18 + 40) = v13;
    *(v17 + 48) = 1;
    swift_willThrow();

    sub_19350CB08(v11, v10);
  }

  OUTLINED_FUNCTION_71_17();
}

uint64_t objectdestroy_2Tm_2()
{
  if (*(v0 + 24) != 1)
  {
  }

  OUTLINED_FUNCTION_184();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_19368A660()
{
  OUTLINED_FUNCTION_184_0();
  v35 = v1;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted(0);
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v19 = v18 - v17;
  v20 = *v0;
  OUTLINED_FUNCTION_38();
  v22 = v5 == 0xD000000000000010 && v21 == v3;
  if (!v22)
  {
    OUTLINED_FUNCTION_27_0();
    if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_3();
      v27 = v22 && v3 == 0xE500000000000000;
      if (!v27 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
      {
        OUTLINED_FUNCTION_22_16();
        if (v22 && v3 == 0xE600000000000000)
        {
          if (v20 >> 62 != 2)
          {
            goto LABEL_24;
          }
        }

        else if ((OUTLINED_FUNCTION_5_5() & 1) == 0 || (v20 & 0xC000000000000000) != 0x8000000000000000)
        {
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_31_4((v20 & 0x3FFFFFFFFFFFFFFFLL));
        sub_193494798(&type metadata for IntelligenceFlowPlanGenerationTelemetry.PGRequestFailed, &off_1F07DCF40, v35);
        goto LABEL_25;
      }

      if (v20 >> 62 == 1)
      {
        swift_projectBox();
        OUTLINED_FUNCTION_25_31();
        sub_19368AFF8(v28, v12, v29);
        sub_193494798(v6, &off_1F07DCF30, v35);
        v25 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded;
        v26 = v12;
        goto LABEL_8;
      }

LABEL_24:
      sub_19349AB64();
      v31 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_64(v31, v32);
      *(v33 + 40) = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGRequestContext;
      *(v33 + 16) = v20;
      OUTLINED_FUNCTION_23_2(v34, v33);

      goto LABEL_25;
    }
  }

  if (v20 >> 62)
  {
    goto LABEL_24;
  }

  swift_projectBox();
  OUTLINED_FUNCTION_22_31();
  sub_19368AFF8(v23, v19, v24);
  sub_193494798(v13, &off_1F07DCF20, v35);
  v25 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted;
  v26 = v19;
LABEL_8:
  sub_19368B43C(v26, v25);
LABEL_25:
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

void sub_19368A8D0()
{
  OUTLINED_FUNCTION_184_0();
  v5 = v4;
  OUTLINED_FUNCTION_7_38();
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
  v16 = v0 == v3 && v5 == 0xE600000000000000;
  if (!v16)
  {
    v14 = OUTLINED_FUNCTION_59_0();
    if ((v14 & 1) == 0)
    {
      v23 = v0 == 0x74706D6F7270 && v5 == 0xE600000000000000;
      if (v23 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        v24 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(0) + 20);
      }

      else
      {
        OUTLINED_FUNCTION_52_17();
        v26 = v16 && v5 == 0xE700000000000000;
        if (!v26 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
        {
          sub_19349AB64();
          v27 = OUTLINED_FUNCTION_13_9();
          v29 = OUTLINED_FUNCTION_19_0(v27, v28);
          v30 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(v29);
          OUTLINED_FUNCTION_152(v30);
          v31 = OUTLINED_FUNCTION_141();
          sub_19368AFF8(v31, v32, v33);
          OUTLINED_FUNCTION_65_1();

          goto LABEL_18;
        }

        v24 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(0) + 24);
      }

      OUTLINED_FUNCTION_65_15(v24);
      if (v25)
      {
        OUTLINED_FUNCTION_64_14(v25);
        OUTLINED_FUNCTION_51_17();
        sub_1934948FC();
        goto LABEL_18;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_94_9(v14, v15, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v16)
  {
    sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_1_61();
  v20 = OUTLINED_FUNCTION_56_15(v17, v18, v19);
  OUTLINED_FUNCTION_80_0(v20, v21, &off_1F07C3F90);
  OUTLINED_FUNCTION_0_82();
  sub_19368B43C(v2, v22);
LABEL_18:
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

void sub_19368AAE0()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_66_19();
  OUTLINED_FUNCTION_7_38();
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
  v15 = v1 == v4 && v0 == 0xE600000000000000;
  if (!v15)
  {
    v13 = OUTLINED_FUNCTION_59_0();
    if ((v13 & 1) == 0)
    {
      v22 = v1 == 0x655274706D6F7270 && v0 == 0xEE0065736E6F7073;
      if (v22 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        v23 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(0) + 20);
      }

      else
      {
        OUTLINED_FUNCTION_52_17();
        v25 = v15 && v0 == 0xE700000000000000;
        if (!v25 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
        {
          sub_19349AB64();
          v26 = OUTLINED_FUNCTION_13_9();
          v28 = OUTLINED_FUNCTION_19_0(v26, v27);
          v29 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(v28);
          OUTLINED_FUNCTION_152(v29);
          v30 = OUTLINED_FUNCTION_141();
          sub_19368AFF8(v30, v31, v32);
          OUTLINED_FUNCTION_65_1();

          goto LABEL_18;
        }

        v23 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(0) + 24);
      }

      OUTLINED_FUNCTION_65_15(v23);
      if (v24)
      {
        OUTLINED_FUNCTION_64_14(v24);
        OUTLINED_FUNCTION_51_17();
        sub_1934948FC();
        goto LABEL_18;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_94_9(v13, v14, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v15)
  {
    sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_1_61();
  v19 = OUTLINED_FUNCTION_56_15(v16, v17, v18);
  OUTLINED_FUNCTION_80_0(v19, v20, &off_1F07C3F90);
  OUTLINED_FUNCTION_0_82();
  sub_19368B43C(v3, v21);
LABEL_18:
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_183();
}

void sub_19368ACF4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_66_19();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for AIML.UUID();
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v18 = v4 == 0xD000000000000010 && v17 == v1;
  if (v18 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_0_18() & 1) != 0))
  {
    v19 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(0);
    v20 = &off_1F07DCF50;
    v21 = v6;
LABEL_7:
    sub_193494798(v19, v20, v21);
    goto LABEL_8;
  }

  v22 = v4 == 0x6465646E65 && v1 == 0xE500000000000000;
  if (v22 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v23 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0) + 20);
    v19 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
    v20 = &off_1F07DCF60;
    v21 = v6;
    goto LABEL_7;
  }

  v24 = v4 == 0x64656C696166 && v1 == 0xE600000000000000;
  if (v24 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v25 = v0 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0) + 24);
    v26 = *(v25 + 8);
    v27 = *(v25 + 16);
    v28 = *(v25 + 32);
    v29 = *(v25 + 40);
    v30 = *(v25 + 24);
    v42 = *v25;
    v43 = v26;
    v44 = v27;
    v45 = v30;
    v46 = v28;
    v47 = v29;
    sub_19350CB08(v42, v26);

    sub_193494798(&type metadata for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceFailed, &off_1F07DCF80, v6);
    sub_193456418(v42, v43);
  }

  else
  {
    v31 = v4 == 0x64496563617274 && v1 == 0xE700000000000000;
    if (v31 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
    {
      v32 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
      sub_193448758(v0 + *(v32 + 28), v12, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_6_3(v12, 1, v13);
      if (v18)
      {
        sub_19344E6DC(v12, &qword_1EAE3BCA0, &unk_19395C320);
        OUTLINED_FUNCTION_104();
      }

      else
      {
        OUTLINED_FUNCTION_1_61();
        v34 = sub_193689208(v12, v2, v33);
        OUTLINED_FUNCTION_80_0(v34, v35, &off_1F07C3F90);
        OUTLINED_FUNCTION_0_82();
        sub_19368B43C(v2, v36);
      }
    }

    else
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      *v37 = v4;
      v37[1] = v1;
      v38 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
      OUTLINED_FUNCTION_152(v38);
      v39 = OUTLINED_FUNCTION_141();
      sub_19368AFF8(v39, v40, v41);
      OUTLINED_FUNCTION_65_1();
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19368AFF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

void sub_19368B06C()
{
  v5 = OUTLINED_FUNCTION_38_25();
  v6 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(v5);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = *v0;
  OUTLINED_FUNCTION_38();
  v15 = v2 == v4 && v14 == v1;
  if (!v15)
  {
    OUTLINED_FUNCTION_27_0();
    if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_3();
      v18 = v15 && v1 == 0xE500000000000000;
      if (!v18 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
      {
        OUTLINED_FUNCTION_22_16();
        if (v15 && v1 == 0xE600000000000000)
        {
          if (v13 >> 62 != 2)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
          {
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_14_8();
          if (!v15)
          {
            goto LABEL_25;
          }
        }

        OUTLINED_FUNCTION_31_4((v13 & 0x3FFFFFFFFFFFFFFFLL));
        v28 = *(v22 + 48);
        v16 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed;
        v17 = &off_1F07DCFB0;
        goto LABEL_8;
      }

      if (v13 >> 62 == 1)
      {
        swift_projectBox();
        OUTLINED_FUNCTION_24_33();
        sub_19368AFF8(v19, v12, v20);
        sub_193494798(v6, &off_1F07DCFA0, v3);
        sub_19368B43C(v12, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded);
        goto LABEL_26;
      }

LABEL_25:
      sub_19349AB64();
      v23 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_64(v23, v24);
      *(v25 + 40) = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGOverridesRequestContext;
      *(v25 + 16) = v13;
      OUTLINED_FUNCTION_23_2(v26, v25);

      goto LABEL_26;
    }
  }

  if (v13 >> 62)
  {
    goto LABEL_25;
  }

  v27 = *(v13 + 16);
  v16 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGOverridesStarted;
  v17 = &off_1F07DCF90;
LABEL_8:
  sub_193494798(v16, v17, v3);
LABEL_26:
  OUTLINED_FUNCTION_72_0();
}

void sub_19368B264()
{
  v5 = OUTLINED_FUNCTION_38_25();
  v6 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded(v5);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = *v0;
  OUTLINED_FUNCTION_38();
  v15 = v2 == v4 && v14 == v1;
  if (!v15)
  {
    OUTLINED_FUNCTION_27_0();
    if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_3();
      v18 = v15 && v1 == 0xE500000000000000;
      if (!v18 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
      {
        OUTLINED_FUNCTION_22_16();
        if (v15 && v1 == 0xE600000000000000)
        {
          if (v13 >> 62 != 2)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
          {
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_14_8();
          if (!v15)
          {
            goto LABEL_25;
          }
        }

        OUTLINED_FUNCTION_31_4((v13 & 0x3FFFFFFFFFFFFFFFLL));
        v16 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanFailed;
        v17 = &off_1F07DCFE0;
        goto LABEL_8;
      }

      if (v13 >> 62 == 1)
      {
        swift_projectBox();
        OUTLINED_FUNCTION_23_34();
        sub_19368AFF8(v19, v12, v20);
        sub_193494798(v6, &off_1F07DCFD0, v3);
        sub_19368B43C(v12, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded);
        goto LABEL_26;
      }

LABEL_25:
      sub_19349AB64();
      v22 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_64(v22, v23);
      *(v24 + 40) = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanRequestContext;
      *(v24 + 16) = v13;
      OUTLINED_FUNCTION_23_2(v25, v24);

      goto LABEL_26;
    }
  }

  if (v13 >> 62)
  {
    goto LABEL_25;
  }

  v26 = *(v13 + 16);
  v16 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanStarted;
  v17 = &off_1F07DCFC0;
LABEL_8:
  sub_193494798(v16, v17, v3);
LABEL_26:
  OUTLINED_FUNCTION_72_0();
}

uint64_t sub_19368B43C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

id sub_19368B4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = a1 == 0xD000000000000010 && 0x8000000193A1E8E0 == a2;
  if (v7 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_5_5() & 1) != 0))
  {
    if (!(v6 >> 62))
    {
      v17 = *(v6 + 16);
      v8 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanStarted;
      v9 = &off_1F07DCFF0;
      return sub_193494798(v8, v9, a3);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    v11 = v7 && a2 == 0xE500000000000000;
    if (!v11 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      OUTLINED_FUNCTION_22_16();
      if (v7 && a2 == 0xE600000000000000)
      {
        if (v6 >> 62 != 2)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
        {
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v7)
        {
          goto LABEL_25;
        }
      }

      OUTLINED_FUNCTION_31_4((v6 & 0x3FFFFFFFFFFFFFFFLL));
      v8 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanFailed;
      v9 = &off_1F07DD010;
      return sub_193494798(v8, v9, a3);
    }

    if (v6 >> 62 == 1)
    {
      v18 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanEnded;
      v9 = &off_1F07DD000;
      return sub_193494798(v8, v9, a3);
    }
  }

LABEL_25:
  sub_19349AB64();
  v13 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v13, v14);
  *(v15 + 40) = &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanContext;
  *(v15 + 16) = v6;
  OUTLINED_FUNCTION_23_2(v16, v15);
}

uint64_t OUTLINED_FUNCTION_63_12(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  return 0;
}

IntelligencePlatformLibrary::IntelligenceFlowPlanGenerationTelemetry::PGGeneratePlanStarted IntelligenceFlowPlanGenerationTelemetry.init()@<W0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
  v3 = v2[5];
  sub_193509014();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_193694738();
  v6 = v2[8];
  v7 = sub_1935092CC();
  v8 = v2[9];
  sub_19343E518(v7);
  v9 = v2[10];
  sub_19369499C();
  v10 = v2[11];
  sub_193694AB8();
  v11 = v2[12];
  v12 = sub_193694BD4();
  v32 = v2[13];
  sub_19343E518(v12);
  v33 = v2[14];
  sub_19343E51C((a1 + v33));
  *a1 = *sub_1936945BC();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v13 = sub_19393BE00();
  OUTLINED_FUNCTION_16_1(a1 + v3, v14, v15, v13);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3FE80, &qword_193979980);
  v16 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  OUTLINED_FUNCTION_16_1(a1 + v5, v17, v18, v16);
  sub_19344E6DC(a1 + v6, &qword_1EAE3B498, &unk_193959120);
  v19 = type metadata accessor for MonotonicTimestamp();
  OUTLINED_FUNCTION_16_1(a1 + v6, v20, v21, v19);
  sub_1934354B4(*(a1 + v8));
  *(a1 + v8) = 0xF000000000000007;
  sub_19344E6DC(a1 + v9, &qword_1EAE3FE88, &qword_193979988);
  v22 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(0);
  OUTLINED_FUNCTION_16_1(a1 + v9, v23, v24, v22);
  sub_19344E6DC(a1 + v10, &qword_1EAE3FE90, &unk_193979E60);
  v25 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(0);
  OUTLINED_FUNCTION_16_1(a1 + v10, v26, v27, v25);
  sub_19344E6DC(a1 + v11, &qword_1EAE3FE98, &qword_193979990);
  v28 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
  OUTLINED_FUNCTION_16_1(a1 + v11, v29, v30, v28);
  sub_1934354B4(*(a1 + v32));
  *(a1 + v32) = 0xF000000000000007;
  sub_1934354B4(*(a1 + v33));
  *(a1 + v33) = 0xF000000000000007;
  result.exists.value = sub_19368EB78(&v34).exists.value;
  *(a1 + v2[15]) = v34;
  return result;
}

uint64_t static IntelligenceFlowPlanGenerationTelemetry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v148 = a2;
  v149 = a1;
  v134 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
  v3 = OUTLINED_FUNCTION_4_1(v134);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_289();
  v129 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE98, &qword_193979990);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_1();
  v130 = v11;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FEA0, &qword_193979B70);
  OUTLINED_FUNCTION_4_1(v132);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_53_1();
  v133 = v15;
  v16 = OUTLINED_FUNCTION_22_2();
  v139 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(v16);
  v17 = OUTLINED_FUNCTION_4_1(v139);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_289();
  v131 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE90, &unk_193979E60);
  OUTLINED_FUNCTION_47(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_53_1();
  v135 = v25;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FEA8, &qword_193979B78);
  OUTLINED_FUNCTION_4_1(v137);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_53_1();
  v138 = v29;
  v30 = OUTLINED_FUNCTION_22_2();
  v143 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(v30);
  v31 = OUTLINED_FUNCTION_4_1(v143);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_289();
  v136 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE88, &qword_193979988);
  OUTLINED_FUNCTION_47(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_53_1();
  v140 = v39;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FEB0, &qword_193979B80);
  OUTLINED_FUNCTION_4_1(v141);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_53_1();
  v142 = v43;
  OUTLINED_FUNCTION_22_2();
  v146 = type metadata accessor for MonotonicTimestamp();
  v44 = OUTLINED_FUNCTION_4_1(v146);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_289();
  v144 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_53_1();
  v145 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v129 - v57;
  v59 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  v60 = OUTLINED_FUNCTION_4_1(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE80, &qword_193979980);
  OUTLINED_FUNCTION_47(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v129 - v67;
  v69 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FEB8, &qword_193979B88) - 8);
  v70 = *(*v69 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v129 - v72;
  v147 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
  v74 = *(v147 + 28);
  v75 = v69[14];
  sub_1934486F8(v149 + v74, v73, &qword_1EAE3FE80, &qword_193979980);
  v76 = v148 + v74;
  v77 = v148;
  sub_1934486F8(v76, &v73[v75], &qword_1EAE3FE80, &qword_193979980);
  OUTLINED_FUNCTION_31(v73);
  if (!v78)
  {
    sub_1934486F8(v73, v68, &qword_1EAE3FE80, &qword_193979980);
    OUTLINED_FUNCTION_31(&v73[v75]);
    if (!v78)
    {
      OUTLINED_FUNCTION_18_36();
      sub_19368C6A8(&v73[v75], v2, v82);
      OUTLINED_FUNCTION_17_34();
      sub_19368E3D0(v83, v84);
      v85 = sub_19393C550();
      sub_19368E328();
      sub_19368E328();
      sub_19344E6DC(v73, &qword_1EAE3FE80, &qword_193979980);
      if ((v85 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_19_43();
    sub_19368E328();
LABEL_9:
    v79 = &qword_1EAE3FEB8;
    v80 = &qword_193979B88;
    v81 = v73;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_31(&v73[v75]);
  if (!v78)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v73, &qword_1EAE3FE80, &qword_193979980);
LABEL_11:
  v86 = v147;
  v87 = *(v147 + 32);
  v88 = *(v53 + 48);
  v89 = &qword_1EAE3B498;
  v90 = v149;
  sub_1934486F8(v149 + v87, v58, &qword_1EAE3B498, &unk_193959120);
  sub_1934486F8(v77 + v87, &v58[v88], &qword_1EAE3B498, &unk_193959120);
  v91 = v146;
  OUTLINED_FUNCTION_38_0(v58, 1);
  if (v78)
  {
    OUTLINED_FUNCTION_31(&v58[v88]);
    if (v78)
    {
      sub_19344E6DC(v58, &qword_1EAE3B498, &unk_193959120);
      goto LABEL_24;
    }
  }

  else
  {
    sub_1934486F8(v58, v145, &qword_1EAE3B498, &unk_193959120);
    OUTLINED_FUNCTION_31(&v58[v88]);
    if (!v92)
    {
      OUTLINED_FUNCTION_9_57();
      v95 = &v58[v88];
      v88 = v144;
      sub_19368C6A8(v95, v144, v96);
      OUTLINED_FUNCTION_7_39();
      sub_19368E3D0(v97, v98);
      v89 = sub_19393C550();
      v91 = type metadata accessor for MonotonicTimestamp;
      sub_19368E328();
      sub_19368E328();
      sub_19344E6DC(v58, &qword_1EAE3B498, &unk_193959120);
      if ((v89 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_24:
      OUTLINED_FUNCTION_24_34(v86[9]);
      if (v78)
      {
        OUTLINED_FUNCTION_48_20();
        if (v88)
        {
LABEL_30:
          sub_1934354B4(v89);
          sub_1934354B4(v91);
          goto LABEL_21;
        }

        sub_1934354B4(v89);
      }

      else
      {
        v151 = v89;
        if ((v99 & ~v91) == 0)
        {
LABEL_29:
          OUTLINED_FUNCTION_31_31();

          goto LABEL_30;
        }

        v150 = v91;
        OUTLINED_FUNCTION_31_31();
        sub_19368C654();
        OUTLINED_FUNCTION_29_24();
        sub_19393C550();
        OUTLINED_FUNCTION_69_11();
        OUTLINED_FUNCTION_108_4();
        sub_1934354B4(v89);
        if ((v91 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v100 = v86[10];
      v101 = *(v141 + 48);
      OUTLINED_FUNCTION_33_21();
      OUTLINED_FUNCTION_27_26();
      v102 = OUTLINED_FUNCTION_50_19();
      OUTLINED_FUNCTION_38_0(v102, v103);
      if (v78)
      {
        OUTLINED_FUNCTION_31(v100 + v101);
        if (v78)
        {
          sub_19344E6DC(v100, &qword_1EAE3FE88, &qword_193979988);
LABEL_42:
          v100 = v86[11];
          v109 = *(v137 + 48);
          OUTLINED_FUNCTION_33_21();
          OUTLINED_FUNCTION_27_26();
          v110 = OUTLINED_FUNCTION_50_19();
          OUTLINED_FUNCTION_38_0(v110, v111);
          if (v78)
          {
            OUTLINED_FUNCTION_31(v100 + v109);
            if (v78)
            {
              sub_19344E6DC(v100, &qword_1EAE3FE90, &unk_193979E60);
LABEL_52:
              v100 = v86[12];
              v117 = *(v132 + 48);
              v89 = &qword_1EAE3FE98;
              OUTLINED_FUNCTION_33_21();
              OUTLINED_FUNCTION_27_26();
              v118 = OUTLINED_FUNCTION_50_19();
              v91 = v134;
              OUTLINED_FUNCTION_38_0(v118, v119);
              if (v78)
              {
                OUTLINED_FUNCTION_31(v100 + v117);
                if (v78)
                {
                  sub_19344E6DC(v100, &qword_1EAE3FE98, &qword_193979990);
                  goto LABEL_63;
                }
              }

              else
              {
                sub_1934486F8(v100, v130, &qword_1EAE3FE98, &qword_193979990);
                OUTLINED_FUNCTION_31(v100 + v117);
                if (!v120)
                {
                  OUTLINED_FUNCTION_10_48();
                  v121 = v100 + v117;
                  v117 = v129;
                  sub_19368C6A8(v121, v129, v122);
                  OUTLINED_FUNCTION_8_43();
                  sub_19368E3D0(v123, v124);
                  v89 = OUTLINED_FUNCTION_53();
                  v91 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext;
                  sub_19368E328();
                  sub_19368E328();
                  sub_19344E6DC(v100, &qword_1EAE3FE98, &qword_193979990);
                  if ((v89 & 1) == 0)
                  {
                    goto LABEL_21;
                  }

LABEL_63:
                  OUTLINED_FUNCTION_24_34(v86[13]);
                  if (v78)
                  {
                    OUTLINED_FUNCTION_48_20();
                    if (v117)
                    {
                      goto LABEL_30;
                    }

                    sub_1934354B4(v89);
                  }

                  else
                  {
                    v151 = v89;
                    if ((v125 & ~v91) == 0)
                    {
                      goto LABEL_29;
                    }

                    v150 = v91;
                    OUTLINED_FUNCTION_31_31();
                    sub_19368C600();
                    OUTLINED_FUNCTION_29_24();
                    sub_19393C550();
                    OUTLINED_FUNCTION_69_11();
                    OUTLINED_FUNCTION_108_4();
                    sub_1934354B4(v89);
                    if ((v91 & 1) == 0)
                    {
                      goto LABEL_21;
                    }
                  }

                  OUTLINED_FUNCTION_24_34(v86[14]);
                  if (v78)
                  {
                    OUTLINED_FUNCTION_48_20();
                    if (v117)
                    {
                      goto LABEL_30;
                    }

                    sub_1934354B4(v89);
                  }

                  else
                  {
                    v151 = v89;
                    if ((v126 & ~v91) == 0)
                    {
                      goto LABEL_29;
                    }

                    v150 = v91;
                    OUTLINED_FUNCTION_31_31();
                    sub_19368C5AC();
                    OUTLINED_FUNCTION_29_24();
                    sub_19393C550();
                    OUTLINED_FUNCTION_69_11();
                    OUTLINED_FUNCTION_108_4();
                    sub_1934354B4(v89);
                    if ((v91 & 1) == 0)
                    {
                      goto LABEL_21;
                    }
                  }

                  v127 = v86[15];
                  v128 = *(v90 + v127);
                  v150 = *(v77 + v127);
                  v151 = v128;
                  sub_19368C558();

                  OUTLINED_FUNCTION_29_24();
                  v93 = sub_19393C550();

                  OUTLINED_FUNCTION_108_4();
                  return v93 & 1;
                }

                OUTLINED_FUNCTION_11_38();
                sub_19368E328();
              }

              v79 = &qword_1EAE3FEA0;
              v80 = &qword_193979B70;
              goto LABEL_61;
            }
          }

          else
          {
            sub_1934486F8(v100, v135, &qword_1EAE3FE90, &unk_193979E60);
            OUTLINED_FUNCTION_31(v100 + v109);
            if (!v112)
            {
              OUTLINED_FUNCTION_13_40();
              sub_19368C6A8(v100 + v109, v131, v113);
              OUTLINED_FUNCTION_12_34();
              sub_19368E3D0(v114, v115);
              v116 = OUTLINED_FUNCTION_53();
              sub_19368E328();
              sub_19368E328();
              sub_19344E6DC(v100, &qword_1EAE3FE90, &unk_193979E60);
              if ((v116 & 1) == 0)
              {
                goto LABEL_21;
              }

              goto LABEL_52;
            }

            OUTLINED_FUNCTION_23_35();
          }

          v79 = &qword_1EAE3FEA8;
          v80 = &qword_193979B78;
LABEL_61:
          v81 = v100;
          goto LABEL_20;
        }
      }

      else
      {
        sub_1934486F8(v100, v140, &qword_1EAE3FE88, &qword_193979988);
        OUTLINED_FUNCTION_31(v100 + v101);
        if (!v104)
        {
          OUTLINED_FUNCTION_15_42();
          sub_19368C6A8(v100 + v101, v136, v105);
          OUTLINED_FUNCTION_14_40();
          sub_19368E3D0(v106, v107);
          v108 = OUTLINED_FUNCTION_53();
          sub_19368E328();
          sub_19368E328();
          sub_19344E6DC(v100, &qword_1EAE3FE88, &qword_193979988);
          if ((v108 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_42;
        }

        OUTLINED_FUNCTION_16_30();
        sub_19368E328();
      }

      v79 = &qword_1EAE3FEB0;
      v80 = &qword_193979B80;
      goto LABEL_61;
    }

    OUTLINED_FUNCTION_22_32();
  }

  v79 = &qword_1EAE3B958;
  v80 = &qword_193957B50;
  v81 = v58;
LABEL_20:
  sub_19344E6DC(v81, v79, v80);
LABEL_21:
  v93 = 0;
  return v93 & 1;
}

unint64_t sub_19368C558()
{
  result = qword_1EAE3FEC0;
  if (!qword_1EAE3FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FEC0);
  }

  return result;
}

unint64_t sub_19368C5AC()
{
  result = qword_1EAE3FEC8;
  if (!qword_1EAE3FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FEC8);
  }

  return result;
}

unint64_t sub_19368C600()
{
  result = qword_1EAE3FED0;
  if (!qword_1EAE3FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FED0);
  }

  return result;
}

unint64_t sub_19368C654()
{
  result = qword_1EAE3FEF0;
  if (!qword_1EAE3FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FEF0);
  }

  return result;
}

uint64_t sub_19368C6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v91 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v2);
  v3 = OUTLINED_FUNCTION_4_1(v91);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_289();
  v84 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE98, &qword_193979990);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_1();
  v90 = v11;
  v12 = OUTLINED_FUNCTION_22_2();
  v89 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(v12);
  v13 = OUTLINED_FUNCTION_4_1(v89);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_289();
  v83 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE90, &unk_193979E60);
  OUTLINED_FUNCTION_47(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_53_1();
  v88 = v21;
  v22 = OUTLINED_FUNCTION_22_2();
  v87 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(v22);
  v23 = OUTLINED_FUNCTION_4_1(v87);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_289();
  v82 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE88, &qword_193979988);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_53_1();
  v86 = v31;
  OUTLINED_FUNCTION_22_2();
  v85 = type metadata accessor for MonotonicTimestamp();
  v32 = OUTLINED_FUNCTION_4_1(v85);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_289();
  v81 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_150();
  v40 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  v41 = OUTLINED_FUNCTION_4_1(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_1();
  v46 = v45 - v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE80, &qword_193979980);
  OUTLINED_FUNCTION_47(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v81 - v51;
  v53 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
  v54 = v0;
  sub_1934486F8(v0 + v53[7], v52, &qword_1EAE3FE80, &qword_193979980);
  v55 = OUTLINED_FUNCTION_50_19();
  if (__swift_getEnumTagSinglePayload(v55, v56, v40) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_18_36();
    sub_19368C6A8(v52, v46, v57);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_17_34();
    sub_19368E3D0(v58, v59);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_19_43();
    sub_19368E328();
  }

  sub_1934486F8(v0 + v53[8], v1, &qword_1EAE3B498, &unk_193959120);
  if (__swift_getEnumTagSinglePayload(v1, 1, v85) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_9_57();
    v60 = v1;
    v1 = v81;
    sub_19368C6A8(v60, v81, v61);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_7_39();
    sub_19368E3D0(v62, v63);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_22_32();
  }

  v64 = v87;
  OUTLINED_FUNCTION_40_23(v53[9]);
  if (v65)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v92 = v1;
    OUTLINED_FUNCTION_103_0();
    sub_19368CDA4();

    OUTLINED_FUNCTION_66_1();
  }

  v66 = v91;
  v67 = v89;
  v68 = v86;
  sub_1934486F8(v54 + v53[10], v86, &qword_1EAE3FE88, &qword_193979988);
  if (__swift_getEnumTagSinglePayload(v68, 1, v64) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_15_42();
    sub_19368C6A8(v68, v82, v69);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_14_40();
    sub_19368E3D0(v70, v71);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_16_30();
    sub_19368E328();
  }

  v72 = v88;
  sub_1934486F8(v54 + v53[11], v88, &qword_1EAE3FE90, &unk_193979E60);
  if (__swift_getEnumTagSinglePayload(v72, 1, v67) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_13_40();
    sub_19368C6A8(v72, v83, v73);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_12_34();
    sub_19368E3D0(v74, v75);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_23_35();
  }

  v76 = v90;
  sub_1934486F8(v54 + v53[12], v90, &qword_1EAE3FE98, &qword_193979990);
  if (__swift_getEnumTagSinglePayload(v76, 1, v66) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_10_48();
    v67 = v84;
    sub_19368C6A8(v76, v84, v77);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_8_43();
    sub_19368E3D0(v78, v79);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_11_38();
    sub_19368E328();
  }

  OUTLINED_FUNCTION_40_23(v53[13]);
  if (v65)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v92 = v67;
    OUTLINED_FUNCTION_103_0();
    sub_19368CDF8();

    OUTLINED_FUNCTION_66_1();
  }

  OUTLINED_FUNCTION_40_23(v53[14]);
  if (v65)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v92 = v67;
    OUTLINED_FUNCTION_103_0();
    sub_19368CE4C();

    OUTLINED_FUNCTION_66_1();
  }

  v92 = *(v54 + v53[15]);
  sub_19368CEA0();
  return sub_19393C540();
}

unint64_t sub_19368CDA4()
{
  result = qword_1EAE3FF08;
  if (!qword_1EAE3FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF08);
  }

  return result;
}

unint64_t sub_19368CDF8()
{
  result = qword_1EAE3FF28;
  if (!qword_1EAE3FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF28);
  }

  return result;
}

unint64_t sub_19368CE4C()
{
  result = qword_1EAE3FF30;
  if (!qword_1EAE3FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF30);
  }

  return result;
}

unint64_t sub_19368CEA0()
{
  result = qword_1EAE3FF38;
  if (!qword_1EAE3FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF38);
  }

  return result;
}

void IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.init(rawValue:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.rawValue.getter()
{
  if (v0[8])
  {
    return 1;
  }

  else
  {
    return *v0;
  }
}

char *static IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3FFB8, &qword_193979C50);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v9 = OUTLINED_FUNCTION_39(v1);
    v11 = sub_1934B0FCC(v9, v2 + 1, 1, v10, &qword_1EAE3FFB8, &qword_193979C50);
    OUTLINED_FUNCTION_17_2(v11);
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < v6)
  {
    v12 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v12, v6, 1, v13, &qword_1EAE3FFB8, &qword_193979C50);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  return v0;
}

unint64_t IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.description.getter()
{
  if (*(v0 + 8))
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6E776F6E6B6E55;
  }

  *(v0 + 8);
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
  }

  else if (v2 == 0xD000000000000010 && 0x8000000193A19A00 == v1)
  {

    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_0_9();
  }

  *v0 = 0;
  *(v0 + 8) = v6 & 1;
  *(v0 + 9) = 0;
  return result;
}

void IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

char *static IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3FFB0, &qword_193979C48);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    v15 = sub_1934B0FCC(v13, v2 + 1, 1, v14, &qword_1EAE3FFB0, &qword_193979C48);
    OUTLINED_FUNCTION_17_2(v15);
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v16 = OUTLINED_FUNCTION_39(v1);
    v18 = sub_1934B0FCC(v16, v2 + 2, 1, v17, &qword_1EAE3FFB0, &qword_193979C48);
    OUTLINED_FUNCTION_17_2(v18);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v19 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v19, v2 + 3, 1, v20, &qword_1EAE3FFB0, &qword_193979C48);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v21 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1934B0FCC(v21, v2 + 4, 1, v22, &qword_1EAE3FFB0, &qword_193979C48);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000033;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  v8 = v2 == 0xD000000000000015 && 0x8000000193A19A90 == v1;
  if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  v9 = v2 == 0xD000000000000020 && 0x8000000193A19A60 == v1;
  if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 1;
    goto LABEL_13;
  }

  if (v2 == 0xD000000000000033 && 0x8000000193A19A20 == v1)
  {

    v7 = 1;
    v6 = 2;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v6 = 2;
    if ((v7 & 1) == 0)
    {
      v6 = 0;
    }
  }

LABEL_14:
  *v0 = v6;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

uint64_t static IntelligenceFlowPlanGenerationTelemetry.PGRequestContext.== infix(_:_:)(uint64_t a1, unint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_3_4();
  v5 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted(0);
  v16 = OUTLINED_FUNCTION_47(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v40 - v23;
  v25 = *v2;
  v26 = *a2;
  if (!(v25 >> 62))
  {
    if (!(v26 >> 62))
    {
      v31 = swift_projectBox();
      v32 = swift_projectBox();
      sub_19368E2C8(v31, v24, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted);
      sub_19368E2C8(v32, v21, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted);

      v30 = static IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted.== infix(_:_:)(v24, v21);
      sub_19368E328();
      sub_19368E328();
      goto LABEL_7;
    }

LABEL_11:
    v30 = 0;
    return v30 & 1;
  }

  if (v25 >> 62 != 1)
  {
    if (v26 >> 62 == 2)
    {
      v33 = v25 & 0x3FFFFFFFFFFFFFFFLL;
      v34 = *(v33 + 40);
      v35 = *(v33 + 32);
      v36 = v26 & 0x3FFFFFFFFFFFFFFFLL;
      v37 = *(v36 + 32);
      v38 = *(v36 + 40);
      v43 = *(v33 + 16);
      v44 = v35;
      v45 = v34;
      v40 = *(v36 + 16);
      v41 = v37;
      v42 = v38;

      v30 = static IntelligenceFlowPlanGenerationTelemetry.PGRequestFailed.== infix(_:_:)(&v43, &v40);

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v26 >> 62 != 1)
  {
    goto LABEL_11;
  }

  v27 = swift_projectBox();
  v28 = swift_projectBox();
  sub_19368E2C8(v27, v14, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded);
  sub_19368E2C8(v28, v11, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded);

  static IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.== infix(_:_:)();
  v30 = v29;
  sub_19368E328();
  sub_19368E328();
LABEL_7:

LABEL_10:

  return v30 & 1;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGRequestContext.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(v1);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted(0);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = *v0 >> 62;
  if (!v16)
  {
    v18 = swift_projectBox();
    sub_19368E2C8(v18, v15, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted);
    sub_19368E3D0(&qword_1EAE3FF50, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    return sub_19368E328();
  }

  if (v16 == 1)
  {
    v17 = swift_projectBox();
    sub_19368E2C8(v17, v8, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded);
    sub_19368E3D0(&qword_1EAE3FF48, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    return sub_19368E328();
  }

  OUTLINED_FUNCTION_31_4((*v0 & 0x3FFFFFFFFFFFFFFFLL));
  sub_19368E1CC();
  return sub_19393C540();
}

uint64_t static IntelligenceFlowPlanGenerationTelemetry.PGOverridesRequestContext.== infix(_:_:)(char a1, unint64_t a2)
{
  v6 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
  v7 = OUTLINED_FUNCTION_47(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_91_11();
  if (!v14)
  {
    if (!(a2 >> 62))
    {
      v18 = *(a2 + 16);
      LOBYTE(v29) = *(v3 + 16);
      LOBYTE(v25) = v18;

      static IntelligenceFlowPlanGenerationTelemetry.PGOverridesStarted.== infix(_:_:)(&v29, &v25);
      OUTLINED_FUNCTION_127_6();
      goto LABEL_7;
    }

LABEL_11:
    a1 = 0;
    return a1 & 1;
  }

  if (v14 != 1)
  {
    if (a2 >> 62 == 2)
    {
      OUTLINED_FUNCTION_37_23();
      v19 = *(v12 + 16);
      v30 = v20;
      v31 = v21;
      v32 = *(v12 + 48);
      v25 = *(a2 + 16);
      v26 = v22;
      v27 = v23;
      v28 = *(a2 + 48);
      v29 = v19;

      static IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed.== infix(_:_:)(&v29, &v25);
      OUTLINED_FUNCTION_127_6();

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (a2 >> 62 != 1)
  {
    goto LABEL_11;
  }

  v15 = swift_projectBox();
  v16 = swift_projectBox();
  sub_19368E2C8(v15, v2, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded);
  sub_19368E2C8(v16, v12, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded);

  static IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.== infix(_:_:)();
  a1 = v17;
  sub_19368E328();
  sub_19368E328();
LABEL_7:

LABEL_10:

  return a1 & 1;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGOverridesRequestContext.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(v2);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v7 = *v0;
  v8 = *v0 >> 62;
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = swift_projectBox();
      sub_19368E2C8(v9, v1, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded);
      sub_19368E3D0(&qword_1EAE3FF60, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded);
      OUTLINED_FUNCTION_33();
      return sub_19368E328();
    }

    OUTLINED_FUNCTION_31_4((v7 & 0x3FFFFFFFFFFFFFFFLL));
    v13 = *(v11 + 48);
    sub_19368E220();
  }

  else
  {
    v12 = *(v7 + 16);
    sub_19368E274();
  }

  return sub_19393C540();
}

uint64_t static IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanRequestContext.== infix(_:_:)(char a1, unint64_t a2)
{
  v6 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded(0);
  v7 = OUTLINED_FUNCTION_47(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_91_11();
  if (!v14)
  {
    if (!(a2 >> 62))
    {
      v17 = *(a2 + 16);
      LOBYTE(v26) = *(v3 + 16);
      LOBYTE(v23) = v17;

      static IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanStarted.== infix(_:_:)(&v26, &v23);
      OUTLINED_FUNCTION_127_6();
      goto LABEL_7;
    }

LABEL_11:
    a1 = 0;
    return a1 & 1;
  }

  if (v14 != 1)
  {
    if (a2 >> 62 == 2)
    {
      OUTLINED_FUNCTION_37_23();
      v26 = *(v12 + 16);
      v27 = v18;
      v28 = v19;
      v23 = *(a2 + 16);
      v24 = v20;
      v25 = v21;

      static IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanFailed.== infix(_:_:)(&v26, &v23);
      OUTLINED_FUNCTION_127_6();

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (a2 >> 62 != 1)
  {
    goto LABEL_11;
  }

  v15 = swift_projectBox();
  v16 = swift_projectBox();
  sub_19368E2C8(v15, v2, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded);
  sub_19368E2C8(v16, v12, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded);

  a1 = static IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded.== infix(_:_:)(v2, v12);
  sub_19368E328();
  sub_19368E328();
LABEL_7:

LABEL_10:

  return a1 & 1;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanRequestContext.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded(v2);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v7 = *v0;
  v8 = *v0 >> 62;
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = swift_projectBox();
      sub_19368E2C8(v9, v1, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded);
      sub_19368E3D0(&qword_1EAE3FF78, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded);
      OUTLINED_FUNCTION_33();
      return sub_19368E328();
    }

    OUTLINED_FUNCTION_31_4((v7 & 0x3FFFFFFFFFFFFFFFLL));
    sub_19368E37C();
  }

  else
  {
    v11 = *(v7 + 16);
    sub_19368E418();
  }

  return sub_19393C540();
}

uint64_t static IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanContext.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 62 == 1)
      {
        v5 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        LOBYTE(v19) = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        LOBYTE(v16) = v5;

        v6 = static IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanEnded.== infix(_:_:)(&v19, &v16);
LABEL_9:
        v8 = v6;

        goto LABEL_10;
      }
    }

    else if (v3 >> 62 == 2)
    {
      v9 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = *(v9 + 40);
      v11 = *(v9 + 32);
      v12 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v19 = *(v9 + 16);
      v20 = v11;
      v21 = v10;
      v16 = *(v12 + 16);
      v17 = v13;
      v18 = v14;

      v6 = static IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanFailed.== infix(_:_:)(&v19, &v16);
      goto LABEL_9;
    }

LABEL_11:
    v8 = 0;
    return v8 & 1;
  }

  if (v3 >> 62)
  {
    goto LABEL_11;
  }

  v7 = *(v3 + 16);
  LOBYTE(v19) = *(v2 + 16);
  LOBYTE(v16) = v7;

  v8 = static IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanStarted.== infix(_:_:)(&v19, &v16);

LABEL_10:

  return v8 & 1;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanContext.hash(into:)()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    if (v2 == 1)
    {
      v5 = v3[1].n128_u8[0];
      sub_19368E4C0();
    }

    else
    {
      OUTLINED_FUNCTION_31_4(v3);
      sub_19368E46C();
    }
  }

  else
  {
    v6 = *(v1 + 16);
    sub_19368E514();
  }

  return sub_19393C540();
}

unint64_t sub_19368E1CC()
{
  result = qword_1EAE3FF40;
  if (!qword_1EAE3FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF40);
  }

  return result;
}

unint64_t sub_19368E220()
{
  result = qword_1EAE3FF58;
  if (!qword_1EAE3FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF58);
  }

  return result;
}

unint64_t sub_19368E274()
{
  result = qword_1EAE3FF68;
  if (!qword_1EAE3FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF68);
  }

  return result;
}

uint64_t sub_19368E2C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_19368E328()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_19368E37C()
{
  result = qword_1EAE3FF70;
  if (!qword_1EAE3FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF70);
  }

  return result;
}

uint64_t sub_19368E3D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19368E418()
{
  result = qword_1EAE3FF80;
  if (!qword_1EAE3FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF80);
  }

  return result;
}

unint64_t sub_19368E46C()
{
  result = qword_1EAE3FF88;
  if (!qword_1EAE3FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF88);
  }

  return result;
}

unint64_t sub_19368E4C0()
{
  result = qword_1EAE3FF90;
  if (!qword_1EAE3FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF90);
  }

  return result;
}

unint64_t sub_19368E514()
{
  result = qword_1EAE3FF98;
  if (!qword_1EAE3FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FF98);
  }

  return result;
}

unint64_t sub_19368E56C()
{
  result = qword_1EAE3FFA0;
  if (!qword_1EAE3FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FFA0);
  }

  return result;
}

unint64_t sub_19368E5C4()
{
  result = qword_1EAE3FFA8;
  if (!qword_1EAE3FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FFA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_48_20()
{
  sub_193438388(v0);

  return sub_193438388(v1);
}

void sub_19368E648()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEABBD0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v6, xmmword_193951270);
  *v0 = "eventMetadata";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "timestamp");
  (v10)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 101;
  v15 = OUTLINED_FUNCTION_0_0(v13, "pgRequestContext");
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v17 = 102;
  *v16 = "pgPromptTier1";
  *(v16 + 8) = 13;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v18 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v19 = 103;
  *v18 = "pgPromptResponseTier1";
  *(v18 + 8) = 21;
  *(v18 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  v20 = OUTLINED_FUNCTION_3_1(v1 + 5 * v5);
  *v21 = 104;
  v22 = OUTLINED_FUNCTION_0_0(v20, "pgModelInferenceContext");
  (v10)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v1 + 6 * v5);
  *v24 = 201;
  v25 = OUTLINED_FUNCTION_0_0(v23, "pgOverridesRequestContext");
  (v10)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v1 + 7 * v5);
  *v27 = 301;
  v28 = OUTLINED_FUNCTION_0_0(v26, "pgPrescribedPlanRequestContext");
  (v10)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v1 + 8 * v5);
  *v30 = 401;
  *v29 = "pgGeneratePlanContext";
  *(v29 + 8) = 21;
  *(v29 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19368E8F8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v4 = OUTLINED_FUNCTION_124();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    if (!v3 & v2)
    {
      switch(v4)
      {
        case 401:
          sub_193498018();
          OUTLINED_FUNCTION_111_7();
          v10 = swift_allocObject();
          IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanStarted.init()();
          sub_1934354B4(0xF000000000000007);
          v15 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0) + 60);
          v16 = *(v1 + v15);

          *(v1 + v15) = v10;
          break;
        case 2:
          v14 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0) + 32);
          type metadata accessor for MonotonicTimestamp();
          OUTLINED_FUNCTION_10_2();
          goto LABEL_21;
        case 201:
          v13 = v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0) + 52);
          goto LABEL_21;
        case 301:
          v8 = v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0) + 56);
          goto LABEL_21;
        case 1:
          v6 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0) + 28);
          type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
          OUTLINED_FUNCTION_10_2();
          goto LABEL_21;
      }
    }

    else
    {
      switch(v4)
      {
        case 'e':
          v7 = v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0) + 36);
          break;
        case 'f':
          v12 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0) + 40);
          type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(0);
          OUTLINED_FUNCTION_10_2();
          break;
        case 'g':
          v9 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0) + 44);
          type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(0);
          OUTLINED_FUNCTION_10_2();
          break;
        case 'h':
          v11 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0) + 48);
          type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
          OUTLINED_FUNCTION_10_2();
          break;
        default:
          JUMPOUT(0);
      }

LABEL_21:
      sub_193498018();
    }
  }

  OUTLINED_FUNCTION_27();
}

IntelligencePlatformLibrary::IntelligenceFlowPlanGenerationTelemetry::PGGeneratePlanStarted sub_19368EB78@<W0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_111_7();
  v2 = swift_allocObject();
  result.exists.value = IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanStarted.init()().exists.value;
  *a1 = v2;
  return result;
}

void sub_19368EBB8()
{
  sub_19368EDD0();
  if (!v1)
  {
    OUTLINED_FUNCTION_35_1();
    sub_19368EEE8();
    v2 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
    v3 = v2;
    if ((~*(v0 + *(v2 + 36)) & 0xF000000000000007) != 0)
    {
      v6 = *(v0 + *(v2 + 36));
      OUTLINED_FUNCTION_59_17();
    }

    OUTLINED_FUNCTION_35_1();
    sub_19368F000();
    OUTLINED_FUNCTION_35_1();
    sub_19368F118();
    OUTLINED_FUNCTION_35_1();
    sub_19368F230();
    if ((~*(v0 + v3[13]) & 0xF000000000000007) != 0)
    {
      v7 = *(v0 + v3[13]);
      OUTLINED_FUNCTION_59_17();
    }

    if ((~*(v0 + v3[14]) & 0xF000000000000007) != 0)
    {
      v8 = *(v0 + v3[14]);
      OUTLINED_FUNCTION_59_17();
    }

    v4 = *(v0 + v3[15]);
    OUTLINED_FUNCTION_111_7();
    swift_allocObject();

    IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanStarted.init()();
    sub_19368C558();
    v5 = sub_19393C550();

    if ((v5 & 1) == 0)
    {

      OUTLINED_FUNCTION_59_17();
    }
  }
}

void sub_19368EDD0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v1, v2);
  v3 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(v7);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_1_10();
  v13 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v12);
  OUTLINED_FUNCTION_19_12(*(v13 + 28));
  OUTLINED_FUNCTION_20_10();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3FE80, &qword_193979980);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v15, v16);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_82_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19368EEE8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v1, v2);
  v3 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v7 = type metadata accessor for MonotonicTimestamp();
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = OUTLINED_FUNCTION_1_10();
  v12 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v11);
  OUTLINED_FUNCTION_19_12(*(v12 + 32));
  OUTLINED_FUNCTION_20_10();
  if (v13)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v14, v15);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_82_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19368F000()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v1, v2);
  v3 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(v7);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_1_10();
  v13 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v12);
  OUTLINED_FUNCTION_19_12(*(v13 + 40));
  OUTLINED_FUNCTION_20_10();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3FE88, &qword_193979988);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v15, v16);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_82_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19368F118()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v1, v2);
  v3 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(v7);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_1_10();
  v13 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v12);
  OUTLINED_FUNCTION_19_12(*(v13 + 44));
  OUTLINED_FUNCTION_20_10();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3FE90, &unk_193979E60);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v15, v16);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_82_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19368F230()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v1, v2);
  v3 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v7);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = OUTLINED_FUNCTION_1_10();
  v13 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v12);
  OUTLINED_FUNCTION_19_12(*(v13 + 48));
  OUTLINED_FUNCTION_20_10();
  if (v14)
  {
    sub_19344E6DC(v0, &qword_1EAE3FE98, &qword_193979990);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v15, v16);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_82_11();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19368F3AC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEABBE8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_47_4();
  v5 = OUTLINED_FUNCTION_65_16();
  *(v5 + 16) = xmmword_19394FBE0;
  v6 = (v5 + v0);
  v7 = v5 + v0 + dword_1EAEABC20;
  *v6 = 0;
  *v7 = "PGFailureReasonUnknown";
  *(v7 + 8) = 22;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v9);
  v11 = *(v10 + 104);
  v12 = OUTLINED_FUNCTION_65();
  v11(v12);
  v13 = OUTLINED_FUNCTION_52();
  *v14 = 1;
  v15 = OUTLINED_FUNCTION_48(v13, "PGFailureReasonRecoverableError");
  v11(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19368F52C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABC00);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FBC0;
  v5 = v4 + v0 + dword_1EAEABC38;
  *(v4 + v0) = 0;
  *v5 = "PGModelInterfaceUnknown";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v4 + v0 + v3);
  *v11 = 1;
  *v10 = "PGModelInterfaceFullPlannerHTTPClient";
  *(v10 + 8) = 37;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v12 = OUTLINED_FUNCTION_3_1(v4 + v0 + 2 * v3);
  *v13 = 2;
  *v12 = "PGModelInterfaceFullPlannerTokenGenerationClient";
  *(v12 + 8) = 48;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v14 = OUTLINED_FUNCTION_9_4((v4 + v0 + 3 * v3));
  *v14 = "PGModelInterfaceFullPlannerTokenGenerationClientConstrainedDecoding";
  *(v14 + 1) = 67;
  v14[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19368F72C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEABC18);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_47_4();
  v4 = OUTLINED_FUNCTION_65_16();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("domain");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "code");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19368F860()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C190();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

uint64_t sub_19368F8CC()
{
  v2 = v0[2];
  v3 = *(v0 + 24);
  if (v0[1])
  {
    v4 = *v0;
    result = sub_19393C3C0();
  }

  if (!v1 && (v3 & 1) == 0)
  {
    return sub_19393C360();
  }

  return result;
}

void sub_19368F9AC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEABC30);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_141_1("ifRequestId");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  (v9)(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = v0;
  *v11 = "postingSpanId";
  *(v11 + 8) = 13;
  *(v11 + 16) = v0;
  OUTLINED_FUNCTION_10_0();
  v9();
  v13 = OUTLINED_FUNCTION_13_12();
  *v13 = "planCycleId";
  *(v13 + 1) = 11;
  v13[16] = v0;
  OUTLINED_FUNCTION_10_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19368FB10()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v4 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0) + 24);
        type metadata accessor for AIML.UUID();
LABEL_10:
        OUTLINED_FUNCTION_57_7();
        sub_193498018();
        break;
      case 2:
        v3 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
        OUTLINED_FUNCTION_8_2(*(v3 + 20));
        sub_19393C230();
        break;
      case 1:
        type metadata accessor for AIML.UUID();
        goto LABEL_10;
    }
  }
}

void sub_19368FBD8()
{
  OUTLINED_FUNCTION_26_24();
  if (!v0)
  {
    v2 = (v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0) + 20));
    if ((v2[1] & 1) == 0)
    {
      v3 = *v2;
      OUTLINED_FUNCTION_130();
      sub_19393C3E0();
    }

    OUTLINED_FUNCTION_11_1();
    sub_193690114();
  }
}

void sub_19368FCE4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for AIML.UUID();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  sub_193448758(v1, v0, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_20_10();
  if (v12)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v13, v14);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_19_44();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19368FE2C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEABC60);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_141_1("reason");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  (v9)(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = v0;
  *v11 = "linkId";
  *(v11 + 8) = 6;
  *(v11 + 16) = v0;
  OUTLINED_FUNCTION_10_0();
  v9();
  v13 = OUTLINED_FUNCTION_13_12();
  *v13 = "transcriptEventId";
  *(v13 + 1) = 17;
  v13[16] = v0;
  OUTLINED_FUNCTION_10_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19368FF90()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v4 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0) + 24);
LABEL_10:
        type metadata accessor for AIML.UUID();
        OUTLINED_FUNCTION_57_7();
        sub_193498018();
        break;
      case 2:
        v3 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0) + 20);
        goto LABEL_10;
      case 1:
        sub_1934982A8();
        break;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193690064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(v8 + 9) & 1) == 0)
  {
    v16 = *(v8 + 8) & 1;
    v12 = OUTLINED_FUNCTION_134(a1, a2, a3, &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGFailureReason, a5, &off_1F07DD188, a7, a8, *v8);
    sub_193447324(v12, v13, a2, v14, a3, v15);
  }

  if (!v9)
  {
    OUTLINED_FUNCTION_47_21();
    sub_193690868();
    OUTLINED_FUNCTION_47_21();
    sub_193690114();
  }
}

void sub_193690114()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_87_8(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v10 = type metadata accessor for AIML.UUID();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = OUTLINED_FUNCTION_1_10();
  v15 = v1(v14);
  OUTLINED_FUNCTION_129_9(*(v15 + 24));
  OUTLINED_FUNCTION_20_10();
  if (v16)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v17, v18);
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_19_44();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1936902D4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEABC90);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_47_4();
  v6 = OUTLINED_FUNCTION_65_16();
  OUTLINED_FUNCTION_4_2(v6, xmmword_19394FBE0);
  *v0 = "linkId";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  v10(v11);
  v12 = OUTLINED_FUNCTION_9_4((v1 + v5));
  v13 = OUTLINED_FUNCTION_48(v12, "modelInterface");
  v10(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193690414()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      v3 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(0);
      OUTLINED_FUNCTION_74_14(v3);
      sub_1934982A8();
    }

    else if (v1 == 1)
    {
      type metadata accessor for AIML.UUID();
      OUTLINED_FUNCTION_86();
      sub_193498018();
    }
  }
}

void sub_1936904C0()
{
  OUTLINED_FUNCTION_26_24();
  if (!v0)
  {
    v2 = (v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(0) + 20));
    if ((*(v2 + 9) & 1) == 0)
    {
      v9 = *v2;
      v10 = v2[1] & 1;
      OUTLINED_FUNCTION_70_12();
      sub_193447324(v3, v4, v5, v6, v7, v8);
    }
  }
}

void sub_1936905BC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEABCA8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("linkId");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_48(v11, "transcriptEventId");
  v9(v12);
  v13 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v14 = 4;
  v15 = OUTLINED_FUNCTION_48(v13, "modelIdentifier");
  v9(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193690718()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 4:
        v4 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
        OUTLINED_FUNCTION_8_2(*(v4 + 24));
        sub_19393C200();
        break;
      case 2:
        v3 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0) + 20);
        type metadata accessor for AIML.UUID();
LABEL_9:
        OUTLINED_FUNCTION_57_7();
        sub_193498018();
        break;
      case 1:
        type metadata accessor for AIML.UUID();
        goto LABEL_9;
    }
  }
}

void sub_1936907E0()
{
  OUTLINED_FUNCTION_26_24();
  if (!v0)
  {
    OUTLINED_FUNCTION_11_1();
    sub_193690868();
    v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
    OUTLINED_FUNCTION_16_4(*(v1 + 24));
    if (v3)
    {
      v4 = *v2;
      OUTLINED_FUNCTION_2_7();
    }
  }
}

void sub_193690868()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_87_8(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v10 = type metadata accessor for AIML.UUID();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = OUTLINED_FUNCTION_1_10();
  v15 = v1(v14);
  OUTLINED_FUNCTION_129_9(*(v15 + 20));
  OUTLINED_FUNCTION_20_10();
  if (v16)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v17, v18);
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_19_44();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193690A2C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABCD8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_47_4();
  v4 = OUTLINED_FUNCTION_65_16();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("criticalError");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "modelIdentifier");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193690BDC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABD08);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("transcriptEventId");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "overridesMatched");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "assetVersion");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193690D2C()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v4 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
        OUTLINED_FUNCTION_8_2(*(v4 + 24));
        sub_19393C200();
        break;
      case 2:
        v3 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
        OUTLINED_FUNCTION_74_14(v3);
LABEL_9:
        sub_193498018();
        break;
      case 1:
        type metadata accessor for AIML.UUID();
        OUTLINED_FUNCTION_86();
        goto LABEL_9;
    }
  }
}

void sub_193690DF0()
{
  OUTLINED_FUNCTION_26_24();
  if (!v0)
  {
    v2 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
    v3 = v2;
    if (*(v1 + *(v2 + 20)) != 3)
    {
      v7 = *(v1 + *(v2 + 20));
      OUTLINED_FUNCTION_70_12();
      sub_193447600();
    }

    OUTLINED_FUNCTION_16_4(*(v3 + 24));
    if (v5)
    {
      v6 = *v4;
      OUTLINED_FUNCTION_2_7();
    }
  }
}

void sub_193690F00()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABD20);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_47_4();
  v4 = OUTLINED_FUNCTION_65_16();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("criticalError");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "assetVersion");
  v8(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193691034()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_119_1();
    }
  }
}

void sub_1936910B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v8 + 32);
  v11 = *(v8 + 40);
  if (*(v8 + 8) != 1)
  {
    v12 = *(v8 + 8);
    v13 = *(v8 + 16);
    v14 = *(v8 + 24);
    OUTLINED_FUNCTION_134(a1, a2, a3, &type metadata for IntelligenceFlowPlanGenerationTelemetry.IFError, a5, &off_1F07DD1D8, a7, a8, *v8);
    sub_193447600();
  }

  if (!v9)
  {
    if (v11)
    {
      sub_19393C3C0();
    }
  }
}

void sub_193691224()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      type metadata accessor for AIML.UUID();
      OUTLINED_FUNCTION_57_7();
      sub_193498018();
    }
  }
}

void sub_193691414()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_119_1();
    }
  }
}

void sub_193691474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(v8 + 8) != 1)
  {
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
    v11 = *(v8 + 24) & 1;
    OUTLINED_FUNCTION_134(a1, a2, a2, &type metadata for IntelligenceFlowPlanGenerationTelemetry.IFError, a3, &off_1F07DD1D8, a7, a8, *v8);
    sub_193447600();
  }
}

uint64_t sub_19369154C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted(0);
  v2 = swift_allocBox();
  result = IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted.init()();
  *a1 = v2;
  return result;
}

void sub_193691588()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEABDC8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  *(v5 + 16) = xmmword_19394FBB0;
  v6 = (v5 + v0);
  v7 = v5 + v0 + dword_1EAEABE00;
  *v6 = 2;
  *v7 = "startedOrChanged";
  *(v7 + 8) = 16;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v9);
  v11 = *(v10 + 104);
  v12 = OUTLINED_FUNCTION_65();
  (v11)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v6 + v4));
  *v13 = "ended";
  *(v13 + 1) = 5;
  v13[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v11();
  v14 = OUTLINED_FUNCTION_3_1(v6 + 2 * v4);
  *v15 = 4;
  *v14 = "failed";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v11();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193691710()
{
  OUTLINED_FUNCTION_26();
  v80 = v0;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_166_3();
  v6 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(v5);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v73 = v11 - v10;
  v12 = OUTLINED_FUNCTION_123_11();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v15 = OUTLINED_FUNCTION_47(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15_8();
  v77 = v18;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_83_17();
  v76 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted(0);
  v20 = OUTLINED_FUNCTION_4_1(v76);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_1();
  v72 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40168, &qword_193979C60);
  v26 = OUTLINED_FUNCTION_47(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15_8();
  v70 = v29;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v30);
  v75 = &v70 - v31;
  v74 = xmmword_19395BB80;
  v78 = v2;
  v79 = v0;
  v71 = v6;
  while (1)
  {
    v32 = sub_19393C0E0();
    if (v1 || (v33 & 1) != 0)
    {
      break;
    }

    switch(v32)
    {
      case 4:
        v84 = v74;
        v85 = 0;
        v86 = 0;
        sub_193498018();
        v53 = v4;
        v54 = v6;
        v55 = v80;
        v56 = *v80;

        v58 = *(&v84 + 1);
        if (*(&v84 + 1) == 2)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGRequestFailed.init()(&v81, v57);
          v58 = *(&v81 + 1);
          v59 = v81;
          v60 = v82;
          v61 = v83;
        }

        else
        {
          v61 = v86;
          v60 = v85;
          v59 = v84;
          v81 = v84;
          v82 = v85;
        }

        OUTLINED_FUNCTION_184();
        v64 = swift_allocObject();
        *(v64 + 16) = v59;
        *(v64 + 24) = v58;
        *(v64 + 32) = v60;
        *(v64 + 40) = v61;
        *v55 = v64 | 0x8000000000000000;
        v6 = v54;
        v4 = v53;
        v2 = v78;
        v0 = v79;
        break;
      case 3:
        v42 = OUTLINED_FUNCTION_50_19();
        __swift_storeEnumTagSinglePayload(v42, v43, 1, v6);
        sub_193498018();
        v44 = *v80;

        v45 = v2;
        v46 = v2;
        v47 = v77;
        sub_193448758(v45, v77, &qword_1EAE40160, &qword_193979C58);
        v48 = OUTLINED_FUNCTION_50_19();
        if (__swift_getEnumTagSinglePayload(v48, v49, v6) == 1)
        {
          v50 = v73;
          IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.init()(v73);
          sub_19344E6DC(v46, &qword_1EAE40160, &qword_193979C58);
          v51 = OUTLINED_FUNCTION_50_19();
          if (__swift_getEnumTagSinglePayload(v51, v52, v6) != 1)
          {
            sub_19344E6DC(v77, &qword_1EAE40160, &qword_193979C58);
          }
        }

        else
        {
          sub_19344E6DC(v46, &qword_1EAE40160, &qword_193979C58);
          OUTLINED_FUNCTION_56_16();
          v50 = v73;
          sub_193694370(v47, v73);
        }

        v62 = swift_allocBox();
        OUTLINED_FUNCTION_56_16();
        sub_193694370(v50, v63);
        v0 = v79;
        *v80 = v62 | 0x4000000000000000;
        v2 = v78;
        break;
      case 2:
        v34 = v75;
        OUTLINED_FUNCTION_130_8(v75, 1);
        v35 = v0;
        sub_193498018();
        v36 = *v80;

        v37 = v70;
        sub_193448758(v34, v70, &qword_1EAE40168, &qword_193979C60);
        v38 = OUTLINED_FUNCTION_3_22(v37);
        if (v39)
        {
          v67 = v72;
          IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted.init()(v38);
          v40 = OUTLINED_FUNCTION_123_11();
          sub_19344E6DC(v40, v41, &qword_193979C60);
          OUTLINED_FUNCTION_3_22(v37);
          if (!v39)
          {
            sub_19344E6DC(v37, &qword_1EAE40168, &qword_193979C60);
          }
        }

        else
        {
          v65 = OUTLINED_FUNCTION_123_11();
          sub_19344E6DC(v65, v66, &qword_193979C60);
          OUTLINED_FUNCTION_55_15();
          v67 = v72;
          sub_193694370(v37, v72);
        }

        v68 = swift_allocBox();
        OUTLINED_FUNCTION_55_15();
        sub_193694370(v67, v69);
        *v80 = v68;
        v6 = v71;
        v0 = v35;
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193691C24()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_103();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted(0);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  v15 = *v0 >> 62;
  if (v15)
  {
    if (v15 != 1)
    {
      OUTLINED_FUNCTION_78_14((*v0 & 0x3FFFFFFFFFFFFFFFLL));
      OUTLINED_FUNCTION_70_12();
      sub_193447600();
      goto LABEL_7;
    }

    v16 = swift_projectBox();
    sub_193693D84(v16, v7);
    sub_193447600();
    v17 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded;
    v18 = v7;
  }

  else
  {
    v19 = swift_projectBox();
    sub_193693D84(v19, v14);
    sub_193447600();
    v17 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestStarted;
    v18 = v14;
  }

  sub_1936943C8(v18, v17);
LABEL_7:
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193691E60()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEABDE0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_141_1("linkId");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  (v9)(v10);
  v11 = OUTLINED_FUNCTION_52();
  *v12 = v0;
  *v11 = "prompt";
  *(v11 + 8) = 6;
  *(v11 + 16) = v0;
  OUTLINED_FUNCTION_10_0();
  v9();
  v13 = OUTLINED_FUNCTION_13_12();
  *v13 = "grammar";
  *(v13 + 1) = 7;
  v13[16] = v0;
  OUTLINED_FUNCTION_10_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193692030()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEABDF8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("linkId");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "promptResponse");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "grammar");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193692180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = v4;
  while (1)
  {
    v7 = sub_19393C0E0();
    if (v6 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 3:
        v10 = *(a4(0) + 24);
        goto LABEL_10;
      case 2:
        v9 = *(a4(0) + 20);
LABEL_10:
        sub_19393C200();
LABEL_11:
        v6 = 0;
        break;
      case 1:
        type metadata accessor for AIML.UUID();
        sub_193498018();
        goto LABEL_11;
    }
  }
}

void sub_193692274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_26_24();
  if (!v4)
  {
    v6 = a4(0);
    OUTLINED_FUNCTION_16_4(*(v6 + 20));
    if (v8)
    {
      v9 = *v7;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(*(v6 + 24));
    if (v11)
    {
      v12 = *v10;
      OUTLINED_FUNCTION_2_7();
    }
  }
}

void sub_193692370()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEABE10);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v6, xmmword_19394FBC0);
  *v0 = "startedOrChanged";
  *(v0 + 8) = 16;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_0_0(v11, "ended");
  (v10)(v12);
  v13 = OUTLINED_FUNCTION_13_12();
  v14 = OUTLINED_FUNCTION_0_0(v13, "failed");
  (v10)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v16 = 100;
  *v15 = "traceId";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193692518()
{
  OUTLINED_FUNCTION_26();
  v82 = v0;
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_166_3();
  v7 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(v6);
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v63 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40170, &qword_193979C68);
  v14 = OUTLINED_FUNCTION_47(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15_8();
  v66 = v17;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v61 - v19;
  v21 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(0);
  v22 = OUTLINED_FUNCTION_4_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v62 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40178, &qword_193979C70);
  v28 = OUTLINED_FUNCTION_47(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15_8();
  v65 = v31;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v61 - v33;
  v69 = v61 - v33;
  v64 = v20;
  v67 = v21;
  v61[2] = v3;
  v61[1] = v5;
  v68 = v7;
  while (1)
  {
    v35 = OUTLINED_FUNCTION_124();
    if (v1 || (v36 & 1) != 0)
    {
      break;
    }

    switch(v35)
    {
      case 100:
        v52 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0) + 28);
        type metadata accessor for AIML.UUID();
        v34 = v69;
        sub_193498018();
        break;
      case 2:
        v41 = v64;
        __swift_storeEnumTagSinglePayload(v64, 1, 1, v7);
        sub_193498018();
        v42 = v7;
        v43 = v66;
        sub_193448758(v41, v66, &qword_1EAE40170, &qword_193979C68);
        if (__swift_getEnumTagSinglePayload(v43, 1, v42) == 1)
        {
          v44 = v63;
          IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.init()();
          sub_19344E6DC(v41, &qword_1EAE40170, &qword_193979C68);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v42);
          v7 = v42;
          if (EnumTagSinglePayload != 1)
          {
            sub_19344E6DC(v66, &qword_1EAE40170, &qword_193979C68);
          }
        }

        else
        {
          sub_19344E6DC(v41, &qword_1EAE40170, &qword_193979C68);
          v44 = v63;
          sub_193694370(v43, v63);
          v7 = v42;
        }

        v53 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0);
        sub_193692AF4(v44, v82 + *(v53 + 20));
        break;
      case 3:
        OUTLINED_FUNCTION_85_16();
        sub_193498018();
        v46 = v81;
        if (v81 == 1)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceFailed.init()(&v70);
          v47 = v70;
          v48 = v71;
          v49 = v72;
          v50 = v73;
          v51 = v74;
          v46 = v75;
        }

        else
        {
          v51 = v80;
          v48 = v77;
          v49 = v78;
          v47 = v76;
          v50 = v79;
          v70 = v76;
          v71 = v77;
          v72 = v78;
          v73 = v79;
          v74 = v80;
          v75 = v81;
        }

        v57 = v82 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0) + 24);
        v58 = *(v57 + 16);
        v59 = *(v57 + 40);
        v60 = *(v57 + 24);
        sub_193456418(*v57, *(v57 + 8));

        *v57 = v47;
        *(v57 + 8) = v48;
        *(v57 + 16) = v49;
        *(v57 + 24) = v50;
        *(v57 + 32) = v51;
        *(v57 + 40) = v46;
        v7 = v68;
        v34 = v69;
        break;
      case 1:
        OUTLINED_FUNCTION_130_8(v34, 1);
        sub_193498018();
        v37 = v34;
        v38 = v34;
        v39 = v65;
        sub_193448758(v37, v65, &qword_1EAE40178, &qword_193979C70);
        OUTLINED_FUNCTION_3_22(v39);
        if (v40)
        {
          v56 = v62;
          IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.init()();
          sub_19344E6DC(v38, &qword_1EAE40178, &qword_193979C70);
          OUTLINED_FUNCTION_3_22(v39);
          if (!v40)
          {
            sub_19344E6DC(v65, &qword_1EAE40178, &qword_193979C70);
          }
        }

        else
        {
          v54 = OUTLINED_FUNCTION_123_11();
          sub_19344E6DC(v54, v55, &qword_193979C70);
          v56 = v62;
          sub_193694370(v39, v62);
        }

        sub_193692AF4(v56, v82);
        v34 = v69;
        v7 = v68;
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193692AF4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_166_3();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_13_0();
  v9(v8);
  return a2;
}

void sub_193692B4C()
{
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_130();
  sub_193692D40();
  if (!v1)
  {
    OUTLINED_FUNCTION_25_2();
    OUTLINED_FUNCTION_130();
    sub_193692E44();
    v2 = v0 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0) + 24);
    v3 = *v2;
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v7 = *(v2 + 32);
    v8 = *(v2 + 40);
    v14 = v3;
    v15 = v4;
    v16 = v5;
    v17 = v6;
    v9 = v7;
    v18 = v7;
    v19 = v8;
    v11 = v5;
    v10 = v6;
    sub_19350CB08(v3, v4);
    v20 = v8;

    IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceFailed.init()(&v13);
    v12 = v13;
    sub_1936942D4();
    LOBYTE(v8) = sub_19393C550();
    sub_193456418(v12, *(&v12 + 1));

    sub_193456418(v14, v15);

    if ((v8 & 1) == 0)
    {
      v14 = v3;
      v15 = v4;
      v16 = v11;
      v17 = v10;
      v18 = v9;
      v19 = v20;
      sub_19350CB08(v3, v4);

      OUTLINED_FUNCTION_70_12();
      sub_193447600();
      sub_193456418(v14, v15);
    }

    OUTLINED_FUNCTION_25_2();
    OUTLINED_FUNCTION_130();
    sub_193692F48();
  }
}

void sub_193692D40()
{
  v0 = OUTLINED_FUNCTION_14_10();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(v0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.init()();
  sub_193694328(&qword_1EAE401A0, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted);
  v8 = sub_19393C550();
  sub_1936943C8(v7, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_4();
  }
}

void sub_193692E44()
{
  OUTLINED_FUNCTION_26();
  v0 = OUTLINED_FUNCTION_14_10();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(v0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(0) + 20);
  IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.init()();
  sub_193694328(&qword_1EAE40198, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded);
  v9 = sub_19393C550();
  sub_1936943C8(v7, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded);
  if ((v9 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_4();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193692F48()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v1, v2);
  v3 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v7 = type metadata accessor for AIML.UUID();
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = OUTLINED_FUNCTION_1_10();
  v12 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v11);
  OUTLINED_FUNCTION_19_12(*(v12 + 28));
  OUTLINED_FUNCTION_20_10();
  if (v13)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_25_2();
    sub_193694370(v14, v15);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_19_44();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

IntelligencePlatformLibrary::IntelligenceFlowPlanGenerationTelemetry::PGOverridesStarted sub_1936930B0@<W0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_111_7();
  v2 = swift_allocObject();
  result.exists.value = IntelligenceFlowPlanGenerationTelemetry.PGOverridesStarted.init()().exists.value;
  *a1 = v2;
  return result;
}

void sub_1936930F0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABE28);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "ended");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "failed");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193693240()
{
  OUTLINED_FUNCTION_26();
  v3 = v0;
  OUTLINED_FUNCTION_22_0();
  v4 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v30 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40180, &qword_193979C78);
  v11 = OUTLINED_FUNCTION_47(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_8();
  v31 = v14;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_83_17();
  v43 = v2;
  while (1)
  {
    v16 = OUTLINED_FUNCTION_165_0();
    if (v1 || (v17 & 1) != 0)
    {
      break;
    }

    switch(v16)
    {
      case 3:
        OUTLINED_FUNCTION_85_16();
        sub_193498018();
        OUTLINED_FUNCTION_84_11();
        v22 = v42;
        if (v42 == 1)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed.init()();
          v32 = v33;
          v23 = v34;
          v3 = v35;
          v24 = v36;
          v22 = v37;
        }

        else
        {
          v24 = v41;
          v23 = v39;
          v3 = v40;
          v32 = v38;
          *&v33 = v38;
        }

        v29 = swift_allocObject();
        *(v29 + 16) = v32;
        *(v29 + 32) = v23;
        *(v29 + 40) = v3;
        *(v29 + 48) = v24;
        *(v29 + 56) = v22;
        OUTLINED_FUNCTION_68_17(v29);
        v2 = v43;
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_50_19();
        OUTLINED_FUNCTION_130_8(v19, v20);
        OUTLINED_FUNCTION_124_7();
        sub_193498018();
        OUTLINED_FUNCTION_217();
        sub_193448758(v2, v31, &qword_1EAE40180, &qword_193979C78);
        OUTLINED_FUNCTION_3_22(v31);
        if (v21)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.init()();
          OUTLINED_FUNCTION_72_12();
          OUTLINED_FUNCTION_3_22(v31);
          if (!v21)
          {
            sub_19344E6DC(v31, &qword_1EAE40180, &qword_193979C78);
          }
        }

        else
        {
          OUTLINED_FUNCTION_72_12();
          v25 = OUTLINED_FUNCTION_54_16();
          sub_193694370(v25, v30);
        }

        v26 = swift_allocBox();
        v27 = OUTLINED_FUNCTION_54_16();
        sub_193694370(v27, v28);
        v3 = v0;
        *v0 = v26 | 0x4000000000000000;
        v2 = v43;
        break;
      case 1:
        LOBYTE(v38) = 3;
        sub_193498018();
        OUTLINED_FUNCTION_217();
        IntelligenceFlowPlanGenerationTelemetry.PGOverridesStarted.init()();
        OUTLINED_FUNCTION_111_7();
        v18 = swift_allocObject();
        *(v18 + 16) = v33;
        *v3 = v18;
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19369357C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
    sub_193456418(result, a2);
  }

  return result;
}

void sub_1936935C0()
{
  OUTLINED_FUNCTION_103();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_228_1();
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = swift_projectBox();
      sub_193693D84(v7, v0);
      OUTLINED_FUNCTION_71_18();
      sub_1936943C8(v0, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded);
      return;
    }

    OUTLINED_FUNCTION_78_14((v5 & 0x3FFFFFFFFFFFFFFFLL));
    v10 = *(v8 + 48);
  }

  else
  {
    v9 = *(v5 + 16);
  }

  OUTLINED_FUNCTION_70_12();
  sub_193447600();
}

IntelligencePlatformLibrary::IntelligenceFlowPlanGenerationTelemetry::PGPrescribedPlanStarted sub_193693768@<W0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_111_7();
  v2 = swift_allocObject();
  result.exists.value = IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanStarted.init()().exists.value;
  *a1 = v2;
  return result;
}

void sub_1936937A8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABE40);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "ended");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "failed");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936938F8()
{
  OUTLINED_FUNCTION_26();
  v3 = v0;
  OUTLINED_FUNCTION_22_0();
  v4 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded(0);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v35 = v9 - v8;
  v10 = &qword_193979C80;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40188, &qword_193979C80);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15_8();
  v36 = v15;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_83_17();
  v42 = v2;
  while (1)
  {
    v17 = OUTLINED_FUNCTION_165_0();
    if (v1 || (v18 & 1) != 0)
    {
      break;
    }

    switch(v17)
    {
      case 3:
        v39 = xmmword_19395BB80;
        v40 = 0;
        v41 = 0;
        sub_193498018();
        v26 = OUTLINED_FUNCTION_84_11();
        v27 = *(&v39 + 1);
        if (*(&v39 + 1) == 2)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanFailed.init()(v37, v26);
          v3 = v37[0];
          v27 = v37[1];
          v28 = v37[2];
          v29 = v38;
        }

        else
        {
          v29 = v41;
          v28 = v40;
          v3 = v39;
          v37[0] = v39;
        }

        OUTLINED_FUNCTION_184();
        v34 = swift_allocObject();
        *(v34 + 16) = v3;
        *(v34 + 24) = v27;
        *(v34 + 32) = v28;
        *(v34 + 40) = v29;
        OUTLINED_FUNCTION_68_17(v34);
        v10 = &qword_193979C80;
        v2 = v42;
        break;
      case 2:
        v22 = OUTLINED_FUNCTION_50_19();
        OUTLINED_FUNCTION_130_8(v22, v23);
        OUTLINED_FUNCTION_124_7();
        sub_193498018();
        OUTLINED_FUNCTION_217();
        sub_193448758(v2, v36, &qword_1EAE40188, v10);
        v24 = OUTLINED_FUNCTION_3_22(v36);
        if (v25)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded.init()(v24);
          OUTLINED_FUNCTION_72_12();
          OUTLINED_FUNCTION_3_22(v36);
          if (!v25)
          {
            sub_19344E6DC(v36, &qword_1EAE40188, v10);
          }
        }

        else
        {
          OUTLINED_FUNCTION_72_12();
          v30 = OUTLINED_FUNCTION_53_20();
          sub_193694370(v30, v35);
        }

        v31 = swift_allocBox();
        v32 = OUTLINED_FUNCTION_53_20();
        sub_193694370(v32, v33);
        v10 = &qword_193979C80;
        v3 = v0;
        *v0 = v31 | 0x4000000000000000;
        v2 = v42;
        break;
      case 1:
        LOBYTE(v39) = 3;
        sub_193498018();
        v19 = v10;
        OUTLINED_FUNCTION_217();
        v20 = v39;
        if (v39 == 3)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanStarted.init()();
          v20 = v37[0];
        }

        OUTLINED_FUNCTION_111_7();
        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        *v3 = v21;
        v10 = v19;
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193693C34()
{
  OUTLINED_FUNCTION_103();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded(0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_228_1();
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = swift_projectBox();
      sub_193693D84(v7, v0);
      OUTLINED_FUNCTION_71_18();
      sub_1936943C8(v0, type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPrescribedPlanEnded);
      return;
    }

    v8 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    v10 = *(v8 + 16);
    v11 = *(v8 + 32);
    v12 = *(v8 + 40);
  }

  else
  {
    v9 = *(v5 + 16);
  }

  OUTLINED_FUNCTION_70_12();
  sub_193447600();
}

uint64_t sub_193693D84(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_166_3();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_13_0();
  v9(v8);
  return a2;
}

void sub_193693E40()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABE58);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_31_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_65();
  v8(v9);
  v10 = OUTLINED_FUNCTION_29_1();
  v11 = OUTLINED_FUNCTION_48(v10, "ended");
  v8(v11);
  v12 = OUTLINED_FUNCTION_13_12();
  v13 = OUTLINED_FUNCTION_48(v12, "failed");
  v8(v13);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193693F90()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 3:
        v21 = xmmword_19395BB80;
        v22 = 0;
        v23 = 0;
        sub_193498018();
        v10 = *v1;

        v11 = *(&v21 + 1);
        if (*(&v21 + 1) == 2)
        {
          v12 = &v17;
          IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanFailed.init()();
          v11 = v18;
          v13 = v19;
          v14 = v20;
        }

        else
        {
          v14 = v23;
          v12 = &v21;
          v13 = v22;
        }

        v15 = *v12;
        OUTLINED_FUNCTION_184();
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        *(v16 + 24) = v11;
        *(v16 + 32) = v13;
        *(v16 + 40) = v14;
        *v1 = v16 | 0x8000000000000000;
        break;
      case 2:
        LOBYTE(v21) = 3;
        sub_193498018();
        v7 = *v1;

        v8 = v21;
        if (v21 == 3)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanEnded.init()();
          v8 = v17;
        }

        OUTLINED_FUNCTION_111_7();
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *v1 = v9 | 0x4000000000000000;
        break;
      case 1:
        LOBYTE(v21) = 3;
        sub_193498018();
        v4 = *v1;

        v5 = v21;
        if (v21 == 3)
        {
          IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanStarted.init()();
          v5 = v17;
        }

        OUTLINED_FUNCTION_111_7();
        v6 = swift_allocObject();
        *(v6 + 16) = v5;
        *v1 = v6;
        break;
    }
  }
}

void sub_1936941AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  v10 = *v8 >> 62;
  if (v10)
  {
    v11 = v9 & 0x3FFFFFFFFFFFFFFFLL;
    if (v10 == 1)
    {
      v13 = *(v11 + 16);
    }

    else
    {
      v14 = *(v11 + 16);
      v15 = *(v11 + 32);
      v16 = *(v11 + 40);
    }
  }

  else
  {
    LOBYTE(v12) = *(v9 + 16);
    OUTLINED_FUNCTION_134(a1, a2, a2, &type metadata for IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanStarted, a3, &off_1F07DD4A8, a7, a8, v12);
  }

  sub_193447600();
}

unint64_t sub_1936942D4()
{
  result = qword_1EAE40190;
  if (!qword_1EAE40190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40190);
  }

  return result;
}

uint64_t sub_193694328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_193694370(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_166_3();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_13_0();
  v9(v8);
  return a2;
}

uint64_t sub_1936943C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_59_17()
{

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_65_16()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_72_12()
{

  return sub_19344E6DC(v1, v2, v0);
}

void OUTLINED_FUNCTION_118_9()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 72);

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_129_9@<X0>(uint64_t a1@<X8>)
{

  return sub_193448758(v4 + a1, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_130_8(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 24));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 24);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193694738()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.eventMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.timestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 32));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.timestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 32);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgRequestContext.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v2) + 36));
  *v0 = v3;

  return sub_193438388(v3);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgRequestContext.setter(uint64_t *a1)
{
  v3 = *(OUTLINED_FUNCTION_95_12(a1) + 36);
  result = sub_1934354B4(*(v2 + v3));
  *(v2 + v3) = v1;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgRequestContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19369499C()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPromptTier1.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 40));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPromptTier1.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 40);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPromptTier1.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193694AB8()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPromptResponseTier1.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 44));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPromptResponseTier1.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 44);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPromptResponseTier1.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193694BD4()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgModelInferenceContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 48));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgModelInferenceContext.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 48);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgModelInferenceContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 48);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgOverridesRequestContext.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v2) + 52));
  *v0 = v3;

  return sub_193438388(v3);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgOverridesRequestContext.setter(uint64_t *a1)
{
  v3 = *(OUTLINED_FUNCTION_95_12(a1) + 52);
  result = sub_1934354B4(*(v2 + v3));
  *(v2 + v3) = v1;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgOverridesRequestContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 52);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPrescribedPlanRequestContext.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v2) + 56));
  *v0 = v3;

  return sub_193438388(v3);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPrescribedPlanRequestContext.setter(uint64_t *a1)
{
  v3 = *(OUTLINED_FUNCTION_95_12(a1) + 56);
  result = sub_1934354B4(*(v2 + v3));
  *(v2 + v3) = v1;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgPrescribedPlanRequestContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 56);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgGeneratePlanContext.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  *v0 = *(v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v2) + 60));
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgGeneratePlanContext.setter(uint64_t *a1)
{
  v3 = *(OUTLINED_FUNCTION_95_12(a1) + 60);
  v4 = *(v2 + v3);

  *(v2 + v3) = v1;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.pgGeneratePlanContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(v0) + 60);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193694F28@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193694F50@<X0>(char **a1@<X8>)
{
  result = static IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193694FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1936950B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1936951C0@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936951E8@<X0>(char **a1@<X8>)
{
  result = static IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.IFError.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.IFError.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.IFError.code.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.IFError.code.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void IntelligenceFlowPlanGenerationTelemetry.IFError.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t static IntelligenceFlowPlanGenerationTelemetry.IFError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_19393CA30() & 1) == 0)
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
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v7)
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

  return 1;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.IFError.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (v0[1])
  {
    v3 = *v0;
    sub_19393CAD0();
    OUTLINED_FUNCTION_148_4();
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
  return MEMORY[0x193B18060](v1);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.IFError.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
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
    MEMORY[0x193B18060](v3);
  }

  return sub_19393CB00();
}

uint64_t sub_193695560()
{
  v0 = OUTLINED_FUNCTION_45_23();
  OUTLINED_FUNCTION_90_15(v1, v0);
  IntelligenceFlowPlanGenerationTelemetry.IFError.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata.postingSpanId.getter()
{
  v0 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  OUTLINED_FUNCTION_71_0(v0);
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata.postingSpanId.setter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  result = OUTLINED_FUNCTION_71_0(v4);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata.postingSpanId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata.planCycleId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata.init()()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID();
  v1 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  v6 = *(v5 + 24);
  v7 = v0 + *(v5 + 20);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  *v7 = 0;
  *(v7 + 8) = 1;
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v19, v20, v21);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_236();

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

void static IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v3 = OUTLINED_FUNCTION_26_18();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v52 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v10 = OUTLINED_FUNCTION_47(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v51 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_137_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v17 = OUTLINED_FUNCTION_4_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v22 = v20 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v51 - v25;
  v27 = *(v24 + 48);
  sub_193448804(v1, &v51 - v25, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v0, &v26[v27], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v26);
  if (!v28)
  {
    sub_193448804(v26, v2, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v26[v27]);
    if (!v28)
    {
      v30 = &v26[v27];
      v31 = v52;
      sub_19355A5F8(v30, v52);
      OUTLINED_FUNCTION_0_83();
      sub_193695D2C(v32, v33);
      OUTLINED_FUNCTION_65_17();
      v34 = sub_19393C550();
      sub_1934F8A10(v31);
      sub_1934F8A10(v2);
      sub_19344E6DC(v26, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v34 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    sub_1934F8A10(v2);
LABEL_9:
    v29 = v26;
LABEL_10:
    sub_19344E6DC(v29, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31(&v26[v27]);
  if (!v28)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v26, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_13:
  v35 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  v36 = *(v35 + 20);
  v37 = (v1 + v36);
  v38 = *(v1 + v36 + 8);
  v39 = (v0 + v36);
  v40 = *(v0 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  if (*v37 != *v39)
  {
    LOBYTE(v40) = 1;
  }

  if ((v40 & 1) == 0)
  {
LABEL_19:
    v41 = *(v35 + 24);
    v42 = *(v16 + 48);
    OUTLINED_FUNCTION_175();
    sub_193448804(v43, v44, v45, &unk_19395C320);
    sub_193448804(v0 + v41, v22 + v42, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v22);
    if (v28)
    {
      OUTLINED_FUNCTION_31(v22 + v42);
      if (v28)
      {
        sub_19344E6DC(v22, &qword_1EAE3BCA0, &unk_19395C320);
        goto LABEL_11;
      }
    }

    else
    {
      v46 = v51;
      sub_193448804(v22, v51, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_31(v22 + v42);
      if (!v47)
      {
        v48 = v52;
        sub_19355A5F8(v22 + v42, v52);
        OUTLINED_FUNCTION_0_83();
        sub_193695D2C(v49, v50);
        OUTLINED_FUNCTION_139();
        sub_1934F8A10(v48);
        sub_1934F8A10(v46);
        sub_19344E6DC(v22, &qword_1EAE3BCA0, &unk_19395C320);
        goto LABEL_11;
      }

      sub_1934F8A10(v46);
    }

    v29 = v22;
    goto LABEL_10;
  }

LABEL_11:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_237();
  a17 = v21;
  a18 = v22;
  v23 = v18;
  OUTLINED_FUNCTION_3_4();
  v24 = type metadata accessor for AIML.UUID();
  v25 = OUTLINED_FUNCTION_4_1(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v28 = OUTLINED_FUNCTION_165_1();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  v31 = OUTLINED_FUNCTION_47(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_69_17();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &a9 - v35;
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v37, v38, v39, v40);
  OUTLINED_FUNCTION_5_9(v36);
  if (v41)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v36, v19);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v42, v43);
    OUTLINED_FUNCTION_33();
    sub_1934F8A10(v19);
  }

  v44 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGClientEventMetadata(0);
  v45 = (v23 + *(v44 + 20));
  if (*(v45 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v46 = *v45;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v46);
  }

  sub_193448804(v23 + *(v44 + 24), v20, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v20);
  if (v41)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v47 = OUTLINED_FUNCTION_5_7();
    sub_19355A5F8(v47, v48);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v49, v50);
    OUTLINED_FUNCTION_33();
    sub_1934F8A10(v19);
  }

  OUTLINED_FUNCTION_236();
}

uint64_t sub_193695D2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_193695DE8(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_193695E44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

void IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.reason.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.reason.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t sub_193695F08()
{
  v1 = OUTLINED_FUNCTION_222();
  v3 = *(v2(v1) + 20);
  OUTLINED_FUNCTION_148_4();
  return sub_193448804(v4, v5, v6, v0);
}

uint64_t sub_193695F94()
{
  v0 = OUTLINED_FUNCTION_266();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_89_13(*(v2 + 20));
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.linkId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193696024()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_101(*(v2 + 24));
  return sub_193448804(v3, v4, v5, v6);
}

uint64_t sub_193696084()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v2 = *(v1(v0) + 24);
  v3 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v3, v4, v5, v6);
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.transcriptEventId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  v2 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v8 = *(v2 + 24);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
  *a1 = 0;
  *(a1 + 8) = 256;
  sub_19344E6DC(a1 + v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
  sub_19344E6DC(a1 + v8, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v4);
}

void static IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for AIML.UUID();
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_94_7();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v11 = OUTLINED_FUNCTION_47(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v21 = OUTLINED_FUNCTION_4_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_137_2();
  v28 = *(v3 + 9);
  if (*(v5 + 9))
  {
    v55 = v16;
    if ((v28 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (*(v3 + 9))
    {
      goto LABEL_26;
    }

    v29 = *(v5 + 8);
    v30 = *v3;
    v31 = *(v3 + 8);
    v58 = *v5;
    v59 = v29 & 1;
    v55 = v16;
    v56 = v30;
    v57 = v31 & 1;
    v32 = IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.rawValue.getter();
    if (v32 != IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.rawValue.getter())
    {
      goto LABEL_26;
    }
  }

  v54 = v26;
  v52 = v0;
  v53 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
  v33 = *(v53 + 20);
  v34 = *(v20 + 48);
  OUTLINED_FUNCTION_96(v5 + v33, v1);
  OUTLINED_FUNCTION_96(v3 + v33, v1 + v34);
  OUTLINED_FUNCTION_14_1(v1);
  if (!v35)
  {
    sub_193448804(v1, v19, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_14_1(v1 + v34);
    if (!v35)
    {
      v37 = v1 + v34;
      v38 = v52;
      sub_19355A5F8(v37, v52);
      OUTLINED_FUNCTION_0_83();
      sub_193695D2C(v39, v40);
      v41 = sub_19393C550();
      sub_1934F8A10(v38);
      sub_1934F8A10(v19);
      sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v41 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    sub_1934F8A10(v19);
LABEL_14:
    v36 = v1;
LABEL_25:
    sub_19344E6DC(v36, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_14_1(v1 + v34);
  if (!v35)
  {
    goto LABEL_14;
  }

  sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_16:
  v42 = *(v53 + 24);
  v43 = *(v20 + 48);
  v44 = v5 + v42;
  v45 = v54;
  OUTLINED_FUNCTION_96(v44, v54);
  OUTLINED_FUNCTION_96(v3 + v42, v45 + v43);
  OUTLINED_FUNCTION_14_1(v45);
  if (!v35)
  {
    v46 = v55;
    sub_193448804(v45, v55, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_14_1(v45 + v43);
    if (!v47)
    {
      v48 = v45 + v43;
      v49 = v52;
      sub_19355A5F8(v48, v52);
      OUTLINED_FUNCTION_0_83();
      sub_193695D2C(v50, v51);
      sub_19393C550();
      sub_1934F8A10(v49);
      sub_1934F8A10(v46);
      sub_19344E6DC(v45, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_26;
    }

    sub_1934F8A10(v46);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_14_1(v45 + v43);
  if (!v35)
  {
LABEL_24:
    v36 = v45;
    goto LABEL_25;
  }

  sub_19344E6DC(v45, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_26:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for AIML.UUID();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_47(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_69_17();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  if (*(v0 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v14 = *(v0 + 8);
    v15 = *v0;
    OUTLINED_FUNCTION_103_0();
    v25 = v15;
    v26 = v14 & 1;
    v16 = IntelligenceFlowPlanGenerationTelemetry.PGFailureReason.rawValue.getter();
    MEMORY[0x193B18030](v16);
  }

  v17 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGRequestEnded(0);
  sub_193448804(v0 + *(v17 + 20), v13, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v13);
  if (v18)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v13, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v19, v20);
    OUTLINED_FUNCTION_33();
    sub_1934F8A10(v1);
  }

  sub_193448804(v0 + *(v17 + 24), v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v2);
  if (v18)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_5_7();
    sub_19355A5F8(v21, v22);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v23, v24);
    OUTLINED_FUNCTION_33();
    sub_1934F8A10(v1);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.modelInterface.getter()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(v1);
  result = OUTLINED_FUNCTION_71_0(v2);
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.modelInterface.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = OUTLINED_FUNCTION_56_17();
  v7 = v1 + v6;
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 9) = v4;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.modelInterface.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.init()()
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID();
  v1 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  OUTLINED_FUNCTION_56_17();
  v6 = v0 + v5;
  *v6 = 0;
  *(v6 + 8) = 256;
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v7 = OUTLINED_FUNCTION_10_25();
  result = __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *v6 = 0;
  *(v6 + 8) = 256;
  return result;
}

void static IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_48_1();
  v5 = type metadata accessor for AIML.UUID();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v9 = OUTLINED_FUNCTION_165_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_76_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_220();
  v20 = *(v19 + 56);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v21, v22, v23, v24);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v25, v26, v27, v28);
  OUTLINED_FUNCTION_31(v3);
  if (!v29)
  {
    sub_193448804(v3, v4, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v3 + v20);
    if (!v29)
    {
      sub_19355A5F8(v3 + v20, v2);
      OUTLINED_FUNCTION_0_83();
      sub_193695D2C(v30, v31);
      OUTLINED_FUNCTION_5_7();
      v32 = sub_19393C550();
      sub_1934F8A10(v2);
      sub_1934F8A10(v4);
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v32 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    sub_1934F8A10(v4);
LABEL_9:
    sub_19344E6DC(v3, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v3 + v20);
  if (!v29)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_12:
  v33 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(0) + 20);
  v34 = (v1 + v33);
  v35 = *(v1 + v33 + 9);
  v36 = (v0 + v33);
  if ((v35 & 1) == 0 && (*(v36 + 9) & 1) == 0)
  {
    v39 = *v34;
    v40 = v34[1] & 1;
    v37 = *v36;
    v38 = v36[1] & 1;
    IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.rawValue.getter();
    IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.rawValue.getter();
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v6 = OUTLINED_FUNCTION_25_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_32_26();
  sub_193448804(v12, v13, &qword_1EAE3BCA0, &unk_19395C320);
  v14 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_32_15(v14, v15);
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_112();
    sub_19355A5F8(v17, v18);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v19, v20);
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_94_11();
    sub_1934F8A10(v1);
  }

  OUTLINED_FUNCTION_56_17();
  v22 = (v0 + v21);
  if (*(v22 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v23 = *(v22 + 8);
    v24 = *v22;
    OUTLINED_FUNCTION_103_0();
    v25 = IntelligenceFlowPlanGenerationTelemetry.PGModelInterface.rawValue.getter();
    MEMORY[0x193B18030](v25);
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.transcriptEventId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.modelIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.init()()
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID();
  v1 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
  v6 = *(v5 + 20);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = (v0 + *(v5 + 24));
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v19, v20, v21);
  OUTLINED_FUNCTION_26_1();
  result = __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

void static IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for AIML.UUID();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v54 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v53 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_137_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v19 = OUTLINED_FUNCTION_4_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6();
  v24 = v22 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v53 - v27;
  v29 = *(v26 + 48);
  v55 = v4;
  sub_193448804(v4, &v53 - v27, &qword_1EAE3BCA0, &unk_19395C320);
  v56 = v2;
  sub_193448804(v2, &v28[v29], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v28);
  if (v30)
  {
    OUTLINED_FUNCTION_31(&v28[v29]);
    if (v30)
    {
      sub_19344E6DC(v28, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_11;
    }

LABEL_9:
    v31 = v28;
LABEL_20:
    sub_19344E6DC(v31, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_21;
  }

  sub_193448804(v28, v0, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(&v28[v29]);
  if (v30)
  {
    sub_1934F8A10(v0);
    goto LABEL_9;
  }

  v32 = &v28[v29];
  v33 = v54;
  sub_19355A5F8(v32, v54);
  OUTLINED_FUNCTION_0_83();
  sub_193695D2C(v34, v35);
  v36 = sub_19393C550();
  sub_1934F8A10(v33);
  sub_1934F8A10(v0);
  sub_19344E6DC(v28, &qword_1EAE3BCA0, &unk_19395C320);
  if ((v36 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v37 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
  v38 = *(v37 + 20);
  v39 = *(v18 + 48);
  v40 = v55;
  sub_193448804(v55 + v38, v24, &qword_1EAE3BCA0, &unk_19395C320);
  v41 = v56 + v38;
  v42 = v56;
  sub_193448804(v41, v24 + v39, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v24);
  if (!v30)
  {
    v43 = v53;
    sub_193448804(v24, v53, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v24 + v39);
    if (!v44)
    {
      v45 = v54;
      sub_19355A5F8(v24 + v39, v54);
      OUTLINED_FUNCTION_0_83();
      sub_193695D2C(v46, v47);
      v48 = sub_19393C550();
      sub_1934F8A10(v45);
      sub_1934F8A10(v43);
      sub_19344E6DC(v24, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v48 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    sub_1934F8A10(v43);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_31(v24 + v39);
  if (!v30)
  {
LABEL_19:
    v31 = v24;
    goto LABEL_20;
  }

  sub_19344E6DC(v24, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_23:
  v49 = *(v37 + 24);
  if (*(v40 + v49 + 8) && *(v42 + v49 + 8))
  {
    OUTLINED_FUNCTION_5((v40 + v49));
    if (v30)
    {
      v52 = v50 == v51;
    }

    else
    {
      v52 = 0;
    }

    if (!v52)
    {
      sub_19393CA30();
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for AIML.UUID();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v7 = OUTLINED_FUNCTION_165_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = OUTLINED_FUNCTION_47(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_69_17();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v14, v15, v16, v17);
  v18 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_32_15(v18, v19);
  if (v20)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_112();
    sub_19355A5F8(v21, v22);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v23, v24);
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_94_11();
    sub_1934F8A10(v1);
  }

  v25 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceEnded(0);
  sub_193448804(v0 + *(v25 + 20), v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_32_15(v2, 1);
  if (v20)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v2, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v26, v27);
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_94_11();
    sub_1934F8A10(v1);
  }

  v28 = (v0 + *(v25 + 24));
  if (v28[1])
  {
    v29 = *v28;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_148_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.overridesMatched.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.overridesMatched.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.overridesMatched.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193697794(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = *v2;
  v4 = v2[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_1936977F0()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v5 = (v1 + *(v4(v3) + 24));
  v6 = v5[1];

  *v5 = v2;
  v5[1] = v0;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.assetVersion.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.init()()
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID();
  v1 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
  v6 = *(v5 + 20);
  *(v0 + v6) = 3;
  v7 = (v0 + *(v5 + 24));
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_10_25();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  *(v0 + v6) = 3;
  *v7 = 0;
  v7[1] = 0;
  return result;
}

void static IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_48_1();
  v5 = type metadata accessor for AIML.UUID();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v9 = OUTLINED_FUNCTION_165_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_76_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_220();
  v20 = *(v19 + 56);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v21, v22, v23, v24);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v25, v26, v27, v28);
  OUTLINED_FUNCTION_31(v3);
  if (!v29)
  {
    sub_193448804(v3, v4, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v3 + v20);
    if (!v29)
    {
      sub_19355A5F8(v3 + v20, v2);
      OUTLINED_FUNCTION_0_83();
      sub_193695D2C(v30, v31);
      OUTLINED_FUNCTION_5_7();
      v32 = sub_19393C550();
      sub_1934F8A10(v2);
      sub_1934F8A10(v4);
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v32 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    sub_1934F8A10(v4);
LABEL_9:
    sub_19344E6DC(v3, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v3 + v20);
  if (!v29)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_12:
  v33 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
  v34 = *(v33 + 20);
  v35 = *(v1 + v34);
  v36 = *(v0 + v34);
  if (v35 == 3)
  {
    if (v36 != 3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v36 == 3)
    {
      goto LABEL_10;
    }

    if (v35 == 2)
    {
      if (v36 != 2)
      {
        goto LABEL_10;
      }
    }

    else if (v36 == 2 || ((v36 ^ v35) & 1) != 0)
    {
      goto LABEL_10;
    }
  }

  v37 = *(v33 + 24);
  OUTLINED_FUNCTION_3();
  if (v40 && v38)
  {
    OUTLINED_FUNCTION_5(v39);
    if (v29)
    {
      v43 = v41 == v42;
    }

    else
    {
      v43 = 0;
    }

    if (!v43)
    {
      sub_19393CA30();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v6 = OUTLINED_FUNCTION_25_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_32_26();
  sub_193448804(v12, v13, &qword_1EAE3BCA0, &unk_19395C320);
  v14 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_32_15(v14, v15);
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_112();
    sub_19355A5F8(v17, v18);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v19, v20);
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_94_11();
    sub_1934F8A10(v1);
  }

  v21 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGOverridesEnded(0);
  v22 = *(v0 + *(v21 + 20));
  if (v22 != 3)
  {
    OUTLINED_FUNCTION_103_0();
    if (v22 != 2)
    {
      OUTLINED_FUNCTION_103_0();
    }
  }

  sub_19393CAD0();
  v23 = (v0 + *(v21 + 24));
  if (v23[1])
  {
    v24 = *v23;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_148_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed.assetVersion.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed.assetVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

double IntelligenceFlowPlanGenerationTelemetry.PGOverridesFailed.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_74_15(v1);
  result = 0.0;
  *v0 = xmmword_1939526A0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  return result;
}

BOOL sub_193697E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (v2 != 1)
  {
    if (v7 == 1)
    {
      v19 = OUTLINED_FUNCTION_8_6();
      sub_19350CB08(v19, v20);
      OUTLINED_FUNCTION_28_23();
      sub_19350CB08(v21, v22);
      v23 = OUTLINED_FUNCTION_8_6();
      sub_19350CB08(v23, v24);

LABEL_15:
      v27 = OUTLINED_FUNCTION_8_6();
      sub_193456418(v27, v28);
      v29 = OUTLINED_FUNCTION_13_41();
LABEL_33:
      sub_193456418(v29, v30);
      return 0;
    }

    if (v2)
    {
      if (v7)
      {
        v60 = *(a2 + 32);
        v61 = *(a1 + 40);
        v59 = *(a1 + 32);
        if (*a1 != v6 || v2 != v7)
        {
          v32 = sub_19393CA30();
          v33 = OUTLINED_FUNCTION_8_6();
          sub_19350CB08(v33, v34);
          v35 = OUTLINED_FUNCTION_13_41();
          sub_19350CB08(v35, v36);
          v37 = OUTLINED_FUNCTION_8_6();
          sub_19350CB08(v37, v38);
          v39 = OUTLINED_FUNCTION_13_41();
          sub_193456418(v39, v40);
          if ((v32 & 1) == 0)
          {
            goto LABEL_32;
          }

          if (v4)
          {
            goto LABEL_24;
          }

          goto LABEL_37;
        }

        OUTLINED_FUNCTION_69_1();
        sub_19350CB08(v51, v52);
        OUTLINED_FUNCTION_115_0();
        OUTLINED_FUNCTION_28_23();
        sub_19350CB08(v53, v54);
        v55 = OUTLINED_FUNCTION_8_6();
        sub_19350CB08(v55, v56);
        OUTLINED_FUNCTION_115_0();
LABEL_36:
        OUTLINED_FUNCTION_28_23();
        sub_193456418(v57, v58);
        if (v4)
        {
LABEL_24:
          if (v9)
          {
LABEL_39:

            v5 = v59;
            goto LABEL_4;
          }

LABEL_32:

          v29 = OUTLINED_FUNCTION_8_6();
          goto LABEL_33;
        }

LABEL_37:
        if ((v9 & 1) == 0 && v3 == v8)
        {
          goto LABEL_39;
        }

        goto LABEL_32;
      }

      v46 = OUTLINED_FUNCTION_8_6();
      sub_19350CB08(v46, v47);
      v44 = v2;
    }

    else
    {
      v60 = *(a2 + 32);
      v61 = *(a1 + 40);
      v59 = *(a1 + 32);
      OUTLINED_FUNCTION_69_1();
      sub_19350CB08(v42, v43);
      v44 = 0;
      if (!v7)
      {
        v45 = OUTLINED_FUNCTION_10_49(v6, 0);
        OUTLINED_FUNCTION_12_35(v45, 0);
        goto LABEL_36;
      }
    }

    v48 = OUTLINED_FUNCTION_10_49(v6, v7);
    OUTLINED_FUNCTION_12_35(v48, v44);
    OUTLINED_FUNCTION_28_23();
    sub_193456418(v49, v50);
    goto LABEL_32;
  }

  v60 = *(a2 + 32);
  v61 = *(a1 + 40);
  OUTLINED_FUNCTION_69_1();
  sub_19350CB08(v12, v13);
  if (v7 != 1)
  {
    v25 = OUTLINED_FUNCTION_13_41();
    sub_19350CB08(v25, v26);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_28_23();
  sub_19350CB08(v14, v15);
LABEL_4:
  v16 = OUTLINED_FUNCTION_8_6();
  sub_193456418(v16, v17);
  if (v61)
  {
    if (!v11)
    {
      return 0;
    }

    v18 = v5 == v60 && v61 == v11;
    return v18 || (sub_19393CA30() & 1) != 0;
  }

  return !v11;
}

void sub_1936980B4()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if (v1 != 1)
  {
    v5 = *v0;
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    sub_19393CAD0();
    if (v1)
    {
      sub_19393CAD0();

      sub_19393C640();
      if (v7)
      {
LABEL_8:
        sub_19393CAD0();
        goto LABEL_11;
      }
    }

    else
    {
      sub_19393CAD0();
      if (v7)
      {
        goto LABEL_8;
      }
    }

    sub_19393CAD0();
    MEMORY[0x193B18060](v6);
LABEL_11:
    sub_193456418(v5, v1);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_12:
    sub_19393CAD0();
    OUTLINED_FUNCTION_236();
    return;
  }

  sub_19393CAD0();
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_3:
  sub_19393CAD0();
  OUTLINED_FUNCTION_236();

  sub_19393C640();
}

uint64_t sub_1936981D4(void (*a1)(_BYTE *))
{
  v2 = OUTLINED_FUNCTION_45_23();
  OUTLINED_FUNCTION_62_17(v3, v2);
  sub_19393CAB0();
  a1(v5);
  return sub_19393CB00();
}

uint64_t sub_193698244(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v5 = OUTLINED_FUNCTION_45_23();
  OUTLINED_FUNCTION_62_17(v6, v5);
  sub_19393CAB0();
  a4(v8);
  return sub_19393CB00();
}

void sub_193698338()
{
  OUTLINED_FUNCTION_117();
  v2 = OUTLINED_FUNCTION_26_18();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_165_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_150();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_94_7();
  v20 = *(v19 + 56);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v21, v22, v23, v24);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v25, v26, v27, v28);
  OUTLINED_FUNCTION_31(v0);
  if (!v33)
  {
    v29 = OUTLINED_FUNCTION_115_0();
    sub_193448804(v29, v30, v31, v32);
    OUTLINED_FUNCTION_31(v0 + v20);
    if (!v33)
    {
      sub_19355A5F8(v0 + v20, v8);
      OUTLINED_FUNCTION_0_83();
      sub_193695D2C(v34, v35);
      OUTLINED_FUNCTION_139();
      sub_1934F8A10(v8);
      sub_1934F8A10(v1);
      sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_10;
    }

    sub_1934F8A10(v1);
LABEL_9:
    sub_19344E6DC(v0, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v0 + v20);
  if (!v33)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

void sub_193698534()
{
  OUTLINED_FUNCTION_237();
  v3 = type metadata accessor for AIML.UUID();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_94_7();
  v7 = OUTLINED_FUNCTION_25_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_150();
  sub_193448804(v0, v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_14_1(v2);
  if (v13)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19355A5F8(v2, v1);
    sub_19393CAD0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v14, v15);
    OUTLINED_FUNCTION_151();
    sub_19393C540();
    sub_1934F8A10(v1);
  }

  OUTLINED_FUNCTION_236();
}

uint64_t sub_1936986D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v5 = OUTLINED_FUNCTION_45_23();
  OUTLINED_FUNCTION_90_15(v6, v5);
  a4(v8);
  return sub_19393CB00();
}

uint64_t static IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanEnded.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return OUTLINED_FUNCTION_9_2();
    }

    return 1;
  }

  if (v3 == 2)
  {
    return 1;
  }

  return OUTLINED_FUNCTION_9_2();
}

double IntelligenceFlowPlanGenerationTelemetry.PGGeneratePlanFailed.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_74_15(v1);
  result = 0.0;
  *v0 = xmmword_1939526A0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

void sub_19369882C()
{
  OUTLINED_FUNCTION_117();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  if (v2 != 1)
  {
    if (v7 == 1)
    {
      v15 = OUTLINED_FUNCTION_8_6();
      sub_19350CB08(v15, v16);
      OUTLINED_FUNCTION_28_23();
      sub_19350CB08(v17, v18);
      v19 = OUTLINED_FUNCTION_8_6();
      sub_19350CB08(v19, v20);

LABEL_7:
      v23 = OUTLINED_FUNCTION_8_6();
      sub_193456418(v23, v24);
      v25 = OUTLINED_FUNCTION_14_42();
LABEL_23:
      sub_193456418(v25, v26);
      goto LABEL_24;
    }

    if (v2)
    {
      if (v7)
      {
        v27 = *v0;
        if (v1 != v6 || v2 != v7)
        {
          OUTLINED_FUNCTION_34_15();
          v29 = sub_19393CA30();
          v30 = OUTLINED_FUNCTION_8_6();
          sub_19350CB08(v30, v31);
          v32 = OUTLINED_FUNCTION_14_42();
          sub_19350CB08(v32, v33);
          v34 = OUTLINED_FUNCTION_8_6();
          sub_19350CB08(v34, v35);
          v36 = OUTLINED_FUNCTION_14_42();
          sub_193456418(v36, v37);
          if ((v29 & 1) == 0)
          {
            goto LABEL_22;
          }

          if (v4)
          {
            goto LABEL_16;
          }

          goto LABEL_27;
        }

        OUTLINED_FUNCTION_69_1();
        sub_19350CB08(v50, v51);
        OUTLINED_FUNCTION_115_0();
        OUTLINED_FUNCTION_28_23();
        sub_19350CB08(v52, v53);
        v54 = OUTLINED_FUNCTION_8_6();
        sub_19350CB08(v54, v55);
        OUTLINED_FUNCTION_115_0();
LABEL_26:
        OUTLINED_FUNCTION_28_23();
        sub_193456418(v56, v57);
        if (v4)
        {
LABEL_16:
          if (v9)
          {
LABEL_29:

            v58 = OUTLINED_FUNCTION_8_6();
            sub_193456418(v58, v59);
            goto LABEL_24;
          }

LABEL_22:

          v25 = OUTLINED_FUNCTION_8_6();
          goto LABEL_23;
        }

LABEL_27:
        if ((v9 & 1) == 0 && v3 == v8)
        {
          goto LABEL_29;
        }

        goto LABEL_22;
      }

      v43 = OUTLINED_FUNCTION_8_6();
      sub_19350CB08(v43, v44);
      v41 = v2;
    }

    else
    {
      v38 = *v0;
      OUTLINED_FUNCTION_69_1();
      sub_19350CB08(v39, v40);
      v41 = 0;
      if (!v7)
      {
        v42 = OUTLINED_FUNCTION_10_49(v6, 0);
        OUTLINED_FUNCTION_12_35(v42, 0);
        goto LABEL_26;
      }
    }

    v45 = OUTLINED_FUNCTION_165_1();
    v47 = OUTLINED_FUNCTION_10_49(v45, v46);
    OUTLINED_FUNCTION_12_35(v47, v41);
    OUTLINED_FUNCTION_28_23();
    sub_193456418(v48, v49);
    goto LABEL_22;
  }

  v10 = *v0;
  OUTLINED_FUNCTION_69_1();
  sub_19350CB08(v11, v12);
  if (v7 != 1)
  {
    v21 = OUTLINED_FUNCTION_14_42();
    sub_19350CB08(v21, v22);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10_49(v6, 1);
  OUTLINED_FUNCTION_69_1();
  sub_193456418(v13, v14);
LABEL_24:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_193698A20()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 8);
  if (v1 == 1)
  {
    return sub_19393CAD0();
  }

  v3 = *v0;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_19393CAD0();
  if (!v1)
  {
    sub_19393CAD0();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_19393CAD0();
    MEMORY[0x193B18060](v4);
    goto LABEL_8;
  }

  sub_19393CAD0();

  OUTLINED_FUNCTION_112();
  sub_19393C640();
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_19393CAD0();
LABEL_8:

  return sub_193456418(v3, v1);
}

uint64_t sub_193698AFC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  if (v1 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAD0();
    if (v1)
    {

      sub_19393C640();
    }

    sub_19393CAD0();
    if ((v4 & 1) == 0)
    {
      MEMORY[0x193B18060](v3);
    }

    OUTLINED_FUNCTION_148_4();
    sub_193456418(v5, v6);
  }

  return sub_19393CB00();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1.prompt.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1.grammar.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptTier1(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193698DF0(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_71_0(v1);
  v3 = *v2;
  v4 = v2[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_193698E48()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v5 = (v1 + *(v4(v3) + 20));
  v6 = v5[1];

  *v5 = v2;
  v5[1] = v0;
  return result;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1.promptResponse.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1.grammar.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGPromptResponseTier1(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193698F54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v8 = a1(0);
  v9 = (a2 + *(v8 + 20));
  v10 = (a2 + *(v8 + 24));
  sub_19344E6DC(a2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_45();
  result = __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  *v9 = 0;
  v9[1] = 0;
  *v10 = 0;
  v10[1] = 0;
  return result;
}

void sub_193698FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_117();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_48_1();
  v28 = type metadata accessor for AIML.UUID();
  v29 = OUTLINED_FUNCTION_4_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_76_0();
  v43 = *(v42 + 56);
  sub_193448804(v21, v23, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v20, v23 + v43, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v23);
  if (v48)
  {
    OUTLINED_FUNCTION_31(v23 + v43);
    if (v48)
    {
      sub_19344E6DC(v23, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_12;
    }

LABEL_9:
    sub_19344E6DC(v23, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  v44 = OUTLINED_FUNCTION_25_2();
  sub_193448804(v44, v45, v46, v47);
  OUTLINED_FUNCTION_31(v23 + v43);
  if (v48)
  {
    sub_1934F8A10(v37);
    goto LABEL_9;
  }

  sub_19355A5F8(v23 + v43, v22);
  OUTLINED_FUNCTION_0_83();
  sub_193695D2C(v49, v50);
  v51 = sub_19393C550();
  sub_1934F8A10(v22);
  sub_1934F8A10(v37);
  sub_19344E6DC(v23, &qword_1EAE3BCA0, &unk_19395C320);
  if ((v51 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v52 = v27(0);
  v53 = *(v52 + 20);
  OUTLINED_FUNCTION_3();
  if (v56)
  {
    if (!v54)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v55);
    v59 = v48 && v57 == v58;
    if (!v59 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v54)
  {
    goto LABEL_10;
  }

  v60 = *(v52 + 24);
  OUTLINED_FUNCTION_3();
  if (v63 && v61)
  {
    OUTLINED_FUNCTION_5(v62);
    if (v48)
    {
      v66 = v64 == v65;
    }

    else
    {
      v66 = 0;
    }

    if (!v66)
    {
      sub_19393CA30();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

void sub_19369929C()
{
  OUTLINED_FUNCTION_237();
  v2 = v1;
  OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for AIML.UUID();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = OUTLINED_FUNCTION_165_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32_26();
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v16, v17, v18, v19);
  v20 = OUTLINED_FUNCTION_19();
  if (__swift_getEnumTagSinglePayload(v20, v21, v3) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v0, v9);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_83();
    sub_193695D2C(v22, v23);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_1934F8A10(v9);
  }

  v24 = v2(0);
  v25 = (v0 + *(v24 + 20));
  if (v25[1])
  {
    v26 = *v25;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v27 = (v0 + *(v24 + 24));
  if (v27[1])
  {
    v28 = *v27;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_148_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.ended.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v0);
  OUTLINED_FUNCTION_37_24(v1);
  v3 = OUTLINED_FUNCTION_101(v2);
  return sub_1936994FC(v3, v4, v5);
}

uint64_t sub_1936994FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.ended.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v0);
  OUTLINED_FUNCTION_37_24(v1);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_193699588(v2, v3, v4);
}

uint64_t sub_193699588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 40);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.ended.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext.failed.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = v1 + *(type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceContext(v2) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  *v0 = *v3;
  *(v0 + 8) = v5;
  *(v0 + 16) = v6;
  *(v0 + 24) = *(v3 + 24);
  *(v0 + 32) = v7;
  *(v0 + 40) = v8;
  sub_19350CB08(v4, v5);
}