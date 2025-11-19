uint64_t storeEnumTagSinglePayload for EventType(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_20E04AFA4(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D580D8]) init];
  sub_20E04B3E4(a1, v17);
  v19 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v19 - 8) + 48))(v17, 1, v19) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_20E04B454(v17, v9, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
          v21 = sub_20E1A1288(v9);
          if (!v18)
          {
            sub_20E04B4BC(v9, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);

            return v18;
          }

          [v18 setUserAuthenticationRequired_];

          v22 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest;
          v23 = v9;
        }

        else
        {
          sub_20E04B454(v17, v5, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
          if (v18)
          {
            v31 = objc_allocWithZone(MEMORY[0x277D580F0]);
            v32 = v18;
            v33 = [v31 init];
            v34 = v33;
            if (v33)
            {
              [v33 setIsPreciseLocationRequired_];
              if (v5[32])
              {
                v35 = 0;
              }

              else
              {
                v35 = *(v5 + 3);
              }

              [v34 setTimeoutForLocationFetch_];
            }

            [v32 setUserLocationForSystemRequired_];
          }

          v22 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest;
          v23 = v5;
        }
      }

      else
      {
        sub_20E04B454(v17, v13, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
        v24 = [objc_allocWithZone(MEMORY[0x277D580E8]) init];
        v25 = v24;
        if (v24)
        {
          v26 = *v13;
          v27 = v13[1];
          v28 = v24;
          v29 = sub_20E322860();
          [v28 setBundleId_];
        }

        v30 = v18;
        [v30 setProtectedAppApprovalRequired_];

        v22 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest;
        v23 = v13;
      }

      sub_20E04B4BC(v23, v22);
    }

    else if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (v18)
        {
          [v18 setCarPlayIncompatible_];
        }
      }

      else if (v18)
      {
        [v18 setCarBluetoothIncompatible_];
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (v18)
      {
        [v18 setDeviceUnlockRequired_];
      }
    }

    else if (v18)
    {
      [v18 setAppLaunchRequired_];
    }
  }

  return v18;
}

uint64_t sub_20E04B3E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04B454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E04B4BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

LighthouseDataProcessor::ClientIdentifier_optional __swiftcall ClientIdentifier.init(rawValue:)(Swift::String rawValue)
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

unint64_t ClientIdentifier.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x6E776F6E6B6E55;
  }

  *v0;
  return result;
}

uint64_t sub_20E04B5C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x6E776F6E6B6E55;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x800000020E359F10;
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x6E776F6E6B6E55;
  }

  if (*a2)
  {
    v7 = 0x800000020E359F10;
  }

  else
  {
    v7 = 0xE700000000000000;
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

uint64_t sub_20E04B66C()
{
  v1 = *v0;
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E04B6F4()
{
  *v0;
  sub_20E3228F0();
}

uint64_t sub_20E04B768()
{
  v1 = *v0;
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E04B7EC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_20E04B84C(unint64_t *a1@<X8>)
{
  v2 = 0x800000020E359F10;
  v3 = 0x6E776F6E6B6E55;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t AnalyticsType.hashValue.getter()
{
  v1 = *v0;
  sub_20E322DE0();
  MEMORY[0x20F32C430](v1);
  return sub_20E322E00();
}

unint64_t sub_20E04B920()
{
  result = qword_27C863AB0;
  if (!qword_27C863AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863AB0);
  }

  return result;
}

unint64_t sub_20E04B978()
{
  result = qword_27C863AB8;
  if (!qword_27C863AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863AB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextProtoRetrievedTool.AppSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContextProtoRetrievedTool.AppSource(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_20E04BBC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = (&v33 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AC0, &qword_20E323C68);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v12, &qword_27C863AC0, &qword_20E323C68);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20E04875C(v12, &qword_27C863AC0, &qword_20E323C68);
    return 0;
  }

  else
  {
    sub_20E04BFDC(v12, v17);
    v19 = [objc_allocWithZone(MEMORY[0x277D57CE0]) init];
    v18 = v19;
    if (v19)
    {
      [v19 setExists_];
      v20 = objc_allocWithZone(MEMORY[0x277D58078]);
      v21 = v18;
      v22 = [v20 init];
      sub_20E0486F4(v17, v8, &qword_27C8639D0, &unk_20E33C230);
      v23 = type metadata accessor for TranscriptProtoStatementID(0);
      v24 = *(v23 - 8);
      v25 = *(v24 + 48);
      v33 = v24 + 48;
      v34 = v25;
      if (v25(v8, 1, v23) == 1)
      {
        sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
      }

      else
      {
        v26 = *v8;
        sub_20E04C040(v8, type metadata accessor for TranscriptProtoStatementID);
        [v22 setIndex_];
      }

      [v21 setCancelledActionStatementId_];

      v27 = *(v13 + 20);
      v28 = objc_allocWithZone(MEMORY[0x277D58078]);
      v29 = v21;
      v30 = [v28 init];
      sub_20E0486F4(&v17[v27], v6, &qword_27C8639D0, &unk_20E33C230);
      if (v34(v6, 1, v23) == 1)
      {
        sub_20E04875C(v6, &qword_27C8639D0, &unk_20E33C230);
      }

      else
      {
        v31 = *v6;
        sub_20E04C040(v6, type metadata accessor for TranscriptProtoStatementID);
        [v30 setIndex_];
      }

      [v29 setStatementId_];
    }

    sub_20E04C040(v17, type metadata accessor for TranscriptProtoActionCancellation);
  }

  return v18;
}

uint64_t sub_20E04BFDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionCancellation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04C040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E04C0A0()
{
  if (*v0)
  {
    return 0x4974736575716572;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_20E04C0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v6 || (sub_20E322D60() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064)
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

uint64_t sub_20E04C1C8(uint64_t a1)
{
  v2 = sub_20E04C42C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E04C204(uint64_t a1)
{
  v2 = sub_20E04C42C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceFlowSessionIdSiriRequestIdMap.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AC8, &qword_20E323C70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E04C42C();
  sub_20E322E40();
  v15[15] = 0;
  sub_20E322060();
  sub_20E04C7E8(&qword_27C863AD8);
  sub_20E322D40();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for IntelligenceFlowSessionIdSiriRequestIdMap() + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_20E322D10();
  }

  return (*(v6 + 8))(v9, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_20E04C42C()
{
  result = qword_27C863AD0;
  if (!qword_27C863AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863AD0);
  }

  return result;
}

uint64_t type metadata accessor for IntelligenceFlowSessionIdSiriRequestIdMap()
{
  result = qword_27C863AF0;
  if (!qword_27C863AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntelligenceFlowSessionIdSiriRequestIdMap.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_20E322060();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AE0, &qword_20E323C78);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for IntelligenceFlowSessionIdSiriRequestIdMap();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E04C42C();
  sub_20E322E20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_20E04C7E8(&qword_27C863AE8);
  v18 = v30;
  sub_20E322CB0();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_20E322C80();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v11 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_20E04C82C(v23, v22);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_20E04C890(v23);
}

uint64_t sub_20E04C7E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20E322060();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20E04C82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowSessionIdSiriRequestIdMap();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04C890(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowSessionIdSiriRequestIdMap();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E04C944()
{
  result = sub_20E322060();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of SessionBuilder.buildSessionView()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_20E04CE24;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SessionBuilder.buildSessionView(streams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_20E04CC18;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_20E04CC18()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_20E04CD20()
{
  result = qword_27C863B00;
  if (!qword_27C863B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863B00);
  }

  return result;
}

unint64_t sub_20E04CD78()
{
  result = qword_27C863B08;
  if (!qword_27C863B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863B08);
  }

  return result;
}

unint64_t sub_20E04CDD0()
{
  result = qword_27C863B10;
  if (!qword_27C863B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863B10);
  }

  return result;
}

id sub_20E04CE28(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D57E08]) init];
  if (v2)
  {
    v3 = *(type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0) + 20);
    v4 = v2;
    v5 = sub_20E04EA80(a1 + v3);
    [v4 setTypeIdentifier_];

    v6 = objc_allocWithZone(MEMORY[0x277D57DE0]);
    v7 = v4;
    v8 = [v6 init];
    v9 = v8;
    if (v8)
    {
      [v8 setExists_];
    }

    [v7 setDisplayRepresentation_];
  }

  return v2;
}

id sub_20E04CF14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v113 = v99 - v4;
  v112 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v121 = *(v112 - 8);
  v5 = *(v121 + 8);
  MEMORY[0x28223BE20](v112);
  v102 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B20, &unk_20E33C290);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v116 = v99 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B28, &unk_20E33C3E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v111 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v99 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v110 = v99 - v21;
  MEMORY[0x28223BE20](v20);
  v115 = v99 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v114 = (v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v109 = v99 - v27;
  v108 = type metadata accessor for TranscriptProtoParameter(0);
  v120 = *(v108 - 8);
  v28 = *(v120 + 64);
  MEMORY[0x28223BE20](v108);
  v30 = v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B30, &qword_20E323E58);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = v99 - v33;
  v35 = type metadata accessor for TranscriptProtoParameterSet(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = (v99 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20E0486F4(a1, v34, &qword_27C863B30, &qword_20E323E58);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_20E04875C(v34, &qword_27C863B30, &qword_20E323E58);
    return 0;
  }

  sub_20E04DDE4(v34, v39, type metadata accessor for TranscriptProtoParameterSet);
  v40 = *v39;
  v41 = objc_allocWithZone(MEMORY[0x277D57EE0]);

  v42 = [v41 init];
  if (!v42)
  {
    sub_20E04DE4C(v39, type metadata accessor for TranscriptProtoParameterSet);

    return 0;
  }

  v43 = v42;
  v105 = v11;
  v106 = sub_20E04DD34();
  v44 = sub_20E322960();
  v107 = v43;
  [v43 setParameters_];

  v45 = *(v40 + 16);
  if (v45)
  {
    v100 = v39;
    v46 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v99[1] = v40;
    v47 = v40 + v46;
    v101 = (v121 + 56);
    v117 = *(v120 + 72);
    v103 = (v121 + 48);
    v104 = v19;
    v49 = v114;
    v48 = v115;
    v50 = v107;
    v51 = 0x277E1B000uLL;
    while (1)
    {
      sub_20E04DD80(v47, v30);
      v52 = [objc_allocWithZone(MEMORY[0x277D57EA8]) *(v51 + 3936)];
      if (v52)
      {
        v53 = v52;
        v54 = [objc_allocWithZone(MEMORY[0x277D57D68]) *(v51 + 3936)];
        if (v54)
        {
          v120 = *(v108 + 24);
          v121 = v54;
          sub_20E0486F4(&v30[v120], v48, &qword_27C863B28, &unk_20E33C3E0);
          v55 = type metadata accessor for TranscriptProtoCandidate(0);
          v56 = *(v55 - 1);
          v57 = *(v56 + 48);
          v118 = v56 + 48;
          v119 = v57;
          if (v57(v48, 1, v55) == 1)
          {
            sub_20E04875C(v48, &qword_27C863B28, &unk_20E33C3E0);
            v58 = type metadata accessor for TranscriptProtoStatementID(0);
            v59 = v109;
            (*(*(v58 - 8) + 56))(v109, 1, 1, v58);
          }

          else
          {
            v59 = v109;
            sub_20E0486F4(v48 + v55[7], v109, &qword_27C8639D0, &unk_20E33C230);
            sub_20E04DE4C(v48, type metadata accessor for TranscriptProtoCandidate);
          }

          v60 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
          sub_20E0486F4(v59, v49, &qword_27C8639D0, &unk_20E33C230);
          v61 = type metadata accessor for TranscriptProtoStatementID(0);
          if ((*(*(v61 - 8) + 48))(v49, 1, v61) == 1)
          {
            sub_20E04875C(v59, &qword_27C8639D0, &unk_20E33C230);
            v62 = v49;
          }

          else
          {
            v63 = v49;
            v64 = *v49;
            sub_20E04DE4C(v63, type metadata accessor for TranscriptProtoStatementID);
            [v60 setIndex_];
            v62 = v59;
          }

          v65 = v110;
          sub_20E04875C(v62, &qword_27C8639D0, &unk_20E33C230);
          [v121 setStatementId_];

          sub_20E0486F4(&v30[v120], v65, &qword_27C863B28, &unk_20E33C3E0);
          if (v119(v65, 1, v55) == 1)
          {
            sub_20E04875C(v65, &qword_27C863B28, &unk_20E33C3E0);
            v66 = 0;
          }

          else
          {
            v67 = *v65;
            sub_20E04DE4C(v65, type metadata accessor for TranscriptProtoCandidate);
            v66 = (v67 + 1);
          }

          v68 = v112;
          [v121 setSource_];
          v69 = v104;
          sub_20E0486F4(&v30[v120], v104, &qword_27C863B28, &unk_20E33C3E0);
          if (v119(v69, 1, v55) == 1)
          {
            sub_20E04875C(v69, &qword_27C863B28, &unk_20E33C3E0);
            v70 = v116;
            (*v101)(v116, 1, 1, v68);
          }

          else
          {
            v70 = v116;
            sub_20E0486F4(v69 + v55[6], v116, &qword_27C863B20, &unk_20E33C290);
            sub_20E04DE4C(v69, type metadata accessor for TranscriptProtoCandidate);
          }

          v71 = v105;
          sub_20E0486F4(v70, v105, &qword_27C863B20, &unk_20E33C290);
          if ((*v103)(v71, 1, v68) == 1)
          {
            sub_20E04875C(v71, &qword_27C863B20, &unk_20E33C290);
            goto LABEL_27;
          }

          v72 = v102;
          sub_20E04DDE4(v71, v102, type metadata accessor for TranscriptProtoCandidatePromptStatus);
          if (*(v72 + 9))
          {
            sub_20E04DE4C(v72, type metadata accessor for TranscriptProtoCandidatePromptStatus);
LABEL_27:
            v73 = 0;
LABEL_28:
            v74 = v116;
            v49 = v114;
          }

          else
          {
            v92 = *v72;
            v93 = *(v72 + 8);
            v94 = [objc_allocWithZone(MEMORY[0x277D57D70]) init];
            v95 = v72;
            v73 = v94;
            if (!v94)
            {
              sub_20E04DE4C(v95, type metadata accessor for TranscriptProtoCandidatePromptStatus);
              goto LABEL_28;
            }

            if (v93)
            {
              if (v92)
              {
                [v94 setConfirmed_];
              }

              else
              {
                [v94 setNotPrompted_];
              }
            }

            else
            {
              [v94 setPicked_];
            }

            v96 = v116;
            v49 = v114;
            sub_20E04DE4C(v102, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            v74 = v96;
          }

          sub_20E04875C(v74, &qword_27C863B20, &unk_20E33C290);
          [v121 setPromptStatus_];

          v75 = v111;
          sub_20E0486F4(&v30[v120], v111, &qword_27C863B28, &unk_20E33C3E0);
          if (v119(v75, 1, v55) == 1)
          {
            sub_20E04875C(v75, &qword_27C863B28, &unk_20E33C3E0);
            v76 = type metadata accessor for ToolKitProtoTypedValue(0);
            v77 = v113;
            (*(*(v76 - 8) + 56))(v113, 1, 1, v76);
          }

          else
          {
            v78 = v75 + v55[5];
            v77 = v113;
            sub_20E0486F4(v78, v113, &qword_27C863B18, &qword_20E323EB0);
            sub_20E04DE4C(v75, type metadata accessor for TranscriptProtoCandidate);
          }

          v79 = sub_20E06E458(v77);
          v80 = v77;
          v81 = v79;
          sub_20E04875C(v80, &qword_27C863B18, &qword_20E323EB0);
          v82 = v121;
          [v121 setValue_];

          [v53 setCandidate_];
          v83 = *v30;
          v84 = *(v30 + 1);
          v85 = sub_20E322860();
          [v53 setKey_];

          if (v30[24])
          {
            v86 = -1;
          }

          else
          {
            v86 = *(v30 + 2);
          }

          [v53 setCollectionIndex_];
          v50 = v107;
          v87 = [v107 parameters];
          if (v87)
          {
            v88 = v87;
            v89 = sub_20E322970();

            v122 = v89;
            v90 = v53;
            MEMORY[0x20F32BF90]();
            if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v97 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_20E322990();
              v50 = v107;
            }

            sub_20E3229B0();
            if (v122)
            {
              v91 = sub_20E322960();
            }

            else
            {
              v91 = 0;
            }

            v48 = v115;
            [v50 setParameters_];

            sub_20E04DE4C(v30, type metadata accessor for TranscriptProtoParameter);
            v51 = 0x277E1B000;
          }

          else
          {
            [v50 setParameters_];

            sub_20E04DE4C(v30, type metadata accessor for TranscriptProtoParameter);
            v48 = v115;
            v51 = 0x277E1B000;
          }

          goto LABEL_7;
        }

        sub_20E04DE4C(v30, type metadata accessor for TranscriptProtoParameter);
      }

      else
      {
        sub_20E04DE4C(v30, type metadata accessor for TranscriptProtoParameter);
      }

LABEL_7:
      v47 += v117;
      if (!--v45)
      {

        v39 = v100;
        goto LABEL_55;
      }
    }
  }

  v50 = v107;
LABEL_55:
  sub_20E04DE4C(v39, type metadata accessor for TranscriptProtoParameterSet);
  return v50;
}

unint64_t sub_20E04DD34()
{
  result = qword_27C863B38;
  if (!qword_27C863B38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C863B38);
  }

  return result;
}

