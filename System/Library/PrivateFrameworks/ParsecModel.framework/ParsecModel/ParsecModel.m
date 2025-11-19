id sub_25DF7F1E4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0(a1) other];
  *v1 = result;
  return result;
}

id sub_25DF7F228(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0(a1) querySuggestion];
  *v1 = result;
  return result;
}

id sub_25DF7F2B4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0(a1) parsecAppStore];
  *v1 = result;
  return result;
}

id sub_25DF7F2F8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0(a1) parsecMaps];
  *v1 = result;
  return result;
}

id sub_25DF7F33C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0(a1) parsecNews];
  *v1 = result;
  return result;
}

id sub_25DF7F380(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0(a1) parsecOther];
  *v1 = result;
  return result;
}

id sub_25DF7F3C4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0(a1) parsecStocks];
  *v1 = result;
  return result;
}

id sub_25DF7F408(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0(a1) parsecWeather];
  *v1 = result;
  return result;
}

id sub_25DF7F44C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0(a1) parsecWeb];
  *v1 = result;
  return result;
}

id sub_25DF7F490(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_0(a1) parsecWiki];
  *v1 = result;
  return result;
}

uint64_t sub_25DF7F77C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25DF7F794()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id static PAREntity.createRequest()()
{
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCD3D00, &unk_25DF83620);
  (*(v0 + 16))(v1, v0);
  return sub_25DF7F880();
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

id static PAREntity.createGenericRequest()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_25DF83034();

  v4 = [v2 initWithEntityName_];

  return v4;
}

uint64_t sub_25DF7FA14@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PAREvent();
  result = sub_25DF83084();
  *a1 = result;
  return result;
}

id sub_25DF7FA54@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_25DF7FB8C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 clientIntVal];
  *a2 = result;
  return result;
}

id sub_25DF7FBD4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 invokedDays];
  *a2 = result;
  return result;
}

id sub_25DF7FC1C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 zkwEngagedDays];
  *a2 = result;
  return result;
}

id sub_25DF7FC64@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 searchedDays];
  *a2 = result;
  return result;
}

id sub_25DF7FCAC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 suggestionOrAppleResultEngagedDays];
  *a2 = result;
  return result;
}

id sub_25DF7FCF4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 webEngagedDays];
  *a2 = result;
  return result;
}

id sub_25DF7FD3C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 voiceSearchDays];
  *a2 = result;
  return result;
}

id sub_25DF7FD84@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 numSearchEngagements];
  *a2 = result;
  return result;
}

id sub_25DF7FDCC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 activeDays];
  *a2 = result;
  return result;
}

id sub_25DF80028@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 client];
  *a2 = result;
  return result;
}

id sub_25DF80070@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 go];
  *a2 = result;
  return result;
}

id sub_25DF800B8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSuggestion];
  *a2 = result;
  return result;
}

id sub_25DF80100@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isTopHit];
  *a2 = result;
  return result;
}

id sub_25DF80148@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 tap];
  *a2 = result;
  return result;
}

uint64_t sub_25DF8024C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PARSessionEngagementsByTrigger();
  result = sub_25DF83084();
  *a1 = result;
  return result;
}

id sub_25DF80360@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 image];
  *a2 = result;
  return result;
}

id sub_25DF803A8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 recentResult];
  *a2 = result;
  return result;
}

id sub_25DF803F0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 zkw];
  *a2 = result;
  return result;
}

uint64_t sub_25DF804E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PARImagesPropensity();
  result = sub_25DF83084();
  *a1 = result;
  return result;
}

id sub_25DF805B0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 goToSite];
  *a2 = result;
  return result;
}

id sub_25DF805F8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 localGoto];
  *a2 = result;
  return result;
}

id sub_25DF80640@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 localTap];
  *a2 = result;
  return result;
}

id sub_25DF80688@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 parsecGoto];
  *a2 = result;
  return result;
}

id sub_25DF806D0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 parsecTap];
  *a2 = result;
  return result;
}

id sub_25DF80718@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 thirdPartyCompletionOrRecentSearch];
  *a2 = result;
  return result;
}

id sub_25DF80760@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 thirdPartyGoto];
  *a2 = result;
  return result;
}

id sub_25DF807A8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 thirdPartyTap];
  *a2 = result;
  return result;
}

uint64_t sub_25DF8089C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PARSafariPropensity();
  result = sub_25DF83084();
  *a1 = result;
  return result;
}

id sub_25DF80A1C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 appLaunch];
  *a2 = result;
  return result;
}

