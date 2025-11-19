void *ContextRetrieval.init()()
{
  type metadata accessor for ContextClient();
  v1 = swift_allocObject();
  v0[2] = sub_254E617C0(v1, v2);
  sub_254E9DC8C();
  swift_allocObject();
  v0[3] = sub_254E9DC7C();
  sub_254E9DCBC();
  swift_allocObject();
  v0[4] = sub_254E9DCAC();
  return v0;
}

uint64_t sub_254E617C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  sub_254E61870(&qword_280C40C00, a2, type metadata accessor for ContextClient);
  sub_254E6775C(&qword_27F755CD8);
  swift_allocObject();

  *(v2 + 16) = sub_254E9E02C();

  return v2;
}

uint64_t sub_254E61870(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254E618B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ContextRetrieval.__deallocating_deinit()
{
  ContextRetrieval.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t ContextRetrieval.deinit()
{

  return v0;
}

uint64_t sub_254E61964()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_254E619C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_254E61A24()
{
  sub_254E619C0(319, &qword_280C3FE68, type metadata accessor for DetectedEntity, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_254E619C0(319, &qword_280C3FE60, type metadata accessor for DetectedEntityDetails, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_254E619C0(319, &qword_27F755AA0, type metadata accessor for UIContextElement, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UIElement(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t static UIContextXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C40A28 != -1)
  {
    swift_once();
  }

  v2 = sub_254E9E10C();
  v3 = sub_254E61C34(v2, qword_280C40A30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_254E61C34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_254E61D44()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_254E619C0(319, &qword_280C409E8, type metadata accessor for CGRect, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_254E627E4(319, qword_280C40700);
      if (v2 <= 0x3F)
      {
        sub_254E627E4(319, qword_280C3FE78);
        if (v3 <= 0x3F)
        {
          sub_254E627E4(319, &qword_280C409F8);
          if (v4 <= 0x3F)
          {
            sub_254E619C0(319, &qword_280C409C8, MEMORY[0x277D745C0], MEMORY[0x277D83D88]);
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

uint64_t sub_254E61EC4()
{
  result = type metadata accessor for DetectedEntity(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254E61F38()
{
  result = type metadata accessor for DetectedDate(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DetectedLink(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DetectedAppEntity(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_254E61FF8()
{
  sub_254E9DCDC();
  if (v0 <= 0x3F)
  {
    sub_254E62998(319, &qword_280C409E0, MEMORY[0x277CC8990]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_254E620A8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UIContextOptions.targetAppBundleIdentifiers.getter()
{
  sub_254E621EC();
  swift_beginAccess();
}

void sub_254E62164()
{
  *(v4 - 168) = v1 + 56;
  v5 = 1 << *(v1 + 32);
  *(v4 - 120) = v2 + 32;
  *(v4 - 104) = v0 + 56;
  *(v4 - 96) = v2 + 16;
  *(v4 - 160) = (v5 + 63) >> 6;
  *(v4 - 152) = v3;
  *(v4 - 144) = v2;
  *(v4 - 136) = v1;
}

uint64_t sub_254E62234()
{
  sub_254E9E5FC();
  sub_254E62278();
  return sub_254E9E63C();
}

uint64_t sub_254E62278()
{
  sub_254E9E29C();
}

uint64_t sub_254E623D8(unsigned __int8 a1, char a2)
{
  v2 = 1702125924;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1702125924;
  switch(v4)
  {
    case 1:
      v5 = 0x6D754E656E6F6870;
      v3 = 0xEB00000000726562;
      break;
    case 2:
      v5 = 1802398060;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x73736572646461;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x6E6F73726570;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x6563616C70;
      break;
    case 6:
      v5 = 0x617A696E6167726FLL;
      v3 = 0xEC0000006E6F6974;
      break;
    case 7:
      v5 = 0x7469746E45707061;
      v3 = 0xE900000000000079;
      break;
    case 8:
      v5 = 0x6E65746E49707061;
      v3 = 0xE900000000000074;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6D754E656E6F6870;
      v6 = 0xEB00000000726562;
      break;
    case 2:
      v2 = 1802398060;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x73736572646461;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x6E6F73726570;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x6563616C70;
      break;
    case 6:
      v2 = 0x617A696E6167726FLL;
      v6 = 0xEC0000006E6F6974;
      break;
    case 7:
      v2 = 0x7469746E45707061;
      v6 = 0xE900000000000079;
      break;
    case 8:
      v2 = 0x6E65746E49707061;
      v6 = 0xE900000000000074;
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
    v8 = sub_254E9E5CC();
  }

  return v8 & 1;
}

uint64_t UIContextOptions.init(detectableTypes:)(uint64_t a1)
{
  sub_254E9DF1C();
  sub_254E62124();
  MEMORY[0x28223BE20](v3);
  sub_254E62F5C();
  *(v1 + 24) = 0x3FD999999999999ALL;
  (*(v6 + 104))(v5 - v4, *MEMORY[0x277D74798]);
  sub_254E9DF0C();
  *(v1 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_includeOffscreenSelectedElements) = 1;
  *(v1 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_targetAppBundleIdentifiers) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_excludedAppBundleIdentifiers) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_intelligenceComponents) = 1;
  v7 = v1 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_intelligenceCommandOptions;
  *v7 = 0;
  *(v7 + 2) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_client) = 1;
  *(v1 + 16) = a1;
  return v1;
}

void sub_254E627E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_254E9E38C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_254E62830(uint64_t a1, unint64_t *a2)
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

uint64_t sub_254E6287C()
{
  result = sub_254E9DD6C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_254E628E8()
{
  sub_254E629F4();
  if (v0 <= 0x3F)
  {
    sub_254E62998(319, &qword_280C40A10, MEMORY[0x277D728B0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254E62998(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_254E8CAE4();
    v4 = sub_254E9E38C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_254E629F4()
{
  if (!qword_280C3FE78[0])
  {
    v0 = sub_254E9E38C();
    if (!v1)
    {
      atomic_store(v0, qword_280C3FE78);
    }
  }
}

uint64_t sub_254E62A64()
{

  return sub_254E9E50C();
}

uint64_t sub_254E62ADC()
{
  v4 = v0[15];
  v3 = v0[16];
  *(v1 - 112) = v0[19];
  *(v1 - 104) = v3;
  v5 = v0[14];
  *(v1 - 96) = v4;
  *(v1 - 88) = v5;
}

uint64_t sub_254E62B78()
{

  return sub_254E9E59C();
}

uint64_t UIContextOptions.elementCollectionTimeout.setter(double a1)
{
  sub_254E62FF8();
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_254E62CA4()
{

  return sub_254E9DC9C();
}

uint64_t sub_254E62D7C()
{

  return sub_254E9E52C();
}

uint64_t UIContextOptions.appIntentsRequest.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_appIntentsRequest;
  sub_254E62F04();
  swift_beginAccess();
  sub_254E9DF2C();
  sub_254E62148();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t sub_254E62E20()
{

  return sub_254E9DC6C();
}

uint64_t sub_254E62E88()
{

  return sub_254E9E59C();
}

uint64_t sub_254E62EC0()
{

  return swift_task_alloc();
}

uint64_t UIContextOptions.includeOffscreenSelectedElements.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_includeOffscreenSelectedElements;
  result = sub_254E9BF84();
  *(v1 + v3) = a1;
  return result;
}

double UIContextOptions.elementCollectionTimeout.getter()
{
  sub_254E621EC();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t UIContextOptions.appIntentsRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_appIntentsRequest;
  sub_254E62F04();
  sub_254E621EC();
  swift_beginAccess();
  sub_254E9DF2C();
  sub_254E62148();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t UIContextOptions.includeOffscreenSelectedElements.getter()
{
  v1 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_includeOffscreenSelectedElements;
  sub_254E621EC();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t UIContextOptions.intelligenceComponents.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_intelligenceComponents;
  sub_254E62F04();
  sub_254E621EC();
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t UIContextOptions.excludedAppBundleIdentifiers.getter()
{
  sub_254E621EC();
  swift_beginAccess();
}

uint64_t UIContextOptions.intelligenceCommandOptions.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_intelligenceCommandOptions);
  sub_254E621EC();
  result = swift_beginAccess();
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  return result;
}

uint64_t UIContextOptions.client.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_client;
  sub_254E62F04();
  sub_254E621EC();
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void sub_254E63250(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_254E632DC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_254E63324(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x28223BE20](a1);
    sub_254E63754();
    *(v5 - 16) = v3;
    *(v5 - 8) = v4;
    sub_254E9CE18();

    sub_254E9E00C();

    if (!v2)
    {
    }

    sub_254E634F4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_254E63454()
{

  return sub_254E9E48C();
}

uint64_t sub_254E634A4()
{
  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254E634D0()
{

  return sub_254E9E48C();
}

uint64_t sub_254E63500()
{
  v2 = v1[3];
  if (!v2)
  {
    v11 = sub_254E6364C();
    sub_254E63324(v11);
    goto LABEL_4;
  }

  v1[2] = v2;
  sub_254E6775C(&qword_27F754FD0);
  sub_254E677A4();
  v3 = sub_254E62CA4();
  if (!v0)
  {
    sub_254E678A0(v3, v4);
    v5 = sub_254E633E4();
    sub_254E63324(v5);
    v6 = sub_254E633E4();
    sub_254E635F4(v6, v7);
    v8 = sub_254E633E4();
    sub_254E635F4(v8, v9);
LABEL_4:
    v10 = v1[1];
    goto LABEL_7;
  }

  sub_254E62138();
LABEL_7:

  return v10();
}

uint64_t sub_254E635F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_254E63660()
{

  return swift_getWitnessTable();
}

uint64_t sub_254E636B0()
{

  return sub_254E9E52C();
}

uint64_t sub_254E63768(uint64_t result, int a2, int a3)
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

uint64_t sub_254E63794(uint64_t a1, int a2)
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

uint64_t sub_254E637B4(uint64_t a1, int a2)
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

uint64_t sub_254E637D4(uint64_t result, int a2, int a3)
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

uint64_t sub_254E63944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E6B8C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254E639C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_254E737F0();
  type metadata accessor for OnScreenContent.Content(0);
  sub_254E629E8();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = type metadata accessor for OnScreenContent.UIMetadata(0);
    v9 = v4 + *(a3 + 20);
  }

  return sub_254E655F8(v9, v3, v8);
}

uint64_t sub_254E63A5C()
{
  sub_254E73780();
  type metadata accessor for OnScreenContent.Content(0);
  sub_254E629E8();
  if (*(v1 + 84) != v0)
  {
    type metadata accessor for OnScreenContent.UIMetadata(0);
  }

  sub_254E73908();

  return sub_254E65418(v2, v3, v4, v5);
}

uint64_t sub_254E63AEC(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    sub_254E6775C(&qword_27F755150);
    sub_254E629E8();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      sub_254E6775C(&qword_27F755158);
      sub_254E629E8();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[6];
      }

      else
      {
        v11 = sub_254E6775C(&qword_27F755160);
        v12 = a3[8];
      }
    }

    return sub_254E655F8(a1 + v12, a2, v11);
  }
}

void sub_254E63C24()
{
  sub_254E737F0();
  if (v2 == 2147483646)
  {
    *v1 = v0;
  }

  else
  {
    v3 = v2;
    sub_254E6775C(&qword_27F755150);
    sub_254E629E8();
    if (*(v4 + 84) != v3)
    {
      sub_254E6775C(&qword_27F755158);
      sub_254E629E8();
      if (*(v5 + 84) != v3)
      {
        sub_254E6775C(&qword_27F755160);
      }
    }

    sub_254E73908();

    sub_254E65418(v6, v7, v8, v9);
  }
}

uint64_t sub_254E63D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_254E737F0();
  sub_254E6775C(&qword_27F7551A0);
  sub_254E629E8();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 254)
    {
      v10 = *(v4 + *(a3 + 20));
      if (v10 >= 2)
      {
        return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = sub_254E6775C(&qword_27F755158);
    v9 = v4 + *(a3 + 24);
  }

  return sub_254E655F8(v9, v3, v8);
}

void sub_254E63E30()
{
  sub_254E73780();
  sub_254E6775C(&qword_27F7551A0);
  sub_254E629E8();
  if (*(v4 + 84) != v3)
  {
    if (v3 == 254)
    {
      *(v1 + *(v2 + 20)) = v0 + 1;
      return;
    }

    sub_254E6775C(&qword_27F755158);
  }

  sub_254E73908();

  sub_254E65418(v5, v6, v7, v8);
}

uint64_t sub_254E63EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254E73524();
  type metadata accessor for OnScreenContent.UIMetadata.Window(v6);
  sub_254E629E8();
  if (*(v8 + 84) == a2)
  {

    return sub_254E655F8(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_254E63FA0()
{
  sub_254E73780();
  type metadata accessor for OnScreenContent.UIMetadata.Window(0);
  sub_254E629E8();
  if (*(v4 + 84) == v3)
  {
    sub_254E73908();

    sub_254E65418(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 28)) = (v0 - 1);
  }
}

uint64_t sub_254E64034(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    sub_254E6775C(&qword_27F7551D0);
    sub_254E629E8();
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(a3 + 28);
    }

    else
    {
      v12 = sub_254E6775C(&qword_27F7551D8);
      v13 = *(a3 + 32);
    }

    return sub_254E655F8(&a1[v13], a2, v12);
  }
}

void sub_254E64114()
{
  sub_254E737F0();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    v3 = v2;
    sub_254E6775C(&qword_27F7551D0);
    sub_254E629E8();
    if (*(v4 + 84) != v3)
    {
      sub_254E6775C(&qword_27F7551D8);
    }

    sub_254E73908();

    sub_254E65418(v5, v6, v7, v8);
  }
}

uint64_t sub_254E642D0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_254E642E4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_254E64700()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_254E64740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254E73524();
  type metadata accessor for DetectedEntity(v6);
  sub_254E629E8();
  if (*(v8 + 84) == a2)
  {

    return sub_254E655F8(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_254E647F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_254E8C6A4();
  type metadata accessor for DetectedEntity(v8);
  sub_254E629E8();
  if (*(v9 + 84) == a3)
  {
    v10 = sub_254E8CAFC();

    sub_254E65418(v10, v11, v12, v13);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }
}

uint64_t sub_254E64884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_254E8C6A4();
  sub_254E9DCDC();
  sub_254E629E8();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_254E8C9B4();
  }

  else
  {
    v8 = sub_254E6775C(&qword_27F7555D8);
    v7 = v4 + *(a3 + 20);
  }

  return sub_254E655F8(v7, v3, v8);
}

uint64_t sub_254E6491C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_254E8C6A4();
  sub_254E9DCDC();
  sub_254E629E8();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    v10 = sub_254E6775C(&qword_27F7555D8);
    v11 = v5 + *(a4 + 20);
  }

  return sub_254E65418(v11, v4, v4, v10);
}

uint64_t sub_254E649C0()
{
  sub_254E8C6A4();
  sub_254E9DD6C();
  v1 = sub_254E8C9B4();

  return sub_254E655F8(v1, v0, v2);
}

uint64_t sub_254E649FC()
{
  sub_254E8C6A4();
  sub_254E9DD6C();
  v0 = sub_254E8CAFC();

  return sub_254E65418(v0, v1, v2, v3);
}

uint64_t sub_254E64A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    sub_254E8CC2C();
    return (v4 + 1);
  }

  else
  {
    v8 = sub_254E6775C(&qword_27F755158);
    v9 = a1 + *(a3 + 24);

    return sub_254E655F8(v9, a2, v8);
  }
}

uint64_t sub_254E64AD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_254E6775C(&qword_27F755158);
    v8 = v5 + *(a4 + 24);

    return sub_254E65418(v8, a2, a2, v7);
  }

  return result;
}

BOOL sub_254E64C6C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_254E64CF0(uint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for UIElement(0);
    v6 = sub_254E739EC(*(a3 + 28));

    return sub_254E655F8(v6, v7, v8);
  }
}

void *sub_254E64D74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for UIElement(0);
    v6 = sub_254E739EC(*(a4 + 28));

    return sub_254E65418(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_254E64DF0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v3 = *(a1 + 176);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_254E6775C(&qword_27F755A48);
    v7 = sub_254E739EC(*(a3 + 52));

    return sub_254E655F8(v7, v8, v9);
  }
}

uint64_t sub_254E64E8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 176) = a2;
  }

  else
  {
    sub_254E6775C(&qword_27F755A48);
    v6 = sub_254E739EC(*(a4 + 52));

    return sub_254E65418(v6, v7, a2, v8);
  }

  return result;
}

void sub_254E65028(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  sub_254E9BFE4(a1);
}

uint64_t sub_254E65190()
{

  sub_254E621F8();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_254E65208()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254E652B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254E65284();
  *a1 = result & 1;
  return result;
}

__n128 sub_254E652FC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_254E65308(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t Peekable.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for Peekable() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_254E65418(a3 + v6, 1, 1, AssociatedTypeWitness);
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, a1, a2);
}

uint64_t Peekable.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_254E9E38C();
  sub_254E62124();
  v8 = v7;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  v11 = *(a1 + 36);
  (*(v8 + 16))(&v13 - v9, v2 + v11, v6);
  if (sub_254E655F8(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v6);
    return sub_254E9E39C();
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 32))(a2, v10, AssociatedTypeWitness);
    (*(v8 + 8))(v2 + v11, v6);
    sub_254E65418(v2 + v11, 1, 1, AssociatedTypeWitness);
    return sub_254E65418(a2, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t Peekable.peek()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v18 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_254E9E38C();
  sub_254E62124();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = *(a1 + 36);
  v15 = *(v7 + 16);
  v15(&v18 - v12, v2 + v14, v5);
  if (sub_254E655F8(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v13, v5);
    sub_254E9E39C();
    (*(v7 + 40))(v2 + v14, v11, v5);
    return (v15)(v19, v2 + v14, v5);
  }

  else
  {
    v17 = v19;
    (*(*(AssociatedTypeWitness - 8) + 32))(v19, v13, AssociatedTypeWitness);
    return sub_254E65418(v17, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_254E6581C()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v0 = sub_254E9E38C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_254E658D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v16 = v14 + (v15 & ~v13);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v12)
      {
LABEL_31:
        if (v7 >= v11)
        {

          return sub_254E655F8(a1, v7, v5);
        }

        else
        {
          v23 = sub_254E655F8((a1 + v15) & ~v13, v10, AssociatedTypeWitness);
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_254E65B24(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v12 + 80);
  v17 = *(v8 + 64) + v16;
  v18 = v17 & ~v16;
  if (v13)
  {
    v19 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v19 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v20 = v18 + v19;
  v21 = 8 * (v18 + v19);
  if (a3 > v15)
  {
    if (v20 <= 3)
    {
      v22 = ((a3 - v15 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v22))
      {
        v11 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v11 = v23;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v15 >= a2)
  {
    switch(v11)
    {
      case 1:
        a1[v20] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        return;
      case 2:
        *&a1[v20] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        return;
      case 3:
LABEL_60:
        __break(1u);
        return;
      case 4:
        *&a1[v20] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (!a2)
        {
          return;
        }

LABEL_32:
        if (v9 >= v14)
        {
          v31 = a1;
          v32 = a2;
          v13 = v9;
          AssociatedTypeWitness = v7;
        }

        else
        {
          v27 = (&a1[v17] & ~v16);
          if (v14 < a2)
          {
            if (v19 <= 3)
            {
              v28 = ~(-1 << (8 * v19));
            }

            else
            {
              v28 = -1;
            }

            if (v19)
            {
              v29 = v28 & (~v14 + a2);
              if (v19 <= 3)
              {
                v30 = v19;
              }

              else
              {
                v30 = 4;
              }

              bzero(v27, v19);
              switch(v30)
              {
                case 2:
                  *v27 = v29;
                  break;
                case 3:
                  *v27 = v29;
                  v27[2] = BYTE2(v29);
                  break;
                case 4:
                  *v27 = v29;
                  break;
                default:
                  *v27 = v29;
                  break;
              }
            }

            return;
          }

          v32 = (a2 + 1);
          v31 = v27;
        }

        sub_254E65418(v31, v32, v13, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    v24 = ~v15 + a2;
    if (v20 < 4)
    {
      v25 = (v24 >> v21) + 1;
      if (v20)
      {
        v26 = v24 & ~(-1 << v21);
        bzero(a1, v20);
        if (v20 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v20 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v24;
        }
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v24;
      v25 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v20] = v25;
        break;
      case 2:
        *&a1[v20] = v25;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v20] = v25;
        break;
      default:
        return;
    }
  }
}

uint64_t ContextRetrieval.__allocating_init()()
{
  v0 = swift_allocObject();
  ContextRetrieval.init()();
  return v0;
}

uint64_t ContextRetrieval.refresh(contextTypes:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_254E62A54();
}

uint64_t ContextRetrieval.refresh(contextTypes:interactionId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_254E62A54();
}

uint64_t sub_254E65F10()
{
  v2 = v1[3];
  if (!v2)
  {
    v11 = sub_254E6364C();
    sub_254E63324(v11);
    goto LABEL_4;
  }

  v1[2] = v2;
  sub_254E6775C(&qword_27F754FD0);
  sub_254E677A4();
  v3 = sub_254E62CA4();
  if (!v0)
  {
    sub_254E678A0(v3, v4);
    v5 = sub_254E633E4();
    sub_254E63324(v5);
    v6 = sub_254E633E4();
    sub_254E635F4(v6, v7);
    v8 = sub_254E633E4();
    sub_254E635F4(v8, v9);
LABEL_4:
    v10 = v1[1];
    goto LABEL_7;
  }

  sub_254E62138();
LABEL_7:

  return v10();
}

uint64_t ContextRetrieval.refreshAndRetrieve(contextTypes:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_254E62A54();
}

uint64_t sub_254E66028()
{
  v2 = v1[3];
  if (v2 && (v1[2] = v2, sub_254E6775C(&qword_27F754FD0), sub_254E677A4(), sub_254E62CA4(), v0))
  {
    sub_254E62138();

    return v10();
  }

  else
  {
    v3 = sub_254E633E4();
    sub_254E9C214(v3);
    v5 = v4;
    v7 = v6;
    sub_254E6775C(&qword_27F754FD8);
    sub_254E6790C();
    sub_254E9DC6C();
    sub_254E635F4(v5, v7);
    v8 = sub_254E633E4();
    sub_254E678F8(v8, v9);
    v12 = v1[2];
    v13 = v1[1];

    return v13(v12);
  }
}

uint64_t ContextRetrieval.retrieveContextValues(contextTypes:timeoutInSecs:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_254E6775C(&qword_27F754FD0);
  sub_254E677A4();
  result = sub_254E69DA4();
  if (!v3)
  {
    if (a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = sub_254E9E33C();
    }

    v7 = sub_254E62F50();
    sub_254E9C328(v7);
    v9 = v8;
    v11 = v10;

    sub_254E6775C(&qword_27F754FD8);
    sub_254E6790C();
    sub_254E62E20();
    sub_254E635F4(v9, v11);
    v12 = sub_254E62F50();
    sub_254E635F4(v12, v13);
    return a1;
  }

  return result;
}

uint64_t ContextRetrieval.retrieveContextValuesWithFailures(contextTypes:timeoutInSecs:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_254E6775C(&qword_27F754FD0);
  sub_254E677A4();
  result = sub_254E9DC9C();
  if (!v3)
  {
    v7 = result;
    v8 = v6;
    if (a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_254E9E33C();
    }

    sub_254E9C354(v7);
    v11 = v10;
    v13 = v12;

    sub_254E9DFDC();
    sub_254E69CCC(&qword_280C3FDF0, MEMORY[0x277D1F150]);
    sub_254E9DC6C();
    sub_254E635F4(v11, v13);
    return sub_254E635F4(v7, v8);
  }

  return result;
}

void ContextRetrieval.retrieveAndRankIntelligenceCommandContextValues(query:appBundleIds:threshold:timeoutInSecs:)()
{
  v1 = sub_254E9E33C();
  v2 = sub_254E9E33C();
  v3 = sub_254E62F50();
  sub_254E9C568(v3);

  if (!v0)
  {
    sub_254E6775C(&qword_27F754FD8);
    sub_254E6790C();
    sub_254E69D28();
    sub_254E69D88();
  }
}

void ContextRetrieval.retrieveContextValues(query:)(uint64_t a1)
{
  sub_254E9C7D0(a1);
  if (!v1)
  {
    sub_254E6775C(&qword_27F754FD8);
    sub_254E6790C();
    sub_254E69D28();
    sub_254E69D88();
  }
}

uint64_t ContextRetrieval.onScreenTextDocuments(from:requestParameters:)(uint64_t a1, uint64_t a2)
{
  v95 = sub_254E6775C(&qword_27F754FE0);
  MEMORY[0x28223BE20](v95);
  v96 = v86 - v4;
  v108 = sub_254E9DF5C();
  sub_254E62124();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_254E69D54();
  v97 = v8;
  MEMORY[0x28223BE20](v9);
  sub_254E69D68();
  MEMORY[0x28223BE20](v10);
  v102 = v86 - v11;
  v107 = sub_254E9DF7C();
  sub_254E62124();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_254E69D54();
  sub_254E69D68();
  MEMORY[0x28223BE20](v15);
  sub_254E69D68();
  MEMORY[0x28223BE20](v16);
  v101 = v86 - v17;
  v87 = 0;
  v18 = sub_254E9DFCC();
  sub_254E62124();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_254E69D54();
  v94 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = v86 - v24;
  v26 = *(a1 + 16);
  v98 = v6;
  if (v26)
  {
    v27 = *a2;
    v28 = *(a2 + 8);
    v93 = *(a2 + 16);
    v30 = *(v20 + 16);
    v29 = v20 + 16;
    v109 = v30;
    v91 = (*(v29 + 64) + 32) & ~*(v29 + 64);
    v31 = a1 + v91;
    v32 = (v13 + 8);
    v33 = *(v29 + 56);
    v105 = (v6 + 8);
    v106 = v32;
    v86[1] = v6 + 16;
    v100 = MEMORY[0x277D84F98];
    v90 = (v29 + 16);
    v103 = v29;
    v99 = v33;
    while (1)
    {
      v109(v25, v31, v18);
      v34 = sub_254E9DFAC();
      if (v35)
      {
        v36 = sub_254E69D78();
        v37(v36);
      }

      else
      {
        v38 = *&v34;
        v39 = v101;
        sub_254E9DF8C();
        v40 = v102;
        sub_254E9DF6C();
        v41 = *v106;
        (*v106)(v39, v107);
        v42 = COERCE_DOUBLE(sub_254E9DF3C());
        LOBYTE(v39) = v43;
        v104 = *v105;
        v104(v40, v108);
        if ((v39 & 1) != 0 || (v27 <= v38 ? (v44 = v28 > v42) : (v44 = 1), v44 || v93 && (v47 = v88, sub_254E9DF8C(), v48 = v89, sub_254E9DF6C(), v41(v47, v107), v49 = sub_254E9DF4C(), v104(v48, v108), (v49 & 1) == 0)))
        {
          v45 = sub_254E69D78();
          v46(v45);
          v33 = v99;
        }

        else
        {
          v50 = v92;
          sub_254E9DF8C();
          v51 = v97;
          sub_254E9DF6C();
          v41(v50, v107);
          v109(v94, v25, v18);
          v52 = v100;
          swift_isUniquelyReferenced_nonNull_native();
          v110 = v52;
          v53 = sub_254E67FC0(v51);
          v55 = *(v52 + 16);
          v56 = (v54 & 1) == 0;
          v57 = v55 + v56;
          if (__OFADD__(v55, v56))
          {
            goto LABEL_41;
          }

          v58 = v53;
          v59 = v54;
          sub_254E6775C(&qword_27F754FE8);
          v60 = sub_254E9E45C();
          v61 = v110;
          if (v60)
          {
            v62 = sub_254E67FC0(v97);
            if ((v59 & 1) != (v63 & 1))
            {
              goto LABEL_44;
            }

            v58 = v62;
          }

          if ((v59 & 1) == 0)
          {
            v61[(v58 >> 6) + 8] |= 1 << v58;
            (*(v98 + 16))(v61[6] + *(v98 + 72) * v58, v97, v108);
            *(v61[7] + 8 * v58) = MEMORY[0x277D84F90];
            v64 = v61[2];
            v65 = __OFADD__(v64, 1);
            v66 = v64 + 1;
            if (v65)
            {
              goto LABEL_42;
            }

            v61[2] = v66;
          }

          v67 = v61[7];
          v68 = *(v67 + 8 * v58);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v67 + 8 * v58) = v68;
          v100 = v61;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v68 = sub_254E679C0(0, *(v68 + 16) + 1, 1, v68);
            *(v67 + 8 * v58) = v68;
          }

          v71 = *(v68 + 16);
          v70 = *(v68 + 24);
          if (v71 >= v70 >> 1)
          {
            *(v67 + 8 * v58) = sub_254E679C0(v70 > 1, v71 + 1, 1, v68);
          }

          v104(v97, v108);
          v72 = sub_254E69D78();
          v73(v72);
          v74 = *(v67 + 8 * v58);
          *(v74 + 16) = v71 + 1;
          v33 = v99;
          (*v90)(v74 + v91 + v71 * v99, v94, v18);
        }
      }

      v31 += v33;
      if (!--v26)
      {
        goto LABEL_29;
      }
    }
  }

  v100 = MEMORY[0x277D84F98];
LABEL_29:
  v76 = v100 + 8;
  v75 = v100[8];
  v110 = MEMORY[0x277D84F98];
  v77 = 1 << *(v100 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & v75;
  v80 = (v77 + 63) >> 6;

  v81 = 0;
  v18 = v87;
  v57 = v96;
  if (v79)
  {
    while (1)
    {
      v82 = v81;
LABEL_36:
      v83 = __clz(__rbit64(v79)) | (v82 << 6);
      v84 = v100;
      (*(v98 + 16))(v57, v100[6] + *(v98 + 72) * v83, v108);
      *(v57 + *(v95 + 48)) = *(v84[7] + 8 * v83);

      sub_254E66D80(&v110, v57);
      if (v18)
      {
        break;
      }

      v79 &= v79 - 1;
      sub_254E68550(v57, &qword_27F754FE0);
      v81 = v82;
      if (!v79)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
LABEL_33:
    while (1)
    {
      v82 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      if (v82 >= v80)
      {

        return v110;
      }

      v79 = v76[v82];
      ++v81;
      if (v79)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  sub_254E68550(v57, &qword_27F754FE0);

  __break(1u);
LABEL_44:
  result = sub_254E9E5EC();
  __break(1u);
  return result;
}

uint64_t sub_254E66D80(uint64_t *a1, uint64_t a2)
{
  v48 = a1;
  v4 = sub_254E9DFCC();
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_254E6775C(&qword_27F754FE0);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v9 = sub_254E6775C(&qword_27F755028);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_254E6775C(&qword_27F755030);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45 - v13;
  v15 = sub_254E9DF7C();
  v51 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v50 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = &v45 - v18;
  v59 = *(a2 + *(v6 + 48));

  sub_254E68438(&v59);
  v52 = v2;
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v19 = v59;
    sub_254E684E0(a2, v8);
    sub_254E6739C(*&v8[*(v6 + 48)], v11);

    if (sub_254E655F8(v11, 1, v4) == 1)
    {

      v20 = sub_254E9DF5C();
      (*(*(v20 - 8) + 8))(v8, v20);
      sub_254E68550(v11, &qword_27F755028);
      sub_254E65418(v14, 1, 1, v15);
      return sub_254E68550(v14, &qword_27F755030);
    }

    v21 = v4;
    v47 = v19;
    sub_254E9DF8C();
    v55 = *(v58 + 8);
    v56 = v58 + 8;
    v55(v11, v4);
    sub_254E65418(v14, 0, 1, v15);
    v22 = sub_254E9DF5C();
    (*(*(v22 - 8) + 8))(v8, v22);
    if (sub_254E655F8(v14, 1, v15) == 1)
    {

      return sub_254E68550(v14, &qword_27F755030);
    }

    v24 = v51;
    v25 = v49;
    (*(v51 + 32))(v49, v14, v15);
    (*(v24 + 16))(v50, v25, v15);
    v26 = v47;
    v27 = *(v47 + 16);
    if (v27)
    {
      v46 = v15;
      v59 = MEMORY[0x277D84F90];
      sub_254E935DC(0, v27, 0);
      v28 = *(v58 + 16);
      v29 = v59;
      v30 = v26 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
      v58 += 16;
      v53 = *(v58 + 56);
      v54 = v28;
      do
      {
        v31 = v57;
        v54(v57, v30, v21);
        v32 = sub_254E9DFBC();
        v34 = v33;
        v55(v31, v21);
        v59 = v29;
        v36 = *(v29 + 16);
        v35 = *(v29 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_254E935DC((v35 > 1), v36 + 1, 1);
          v29 = v59;
        }

        *(v29 + 16) = v36 + 1;
        v37 = v29 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        v30 += v53;
        --v27;
      }

      while (v27);

      v38 = v48;
      v15 = v46;
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
      v38 = v48;
    }

    v59 = v29;
    sub_254E6775C(&qword_27F755038);
    sub_254E69C68();
    v39 = sub_254E9E24C();
    v41 = v40;

    swift_isUniquelyReferenced_nonNull_native();
    v59 = *v38;
    v42 = v39;
    v43 = v50;
    sub_254E685B0(v42, v41, v50);
    *v38 = v59;
    v44 = *(v51 + 8);
    v44(v43, v15);
    return (v44)(v49, v15);
  }

  return result;
}

uint64_t sub_254E6739C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_254E9DFCC();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_254E65418(a2, v7, 1, v6);
}

uint64_t ContextRetrieval.retrieveRequiredContextValues()()
{
  result = sub_254E9C9F4();
  if (!v0)
  {
    sub_254E6775C(&qword_27F754FD8);
    sub_254E6790C();
    sub_254E69D28();
    sub_254E69D88();
    return v2;
  }

  return result;
}

uint64_t ContextRetrieval.retrieveAndRankContextValues(query:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_254E62A54();
}

uint64_t sub_254E674DC()
{
  ContextRetrieval.retrieveContextValues(query:)(*(v0 + 16));
  v1 = sub_254E9E31C();

  v2 = *(v0 + 8);

  return v2(v1);
}

IntelligenceFlowContext::UIContextCacheRepresentation __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContextRetrieval.dumpUIContextFromCache()()
{
  v2 = v0;
  v3 = sub_254E9C774();
  if (!v1)
  {
    v7 = v3;
    v8 = v4;
    sub_254E68168();
    sub_254E9DC6C();
    v3 = sub_254E635F4(v7, v8);
    *v2 = v9;
    v2[1] = v10;
  }

  result.commands._rawValue = v6;
  result.elements._rawValue = v5;
  result.hierarchy.value._object = v4;
  result.hierarchy.value._countAndFlagsBits = v3;
  return result;
}

uint64_t ContextRetrieval.retrieveContextValues(contextTypes:)(uint64_t a1)
{
  sub_254E6775C(&qword_27F754FD0);
  sub_254E677A4();
  result = sub_254E69DA4();
  if (!v1)
  {
    sub_254E678A0(result, v3);
    v4 = sub_254E62F50();
    sub_254E9C214(v4);
    v6 = v5;
    v8 = v7;
    v9 = sub_254E62F50();
    sub_254E635F4(v9, v10);
    sub_254E6775C(&qword_27F754FD8);
    sub_254E6790C();
    sub_254E62E20();
    v11 = sub_254E62F50();
    sub_254E635F4(v11, v12);
    sub_254E635F4(v6, v8);
    return a1;
  }

  return result;
}

uint64_t sub_254E6775C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_254E677A4()
{
  result = qword_280C40A08;
  if (!qword_280C40A08)
  {
    sub_254E67858(&qword_27F754FD0);
    sub_254E69CCC(qword_280C40C10, MEMORY[0x277D1EB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40A08);
  }

  return result;
}

uint64_t sub_254E67858(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_254E678A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_254E678F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_254E635F4(a1, a2);
  }

  return a1;
}

unint64_t sub_254E6790C()
{
  result = qword_280C40A00;
  if (!qword_280C40A00)
  {
    sub_254E67858(&qword_27F754FD8);
    sub_254E69CCC(&qword_280C40C08, MEMORY[0x277D1EE00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40A00);
  }

  return result;
}

size_t sub_254E679C0(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_254E67EC4(v9, a2, &qword_27F755010, &unk_254E9ED50, MEMORY[0x277D1F070]);
  v11 = *(sub_254E9DFCC() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_254E934B0(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_254E67AD0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = a4[3];
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_254E6775C(&qword_27F755058);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_254E934C8(a4 + 4, v8, v10 + 4);
        a4[2] = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 4, a4 + 4, 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_254E67BC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = a4[3];
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_254E6775C(&qword_27F755008);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_254E934C8(a4 + 4, v8, v10 + 4);
        a4[2] = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_254E67CC8(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_254E67EC4(v9, a2, &qword_27F755000, &unk_254E9ED40, MEMORY[0x277D85578]);
  v11 = *(sub_254E9E0DC() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_254E934E0(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_254E67DD8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_254E6775C(&qword_27F754FF8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_254E935B4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_254E67EC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_254E6775C(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_254E67FC0(uint64_t a1)
{
  sub_254E9DF5C();
  v2 = MEMORY[0x277D1F040];
  sub_254E69CCC(&qword_27F755018, MEMORY[0x277D1F040]);
  v3 = sub_254E9E22C();
  return sub_254E682AC(a1, v3, MEMORY[0x277D1F040], &qword_27F755020, v2, MEMORY[0x277D1F050]);
}

unint64_t sub_254E68094(uint64_t a1)
{
  sub_254E9DF7C();
  v2 = MEMORY[0x277D1F058];
  sub_254E69CCC(&qword_27F755048, MEMORY[0x277D1F058]);
  v3 = sub_254E9E22C();
  return sub_254E682AC(a1, v3, MEMORY[0x277D1F058], &qword_27F755050, v2, MEMORY[0x277D1F068]);
}

unint64_t sub_254E68168()
{
  result = qword_27F754FF0;
  if (!qword_27F754FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F754FF0);
  }

  return result;
}

uint64_t sub_254E681EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_254E9DF7C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_254E682AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v20 = a4;
  v18 = a1;
  v8 = a3(0);
  sub_254E62124();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v23 = v6 + 64;
  v19 = v6;
  v14 = ~(-1 << *(v6 + 32));
  for (i = a2 & v14; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v10 + 16))(v13, *(v19 + 48) + *(v10 + 72) * i, v8);
    sub_254E69CCC(v20, v21);
    v16 = sub_254E9E25C();
    (*(v10 + 8))(v13, v8);
    if (v16)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_254E68438(uint64_t *a1)
{
  v2 = *(sub_254E9DFCC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_254E69D14();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_254E68784(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_254E684E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_254E6775C(&qword_27F754FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254E68550(uint64_t a1, uint64_t *a2)
{
  v3 = sub_254E6775C(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_254E685B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v7 = sub_254E9DF7C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = sub_254E68094(a3);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  sub_254E6775C(&qword_27F755040);
  if ((sub_254E9E45C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_254E68094(a3);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_254E9E5EC();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    v20 = v23;
    *v19 = a1;
    v19[1] = v20;
  }

  else
  {
    (*(v8 + 16))(v10, a3, v7);
    return sub_254E681EC(v14, v10, a1, v23, v18);
  }
}

uint64_t sub_254E68784(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_254E9E5AC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_254E9DFCC();
        v6 = sub_254E9E32C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_254E9DFCC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_254E68B54(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_254E688B4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_254E688B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_254E9DFCC();
  v9 = MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v47 = &v33 - v12;
  result = MEMORY[0x28223BE20](v11);
  v46 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v44 = *(v14 + 16);
    v45 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v41 = (v14 + 32);
    v42 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v40 = -v17;
    v20 = a1 - a3;
    v34 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v38 = v19;
      v39 = a3;
      v36 = v21;
      v37 = v20;
      v22 = v20;
      v23 = v19;
      do
      {
        v24 = v46;
        v25 = v44;
        v44(v46, v21, v8);
        v26 = v47;
        v25(v47, v23, v8);
        sub_254E9DF9C();
        MaxY = CGRectGetMaxY(v48);
        sub_254E9DF9C();
        v28 = CGRectGetMaxY(v49);
        v29 = *v18;
        (*v18)(v26, v8);
        result = v29(v24, v8);
        if (MaxY >= v28)
        {
          break;
        }

        if (!v42)
        {
          __break(1u);
          return result;
        }

        v30 = *v41;
        v31 = v43;
        (*v41)(v43, v21, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v30)(v23, v31, v8);
        v23 += v40;
        v21 += v40;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v39 + 1;
      v19 = v38 + v34;
      v20 = v37 - 1;
      v21 = v36 + v34;
      if (v39 + 1 != v35)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_254E68B54(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v114 = a1;
  v7 = sub_254E9DFCC();
  v8 = MEMORY[0x28223BE20](v7);
  v118 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v127 = &v112 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v133 = &v112 - v13;
  result = MEMORY[0x28223BE20](v12);
  v132 = &v112 - v17;
  v18 = a3[1];
  v123 = v15;
  v124 = a3;
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_101:
    v133 = *v114;
    if (!v133)
    {
      goto LABEL_142;
    }

    a4 = v16;
    result = swift_isUniquelyReferenced_nonNull_native();
    v4 = v125;
    if (result)
    {
LABEL_103:
      v104 = a4;
      a4 = (v20 + 16);
      v105 = *(v20 + 2);
      while (v105 >= 2)
      {
        v106 = *v104;
        if (!v106)
        {
          goto LABEL_139;
        }

        v107 = v20;
        v108 = &v20[16 * v105];
        v109 = *v108;
        v20 = (a4 + 16 * v105);
        v110 = *(v20 + 1);
        sub_254E6954C(v106 + *(v123 + 72) * *v108, v106 + *(v123 + 72) * *v20, v106 + *(v123 + 72) * v110, v133);
        if (v4)
        {
          break;
        }

        if (v110 < v109)
        {
          goto LABEL_127;
        }

        if (v105 - 2 >= *a4)
        {
          goto LABEL_128;
        }

        *v108 = v109;
        *(v108 + 1) = v110;
        v111 = *a4 - v105;
        if (*a4 < v105)
        {
          goto LABEL_129;
        }

        v105 = *a4 - 1;
        result = memmove(v20, v20 + 16, 16 * v111);
        *a4 = v105;
        v104 = v124;
        v20 = v107;
      }
    }

LABEL_136:
    result = sub_254E69A74(v20);
    v20 = result;
    goto LABEL_103;
  }

  v112 = a4;
  v19 = 0;
  v130 = (v15 + 8);
  v131 = v15 + 16;
  v129 = (v15 + 32);
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v19 + 1;
    if (v19 + 1 < v18)
    {
      v113 = v20;
      v22 = *v16;
      v121 = v18;
      v122 = v19 + 1;
      v23 = *(v15 + 72);
      v24 = v15;
      v25 = v22 + v23 * (v19 + 1);
      v4 = *(v15 + 16);
      v26 = v132;
      v4(v132, v25, v7);
      v27 = v22 + v23 * v19;
      v115 = v19;
      v28 = v133;
      v120 = v4;
      v4(v133, v27, v7);
      sub_254E9DF9C();
      MaxY = CGRectGetMaxY(v134);
      sub_254E9DF9C();
      v30 = CGRectGetMaxY(v135);
      v31 = *(v24 + 8);
      a4 = v130;
      v31(v28, v7);
      v119 = v31;
      result = (v31)(v26, v7);
      v32 = v115 + 2;
      v126 = v23;
      v20 = (v22 + v23 * (v115 + 2));
      v33 = v121;
      v21 = v122;
      while (1)
      {
        v34 = v32;
        v35 = v21 + 1;
        if (v35 >= v33)
        {
          break;
        }

        LODWORD(v128) = MaxY < v30;
        a4 = v35;
        v4 = v132;
        v36 = v120;
        (v120)(v132, v20, v7);
        v37 = v133;
        v36(v133, v25, v7);
        sub_254E9DF9C();
        v38 = CGRectGetMaxY(v136);
        sub_254E9DF9C();
        v39 = CGRectGetMaxY(v137);
        v40 = v119;
        (v119)(v37, v7);
        v21 = a4;
        result = v40(v4, v7);
        v33 = v121;
        v20 += v126;
        v25 += v126;
        v32 = v34 + 1;
        if (((v128 ^ (v38 >= v39)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v21 = v33;
LABEL_9:
      if (MaxY >= v30)
      {
        v15 = v123;
        v16 = v124;
      }

      else
      {
        v41 = v115;
        if (v21 < v115)
        {
          goto LABEL_133;
        }

        v16 = v124;
        if (v115 >= v21)
        {
          v15 = v123;
          v20 = v113;
          v19 = v115;
          goto LABEL_32;
        }

        if (v33 >= v34)
        {
          v42 = v34;
        }

        else
        {
          v42 = v33;
        }

        a4 = v126 * (v42 - 1);
        v43 = v126 * v42;
        v44 = v115 * v126;
        v45 = v21;
        do
        {
          if (v41 != --v45)
          {
            v4 = v21;
            v46 = *v16;
            if (!*v16)
            {
              goto LABEL_140;
            }

            v128 = *v129;
            v128(v118, v46 + v44, v7);
            v47 = v44 < a4 || v46 + v44 >= (v46 + v43);
            if (v47)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v44 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v128)(v46 + a4, v118, v7);
            v16 = v124;
            v21 = v4;
          }

          ++v41;
          a4 -= v126;
          v43 -= v126;
          v44 += v126;
        }

        while (v41 < v45);
        v15 = v123;
      }

      v20 = v113;
      v19 = v115;
    }

LABEL_32:
    v48 = v16[1];
    if (v21 < v48)
    {
      if (__OFSUB__(v21, v19))
      {
        goto LABEL_132;
      }

      if (v21 - v19 < v112)
      {
        break;
      }
    }

LABEL_48:
    if (v21 < v19)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_254E67AD0(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    a4 = *(v20 + 2);
    v64 = *(v20 + 3);
    v65 = a4 + 1;
    v16 = v124;
    if (a4 >= v64 >> 1)
    {
      result = sub_254E67AD0((v64 > 1), a4 + 1, 1, v20);
      v16 = v124;
      v20 = result;
    }

    *(v20 + 2) = v65;
    v4 = (v20 + 32);
    v66 = &v20[16 * a4 + 32];
    *v66 = v19;
    v66[1] = v21;
    v128 = *v114;
    if (!v128)
    {
      goto LABEL_141;
    }

    v122 = v21;
    if (a4)
    {
      while (1)
      {
        v67 = v65 - 1;
        v68 = v4 + 16 * v65 - 16;
        v69 = &v20[16 * v65];
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v70 = *(v20 + 4);
          v71 = *(v20 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_68:
          if (v73)
          {
            goto LABEL_118;
          }

          v85 = *v69;
          v84 = *(v69 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_121;
          }

          v89 = *(v68 + 1);
          v90 = v89 - *v68;
          if (__OFSUB__(v89, *v68))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v87, v90))
          {
            goto LABEL_126;
          }

          if (v87 + v90 >= v72)
          {
            if (v72 < v90)
            {
              v67 = v65 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v65 < 2)
        {
          goto LABEL_120;
        }

        v92 = *v69;
        v91 = *(v69 + 1);
        v80 = __OFSUB__(v91, v92);
        v87 = v91 - v92;
        v88 = v80;
LABEL_83:
        if (v88)
        {
          goto LABEL_123;
        }

        v94 = *v68;
        v93 = *(v68 + 1);
        v80 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v80)
        {
          goto LABEL_125;
        }

        if (v95 < v87)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v67 - 1 >= v65)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v16)
        {
          goto LABEL_138;
        }

        v99 = v20;
        a4 = v4 + 16 * v67 - 16;
        v100 = *a4;
        v20 = v4 + 16 * v67;
        v101 = *(v20 + 1);
        v102 = v125;
        sub_254E6954C(*v16 + *(v123 + 72) * *a4, *v16 + *(v123 + 72) * *v20, *v16 + *(v123 + 72) * v101, v128);
        v125 = v102;
        if (v102)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_113;
        }

        v103 = *(v99 + 2);
        if (v67 > v103)
        {
          goto LABEL_114;
        }

        *a4 = v100;
        *(a4 + 8) = v101;
        if (v67 >= v103)
        {
          goto LABEL_115;
        }

        v65 = v103 - 1;
        result = memmove(v4 + 16 * v67, v20 + 16, 16 * (v103 - 1 - v67));
        v20 = v99;
        *(v99 + 2) = v103 - 1;
        v16 = v124;
        if (v103 <= 2)
        {
          goto LABEL_97;
        }
      }

      v74 = v4 + 16 * v65;
      v75 = *(v74 - 8);
      v76 = *(v74 - 7);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_116;
      }

      v79 = *(v74 - 6);
      v78 = *(v74 - 5);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_117;
      }

      v81 = *(v69 + 1);
      v82 = v81 - *v69;
      if (__OFSUB__(v81, *v69))
      {
        goto LABEL_119;
      }

      v80 = __OFADD__(v72, v82);
      v83 = v72 + v82;
      if (v80)
      {
        goto LABEL_122;
      }

      if (v83 >= v77)
      {
        v97 = *v68;
        v96 = *(v68 + 1);
        v80 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v80)
        {
          goto LABEL_130;
        }

        if (v72 < v98)
        {
          v67 = v65 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v18 = v16[1];
    v19 = v122;
    v15 = v123;
    if (v122 >= v18)
    {
      goto LABEL_101;
    }
  }

  v49 = v19 + v112;
  if (__OFADD__(v19, v112))
  {
    goto LABEL_134;
  }

  if (v49 >= v48)
  {
    v49 = v16[1];
  }

  if (v49 < v19)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v21 == v49)
  {
    goto LABEL_48;
  }

  v113 = v20;
  v50 = *v16;
  v51 = *(v15 + 72);
  v128 = *(v15 + 16);
  v52 = v50 + v51 * (v21 - 1);
  v53 = v19;
  v54 = -v51;
  v115 = v53;
  v55 = (v53 - v21);
  v126 = v50;
  v116 = v51;
  v117 = v49;
  v56 = (v50 + v21 * v51);
LABEL_41:
  v121 = v52;
  v122 = v21;
  v119 = v56;
  v120 = v55;
  while (1)
  {
    v57 = v132;
    v58 = v128;
    v128(v132, v56, v7);
    v4 = v133;
    v58(v133, v52, v7);
    sub_254E9DF9C();
    v59 = CGRectGetMaxY(v138);
    sub_254E9DF9C();
    v60 = CGRectGetMaxY(v139);
    v61 = *v130;
    (*v130)(v4, v7);
    v62 = v57;
    a4 = v7;
    result = v61(v62, v7);
    if (v59 >= v60)
    {
LABEL_46:
      v21 = v122 + 1;
      v52 = v121 + v116;
      v55 = v120 - 1;
      v56 = &v119[v116];
      if (v122 + 1 == v117)
      {
        v21 = v117;
        v20 = v113;
        v19 = v115;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v126)
    {
      break;
    }

    v63 = *v129;
    v4 = v127;
    (*v129)(v127, v56, v7);
    swift_arrayInitWithTakeFrontToBack();
    v63(v52, v4, v7);
    v52 += v54;
    v56 += v54;
    v47 = __CFADD__(v55++, 1);
    if (v47)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_254E6954C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = a4;
  v8 = sub_254E9DFCC();
  v9 = MEMORY[0x28223BE20](v8);
  v62 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v61 = v52 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v16 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v15;
  v65 = a1;
  v64 = v56;
  v59 = (v12 + 8);
  v60 = (v12 + 16);
  v20 = v17 / v15;
  v52[1] = v4;
  if (v19 >= v17 / v15)
  {
    v58 = a1;
    sub_254E934B0(a2, v17 / v15, v56);
    v31 = v56;
    v32 = v56 + v20 * v15;
    v33 = -v15;
    v34 = v32;
    v54 = -v15;
LABEL_37:
    v57 = a2 + v33;
    v52[0] = v34;
    v35 = v58;
    v55 = a2;
    while (1)
    {
      if (v32 <= v31)
      {
        v65 = a2;
        v63 = v34;
        goto LABEL_59;
      }

      if (a2 <= v35)
      {
        break;
      }

      v53 = v34;
      v36 = a3 + v33;
      v37 = v32 + v33;
      v38 = v61;
      v39 = *v60;
      v40 = v32;
      v41 = a3;
      (*v60)(v61, v32 + v33, v8);
      v42 = v62;
      v39(v62, v57, v8);
      sub_254E9DF9C();
      MaxY = CGRectGetMaxY(v68);
      sub_254E9DF9C();
      v44 = CGRectGetMaxY(v69);
      v45 = *v59;
      (*v59)(v42, v8);
      v45(v38, v8);
      if (MaxY < v44)
      {
        v49 = v41 < v55 || v36 >= v55;
        a3 = v36;
        if (v49)
        {
          a2 = v57;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v53;
          v33 = v54;
          v31 = v56;
          v32 = v40;
        }

        else
        {
          v50 = v53;
          v33 = v54;
          v34 = v53;
          v16 = v41 == v55;
          v31 = v56;
          v51 = v57;
          a2 = v57;
          v32 = v40;
          if (!v16)
          {
            swift_arrayInitWithTakeBackToFront();
            v32 = v40;
            v31 = v56;
            a2 = v51;
            v34 = v50;
          }
        }

        goto LABEL_37;
      }

      v46 = v41 < v40 || v36 >= v40;
      v47 = v36;
      v48 = v55;
      if (v46)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v47;
        v32 = v37;
        v34 = v37;
        v31 = v56;
        v33 = v54;
        v35 = v58;
        a2 = v48;
      }

      else
      {
        v34 = v37;
        v16 = v40 == v41;
        a3 = v47;
        v32 = v37;
        v31 = v56;
        v33 = v54;
        v35 = v58;
        a2 = v55;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v31 = v56;
          a3 = v47;
          v32 = v37;
          v34 = v37;
        }
      }
    }

    v65 = a2;
    v63 = v52[0];
  }

  else
  {
    v58 = a3;
    sub_254E934B0(a1, (a2 - a1) / v15, v56);
    v21 = v56;
    v57 = v56 + v19 * v15;
    v63 = v57;
    v22 = v62;
    while (v21 < v57 && a2 < v58)
    {
      v24 = v61;
      v25 = *v60;
      (*v60)(v61, a2, v8);
      v25(v22, v21, v8);
      sub_254E9DF9C();
      v26 = CGRectGetMaxY(v66);
      sub_254E9DF9C();
      v27 = CGRectGetMaxY(v67);
      v28 = *v59;
      (*v59)(v22, v8);
      v28(v24, v8);
      if (v26 >= v27)
      {
        if (a1 < v21 || a1 >= v21 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v64 = v21 + v15;
        v21 += v15;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v15;
      }

      a1 += v15;
      v65 = a1;
    }
  }

LABEL_59:
  sub_254E69A88(&v65, &v64, &v63);
  return 1;
}

uint64_t sub_254E69A88(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_254E9DFCC();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_254E69B68(char *result, int64_t a2, char a3, char *a4)
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
    sub_254E6775C(&qword_27F755058);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_254E69C68()
{
  result = qword_280C3FC58;
  if (!qword_280C3FC58)
  {
    sub_254E67858(&qword_27F755038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3FC58);
  }

  return result;
}

uint64_t sub_254E69CCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254E69D28()
{

  return sub_254E9DC6C();
}

uint64_t sub_254E69D88()
{

  return sub_254E635F4(v0, v1);
}

uint64_t sub_254E69DA4()
{

  return sub_254E9DC9C();
}

uint64_t UIContextCacheRepresentation.hierarchy.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UIContextCacheRepresentation.hierarchy.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UIContextCacheRepresentation.elements.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t UIContextCacheRepresentation.commands.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

IntelligenceFlowContext::UIContextCacheRepresentation __swiftcall UIContextCacheRepresentation.init(hierarchy:elements:commands:)(Swift::String_optional hierarchy, Swift::OpaquePointer elements, Swift::OpaquePointer commands)
{
  *v3 = hierarchy;
  *(v3 + 16) = elements;
  *(v3 + 24) = commands;
  result.hierarchy = hierarchy;
  result.commands = commands;
  result.elements = elements;
  return result;
}

uint64_t sub_254E69F04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6863726172656968 && a2 == 0xE900000000000079;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73646E616D6D6F63 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_254E9E5CC();

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

uint64_t sub_254E6A02C(unsigned __int8 a1)
{
  sub_254E9E5FC();
  MEMORY[0x259C2B8B0](a1);
  return sub_254E9E63C();
}

uint64_t sub_254E6A080(char a1)
{
  if (!a1)
  {
    return 0x6863726172656968;
  }

  if (a1 == 1)
  {
    return 0x73746E656D656C65;
  }

  return 0x73646E616D6D6F63;
}

uint64_t sub_254E6A0E4()
{
  v1 = *v0;
  sub_254E9E5FC();
  MEMORY[0x259C2B8B0](v1);
  return sub_254E9E63C();
}

uint64_t sub_254E6A130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E69F04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E6A178@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254E6A024();
  *a1 = result;
  return result;
}

uint64_t sub_254E6A1A0(uint64_t a1)
{
  v2 = sub_254E6A478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E6A1DC(uint64_t a1)
{
  v2 = sub_254E6A478();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UIContextCacheRepresentation.encode(to:)(void *a1)
{
  sub_254E6775C(&qword_27F755060);
  sub_254E633F0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = v9;
  sub_254E6A434(a1, a1[3]);
  sub_254E6A478();
  sub_254E9E65C();
  LOBYTE(v17) = 0;
  v10 = v15;
  sub_254E9E53C();
  if (!v10)
  {
    v11 = v13;
    v17 = v14;
    v16 = 1;
    sub_254E6775C(&qword_27F755070);
    sub_254E6A7CC(&qword_280C3FC78, &qword_280C3FD88);
    sub_254E62B78();
    v17 = v11;
    v16 = 2;
    sub_254E6775C(&qword_27F755078);
    sub_254E6A858(&qword_27F755080, &qword_280C3FCB8);
    sub_254E62B78();
  }

  return (*(v5 + 8))(v8, v2);
}

void *sub_254E6A434(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_254E6A478()
{
  result = qword_27F755068;
  if (!qword_27F755068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755068);
  }

  return result;
}

uint64_t UIContextCacheRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_254E6775C(&qword_27F755088);
  sub_254E633F0();
  MEMORY[0x28223BE20](v5);
  sub_254E6A434(a1, a1[3]);
  sub_254E6A478();
  sub_254E9E64C();
  if (v2)
  {
    sub_254E6A780(a1);
  }

  else
  {
    LOBYTE(v12) = 0;
    v7 = sub_254E9E4AC();
    v9 = v8;
    sub_254E6775C(&qword_27F755070);
    sub_254E6A7CC(&qword_280C3FC70, &qword_280C3FD80);
    sub_254E62A64();
    sub_254E6775C(&qword_27F755078);
    sub_254E6A858(&qword_27F755090, &qword_280C3FCB0);
    sub_254E62A64();
    v10 = sub_254E6AC58();
    v11(v10);
    *a2 = v7;
    a2[1] = v9;
    a2[2] = v12;
    a2[3] = v12;

    sub_254E6A780(a1);
  }
}

uint64_t sub_254E6A780(uint64_t a1)
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

uint64_t sub_254E6A7CC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_254E67858(&qword_27F755070);
    sub_254E6A8E4(a2, type metadata accessor for UIContextElement);
    result = sub_254E63660();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254E6A858(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_254E67858(&qword_27F755078);
    sub_254E6A8E4(a2, type metadata accessor for UIElement);
    result = sub_254E63660();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254E6A8E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254E6A95C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_254E6A99C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for UIContextCacheRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for UIContextCacheRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_254E6AB54()
{
  result = qword_27F755098;
  if (!qword_27F755098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755098);
  }

  return result;
}

unint64_t sub_254E6ABAC()
{
  result = qword_27F7550A0;
  if (!qword_27F7550A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7550A0);
  }

  return result;
}

unint64_t sub_254E6AC04()
{
  result = qword_27F7550A8;
  if (!qword_27F7550A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7550A8);
  }

  return result;
}

IntelligenceFlowContext::SearchContextRequestParameters __swiftcall SearchContextRequestParameters.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_254E6AD04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ALL && 0x8000000254EA55A0 == a2;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000019 && 0x8000000254EA55C0 == a2;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000019 && 0x8000000254EA55E0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_254E9E5CC();

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

unint64_t sub_254E6AE20(char a1)
{
  result = 0xD000000000000019;
  if (!a1)
  {
    return 0xD00000000000001ALL;
  }

  return result;
}

uint64_t sub_254E6AE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E6AD04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E6AEA0(uint64_t a1)
{
  v2 = sub_254E6B0A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E6AEDC(uint64_t a1)
{
  v2 = sub_254E6B0A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchContextRequestParameters.encode(to:)(void *a1)
{
  v3 = sub_254E6775C(&qword_27F7550B0);
  sub_254E62124();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_254E6A434(a1, a1[3]);
  sub_254E6B0A8();
  sub_254E9E65C();
  v13 = 0;
  sub_254E9E58C();
  if (!v1)
  {
    v12 = 1;
    sub_254E9E58C();
    v11 = 2;
    sub_254E9E57C();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_254E6B0A8()
{
  result = qword_27F7550B8;
  if (!qword_27F7550B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7550B8);
  }

  return result;
}

uint64_t SearchContextRequestParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_254E6775C(&qword_27F7550C0);
  sub_254E62124();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  sub_254E6A434(a1, a1[3]);
  sub_254E6B0A8();
  sub_254E9E64C();
  if (!v2)
  {
    v20 = 0;
    sub_254E62A94();
    sub_254E9E4FC();
    v12 = v11;
    v19 = 1;
    sub_254E62A94();
    sub_254E9E4FC();
    v15 = v14;
    v18 = 2;
    sub_254E62A94();
    v16 = sub_254E9E4EC();
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16 & 1;
  }

  return sub_254E6A780(a1);
}

__n128 initializeBufferWithCopyOfBuffer for SearchContextRequestParameters(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchContextRequestParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for SearchContextRequestParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchContextRequestParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_254E6B474()
{
  result = qword_27F7550C8;
  if (!qword_27F7550C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7550C8);
  }

  return result;
}

unint64_t sub_254E6B4CC()
{
  result = qword_27F7550D0;
  if (!qword_27F7550D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7550D0);
  }

  return result;
}

unint64_t sub_254E6B524()
{
  result = qword_27F7550D8;
  if (!qword_27F7550D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7550D8);
  }

  return result;
}

uint64_t OnScreenContent.uiMetadata.getter()
{
  v0 = sub_254E73920();
  type metadata accessor for OnScreenContent(v0);
  sub_254E736B0();
  v2 = sub_254E739EC(v1);
  return sub_254E6B660(v2, v3);
}

uint64_t sub_254E6B660(uint64_t a1, uint64_t a2)
{
  v3 = sub_254E737FC();
  v4(v3);
  sub_254E62148();
  v5 = sub_254E62CF4();
  v6(v5);
  return a2;
}

uint64_t OnScreenContent.uiMetadata.setter()
{
  v0 = sub_254E73524();
  type metadata accessor for OnScreenContent(v0);
  v1 = sub_254E73914();
  return sub_254E6B71C(v1, v2);
}

uint64_t sub_254E6B71C(uint64_t a1, uint64_t a2)
{
  v3 = sub_254E737FC();
  v4(v3);
  sub_254E62148();
  v5 = sub_254E62CF4();
  v6(v5);
  return a2;
}

uint64_t OnScreenContent.uiMetadata.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for OnScreenContent(v0);
  return sub_254E7353C();
}

uint64_t sub_254E6B7B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656D75636F64 && a2 == 0xE800000000000000;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_254E9E5CC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_254E6B880(char a1)
{
  if (a1)
  {
    return 0x6567616D69;
  }

  else
  {
    return 0x746E656D75636F64;
  }
}

uint64_t sub_254E6B8C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254E9E5CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254E6B938()
{
  sub_254E73A88();
  MEMORY[0x259C2B8B0](0);
  return sub_254E9E63C();
}

uint64_t sub_254E6B97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E6B7B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E6B9A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254E6B878();
  *a1 = result;
  return result;
}

uint64_t sub_254E6B9CC(uint64_t a1)
{
  v2 = sub_254E6C044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E6BA08(uint64_t a1)
{
  v2 = sub_254E6C044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E6BA68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254E6B8B4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_254E6BA94(uint64_t a1)
{
  v2 = sub_254E6C144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E6BAD0(uint64_t a1)
{
  v2 = sub_254E6C144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E6BB0C()
{
  sub_254E9E5FC();
  MEMORY[0x259C2B8B0](0);
  return sub_254E9E63C();
}

uint64_t sub_254E6BB4C(uint64_t a1)
{
  v2 = sub_254E6C098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E6BB88(uint64_t a1)
{
  v2 = sub_254E6C098();

  return MEMORY[0x2821FE720](a1, v2);
}

void OnScreenContent.Content.encode(to:)()
{
  sub_254E73838();
  v35 = v1;
  v5 = v4;
  sub_254E6775C(&qword_27F7550E0);
  sub_254E62124();
  v33 = v7;
  v34 = v6;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v8);
  sub_254E62158();
  sub_254E739A0(v9);
  type metadata accessor for OnScreenContent.Image(0);
  sub_254E62148();
  MEMORY[0x28223BE20](v10);
  sub_254E62F5C();
  v31 = v12 - v11;
  sub_254E6775C(&qword_27F7550E8);
  sub_254E62124();
  v29 = v14;
  v30 = v13;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v15);
  sub_254E73894();
  type metadata accessor for OnScreenContent.Document(0);
  sub_254E62148();
  MEMORY[0x28223BE20](v16);
  sub_254E62F5C();
  v19 = v18 - v17;
  type metadata accessor for OnScreenContent.Content(0);
  sub_254E62148();
  MEMORY[0x28223BE20](v20);
  sub_254E62F5C();
  sub_254E73A04();
  v36 = sub_254E6775C(&qword_27F7550F0);
  sub_254E62124();
  v22 = v21;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v23);
  sub_254E739F8();
  sub_254E73820(v5, v5[3]);
  sub_254E6C044();
  sub_254E9E65C();
  sub_254E73758();
  sub_254E6B660(v35, v2);
  v24 = (v22 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_254E6C0EC(v2, v31);
    sub_254E6C098();
    sub_254E9E52C();
    sub_254E73650();
    sub_254E6C198(v25, v26);
    sub_254E9E59C();
    (*(v33 + 8))(v32, v34);
    sub_254E73638();
  }

  else
  {
    sub_254E6C0EC(v2, v19);
    sub_254E6C144();
    sub_254E9E52C();
    sub_254E73608();
    sub_254E6C198(v27, v28);
    sub_254E9E59C();
    (*(v29 + 8))(v0, v30);
    sub_254E735A8();
  }

  sub_254E6C1E0();
  (*v24)(v3, v36);
  sub_254E62F78();
}

unint64_t sub_254E6C044()
{
  result = qword_27F7550F8;
  if (!qword_27F7550F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7550F8);
  }

  return result;
}

unint64_t sub_254E6C098()
{
  result = qword_27F755100;
  if (!qword_27F755100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755100);
  }

  return result;
}

uint64_t sub_254E6C0EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_254E737FC();
  v4(v3);
  sub_254E62148();
  v5 = sub_254E62CF4();
  v6(v5);
  return a2;
}

unint64_t sub_254E6C144()
{
  result = qword_27F755110;
  if (!qword_27F755110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755110);
  }

  return result;
}

uint64_t sub_254E6C198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254E6C1E0()
{
  v1 = sub_254E73524();
  v2(v1);
  sub_254E62148();
  (*(v3 + 8))(v0);
  return v0;
}

void OnScreenContent.Content.init(from:)()
{
  sub_254E73838();
  v70 = v0;
  v3 = v2;
  v62 = v4;
  v69 = sub_254E6775C(&qword_27F755120);
  sub_254E62124();
  v65 = v5;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v6);
  sub_254E62158();
  v66 = v7;
  sub_254E6775C(&qword_27F755128);
  sub_254E62124();
  v63 = v9;
  v64 = v8;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v10);
  sub_254E62158();
  sub_254E739A0(v11);
  sub_254E6775C(&qword_27F755130);
  sub_254E62124();
  v67 = v13;
  v68 = v12;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v14);
  sub_254E737E4();
  v15 = type metadata accessor for OnScreenContent.Content(0);
  sub_254E62148();
  MEMORY[0x28223BE20](v16);
  sub_254E73770();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v58 - v24;
  sub_254E73820(v3, v3[3]);
  sub_254E6C044();
  v26 = v70;
  sub_254E9E64C();
  if (v26)
  {
    goto LABEL_8;
  }

  v58 = v19;
  v59 = v23;
  v27 = v68;
  v60 = v25;
  v61 = v15;
  v70 = v3;
  v28 = sub_254E9E51C();
  sub_254E71908(v28, 0);
  if (v31 == v32 >> 1)
  {
LABEL_7:
    v43 = v61;
    v44 = sub_254E9E43C();
    swift_allocError();
    v46 = v45;
    sub_254E6775C(&qword_27F755138);
    *v46 = v43;
    sub_254E9E49C();
    sub_254E9E42C();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    v47 = sub_254E73794();
    v48(v47, v27);
    v3 = v70;
LABEL_8:
    v49 = v3;
LABEL_9:
    sub_254E6A780(v49);
    sub_254E62F78();
    return;
  }

  if (v31 < (v32 >> 1))
  {
    v71 = *(v30 + v31);
    sub_254E73440(v31 + 1, v32 >> 1, v29, v30, v31, v32);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      v37 = v27;
      if (v71)
      {
        sub_254E6C098();
        sub_254E7395C();
        v38 = v60;
        type metadata accessor for OnScreenContent.Image(0);
        sub_254E73650();
        sub_254E6C198(v39, v40);
        v41 = v58;
        sub_254E73A30();
        v42 = v67;
        swift_unknownObjectRelease();
        v52 = sub_254E737A4();
        v53(v52);
        (*(v42 + 8))(v1, v37);
      }

      else
      {
        sub_254E6C144();
        sub_254E7395C();
        v38 = v60;
        type metadata accessor for OnScreenContent.Document(0);
        sub_254E73608();
        sub_254E6C198(v50, v51);
        v41 = v59;
        sub_254E73A30();
        swift_unknownObjectRelease();
        v54 = sub_254E737A4();
        v55(v54);
        v56 = sub_254E73794();
        v57(v56, v37);
      }

      swift_storeEnumTagMultiPayload();
      sub_254E6C0EC(v41, v38);
      sub_254E6C0EC(v38, v62);
      v49 = v70;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t OnScreenContent.Document.file.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t OnScreenContent.Document.paginationInfo.getter()
{
  v0 = sub_254E73920();
  v1 = type metadata accessor for OnScreenContent.Document(v0);
  v2 = sub_254E739EC(*(v1 + 20));
  return sub_254E71BC8(v2, v3, v4);
}

uint64_t OnScreenContent.Document.paginationInfo.setter()
{
  v0 = sub_254E73524();
  type metadata accessor for OnScreenContent.Document(v0);
  v1 = sub_254E73914();
  return sub_254E71C14(v1, v2, v3);
}

uint64_t OnScreenContent.Document.paginationInfo.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for OnScreenContent.Document(v0);
  return sub_254E7353C();
}

uint64_t OnScreenContent.Document.entity.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for OnScreenContent.Document(v0);
  return sub_254E7353C();
}

uint64_t OnScreenContent.Document.isWindowContentGeneratedPDF.setter()
{
  v2 = sub_254E73524();
  result = type metadata accessor for OnScreenContent.Document(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t OnScreenContent.Document.isWindowContentGeneratedPDF.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for OnScreenContent.Document(v0);
  return sub_254E7353C();
}

uint64_t OnScreenContent.Document.type.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for OnScreenContent.Document(v0);
  return sub_254E7353C();
}

uint64_t OnScreenContent.Document.init(file:paginationInfo:entity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_254E73920();
  v8 = type metadata accessor for OnScreenContent.Document(v7);
  v9 = v8[5];
  sub_254E9DE3C();
  sub_254E63420();
  sub_254E65418(v10, v11, v12, v13);
  v14 = v8[6];
  sub_254E9E16C();
  sub_254E63420();
  sub_254E65418(v15, v16, v17, v18);
  sub_254E9E0DC();
  sub_254E63420();
  sub_254E65418(v19, v20, v21, v22);
  *v3 = a1;
  sub_254E71C14(a2, v3 + v9, &qword_27F755150);
  result = sub_254E71C14(a3, v3 + v14, &qword_27F755158);
  *(v3 + v8[7]) = 0;
  return result;
}

void OnScreenContent.Document.init(file:paginationInfo:entity:isWindowContentGeneratedPDF:)()
{
  sub_254E7392C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for OnScreenContent.Document(0);
  v11 = v10[5];
  sub_254E9DE3C();
  sub_254E63420();
  sub_254E65418(v12, v13, v14, v15);
  v16 = v10[6];
  sub_254E9E16C();
  sub_254E63420();
  sub_254E65418(v17, v18, v19, v20);
  sub_254E9E0DC();
  sub_254E63420();
  sub_254E65418(v21, v22, v23, v24);
  *v9 = v7;
  sub_254E71C14(v5, v9 + v11, &qword_27F755150);
  sub_254E71C14(v3, v9 + v16, &qword_27F755158);
  *(v9 + v10[7]) = v1;
  sub_254E738E4();
}

void OnScreenContent.Document.init(file:paginationInfo:entity:isWindowContentGeneratedPDF:type:)()
{
  sub_254E7392C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for OnScreenContent.Document(0);
  v13 = v12[5];
  sub_254E9DE3C();
  sub_254E63420();
  sub_254E65418(v14, v15, v16, v17);
  v18 = v12[6];
  sub_254E9E16C();
  sub_254E63420();
  sub_254E65418(v19, v20, v21, v22);
  v23 = v12[8];
  sub_254E9E0DC();
  sub_254E63420();
  sub_254E65418(v24, v25, v26, v27);
  *v11 = v9;
  sub_254E71C14(v7, v11 + v13, &qword_27F755150);
  sub_254E71C14(v5, v11 + v18, &qword_27F755158);
  *(v11 + v12[7]) = v3;
  sub_254E71C14(v1, v11 + v23, &qword_27F755160);
  sub_254E738E4();
}

uint64_t sub_254E6CDC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701603686 && a2 == 0xE400000000000000;
  if (v3 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974616E69676170 && a2 == 0xEE006F666E496E6FLL;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
      if (v7 || (sub_254E9E5CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x8000000254EA5630 == a2;
        if (v8 || (sub_254E9E5CC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1701869940 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_254E9E5CC();

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

unint64_t sub_254E6CF7C(char a1)
{
  result = 1701603686;
  switch(a1)
  {
    case 1:
      result = 0x6974616E69676170;
      break;
    case 2:
      result = 0x797469746E65;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254E6D018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E6CDC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E6D040@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254E6CF74();
  *a1 = result;
  return result;
}

uint64_t sub_254E6D068(uint64_t a1)
{
  v2 = sub_254E71B00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E6D0A4(uint64_t a1)
{
  v2 = sub_254E71B00();

  return MEMORY[0x2821FE720](a1, v2);
}

void OnScreenContent.Document.encode(to:)()
{
  sub_254E738C4();
  sub_254E6775C(&qword_27F755168);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v1);
  sub_254E73A04();
  sub_254E62CC4();
  sub_254E71B00();
  sub_254E737C8();
  sub_254E9DDEC();
  sub_254E73620();
  sub_254E6C198(v2, v3);
  sub_254E63680();
  sub_254E9E55C();
  if (!v0)
  {
    type metadata accessor for OnScreenContent.Document(0);
    sub_254E9DE3C();
    sub_254E735C0();
    sub_254E6C198(v4, v5);
    sub_254E63680();
    sub_254E9E55C();
    sub_254E9E16C();
    sub_254E7350C();
    sub_254E6C198(v6, v7);
    sub_254E63680();
    sub_254E9E55C();
    sub_254E73530();
    sub_254E9E57C();
    sub_254E9E0DC();
    sub_254E73578();
    sub_254E6C198(v8, v9);
    sub_254E63680();
    sub_254E9E55C();
  }

  v10 = sub_254E738B4();
  v11(v10);
  sub_254E738FC();
}

void OnScreenContent.Document.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_254E73838();
  v14 = v13;
  v54 = v15;
  v16 = sub_254E6775C(&qword_27F755160);
  sub_254E62CE8(v16);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v17);
  sub_254E62158();
  v55 = v18;
  v19 = sub_254E6775C(&qword_27F755158);
  sub_254E62CE8(v19);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v20);
  sub_254E62158();
  v56 = v21;
  v22 = sub_254E6775C(&qword_27F755150);
  sub_254E62CE8(v22);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v23);
  sub_254E62158();
  v58 = v24;
  v59 = sub_254E6775C(&qword_27F755188);
  sub_254E62124();
  v57 = v25;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v26);
  v27 = sub_254E739AC();
  v28 = type metadata accessor for OnScreenContent.Document(v27);
  sub_254E62148();
  MEMORY[0x28223BE20](v29);
  sub_254E62F5C();
  sub_254E737E4();
  v31 = *(v30 + 20);
  v32 = sub_254E9DE3C();
  v61 = v31;
  sub_254E63420();
  sub_254E65418(v33, v34, v35, v32);
  v36 = v28[6];
  v37 = sub_254E9E16C();
  v60 = v36;
  sub_254E63420();
  sub_254E65418(v38, v39, v40, v37);
  v41 = v28[8];
  v42 = sub_254E9E0DC();
  sub_254E63420();
  sub_254E65418(v43, v44, v45, v42);
  sub_254E73820(v14, v14[3]);
  sub_254E71B00();
  sub_254E9E64C();
  if (v10)
  {
    sub_254E6A780(v14);

    sub_254E71C60(v11 + v61, &qword_27F755150);
    sub_254E71C60(v11 + v60, &qword_27F755158);
    sub_254E71C60(v11 + v41, &qword_27F755160);
  }

  else
  {
    sub_254E9DDEC();
    sub_254E73620();
    sub_254E6C198(v46, v47);
    sub_254E9E4CC();
    *v11 = a10;
    sub_254E735C0();
    sub_254E6C198(v48, v49);
    sub_254E9E4CC();
    sub_254E71C14(v58, v11 + v61, &qword_27F755150);
    sub_254E7350C();
    sub_254E6C198(v50, v51);
    sub_254E9E4CC();
    sub_254E71C14(v56, v11 + v60, &qword_27F755158);
    *(v11 + v28[7]) = sub_254E9E4EC() & 1;
    sub_254E73578();
    sub_254E6C198(v52, v53);
    sub_254E9E4CC();
    (*(v57 + 8))(v12, v59);
    sub_254E71C14(v55, v11 + v41, &qword_27F755160);
    sub_254E6B660(v11, v54);
    sub_254E6A780(v14);
    sub_254E735A8();
    sub_254E6C1E0();
  }

  sub_254E62F78();
}

uint64_t OnScreenContent.Image.isSnapshot.setter()
{
  v2 = sub_254E73524();
  result = type metadata accessor for OnScreenContent.Image(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t OnScreenContent.Image.isSnapshot.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for OnScreenContent.Image(v0);
  return sub_254E7353C();
}

uint64_t sub_254E6DA18()
{
  v0 = sub_254E73920();
  v2 = v1(v0);
  v3 = sub_254E739EC(*(v2 + 24));
  return sub_254E71BC8(v3, v4, v5);
}

uint64_t sub_254E6DA78()
{
  v0 = sub_254E73524();
  v1(v0);
  v2 = sub_254E73914();
  return sub_254E71C14(v2, v3, v4);
}

uint64_t OnScreenContent.Image.entity.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for OnScreenContent.Image(v0);
  return sub_254E7353C();
}

uint64_t OnScreenContent.Image.init(image:isSnapshot:entity:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_254E9DE1C();
  sub_254E63420();
  sub_254E65418(v8, v9, v10, v11);
  v12 = type metadata accessor for OnScreenContent.Image(0);
  v13 = *(v12 + 24);
  sub_254E9E16C();
  sub_254E63420();
  sub_254E65418(v14, v15, v16, v17);
  sub_254E71C14(a1, a4, &qword_27F7551A0);
  *(a4 + *(v12 + 20)) = a2;
  return sub_254E71C14(a3, a4 + v13, &qword_27F755158);
}

uint64_t sub_254E6DBB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x687370616E537369 && a2 == 0xEA0000000000746FLL;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_254E9E5CC();

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

uint64_t sub_254E6DCC8(char a1)
{
  if (!a1)
  {
    return 0x6567616D69;
  }

  if (a1 == 1)
  {
    return 0x687370616E537369;
  }

  return 0x797469746E65;
}

uint64_t sub_254E6DD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E6DBB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E6DD4C(uint64_t a1)
{
  v2 = sub_254E71B54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E6DD88(uint64_t a1)
{
  v2 = sub_254E71B54();

  return MEMORY[0x2821FE720](a1, v2);
}

void OnScreenContent.Image.encode(to:)()
{
  v2 = sub_254E6775C(&qword_27F7551A8);
  sub_254E62124();
  v4 = v3;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v5);
  sub_254E737E4();
  sub_254E62CC4();
  sub_254E71B54();
  sub_254E737C8();
  sub_254E9DE1C();
  sub_254E73548();
  sub_254E6C198(v6, v7);
  sub_254E73808();
  sub_254E62E4C();
  sub_254E9E55C();
  if (!v0)
  {
    type metadata accessor for OnScreenContent.Image(0);
    sub_254E73814();
    sub_254E9E57C();
    sub_254E739C0();
    sub_254E9E16C();
    sub_254E7350C();
    sub_254E6C198(v8, v9);
    sub_254E62E4C();
    sub_254E9E55C();
  }

  (*(v4 + 8))(v1, v2);
  sub_254E738FC();
}

void OnScreenContent.Image.init(from:)()
{
  sub_254E73838();
  v4 = v3;
  v29 = v5;
  v6 = sub_254E6775C(&qword_27F755158);
  sub_254E62CE8(v6);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v7);
  sub_254E62158();
  sub_254E739A0(v8);
  v9 = sub_254E6775C(&qword_27F7551A0);
  sub_254E62CE8(v9);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v10);
  sub_254E62158();
  v32 = v11;
  v33 = sub_254E6775C(&qword_27F7551C0);
  sub_254E62124();
  v30 = v12;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v13);
  sub_254E73884();
  v14 = type metadata accessor for OnScreenContent.Image(0);
  sub_254E62148();
  MEMORY[0x28223BE20](v15);
  sub_254E62F5C();
  sub_254E737E4();
  v16 = sub_254E9DE1C();
  sub_254E63420();
  sub_254E65418(v17, v18, v19, v16);
  v20 = *(v14 + 24);
  v21 = sub_254E9E16C();
  sub_254E63420();
  sub_254E65418(v22, v23, v24, v21);
  sub_254E73820(v4, v4[3]);
  sub_254E71B54();
  sub_254E9E64C();
  if (v0)
  {
    sub_254E6A780(v4);
    sub_254E71C60(v1, &qword_27F7551A0);
    sub_254E71C60(v1 + v20, &qword_27F755158);
  }

  else
  {
    sub_254E73548();
    sub_254E6C198(v25, v26);
    sub_254E73808();
    sub_254E9E4CC();
    sub_254E71C14(v32, v1, &qword_27F7551A0);
    sub_254E73814();
    *(v1 + *(v14 + 20)) = sub_254E9E4EC() & 1;
    sub_254E739C0();
    sub_254E7350C();
    sub_254E6C198(v27, v28);
    sub_254E9E4CC();
    (*(v30 + 8))(v2, v33);
    sub_254E71C14(v31, v1 + v20, &qword_27F755158);
    sub_254E6B660(v1, v29);
    sub_254E6A780(v4);
    sub_254E73638();
    sub_254E6C1E0();
  }

  sub_254E62F78();
}

uint64_t OnScreenContent.UIMetadata.isSelected.setter()
{
  v2 = sub_254E73524();
  result = type metadata accessor for OnScreenContent.UIMetadata(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t OnScreenContent.UIMetadata.isSelected.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for OnScreenContent.UIMetadata(v0);
  return sub_254E7353C();
}

uint64_t OnScreenContent.UIMetadata.isCurrentUserActivity.setter()
{
  v2 = sub_254E73524();
  result = type metadata accessor for OnScreenContent.UIMetadata(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t OnScreenContent.UIMetadata.isCurrentUserActivity.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for OnScreenContent.UIMetadata(v0);
  return sub_254E7353C();
}

uint64_t OnScreenContent.UIMetadata.nestedRemoteProcesses.getter()
{
  type metadata accessor for OnScreenContent.UIMetadata(0);
}

uint64_t OnScreenContent.UIMetadata.nestedRemoteProcesses.setter()
{
  v2 = sub_254E73524();
  v3 = *(type metadata accessor for OnScreenContent.UIMetadata(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

uint64_t OnScreenContent.UIMetadata.nestedRemoteProcesses.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for OnScreenContent.UIMetadata(v0);
  return sub_254E7353C();
}

__n128 OnScreenContent.UIMetadata.Window.boundingBox.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 OnScreenContent.UIMetadata.Window.boundingBox.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 40) = *(a1 + 32);
  return result;
}

uint64_t OnScreenContent.UIMetadata.Window.fractionVisible.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t OnScreenContent.UIMetadata.Window.appProcess.getter()
{
  v0 = sub_254E73920();
  v1 = type metadata accessor for OnScreenContent.UIMetadata.Window(v0);
  v2 = sub_254E739EC(*(v1 + 28));
  return sub_254E71BC8(v2, v3, v4);
}

uint64_t OnScreenContent.UIMetadata.Window.appProcess.setter()
{
  v0 = sub_254E73524();
  type metadata accessor for OnScreenContent.UIMetadata.Window(v0);
  v1 = sub_254E73914();
  return sub_254E71C14(v1, v2, v3);
}

uint64_t OnScreenContent.UIMetadata.Window.appProcess.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for OnScreenContent.UIMetadata.Window(v0);
  return sub_254E7353C();
}

uint64_t OnScreenContent.UIMetadata.Window.intelligenceUserActivity.modify()
{
  v0 = sub_254E73524();
  type metadata accessor for OnScreenContent.UIMetadata.Window(v0);
  return sub_254E7353C();
}

uint64_t OnScreenContent.UIMetadata.Window.init(isActive:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  type metadata accessor for OnScreenContent.UIMetadata.Window(0);
  sub_254E9DE4C();
  sub_254E63420();
  sub_254E65418(v4, v5, v6, v7);
  sub_254E9DE5C();
  sub_254E63420();
  result = sub_254E65418(v8, v9, v10, v11);
  *a2 = a1;
  return result;
}

void static OnScreenContent.UIMetadata.Window.== infix(_:_:)()
{
  sub_254E7392C();
  v4 = v3;
  v6 = v5;
  v7 = sub_254E9DE5C();
  sub_254E62124();
  v52 = v8;
  MEMORY[0x28223BE20](v9);
  sub_254E62F5C();
  v50 = v11 - v10;
  v12 = sub_254E6775C(&qword_27F7551D8);
  sub_254E62CE8(v12);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v13);
  sub_254E62158();
  v51 = v14;
  v15 = sub_254E6775C(&qword_27F7551E0);
  sub_254E62148();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v16);
  sub_254E62158();
  v53 = v17;
  v18 = sub_254E9DE4C();
  sub_254E62124();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_254E62F5C();
  sub_254E739F8();
  v22 = sub_254E6775C(&qword_27F7551D0);
  sub_254E62CE8(v22);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v23);
  sub_254E73894();
  v24 = sub_254E6775C(&qword_27F7551E8);
  sub_254E62148();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v25);
  sub_254E73884();
  if (*v6 != *v4)
  {
    goto LABEL_2;
  }

  if (v6[40])
  {
    if ((v4[40] & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if ((v4[40] & 1) != 0 || !CGRectEqualToRect(*(v6 + 8), *(v4 + 8)))
  {
    goto LABEL_2;
  }

  v26 = v4[56];
  if (v6[56])
  {
    if (!v4[56])
    {
      goto LABEL_2;
    }

LABEL_14:
    v49 = v7;
    v48 = type metadata accessor for OnScreenContent.UIMetadata.Window(0);
    v27 = *(v48 + 28);
    v28 = *(v24 + 48);
    sub_254E71BC8(&v6[v27], v2, &qword_27F7551D0);
    v29 = &v4[v27];
    v30 = v28;
    sub_254E71BC8(v29, v2 + v28, &qword_27F7551D0);
    sub_254E73988(v2, 1, v18);
    if (v31)
    {
      sub_254E73988(v2 + v28, 1, v18);
      if (v31)
      {
        sub_254E71C60(v2, &qword_27F7551D0);
LABEL_24:
        v42 = *(v48 + 32);
        v43 = *(v15 + 48);
        sub_254E71BC8(&v6[v42], v53, &qword_27F7551D8);
        sub_254E71BC8(&v4[v42], v53 + v43, &qword_27F7551D8);
        sub_254E73988(v53, 1, v49);
        if (v31)
        {
          sub_254E73988(v53 + v43, 1, v49);
          if (v31)
          {
            sub_254E71C60(v53, &qword_27F7551D8);
            goto LABEL_2;
          }
        }

        else
        {
          sub_254E71BC8(v53, v51, &qword_27F7551D8);
          sub_254E73988(v53 + v43, 1, v49);
          if (!v44)
          {
            (*(v52 + 32))(v50, v53 + v43, v49);
            sub_254E63408();
            sub_254E6C198(v45, v46);
            sub_254E9E25C();
            v47 = *(v52 + 8);
            v47(v50, v49);
            v47(v51, v49);
            sub_254E71C60(v53, &qword_27F7551D8);
            goto LABEL_2;
          }

          (*(v52 + 8))(v51, v49);
        }

        v34 = &qword_27F7551E0;
        v35 = v53;
LABEL_33:
        sub_254E71C60(v35, v34);
        goto LABEL_2;
      }
    }

    else
    {
      sub_254E71BC8(v2, v0, &qword_27F7551D0);
      sub_254E73988(v2 + v28, 1, v18);
      if (!v31)
      {
        v36 = v20;
        (*(v20 + 32))(v1, v2 + v30, v18);
        sub_254E62BA4();
        sub_254E6C198(v37, v38);
        v39 = sub_254E9E25C();
        v40 = *(v36 + 8);
        v40(v1, v18);
        v41 = sub_254E62CF4();
        (v40)(v41);
        sub_254E71C60(v2, &qword_27F7551D0);
        if ((v39 & 1) == 0)
        {
          goto LABEL_2;
        }

        goto LABEL_24;
      }

      v32 = sub_254E62CF4();
      v33(v32);
    }

    v34 = &qword_27F7551E8;
    v35 = v2;
    goto LABEL_33;
  }

  if (*(v6 + 6) != *(v4 + 6))
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_2:
  sub_254E738E4();
}

uint64_t sub_254E6EEA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697463417369 && a2 == 0xE800000000000000;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F697463617266 && a2 == 0xEF656C6269736956;
      if (v7 || (sub_254E9E5CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65636F7250707061 && a2 == 0xEA00000000007373;
        if (v8 || (sub_254E9E5CC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000018 && 0x8000000254EA5650 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_254E9E5CC();

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

unint64_t sub_254E6F05C(char a1)
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
      result = 0x65636F7250707061;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254E6F11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E6EEA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E6F144(uint64_t a1)
{
  v2 = sub_254E71CB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E6F180(uint64_t a1)
{
  v2 = sub_254E71CB8();

  return MEMORY[0x2821FE720](a1, v2);
}

void OnScreenContent.UIMetadata.Window.encode(to:)()
{
  sub_254E738C4();
  sub_254E6775C(&qword_27F7551F0);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v1);
  sub_254E73A04();
  sub_254E62CC4();
  sub_254E71CB8();
  sub_254E737C8();
  sub_254E73530();
  sub_254E9E57C();
  if (!v0)
  {
    type metadata accessor for CGRect(0);
    sub_254E73668();
    sub_254E6C198(v2, v3);
    sub_254E63680();
    sub_254E9E55C();
    sub_254E73530();
    sub_254E9E54C();
    type metadata accessor for OnScreenContent.UIMetadata.Window(0);
    sub_254E9DE4C();
    sub_254E62BA4();
    sub_254E6C198(v4, v5);
    sub_254E63680();
    sub_254E9E55C();
    sub_254E9DE5C();
    sub_254E63408();
    sub_254E6C198(v6, v7);
    sub_254E63680();
    sub_254E9E55C();
  }

  v8 = sub_254E738B4();
  v9(v8);
  sub_254E738FC();
}

uint64_t OnScreenContent.UIMetadata.Window.hash(into:)()
{
  sub_254E73524();
  v3 = sub_254E9DE5C();
  sub_254E62124();
  v33 = v4;
  MEMORY[0x28223BE20](v5);
  sub_254E62F5C();
  sub_254E739A0(v7 - v6);
  v8 = sub_254E6775C(&qword_27F7551D8);
  sub_254E62CE8(v8);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v9);
  sub_254E739AC();
  v10 = sub_254E9DE4C();
  sub_254E62124();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_254E62F5C();
  v16 = v15 - v14;
  v17 = sub_254E6775C(&qword_27F7551D0);
  sub_254E62CE8(v17);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v18);
  sub_254E739F8();
  sub_254E9E61C();
  if (*(v0 + 40) == 1)
  {
    sub_254E73A70();
  }

  else
  {
    v20 = *(v0 + 24);
    v19 = *(v0 + 32);
    v22 = *(v0 + 8);
    v21 = *(v0 + 16);
    sub_254E73AA0();
    sub_254E71A7C(v22, v21, v20, v19);
  }

  if (*(v0 + 56) == 1)
  {
    sub_254E73A70();
  }

  else
  {
    v23 = *(v0 + 48);
    sub_254E73AA0();
    if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    MEMORY[0x259C2B8D0](v24);
  }

  v25 = type metadata accessor for OnScreenContent.UIMetadata.Window(0);
  sub_254E71BC8(v0 + *(v25 + 28), v2, &qword_27F7551D0);
  sub_254E73988(v2, 1, v10);
  if (v26)
  {
    sub_254E73A70();
  }

  else
  {
    (*(v12 + 32))(v16, v2, v10);
    sub_254E73AA0();
    sub_254E62BA4();
    sub_254E6C198(v27, v28);
    sub_254E9E23C();
    (*(v12 + 8))(v16, v10);
  }

  sub_254E71BC8(v0 + *(v25 + 32), v1, &qword_27F7551D8);
  sub_254E73988(v1, 1, v3);
  if (v26)
  {
    return sub_254E73A70();
  }

  (*(v33 + 32))(v32, v1, v3);
  sub_254E73AA0();
  sub_254E63408();
  sub_254E6C198(v29, v30);
  sub_254E9E23C();
  return (*(v33 + 8))(v32, v3);
}

void OnScreenContent.UIMetadata.Window.init(from:)()
{
  sub_254E73838();
  v47 = v1;
  v4 = v3;
  v43 = v5;
  v6 = sub_254E6775C(&qword_27F7551D8);
  sub_254E62CE8(v6);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v7);
  sub_254E62158();
  v44 = v8;
  v9 = sub_254E6775C(&qword_27F7551D0);
  sub_254E62CE8(v9);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v10);
  sub_254E73894();
  sub_254E6775C(&qword_27F755210);
  sub_254E62124();
  v45 = v12;
  v46 = v11;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for OnScreenContent.UIMetadata.Window(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  sub_254E62F5C();
  sub_254E737E4();
  v18 = *(v17 + 36);
  v19 = sub_254E9DE4C();
  v50 = v18;
  sub_254E63420();
  sub_254E65418(v20, v21, v22, v19);
  v23 = *(v17 + 40);
  v24 = sub_254E9DE5C();
  v49 = v23;
  sub_254E63420();
  sub_254E65418(v25, v26, v27, v24);
  v28 = v4[3];
  v48 = v4;
  sub_254E73820(v4, v28);
  sub_254E71CB8();
  v29 = v15;
  v30 = v47;
  sub_254E9E64C();
  if (v30)
  {
    sub_254E6A780(v48);
    sub_254E71C60(v2 + v50, &qword_27F7551D0);
    sub_254E71C60(v2 + v49, &qword_27F7551D8);
  }

  else
  {
    v47 = v24;
    v31 = v45;
    v32 = v46;
    LOBYTE(v51) = 0;
    *v2 = sub_254E9E4EC() & 1;
    type metadata accessor for CGRect(0);
    sub_254E73668();
    sub_254E6C198(v33, v34);
    sub_254E9E4CC();
    v35 = v53;
    v36 = v52;
    *(v2 + 8) = v51;
    *(v2 + 24) = v36;
    *(v2 + 40) = v35;
    LOBYTE(v51) = 2;
    *(v2 + 48) = sub_254E9E4BC();
    *(v2 + 56) = v37 & 1;
    LOBYTE(v51) = 3;
    sub_254E62BA4();
    sub_254E6C198(v38, v39);
    sub_254E9E4CC();
    sub_254E71C14(v0, v2 + v50, &qword_27F7551D0);
    LOBYTE(v51) = 4;
    sub_254E63408();
    sub_254E6C198(v40, v41);
    v42 = v44;
    sub_254E9E4CC();
    (*(v31 + 8))(v29, v32);
    sub_254E71C14(v42, v2 + v49, &qword_27F7551D8);
    sub_254E736C8();
    sub_254E6B660(v2, v43);
    sub_254E73850(v48);
    sub_254E6C1E0();
  }

  sub_254E62F78();
}

uint64_t OnScreenContent.UIMetadata.init(window:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OnScreenContent.UIMetadata(0);
  *(a1 + v2[6]) = 0;
  *(a1 + v2[7]) = MEMORY[0x277D84F90];
  sub_254E736E0();
  v3 = sub_254E62CF4();
  result = sub_254E6C0EC(v3, v4);
  *(a1 + v2[5]) = 0;
  return result;
}

uint64_t static OnScreenContent.UIMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  static OnScreenContent.UIMetadata.Window.== infix(_:_:)();
  if ((v4 & 1) != 0 && (v5 = type metadata accessor for OnScreenContent.UIMetadata(0), *(a1 + *(v5 + 20)) == *(a2 + *(v5 + 20))) && *(a1 + *(v5 + 24)) == *(a2 + *(v5 + 24)))
  {
    sub_254E73698();
    sub_254E705F8();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_254E6FD88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedEntity(0) - 8;
  MEMORY[0x28223BE20](v4);
  sub_254E738A4();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      sub_254E738D4();
      v13 = a1 + v12;
      v14 = a2 + v12;
      v16 = *(v15 + 72);
      do
      {
        sub_254E6B660(v13, v10);
        sub_254E6B660(v14, v7);
        static DetectedEntity.== infix(_:_:)();
        v18 = v17;
        sub_254E6C1E0();
        sub_254E6C1E0();
        if ((v18 & 1) == 0)
        {
          break;
        }

        v14 += v16;
        v13 += v16;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

void sub_254E6FF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_254E7392C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for DetectedEntityDetails(0);
  sub_254E739CC();
  MEMORY[0x28223BE20](v27);
  sub_254E738A4();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = *(v25 + 16);
  if (v34 == *(v23 + 16) && v34 && v25 != v23)
  {
    sub_254E738D4();
    v36 = v25 + v35;
    v37 = v23 + v35;
    v39 = *(v38 + 72);
    while (1)
    {
      sub_254E6B660(v36, v33);
      sub_254E6B660(v37, v30);
      static DetectedEntity.== infix(_:_:)();
      if ((v40 & 1) == 0)
      {
        break;
      }

      v41 = v33[*(v26 + 20)];
      sub_254E6C1E0();
      v42 = *(v30 + *(v26 + 20));
      sub_254E6C1E0();
      if (((v41 ^ v42) & 1) == 0)
      {
        v37 += v39;
        v36 += v39;
        if (--v34)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    sub_254E735F0();
    sub_254E6C1E0();
    sub_254E6C1E0();
  }

LABEL_11:
  sub_254E738E4();
}

void sub_254E70100()
{
  sub_254E7392C();
  v1 = v0;
  v3 = v2;
  type metadata accessor for DetectedEntityDetails(0);
  sub_254E62124();
  v71 = v4;
  v72 = v5;
  MEMORY[0x28223BE20](v4);
  sub_254E73770();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - v10;
  v12 = type metadata accessor for DetectedEntity(0);
  v73 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  sub_254E73770();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  v19 = type metadata accessor for UIContextElement(0);
  sub_254E739CC();
  MEMORY[0x28223BE20](v20);
  sub_254E738A4();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = (&v58 - v25);
  v27 = *(v3 + 16);
  if (v27 == *(v1 + 16) && v27 && v3 != v1)
  {
    v69 = v8;
    v70 = v11;
    sub_254E738D4();
    v29 = v3 + v28;
    v30 = 0;
    v62 = v19;
    v63 = v1 + v28;
    v32 = *(v31 + 72);
    v65 = v26;
    v66 = v23;
    v60 = v29;
    v61 = v27;
    v59 = v32;
    while (1)
    {
      v33 = v32 * v30;
      sub_254E73560();
      sub_254E6B660(v34 + v33, v26);
      if (v30 == v27)
      {
        break;
      }

      v64 = v30;
      sub_254E73560();
      sub_254E6B660(v63 + v33, v23);
      v35 = *v26;
      v36 = *v23;
      v37 = *(v35 + 16);
      if (v37 != *(*v23 + 16))
      {
        goto LABEL_29;
      }

      if (v37 && v35 != v36)
      {
        v38 = 0;
        v39 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v40 = v35 + v39;
        v41 = v36 + v39;
        while (v38 < *(v35 + 16))
        {
          v42 = *(v73 + 72) * v38;
          sub_254E73740();
          sub_254E6B660(v40 + v42, v18);
          if (v38 >= *(v36 + 16))
          {
            goto LABEL_32;
          }

          sub_254E73740();
          sub_254E6B660(v41 + v42, v15);
          static DetectedEntity.== infix(_:_:)();
          v44 = v43;
          sub_254E6C1E0();
          sub_254E6C1E0();
          if ((v44 & 1) == 0)
          {
            goto LABEL_29;
          }

          if (v37 == ++v38)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_14:
      v45 = v65[1];
      v46 = *(v66 + 8);
      v47 = *(v45 + 16);
      if (v47 != *(v46 + 16))
      {
        goto LABEL_29;
      }

      if (v47 && v45 != v46)
      {
        v48 = 0;
        v49 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v67 = v46 + v49;
        v68 = v45 + v49;
        while (v48 < *(v45 + 16))
        {
          v50 = *(v72 + 72) * v48;
          sub_254E73680();
          v51 = v70;
          sub_254E6B660(v68 + v50, v70);
          if (v48 >= *(v46 + 16))
          {
            goto LABEL_34;
          }

          sub_254E73680();
          v52 = v69;
          sub_254E6B660(v67 + v50, v69);
          static DetectedEntity.== infix(_:_:)();
          if ((v53 & 1) == 0)
          {
            sub_254E735F0();
            sub_254E6C1E0();
            sub_254E6C1E0();
            goto LABEL_29;
          }

          v54 = v71;
          v55 = *(v51 + *(v71 + 20));
          sub_254E6C1E0();
          LODWORD(v54) = *(v52 + *(v54 + 20));
          sub_254E6C1E0();
          if (v55 != v54)
          {
            goto LABEL_29;
          }

          if (v47 == ++v48)
          {
            goto LABEL_23;
          }
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        break;
      }

LABEL_23:
      if ((sub_254E70100(v65[2], *(v66 + 16)) & 1) == 0)
      {
LABEL_29:
        sub_254E6C1E0();
        sub_254E6C1E0();
        goto LABEL_30;
      }

      v26 = v65;
      v23 = v66;
      static UIElement.== infix(_:_:)();
      v57 = v56;
      sub_254E6C1E0();
      sub_254E6C1E0();
      if (v57)
      {
        v30 = v64 + 1;
        v27 = v61;
        v32 = v59;
        if (v64 + 1 != v61)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    __break(1u);
  }

  else
  {
LABEL_30:
    sub_254E738E4();
  }
}

void sub_254E705F8()
{
  sub_254E7392C();
  v34 = v0;
  v35 = v1;
  v33 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  sub_254E62124();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_254E73770();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = *(v6 + 16);
  if (v18 == *(v4 + 16) && v18 && v6 != v4)
  {
    v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v20 = v6 + v19;
    v21 = v4 + v19;
    v23 = *(v10 + 16);
    v22 = v10 + 16;
    v24 = (v22 - 8);
    v31 = *(v22 + 56);
    v32 = v23;
    while (1)
    {
      v25 = v32;
      v32(v17, v20, v8);
      if (!v18)
      {
        break;
      }

      v26 = v22;
      v25(v14, v21, v8);
      sub_254E6C198(v33, v34);
      v27 = sub_254E9E25C();
      v28 = *v24;
      (*v24)(v14, v8);
      v28(v17, v8);
      if (v27)
      {
        v21 += v31;
        v20 += v31;
        v29 = v18-- == 1;
        v22 = v26;
        if (!v29)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_254E738E4();
  }
}

uint64_t sub_254E707CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_254E9E5CC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_254E70858(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F646E6977 && a2 == 0xE600000000000000;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463656C65537369 && a2 == 0xEA00000000006465;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000254EA5670 == a2;
      if (v7 || (sub_254E9E5CC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x8000000254EA5690 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_254E9E5CC();

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

uint64_t sub_254E709CC(unsigned __int8 a1)
{
  sub_254E73A88();
  MEMORY[0x259C2B8B0](a1);
  return sub_254E9E63C();
}

unint64_t sub_254E70A0C(char a1)
{
  result = 0x776F646E6977;
  switch(a1)
  {
    case 1:
      result = 0x7463656C65537369;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254E70A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E70858(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E70AC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254E709C4();
  *a1 = result;
  return result;
}

uint64_t sub_254E70AE8(uint64_t a1)
{
  v2 = sub_254E71D0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E70B24(uint64_t a1)
{
  v2 = sub_254E71D0C();

  return MEMORY[0x2821FE720](a1, v2);
}

void OnScreenContent.UIMetadata.encode(to:)()
{
  sub_254E738C4();
  sub_254E6775C(&qword_27F755228);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v1);
  sub_254E73A04();
  sub_254E62CC4();
  sub_254E71D0C();
  sub_254E737C8();
  type metadata accessor for OnScreenContent.UIMetadata.Window(0);
  sub_254E73590();
  sub_254E6C198(v2, v3);
  sub_254E73808();
  sub_254E63680();
  sub_254E9E59C();
  if (!v0)
  {
    type metadata accessor for OnScreenContent.UIMetadata(0);
    sub_254E73814();
    sub_254E73530();
    sub_254E9E57C();
    sub_254E739C0();
    sub_254E73530();
    sub_254E9E57C();
    sub_254E6775C(&qword_27F755240);
    sub_254E71D60(&qword_27F755248, &qword_27F755200);
    sub_254E63680();
    sub_254E9E59C();
  }

  v4 = sub_254E738B4();
  v5(v4);
  sub_254E738FC();
}

uint64_t OnScreenContent.UIMetadata.hash(into:)(uint64_t a1)
{
  OnScreenContent.UIMetadata.Window.hash(into:)();
  type metadata accessor for OnScreenContent.UIMetadata(0);
  sub_254E9E61C();
  sub_254E9E61C();
  sub_254E73698();
  return sub_254E71988(a1, v2, v3, v4, MEMORY[0x277D74708]);
}

uint64_t sub_254E70E0C(void (*a1)(_BYTE *))
{
  sub_254E73A88();
  a1(v3);
  return sub_254E9E63C();
}

void OnScreenContent.UIMetadata.init(from:)()
{
  sub_254E73838();
  v2 = v1;
  v19 = v3;
  type metadata accessor for OnScreenContent.UIMetadata.Window(0);
  sub_254E62148();
  MEMORY[0x28223BE20](v4);
  sub_254E62F5C();
  v7 = v6 - v5;
  sub_254E6775C(&qword_27F755250);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for OnScreenContent.UIMetadata(0);
  sub_254E62148();
  MEMORY[0x28223BE20](v10);
  sub_254E62F5C();
  v13 = v12 - v11;
  v20 = v2;
  sub_254E73820(v2, v2[3]);
  sub_254E71D0C();
  sub_254E9E64C();
  if (v0)
  {
    sub_254E6A780(v2);
  }

  else
  {
    sub_254E73590();
    sub_254E6C198(v14, v15);
    sub_254E73808();
    sub_254E739E0();
    sub_254E9E50C();
    sub_254E736E0();
    sub_254E6C0EC(v7, v13);
    sub_254E73814();
    sub_254E739E0();
    *(v13 + v9[5]) = sub_254E9E4EC() & 1;
    sub_254E739C0();
    sub_254E739E0();
    *(v13 + v9[6]) = sub_254E9E4EC() & 1;
    sub_254E6775C(&qword_27F755240);
    sub_254E71D60(&qword_27F755260, &qword_27F755218);
    sub_254E739E0();
    sub_254E9E50C();
    v16 = v9[7];
    v17 = sub_254E73874();
    v18(v17);
    *(v13 + v16) = v21;
    sub_254E736B0();
    sub_254E6B660(v13, v19);
    sub_254E6A780(v20);
    sub_254E6C1E0();
  }

  sub_254E62F78();
}

uint64_t sub_254E711D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_254E9E5FC();
  a4(v6);
  return sub_254E9E63C();
}

uint64_t OnScreenContent.init(content:uiMetadata:)()
{
  sub_254E735D8();
  sub_254E6C0EC(v0, v1);
  type metadata accessor for OnScreenContent(0);
  sub_254E73728();
  v2 = sub_254E73914();
  return sub_254E6C0EC(v2, v3);
}

uint64_t sub_254E71260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61646174654D6975 && a2 == 0xEA00000000006174)
  {

    return 1;
  }

  else
  {
    v7 = sub_254E9E5CC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_254E71330(char a1)
{
  sub_254E73A88();
  MEMORY[0x259C2B8B0](a1 & 1);
  return sub_254E9E63C();
}

uint64_t sub_254E71370(char a1)
{
  if (a1)
  {
    return 0x61646174654D6975;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_254E713B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E71260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E713DC(uint64_t a1)
{
  v2 = sub_254E71DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E71418(uint64_t a1)
{
  v2 = sub_254E71DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

void OnScreenContent.encode(to:)()
{
  v2 = sub_254E6775C(&qword_27F755268);
  sub_254E62124();
  v4 = v3;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v5);
  sub_254E737E4();
  sub_254E62CC4();
  sub_254E71DEC();
  sub_254E737C8();
  type metadata accessor for OnScreenContent.Content(0);
  sub_254E73710();
  sub_254E6C198(v6, v7);
  sub_254E73808();
  sub_254E62E4C();
  sub_254E9E59C();
  if (!v0)
  {
    type metadata accessor for OnScreenContent(0);
    sub_254E73814();
    type metadata accessor for OnScreenContent.UIMetadata(0);
    sub_254E736F8();
    sub_254E6C198(v8, v9);
    sub_254E62E4C();
    sub_254E9E59C();
  }

  (*(v4 + 8))(v1, v2);
  sub_254E738FC();
}

void OnScreenContent.init(from:)()
{
  sub_254E73838();
  v5 = v4;
  v19 = v6;
  type metadata accessor for OnScreenContent.UIMetadata(0);
  sub_254E62148();
  MEMORY[0x28223BE20](v7);
  sub_254E62F5C();
  sub_254E739F8();
  type metadata accessor for OnScreenContent.Content(0);
  sub_254E62148();
  MEMORY[0x28223BE20](v8);
  sub_254E62F5C();
  v21 = v10 - v9;
  v22 = sub_254E6775C(&qword_27F755288);
  sub_254E62124();
  v20 = v11;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v12);
  sub_254E73884();
  type metadata accessor for OnScreenContent(0);
  sub_254E62148();
  MEMORY[0x28223BE20](v13);
  sub_254E62F5C();
  sub_254E737E4();
  sub_254E73820(v5, v5[3]);
  sub_254E71DEC();
  sub_254E9E64C();
  if (v0)
  {
    sub_254E6A780(v5);
  }

  else
  {
    sub_254E73710();
    sub_254E6C198(v14, v15);
    sub_254E73808();
    sub_254E73A10();
    sub_254E735D8();
    sub_254E6C0EC(v21, v1);
    sub_254E73814();
    sub_254E736F8();
    sub_254E6C198(v16, v17);
    sub_254E73A10();
    (*(v20 + 8))(v3, v22);
    sub_254E73728();
    sub_254E6C0EC(v2, v1 + v18);
    sub_254E6B660(v1, v19);
    sub_254E6A780(v5);
    sub_254E6C1E0();
  }

  sub_254E62F78();
}

void sub_254E71908(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_254E737B4();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_254E71988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *(a2 + 16);
  result = MEMORY[0x259C2B8B0](v9);
  if (v9)
  {
    v11 = *(a3(0) - 8);
    v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    sub_254E6C198(a4, a5);
    do
    {
      result = sub_254E9E23C();
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_254E71A7C(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x259C2B8D0](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x259C2B8D0](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x259C2B8D0](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x259C2B8D0](*&v9);
}

unint64_t sub_254E71B00()
{
  result = qword_27F755170;
  if (!qword_27F755170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755170);
  }

  return result;
}

unint64_t sub_254E71B54()
{
  result = qword_27F7551B0;
  if (!qword_27F7551B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7551B0);
  }

  return result;
}

uint64_t sub_254E71BC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_254E73A50(a1, a2, a3);
  sub_254E62148();
  v4 = sub_254E62CF4();
  v5(v4);
  return v3;
}

uint64_t sub_254E71C14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_254E73A50(a1, a2, a3);
  sub_254E62148();
  v4 = sub_254E62CF4();
  v5(v4);
  return v3;
}

uint64_t sub_254E71C60(uint64_t a1, uint64_t *a2)
{
  sub_254E6775C(a2);
  sub_254E62148();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_254E71CB8()
{
  result = qword_27F7551F8;
  if (!qword_27F7551F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7551F8);
  }

  return result;
}

unint64_t sub_254E71D0C()
{
  result = qword_27F755230;
  if (!qword_27F755230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755230);
  }

  return result;
}

uint64_t sub_254E71D60(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_254E67858(&qword_27F755240);
    sub_254E62BA4();
    sub_254E6C198(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_254E71DEC()
{
  result = qword_27F755270;
  if (!qword_27F755270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755270);
  }

  return result;
}

uint64_t sub_254E71EF8()
{
  result = type metadata accessor for OnScreenContent.Content(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OnScreenContent.UIMetadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_254E71F84()
{
  result = type metadata accessor for OnScreenContent.Document(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OnScreenContent.Image(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_254E72020()
{
  sub_254E72568(319, &qword_280C409D8, MEMORY[0x277D74498], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_254E72568(319, &qword_280C409C0, MEMORY[0x277D74698], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_254E72568(319, &qword_280C40A10, MEMORY[0x277D728B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_254E72568(319, &qword_280C3FDD8, MEMORY[0x277D85578], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_254E721C4()
{
  sub_254E72568(319, &qword_280C409D0, MEMORY[0x277D74538], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_254E72568(319, &qword_280C40A10, MEMORY[0x277D728B0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254E722D8()
{
  type metadata accessor for OnScreenContent.UIMetadata.Window(319);
  if (v0 <= 0x3F)
  {
    sub_254E72568(319, &qword_280C3FE70, MEMORY[0x277D74708], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254E723C4()
{
  sub_254E72568(319, &qword_280C409E8, type metadata accessor for CGRect, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_254E72518();
    if (v1 <= 0x3F)
    {
      sub_254E72568(319, &qword_280C409B8, MEMORY[0x277D74708], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_254E72568(319, &qword_280C409B0, MEMORY[0x277D74748], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_254E72518()
{
  if (!qword_280C409F8)
  {
    v0 = sub_254E9E38C();
    if (!v1)
    {
      atomic_store(v0, &qword_280C409F8);
    }
  }
}

void sub_254E72568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for OnScreenContent.UIMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for OnScreenContent.UIMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OnScreenContent.Image.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DetectedAppEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_254E728B4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_254E73980(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElementContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_254E72A14(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          result = sub_254E73980(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254E72B08(unsigned __int8 *a1, int a2)
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

  return sub_254E620A0(a1);
}

_BYTE *sub_254E72B54(_BYTE *result, int a2, int a3)
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

unint64_t sub_254E72C04()
{
  result = qword_27F7552A8;
  if (!qword_27F7552A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7552A8);
  }

  return result;
}

unint64_t sub_254E72C5C()
{
  result = qword_27F7552B0;
  if (!qword_27F7552B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7552B0);
  }

  return result;
}

unint64_t sub_254E72CB4()
{
  result = qword_27F7552B8;
  if (!qword_27F7552B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7552B8);
  }

  return result;
}

unint64_t sub_254E72D0C()
{
  result = qword_27F7552C0;
  if (!qword_27F7552C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7552C0);
  }

  return result;
}

unint64_t sub_254E72D64()
{
  result = qword_27F7552C8;
  if (!qword_27F7552C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7552C8);
  }

  return result;
}

unint64_t sub_254E72DBC()
{
  result = qword_27F7552D0;
  if (!qword_27F7552D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7552D0);
  }

  return result;
}

unint64_t sub_254E72E14()
{
  result = qword_27F7552D8;
  if (!qword_27F7552D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7552D8);
  }

  return result;
}

unint64_t sub_254E72E6C()
{
  result = qword_27F7552E0;
  if (!qword_27F7552E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7552E0);
  }

  return result;
}

unint64_t sub_254E72EC4()
{
  result = qword_27F7552E8;
  if (!qword_27F7552E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7552E8);
  }

  return result;
}

unint64_t sub_254E72F1C()
{
  result = qword_27F7552F0;
  if (!qword_27F7552F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7552F0);
  }

  return result;
}

unint64_t sub_254E72F74()
{
  result = qword_27F7552F8;
  if (!qword_27F7552F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7552F8);
  }

  return result;
}

unint64_t sub_254E72FCC()
{
  result = qword_27F755300;
  if (!qword_27F755300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755300);
  }

  return result;
}

unint64_t sub_254E73024()
{
  result = qword_27F755308;
  if (!qword_27F755308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755308);
  }

  return result;
}

unint64_t sub_254E7307C()
{
  result = qword_27F755310;
  if (!qword_27F755310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755310);
  }

  return result;
}

unint64_t sub_254E730D4()
{
  result = qword_27F755318;
  if (!qword_27F755318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755318);
  }

  return result;
}

unint64_t sub_254E7312C()
{
  result = qword_27F755320;
  if (!qword_27F755320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755320);
  }

  return result;
}

unint64_t sub_254E73184()
{
  result = qword_27F755328;
  if (!qword_27F755328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755328);
  }

  return result;
}

unint64_t sub_254E731DC()
{
  result = qword_27F755330;
  if (!qword_27F755330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755330);
  }

  return result;
}

unint64_t sub_254E73234()
{
  result = qword_27F755338;
  if (!qword_27F755338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755338);
  }

  return result;
}

unint64_t sub_254E7328C()
{
  result = qword_27F755340;
  if (!qword_27F755340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755340);
  }

  return result;
}

unint64_t sub_254E732E4()
{
  result = qword_27F755348;
  if (!qword_27F755348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755348);
  }

  return result;
}

unint64_t sub_254E7333C()
{
  result = qword_27F755350;
  if (!qword_27F755350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755350);
  }

  return result;
}

unint64_t sub_254E73394()
{
  result = qword_27F755358;
  if (!qword_27F755358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755358);
  }

  return result;
}

unint64_t sub_254E733EC()
{
  result = qword_27F755360;
  if (!qword_27F755360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755360);
  }

  return result;
}

uint64_t sub_254E73440(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_254E737C8()
{

  return sub_254E9E65C();
}

uint64_t sub_254E7395C()
{

  return sub_254E9E48C();
}

uint64_t sub_254E73A10()
{

  return sub_254E9E50C();
}

uint64_t sub_254E73A30()
{

  return sub_254E9E50C();
}

uint64_t sub_254E73A50(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_254E6775C(a3);
}

uint64_t sub_254E73A70()
{

  return sub_254E9E61C();
}

uint64_t sub_254E73A88()
{

  return sub_254E9E5FC();
}

uint64_t sub_254E73AA0()
{

  return sub_254E9E61C();
}

uint64_t static OnScreenContent.EntityFormat.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      v12 = sub_254E76B40();
      sub_254E642D0(v12, v13);
      sub_254E642D0(v2, 0);
      sub_254E6FD40();
      v9 = v14;
      sub_254E642E4(v2, 0);
      v10 = sub_254E76B40();
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      v6 = sub_254E76B4C();
      sub_254E642D0(v6, v7);
      sub_254E642D0(v2, 1u);
      sub_254E74680();
      v9 = v8;
      sub_254E642E4(v2, 1u);
      v10 = sub_254E76B4C();
LABEL_7:
      sub_254E642E4(v10, v11);
      return v9 & 1;
    }

    goto LABEL_12;
  }

  if (v5 != 2 || v4 != 0)
  {
LABEL_12:
    sub_254E642D0(*a2, *(a2 + 8));
    sub_254E642D0(v2, v3);
    sub_254E642E4(v2, v3);
    sub_254E642E4(v4, v5);
    return 0;
  }

  sub_254E642E4(*a1, 2u);
  sub_254E642E4(0, 2u);
  return 1;
}

void sub_254E73BDC()
{
  sub_254E7392C();
  v1 = v0;
  v3 = v2;
  v188 = sub_254E9DE0C();
  sub_254E62124();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_254E73770();
  v186 = (v7 - v8);
  sub_254E76BD8();
  MEMORY[0x28223BE20](v9);
  v187 = &v159 - v10;
  sub_254E76BD8();
  MEMORY[0x28223BE20](v11);
  v172 = &v159 - v12;
  v13 = sub_254E9E0DC();
  sub_254E62124();
  v182 = v14;
  MEMORY[0x28223BE20](v15);
  sub_254E73770();
  v180 = (v16 - v17);
  sub_254E76BD8();
  MEMORY[0x28223BE20](v18);
  if (v3 == v1 || *(v3 + 16) != v1[2])
  {
    goto LABEL_90;
  }

  v20 = 0;
  v21 = *(v3 + 56);
  v160 = v3 + 56;
  v22 = 1 << *(v3 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v159 = (v22 + 63) >> 6;
  v25 = v5;
  v26 = v1 + 7;
  v185 = v25 + 16;
  v163 = v25 + 32;
  v167 = v25;
  v184 = (v25 + 8);
  v178 = v182 + 16;
  v176 = (v182 + 8);
  v169 = v1;
  v162 = v3;
  v171 = v13;
  v181 = &v159 - v19;
  v168 = v1 + 7;
  while (1)
  {
LABEL_7:
    if (v24)
    {
      v27 = __clz(__rbit64(v24));
      v28 = (v24 - 1) & v24;
    }

    else
    {
      v29 = v20;
      do
      {
        v20 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_94;
        }

        if (v20 >= v159)
        {
          goto LABEL_90;
        }

        ++v29;
      }

      while (!*(v160 + 8 * v20));
      sub_254E76ABC();
      v28 = v31 & v30;
    }

    v32 = *(v3 + 48) + 16 * (v27 | (v20 << 6));
    v33 = *v32;
    v34 = *(v32 + 8);
    sub_254E9E5FC();
    v174 = v34;
    v165 = v20;
    v164 = v28;
    if (v34)
    {
      if (v34 == 1)
      {
        MEMORY[0x259C2B8B0](3);

        sub_254E75F7C();
        v35 = v13;
        goto LABEL_24;
      }

      MEMORY[0x259C2B8B0](v33 != 0);
      goto LABEL_23;
    }

    MEMORY[0x259C2B8B0](2);
    v36 = *(v33 + 16);
    MEMORY[0x259C2B8B0](v36);
    if (!v36)
    {
      v43 = sub_254E76BA8();
      sub_254E642D0(v43, v44);
LABEL_23:
      v35 = v171;
      goto LABEL_24;
    }

    v37 = v182;
    v38 = v33 + ((*(v182 + 80) + 32) & ~*(v182 + 80));
    v39 = sub_254E76BA8();
    sub_254E642D0(v39, v40);
    v41 = *(v37 + 72);
    sub_254E62BBC();
    sub_254E76A5C(&qword_280C409A8, v42);
    v35 = v171;
    do
    {
      sub_254E9E23C();
      v38 += v41;
      --v36;
    }

    while (v36);
LABEL_24:
    v20 = &v190;
    v45 = sub_254E9E63C();
    v46 = -1 << *(v1 + 32);
    v47 = v45 & ~v46;
    v13 = v35;
    v48 = v181;
    v3 = v174;
    if (((*(v26 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
    {
LABEL_89:
      v157 = sub_254E76BB4();
      sub_254E642E4(v157, v158);
LABEL_90:
      sub_254E738E4();
      return;
    }

    v179 = ~v46;
    v49 = v174 == 2;
    v50 = v33 == 1 && v174 == 2;
    v173 = v50;
    if (v33)
    {
      v49 = 0;
    }

    v170 = v49;
    v183 = v33 + 56;
    v189 = v33;
    while (1)
    {
      v51 = v1[6] + 16 * v47;
      v52 = *v51;
      v53 = *(v51 + 8);
      if (v53)
      {
        break;
      }

      if (v3)
      {
        v83 = sub_254E76BB4();
        sub_254E642D0(v83, v84);
        v85 = sub_254E76ACC();
        sub_254E642D0(v85, v86);
        v87 = sub_254E76ACC();
LABEL_69:
        sub_254E642E4(v87, v88);
        v20 = v3;
        goto LABEL_70;
      }

      v95 = *(v52 + 16);
      if (v95 == *(v33 + 16))
      {
        if (v95)
        {
          if (v52 != v33)
          {
            v96 = (*(v182 + 80) + 32) & ~*(v182 + 80);
            v177 = v52 + v96;
            v175 = v33 + v96;
            v97 = sub_254E76ACC();
            sub_254E642D0(v97, v98);
            v99 = sub_254E76BA8();
            sub_254E642D0(v99, v100);
            v101 = sub_254E76ACC();
            sub_254E642D0(v101, v102);
            v103 = 0;
            while (1)
            {
              if (v103 >= *(v52 + 16))
              {
                __break(1u);
LABEL_92:
                __break(1u);
                goto LABEL_93;
              }

              v104 = v52;
              v105 = *(v182 + 72) * v103;
              v106 = *(v182 + 16);
              v106(v48, v177 + v105, v13);
              if (v103 >= *(v189 + 16))
              {
                goto LABEL_92;
              }

              v107 = v175 + v105;
              v108 = v180;
              v106(v180, v107, v13);
              sub_254E62BBC();
              sub_254E76A5C(&qword_280C409A0, v109);
              v20 = sub_254E9E25C();
              v110 = v48;
              v1 = v176;
              v111 = *v176;
              (*v176)(v108, v13);
              v111(v110, v13);
              if ((v20 & 1) == 0)
              {
                break;
              }

              ++v103;
              v48 = v181;
              v52 = v104;
              if (v95 == v103)
              {
                v3 = v189;
                v134 = sub_254E76B40();
                sub_254E642E4(v134, v135);
                v136 = sub_254E76ACC();
                sub_254E642E4(v136, v137);
                v138 = sub_254E76ACC();
                sub_254E642E4(v138, v139);
                v140 = sub_254E76B40();
                sub_254E642E4(v140, v141);
                sub_254E76C84();
                sub_254E63694();
                v26 = v168;
                goto LABEL_84;
              }
            }

            v130 = sub_254E76B40();
            sub_254E642E4(v130, v131);
            v132 = sub_254E76B40();
            sub_254E642E4(v132, v133);
            v20 = 0;
            sub_254E76C84();
LABEL_76:
            v48 = v181;
            v26 = v168;
            v33 = v189;
            v3 = v174;
            goto LABEL_70;
          }

          v154 = v33;
        }

        else
        {
        }

        sub_254E642E4(v154, 0);
        v155 = sub_254E76BA8();
        sub_254E642E4(v155, v156);
        sub_254E63694();
LABEL_78:
        v24 = v164;
        goto LABEL_7;
      }

      v120 = sub_254E76BA8();
      sub_254E642D0(v120, v121);
      v122 = sub_254E76ACC();
      sub_254E642D0(v122, v123);
      v124 = sub_254E76ACC();
      sub_254E642E4(v124, v125);
      v20 = 0;
      v3 = v174;
LABEL_70:
      sub_254E642E4(v33, v20);
      v47 = (v47 + 1) & v179;
      if (((*(v26 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    if (v53 == 1)
    {
      break;
    }

    if (v52)
    {
      if (v173)
      {
        sub_254E642E4(1, 2u);
        v150 = 1;
        goto LABEL_82;
      }

      v89 = sub_254E76BB4();
      sub_254E642D0(v89, v90);
      v87 = 1;
      goto LABEL_68;
    }

    if (!v170)
    {
      v112 = sub_254E76BB4();
      sub_254E642D0(v112, v113);
      v87 = 0;
LABEL_68:
      v88 = 2;
      goto LABEL_69;
    }

    sub_254E642E4(0, 2u);
    v150 = 0;
LABEL_82:
    v153 = 2;
LABEL_83:
    sub_254E642E4(v150, v153);
    sub_254E63694();
LABEL_84:
    v24 = v164;
  }

  if (v3 != 1)
  {
    v91 = sub_254E76BB4();
    sub_254E642D0(v91, v92);
    v93 = sub_254E76AD8();
    sub_254E642D0(v93, v94);
    v87 = sub_254E76AD8();
    goto LABEL_69;
  }

  if (v52 == v33)
  {

    v151 = sub_254E76C08();
    sub_254E642E4(v151, v152);
    v150 = sub_254E76C08();
    goto LABEL_83;
  }

  if (*(v52 + 16) != *(v33 + 16))
  {
    v20 = 1;
    v114 = sub_254E76C08();
    sub_254E642D0(v114, v115);
    v116 = sub_254E76AD8();
    sub_254E642D0(v116, v117);
    v118 = sub_254E76AD8();
    sub_254E642E4(v118, v119);
    goto LABEL_70;
  }

  v54 = *(v52 + 56);
  v161 = v52 + 56;
  v55 = 1 << *(v52 + 32);
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  else
  {
    v56 = -1;
  }

  v20 = v56 & v54;
  v57 = sub_254E76AD8();
  sub_254E642D0(v57, v58);
  v59 = sub_254E76C08();
  sub_254E642D0(v59, v60);
  v61 = sub_254E76AD8();
  sub_254E642D0(v61, v62);
  v63 = 0;
  v64 = (v55 + 63) >> 6;
  v65 = v167;
  v175 = v64;
  v166 = v52;
  if (v20)
  {
    while (2)
    {
      v66 = __clz(__rbit64(v20));
      v177 = (v20 - 1) & v20;
LABEL_46:
      v1 = *(v65 + 72);
      v70 = *(v65 + 16);
      v71 = v172;
      v72 = v188;
      v70(v172, *(v52 + 48) + v1 * (v66 | (v63 << 6)), v188);
      (*(v65 + 32))(v187, v71, v72);
      v73 = v189;
      sub_254E62AA4();
      sub_254E76A5C(&qword_27F755468, v74);
      v75 = sub_254E9E22C();
      v76 = ~(-1 << *(v73 + 32));
      do
      {
        v77 = v75 & v76;
        if (((*(v183 + (((v75 & v76) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v75 & v76)) & 1) == 0)
        {
          v20 = 1;
          v126 = sub_254E76B4C();
          sub_254E642E4(v126, v127);
          (*v184)(v187, v188);
          v128 = sub_254E76B4C();
          sub_254E642E4(v128, v129);
          sub_254E76C84();
          v13 = v171;
          goto LABEL_76;
        }

        v78 = v188;
        v79 = v186;
        v70(v186, *(v189 + 48) + v77 * v1, v188);
        sub_254E62AA4();
        sub_254E76A5C(&qword_27F755470, v80);
        v81 = sub_254E9E25C();
        v82 = *v184;
        (*v184)(v79, v78);
        v75 = v77 + 1;
      }

      while ((v81 & 1) == 0);
      v82(v187, v188);
      v65 = v167;
      v13 = v171;
      v52 = v166;
      v64 = v175;
      v20 = v177;
      if (v177)
      {
        continue;
      }

      break;
    }
  }

  v67 = v63;
  while (1)
  {
    v63 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v63 >= v64)
    {
      v3 = v189;
      v142 = sub_254E76B4C();
      sub_254E642E4(v142, v143);
      v144 = sub_254E76AD8();
      sub_254E642E4(v144, v145);
      v146 = sub_254E76AD8();
      sub_254E642E4(v146, v147);
      v148 = sub_254E76B4C();
      sub_254E642E4(v148, v149);
      sub_254E76C84();
      sub_254E63694();
      v26 = v168;
      goto LABEL_78;
    }

    ++v67;
    if (*(v161 + 8 * v63))
    {
      sub_254E76ABC();
      v177 = v69 & v68;
      goto LABEL_46;
    }
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
}

void sub_254E74680()
{
  sub_254E7392C();
  v4 = v3;
  v6 = v5;
  sub_254E9DE0C();
  sub_254E62124();
  MEMORY[0x28223BE20](v7);
  sub_254E73770();
  MEMORY[0x28223BE20](v8);
  v30[11] = v30 - v9;
  sub_254E76BD8();
  MEMORY[0x28223BE20](v10);
  sub_254E76C48();
  if (v11 || *(v6 + 16) != *(v4 + 16))
  {
LABEL_17:
    sub_254E738E4();
  }

  else
  {
    sub_254E62164();
    if (v13)
    {
      while (2)
      {
        sub_254E76B90();
LABEL_10:
        v17 = sub_254E62F90();
        v2(v17);
        v18 = sub_254E76B74();
        v19(v18);
        v20 = *(v4 + 40);
        sub_254E62AA4();
        sub_254E76A5C(&qword_27F755468, v21);
        sub_254E76C90();
        sub_254E76C5C();
        do
        {
          sub_254E76B58();
          if ((v22 & 1) == 0)
          {
            v28 = sub_254E76C28();
            v29(v28);
            goto LABEL_17;
          }

          v23 = sub_254E76B24();
          v2(v23);
          sub_254E62AA4();
          sub_254E76A5C(&qword_27F755470, v24);
          sub_254E76BE4();
          v25 = sub_254E76C14();
          v0(v25);
        }

        while ((v20 & 1) == 0);
        v26 = sub_254E76C28();
        v0(v26);
        sub_254E76BC0();
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v14 = v1;
    while (1)
    {
      v1 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v1 >= v12)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v30[1] + 8 * v1))
      {
        sub_254E76ABC();
        v30[6] = v16 & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}