uint64_t sub_20E04DD80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoParameter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04DDE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E04DE4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E04DEAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B40, &qword_20E323E60);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  v45 = type metadata accessor for TranscriptProtoResponseParameter(0);
  v41 = *(v45 - 8);
  v9 = *(v41 + 64);
  v10 = MEMORY[0x28223BE20](v45);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B48, &unk_20E33C280);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v39 - v16;
  v18 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20E0486F4(a1, v17, &qword_27C863B48, &unk_20E33C280);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_20E04875C(v17, &qword_27C863B48, &unk_20E33C280);
    return 0;
  }

  else
  {
    sub_20E04E584(v17, v22, type metadata accessor for TranscriptProtoResponseManifest);
    v24 = [objc_allocWithZone(MEMORY[0x277D58030]) init];
    v23 = v24;
    if (v24)
    {
      [v24 setUseTemplateAsFallback_];
      v40 = v22;
      v25 = *v22;
      v46 = MEMORY[0x277D84F90];
      v26 = *(v25 + 16);
      v39 = v23;
      if (v26)
      {
        v27 = v25 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v28 = *(v41 + 72);
        v44 = (v41 + 56);
        v29 = (v41 + 48);
        v30 = v23;
        v41 = MEMORY[0x277D84F90];
        v42 = v28;
        do
        {
          sub_20E04E474(v27, v13);
          sub_20E04E474(v13, v8);
          v31 = v45;
          (*v44)(v8, 0, 1, v45);
          sub_20E0486F4(v8, v6, &qword_27C863B40, &qword_20E323E60);
          if ((*v29)(v6, 1, v31) == 1)
          {
            sub_20E04875C(v8, &qword_27C863B40, &qword_20E323E60);
            sub_20E04E4D8(v13, type metadata accessor for TranscriptProtoResponseParameter);
            sub_20E04875C(v6, &qword_27C863B40, &qword_20E323E60);
          }

          else
          {
            v32 = v43;
            sub_20E04E584(v6, v43, type metadata accessor for TranscriptProtoResponseParameter);
            v33 = [objc_allocWithZone(MEMORY[0x277D58038]) init];
            if (v33)
            {
              v34 = v33;
              [v33 setProfanityFilter_];
              [v34 setIsRequired_];
              sub_20E04E4D8(v32, type metadata accessor for TranscriptProtoResponseParameter);
              sub_20E04875C(v8, &qword_27C863B40, &qword_20E323E60);
              v35 = sub_20E04E4D8(v13, type metadata accessor for TranscriptProtoResponseParameter);
              MEMORY[0x20F32BF90](v35);
              if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_20E322990();
              }

              sub_20E3229B0();
              v41 = v46;
            }

            else
            {
              sub_20E04E4D8(v32, type metadata accessor for TranscriptProtoResponseParameter);
              sub_20E04875C(v8, &qword_27C863B40, &qword_20E323E60);
              sub_20E04E4D8(v13, type metadata accessor for TranscriptProtoResponseParameter);
            }

            v28 = v42;
          }

          v27 += v28;
          --v26;
        }

        while (v26);
      }

      else
      {
        v36 = v23;
        v41 = MEMORY[0x277D84F90];
      }

      sub_20E04E538();
      v37 = sub_20E322960();

      v23 = v39;
      [v39 setParameters_];

      v22 = v40;
    }

    sub_20E04E4D8(v22, type metadata accessor for TranscriptProtoResponseManifest);
  }

  return v23;
}

uint64_t sub_20E04E474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoResponseParameter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04E4D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20E04E538()
{
  result = qword_27C863B50;
  if (!qword_27C863B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C863B50);
  }

  return result;
}

uint64_t sub_20E04E584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_20E04E5EC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for TranscriptProtoParameterValue(0);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277D57CE8]) init];
  if (v10)
  {
    v28 = a1;
    v29 = v10;
    v11 = *a1;
    v12 = *a1 + 64;
    v13 = 1 << *(*a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(*a1 + 64);
    v16 = (v13 + 63) >> 6;

    v18 = 0;
    while (v15)
    {
LABEL_11:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_20E04E8E4(*(v11 + 56) + *(v30 + 72) * (v20 | (v18 << 6)), v9);
      sub_20E04E948(&v9[*(v31 + 20)], v5);
      sub_20E04EA20(v9, type metadata accessor for TranscriptProtoParameterValue);
      v21 = type metadata accessor for TranscriptProtoPromptSelection(0);
      if ((*(*(v21 - 8) + 48))(v5, 1, v21) == 1)
      {
        result = sub_20E04E9B8(v5);
      }

      else
      {
        v22 = *v5;
        v23 = v5[8];
        v24 = v5[9];
        result = sub_20E04EA20(v5, type metadata accessor for TranscriptProtoPromptSelection);
        if ((v24 & 1) == 0)
        {
          if (v23)
          {
            if (v22)
            {
              result = [v29 setDenied_];
            }

            else
            {
              result = [v29 setConfirmed_];
            }
          }

          else
          {
            result = [v29 setSelectedInDisambiguation_];
          }
        }
      }
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        v25 = type metadata accessor for TranscriptProtoActionConfirmation(0);
        v26 = sub_20E19B704(v28 + *(v25 + 20));
        v27 = v29;
        [v29 setSystemStyle_];

        return v27;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_20E04E8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoParameterValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04E948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04E9B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E04EA20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E04EA80(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v39[-v16];
  v18 = [objc_allocWithZone(MEMORY[0x277D58128]) init];
  sub_20E0486F4(a1, v13, &qword_27C863B60, &qword_20E323F50);
  v19 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  if ((*(*(v19 - 8) + 48))(v13, 1, v19) == 1)
  {
    sub_20E04EF04(v13);
    v20 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  }

  else
  {
    sub_20E0486F4(v13, v17, &qword_27C863B68, &unk_20E346230);
    sub_20E04EFD4(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
    v21 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
    if ((*(*(v21 - 8) + 48))(v17, 1, v21) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_20E04EF6C(v17, v5, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
        if (v18)
        {
          v22 = objc_allocWithZone(MEMORY[0x277D57DD0]);
          v23 = v18;
          v24 = [v22 init];
          v25 = v24;
          if (v24)
          {
            v26 = *v5;
            v27 = v5[1];
            v28 = v24;
            v29 = sub_20E322860();
            [v28 setBundleId_];

            v30 = v5[2];
            v31 = v5[3];
            v32 = v28;
            v33 = sub_20E322860();
            [v32 setCustomTypeName_];
          }

          [v23 setCustom_];
        }

        v34 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom;
        v35 = v5;
      }

      else
      {
        sub_20E04EF6C(v17, v9, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
        v36 = *v9;
        if (v36 != 41)
        {
          v37 = [objc_allocWithZone(MEMORY[0x277D57F48]) init];
          if (v37)
          {
            v40 = v36;
            [v37 setPrimitiveType_];
          }

          if (!v18)
          {
            sub_20E04EFD4(v9, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);

            return v18;
          }

          [v18 setPrimitive_];
        }

        v34 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive;
        v35 = v9;
      }

      sub_20E04EFD4(v35, v34);
    }
  }

  return v18;
}

uint64_t sub_20E04EF04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E04EF6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E04EFD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E04F034(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277D58170]) init];
  if (!v14)
  {
    return 0;
  }

  v28 = v14;
  v15 = *a1;
  v31 = MEMORY[0x277D84F90];
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v30 = *(v10 + 72);
    v18 = (v10 + 56);
    v19 = (v10 + 48);
    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_20E04F364(v17, v13);
      sub_20E04F364(v13, v8);
      (*v18)(v8, 0, 1, v9);
      v20 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
      sub_20E04F3C8(v8, v6);
      if ((*v19)(v6, 1, v9) == 1)
      {
        sub_20E04F438(v8);
        sub_20E04F4A0(v13);
        v21 = sub_20E04F438(v6);
        if (v20)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v22 = v9;
        v23 = *v6;
        sub_20E04F4A0(v6);
        v24 = v23;
        v9 = v22;
        [v20 setIndex_];
        sub_20E04F438(v8);
        v21 = sub_20E04F4A0(v13);
        if (v20)
        {
LABEL_10:
          MEMORY[0x20F32BF90](v21);
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v29 = v9;
            sub_20E322990();
            v9 = v29;
          }

          sub_20E3229B0();
          v29 = v31;
        }
      }

      v17 += v30;
      if (!--v16)
      {
        goto LABEL_14;
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
LABEL_14:
  sub_20E04F4FC();
  v26 = sub_20E322960();

  v25 = v28;
  [v28 setStatementIds_];

  return v25;
}

uint64_t sub_20E04F364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04F3C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04F438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E04F4A0(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20E04F4FC()
{
  result = qword_27C863B70;
  if (!qword_27C863B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C863B70);
  }

  return result;
}

void *sub_20E04F548(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v23 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D57D90]) init];
  if (v6)
  {
    v7 = *(type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0) + 20);
    v8 = v6;
    v9 = sub_20E04EA80(a1 + v7);
    [v8 setTypeIdentifier_];
  }

  v24 = v6;
  v25 = MEMORY[0x277D84F90];
  v10 = *a1;
  v11 = *(*a1 + 16);
  if (v11)
  {
    v12 = type metadata accessor for ToolKitProtoTypedValue(0);
    v13 = *(v12 - 8);
    v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    v16 = (v13 + 56);
    do
    {
      sub_20E04FAE4(v14, v5, type metadata accessor for ToolKitProtoTypedValue);
      (*v16)(v5, 0, 1, v12);
      v17 = sub_20E24FF14(v5);
      sub_20E04875C(v5, &qword_27C863B18, &qword_20E323EB0);
      if (v17)
      {
        v18 = v17;
        MEMORY[0x20F32BF90]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23[1] = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();
      }

      v14 += v15;
      --v11;
    }

    while (v11);
  }

  v19 = v24;
  if (v24)
  {
    sub_20E04FB4C();
    v20 = v19;
    v21 = sub_20E322960();

    [v20 setValues_];
  }

  else
  {
  }

  return v19;
}

id sub_20E04F7F0(unint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = [objc_allocWithZone(MEMORY[0x277D57D90]) init];
  if (!(v11 >> 61))
  {
    v13 = swift_projectBox();
    sub_20E04FAE4(v13, v10, type metadata accessor for ToolKitProtoTypeIdentifier);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v14 = sub_20E3227C0();
    __swift_project_value_buffer(v14, qword_280E12C48);
    v15 = sub_20E3227B0();
    v16 = sub_20E322A40();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20E031000, v15, v16, "Converter - Collection value is TypeInstanceKind of type identifier, converting...", v17, 2u);
      MEMORY[0x20F32CA80](v17, -1, -1);
    }

    if (v12)
    {
      sub_20E04FAE4(v10, v5, type metadata accessor for ToolKitProtoTypeIdentifier);
      (*(v7 + 56))(v5, 0, 1, v6);
      v18 = v12;
      v19 = sub_20E04EA80(v5);
      sub_20E04875C(v5, &qword_27C863B60, &qword_20E323F50);
      [v18 setTypeIdentifier_];
    }

    sub_20E04FA88(v10);
  }

  return v12;
}

uint64_t sub_20E04FA88(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E04FAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20E04FB4C()
{
  result = qword_27C863B78;
  if (!qword_27C863B78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C863B78);
  }

  return result;
}