id sub_25DF80A64@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 onDeviceAddressBookData];
  *a2 = result;
  return result;
}

id sub_25DF80AAC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 onDeviceOtherPersonalData];
  *a2 = result;
  return result;
}

id sub_25DF80AF4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 parsec];
  *a2 = result;
  return result;
}

id sub_25DF80B3C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 punchout];
  *a2 = result;
  return result;
}

id sub_25DF80B84@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 siriSuggestions];
  *a2 = result;
  return result;
}

id sub_25DF80BCC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 thirdPartyInAppContent];
  *a2 = result;
  return result;
}

uint64_t sub_25DF80C14(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_0(a1) timestamp];
  if (v1)
  {
    v2 = v1;
    sub_25DF83014();
  }

  sub_25DF83024();
  v3 = OUTLINED_FUNCTION_4();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void sub_25DF80C84()
{
  OUTLINED_FUNCTION_3();
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCD3D70, &qword_25DF83A48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v8 - v3;
  sub_25DF813A8(v1, &v8 - v3);
  v5 = *v0;
  v6 = sub_25DF83024();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) != 1)
  {
    v7 = sub_25DF83004();
    (*(*(v6 - 8) + 8))(v4, v6);
  }

  [v5 setTimestamp_];
}

id sub_25DF80D84@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 webSuggestions];
  *a2 = result;
  return result;
}

id _s11ParsecModel13PARFlushEventC6entity10insertIntoACSo19NSEntityDescriptionC_So22NSManagedObjectContextCSgtcfC_0()
{
  OUTLINED_FUNCTION_3();
  v3 = [objc_allocWithZone(v1) initWithEntity:v2 insertIntoManagedObjectContext:v0];

  return v3;
}

id sub_25DF80E54()
{
  OUTLINED_FUNCTION_3();
  v6.receiver = v1;
  v6.super_class = v3();
  v4 = objc_msgSendSuper2(&v6, sel_initWithEntity_insertIntoManagedObjectContext_, v2, v0);

  return v4;
}

id sub_25DF80F38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_25DF80F84@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PARSpotlightPropensity();
  result = sub_25DF83084();
  *a1 = result;
  return result;
}