id sub_20E04FB98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B80, &qword_20E323E70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v79 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v87 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v84 = &v79 - v10;
  v89 = sub_20E322060();
  v92 = *(v89 - 8);
  v11 = *(v92 + 64);
  v12 = MEMORY[0x28223BE20](v89);
  v82 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v85 = &v79 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (&v79 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B88, &qword_20E323E78);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v88 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v86 = (&v79 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v79 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v79 - v28;
  v30 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v31 = *(v30 - 1);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a1;
  sub_20E0486F4(a1, v29, &qword_27C863B88, &qword_20E323E78);
  v35 = *(v31 + 48);
  if (v35(v29, 1, v30) == 1)
  {
    sub_20E04875C(v29, &qword_27C863B88, &qword_20E323E78);
    return 0;
  }

  else
  {
    v81 = v5;
    sub_20E050524(v29, v34);
    v91 = [objc_allocWithZone(MEMORY[0x277D580B0]) init];
    v83 = v35;
    if (v91)
    {
      v37 = v30[7];
      v38 = objc_allocWithZone(MEMORY[0x277D58078]);
      v39 = v91;
      v40 = [v38 init];
      sub_20E0486F4(&v34[v37], v18, &qword_27C8639D0, &unk_20E33C230);
      v41 = type metadata accessor for TranscriptProtoStatementID(0);
      if ((*(*(v41 - 8) + 48))(v18, 1, v41) == 1)
      {
        sub_20E04875C(v18, &qword_27C8639D0, &unk_20E33C230);
      }

      else
      {
        v42 = *v18;
        sub_20E050588(v18, type metadata accessor for TranscriptProtoStatementID);
        [v40 setIndex_];
      }

      [v39 setStatementId_];

      v43 = v30[6];
      v44 = v39;
      v45 = sub_20E065D94(&v34[v43]);
      [v44 setUserAction_];

      v35 = v83;
    }

    v80 = v34;
    v46 = v90;
    sub_20E0486F4(v90, v27, &qword_27C863B88, &qword_20E323E78);
    v47 = v35(v27, 1, v30);
    v48 = v89;
    if (v47 == 1)
    {
      sub_20E04875C(v27, &qword_27C863B88, &qword_20E323E78);
    }

    else
    {
      v50 = *(v27 + 2);
      v49 = *(v27 + 3);

      sub_20E050588(v27, type metadata accessor for TranscriptProtoSystemPromptResolution);
    }

    v51 = v84;
    v52 = v85;
    sub_20E06C5DC(4, v84);
    v53 = v51;

    v54 = v92;
    v55 = *(v92 + 48);
    if (v55(v53, 1, v48) == 1)
    {
      sub_20E04875C(v53, &qword_27C863A90, &unk_20E33C020);
    }

    else
    {
      (*(v54 + 32))(v52, v53, v48);
      v56 = v91;
      if (v91)
      {
        v57 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v58 = v56;
        v59 = sub_20E322030();
        v60 = [v57 initWithNSUUID_];

        [v58 setActionEventId_];
        v54 = v92;

        v35 = v83;
      }

      (*(v54 + 8))(v52, v48);
    }

    v61 = v86;
    sub_20E0486F4(v46, v86, &qword_27C863B88, &qword_20E323E78);
    if (v35(v61, 1, v30) == 1)
    {
      sub_20E04875C(v61, &qword_27C863B88, &qword_20E323E78);
    }

    else
    {
      v62 = v61;
      v63 = *v61;
      v64 = *(v62 + 8);

      sub_20E050588(v62, type metadata accessor for TranscriptProtoSystemPromptResolution);
    }

    v65 = v87;
    sub_20E06C5DC(12, v87);

    if (v55(v65, 1, v48) == 1)
    {
      sub_20E04875C(v65, &qword_27C863A90, &unk_20E33C020);
      v66 = v81;
    }

    else
    {
      v67 = v82;
      (*(v54 + 32))(v82, v65, v48);
      v66 = v81;
      v68 = v91;
      if (v91)
      {
        v69 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v70 = v68;
        v71 = sub_20E322030();
        v72 = [v69 initWithNSUUID_];

        [v70 setSystemResponseEventId_];
        v54 = v92;
      }

      (*(v54 + 8))(v67, v48);
    }

    v73 = v88;
    sub_20E0486F4(v46, v88, &qword_27C863B88, &qword_20E323E78);
    v74 = v83(v73, 1, v30);
    v36 = v91;
    v75 = v80;
    if (v74 == 1)
    {
      sub_20E04875C(v73, &qword_27C863B88, &qword_20E323E78);
      v76 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
      (*(*(v76 - 8) + 56))(v66, 1, 1, v76);
    }

    else
    {
      sub_20E0486F4(v73 + v30[8], v66, &qword_27C863B80, &qword_20E323E70);
      sub_20E050588(v73, type metadata accessor for TranscriptProtoSystemPromptResolution);
    }

    v77 = sub_20E304654(v66);
    sub_20E04875C(v66, &qword_27C863B80, &qword_20E323E70);
    [v36 setInput_];
    sub_20E050588(v75, type metadata accessor for TranscriptProtoSystemPromptResolution);
  }

  return v36;
}

uint64_t sub_20E050524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E050588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_20E0505E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (&v44 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v44 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B98, &qword_20E323E80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v44 - v15;
  v17 = type metadata accessor for TranscriptProtoToolResolution(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v16, &qword_27C863B98, &qword_20E323E80);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_20E04875C(v16, &qword_27C863B98, &qword_20E323E80);
    return 0;
  }

  sub_20E050C38(v16, v21);
  v22 = [objc_allocWithZone(MEMORY[0x277D58118]) init];
  if (!v22)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v27 = sub_20E3227C0();
    __swift_project_value_buffer(v27, qword_280E12C48);
    v28 = sub_20E3227B0();
    v29 = sub_20E322A40();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_20E31B6C4(0xD00000000000002DLL, 0x800000020E35A260, &v46);
      _os_log_impl(&dword_20E031000, v28, v29, "%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x20F32CA80](v31, -1, -1);
      MEMORY[0x20F32CA80](v30, -1, -1);
    }

    v47 = 96;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v47, 0xD00000000000002DLL, 0x800000020E35A260);
    sub_20E050C9C(v21, type metadata accessor for TranscriptProtoToolResolution);
    return 0;
  }

  v23 = v22;
  sub_20E0486F4(v21, v12, &qword_27C863B90, &unk_20E345EF0);
  v24 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v25 = (*(*(v24 - 8) + 48))(v12, 1, v24);
  v45 = v6;
  if (v25 == 1)
  {
    sub_20E04875C(v12, &qword_27C863B90, &unk_20E345EF0);
    v26 = 0;
  }

  else
  {
    v32 = *v12;
    v33 = v12[1];

    sub_20E050C9C(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v26 = sub_20E322860();
  }

  [v23 setToolId_];

  v34 = *(v17 + 20);
  v35 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
  sub_20E0486F4(&v21[v34], v8, &qword_27C8639D0, &unk_20E33C230);
  v36 = type metadata accessor for TranscriptProtoStatementID(0);
  v37 = *(*(v36 - 8) + 48);
  if (v37(v8, 1, v36) == 1)
  {
    sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  else
  {
    v38 = *v8;
    sub_20E050C9C(v8, type metadata accessor for TranscriptProtoStatementID);
    [v35 setIndex_];
  }

  [v23 setStatementId_];

  v39 = *(v17 + 24);
  v40 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
  v41 = v45;
  sub_20E0486F4(&v21[v39], v45, &qword_27C8639D0, &unk_20E33C230);
  if (v37(v41, 1, v36) == 1)
  {
    sub_20E04875C(v41, &qword_27C8639D0, &unk_20E33C230);
  }

  else
  {
    v42 = *v41;
    sub_20E050C9C(v41, type metadata accessor for TranscriptProtoStatementID);
    [v40 setIndex_];
  }

  [v23 setOriginProgramStatementId_];

  sub_20E050C9C(v21, type metadata accessor for TranscriptProtoToolResolution);
  return v23;
}

uint64_t sub_20E050C38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoToolResolution(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E050C9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E050CFC(uint64_t a1)
{
  v33 = MEMORY[0x277D84F90];
  v2 = [objc_allocWithZone(MEMORY[0x277D57E78]) init];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 80);
    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;
    v9 = *(a1 + 80);

    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    if (v7)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {

        return v11;
      }

      v7 = *(v4 + 64 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        do
        {
LABEL_9:
          v13 = __clz(__rbit64(v7)) | (v10 << 6);
          v14 = (*(v4 + 48) + 16 * v13);
          v15 = *v14;
          v16 = v14[1];
          v17 = *(*(v4 + 56) + 8 * v13);
          v18 = *v14 == 0x616E6964726F6F63 && v16 == 0xEB00000000726F74;
          if (v18 || (v19 = *v14, v20 = v14[1], (sub_20E322D60() & 1) != 0))
          {
            v21 = 1;
          }

          else
          {
            v23 = v15 == 0x746E65696C63 && v16 == 0xE600000000000000;
            if (v23 || (sub_20E322D60() & 1) != 0)
            {
              v21 = 2;
            }

            else
            {
              v24 = v15 == 0x726F747563657865 && v16 == 0xE800000000000000;
              if (v24 || (sub_20E322D60() & 1) != 0)
              {
                v21 = 3;
              }

              else if (v15 == 0x72656E6E616C70 && v16 == 0xE700000000000000 || (sub_20E322D60() & 1) != 0)
              {
                v21 = 4;
              }

              else if (v15 == 0x624F6E6F69746361 && v16 == 0xEE00726576726573)
              {
                v21 = 6;
              }

              else if (sub_20E322D60())
              {
                v21 = 6;
              }

              else
              {
                v21 = 0;
              }
            }
          }

          [v3 setParticipant_];
          [v3 setSpanId_];
          v22 = v3;
          MEMORY[0x20F32BF90]();
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v25 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_20E322990();
          }

          v7 &= v7 - 1;
          sub_20E3229B0();
          v11 = v33;
        }

        while (v7);
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  if (qword_280E12B88 != -1)
  {
LABEL_48:
    swift_once();
  }

  v26 = sub_20E3227C0();
  __swift_project_value_buffer(v26, qword_280E12C48);
  v27 = sub_20E3227B0();
  v28 = sub_20E322A50();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_20E31B6C4(0xD000000000000045, 0x800000020E35A290, &v32);
    _os_log_impl(&dword_20E031000, v27, v28, "%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x20F32CA80](v30, -1, -1);
    MEMORY[0x20F32CA80](v29, -1, -1);
  }

  LOBYTE(v32) = 96;
  _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v32, 0xD000000000000045, 0x800000020E35A290);
  return MEMORY[0x277D84F90];
}

void *sub_20E05115C(uint64_t *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D57EB8]) init];
  v3 = v2;
  if (v2)
  {
    [v2 setExists_];
    v4 = *a1;
    v5 = a1[1];
    v6 = v3;
    v7 = sub_20E322860();
    [v6 setParameterId_];
  }

  if ((a1[3] & 1) == 0)
  {
    [v3 setParameterIndex_];
  }

  if (v3)
  {
    v8 = *(type metadata accessor for TranscriptProtoParameterConfirmation(0) + 24);
    v9 = v3;
    v10 = sub_20E06E458(a1 + v8);
    [v9 setItem_];
  }

  return v3;
}

NSObject *sub_20E051258(uint64_t a1)
{
  v128 = a1;
  v1 = type metadata accessor for TranscriptProtoActionFailure(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v126 = (&v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v125 = (&v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v124 = (&v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TranscriptProtoActionRequirement(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v122 = (&v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v13 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v127 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v121 = (&v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v123 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v119 = (&v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v120 = (&v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v117 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v39 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v117 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = &v117 - v44;
  v46 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v117 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(v128, v45, &qword_27C863BA8, &unk_20E345F00);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    v51 = &qword_27C863BA8;
    v52 = &unk_20E345F00;
    v53 = v45;
LABEL_17:
    sub_20E04875C(v53, v51, v52);
    return 0;
  }

  sub_20E0520A8(v45, v50, type metadata accessor for TranscriptProtoStatementOutcome);
  v54 = [objc_allocWithZone(MEMORY[0x277D58080]) init];
  sub_20E0486F4(v50, v41, &qword_27C863BA0, &unk_20E325F20);
  v55 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v56 = v50;
  if ((*(*(v55 - 8) + 48))(v41, 1, v55) == 1)
  {
LABEL_4:
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v57 = sub_20E3227C0();
    __swift_project_value_buffer(v57, qword_280E12C48);
    v58 = sub_20E3227B0();
    v59 = sub_20E322A50();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_20E031000, v58, v59, "IFTStatementOutcomeConverter.convert returns nil", v60, 2u);
      MEMORY[0x20F32CA80](v60, -1, -1);
      v61 = v54;
    }

    else
    {
      v61 = v58;
      v58 = v54;
    }

    sub_20E052110(v56, type metadata accessor for TranscriptProtoStatementOutcome);
    v51 = &qword_27C863BA0;
    v52 = &unk_20E325F20;
    v53 = v41;
    goto LABEL_17;
  }

  sub_20E0486F4(v41, v39, &qword_27C863BA0, &unk_20E325F20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v66 = v126;
        sub_20E0520A8(v39, v126, type metadata accessor for TranscriptProtoActionFailure);
        if (v54)
        {
          v98 = v54;
          v99 = sub_20E30225C(v66);
          [v98 setFailure:v99];
        }

        v69 = type metadata accessor for TranscriptProtoActionFailure;
      }

      else
      {
        if (EnumCaseMultiPayload != 10)
        {
          sub_20E052110(v39, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          goto LABEL_4;
        }

        v66 = v125;
        sub_20E0520A8(v39, v125, type metadata accessor for TranscriptProtoValueDisambiguation);
        if (v54)
        {
          v78 = v54;
          v79 = sub_20E1A0C90(v66);
          [v78 setValueDisambiguation:v79];
        }

        v69 = type metadata accessor for TranscriptProtoValueDisambiguation;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v30 = v127;
        sub_20E0520A8(v39, v127, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
        if (v54)
        {
          v84 = objc_allocWithZone(MEMORY[0x277D57EB0]);
          v85 = v54;
          v86 = [v84 init];
          v87 = v86;
          if (v86)
          {
            [v86 setExists_];
            v88 = *v30;
            v89 = *(v30 + 1);
            v90 = v87;
            v91 = sub_20E322860();
            [v90 setParameterId_];

            v92 = *(v118 + 20);
            v93 = v90;
            v94 = sub_20E06E458(&v30[v92]);
            [v93 setValue_];
          }

          [v85 setParameterCandidatesNotFounds:v87];
        }

        v65 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound;
        goto LABEL_46;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v66 = v122;
        sub_20E0520A8(v39, v122, type metadata accessor for TranscriptProtoActionRequirement);
        if (v54)
        {
          v67 = v54;
          v68 = sub_20E1A14FC(v66);
          [v67 setActionRequirement:v68];
        }

        v69 = type metadata accessor for TranscriptProtoActionRequirement;
      }

      else
      {
        v66 = v124;
        sub_20E0520A8(v39, v124, type metadata accessor for TranscriptProtoToolDisambiguation);
        if (v54)
        {
          v108 = v54;
          v109 = sub_20E315438(v66);
          [v108 setToolDisambiguation:v109];
        }

        v69 = type metadata accessor for TranscriptProtoToolDisambiguation;
      }
    }

LABEL_62:
    v82 = v69;
    v83 = v66;
    goto LABEL_63;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_20E0520A8(v39, v34, type metadata accessor for TranscriptProtoActionSuccess);
      if (v54)
      {
        v80 = v54;
        v81 = sub_20E066FF0(v34);
        [v80 setSuccess:v81];
      }

      v82 = type metadata accessor for TranscriptProtoActionSuccess;
      v83 = v34;
      goto LABEL_63;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v100 = v120;
      sub_20E0520A8(v39, v120, type metadata accessor for TranscriptProtoParameterNeedsValue);
      v101 = [objc_allocWithZone(MEMORY[0x277D57EC8]) init];
      v102 = v101;
      if (v101)
      {
        [v101 setExists_];
        v103 = *v100;
        v104 = v100[1];
        v105 = v102;
        v106 = sub_20E322860();
        [v105 setParameterId_];
      }

      v107 = v54;
      [v107 setParameterNeedsValue:v102];

      v82 = type metadata accessor for TranscriptProtoParameterNeedsValue;
      v83 = v100;
      goto LABEL_63;
    }

    sub_20E0520A8(v39, v30, type metadata accessor for TranscriptProtoActionConfirmation);
    if (v54)
    {
      v63 = v54;
      v64 = sub_20E04E5EC(v30);
      [v63 setActionConfirmation:v64];
    }

    v65 = type metadata accessor for TranscriptProtoActionConfirmation;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v95 = v119;
    sub_20E0520A8(v39, v119, type metadata accessor for TranscriptProtoParameterConfirmation);
    if (v54)
    {
      v96 = v54;
      v97 = sub_20E05115C(v95);
      [v96 setParameterConfirmation:v97];
    }

    v82 = type metadata accessor for TranscriptProtoParameterConfirmation;
    v83 = v95;
    goto LABEL_63;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v66 = v121;
    sub_20E0520A8(v39, v121, type metadata accessor for TranscriptProtoParameterNotAllowed);
    if (v54)
    {
      v110 = v54;
      v111 = sub_20E2505B0(v66);
      [v110 setParameterNotAllowed:v111];
    }

    v69 = type metadata accessor for TranscriptProtoParameterNotAllowed;
    goto LABEL_62;
  }

  v30 = v123;
  sub_20E0520A8(v39, v123, type metadata accessor for TranscriptProtoParameterDisambiguation);
  if (v54)
  {
    v70 = objc_allocWithZone(MEMORY[0x277D57EC0]);
    v71 = v54;
    v72 = [v70 init];
    v73 = v72;
    if (v72)
    {
      [v72 setExists_];
      v74 = *v30;
      v75 = *(v30 + 1);
      v76 = v73;
      v77 = sub_20E322860();
      [v76 setParameterId_];
    }

    if ((v30[32] & 1) == 0)
    {
      [v73 setParameterIndex_];
    }

    [v71 setParameterDisambiguation:v73];
  }

  v65 = type metadata accessor for TranscriptProtoParameterDisambiguation;
LABEL_46:
  v82 = v65;
  v83 = v30;
LABEL_63:
  sub_20E052110(v83, v82);
  sub_20E04875C(v41, &qword_27C863BA0, &unk_20E325F20);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v112 = sub_20E3227C0();
  __swift_project_value_buffer(v112, qword_280E12C48);
  v113 = sub_20E3227B0();
  v114 = sub_20E322A40();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 0;
    _os_log_impl(&dword_20E031000, v113, v114, "IFTStatementOutcomeConverter.convert returns successfully", v115, 2u);
    MEMORY[0x20F32CA80](v115, -1, -1);
  }

  sub_20E052110(v56, type metadata accessor for TranscriptProtoStatementOutcome);
  return v54;
}

uint64_t sub_20E0520A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E052110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E052170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v80 = (&v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v71 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v71 - v9;
  v83 = type metadata accessor for TranscriptProtoStatementID(0);
  v11 = *(v83 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v83);
  v75 = (&v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v16 = (&v71 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v71 - v19;
  v79 = sub_20E322060();
  v21 = *(v79 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v79);
  v74 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v25 = *(*(v24 - 1) + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v78 = v10;
  v29 = MEMORY[0x277D84F90];
  v84 = MEMORY[0x277D84F90];
  v30 = *(a1 + 16);
  if (v30)
  {
    v31 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v32 = v11;
    v33 = (v21 + 48);
    v34 = *(v26 + 72);
    v81 = v8;
    v82 = v34;
    v72 = (v21 + 32);
    v73 = v16;
    v71 = (v21 + 8);
    v35 = (v32 + 48);
    v76 = (v32 + 48);
    v77 = v20;
    do
    {
      sub_20E0528EC(v31, v28);
      v37 = [objc_allocWithZone(MEMORY[0x277D57E88]) init];
      if (v37)
      {
        v38 = v37;
        v39 = &v28[v24[7]];
        v40 = *v39;
        v41 = *(v39 + 1);
        sub_20E06C5DC(4, v20);
        v42 = v79;
        if ((*v33)(v20, 1, v79) == 1)
        {
          sub_20E04875C(v20, &qword_27C863A90, &unk_20E33C020);
        }

        else
        {
          v43 = v74;
          (*v72)(v74, v20, v42);
          v44 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v45 = v24;
          v46 = v33;
          v47 = v42;
          v48 = sub_20E322030();
          v49 = [v44 initWithNSUUID_];

          [v38 setActionEventId_];
          v50 = v43;
          v8 = v81;
          v51 = v47;
          v33 = v46;
          v24 = v45;
          v35 = v76;
          (*v71)(v50, v51);
        }

        v52 = v78;
        sub_20E04F3C8(&v28[v24[5]], v78);
        v53 = *v35;
        if ((*v35)(v52, 1, v83) == 1)
        {
          sub_20E04875C(v52, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v54 = v73;
          sub_20E0529B0(v52, v73);
          v55 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
          v56 = v55;
          if (v55)
          {
            [v55 setIndex_];
          }

          [v38 setResultStatementId_];

          sub_20E052950(v54, type metadata accessor for TranscriptProtoStatementID);
          v35 = v76;
        }

        sub_20E04F3C8(&v28[v24[6]], v8);
        if (v53(v8, 1, v83) == 1)
        {
          sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v57 = v8;
          v58 = v75;
          sub_20E0529B0(v57, v75);
          v59 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
          v60 = v59;
          if (v59)
          {
            [v59 setIndex_];
          }

          [v38 setOriginProgramStatementId_];

          sub_20E052950(v58, type metadata accessor for TranscriptProtoStatementID);
        }

        v61 = &v28[v24[8]];
        if (*(v61 + 1))
        {
          v62 = *v61;
          v63 = sub_20E322860();
        }

        else
        {
          v63 = 0;
        }

        [v38 setToolId_];

        v64 = sub_20E051258(v28);
        [v38 setOutcome_];

        v65 = v24[9];
        v66 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
        v67 = &v28[v65];
        v68 = v80;
        sub_20E04F3C8(v67, v80);
        if (v53(v68, 1, v83) == 1)
        {
          sub_20E04875C(v68, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v69 = *v68;
          sub_20E052950(v68, type metadata accessor for TranscriptProtoStatementID);
          [v66 setIndex_];
        }

        [v38 setOriginTaskStatementId_];

        v36 = v38;
        MEMORY[0x20F32BF90]();
        v8 = v81;
        if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v29 = v84;
        v20 = v77;
      }

      sub_20E052950(v28, type metadata accessor for TranscriptProtoInterpretedStatementResult);
      v31 += v82;
      --v30;
    }

    while (v30);
  }

  return v29;
}

uint64_t sub_20E0528EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E052950(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E0529B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_20E052A14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB0, &unk_20E33C350);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v79 = &v75 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v81 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = (&v75 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BC0, &unk_20E323E90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v75 - v13;
  v86 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v15 = *(v86 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = (&v75 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BC8, &unk_20E3461C0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v83 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v75 - v26;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v29 = *(Step - 1);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](Step);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  sub_20E0486F4(a1, v27, &qword_27C863BC8, &unk_20E3461C0);
  v33 = *(v29 + 48);
  if (v33(v27, 1, Step) != 1)
  {
    sub_20E0533D4(v27, v32, type metadata accessor for TranscriptProtoQueryStep);
    v35 = [objc_allocWithZone(MEMORY[0x277D57F80]) init];
    v34 = v35;
    v84 = v32;
    if (v35)
    {
      [v35 setExists_];
    }

    v36 = Step[5];
    v37 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
    v38 = &v84[v36];
    v39 = v84;
    sub_20E0486F4(v38, v21, &qword_27C8639D0, &unk_20E33C230);
    v40 = type metadata accessor for TranscriptProtoStatementID(0);
    if ((*(*(v40 - 8) + 48))(v21, 1, v40) == 1)
    {
      sub_20E04875C(v21, &qword_27C8639D0, &unk_20E33C230);
    }

    else
    {
      v41 = *v21;
      sub_20E05343C(v21, type metadata accessor for TranscriptProtoStatementID);
      v42 = v41;
      v39 = v84;
      [v37 setIndex_];
    }

    v43 = v34;
    [v43 setStatementId_];
    sub_20E0486F4(v39 + Step[6], v14, &qword_27C863BC0, &unk_20E323E90);
    if ((*(v15 + 48))(v14, 1, v86) == 1)
    {

      sub_20E05343C(v39, type metadata accessor for TranscriptProtoQueryStep);
      sub_20E04875C(v14, &qword_27C863BC0, &unk_20E323E90);
      return v34;
    }

    v78 = v43;
    v44 = v85;
    sub_20E0533D4(v14, v85, type metadata accessor for TranscriptProtoActionParameterContext);
    v45 = [objc_allocWithZone(MEMORY[0x277D57ED8]) init];
    if (!v45)
    {

      sub_20E05343C(v44, type metadata accessor for TranscriptProtoActionParameterContext);
      v55 = v39;
LABEL_28:
      sub_20E05343C(v55, type metadata accessor for TranscriptProtoQueryStep);
      return v34;
    }

    v46 = v45;
    v47 = [objc_allocWithZone(MEMORY[0x277D57D18]) init];
    if (!v47)
    {

      v56 = v85;
LABEL_27:
      sub_20E05343C(v56, type metadata accessor for TranscriptProtoActionParameterContext);
      v55 = v84;
      goto LABEL_28;
    }

    v48 = v47;
    v76 = v37;
    v77 = v46;
    [v47 setStatementId_];
    v49 = v85;
    v50 = v82;
    sub_20E0486F4(v85 + v86[7], v82, &qword_27C8639C8, &unk_20E323870);
    v51 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
    v52 = (*(*(v51 - 8) + 48))(v50, 1, v51);
    v53 = v78;
    if (v52 == 1)
    {
      sub_20E04875C(v50, &qword_27C8639C8, &unk_20E323870);
      v54 = 0;
    }

    else
    {
      v57 = v48;
      v58 = *v50;
      v59 = v50[1];

      sub_20E05343C(v50, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      v48 = v57;
      v54 = sub_20E322860();
    }

    v60 = v83;
    [v48 setToolId_];

    [v48 setActionClass_];
    if (!v34)
    {
      v67 = v77;
      [0 addQueries_];
      v53 = v48;
      v62 = v76;
LABEL_26:

      v56 = v49;
      goto LABEL_27;
    }

    v86 = v48;
    [v53 setContext_];
    [v53 addQueries_];

    sub_20E0486F4(v80, v60, &qword_27C863BC8, &unk_20E3461C0);
    v61 = v33(v60, 1, Step);
    v62 = v76;
    if (v61 == 1)
    {
      v63 = v53;
      v64 = &qword_27C863BC8;
      v65 = &unk_20E3461C0;
      v66 = v60;
    }

    else
    {
      v68 = v79;
      sub_20E0486F4(v60 + Step[7], v79, &qword_27C863BB0, &unk_20E33C350);
      v69 = v53;
      sub_20E05343C(v60, type metadata accessor for TranscriptProtoQueryStep);
      Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
      if ((*(*(Payload - 8) + 48))(v68, 1, Payload) != 1)
      {
        v71 = v81;
        sub_20E0486F4(v68, v81, &qword_27C863BB8, &qword_20E323E88);
        sub_20E05343C(v68, type metadata accessor for TranscriptProtoQueryPayload);
        v67 = v77;
        goto LABEL_25;
      }

      v64 = &qword_27C863BB0;
      v65 = &unk_20E33C350;
      v66 = v68;
    }

    sub_20E04875C(v66, v64, v65);
    v71 = v81;
    v67 = v77;
    PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
    (*(*(PayloadEnum - 8) + 56))(v71, 1, 1, PayloadEnum);
LABEL_25:
    v73 = sub_20E06DB4C(v71);
    sub_20E04875C(v71, &qword_27C863BB8, &qword_20E323E88);
    [v53 setPayloadType_];

    goto LABEL_26;
  }

  sub_20E04875C(v27, &qword_27C863BC8, &unk_20E3461C0);
  return 0;
}

uint64_t sub_20E0533D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E05343C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

LighthouseDataProcessor::ContextProtoContextDataSource_optional __swiftcall ContextProtoContextDataSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E0534BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E0639C0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ContextProtoContextType_optional __swiftcall ContextProtoContextType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 15;
  switch(rawValue)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v2 = 1;
      goto LABEL_25;
    case 2:
      v2 = 2;
      goto LABEL_25;
    case 3:
      v2 = 3;
      goto LABEL_25;
    case 4:
      v2 = 4;
      goto LABEL_25;
    case 5:
      v2 = 5;
      goto LABEL_25;
    case 6:
      v2 = 6;
      goto LABEL_25;
    case 7:
      v2 = 7;
      goto LABEL_25;
    case 8:
      v2 = 8;
      goto LABEL_25;
    case 9:
      v2 = 9;
      goto LABEL_25;
    case 10:
      v2 = 10;
      goto LABEL_25;
    case 11:
      v2 = 11;
      goto LABEL_25;
    case 12:
      v2 = 12;
      goto LABEL_25;
    case 13:
      v2 = 13;
      goto LABEL_25;
    case 14:
      v2 = 14;
LABEL_25:
      v3 = v2;
      goto LABEL_26;
    case 15:
LABEL_26:
      *v1 = v3;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    case 21:
      *v1 = 21;
      break;
    case 22:
      *v1 = 22;
      break;
    case 23:
      *v1 = 23;
      break;
    case 24:
      *v1 = 24;
      break;
    case 25:
      *v1 = 25;
      break;
    case 26:
      *v1 = 26;
      break;
    case 27:
      *v1 = 27;
      break;
    case 28:
      *v1 = 28;
      break;
    case 29:
      *v1 = 29;
      break;
    case 30:
      *v1 = 30;
      break;
    case 31:
      *v1 = 31;
      break;
    case 32:
      *v1 = 32;
      break;
    default:
      *v1 = 33;
      break;
  }

  return rawValue;
}

uint64_t sub_20E0536C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E06396C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ContextProtoStructedContextNowPlayingMediaRemotePlaybackState_optional __swiftcall ContextProtoStructedContextNowPlayingMediaRemotePlaybackState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E05373C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E063918();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaType_optional __swiftcall ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E0537B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E0638C4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaSubType_optional __swiftcall ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaSubType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E05383C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E063870();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ContextProtoStructuredContextSiriRequestContextUserClassification_optional __swiftcall ContextProtoStructuredContextSiriRequestContextUserClassification.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E0538C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E06381C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ContextProtoStructuredContextSiriRequestContextDeviceIdiom_optional __swiftcall ContextProtoStructuredContextSiriRequestContextDeviceIdiom.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E053944(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E0637C8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ContextProtoConfidenceBucket_optional __swiftcall ContextProtoConfidenceBucket.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E0539C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E063774();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E053A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E063720();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E053A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E0636CC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E053AF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E063678();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E053B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E063624();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ContextProtoRetrievedContext.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoRetrievedContext(0);
  v3 = v2[5];
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(*(v4 - 8) + 56);
  v5(&a1[v3], 1, 1, v4);
  v6 = v2[6];
  v7 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v8 = v2[7];
  v9 = type metadata accessor for ContextProtoContextMetadata(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v5(&a1[v2[8]], 1, 1, v4);
  v10 = v2[9];
  v11 = type metadata accessor for ContextProtoStructuredContext(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[v2[10]];
  *v12 = 0;
  v12[1] = 0;
  v13 = &a1[v2[11]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ContextProtoRetrievedContext.init(value:relevance:type:metadata:typedValue:structuredContext:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v26 = *a3;
  v11 = type metadata accessor for ContextProtoRetrievedContext(0);
  v12 = v11[5];
  v13 = type metadata accessor for ToolKitProtoTypedValue(0);
  v14 = *(*(v13 - 8) + 56);
  v14(&a9[v12], 1, 1, v13);
  v15 = v11[6];
  v16 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v16 - 8) + 56))(&a9[v15], 1, 1, v16);
  v17 = v11[7];
  v18 = type metadata accessor for ContextProtoContextMetadata(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v11[8];
  v14(&a9[v19], 1, 1, v13);
  v20 = v11[9];
  v21 = type metadata accessor for ContextProtoStructuredContext(0);
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  v22 = v11[11];
  v23 = &a9[v11[10]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a9[v12], &qword_27C863B18, &qword_20E323EB0);
  sub_20E05EC5C(a2, &a9[v15], &qword_27C863BD0, &qword_20E323EB8);
  *a9 = v26;
  sub_20E05EC5C(a4, &a9[v17], &qword_27C863BD8, &qword_20E323EC0);
  sub_20E05EC5C(a5, &a9[v19], &qword_27C863B18, &qword_20E323EB0);
  result = sub_20E05EC5C(a6, &a9[v20], &qword_27C863BE0, &qword_20E323EC8);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t ContextProtoContextMetadata.onScreenSurroundingText.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ContextProtoContextMetadata.entityID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ContextProtoContextMetadata.entityID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.appBundleID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ContextProtoContextMetadata.appBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.seq.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoContextMetadata(0) + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ContextProtoContextMetadata.seq.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_20E054938(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_20E054998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 40));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.isSelected.setter(char a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ContextProtoContextMetadata.isPrimary.setter(char a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t ContextProtoContextMetadata.dataSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t ContextProtoContextMetadata.dataSource.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t ContextProtoContextMetadata.appBundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoContextMetadata(0) + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoContextMetadata.appBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoContextMetadata(0) + 64));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.elementVisibility.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoContextMetadata(0) + 76));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ContextProtoContextMetadata.elementVisibility.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v6 = v2 + *(result + 76);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoContextMetadata.processInstanceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoContextMetadata(0) + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoContextMetadata.processInstanceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoContextMetadata(0) + 80));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoContextMetadata(0) + 84);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoContextMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoContextMetadata(0) + 84);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoContextMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoContextMetadata(0);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v3 = v2[7];
  v4 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for ContextProtoBoundingBox(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v8 = a1 + v2[9];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a1 + v2[10]);
  *v9 = 0;
  v9[1] = 0;
  *(a1 + v2[11]) = 2;
  *(a1 + v2[12]) = 2;
  v7(a1 + v2[13], 1, 1, v6);
  *(a1 + v2[14]) = 6;
  v10 = v2[15];
  v11 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = (a1 + v2[16]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v2[17];
  v14 = type metadata accessor for ContextProtoCGRect(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a1 + v13, 1, 1, v14);
  v15(a1 + v2[18], 1, 1, v14);
  v16 = a1 + v2[19];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (a1 + v2[20]);
  *v17 = 0;
  v17[1] = 0;
  v18 = a1 + v2[21];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoContextMetadata.init(entityID:appBundleID:saliency:onScreenSurroundingText:onScreenBoundingBox:seq:groupID:isSelected:isPrimary:screenDimensions:dataSource:displayRepresentation:appBundleIdentifier:screenSize:frame:elementVisibility:processInstanceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13, char a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25)
{
  v57 = *a16;
  v26 = type metadata accessor for ContextProtoContextMetadata(0);
  v27 = v26[7];
  v28 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v28 - 8) + 56))(&a9[v27], 1, 1, v28);
  v29 = v26[8];
  v48 = v29;
  v30 = type metadata accessor for ContextProtoBoundingBox(0);
  v31 = *(*(v30 - 8) + 56);
  v31(&a9[v29], 1, 1, v30);
  v32 = &a9[v26[9]];
  v46 = &a9[v26[10]];
  v49 = v26[12];
  v50 = v26[11];
  v47 = v26[13];
  v31(&a9[v47], 1, 1, v30);
  v33 = v26[14];
  a9[v33] = 6;
  v34 = v26[15];
  v45 = v33;
  v35 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  (*(*(v35 - 8) + 56))(&a9[v34], 1, 1, v35);
  v36 = v26[17];
  v37 = &a9[v26[16]];
  v38 = type metadata accessor for ContextProtoCGRect(0);
  v39 = *(*(v38 - 8) + 56);
  v39(&a9[v36], 1, 1, v38);
  v40 = v26[18];
  v39(&a9[v40], 1, 1, v38);
  v41 = &a9[v26[19]];
  v42 = &a9[v26[20]];
  v43 = &a9[v26[21]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a9 + 1) = a1;
  *(a9 + 2) = a2;
  *(a9 + 3) = a3;
  *(a9 + 4) = a4;
  sub_20E05EC5C(a5, &a9[v27], &qword_27C863BD0, &qword_20E323EB8);
  *a9 = a6;
  sub_20E05EC5C(a7, &a9[v48], &qword_27C863BE8, &qword_20E323ED0);
  *v32 = a8;
  v32[8] = a10 & 1;
  *v46 = a11;
  *(v46 + 1) = a12;
  a9[v50] = a13;
  a9[v49] = a14;
  sub_20E05EC5C(a15, &a9[v47], &qword_27C863BE8, &qword_20E323ED0);
  a9[v45] = v57;
  sub_20E05EC5C(a17, &a9[v34], &qword_27C863BF0, &qword_20E323ED8);
  *v37 = a18;
  *(v37 + 1) = a19;
  sub_20E05EC5C(a20, &a9[v36], &qword_27C863BF8, &qword_20E323EE0);
  result = sub_20E05EC5C(a21, &a9[v40], &qword_27C863BF8, &qword_20E323EE0);
  *v41 = a22;
  v41[8] = a23 & 1;
  *v42 = a24;
  *(v42 + 1) = a25;
  return result;
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  *a1 = 0u;
  a1[1] = 0u;
  v3 = a1 + *(v2 + 24);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.init(title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = a5 + *(type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ContextProtoBoundingBox.xCoordinate.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.yCoordinate.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.width.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.height.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  v1 = a1 + *(type metadata accessor for ContextProtoBoundingBox(0) + 32);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoBoundingBox.init(xCoordinate:yCoordinate:width:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a5 + *(type metadata accessor for ContextProtoBoundingBox(0) + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  *(a5 + 4) = BYTE4(a1) & 1;
  *(a5 + 8) = a2;
  *(a5 + 12) = BYTE4(a2) & 1;
  *(a5 + 16) = a3;
  *(a5 + 20) = BYTE4(a3) & 1;
  *(a5 + 24) = a4;
  *(a5 + 28) = BYTE4(a4) & 1;
  return result;
}

uint64_t sub_20E055E78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E055F14(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoSurroundingText.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoSurroundingText(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = *(v2 + 20);
  v4 = type metadata accessor for ContextProtoBoundingBox(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoSurroundingText.init(text:onScreenBoundingBox:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for ContextProtoSurroundingText(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for ContextProtoBoundingBox(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = &a4[*(v8 + 24)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  *(a4 + 1) = a2;
  return sub_20E05EC5C(a3, &a4[v9], &qword_27C863BE8, &qword_20E323ED0);
}

uint64_t ContextProtoConfidence.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ContextProtoConfidence(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 4) = 0;
  return result;
}

uint64_t ContextProtoConfidence.init(score:bucket:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v5 = *a1;
  v6 = a2 + *(type metadata accessor for ContextProtoConfidence(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = a3;
  *(a2 + 4) = v5;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.appBundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.appBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.contentIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.contentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.brandIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.brandIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.iTunesStoreIdentifier.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.iTunesStoreIdentifier.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.iTunesStoreAlbumIdentifier.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.iTunesStoreAlbumIdentifier.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.iTunesStoreArtistIdentifier.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.iTunesStoreArtistIdentifier.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.title.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.albumName.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.albumName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.trackArtistName.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.trackArtistName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.currentlyPlayingSongAdamID.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.currentlyPlayingSongAdamID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0) + 68);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0) + 68);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 89) = 1031;
  *(a1 + 91) = 9;
  v2 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  v3 = a1 + *(v2 + 68);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

__n128 ContextProtoStructedContextNowPlayingMediaItem.init(appBundleID:contentIdentifier:brandIdentifier:iTunesStoreIdentifier:iTunesStoreAlbumIdentifier:iTunesStoreArtistIdentifier:playbackState:mediaType:mediaSubType:title:albumName:trackArtistName:currentlyPlayingSongAdamID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, char *a14, char *a15, char *a16, __int128 a17, __int128 a18, __n128 a19, uint64_t a20, uint64_t a21)
{
  v25 = *a14;
  v26 = *a15;
  v27 = *a16;
  *(a9 + 89) = 1031;
  *(a9 + 91) = 9;
  v28 = a9 + *(type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0) + 68);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 89) = v25;
  *(a9 + 90) = v26;
  *(a9 + 91) = v27;
  *(a9 + 96) = a17;
  *(a9 + 112) = a18;
  result = a19;
  *(a9 + 128) = a19;
  *(a9 + 144) = a20;
  *(a9 + 152) = a21;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.bargeInModes.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.inputOrigin.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.inputOrigin.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.responseMode.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.responseMode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.encodedLocation.getter()
{
  v1 = v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 64);
  v2 = *v1;
  sub_20E047C8C(*v1, *(v1 + 8));
  return v2;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.encodedLocation.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 64);
  result = sub_20E047D10(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.countryCode.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 68));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.siriLocale.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.siriLocale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 72));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.uiScale.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 80));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.uiScale.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v6 = v2 + *(result + 80);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.temperatureUnit.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.temperatureUnit.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 84));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.allowUserGeneratedContent.setter(char a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.censorSpeech.setter(char a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.deviceIdiom.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *a1 = *(v1 + *(result + 100));
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.deviceIdiom.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 100)) = v2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.didPscfire.setter(char a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 108);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoStructuredContextSiriRequestContext.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 108);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoStructuredContextSiriRequestContext.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(a1 + 80) = 33686018;
  *(a1 + 84) = 2;
  v3 = v2[15];
  v4 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[16]) = xmmword_20E323EA0;
  v5 = (a1 + v2[17]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[18]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v2[19];
  v8 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = a1 + v2[20];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a1 + v2[21]);
  *v10 = 0;
  v10[1] = 0;
  *(a1 + v2[22]) = 2;
  *(a1 + v2[23]) = 2;
  v11 = v2[24];
  v12 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  *(a1 + v2[25]) = 12;
  *(a1 + v2[26]) = 2;
  v13 = a1 + v2[27];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v15 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v15;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.init(sessionID:requestID:inputOrigin:responseMode:isEyesFree:isMultiUser:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:deviceRestrictions:bargeInModes:identifiedUser:encodedLocation:countryCode:siriLocale:contentRestrictions:uiScale:temperatureUnit:allowUserGeneratedContent:censorSpeech:meCard:deviceIdiom:didPscfire:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, char a26, uint64_t a27, char *a28, char a29)
{
  v57 = *a28;
  v30 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v31 = v30[15];
  v48 = v31;
  v32 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  (*(*(v32 - 8) + 56))(a9 + v31, 1, 1, v32);
  v33 = a9 + v30[16];
  *v33 = xmmword_20E323EA0;
  v34 = (a9 + v30[17]);
  v35 = (a9 + v30[18]);
  v36 = v30[19];
  v37 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  (*(*(v37 - 8) + 56))(a9 + v36, 1, 1, v37);
  v38 = a9 + v30[20];
  v39 = (a9 + v30[21]);
  v46 = v30[23];
  v47 = v30[22];
  v40 = v30[24];
  v41 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  (*(*(v41 - 8) + 56))(a9 + v40, 1, 1, v41);
  v42 = v30[25];
  *(a9 + v42) = 12;
  v43 = v30[27];
  v45 = v30[26];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 81) = *(&a10 + 1);
  *a9 = a11;
  *(a9 + 8) = a12;
  sub_20E05EC5C(a13, a9 + v48, &qword_27C863C08, &qword_20E323EF0);
  sub_20E047D10(*v33, *(v33 + 8));
  *v33 = a14;
  *(v33 + 8) = a15;
  *v34 = a16;
  v34[1] = a17;
  *v35 = a18;
  v35[1] = a19;
  sub_20E05EC5C(a20, a9 + v36, &qword_27C863C10, &qword_20E323EF8);
  *v38 = a21;
  *(v38 + 8) = a22 & 1;
  *v39 = a23;
  v39[1] = a24;
  *(a9 + v47) = a25;
  *(a9 + v46) = a26;
  result = sub_20E05EC5C(a27, a9 + v40, &qword_27C863C18, &qword_20E323F00);
  *(a9 + v42) = v57;
  *(a9 + v45) = a29;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.appRestriction.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.movieRestriction.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.tvRestriction.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_20E057F0C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E057FA8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  v1 = a1 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0) + 32);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.init(appRestriction:countryCode:movieRestriction:tvRestriction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a6 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0) + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 4) = BYTE4(a1) & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 28) = BYTE4(a4) & 1;
  *(a6 + 32) = a5;
  *(a6 + 36) = BYTE4(a5) & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.userID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.userID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1282;
  v1 = a1 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0) + 28);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.init(userID:isOnlyUserInHome:classification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  *(a5 + 17) = 5;
  v10 = a5 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 17) = v9;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.nickName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.nickName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.fullName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.fullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v3 = a1 + *(v2 + 40);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.init(givenName:middleName:familyName:nickName:fullName:addresses:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = a9 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0) + 40);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  a9[2] = a2;
  a9[3] = a3;
  a9[4] = a4;
  a9[5] = a5;
  a9[6] = a6;
  a9[7] = a7;
  a9[8] = a8;
  a9[9] = a10;
  a9[10] = a11;
  *a9 = a12;
  a9[1] = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.countryCode.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_20E058790@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E05882C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  v3 = a1 + *(v2 + 40);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