uint64_t sub_25DF81104()
{
  v1 = [*v0 timestamp];
  if (v1)
  {
    v2 = v1;
    sub_25DF83014();
  }

  sub_25DF83024();
  v3 = OUTLINED_FUNCTION_4();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_25DF813A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCD3D70, &qword_25DF83A48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_25DF81468()
{
  v1 = sub_25DF83034();

  v2 = [v0 initWithEntityName_];

  return v2;
}

ParsecModel::PMEntityProperty_optional __swiftcall PMEntityProperty.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25DF830B4();

  v5 = 0;
  v6 = 26;
  switch(v3)
  {
    case 0:
      goto LABEL_44;
    case 1:
      v5 = 1;
      goto LABEL_44;
    case 2:
      v5 = 2;
      goto LABEL_44;
    case 3:
      v5 = 3;
      goto LABEL_44;
    case 4:
      v5 = 4;
      goto LABEL_44;
    case 5:
      v5 = 5;
      goto LABEL_44;
    case 6:
      v5 = 6;
      goto LABEL_44;
    case 7:
      v5 = 7;
      goto LABEL_44;
    case 8:
      v5 = 8;
      goto LABEL_44;
    case 9:
      v5 = 9;
      goto LABEL_44;
    case 10:
      v5 = 10;
      goto LABEL_44;
    case 11:
      v5 = 11;
      goto LABEL_44;
    case 12:
      v5 = 12;
      goto LABEL_44;
    case 13:
      v5 = 13;
      goto LABEL_44;
    case 14:
      v5 = 14;
      goto LABEL_44;
    case 15:
      v5 = 15;
      goto LABEL_44;
    case 16:
      v5 = 16;
      goto LABEL_44;
    case 17:
      v5 = 17;
      goto LABEL_44;
    case 18:
      v5 = 18;
      goto LABEL_44;
    case 19:
      v5 = 19;
      goto LABEL_44;
    case 20:
      v5 = 20;
      goto LABEL_44;
    case 21:
      v5 = 21;
      goto LABEL_44;
    case 22:
      v5 = 22;
      goto LABEL_44;
    case 23:
      v5 = 23;
      goto LABEL_44;
    case 24:
      v5 = 24;
      goto LABEL_44;
    case 25:
      v5 = 25;
LABEL_44:
      v6 = v5;
      break;
    case 26:
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    default:
      v6 = 44;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t PMEntityProperty.rawValue.getter()
{
  result = 0x636E75614C707061;
  switch(*v0)
  {
    case 1:
      result = 0x746E65696C63;
      break;
    case 2:
      result = 0x6E49746E65696C63;
      break;
    case 3:
      result = 28519;
      break;
    case 4:
      result = 0x657469536F546F67;
      break;
    case 5:
      result = 0x6567616D69;
      break;
    case 6:
      result = 0x4464656B6F766E69;
      break;
    case 7:
      result = 0x7365676775537369;
      break;
    case 8:
      result = 0x746948706F547369;
      break;
    case 9:
      result = 0x746F476C61636F6CLL;
      break;
    case 0xA:
      result = 0x7061546C61636F6CLL;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0xD000000000000019;
      break;
    case 0xE:
      result = 0x726568746FLL;
      break;
    case 0xF:
      result = 0x636573726170;
      break;
    case 0x10:
      result = 0x7041636573726170;
      break;
    case 0x11:
      result = 0x6F47636573726170;
      break;
    case 0x12:
      result = 0x614D636573726170;
      break;
    case 0x13:
      result = 0x654E636573726170;
      break;
    case 0x14:
      result = 0x744F636573726170;
      break;
    case 0x15:
      result = 0x7453636573726170;
      break;
    case 0x16:
      result = 0x6154636573726170;
      break;
    case 0x17:
      result = 0x6557636573726170;
      break;
    case 0x18:
      result = 0x6557636573726170;
      break;
    case 0x19:
      result = 0x6957636573726170;
      break;
    case 0x1A:
      result = 0x74756F68636E7570;
      break;
    case 0x1B:
      result = 0x6775537972657571;
      break;
    case 0x1C:
      result = 0x6552746E65636572;
      break;
    case 0x1D:
      result = 0x6465686372616573;
      break;
    case 0x1E:
      result = 0x6767755369726973;
      break;
    case 0x1F:
      result = 0xD000000000000022;
      break;
    case 0x20:
      result = 7364980;
      break;
    case 0x21:
      result = 0xD000000000000022;
      break;
    case 0x22:
    case 0x24:
      result = 0x7261506472696874;
      break;
    case 0x23:
      result = 0xD000000000000016;
      break;
    case 0x25:
      result = 0x6D617473656D6974;
      break;
    case 0x26:
      result = 1701869940;
      break;
    case 0x27:
      result = 0x6165536563696F76;
      break;
    case 0x28:
      v2 = 1164076407;
      goto LABEL_14;
    case 0x29:
      result = 0x6567677553626577;
      break;
    case 0x2A:
      result = 7826298;
      break;
    case 0x2B:
      v2 = 1165454202;
LABEL_14:
      result = v2 | 0x6761676E00000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25DF81C78(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_25DF81C84();
}

uint64_t sub_25DF81C84()
{
  v0 = PMEntityProperty.rawValue.getter();
  v2 = v1;
  if (v0 == PMEntityProperty.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25DF830A4();
  }

  return v5 & 1;
}

uint64_t sub_25DF81D24@<X0>(uint64_t *a1@<X8>)
{
  result = PMEntityProperty.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_25DF81D50()
{
  result = qword_27FCD3DE0;
  if (!qword_27FCD3DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCD3DE0);
  }

  return result;
}

uint64_t sub_25DF81DC0()
{
  PMEntityProperty.rawValue.getter();
  sub_25DF83054();
}

unint64_t sub_25DF81E2C()
{
  result = qword_27FCD3DE8;
  if (!qword_27FCD3DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCD3DF0, &qword_25DF83B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCD3DE8);
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

uint64_t sub_25DF81ED8()
{
  sub_25DF830C4();
  PMEntityProperty.rawValue.getter();
  sub_25DF83054();

  return sub_25DF830D4();
}

uint64_t getEnumTagSinglePayload for PMEntityProperty(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD5)
  {
    if (a2 + 43 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 43) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 44;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2C;
  v5 = v6 - 44;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PMEntityProperty(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 43 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 43) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD4)
  {
    v6 = ((a2 - 213) >> 8) + 1;
    *result = a2 + 43;
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
          *result = a2 + 43;
        }

        break;
    }
  }

  return result;
}

void *static PARUsageEventMigration.tracker.getter()
{
  swift_beginAccess();
  v0 = off_27FCD3DF8;
  sub_25DF7F77C(off_27FCD3DF8);
  return v0;
}

uint64_t static PARUsageEventMigration.tracker.setter(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = off_27FCD3DF8;
  off_27FCD3DF8 = a1;
  qword_27FCD3E00 = a2;
  return sub_25DF82544(v4);
}

uint64_t sub_25DF82544(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25DF825B0@<X0>(uint64_t (**a1)(unsigned __int8 *a1)@<X8>)
{
  swift_beginAccess();
  v2 = off_27FCD3DF8;
  v3 = qword_27FCD3E00;
  if (off_27FCD3DF8)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_25DF82F80;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  return sub_25DF7F77C(v2);
}

uint64_t sub_25DF82648(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_25DF82F48;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  swift_beginAccess();
  v5 = off_27FCD3DF8;
  off_27FCD3DF8 = v4;
  qword_27FCD3E00 = v3;
  sub_25DF7F77C(v1);
  return sub_25DF82544(v5);
}

id sub_25DF82704(void *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = sub_25DF82D78(a2);
  if (!v8)
  {
    goto LABEL_19;
  }

  if (v7 == 0x6567617355524150 && v8 == 0xED0000746E657645)
  {
  }

  else
  {
    v10 = sub_25DF830A4();

    if ((v10 & 1) == 0)
    {
LABEL_19:
      *&v37 = 0;
      v34.receiver = v3;
      v34.super_class = type metadata accessor for PARUsageEventMigration();
      v26 = objc_msgSendSuper2(&v34, sel_createDestinationInstancesForSourceInstance_entityMapping_manager_error_, a1, a2, a3, &v37);
      v27 = v37;
      if (v26)
      {
        swift_beginAccess();
        v28 = off_27FCD3DF8;
        if (off_27FCD3DF8)
        {
          v29 = v27;
          sub_25DF7F77C(v28);
          v28(0);
          result = sub_25DF82544(v28);
        }

        else
        {
          result = v27;
        }
      }

      else
      {
        v31 = v37;
        sub_25DF82FF4();

        result = swift_willThrow();
      }

      goto LABEL_26;
    }
  }

  v11 = sub_25DF83034();
  v12 = [a1 valueForKey_];

  if (v12)
  {
    sub_25DF83074();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (!*(&v36 + 1))
  {
    sub_25DF82E00(&v37);
    goto LABEL_19;
  }

  sub_25DF82EBC(0, &qword_27FCD3E10, 0x277D82BB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_1_0();
  v13 = sub_25DF83034();
  v14 = [v33 &selRef:v13 setLocalTap:?];

  if (!v14)
  {

    goto LABEL_19;
  }

  sub_25DF83074();
  swift_unknownObjectRelease();
  sub_25DF82E68(&v35, &v37);
  v15 = objc_opt_self();
  v16 = sub_25DF83034();
  v17 = [a3 destinationContext];
  v18 = [v15 insertNewObjectForEntityForName:v16 inManagedObjectContext:v17];

  v19 = sub_25DF83034();
  v20 = [a1 valueForKey_];

  v21 = sub_25DF83034();
  [v18 setValue:v20 forKey:v21];
  swift_unknownObjectRelease();

  __swift_project_boxed_opaque_existential_0(&v37, *(&v38 + 1));
  sub_25DF83094();
  OUTLINED_FUNCTION_1_0();
  v22 = sub_25DF83034();
  OUTLINED_FUNCTION_0_0(v22);
  swift_unknownObjectRelease();

  sub_25DF82EBC(0, &qword_27FCD3E18, 0x277CCABB0);
  v23 = sub_25DF83064();
  v24 = sub_25DF83034();
  OUTLINED_FUNCTION_0_0(v24);

  [a3 associateSourceInstance:a1 withDestinationInstance:v18 forEntityMapping:a2];
  swift_beginAccess();
  v25 = off_27FCD3DF8;
  if (off_27FCD3DF8)
  {

    v25(1);

    sub_25DF82544(v25);
  }

  else
  {

    v18 = v33;
  }

  result = __swift_destroy_boxed_opaque_existential_0(&v37);
LABEL_26:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

id PARUsageEventMigration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PARUsageEventMigration.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PARUsageEventMigration();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PARUsageEventMigration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PARUsageEventMigration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25DF82D78(void *a1)
{
  v1 = [a1 destinationEntityName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_25DF83044();

  return v3;
}

uint64_t sub_25DF82E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCD3E08, &unk_25DF83D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_25DF82E68(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25DF82EBC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
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

uint64_t sub_25DF82F48(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_25DF82F80(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

id OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return [v2 (v3 + 3192)];
}