__n128 ContextProtoStructuredContextSiriRequestContextAddress.init(label:street:city:state:postalCode:countryCode:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  v20 = a9 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0) + 40);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.menuHierarchyComponents.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v3 = a1 + *(v2 + 40);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.init(identifier:title:standaloneTitle:embeddingDescription:isDisabled:menuHierarchyComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v19 = a9 + *(type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0) + 40);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 16) = a10;
  *(a9 + 24) = a11;
  *(a9 + 32) = a3;
  return result;
}

uint64_t sub_20E058CBC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E058D58(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoStructedContextAppInFocusContext.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v3 = a1 + *(v2 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t ContextProtoStructedContextAppInFocusContext.init(bundleID:appName:category:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = a7 + *(type metadata accessor for ContextProtoStructedContextAppInFocusContext(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ContextProtoStructedContextAppContext.category.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ContextProtoStructedContextAppContext.category.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ContextProtoStructedContextAppContext.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructedContextAppContext(0);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v3 = a1 + *(v2 + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t ContextProtoStructedContextAppContext.init(bundleID:appName:category:isActive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = a8 + *(type metadata accessor for ContextProtoStructedContextAppContext(0) + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 16) = a7;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUIText.fractionVisible.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUIText.fractionVisible.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUIText.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v3 = v2[5];
  v4 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[7]];
  *v7 = 0;
  v7[8] = 1;
  v8 = &a1[v2[8]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUIText.init(text:boundingBox:uiMetadata:fractionVisible:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v15 = v14[5];
  v16 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = v14[6];
  v18 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  (*(*(v18 - 8) + 56))(&a7[v17], 1, 1, v18);
  v19 = v14[8];
  v20 = &a7[v14[7]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  *(a7 + 1) = a2;
  sub_20E05EC5C(a3, &a7[v15], &qword_27C863BF8, &qword_20E323EE0);
  result = sub_20E05EC5C(a4, &a7[v17], &qword_27C863C20, &qword_20E323F08);
  *v20 = a5;
  v20[8] = a6 & 1;
  return result;
}

uint64_t sub_20E0596F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E059790(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E059884@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.fractionVisible.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.fractionVisible.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.appBundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.appBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v3 = v2[5];
  v4 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  *v5 = 0;
  v5[8] = 1;
  v6 = &a1[v2[7]];
  *v6 = 0;
  v6[1] = 0;
  v7 = &a1[v2[8]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.init(isActive:boundingBox:fractionVisible:appBundleID:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v13 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v14 = v13[5];
  v15 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = &a7[v13[6]];
  v17 = &a7[v13[7]];
  v18 = &a7[v13[8]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  result = sub_20E05EC5C(a2, &a7[v14], &qword_27C863BF8, &qword_20E323EE0);
  *v16 = a3;
  v16[8] = a4 & 1;
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t ContextProtoCGRect.init(origin:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContextProtoCGPoint(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for ContextProtoCGRect(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for ContextProtoCGSize(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C863C30, &qword_20E323F18);
  return sub_20E05EC5C(a2, a3 + v8, &qword_27C863C38, &unk_20E323F20);
}

uint64_t sub_20E05A264@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_20E05A2BC@<X0>(uint64_t (*a1)(void)@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = a2 + *(a1(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = a3;
  a2[1] = a4;
  return result;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.deviceIdsID.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.deviceIdsID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_20E05A5E8()
{
  sub_20E322DE0();
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t sub_20E05A638(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E0635D0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E05A684()
{
  sub_20E322DE0();
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t ContextProtoVersionedQueryDecorationOutput.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 52);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoVersionedQueryDecorationOutput.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 52);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoVersionedQueryDecorationOutput.init()@<X0>(uint64_t a1@<X8>)
{
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v3 = DecorationOutput[11];
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a1 + v3, 1, 1, DecorationToolRetrievalResponse);
  v5 = (a1 + DecorationOutput[12]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + DecorationOutput[13];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v8 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = 0;
  *(a1 + 32) = v8;
  *(a1 + 40) = 0;
  return result;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.init(version:spans:spansIsPresent:toolRetrievalResponse:dynamicEnumerationEntities:dynamicEnumerationEntitiesIsPresent:context:contextIsPresent:deviceIdsID:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v17 = DecorationOutput[11];
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a8 + v17, 1, 1, DecorationToolRetrievalResponse);
  v19 = DecorationOutput[13];
  v20 = (a8 + DecorationOutput[12]);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  result = sub_20E05EC5C(a3, a8 + v17, &qword_27C863C40, &unk_20E33C460);
  *(a8 + 16) = a4;
  *(a8 + 24) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  *v20 = a9;
  v20[1] = a10;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.context.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.deviceIdsID.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoQueryDecorationOutput.deviceIdsID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 48);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoQueryDecorationOutput.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 48);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoQueryDecorationOutput.init()@<X0>(uint64_t a1@<X8>)
{
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v3 = DecorationOutput[10];
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a1 + v3, 1, 1, DecorationToolRetrievalResponse);
  v5 = (a1 + DecorationOutput[11]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + DecorationOutput[12];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v8 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = 0;
  *(a1 + 32) = v8;
  *(a1 + 40) = 0;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.init(spans:spansIsPresent:toolRetrievalResponse:dynamicEnumerationEntities:dynamicEnumerationEntitiesIsPresent:context:contextIsPresent:deviceIdsID:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v18 = DecorationOutput[10];
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a9 + v18, 1, 1, DecorationToolRetrievalResponse);
  v20 = DecorationOutput[12];
  v21 = (a9 + DecorationOutput[11]);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  result = sub_20E05EC5C(a3, a9 + v18, &qword_27C863C40, &unk_20E33C460);
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *v21 = a8;
  v21[1] = a10;
  return result;
}

uint64_t sub_20E05B098@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 44);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E05B134(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 44);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoQueryDecorationInput.init()@<X0>(uint64_t a1@<X8>)
{
  DecorationInput = type metadata accessor for ContextProtoQueryDecorationInput(0);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  v3 = a1 + *(DecorationInput + 44);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoQueryDecorationInput.init(query:requestID:caller:contextID:loggingSalt:servicesExecuted:deviceIdsID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *a5;
  v20 = a9 + *(type metadata accessor for ContextProtoQueryDecorationInput(0) + 44);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v19;
  *(a9 + 40) = a4;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 24) = a11;
  *(a9 + 32) = a3;
  *(a9 + 72) = a10;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  return result;
}

uint64_t ContextProtoDynamicEnumerationEntity.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v3 = v2[5];
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[7]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  return result;
}

uint64_t ContextProtoDynamicEnumerationEntity.init(identifier:parameterTypeInstance:typedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v11 = v10[5];
  v12 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = v10[6];
  v14 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  v15 = &a5[v10[7]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_20E05EC5C(a3, &a5[v11], &qword_27C863C48, &qword_20E323F30);
  return sub_20E05EC5C(a4, &a5[v13], &qword_27C863B18, &qword_20E323EB0);
}

LighthouseDataProcessor::ContextProtoRetrievedTool::AppSource_optional __swiftcall ContextProtoRetrievedTool.AppSource.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E05B834()
{
  v2 = *v0;
  sub_20E322DE0();
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t sub_20E05B898(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E06357C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E05B8E4()
{
  v2 = *v0;
  sub_20E322DE0();
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t sub_20E05B960(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E063528();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ContextProtoRetrievedTool.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoRetrievedTool(0);
  v3 = *(v2 + 32);
  v4 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  v7 = MEMORY[0x277D84F90];
  *(a1 + 8) = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  *(a1 + 24) = v7;
  return result;
}

uint64_t ContextProtoRetrievedTool.init(definition:similarityScore:sampleInvocations:stage:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v11 = *a3;
  v12 = type metadata accessor for ContextProtoRetrievedTool(0);
  v13 = *(v12 + 32);
  v14 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  v15 = a5 + *(v12 + 36);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, a5 + v13, &qword_27C863C50, &qword_20E323F38);
  *a5 = a6;
  *(a5 + 8) = a2;
  *(a5 + 16) = v11;
  *(a5 + 24) = a4;
  return result;
}

uint64_t ContextProtoUIControlTool.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoUIControlTool(0);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  v3 = *(v2 + 28);
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 32)];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoUIControlTool.init(appBundleID:command:commandID:toolDef:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v16 = type metadata accessor for ContextProtoUIControlTool(0);
  v17 = *(v16 + 28);
  v18 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v18 - 8) + 56))(&a8[v17], 1, 1, v18);
  v19 = &a8[*(v16 + 32)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  return sub_20E05EC5C(a7, &a8[v17], &qword_27C863B90, &unk_20E345EF0);
}

uint64_t ContextProtoSampleInvocation.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ContextProtoSampleInvocation(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t ContextProtoSampleInvocation.init(invocationString:score:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v8 = a3 + *(type metadata accessor for ContextProtoSampleInvocation(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

uint64_t sub_20E05C2E0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = a1(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = a2(0);
  v9 = *(v8 + 20);
  v10 = a3(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = a4 + *(v8 + 24);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoToolRetrievalType.init(identifier:definition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C863B60, &qword_20E323F50);
  return sub_20E05EC5C(a2, a3 + v8, &qword_27C863C60, &qword_20E323F58);
}

uint64_t ContextProtoToolQuery.appBundleIds.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ContextProtoToolQuery.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ContextProtoToolQuery(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoToolQuery.init(query:appBundleIds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a4 + *(type metadata accessor for ContextProtoToolQuery(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_20E05C7A8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2(0);
  (*(*(v11 - 8) + 56))(a6, 1, 1, v11);
  v12 = a6 + *(a3(0) + 20);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  return sub_20E05EC5C(a1, a6, a4, a5);
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.retrievedTools.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.types.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_20E05C988@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E05CA24(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0) + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  v4 = MEMORY[0x277D84F90];
  *(a1 + 40) = MEMORY[0x277D84F90];
  *(a1 + 48) = v4;
  return result;
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.init(originalSubQuery:rewrittenQuery:confidence:retrievedTools:types:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  v16 = a7 + *(type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0) + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a8;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t ContextProtoSpanMatchedEntity.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoSpanMatchedEntity.init(typedValue:matchMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v9 = &a3[*(v6 + 24)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a3[v7], &qword_27C863B18, &qword_20E323EB0);
  *a3 = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.entityName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ContextProtoEntityMatch.entityName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.originAppBundleID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ContextProtoEntityMatch.originAppBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.userUtterance.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t ContextProtoEntityMatch.userUtterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoEntityMatch(0) + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoEntityMatch.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoEntityMatch(0) + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoEntityMatch(0) + 56);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoEntityMatch.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoEntityMatch(0) + 56);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoEntityMatch.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoEntityMatch(0);
  v3 = v2[12];
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  (*(*(matched - 8) + 56))(a1 + v3, 1, 1, matched);
  v5 = (a1 + v2[13]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + v2[14];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 45) = 0;
  a1[7] = 0;
  a1[8] = 0xE000000000000000;
  a1[9] = 0;
  a1[10] = 0xE000000000000000;
  return result;
}

__n128 ContextProtoEntityMatch.init(sourceItemIdentifier:entityName:startIndex:endIndex:matchScore:matchProperties:matcherType:originAppBundleID:userUtterance:identifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, __n128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v22 = *a8;
  v23 = type metadata accessor for ContextProtoEntityMatch(0);
  v24 = v23[12];
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  (*(*(matched - 8) + 56))(a9 + v24, 1, 1, matched);
  v26 = v23[14];
  v27 = (a9 + v23[13]);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a10;
  sub_20E05EC5C(a7, a9 + v24, &qword_27C863C68, &qword_20E323F60);
  *(a9 + 52) = v22;
  result = a11;
  *(a9 + 56) = a11;
  *(a9 + 72) = a12;
  *(a9 + 80) = a13;
  *v27 = a14;
  v27[1] = a15;
  return result;
}

uint64_t ContextProtoMatchProperties.maxTokenCount.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ContextProtoMatchProperties.maxTokenCount.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoMatchProperties.matchedTokenCount.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t ContextProtoMatchProperties.matchedTokenCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ContextProtoMatchProperties.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v3 = *(matched + 24);
  v4 = type metadata accessor for ContextProtoAliasTypes(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(matched + 28);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoMatchProperties.init(maxTokenCount:matchedTokenCount:matchedAliasTypes:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v13 = *(matched + 24);
  v14 = type metadata accessor for ContextProtoAliasTypes(0);
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  v15 = a6 + *(matched + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  return sub_20E05EC5C(a5, a6 + v13, &qword_27C863C70, &qword_20E323F68);
}

uint64_t ContextProtoAliasTypes.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ContextProtoAliasTypes(0) + 20);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoAliasTypes.init(options:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for ContextProtoAliasTypes(0) + 20);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = a1;
  return result;
}

uint64_t _s23LighthouseDataProcessor25ContextProtoRetrievedToolV0dE14DefinitionEnumO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v55 = a2;
  v2 = type metadata accessor for ContextProtoUIControlTool(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = (&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v50 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v17 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v53 = (&v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v50 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v50 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v50 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EA8, &qword_20E325CF8);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v36 = &v50 - v35;
  v37 = *(v34 + 56);
  sub_20E063ADC(v54, &v50 - v35, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  sub_20E063ADC(v55, &v36[v37], type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_20E063ADC(v36, v29, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v43 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier;
        v44 = v29;
        goto LABEL_19;
      }

      sub_20E063A74(&v36[v37], v8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      v40 = static ToolKitProtoAssistantSchemaIdentifier.== infix(_:_:)(v29, v8);
      v46 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier;
      sub_20E063A14(v8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      v41 = v29;
    }

    else
    {
      sub_20E063ADC(v36, v31, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      if (swift_getEnumCaseMultiPayload())
      {
        v43 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
        v44 = v31;
        goto LABEL_19;
      }

      sub_20E063A74(&v36[v37], v16, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      v40 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v31, v16);
      v46 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
      sub_20E063A14(v16, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      v41 = v31;
    }

LABEL_21:
    v42 = v46;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_20E063ADC(v36, v26, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v43 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
      v44 = v26;
      goto LABEL_19;
    }

    v45 = v50;
    sub_20E063A74(&v36[v37], v50, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v40 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v26, v45);
    v46 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
    sub_20E063A14(v45, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v41 = v26;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v47 = v53;
    sub_20E063ADC(v36, v53, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v43 = type metadata accessor for ContextProtoUIControlTool;
      v44 = v47;
      goto LABEL_19;
    }

    v48 = v52;
    sub_20E063A74(&v36[v37], v52, type metadata accessor for ContextProtoUIControlTool);
    v40 = _s23LighthouseDataProcessor25ContextProtoUIControlToolV2eeoiySbAC_ACtFZ_0(v47, v48);
    v46 = type metadata accessor for ContextProtoUIControlTool;
    sub_20E063A14(v48, type metadata accessor for ContextProtoUIControlTool);
    v41 = v47;
    goto LABEL_21;
  }

  sub_20E063ADC(v36, v23, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v39 = v51;
    sub_20E063A74(&v36[v37], v51, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v40 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v23, v39);
    sub_20E063A14(v39, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v41 = v23;
    v42 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
LABEL_22:
    sub_20E063A14(v41, v42);
    sub_20E063A14(v36, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    return v40 & 1;
  }

  v43 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
  v44 = v23;
LABEL_19:
  sub_20E063A14(v44, v43);
  sub_20E04875C(v36, &qword_27C863EA8, &qword_20E325CF8);
  v40 = 0;
  return v40 & 1;
}

uint64_t _s23LighthouseDataProcessor022ContextProtoStructuredD4KindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v66 = a2;
  v2 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContextProtoStructedContextAppContext(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v60 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v59 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v59 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v59 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v59 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v59 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v59 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB0, &qword_20E325D00);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v43 = &v59 - v42;
  v44 = *(v41 + 56);
  sub_20E063ADC(v65, &v59 - v42, type metadata accessor for ContextProtoStructuredContextKind);
  sub_20E063ADC(v66, &v43[v44], type metadata accessor for ContextProtoStructuredContextKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_20E063ADC(v43, v30, type metadata accessor for ContextProtoStructuredContextKind);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v53 = v62;
        sub_20E063A74(&v43[v44], v62, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
        v47 = _s23LighthouseDataProcessor022ContextProtoStructuredD14OnScreenUITextV2eeoiySbAC_ACtFZ_0(v30, v53);
        v48 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText;
        sub_20E063A14(v53, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
        v49 = v30;
        goto LABEL_25;
      }

      v51 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText;
      v52 = v30;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_20E063ADC(v43, v27, type metadata accessor for ContextProtoStructuredContextKind);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v50 = v63;
        sub_20E063A74(&v43[v44], v63, type metadata accessor for ContextProtoStructedContextAppContext);
        v47 = static ContextProtoStructedContextAppContext.== infix(_:_:)(v27, v50);
        v48 = type metadata accessor for ContextProtoStructedContextAppContext;
        sub_20E063A14(v50, type metadata accessor for ContextProtoStructedContextAppContext);
        v49 = v27;
        goto LABEL_25;
      }

      v51 = type metadata accessor for ContextProtoStructedContextAppContext;
      v52 = v27;
    }

    else
    {
      sub_20E063ADC(v43, v24, type metadata accessor for ContextProtoStructuredContextKind);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v55 = v64;
        sub_20E063A74(&v43[v44], v64, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
        v47 = static ContextProtoStructedContextNowPlayingMediaItem.== infix(_:_:)(v24, v55);
        sub_20E063A14(v55, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
        v49 = v24;
        v56 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem;
LABEL_26:
        sub_20E063A14(v49, v56);
        sub_20E063A14(v43, type metadata accessor for ContextProtoStructuredContextKind);
        return v47 & 1;
      }

      v51 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem;
      v52 = v24;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E063ADC(v43, v36, type metadata accessor for ContextProtoStructuredContextKind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v46 = v60;
        sub_20E063A74(&v43[v44], v60, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
        v47 = _s23LighthouseDataProcessor022ContextProtoStructuredd19IntelligenceCommandD0V2eeoiySbAC_ACtFZ_0(v36, v46);
        v48 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext;
        sub_20E063A14(v46, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
        v49 = v36;
LABEL_25:
        v56 = v48;
        goto LABEL_26;
      }

      v51 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext;
      v52 = v36;
    }

    else
    {
      sub_20E063ADC(v43, v33, type metadata accessor for ContextProtoStructuredContextKind);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v54 = v61;
        sub_20E063A74(&v43[v44], v61, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
        v47 = static ContextProtoStructedContextAppInFocusContext.== infix(_:_:)(v33, v54);
        v48 = type metadata accessor for ContextProtoStructedContextAppInFocusContext;
        sub_20E063A14(v54, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
        v49 = v33;
        goto LABEL_25;
      }

      v51 = type metadata accessor for ContextProtoStructedContextAppInFocusContext;
      v52 = v33;
    }
  }

  else
  {
    sub_20E063ADC(v43, v38, type metadata accessor for ContextProtoStructuredContextKind);
    if (!swift_getEnumCaseMultiPayload())
    {
      v57 = v59;
      sub_20E063A74(&v43[v44], v59, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
      v47 = _s23LighthouseDataProcessor022ContextProtoStructuredd11SiriRequestD0V2eeoiySbAC_ACtFZ_0(v38, v57);
      v48 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext;
      sub_20E063A14(v57, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
      v49 = v38;
      goto LABEL_25;
    }

    v51 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext;
    v52 = v38;
  }

  sub_20E063A14(v52, v51);
  sub_20E04875C(v43, &qword_27C863EB0, &qword_20E325D00);
  v47 = 0;
  return v47 & 1;
}

uint64_t sub_20E05E834(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20E05E888(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20E05EC5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_20E05ECE4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20E05ED20()
{
  result = qword_27C863C78;
  if (!qword_27C863C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863C78);
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

unint64_t sub_20E05EDF0()
{
  result = qword_27C863C90;
  if (!qword_27C863C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863C90);
  }

  return result;
}

unint64_t sub_20E05EE78()
{
  result = qword_27C863CA8;
  if (!qword_27C863CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863CA8);
  }

  return result;
}

unint64_t sub_20E05EF00()
{
  result = qword_27C863CC0;
  if (!qword_27C863CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863CC0);
  }

  return result;
}

unint64_t sub_20E05EF88()
{
  result = qword_27C863CD8;
  if (!qword_27C863CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863CD8);
  }

  return result;
}

unint64_t sub_20E05F010()
{
  result = qword_27C863CF0;
  if (!qword_27C863CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863CF0);
  }

  return result;
}

unint64_t sub_20E05F098()
{
  result = qword_27C863D08;
  if (!qword_27C863D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863D08);
  }

  return result;
}

unint64_t sub_20E05F120()
{
  result = qword_27C863D20;
  if (!qword_27C863D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863D20);
  }

  return result;
}

unint64_t sub_20E05F1A8()
{
  result = qword_27C863D38;
  if (!qword_27C863D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863D38);
  }

  return result;
}

unint64_t sub_20E05F230()
{
  result = qword_27C863D50;
  if (!qword_27C863D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863D50);
  }

  return result;
}

unint64_t sub_20E05F2B8()
{
  result = qword_27C863D68;
  if (!qword_27C863D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863D68);
  }

  return result;
}

unint64_t sub_20E05F340()
{
  result = qword_27C863D80;
  if (!qword_27C863D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863D80);
  }

  return result;
}

unint64_t sub_20E05F3C8()
{
  result = qword_27C863D98;
  if (!qword_27C863D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863D98);
  }

  return result;
}

unint64_t sub_20E05F450()
{
  result = qword_27C863DB0;
  if (!qword_27C863DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863DB0);
  }

  return result;
}

unint64_t sub_20E05F4D8()
{
  result = qword_27C863DC8;
  if (!qword_27C863DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863DC8);
  }

  return result;
}

uint64_t sub_20E05F55C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for ContextProtoContextType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContextProtoContextType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.TypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoRestrictionContext.PersonReachableAs(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ToolKitProtoRestrictionContext.PersonReachableAs(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ToolKitProtoRestrictionContext.TextTypedWith.KeyboardType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoRestrictionContext.TextTypedWith.KeyboardType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptProtoPlanSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptProtoPlanSource(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoRuntimePlatform(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ToolKitProtoRuntimePlatform(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_20E05FE18()
{
  sub_20E05FFF4(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E0FB00, type metadata accessor for ContextProtoConfidence, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E05FFF4(319, qword_280E12A88, type metadata accessor for ContextProtoContextMetadata, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E05FFF4(319, qword_280E116D8, type metadata accessor for ContextProtoStructuredContext, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_20E05FFF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20E060080()
{
  sub_20E05FFF4(319, &qword_280E03FE0, type metadata accessor for ContextProtoSurroundingText, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E05FFF4(319, qword_280E0FB00, type metadata accessor for ContextProtoConfidence, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E05FFF4(319, qword_280E0EF60, type metadata accessor for ContextProtoBoundingBox, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E0634D8(319, &qword_280E03F08, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_20E0634D8(319, &qword_280E12B60, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_20E0634D8(319, qword_280E12A28, &type metadata for ContextProtoContextDataSource, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_20E05FFF4(319, qword_280E04C80, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_20E05FFF4(319, qword_280E10250, type metadata accessor for ContextProtoCGRect, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_20E3221C0();
                    if (v9 <= 0x3F)
                    {
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

void sub_20E060394()
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E060464()
{
  sub_20E0634D8(319, &qword_280E03F00, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E060538()
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E0EF60, type metadata accessor for ContextProtoBoundingBox, MEMORY[0x277D83D88]);
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

uint64_t sub_20E0606D4()
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ContextProtoStructedContextAppInFocusContext(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ContextProtoStructedContextAppContext(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(319);
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

void sub_20E0607C0()
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E0634D8(319, qword_280E11910, &type metadata for ContextProtoStructedContextNowPlayingMediaRemotePlaybackState, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E0634D8(319, qword_280E11870, &type metadata for ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaType, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E0634D8(319, &qword_280E11868, &type metadata for ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaSubType, MEMORY[0x277D83D88]);
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

void sub_20E0609A0()
{
  sub_20E0634D8(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E0634D8(319, &qword_280E12B60, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E05FFF4(319, qword_280E11200, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E0634D8(319, &qword_280E12B40, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_20E05FFF4(319, qword_280E112A8, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_20E0634D8(319, &qword_280E03F08, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_20E05FFF4(319, qword_280E11150, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_20E0634D8(319, qword_280E112F8, &type metadata for ContextProtoStructuredContextSiriRequestContextDeviceIdiom, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_20E3221C0();
                    if (v9 <= 0x3F)
                    {
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

void sub_20E060CA0()
{
  sub_20E0634D8(319, &qword_280E03ED8, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_20E060DB8()
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B60, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E0634D8(319, qword_280E11248, &type metadata for ContextProtoStructuredContextSiriRequestContextUserClassification, MEMORY[0x277D83D88]);
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

void sub_20E060F00()
{
  sub_20E05FFF4(319, &qword_280E04058, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_20E061024()
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E061100()
{
  sub_20E0634D8(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_20E061224()
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E0612FC()
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E0613DC()
{
  sub_20E05FFF4(319, qword_280E10250, type metadata accessor for ContextProtoCGRect, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E115A0, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E0634D8(319, &qword_280E03F08, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
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

void sub_20E0615BC()
{
  sub_20E05FFF4(319, qword_280E10250, type metadata accessor for ContextProtoCGRect, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E03F08, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_20E061720()
{
  sub_20E05FFF4(319, qword_280E100D8, type metadata accessor for ContextProtoCGPoint, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E101B0, type metadata accessor for ContextProtoCGSize, MEMORY[0x277D83D88]);
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

uint64_t __swift_get_extra_inhabitant_index_336Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_20E3221C0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_337Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_20E3221C0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_20E061988()
{
  sub_20E05FFF4(319, &qword_280E03F90, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E05FFF4(319, &qword_27C863DF0, type metadata accessor for ContextProtoDynamicEnumerationEntity, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E05FFF4(319, &qword_280E04060, type metadata accessor for ContextProtoRetrievedContext, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_20E05FFF4(319, qword_280E04E60, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

uint64_t getEnumTagSinglePayload for ContextProtoVersionedQueryDecorationOutput.Version(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ContextProtoVersionedQueryDecorationOutput.Version(_WORD *result, int a2, int a3)
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

void sub_20E061C78()
{
  sub_20E05FFF4(319, &qword_280E03F90, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E05FFF4(319, &qword_27C863DF0, type metadata accessor for ContextProtoDynamicEnumerationEntity, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E05FFF4(319, &qword_280E04060, type metadata accessor for ContextProtoRetrievedContext, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_20E05FFF4(319, qword_280E04E60, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_20E061E70()
{
  sub_20E0634D8(319, &qword_27C863E18, &type metadata for ContextProtoQueryDecorationCoreService, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_20E061F98()
{
  sub_20E05FFF4(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
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

void sub_20E0620CC()
{
  sub_20E05FFF4(319, &qword_280E03FB8, type metadata accessor for ContextProtoSampleInvocation, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E04010, &type metadata for ContextProtoRetrievedTool.AppSource, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E05FFF4(319, qword_280E0E7E8, type metadata accessor for ContextProtoRetrievedTool.Definition, MEMORY[0x277D83D88]);
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

uint64_t sub_20E06222C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_20E0622BC(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20E06243C()
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ContextProtoUIControlTool(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_20E0624F4()
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E12080, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83D88]);
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

uint64_t sub_20E062628()
{
  result = sub_20E3221C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_327Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v14 = v12;
    v15 = *(v13 + 48);
    v16 = a1;
LABEL_5:

    return v15(v16, a2, v14);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a2)
  {
    v14 = v17;
    v15 = *(v18 + 48);
    v16 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v20 = sub_20E3221C0();
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + *(a3 + 24);

  return v21(v22, a2, v20);
}

uint64_t __swift_store_extra_inhabitant_index_328Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v16 = v14;
    v17 = *(v15 + 56);
    v18 = a1;
LABEL_5:

    return v17(v18, a2, a2, v16);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v20 = *(v19 - 8);
  if (*(v20 + 84) == a3)
  {
    v16 = v19;
    v17 = *(v20 + 56);
    v18 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v22 = sub_20E3221C0();
  v23 = *(*(v22 - 8) + 56);
  v24 = a1 + *(a4 + 24);

  return v23(v24, a2, a2, v22);
}

void sub_20E062988()
{
  sub_20E05FFF4(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E0DC88, type metadata accessor for ToolKitProtoTypeDefinition.Version1, MEMORY[0x277D83D88]);
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

uint64_t __swift_get_extra_inhabitant_index_443Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_444Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E062BFC()
{
  sub_20E0634D8(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_203Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_204Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_20E062F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_20E3221C0();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_20E062FCC()
{
  sub_20E05FFF4(319, &qword_280E04008, type metadata accessor for ContextProtoRetrievedTool, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E05FFF4(319, &qword_280E03F88, type metadata accessor for ContextProtoToolRetrievalType, MEMORY[0x277D83940]);
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

void sub_20E063110()
{
  sub_20E05FFF4(319, &qword_280E04028, type metadata accessor for ContextProtoEntityMatch, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
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

void sub_20E063234()
{
  sub_20E05FFF4(319, qword_280E0D640, type metadata accessor for ContextProtoMatchProperties, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_20E063384()
{
  sub_20E0634D8(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E05FFF4(319, &qword_280E0FBA0, type metadata accessor for ContextProtoAliasTypes, MEMORY[0x277D83D88]);
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

void sub_20E0634D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_20E063528()
{
  result = qword_27C863E30;
  if (!qword_27C863E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E30);
  }

  return result;
}

unint64_t sub_20E06357C()
{
  result = qword_27C863E38;
  if (!qword_27C863E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E38);
  }

  return result;
}

unint64_t sub_20E0635D0()
{
  result = qword_27C863E40;
  if (!qword_27C863E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E40);
  }

  return result;
}

unint64_t sub_20E063624()
{
  result = qword_27C863E48;
  if (!qword_27C863E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E48);
  }

  return result;
}

unint64_t sub_20E063678()
{
  result = qword_27C863E50;
  if (!qword_27C863E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E50);
  }

  return result;
}

unint64_t sub_20E0636CC()
{
  result = qword_27C863E58;
  if (!qword_27C863E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E58);
  }

  return result;
}

unint64_t sub_20E063720()
{
  result = qword_27C863E60;
  if (!qword_27C863E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E60);
  }

  return result;
}

unint64_t sub_20E063774()
{
  result = qword_27C863E68;
  if (!qword_27C863E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E68);
  }

  return result;
}

unint64_t sub_20E0637C8()
{
  result = qword_27C863E70;
  if (!qword_27C863E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E70);
  }

  return result;
}

unint64_t sub_20E06381C()
{
  result = qword_27C863E78;
  if (!qword_27C863E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E78);
  }

  return result;
}

unint64_t sub_20E063870()
{
  result = qword_27C863E80;
  if (!qword_27C863E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E80);
  }

  return result;
}

unint64_t sub_20E0638C4()
{
  result = qword_27C863E88;
  if (!qword_27C863E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E88);
  }

  return result;
}

unint64_t sub_20E063918()
{
  result = qword_27C863E90;
  if (!qword_27C863E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E90);
  }

  return result;
}

unint64_t sub_20E06396C()
{
  result = qword_27C863E98;
  if (!qword_27C863E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E98);
  }

  return result;
}

unint64_t sub_20E0639C0()
{
  result = qword_27C863EA0;
  if (!qword_27C863EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863EA0);
  }

  return result;
}

uint64_t sub_20E063A14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E063A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E063ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E063DD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B30, &qword_20E323E58);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  if (!a1)
  {
    return 0;
  }

  v6 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = type metadata accessor for TranscriptProtoParameterSet(0);
    v9 = *(v8 - 8);
    v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    v12 = (v9 + 56);
    do
    {
      sub_20E063F94(v10, v5);
      (*v12)(v5, 0, 1, v8);
      v13 = sub_20E04CF14(v5);
      sub_20E063FF8(v5);
      if (v13)
      {
        v14 = v13;
        MEMORY[0x20F32BF90]();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v6 = v18;
      }

      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return v6;
}

uint64_t sub_20E063F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoParameterSet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E063FF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B30, &qword_20E323E58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20E064060(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC0, &qword_20E325D10);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v30 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277D57E00]) init];
  if (v17)
  {
    sub_20E0486F4(a1, v12, &qword_27C863EC0, &qword_20E325D10);
    v18 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
    v19 = *(*(v18 - 8) + 48);
    if (v19(v12, 1, v18) == 1)
    {
      v20 = v17;
      sub_20E04875C(v12, &qword_27C863EC0, &qword_20E325D10);
      v21 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
      (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
    }

    else
    {
      sub_20E0486F4(&v12[*(v18 + 24)], v16, &qword_27C863B60, &qword_20E323F50);
      v22 = v17;
      sub_20E06442C(v12);
    }

    v23 = sub_20E04EA80(v16);
    sub_20E04875C(v16, &qword_27C863B60, &qword_20E323F50);
    [v17 setTypeIdentifier_];

    sub_20E0486F4(a1, v10, &qword_27C863EC0, &qword_20E325D10);
    if (v19(v10, 1, v18) == 1)
    {
      v24 = v17;
      sub_20E04875C(v10, &qword_27C863EC0, &qword_20E325D10);
      v25 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
      (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
    }

    else
    {
      sub_20E0486F4(&v10[*(v18 + 28)], v5, &qword_27C863EB8, &qword_20E325D08);
      v26 = v17;
      sub_20E06442C(v10);
    }

    v27 = [objc_allocWithZone(MEMORY[0x277D57DE0]) init];
    v28 = v27;
    if (v27)
    {
      [v27 setExists_];
    }

    sub_20E04875C(v5, &qword_27C863EB8, &qword_20E325D08);
    [v17 setDisplayRepresentation_];
  }

  return v17;
}

uint64_t sub_20E06442C(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E064488(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0x616E6964726F6F63 && a2 == 0xEB00000000726F74)
  {
    return 1;
  }

  if (sub_20E322D60())
  {
    return 1;
  }

  if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000 || (sub_20E322D60() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x726F747563657865 && a2 == 0xE800000000000000 || (sub_20E322D60() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x72656E6E616C70 && a2 == 0xE700000000000000 || (sub_20E322D60() & 1) != 0)
  {
    return 4;
  }

  result = 6;
  if (a1 != 0x624F6E6F69746361 || a2 != 0xEE00726576726573)
  {
    if (sub_20E322D60())
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_20E064624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v185 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v188 = &v173 - v6;
  v181 = type metadata accessor for TranscriptProtoExecutorError(0);
  v7 = *(*(v181 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v181);
  v187 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v190 = &v173 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v184 = &v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v189 = &v173 - v15;
  v180 = type metadata accessor for TranscriptProtoPlannerError(0);
  v16 = *(*(v180 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v180);
  v186 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v191 = &v173 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v183 = &v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v173 - v24;
  v179 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  v26 = *(*(v179 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v179);
  v29 = &v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v192 = &v173 - v30;
  v31 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v182 = *(v31 - 8);
  v32 = *(v182 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v178 = (&v173 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x28223BE20](v33);
  v177 = (&v173 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v176 = (&v173 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = (&v173 - v40);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = (&v173 - v43);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = (&v173 - v46);
  MEMORY[0x28223BE20](v45);
  v49 = (&v173 - v48);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v54 = &v173 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v56 = &v173 - v55;
  v57 = [objc_allocWithZone(MEMORY[0x277D58058]) init];
  if (v57)
  {
    v174 = v29;
    v175 = v25;
    v193 = v57;
    sub_20E0486F4(a1, v56, &qword_27C863EE0, &qword_20E325D18);
    v58 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
    if ((*(*(v58 - 8) + 48))(v56, 1, v58) == 1)
    {
      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v59 = sub_20E3227C0();
      __swift_project_value_buffer(v59, qword_280E12C48);
      v194 = 0;
      v195 = 0xE000000000000000;
      sub_20E322B00();

      v194 = 0xD000000000000026;
      v195 = 0x800000020E35A2E0;
      type metadata accessor for TranscriptProtoSessionError(0);
      sub_20E065D4C(&qword_27C863EE8, type metadata accessor for TranscriptProtoSessionError);
      v60 = sub_20E322470();
      MEMORY[0x20F32BF40](v60);

      v62 = v194;
      v61 = v195;

      v63 = sub_20E3227B0();
      v64 = sub_20E322A40();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v194 = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_20E31B6C4(v62, v61, &v194);
        _os_log_impl(&dword_20E031000, v63, v64, "%s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x20F32CA80](v66, -1, -1);
        MEMORY[0x20F32CA80](v65, -1, -1);
      }

      LOBYTE(v194) = 98;
      _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v194, v62, v61);

      goto LABEL_8;
    }

    v173 = v56;
    sub_20E0486F4(v56, v54, &qword_27C863EE0, &qword_20E325D18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v67 = v193;
      if (EnumCaseMultiPayload == 2)
      {
        v77 = v191;
        sub_20E065C1C(v54, v191, type metadata accessor for TranscriptProtoPlannerError);
        v78 = [objc_allocWithZone(MEMORY[0x277D57F38]) init];
        v56 = v173;
        if (v78)
        {
          v79 = v78;
          v80 = v189;
          sub_20E0486F4(v77, v189, &qword_27C863ED0, &unk_20E33C2C0);
          v81 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
          if ((*(*(v81 - 8) + 48))(v80, 1, v81) == 1)
          {
            if (qword_280E12B88 != -1)
            {
              swift_once();
            }

            v82 = sub_20E3227C0();
            __swift_project_value_buffer(v82, qword_280E12C48);
            v83 = v186;
            sub_20E065CE4(v77, v186, type metadata accessor for TranscriptProtoPlannerError);
            v84 = sub_20E3227B0();
            v85 = sub_20E322A40();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v194 = v87;
              *v86 = 136315138;
              sub_20E065D4C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError);
              v88 = sub_20E322470();
              v89 = v83;
              v91 = v90;
              sub_20E065C84(v89, type metadata accessor for TranscriptProtoPlannerError);
              v92 = sub_20E31B6C4(v88, v91, &v194);

              *(v86 + 4) = v92;
              _os_log_impl(&dword_20E031000, v84, v85, "IFTSchemaIFTPlannerError, unknown error. %s", v86, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v87);
              MEMORY[0x20F32CA80](v87, -1, -1);
              MEMORY[0x20F32CA80](v86, -1, -1);
            }

            else
            {

              sub_20E065C84(v83, type metadata accessor for TranscriptProtoPlannerError);
            }

            v67 = v193;
          }

          else
          {
            v123 = v184;
            sub_20E0486F4(v80, v184, &qword_27C863ED0, &unk_20E33C2C0);
            v124 = swift_getEnumCaseMultiPayload();
            if (v124)
            {
              if (v124 == 1)
              {
                v125 = v177;
                sub_20E065C1C(v123, v177, type metadata accessor for TranscriptProtoIntelligenceFlowError);
                v126 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
                v127 = v126;
                if (v126)
                {
                  v128 = *v125;
                  v129 = v125[1];
                  v130 = v126;
                  v131 = sub_20E322860();
                  [v130 setDomain_];

                  [v130 setCode_];
                }

                [v79 setNetworkError_];

                sub_20E065C84(v125, type metadata accessor for TranscriptProtoIntelligenceFlowError);
              }

              else
              {
                [v79 setFailedToPlan_];
              }
            }

            else
            {
              v152 = v123;
              v153 = v176;
              sub_20E065C1C(v152, v176, type metadata accessor for TranscriptProtoIntelligenceFlowError);
              v154 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
              v155 = v154;
              if (v154)
              {
                v156 = *v153;
                v157 = v153[1];
                v158 = v154;
                v67 = v193;
                v159 = sub_20E322860();
                [v158 setDomain_];

                [v158 setCode_];
              }

              [v79 setOther_];

              sub_20E065C84(v153, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            }
          }

          sub_20E04875C(v80, &qword_27C863ED0, &unk_20E33C2C0);
          [v67 setPlannerError_];
        }

        v151 = type metadata accessor for TranscriptProtoPlannerError;
      }

      else
      {
        v77 = v190;
        sub_20E065C1C(v54, v190, type metadata accessor for TranscriptProtoExecutorError);
        v108 = [objc_allocWithZone(MEMORY[0x277D57E20]) init];
        v56 = v173;
        if (v108)
        {
          v109 = v108;
          v110 = v188;
          sub_20E0486F4(v77, v188, &qword_27C863EC8, &unk_20E359E90);
          v111 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
          if ((*(*(v111 - 8) + 48))(v110, 1, v111) == 1)
          {
            if (qword_280E12B88 != -1)
            {
              swift_once();
            }

            v112 = sub_20E3227C0();
            __swift_project_value_buffer(v112, qword_280E12C48);
            v113 = v187;
            sub_20E065CE4(v77, v187, type metadata accessor for TranscriptProtoExecutorError);
            v114 = sub_20E3227B0();
            v115 = sub_20E322A40();
            if (os_log_type_enabled(v114, v115))
            {
              v116 = swift_slowAlloc();
              v117 = swift_slowAlloc();
              v194 = v117;
              *v116 = 136315138;
              sub_20E065D4C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError);
              v118 = sub_20E322470();
              v119 = v113;
              v121 = v120;
              sub_20E065C84(v119, type metadata accessor for TranscriptProtoExecutorError);
              v122 = sub_20E31B6C4(v118, v121, &v194);

              *(v116 + 4) = v122;
              _os_log_impl(&dword_20E031000, v114, v115, "IFTSchemaIFTExecutorError, unknown error. %s", v116, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v117);
              MEMORY[0x20F32CA80](v117, -1, -1);
              MEMORY[0x20F32CA80](v116, -1, -1);
            }

            else
            {

              sub_20E065C84(v113, type metadata accessor for TranscriptProtoExecutorError);
            }

            v67 = v193;
          }

          else
          {
            v143 = v185;
            sub_20E0486F4(v110, v185, &qword_27C863EC8, &unk_20E359E90);
            if ((*(v182 + 48))(v143, 1, v31) == 1)
            {
              [v109 setFailedToExecute_];
            }

            else
            {
              v144 = v178;
              sub_20E065C1C(v143, v178, type metadata accessor for TranscriptProtoIntelligenceFlowError);
              v145 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
              v146 = v145;
              if (v145)
              {
                v147 = *v144;
                v148 = v144[1];
                v149 = v145;
                v150 = sub_20E322860();
                [v149 setDomain_];

                v67 = v193;
                [v149 setCode_];
              }

              [v109 setOther_];

              sub_20E065C84(v144, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            }
          }

          sub_20E04875C(v110, &qword_27C863EC8, &unk_20E359E90);
          [v67 setExecutorError_];
        }

        v151 = type metadata accessor for TranscriptProtoExecutorError;
      }

      v75 = v151;
      v76 = v77;
      goto LABEL_66;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_20E065C1C(v54, v49, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v69 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
      v70 = v69;
      v56 = v173;
      if (v69)
      {
        v71 = *v49;
        v72 = v49[1];
        v73 = v69;
        v74 = sub_20E322860();
        [v73 setDomain_];

        [v73 setCode_];
      }

      v67 = v193;
      [v193 setOther_];

      v75 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
      v76 = v49;
LABEL_66:
      sub_20E065C84(v76, v75);
      goto LABEL_67;
    }

    v93 = v192;
    sub_20E065C1C(v54, v192, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    v94 = [objc_allocWithZone(MEMORY[0x277D58050]) init];
    v56 = v173;
    if (!v94)
    {
LABEL_74:
      sub_20E065C84(v93, type metadata accessor for TranscriptProtoSessionCoordinatorError);
LABEL_8:
      v67 = v193;
LABEL_67:
      sub_20E04875C(v56, &qword_27C863EE0, &qword_20E325D18);
      return v67;
    }

    v95 = v94;
    v96 = v175;
    sub_20E0486F4(v93, v175, &qword_27C863ED8, &unk_20E33C2B0);
    v97 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
    if ((*(*(v97 - 8) + 48))(v96, 1, v97) == 1)
    {
      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v98 = sub_20E3227C0();
      __swift_project_value_buffer(v98, qword_280E12C48);
      v99 = v174;
      sub_20E065CE4(v93, v174, type metadata accessor for TranscriptProtoSessionCoordinatorError);
      v100 = sub_20E3227B0();
      v101 = sub_20E322A40();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v194 = v103;
        *v102 = 136315138;
        sub_20E065D4C(&qword_27C863F00, type metadata accessor for TranscriptProtoSessionCoordinatorError);
        v104 = sub_20E322470();
        v106 = v105;
        sub_20E065C84(v99, type metadata accessor for TranscriptProtoSessionCoordinatorError);
        v107 = sub_20E31B6C4(v104, v106, &v194);

        *(v102 + 4) = v107;
        _os_log_impl(&dword_20E031000, v100, v101, "IFTSchemaIFTSessionCoordinatorError has no failedToConvertClientEvent. %s", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v103);
        MEMORY[0x20F32CA80](v103, -1, -1);
        MEMORY[0x20F32CA80](v102, -1, -1);

LABEL_73:
        sub_20E04875C(v175, &qword_27C863ED8, &unk_20E33C2B0);
        [v193 setSessionCoordinatorError_];

        goto LABEL_74;
      }

      v141 = type metadata accessor for TranscriptProtoSessionCoordinatorError;
      v142 = v99;
    }

    else
    {
      v132 = v96;
      v133 = v183;
      sub_20E0486F4(v132, v183, &qword_27C863ED8, &unk_20E33C2B0);
      v134 = swift_getEnumCaseMultiPayload();
      if (v134)
      {
        if (v134 == 1)
        {
          sub_20E065C1C(v133, v44, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v135 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
          v136 = v135;
          if (v135)
          {
            v137 = *v44;
            v138 = v44[1];
            v139 = v135;
            v140 = sub_20E322860();
            [v139 setDomain_];

            [v139 setCode_];
          }

          [v95 setFailedToWriteTranscript_];

          v141 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
          v142 = v44;
        }

        else
        {
          sub_20E065C1C(v133, v41, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v167 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
          v168 = v167;
          if (v167)
          {
            v169 = *v41;
            v170 = v41[1];
            v171 = v167;
            v172 = sub_20E322860();
            [v171 setDomain_];

            [v171 setCode_];
          }

          [v95 setFailedToConvertClientEvent_];

          v141 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
          v142 = v41;
        }
      }

      else
      {
        sub_20E065C1C(v133, v47, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v160 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
        v161 = v160;
        if (v160)
        {
          v162 = *v47;
          v163 = v47[1];
          v164 = v160;
          v165 = sub_20E322860();
          [v164 setDomain_];

          [v164 setCode_];
        }

        [v95 setOther_];

        v141 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
        v142 = v47;
      }
    }

    sub_20E065C84(v142, v141);
    goto LABEL_73;
  }

  return 0;
}

uint64_t sub_20E065C1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E065C84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E065CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E065D4C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_20E065D94(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F08, &qword_20E325D20);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F10, &unk_20E33C3B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v39 - v15;
  v17 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v16, &qword_27C863F10, &unk_20E33C3B0);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    sub_20E066340(v16, v21, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
    v22 = [objc_allocWithZone(MEMORY[0x277D580D0]) init];
    sub_20E0486F4(v21, v12, &qword_27C863F08, &qword_20E325D20);
    v23 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
    if ((*(*(v23 - 8) + 48))(v12, 1, v23) != 1)
    {
      sub_20E0486F4(v12, v10, &qword_27C863F08, &qword_20E325D20);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          [v22 setDisambiguationIndexSelected_];
          goto LABEL_9;
        }

        if (EnumCaseMultiPayload == 4)
        {
          sub_20E066340(v10, v5, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
          if (v22)
          {
            v30 = objc_allocWithZone(MEMORY[0x277D580C8]);
            v31 = v22;
            v32 = [v30 init];
            [v31 setRequirementAddressed_];

            v33 = [v31 requirementAddressed];
            if (v33)
            {
              v34 = v33;
              [v33 setIsRequirementSatisfied_];
            }
          }

          sub_20E0663A8(v5, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
          goto LABEL_9;
        }

        sub_20E0663A8(v10, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
        if (!v22 || (v35 = objc_allocWithZone(MEMORY[0x277D580B8]), v36 = v22, v37 = [v35 init], objc_msgSend(v36, sel_setActionCanceled_, v37), v36, v37, (v38 = objc_msgSend(v36, sel_actionCanceled)) == 0))
        {
LABEL_9:
          sub_20E0663A8(v21, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
          sub_20E04875C(v12, &qword_27C863F08, &qword_20E325D20);
          return v22;
        }

        v25 = v38;
        [v38 setExists:1];
LABEL_8:

        goto LABEL_9;
      }

      if (!EnumCaseMultiPayload)
      {
        if (v22)
        {
          [v22 setIsActionConfirmed_];
        }

        goto LABEL_9;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (v22)
        {
          [v22 setIsParameterConfirmed_];
        }

        goto LABEL_9;
      }

      sub_20E0663A8(v10, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
    }

    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v24 = sub_20E3227C0();
    __swift_project_value_buffer(v24, qword_280E12C48);
    v25 = sub_20E3227B0();
    v26 = sub_20E322A40();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20E031000, v25, v26, "Unknown prompt resolution user action value", v27, 2u);
      MEMORY[0x20F32CA80](v27, -1, -1);
    }

    goto LABEL_8;
  }

  sub_20E04875C(v16, &qword_27C863F10, &unk_20E33C3B0);
  return 0;
}