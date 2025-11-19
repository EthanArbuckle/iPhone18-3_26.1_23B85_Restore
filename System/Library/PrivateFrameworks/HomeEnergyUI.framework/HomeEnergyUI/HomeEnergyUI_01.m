uint64_t HEUIFAnalyticsEvent.deinit()
{
  memcpy(v2, (v0 + 24), 0x129uLL);
  sub_20D7E3B2C(v2);
  return v0;
}

uint64_t HEUIFAnalyticsEvent.__deallocating_deinit()
{
  memcpy(v2, (v0 + 24), 0x129uLL);
  sub_20D7E3B2C(v2);
  return swift_deallocClassInstance();
}

uint64_t HEUIFAnalyticsEventType.description.getter()
{
  v14 = *v0;
  v1 = HEUIFAnalyticsEventType.rawValue.getter();
  v3 = sub_20D7E5BB0(4, v1, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = MEMORY[0x20F323300](v3, v5, v7, v9);
  v12 = v11;

  MEMORY[0x20F323340](v10, v12);

  return 0x6C7070612E6D6F63;
}

unint64_t HEUIFAnalyticsEventType.rawValue.getter()
{
  result = 0xD000000000000023;
  switch(*v0)
  {
    case 1:
    case 6:
    case 0x1C:
      result = 0xD000000000000025;
      break;
    case 2:
    case 0x15:
      result = 0xD000000000000026;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
    case 0x17:
      result = 0xD000000000000022;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
    case 0x12:
    case 0x20:
    case 0x23:
      result = 0xD000000000000024;
      break;
    case 0xA:
    case 0xB:
    case 0xE:
    case 0x16:
    case 0x19:
      result = 0xD00000000000002BLL;
      break;
    case 0xC:
      result = 0xD000000000000034;
      break;
    case 0xD:
      result = 0xD00000000000002ELL;
      break;
    case 0xF:
      result = 0xD000000000000032;
      break;
    case 0x10:
      result = 0xD00000000000002FLL;
      break;
    case 0x11:
      result = 0xD00000000000002ALL;
      break;
    case 0x13:
    case 0x1A:
    case 0x1D:
    case 0x21:
    case 0x24:
      result = 0xD000000000000027;
      break;
    case 0x18:
      result = 0xD000000000000028;
      break;
    default:
      return result;
  }

  return result;
}

HomeEnergyUI::HEUIFAnalyticsEventType_optional __swiftcall HEUIFAnalyticsEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20D9757D8();

  v5 = 0;
  v6 = 19;
  switch(v3)
  {
    case 0:
      goto LABEL_33;
    case 1:
      v5 = 1;
      goto LABEL_33;
    case 2:
      v5 = 2;
      goto LABEL_33;
    case 3:
      v5 = 3;
      goto LABEL_33;
    case 4:
      v5 = 4;
      goto LABEL_33;
    case 5:
      v5 = 5;
      goto LABEL_33;
    case 6:
      v5 = 6;
      goto LABEL_33;
    case 7:
      v5 = 7;
      goto LABEL_33;
    case 8:
      v5 = 8;
      goto LABEL_33;
    case 9:
      v5 = 9;
      goto LABEL_33;
    case 10:
      v5 = 10;
      goto LABEL_33;
    case 11:
      v5 = 11;
      goto LABEL_33;
    case 12:
      v5 = 12;
      goto LABEL_33;
    case 13:
      v5 = 13;
      goto LABEL_33;
    case 14:
      v5 = 14;
      goto LABEL_33;
    case 15:
      v5 = 15;
      goto LABEL_33;
    case 16:
      v5 = 16;
      goto LABEL_33;
    case 17:
      v5 = 17;
      goto LABEL_33;
    case 18:
      v5 = 18;
LABEL_33:
      v6 = v5;
      break;
    case 19:
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
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
    default:
      v6 = 37;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20D7E4D58(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = HEUIFAnalyticsEventType.rawValue.getter();
  v4 = v3;
  if (v2 == HEUIFAnalyticsEventType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_20D9757C8();
  }

  return v7 & 1;
}

uint64_t sub_20D7E4DF4()
{
  v1 = *v0;
  sub_20D975888();
  HEUIFAnalyticsEventType.rawValue.getter();
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D7E4E5C()
{
  v2 = *v0;
  HEUIFAnalyticsEventType.rawValue.getter();
  sub_20D975158();
}

uint64_t sub_20D7E4EC0()
{
  v1 = *v0;
  sub_20D975888();
  HEUIFAnalyticsEventType.rawValue.getter();
  sub_20D975158();

  return sub_20D9758A8();
}

unint64_t sub_20D7E4F30@<X0>(unint64_t *a1@<X8>)
{
  result = HEUIFAnalyticsEventType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20D7E4F58()
{
  v14 = *v0;
  v1 = HEUIFAnalyticsEventType.rawValue.getter();
  v3 = sub_20D7E5BB0(4, v1, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = MEMORY[0x20F323300](v3, v5, v7, v9);
  v12 = v11;

  MEMORY[0x20F323340](v10, v12);

  return 0x6C7070612E6D6F63;
}

uint64_t HEUIFAnalyticsEventData.viewDuration.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t HEUIFAnalyticsEventData.viewDuration.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.sourceViewController.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t HEUIFAnalyticsEventData.sourceViewController.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.presentingViewController.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t HEUIFAnalyticsEventData.presentingViewController.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.gridID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t HEUIFAnalyticsEventData.gridID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t HEUIFAnalyticsEventData.adviceText.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t HEUIFAnalyticsEventData.adviceText.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.energyViewEntryPoint.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t HEUIFAnalyticsEventData.energyViewEntryPoint.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t HEUIFAnalyticsEventData.gridForecastGeneratedAt.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t HEUIFAnalyticsEventData.gridForecastGeneratedAt.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.gridForecastState.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t HEUIFAnalyticsEventData.gridForecastState.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.gridForecastEducationTipViewState.getter()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t HEUIFAnalyticsEventData.gridForecastEducationTipViewState.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.utilityId.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t HEUIFAnalyticsEventData.utilityId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t HEUIFAnalyticsEventData.utilityOnboardingError.getter()
{
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  return result;
}

uint64_t HEUIFAnalyticsEventData.utilityOnboardingError.setter(uint64_t result, char a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.numOfUtilities.getter()
{
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

uint64_t HEUIFAnalyticsEventData.numOfUtilities.setter(uint64_t result, char a2)
{
  *(v2 + 176) = result;
  *(v2 + 184) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.numOfOtpMethods.getter()
{
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

uint64_t HEUIFAnalyticsEventData.numOfOtpMethods.setter(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.otpMethod.getter()
{
  result = *(v0 + 208);
  v2 = *(v0 + 216);
  return result;
}

uint64_t HEUIFAnalyticsEventData.otpMethod.setter(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.utilityOnboardingMethod.getter()
{
  result = *(v0 + 224);
  v2 = *(v0 + 232);
  return result;
}

uint64_t HEUIFAnalyticsEventData.utilityOnboardingMethod.setter(uint64_t result, char a2)
{
  *(v2 + 224) = result;
  *(v2 + 232) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.historicalUsageInterval.getter()
{
  result = *(v0 + 240);
  v2 = *(v0 + 248);
  return result;
}

uint64_t HEUIFAnalyticsEventData.historicalUsageInterval.setter(uint64_t result, char a2)
{
  *(v2 + 240) = result;
  *(v2 + 248) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.historicalUsageTOUPricing.getter()
{
  result = *(v0 + 256);
  v2 = *(v0 + 264);
  return result;
}

uint64_t HEUIFAnalyticsEventData.historicalUsageTOUPricing.setter(uint64_t result, char a2)
{
  *(v2 + 256) = result;
  *(v2 + 264) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.historicalUsageStatus.getter()
{
  result = *(v0 + 272);
  v2 = *(v0 + 280);
  return result;
}

uint64_t HEUIFAnalyticsEventData.historicalUsageStatus.setter(uint64_t result, char a2)
{
  *(v2 + 272) = result;
  *(v2 + 280) = a2 & 1;
  return result;
}

uint64_t HEUIFAnalyticsEventData.utilityRatePlan.getter()
{
  result = *(v0 + 288);
  v2 = *(v0 + 296);
  return result;
}

uint64_t HEUIFAnalyticsEventData.utilityRatePlan.setter(uint64_t result, char a2)
{
  *(v2 + 288) = result;
  *(v2 + 296) = a2 & 1;
  return result;
}

unint64_t sub_20D7E5AC0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20D7E5C60(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t UtilityOnboardingMethodAnalyticKey.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_20D7E5B08()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  return sub_20D9758A8();
}

uint64_t sub_20D7E5B50()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  return sub_20D9758A8();
}

uint64_t *sub_20D7E5B94@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_20D7E5BB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_20D975178();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

unint64_t sub_20D7E5C60(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_20D7E5C74()
{
  result = qword_27C838A28;
  if (!qword_27C838A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838A28);
  }

  return result;
}

unint64_t sub_20D7E5CCC()
{
  result = qword_27C838A30;
  if (!qword_27C838A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838A30);
  }

  return result;
}

unint64_t sub_20D7E5D24()
{
  result = qword_27C838A38;
  if (!qword_27C838A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838A38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HEUIFAnalyticsEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HEUIFAnalyticsEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20D7E5F20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 297))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_20D7E5F7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 297) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 297) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_20D7E6050(uint64_t a1)
{
  v1 = *(a1 + 56);
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

uint64_t sub_20D7E60AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A20, &qword_20D9768E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20D7E6174()
{
  sub_20D7EB128(319, &qword_281126EC8, type metadata accessor for FeaturedInterval, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20D7E62AC();
    if (v1 <= 0x3F)
    {
      sub_20D7E6310();
      if (v2 <= 0x3F)
      {
        sub_20D972628();
        if (v3 <= 0x3F)
        {
          sub_20D7E6360();
          if (v4 <= 0x3F)
          {
            sub_20D7E63C4();
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

unint64_t sub_20D7E62AC()
{
  result = qword_2811272D0[0];
  if (!qword_2811272D0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2811272D0);
  }

  return result;
}

void sub_20D7E6310()
{
  if (!qword_2811262F8[0])
  {
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, qword_2811262F8);
    }
  }
}

void sub_20D7E6360()
{
  if (!qword_281124B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838A48, &qword_20D976D90);
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, &qword_281124B80);
    }
  }
}

void sub_20D7E63C4()
{
  if (!qword_281127048)
  {
    sub_20D7E6420();
    v0 = sub_20D973B88();
    if (!v1)
    {
      atomic_store(v0, &qword_281127048);
    }
  }
}

unint64_t sub_20D7E6420()
{
  result = qword_281126ED8;
  if (!qword_281126ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126ED8);
  }

  return result;
}

uint64_t sub_20D7E6490()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A50, &qword_20D976DE8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v42[-v3];
  v0[*(type metadata accessor for BasicEnergyForecastView(0) + 36)];
  *v4 = sub_20D974168();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A58, &qword_20D976DF0);
  sub_20D7E6748(v0, &v4[*(v5 + 44)]);
  v6 = sub_20D974328();
  sub_20D973AD8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A60, &qword_20D976DF8) + 36)];
  *v15 = v6;
  *(v15 + 1) = v8;
  *(v15 + 2) = v10;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v15[40] = 0;
  v16 = sub_20D974338();
  sub_20D973AD8();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A68, &qword_20D976E00) + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = sub_20D974348();
  sub_20D973AD8();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A70, &qword_20D976E08) + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = sub_20D974C48();
  v38 = v37;
  v39 = &v4[*(v1 + 36)];
  sub_20D974C08();
  *&v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A78, &unk_20D976E10) + 56)] = 256;
  v40 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A80, &qword_20D97B670) + 36)];
  *v40 = v36;
  v40[1] = v38;
  v43 = v0;
  sub_20D7E6DDC();
  sub_20D7E702C();
  sub_20D974728();
  return sub_20D7E3944(v4, &qword_27C838A50, &qword_20D976DE8);
}

uint64_t sub_20D7E6748@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A90, &qword_20D976E28);
  v4 = *(v3 - 8);
  v54 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v55 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v9 = &v47[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A98, &qword_20D976E30);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v53 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v47[-v15];
  sub_20D7E7080((a1 + 8), &v47[-v15]);
  v48 = a1[48];
  v17 = type metadata accessor for BasicEnergyForecastView(0);
  v18 = v17[7];
  v51 = v18;
  v19 = type metadata accessor for BasicUsageAdviceView(0);
  v20 = v19[6];
  v50 = sub_20D972628();
  v21 = *(v50 - 8);
  v49 = *(v21 + 16);
  v52 = v21 + 16;
  v49(&v16[v20], &a1[v18], v50);
  v22 = v17[8];
  Strong = swift_unknownObjectWeakLoadStrong();
  v24 = a1[v17[9]];
  LOBYTE(v18) = a1[v17[10]];
  v25 = &a1[v17[13]];
  v26 = *v25;
  v27 = v25[1];
  v16[40] = v48;
  v28 = v19[7];
  swift_unknownObjectWeakInit();
  sub_20D7DD75C(v26);

  v16[v19[8]] = v24;
  v16[v19[9]] = v18;
  v29 = &v16[v19[10]];
  *v29 = v26;
  v29[1] = v27;
  LOBYTE(Strong) = sub_20D974338();
  sub_20D973AD8();
  v30 = &v16[*(v11 + 44)];
  *v30 = Strong;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = *a1;
  v36 = type metadata accessor for EnergyForecastChart();
  v49(v9 + v36[5], &a1[v51], v50);
  *(v9 + v36[9]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  swift_storeEnumTagMultiPayload();
  *(v9 + v36[10]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA8, &qword_20D976EA0);
  swift_storeEnumTagMultiPayload();
  *v9 = v35;
  *(v9 + v36[6]) = 12;
  *(v9 + v36[7]) = 0;
  *(v9 + v36[8]) = 0x4010000000000000;

  LOBYTE(a1) = sub_20D974348();
  sub_20D973AD8();
  v37 = v53;
  v38 = v9 + *(v54 + 44);
  *v38 = a1;
  *(v38 + 1) = v39;
  *(v38 + 2) = v40;
  *(v38 + 3) = v41;
  *(v38 + 4) = v42;
  v38[40] = 0;
  sub_20D7EB7E8(v16, v37, &qword_27C838A98, &qword_20D976E30);
  v43 = v55;
  sub_20D7EB7E8(v9, v55, &qword_27C838A90, &qword_20D976E28);
  v44 = v56;
  sub_20D7EB7E8(v37, v56, &qword_27C838A98, &qword_20D976E30);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AB0, &qword_20D976EA8);
  sub_20D7EB7E8(v43, v44 + *(v45 + 48), &qword_27C838A90, &qword_20D976E28);
  sub_20D7E3944(v9, &qword_27C838A90, &qword_20D976E28);
  sub_20D7E3944(v16, &qword_27C838A98, &qword_20D976E30);
  sub_20D7E3944(v43, &qword_27C838A90, &qword_20D976E28);
  return sub_20D7E3944(v37, &qword_27C838A98, &qword_20D976E30);
}

uint64_t sub_20D7E6B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((a1 + 8), v4);
  v6 = (*(v5 + 72))(v4, v5);
  LOBYTE(v4) = *(a1 + 48);
  sub_20D7E7080(a1 + 8, a2 + 8);
  v7 = type metadata accessor for BasicEnergyForecastView(0);
  v8 = *(a1 + v7[11]);
  v14 = *(a1 + v7[14]);
  v15 = *(a1 + v7[15]);
  v16 = *(a1 + v7[12]);
  *a2 = v6 & 1;
  *(a2 + 1) = v4 & 1;
  *(a2 + 48) = v8;
  *(a2 + 64) = v14;
  *(a2 + 80) = v15;
  *(a2 + 96) = v16;
  sub_20D7DD75C(v8);
  sub_20D7DD75C(v14);
  sub_20D7DD75C(v15);
  sub_20D7DD75C(v16);
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  *(a2 + 112) = sub_20D971FF8();
  *(a2 + 120) = v9;
  *(a2 + 128) = sub_20D971FF8();
  *(a2 + 136) = v10;
  *(a2 + 144) = sub_20D971FF8();
  *(a2 + 152) = v11;
  result = sub_20D971FF8();
  *(a2 + 160) = result;
  *(a2 + 168) = v13;
  return result;
}

unint64_t sub_20D7E6DDC()
{
  result = qword_281124E58;
  if (!qword_281124E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838A50, &qword_20D976DE8);
    sub_20D7E6EF0(&qword_281124E78, &qword_27C838A70, &qword_20D976E08, sub_20D7E6EC0);
    sub_20D7EBC4C(&qword_281124E38, &qword_27C838A80, &qword_20D97B670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E58);
  }

  return result;
}

uint64_t sub_20D7E6EF0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D7E6F74()
{
  result = qword_281124F38;
  if (!qword_281124F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838A60, &qword_20D976DF8);
    sub_20D7EBC4C(&qword_281124D48, &qword_27C838A88, &qword_20D976E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F38);
  }

  return result;
}

unint64_t sub_20D7E702C()
{
  result = qword_281126AB0;
  if (!qword_281126AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126AB0);
  }

  return result;
}

uint64_t sub_20D7E7080(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_20D7E70E4(uint64_t a1)
{
  v33[0] = a1;
  v1 = sub_20D9721C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D973CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TapToRadarDraft();
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v15[v12[13]];
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB8, &unk_20D9771F0) + 36);
  v18 = sub_20D972628();
  (*(*(v18 - 8) + 56))(&v16[v17], 1, 1, v18);
  *v16 = 0x7349664F656D6954;
  *(v16 + 1) = 0xEB00000000657573;
  *v15 = 0x4449656C646E7542;
  *(v15 + 1) = 0xE800000000000000;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 2) = xmmword_20D976CF0;
  *(v15 + 3) = xmmword_20D976D00;
  *(v15 + 4) = xmmword_20D976D10;
  *(v15 + 10) = 0xEE006E6F69746163;
  v15[88] = 10;
  *(v15 + 12) = 0x6375646F72706552;
  *(v15 + 13) = 0xEF7974696C696269;
  v15[112] = 6;
  *(v15 + 15) = 0x656C746954;
  *(v15 + 16) = 0xE500000000000000;
  *(v15 + 17) = 0;
  *(v15 + 18) = 0;
  *(v15 + 19) = 0x7470697263736544;
  *(v15 + 20) = 0xEB000000006E6F69;
  *(v15 + 21) = 0;
  *(v15 + 22) = 0;
  *(v15 + 23) = 0x7364726F7779654BLL;
  *(v15 + 24) = 0xE800000000000000;
  v19 = MEMORY[0x277D84F90];
  *(v15 + 25) = MEMORY[0x277D84F90];
  v20 = &v15[v12[14]];
  *v20 = 0x656D686361747441;
  *(v20 + 1) = 0xEB0000000073746ELL;
  *(v20 + 2) = v19;
  v21 = &v15[v12[15]];
  *v21 = 0xD000000000000011;
  *(v21 + 1) = 0x800000020D982F20;
  *(v21 + 2) = v19;
  v22 = &v15[v12[16]];
  *v22 = 0xD000000000000014;
  *(v22 + 1) = 0x800000020D982F40;
  *(v22 + 2) = v19;
  v23 = &v15[v12[17]];
  strcpy(v23, "DeleteOnAttach");
  v23[15] = -18;
  v23[16] = 0;
  v24 = &v15[v12[18]];
  *v24 = 0x4449656369766544;
  *(v24 + 1) = 0xE900000000000073;
  *(v24 + 2) = v19;
  v25 = &v15[v12[19]];
  strcpy(v25, "DeviceClasses");
  *(v25 + 7) = -4864;
  *(v25 + 2) = v19;
  v26 = &v15[v12[20]];
  strcpy(v26, "DeviceModels");
  v26[13] = 0;
  *(v26 + 7) = -5120;
  *(v26 + 2) = v19;
  v27 = &v15[v12[21]];
  *v27 = 0xD000000000000016;
  *(v27 + 1) = 0x800000020D982F60;
  *(v27 + 2) = 0;
  v28 = &v15[v12[22]];
  *v28 = 0xD00000000000001ALL;
  *(v28 + 1) = 0x800000020D982F80;
  v28[16] = 0;
  v29 = &v15[v12[23]];
  *v29 = 0x676169446F747541;
  *(v29 + 1) = 0xEF73636974736F6ELL;
  v29[16] = 0;
  v30 = &v15[v12[24]];
  *v30 = 0xD00000000000001BLL;
  *(v30 + 1) = 0x800000020D982FA0;
  *(v30 + 2) = v19;
  v31 = &v15[v12[25]];
  *v31 = 0xD000000000000018;
  *(v31 + 1) = 0x800000020D982FC0;
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v15 + 136) = xmmword_20D976D20;
  *(v15 + 25) = &unk_282497030;
  sub_20D9082A4(v10);
  sub_20D8D8124(v5);
  sub_20D973C98();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  return sub_20D7EBBF0(v15);
}

uint64_t sub_20D7E777C@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B98, &qword_20D9771D8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (v22 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B80, &qword_20D9771D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - v7;
  v9 = sub_20D9749B8();
  v10 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
  v12 = *MEMORY[0x277CE1050];
  v13 = sub_20D9749F8();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  *v4 = v9;
  v14 = sub_20D974398();
  KeyPath = swift_getKeyPath();
  v16 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BA8, &unk_20D9771E0) + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = [objc_opt_self() secondaryLabelColor];
  v18 = sub_20D974888();
  v19 = swift_getKeyPath();
  v20 = (v4 + *(v1 + 36));
  *v20 = v19;
  v20[1] = v18;
  sub_20D7EB1C4(&qword_27C838B90, &qword_27C838B98, &qword_20D9771D8, sub_20D7EBA74);
  sub_20D9747D8();
  sub_20D7E3944(v4, &qword_27C838B98, &qword_20D9771D8);
  strcpy(v23, "Tap to Radar");
  HIBYTE(v23[6]) = 0;
  v23[7] = -5120;
  sub_20D7E1EF8();
  sub_20D973D88();
  return sub_20D7E3944(v8, &qword_27C838B80, &qword_20D9771D0);
}

uint64_t sub_20D7E7A50(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_20D7EB894(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_20D7EB8F8(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B80, &qword_20D9771D0);
  sub_20D7EB9BC();
  return sub_20D974A88();
}

uint64_t sub_20D7E7B84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B48, &qword_20D977120);
  v3 = *(*(v26 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v26);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v25 = &v22 - v7;
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 8), v8);
  v10 = (*(v9 + 72))(v8, v9);
  v24 = v6;
  if ((v10 & 1) != 0 && *(v1 + 48) != 2)
  {
    v11 = &selRef_secondaryLabelColor;
  }

  else
  {
    v11 = &selRef_quaternaryLabelColor;
  }

  v12 = [objc_opt_self() *v11];
  *v2;
  *v2;
  v13 = sub_20D9749B8();
  v14 = sub_20D974398();
  KeyPath = swift_getKeyPath();
  v23 = v12;
  v16 = sub_20D974888();
  v17 = swift_getKeyPath();
  v28 = v13;
  v29 = KeyPath;
  v30 = v14;
  v31 = v17;
  v32 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B50, &qword_20D977188);
  sub_20D7EB1C4(&qword_281126FC0, &qword_27C838B50, &qword_20D977188, sub_20D7EB274);
  v18 = v24;
  sub_20D9747D8();

  if (qword_281126530 != -1)
  {
    swift_once();
  }

  v28 = qword_28112ABC8;
  v29 = unk_28112ABD0;
  sub_20D7E1EF8();
  v19 = v25;
  sub_20D973D88();
  sub_20D7E3944(v18, &qword_27C838B48, &qword_20D977120);
  sub_20D7EB32C(v2, &v28);
  v20 = swift_allocObject();
  sub_20D7EAEE0(&v28, v20 + 16);
  sub_20D7EB36C();
  sub_20D974748();

  return sub_20D7E3944(v19, &qword_27C838B48, &qword_20D977120);
}

uint64_t sub_20D7E7EF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22[-v4];
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v6 = sub_20D9734F8();
  __swift_project_value_buffer(v6, qword_28112AC18);
  v7 = sub_20D9734D8();
  v8 = sub_20D975448();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20D7C9000, v7, v8, "BasicEnergyForecastView Glyph tapped...", v9, 2u);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((a1 + 8), v10);
  result = (*(v11 + 72))(v10, v11);
  if ((result & 1) != 0 && *(a1 + 48) != 2)
  {
    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = *(a1 + 64);

      v13(v15);

      return sub_20D7DD774(v13);
    }

    else if (*a1 == 1)
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      __swift_project_boxed_opaque_existential_1Tm((a1 + 8), v16);
      return (*(v17 + 88))(v16, v17);
    }

    else
    {
      v18 = sub_20D975318();
      (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
      sub_20D7EB32C(a1, v22);
      sub_20D9752E8();
      v19 = sub_20D9752D8();
      v20 = swift_allocObject();
      v21 = MEMORY[0x277D85700];
      *(v20 + 16) = v19;
      *(v20 + 24) = v21;
      sub_20D7EAEE0(v22, v20 + 32);
      sub_20D82D02C(0, 0, v5, &unk_20D9771B8, v20);
    }
  }

  return result;
}

uint64_t sub_20D7E81B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  sub_20D9752E8();
  v4[22] = sub_20D9752D8();
  v6 = sub_20D975298();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x2822009F8](sub_20D7E824C, v6, v5);
}

uint64_t sub_20D7E824C()
{
  v1 = [objc_opt_self() currentNotificationCenter];
  v0[25] = v1;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_20D7E838C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B70, &unk_20D9771C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20D7E8B24;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20D7E838C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20D7E8494, v2, v1);
}

uint64_t sub_20D7E8494()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 160);
  if ([v2 authorizationStatus] == 2)
  {
    if (qword_27C8383A0 != -1)
    {
      swift_once();
    }

    if (qword_27C838398 != -1)
    {
      swift_once();
    }

    if (qword_27C8383A8 != -1)
    {
      swift_once();
    }

    v3 = qword_27C840C20;
    v4 = *algn_27C840C28;
    sub_20D7E7080(*(v0 + 168) + 8, v0 + 80);
    v5 = swift_allocObject();
    sub_20D7EB734((v0 + 80), v5 + 16);
    v6 = sub_20D975078();
    v7 = sub_20D975078();
    v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v4;
    v9[4] = sub_20D7EB74C;
    v9[5] = v5;

    v10 = sub_20D975078();
    *(v0 + 112) = sub_20D7EBC98;
    *(v0 + 120) = v9;
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20D92B6D0;
    *(v0 + 104) = &block_descriptor_71;
    v11 = _Block_copy((v0 + 80));
    v12 = *(v0 + 120);

    v13 = objc_opt_self();
    v14 = [v13 actionWithTitle:v10 style:0 handler:v11];
    _Block_release(v11);

    [v8 addAction_];
    [v8 setPreferredAction_];
    if (qword_27C8383C8 == -1)
    {
      goto LABEL_17;
    }

LABEL_22:
    swift_once();
    goto LABEL_17;
  }

  if (qword_27C8383B0 != -1)
  {
    swift_once();
  }

  if (qword_27C8383B8 != -1)
  {
    swift_once();
  }

  if (qword_27C8383C0 != -1)
  {
    swift_once();
  }

  v15 = qword_27C840C50;
  v16 = *algn_27C840C58;
  sub_20D7EB32C(*(v0 + 168), v0 + 80);
  v17 = swift_allocObject();
  sub_20D7EAEE0(v0 + 80, v17 + 16);
  v18 = sub_20D975078();
  v19 = sub_20D975078();
  v8 = [objc_opt_self() alertControllerWithTitle:v18 message:v19 preferredStyle:1];

  v20 = swift_allocObject();
  v20[2] = v15;
  v20[3] = v16;
  v20[4] = sub_20D7EB6F8;
  v20[5] = v17;

  v21 = sub_20D975078();
  *(v0 + 112) = sub_20D7EB710;
  *(v0 + 120) = v20;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20D92B6D0;
  *(v0 + 104) = &block_descriptor_61;
  v22 = _Block_copy((v0 + 80));
  v23 = *(v0 + 120);

  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v21 style:0 handler:v22];
  _Block_release(v22);

  [v8 addAction_];
  [v8 setPreferredAction_];
  if (qword_27C8383C8 != -1)
  {
    goto LABEL_22;
  }

LABEL_17:
  v24 = *(v0 + 168);
  v25 = sub_20D975078();
  v26 = [v13 actionWithTitle:v25 style:1 handler:0];

  [v8 addAction_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    [Strong presentViewController:v8 animated:1 completion:0];
  }

  v29 = *(v0 + 200);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_20D7E8B24(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

id sub_20D7E8B88()
{
  v0 = sub_20D9721C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  sub_20D9721B8();
  sub_20D7EB7E8(v11, v9, &qword_27C838B78, &qword_20D97A5A0);
  if ((*(v1 + 48))(v9, 1, v0) == 1)
  {
    sub_20D7E3944(v11, &qword_27C838B78, &qword_20D97A5A0);
    return sub_20D7E3944(v9, &qword_27C838B78, &qword_20D97A5A0);
  }

  (*(v1 + 32))(v4, v9, v0);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v13 = result;
    v14 = sub_20D972198();
    sub_20D8D6720(MEMORY[0x277D84F90]);
    v15 = sub_20D974F38();

    [v13 openSensitiveURL:v14 withOptions:v15];

    (*(v1 + 8))(v4, v0);
    v9 = v11;
    return sub_20D7E3944(v9, &qword_27C838B78, &qword_20D97A5A0);
  }

  __break(1u);
  return result;
}

void sub_20D7E8E10(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v7 = sub_20D9734F8();
  __swift_project_value_buffer(v7, qword_28112AC18);

  v8 = sub_20D9734D8();
  v9 = sub_20D975448();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_20D7F4DC8(a2, a3, &v12);
    _os_log_impl(&dword_20D7C9000, v8, v9, "alert %s tapped...", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  if (a4)
  {
    a4();
  }
}

uint64_t sub_20D7E8F78()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_27C840C00 = result;
  *algn_27C840C08 = v1;
  return result;
}

uint64_t sub_20D7E9024()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_27C840C10 = result;
  *algn_27C840C18 = v1;
  return result;
}

uint64_t sub_20D7E90D0()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_27C840C20 = result;
  *algn_27C840C28 = v1;
  return result;
}

uint64_t sub_20D7E9178()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_27C840C30 = result;
  *algn_27C840C38 = v1;
  return result;
}

uint64_t sub_20D7E9224()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_27C840C40 = result;
  *algn_27C840C48 = v1;
  return result;
}

uint64_t sub_20D7E92D0()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_27C840C50 = result;
  *algn_27C840C58 = v1;
  return result;
}

uint64_t sub_20D7E9380()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_27C840C60 = result;
  *algn_27C840C68 = v1;
  return result;
}

uint64_t sub_20D7E9420()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_28112ABC8 = result;
  unk_28112ABD0 = v1;
  return result;
}

uint64_t sub_20D7E94D0()
{
  v1 = v0;
  v2 = sub_20D9740E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v68[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20D974458();
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = *(v76 + 64);
  MEMORY[0x28223BE20](v6);
  v75 = &v68[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for BasicUsageAdviceView(0);
  v10 = *(v0 + *(v9 + 32));
  if (v10 == 1)
  {
    v11 = sub_20D7EAB84();
    v13 = v12;
    v80 = v14;
    v79 = v15;
  }

  else
  {
    v11 = 0;
    v80 = 0;
    v79 = MEMORY[0x277D84F90];
    v13 = 0xE000000000000000;
  }

  v16 = v0[3];
  v17 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v16);
  (*(v17 + 96))(&v81, v16, v17);
  v18 = MEMORY[0x277CE0A10];
  if (v81 != 12)
  {
    v19 = v0[3];
    v20 = v0[4];
    __swift_project_boxed_opaque_existential_1Tm(v0, v19);
    (*(v20 + 96))(&v81, v19, v20);
    if (v81 != 6 && *(v0 + *(v9 + 36)) != 1)
    {
      goto LABEL_11;
    }
  }

  v21 = v0[3];
  v22 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v21);
  v23 = (*(v22 + 16))(0, v21, v22);
  if (v24)
  {
    v25 = v24;
    v78 = v11;
    v73 = v5;
    v74 = v13;
    v72 = v9;
    if (v10)
    {
      v81 = 0x209380E220;
      v82 = 0xA500000000000000;
      MEMORY[0x20F323340](v23, v24);

      v23 = v81;
      v25 = v82;
    }

    v81 = v23;
    v82 = v25;
    sub_20D7E1EF8();
    v26 = sub_20D9745C8();
    v28 = v27;
    v30 = v29;
    sub_20D974388();
    v31 = *v18;
    v33 = v75;
    v32 = v76;
    v34 = v77;
    (*(v76 + 104))(v75, v31, v77);
    sub_20D974478();

    (*(v32 + 8))(v33, v34);
    v35 = sub_20D974558();
    v37 = v36;
    LOBYTE(v32) = v38;

    sub_20D7EADC0(v26, v28, v30 & 1);

    v39 = v80;
    v40 = v78;
    v41 = v74;
    v42 = sub_20D974528();
    v70 = v43;
    v71 = v42;
    v69 = v44;
    v46 = v45;
    sub_20D7EADC0(v35, v37, v32 & 1);

    sub_20D7EADC0(v40, v41, v39 & 1);

    v13 = v70;
    v11 = v71;
    v80 = v69;
    v9 = v72;
  }

  else
  {
LABEL_11:
    v46 = v79;
  }

  if (*(v1 + *(v9 + 36)) & 1) != 0 || (v47 = v1[3], v48 = v1[4], __swift_project_boxed_opaque_existential_1Tm(v1, v47), ((*(v48 + 32))(v47, v48)))
  {
    sub_20D9740D8();
    sub_20D9740C8();
    sub_20D9749B8();
    sub_20D9740A8();

    sub_20D9740C8();
    sub_20D974108();
    v49 = sub_20D9745A8();
    v51 = v50;
    v53 = v52;
    sub_20D974388();
    v78 = v11;
    v54 = v75;
    v55 = v76;
    v56 = v77;
    (*(v76 + 104))(v75, *MEMORY[0x277CE0A10], v77);
    sub_20D974478();
    v79 = v46;

    (*(v55 + 8))(v54, v56);
    LOBYTE(v56) = v53;
    v57 = v49;
    v58 = sub_20D974558();
    v60 = v59;
    LOBYTE(v49) = v80;
    LOBYTE(v54) = v61;
    v75 = v62;

    sub_20D7EADC0(v57, v51, v56 & 1);

    v63 = v78;
    v64 = sub_20D974528();
    v76 = v65;
    v77 = v64;
    LODWORD(v57) = v66;
    sub_20D7EADC0(v58, v60, v54 & 1);

    sub_20D7EADC0(v63, v13, v49 & 1);

    v11 = v77;
    v80 = v57;
  }

  return v11;
}

uint64_t sub_20D7E9AC8()
{
  v1 = v0;
  v2 = sub_20D9740E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v0[3];
  v5 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v4);
  v6 = type metadata accessor for BasicUsageAdviceView(0);
  (*(v5 + 24))(v0 + *(v6 + 24), v4, v5);
  sub_20D7E1EF8();
  v7 = sub_20D9745C8();
  v9 = v8;
  v11 = v10;
  v12 = v0[3];
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  sub_20D85EDB8(v12, v13);
  if (v14)
  {
    sub_20D9740D8();
    sub_20D9740C8();
    sub_20D9749B8();
    sub_20D9740A8();

    sub_20D9740C8();
    sub_20D974108();
    v15 = sub_20D9745A8();
    v17 = v16;
    v19 = v18;
    v21 = sub_20D974528();
    sub_20D7EADC0(v15, v17, v19 & 1);

    sub_20D7EADC0(v7, v9, v11 & 1);

    return v21;
  }

  return v7;
}

uint64_t sub_20D7E9CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_20D974458();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AC0, &qword_20D976F20);
  v8 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AC8, &qword_20D976F28);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v55 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AD0, &qword_20D976F30);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v53 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - v20;
  *v21 = sub_20D974078();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v51 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AD8, &qword_20D976F38);
  sub_20D7EA220(a1, &v21[*(v22 + 44)]);
  v23 = sub_20D7E9AC8();
  v25 = v24;
  v27 = v26;
  sub_20D974388();
  (*(v4 + 104))(v7, *MEMORY[0x277CE0A10], v3);
  sub_20D974478();

  (*(v4 + 8))(v7, v3);
  v28 = sub_20D974558();
  v30 = v29;
  LOBYTE(v4) = v31;

  sub_20D7EADC0(v23, v25, v27 & 1);

  v32 = [objc_opt_self() secondaryLabelColor];
  sub_20D974888();
  v33 = sub_20D974508();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_20D7EADC0(v28, v30, v4 & 1);

  v40 = &v10[*(v52 + 36)];
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
  v42 = *MEMORY[0x277CE1050];
  v43 = sub_20D9749F8();
  (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
  *v40 = swift_getKeyPath();
  *v10 = v33;
  *(v10 + 1) = v35;
  v10[16] = v37 & 1;
  *(v10 + 3) = v39;
  sub_20D7EBB4C(&qword_281127010, &qword_27C838AC0, &qword_20D976F20);
  v44 = v54;
  sub_20D9747D8();
  sub_20D7E3944(v10, &qword_27C838AC0, &qword_20D976F20);
  v45 = v51;
  v46 = v53;
  sub_20D7EB7E8(v51, v53, &qword_27C838AD0, &qword_20D976F30);
  v47 = v55;
  sub_20D7EB7E8(v44, v55, &qword_27C838AC8, &qword_20D976F28);
  v48 = v56;
  sub_20D7EB7E8(v46, v56, &qword_27C838AD0, &qword_20D976F30);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE8, &qword_20D976F78);
  sub_20D7EB7E8(v47, v48 + *(v49 + 48), &qword_27C838AC8, &qword_20D976F28);
  sub_20D7E3944(v44, &qword_27C838AC8, &qword_20D976F28);
  sub_20D7E3944(v45, &qword_27C838AD0, &qword_20D976F30);
  sub_20D7E3944(v47, &qword_27C838AC8, &qword_20D976F28);
  return sub_20D7E3944(v46, &qword_27C838AD0, &qword_20D976F30);
}

uint64_t sub_20D7EA220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AF0, &qword_20D976F80);
  v101 = *(v3 - 8);
  v102 = v3;
  v4 = *(v101 + 64);
  MEMORY[0x28223BE20](v3);
  v97 = (&v96 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AF8, &qword_20D976F88);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v106 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v105 = &v96 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AC0, &qword_20D976F20);
  v11 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v13 = &v96 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AC8, &qword_20D976F28);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v104 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v96 - v18;
  v103 = a1;
  v20 = sub_20D7E94D0();
  v22 = v21;
  v24 = v23;
  v25 = [objc_opt_self() labelColor];
  sub_20D974888();
  v98 = sub_20D974508();
  v99 = v26;
  v28 = v27;
  v30 = v29;

  sub_20D7EADC0(v20, v22, v24 & 1);

  v31 = &v13[*(v100 + 36)];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
  v33 = *MEMORY[0x277CE1050];
  v34 = sub_20D9749F8();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = swift_getKeyPath();
  *v13 = v98;
  *(v13 + 1) = v28;
  v13[16] = v30 & 1;
  *(v13 + 3) = v99;
  sub_20D7EBB4C(&qword_281127010, &qword_27C838AC0, &qword_20D976F20);
  v35 = v19;
  sub_20D9747D8();
  sub_20D7E3944(v13, &qword_27C838AC0, &qword_20D976F20);
  v36 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v37 = sub_20D975078();
  v38 = [v36 initWithSuiteName_];

  if (v38 && (v39 = sub_20D975078(), v40 = [v38 BOOLForKey_], v38, v39, v40))
  {
    KeyPath = swift_getKeyPath();
    v42 = v97;
    *v97 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B20, &qword_20D976FE0);
    swift_storeEnumTagMultiPayload();
    v43 = sub_20D974328();
    sub_20D973AD8();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B28, &qword_20D976FE8) + 36);
    *v52 = v43;
    *(v52 + 8) = v45;
    *(v52 + 16) = v47;
    *(v52 + 24) = v49;
    *(v52 + 32) = v51;
    *(v52 + 40) = 0;
    v53 = sub_20D974338();
    sub_20D973AD8();
    v54 = v102;
    v55 = v42 + *(v102 + 36);
    *v55 = v53;
    *(v55 + 8) = v56;
    *(v55 + 16) = v57;
    *(v55 + 24) = v58;
    *(v55 + 32) = v59;
    *(v55 + 40) = 0;
    v60 = v105;
    sub_20D7EAF18(v42, v105, &qword_27C838AF0, &qword_20D976F80);
    v61 = v54;
    v62 = 0;
    v63 = v103;
  }

  else
  {
    v62 = 1;
    v60 = v105;
    v61 = v102;
    v63 = v103;
  }

  (*(v101 + 56))(v60, v62, 1, v61);
  v64 = *(v63 + 24);
  v65 = *(v63 + 32);
  __swift_project_boxed_opaque_existential_1Tm(v63, v64);
  if (((*(v65 + 72))(v64, v65) & 1) != 0 && (v66 = *(v63 + 40), v66 != 2))
  {
    sub_20D7E7080(v63, &v114[8]);
    v67 = *(v63 + 40);
    v68 = type metadata accessor for BasicUsageAdviceView(0);
    v69 = (v63 + *(v68 + 40));
    v70 = *v69;
    v71 = v69[1];
    v72 = *(v68 + 28);
    Strong = swift_unknownObjectWeakLoadStrong();
    v114[0] = v66 & 1;
    LOBYTE(v115) = v67;
    *(&v115 + 1) = v70;
    *&v116 = v71;
    swift_unknownObjectWeakInit();
    sub_20D7DD75C(v70);

    LOBYTE(v70) = sub_20D974338();
    sub_20D973AD8();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    sub_20D7EAEE0(v114, v108);
    v108[80] = v70;
    v109 = v75;
    v110 = v77;
    v111 = v79;
    v112 = v81;
    v113 = 0;
    LOBYTE(v70) = sub_20D974368();
    sub_20D973AD8();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    sub_20D7EAF18(v108, v114, &qword_27C838B10, &qword_20D976FA0);
    LOBYTE(v120) = v70;
    *(&v120 + 1) = v83;
    v121[0] = v85;
    v121[1] = v87;
    v121[2] = v89;
    LOBYTE(v121[3]) = 0;
    sub_20D7EAF18(v114, v108, &qword_27C838B18, &qword_20D976FA8);
    sub_20D7EAF18(v108, v114, &qword_27C838B18, &qword_20D976FA8);
  }

  else
  {
    v120 = 0u;
    memset(v121, 0, 25);
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    memset(v114, 0, sizeof(v114));
  }

  v90 = v104;
  sub_20D7EB7E8(v35, v104, &qword_27C838AC8, &qword_20D976F28);
  v91 = v106;
  sub_20D7EB7E8(v60, v106, &qword_27C838AF8, &qword_20D976F88);
  sub_20D7EB7E8(v114, v108, &qword_27C838B00, &qword_20D976F90);
  v92 = v107;
  sub_20D7EB7E8(v90, v107, &qword_27C838AC8, &qword_20D976F28);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B08, &qword_20D976F98);
  v94 = v92 + v93[12];
  *v94 = 0;
  *(v94 + 8) = 1;
  sub_20D7EB7E8(v91, v92 + v93[16], &qword_27C838AF8, &qword_20D976F88);
  sub_20D7EB7E8(v108, v92 + v93[20], &qword_27C838B00, &qword_20D976F90);
  sub_20D7E3944(v114, &qword_27C838B00, &qword_20D976F90);
  sub_20D7E3944(v60, &qword_27C838AF8, &qword_20D976F88);
  sub_20D7E3944(v35, &qword_27C838AC8, &qword_20D976F28);
  sub_20D7E3944(v108, &qword_27C838B00, &qword_20D976F90);
  sub_20D7E3944(v91, &qword_27C838AF8, &qword_20D976F88);
  return sub_20D7E3944(v90, &qword_27C838AC8, &qword_20D976F28);
}

uint64_t sub_20D7EAA4C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20D974168();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AB8, &qword_20D976F18);
  return sub_20D7E9CEC(v1, a1 + *(v3 + 44));
}

uint64_t sub_20D7EAABC(uint64_t a1)
{
  v2 = sub_20D973CA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20D973F78();
}

uint64_t sub_20D7EAB84()
{
  v0 = sub_20D974458();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v13[2] = sub_20D971FF8();
  v13[3] = v5;
  sub_20D7E1EF8();
  v6 = sub_20D9745C8();
  v8 = v7;
  v10 = v9;
  sub_20D974388();
  sub_20D9743A8();

  (*(v1 + 104))(v4, *MEMORY[0x277CE0A10], v0);
  sub_20D974478();

  (*(v1 + 8))(v4, v0);
  v11 = sub_20D974558();

  sub_20D7EADC0(v6, v8, v10 & 1);

  return v11;
}

uint64_t sub_20D7EADC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_20D7EADF8()
{
  sub_20D7E62AC();
  if (v0 <= 0x3F)
  {
    sub_20D7E6310();
    if (v1 <= 0x3F)
    {
      sub_20D972628();
      if (v2 <= 0x3F)
      {
        sub_20D7E6360();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20D7EAF18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20D7EAF98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_20D7EAFE0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_20D7EB08C()
{
  sub_20D7EB128(319, &qword_281125008, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_20D7EB128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20D7EB1C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D7EB274()
{
  result = qword_281126FF0;
  if (!qword_281126FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838B58, &unk_20D977190);
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FF0);
  }

  return result;
}

unint64_t sub_20D7EB36C()
{
  result = qword_281124E90;
  if (!qword_281124E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838B48, &qword_20D977120);
    sub_20D7EB1C4(&qword_281126FC0, &qword_27C838B50, &qword_20D977188, sub_20D7EB274);
    sub_20D7EB424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E90);
  }

  return result;
}

unint64_t sub_20D7EB424()
{
  result = qword_281126F38;
  if (!qword_281126F38)
  {
    sub_20D9742B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126F38);
  }

  return result;
}

uint64_t sub_20D7EB47C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D7EB52C;

  return sub_20D7E81B4(a1, v4, v5, v1 + 32);
}

uint64_t sub_20D7EB52C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20D7EB630(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  if (v0[9])
  {
    v1 = v0[10];
  }

  MEMORY[0x20F324310](v0 + 11);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D7EB734(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20D7EB74C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  return (*(v2 + 80))(v1, v2);
}

uint64_t objectdestroy_57Tm()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D7EB7E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_20D7EB894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7EB8F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7EB95C()
{
  v1 = *(type metadata accessor for TapToRadarButtonView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_20D7E70E4(v2);
}

unint64_t sub_20D7EB9BC()
{
  result = qword_27C838B88;
  if (!qword_27C838B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838B80, &qword_20D9771D0);
    sub_20D7EB1C4(&qword_27C838B90, &qword_27C838B98, &qword_20D9771D8, sub_20D7EBA74);
    sub_20D7EB424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838B88);
  }

  return result;
}

unint64_t sub_20D7EBA74()
{
  result = qword_27C838BA0;
  if (!qword_27C838BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838BA8, &unk_20D9771E0);
    sub_20D7EBB4C(&qword_281126FE8, &qword_27C838BB0, &qword_20D977D40);
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838BA0);
  }

  return result;
}

uint64_t sub_20D7EBB4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_20D7EBC4C(&qword_281126F40, &qword_27C838AE0, &qword_20D976F40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20D7EBBF0(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7EBC4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t EducationSheet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_20D973CD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BD0, &qword_20D977230);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BD8, &qword_20D977238);
  sub_20D7EBC4C(&qword_27C838BE0, &qword_27C838BD8, &qword_20D977238);
  sub_20D9744D8();
  sub_20D973CC8();
  sub_20D7EBC4C(&qword_27C838BE8, &qword_27C838BD0, &qword_20D977230);
  sub_20D974878();
  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_20D7EBEEC@<X0>(uint64_t a1@<X8>)
{
  v208 = a1;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D30, &qword_20D9775C0);
  v1 = *(*(v201 - 8) + 64);
  MEMORY[0x28223BE20](v201);
  v205 = v190 - v2;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D38, &qword_20D9775C8);
  v3 = *(*(v204 - 8) + 64);
  MEMORY[0x28223BE20](v204);
  v193 = v190 - v4;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D40, &qword_20D9775D0);
  v5 = *(*(v203 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v203);
  v192 = v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v202 = v190 - v8;
  v9 = sub_20D9726E8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v210 = v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D975058();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v209 = v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D48, &qword_20D9775D8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v220 = v190 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v228 = v190 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D50, &qword_20D9775E0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v191 = v190 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v229 = v190 - v25;
  MEMORY[0x28223BE20](v24);
  v227 = v190 - v26;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D58, &qword_20D9775E8);
  v27 = *(*(v215 - 8) + 64);
  MEMORY[0x28223BE20](v215);
  v214 = v190 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D60, &qword_20D9775F0);
  v206 = *(v29 - 8);
  v207 = v29;
  v30 = *(v206 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v219 = v190 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v226 = v190 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v218 = v190 - v36;
  MEMORY[0x28223BE20](v35);
  v225 = v190 - v37;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D68, &qword_20D9775F8);
  v221 = *(v212 - 8);
  v38 = *(v221 + 64);
  MEMORY[0x28223BE20](v212);
  v211 = v190 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D70, &qword_20D977600);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v217 = v190 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v224 = v190 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v222 = v190 - v47;
  MEMORY[0x28223BE20](v46);
  v223 = v190 - v48;
  v49 = sub_20D9744B8();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = v190 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D78, &qword_20D977608);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v57 = v190 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D80, &qword_20D977610);
  v59 = v58 - 8;
  v60 = *(*(v58 - 8) + 64);
  v61 = MEMORY[0x28223BE20](v58);
  v216 = v190 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v64 = v190 - v63;
  *&v236 = 0x3FF0000000000000;
  (*(v50 + 104))(v53, *MEMORY[0x277CE0A68], v49);
  sub_20D7E6420();
  sub_20D973B68();
  *&v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D88, &qword_20D977618) + 36)] = 256;
  LOBYTE(v49) = sub_20D974338();
  sub_20D973AD8();
  v65 = &v57[*(v54 + 36)];
  *v65 = v49;
  *(v65 + 1) = v66;
  *(v65 + 2) = v67;
  *(v65 + 3) = v68;
  *(v65 + 4) = v69;
  v65[40] = 0;
  sub_20D973BB8();
  sub_20D7F02A0();
  sub_20D974798();
  sub_20D7E3944(v57, &qword_27C838D78, &qword_20D977608);
  v70 = sub_20D974148();
  v71 = *(v59 + 44);
  v213 = v64;
  v72 = &v64[v71];
  *v72 = v70;
  v72[1] = sub_20D7EDA0C;
  v72[2] = 0;
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v230 = qword_28112ABE8;
  *&v236 = sub_20D971FF8();
  *(&v236 + 1) = v73;
  v200 = sub_20D7E1EF8();
  v74 = sub_20D9745C8();
  v76 = v75;
  v78 = v77;
  sub_20D974428();
  sub_20D9743A8();

  v79 = sub_20D974558();
  v81 = v80;
  v83 = v82;
  v85 = v84;

  sub_20D7EADC0(v74, v76, v78 & 1);

  LOBYTE(v74) = sub_20D974328();
  sub_20D973AD8();
  LOBYTE(v232) = v83 & 1;
  v240 = 0;
  *&v236 = v79;
  *(&v236 + 1) = v81;
  LOBYTE(v237) = v83 & 1;
  *(&v237 + 1) = v85;
  LOBYTE(v238) = v74;
  *(&v238 + 1) = v86;
  *&v239[0] = v87;
  *(&v239[0] + 1) = v88;
  *&v239[1] = v89;
  BYTE8(v239[1]) = 0;
  sub_20D973BC8();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D18, &qword_20D9775B0);
  v91 = sub_20D7F021C();
  v92 = v211;
  sub_20D974798();
  v241[2] = v238;
  v242[0] = v239[0];
  *(v242 + 9) = *(v239 + 9);
  v241[0] = v236;
  v241[1] = v237;
  sub_20D7E3944(v241, &qword_27C838D18, &qword_20D9775B0);
  v198 = v91;
  v199 = v90;
  *&v236 = v90;
  *(&v236 + 1) = v91;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v94 = v212;
  v197 = OpaqueTypeConformance2;
  sub_20D9747D8();
  v95 = v221 + 8;
  v195 = *(v221 + 8);
  v195(v92, v94);
  *&v236 = sub_20D971FF8();
  *(&v236 + 1) = v96;
  v97 = sub_20D7F03E8();
  v98 = v214;
  v196 = v97;
  sub_20D9747D8();

  sub_20D973BC8();
  v194 = sub_20D7F043C(&qword_27C838DB0, &qword_27C838D58, &qword_20D9775E8, sub_20D7F03E8);
  sub_20D974798();
  sub_20D7E3944(v98, &qword_27C838D58, &qword_20D9775E8);
  if (qword_281126F20 != -1)
  {
    swift_once();
  }

  v221 = v95;
  v99 = qword_28112ABF0;
  v100 = qword_281126F30;

  if (v100 != -1)
  {
    swift_once();
  }

  v101 = qword_28112ABF8;

  v102 = sub_20D974948();
  v103 = sub_20D971FF8();
  v105 = v104;
  v106 = sub_20D971FF8();
  *&v236 = v99;
  *(&v236 + 1) = v101;
  *&v237 = v102;
  *(&v237 + 1) = v103;
  *&v238 = v105;
  *(&v238 + 1) = v106;
  *&v239[0] = v107;
  v108 = sub_20D7F04F0();
  sub_20D9747D8();

  v109 = sub_20D972EC8();
  *(&v237 + 1) = v109;
  *&v238 = sub_20D7F0544(&qword_281127110, MEMORY[0x277D073A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v236);
  (*(*(v109 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07380], v109);
  LOBYTE(v109) = sub_20D972938();
  __swift_destroy_boxed_opaque_existential_0(&v236);
  if (v109)
  {
    v190[1] = v108;
    if (qword_281124D98 != -1)
    {
      swift_once();
    }

    v111 = qword_28112AB68;
    v112 = objc_opt_self();

    v113 = [v112 quaternaryLabelColor];
    v190[0] = sub_20D974888();
    v114 = v230;
    v115 = sub_20D971FF8();
    v117 = v116;
    sub_20D974FE8();
    v118 = v114;
    sub_20D9726B8();
    v119 = v118;
    v120 = sub_20D975108();
    *&v236 = v111;
    *(&v236 + 1) = v101;
    *&v237 = v190[0];
    *(&v237 + 1) = v115;
    *&v238 = v117;
    *(&v238 + 1) = v120;
    *&v239[0] = v121;

    sub_20D9747D8();

    if (qword_27C838750 != -1)
    {
      swift_once();
    }

    v122 = qword_27C840E70;
    v123 = qword_27C838368;

    if (v123 != -1)
    {
      swift_once();
    }

    v124 = qword_27C840BC8;

    sub_20D974FE8();
    sub_20D9726B8();
    v125 = sub_20D975108();
    v127 = v126;
    sub_20D974FE8();
    sub_20D9726B8();
    v128 = sub_20D975108();
    v130 = v129;
    v131 = sub_20D974148();
    *&v232 = v122;
    *(&v232 + 1) = v101;
    *&v233 = v124;
    *(&v233 + 1) = v125;
    *&v234 = v127;
    *(&v234 + 1) = v128;
    *&v235[0] = v130;
    *(&v235[0] + 1) = v131;
    *&v235[1] = sub_20D7EDA0C;
    *(&v235[1] + 1) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838DC0, &qword_20D977620);
    sub_20D7F05F0();
    v132 = v202;
    sub_20D9747D8();
    v238 = v234;
    v239[0] = v235[0];
    v239[1] = v235[1];
    v236 = v232;
    v237 = v233;
    sub_20D7E3944(&v236, &qword_27C838DC0, &qword_20D977620);
    v133 = v229;
    v134 = v191;
    sub_20D7EB7E8(v229, v191, &qword_27C838D50, &qword_20D9775E0);
    v135 = v192;
    sub_20D7EB7E8(v132, v192, &qword_27C838D40, &qword_20D9775D0);
    v136 = v193;
    sub_20D7EB7E8(v134, v193, &qword_27C838D50, &qword_20D9775E0);
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838DE8, &qword_20D977630);
    sub_20D7EB7E8(v135, v136 + *(v137 + 48), &qword_27C838D40, &qword_20D9775D0);
    sub_20D7E3944(v135, &qword_27C838D40, &qword_20D9775D0);
    sub_20D7E3944(v134, &qword_27C838D50, &qword_20D9775E0);
    sub_20D7EB7E8(v136, v205, &qword_27C838D38, &qword_20D9775C8);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C838DD0, &qword_27C838D38, &qword_20D9775C8);
    sub_20D7F043C(&qword_27C838DD8, &qword_27C838D40, &qword_20D9775D0, sub_20D7F05F0);
    sub_20D9741B8();
    sub_20D7E3944(v136, &qword_27C838D38, &qword_20D9775C8);
    sub_20D7E3944(v132, &qword_27C838D40, &qword_20D9775D0);
    v138 = v133;
    v139 = &qword_27C838D50;
    v140 = &qword_20D9775E0;
  }

  else
  {
    if (qword_281124D98 != -1)
    {
      swift_once();
    }

    v141 = qword_28112AB68;
    v142 = objc_opt_self();

    v143 = [v142 quaternaryLabelColor];
    v144 = sub_20D974888();
    v145 = v230;
    v146 = sub_20D971FF8();
    v148 = v147;
    sub_20D974FE8();
    v149 = v145;
    sub_20D9726B8();
    v150 = sub_20D975108();
    v152 = v151;
    v153 = sub_20D974148();
    *&v232 = v141;
    *(&v232 + 1) = v101;
    *&v233 = v144;
    *(&v233 + 1) = v146;
    *&v234 = v148;
    *(&v234 + 1) = v150;
    *&v235[0] = v152;
    *(&v235[0] + 1) = v153;
    *&v235[1] = sub_20D7EDA0C;
    *(&v235[1] + 1) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838DC0, &qword_20D977620);
    sub_20D7F05F0();
    v154 = v202;
    sub_20D9747D8();
    v238 = v234;
    v239[0] = v235[0];
    v239[1] = v235[1];
    v236 = v232;
    v237 = v233;
    sub_20D7E3944(&v236, &qword_27C838DC0, &qword_20D977620);
    sub_20D7EB7E8(v154, v205, &qword_27C838D40, &qword_20D9775D0);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C838DD0, &qword_27C838D38, &qword_20D9775C8);
    sub_20D7F043C(&qword_27C838DD8, &qword_27C838D40, &qword_20D9775D0, sub_20D7F05F0);
    sub_20D9741B8();
    v138 = v154;
    v139 = &qword_27C838D40;
    v140 = &qword_20D9775D0;
  }

  sub_20D7E3944(v138, v139, v140);
  *&v236 = sub_20D971FF8();
  *(&v236 + 1) = v155;
  v156 = sub_20D9745C8();
  v158 = v157;
  v160 = v159;
  sub_20D974428();
  sub_20D9743A8();

  v161 = sub_20D974558();
  v163 = v162;
  v165 = v164;
  v167 = v166;

  sub_20D7EADC0(v156, v158, v160 & 1);

  LOBYTE(v156) = sub_20D974328();
  sub_20D973AD8();
  v240 = v165 & 1;
  v231 = 0;
  *&v232 = v161;
  *(&v232 + 1) = v163;
  LOBYTE(v233) = v165 & 1;
  *(&v233 + 1) = v167;
  LOBYTE(v234) = v156;
  *(&v234 + 1) = v168;
  *&v235[0] = v169;
  *(&v235[0] + 1) = v170;
  *&v235[1] = v171;
  BYTE8(v235[1]) = 0;
  sub_20D973BC8();
  v172 = v211;
  sub_20D974798();
  v238 = v234;
  v239[0] = v235[0];
  *(v239 + 9) = *(v235 + 9);
  v236 = v232;
  v237 = v233;
  sub_20D7E3944(&v236, &qword_27C838D18, &qword_20D9775B0);
  v173 = v212;
  sub_20D9747D8();
  v195(v172, v173);
  *&v232 = sub_20D971FF8();
  *(&v232 + 1) = v174;
  v175 = v214;
  sub_20D9747D8();

  sub_20D973BC8();
  v176 = v218;
  sub_20D974798();
  sub_20D7E3944(v175, &qword_27C838D58, &qword_20D9775E8);
  v177 = v216;
  sub_20D7EB7E8(v213, v216, &qword_27C838D80, &qword_20D977610);
  sub_20D7EB7E8(v223, v224, &qword_27C838D70, &qword_20D977600);
  v179 = v206;
  v178 = v207;
  v180 = *(v206 + 16);
  v180(v226, v225, v207);
  sub_20D7EB7E8(v227, v229, &qword_27C838D50, &qword_20D9775E0);
  v181 = v220;
  sub_20D7EB7E8(v228, v220, &qword_27C838D48, &qword_20D9775D8);
  sub_20D7EB7E8(v222, v217, &qword_27C838D70, &qword_20D977600);
  v180(v219, v176, v178);
  v182 = v177;
  v183 = v208;
  sub_20D7EB7E8(v182, v208, &qword_27C838D80, &qword_20D977610);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838DE0, &qword_20D977628);
  sub_20D7EB7E8(v224, v183 + v184[12], &qword_27C838D70, &qword_20D977600);
  v180((v183 + v184[16]), v226, v178);
  sub_20D7EB7E8(v229, v183 + v184[20], &qword_27C838D50, &qword_20D9775E0);
  sub_20D7EB7E8(v181, v183 + v184[24], &qword_27C838D48, &qword_20D9775D8);
  v185 = v217;
  sub_20D7EB7E8(v217, v183 + v184[28], &qword_27C838D70, &qword_20D977600);
  v186 = v183 + v184[32];
  v187 = v219;
  v180(v186, v219, v178);
  v188 = *(v179 + 8);
  v188(v218, v178);
  sub_20D7E3944(v222, &qword_27C838D70, &qword_20D977600);
  sub_20D7E3944(v228, &qword_27C838D48, &qword_20D9775D8);
  sub_20D7E3944(v227, &qword_27C838D50, &qword_20D9775E0);
  v188(v225, v178);
  sub_20D7E3944(v223, &qword_27C838D70, &qword_20D977600);
  sub_20D7E3944(v213, &qword_27C838D80, &qword_20D977610);
  v188(v187, v178);
  sub_20D7E3944(v185, &qword_27C838D70, &qword_20D977600);
  sub_20D7E3944(v220, &qword_27C838D48, &qword_20D9775D8);
  sub_20D7E3944(v229, &qword_27C838D50, &qword_20D9775E0);
  v188(v226, v178);
  sub_20D7E3944(v224, &qword_27C838D70, &qword_20D977600);
  return sub_20D7E3944(v216, &qword_27C838D80, &qword_20D977610);
}

uint64_t sub_20D7EDA14@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_20D973CD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BD0, &qword_20D977230);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BD8, &qword_20D977238);
  sub_20D7EBC4C(&qword_27C838BE0, &qword_27C838BD8, &qword_20D977238);
  sub_20D9744D8();
  sub_20D973CC8();
  sub_20D7EBC4C(&qword_27C838BE8, &qword_27C838BD0, &qword_20D977230);
  sub_20D974878();
  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
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

uint64_t sub_20D7EDC7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_20D7EDCC4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_20D7EDD20(uint64_t a1, int a2)
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

uint64_t sub_20D7EDD68(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for IntroView()
{
  result = qword_27C838BF0;
  if (!qword_27C838BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D7EDE28()
{
  sub_20D7E63C4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_20D7EDEB0@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C50, &qword_20D977508);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v63 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C58, &qword_20D977510);
  v5 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v7 = &v63 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C60, &qword_20D977518);
  v8 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v10 = &v63 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C68, &qword_20D977520);
  v11 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v13 = &v63 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C70, &qword_20D977528);
  v14 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v16 = &v63 - v15;
  *v4 = sub_20D974168();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C78, &unk_20D977530);
  sub_20D7EE41C(&v4[*(v17 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  v19 = sub_20D974348();
  *(inited + 32) = v19;
  v20 = sub_20D974368();
  *(inited + 33) = v20;
  v21 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v19)
  {
    v21 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v20)
  {
    v21 = sub_20D974358();
  }

  sub_20D7EAF18(v4, v7, &qword_27C838C50, &qword_20D977508);
  v22 = &v7[*(v63 + 36)];
  *v22 = v21;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  v23 = sub_20D974328();
  sub_20D973AD8();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_20D7EAF18(v7, v10, &qword_27C838C58, &qword_20D977510);
  v32 = &v10[*(v64 + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_20D974338();
  sub_20D973AD8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_20D7EAF18(v10, v13, &qword_27C838C60, &qword_20D977518);
  v42 = &v13[*(v65 + 36)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v43 = sub_20D974C48();
  v45 = v44;
  v46 = sub_20D974C48();
  v48 = v47;
  sub_20D7EF054(&v74);
  v49 = v74;
  v50 = v75;
  v51 = v76;
  *&v69 = v46;
  *(&v69 + 1) = v48;
  v70 = v74;
  v71 = v75;
  v72 = v76;
  *&v73 = v43;
  *(&v73 + 1) = v45;
  sub_20D7EAF18(v13, v16, &qword_27C838C68, &qword_20D977520);
  v52 = &v16[*(v66 + 36)];
  v53 = v72;
  *(v52 + 2) = v71;
  *(v52 + 3) = v53;
  *(v52 + 4) = v73;
  v54 = v70;
  *v52 = v69;
  *(v52 + 1) = v54;
  *&v74 = v46;
  *(&v74 + 1) = v48;
  v75 = v49;
  v76 = v50;
  v77 = v51;
  v78 = v43;
  v79 = v45;
  sub_20D7EB7E8(&v69, &v68, &qword_27C838C88, &qword_20D977540);
  sub_20D7E3944(&v74, &qword_27C838C88, &qword_20D977540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  sub_20D973B78();
  v55 = v68 * 20.0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C90, &qword_20D977548);
  v57 = v67;
  v58 = (v67 + *(v56 + 36));
  v59 = *(sub_20D973DE8() + 20);
  v60 = *MEMORY[0x277CE0118];
  v61 = sub_20D974118();
  (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
  *v58 = v55;
  v58[1] = v55;
  *(v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550) + 36)) = 256;
  return sub_20D7EAF18(v16, v57, &qword_27C838C70, &qword_20D977528);
}

uint64_t sub_20D7EE41C@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA8, &qword_20D977560);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v61 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v56 - v5;
  v7 = sub_20D9749C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CB0, &qword_20D977568);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CB8, &qword_20D977570);
  v16 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CC0, &qword_20D977578);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v58 = &v56 - v21;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CC8, &qword_20D977580);
  v22 = *(*(v57 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v57);
  v60 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v56 - v28;
  if (qword_281126F20 != -1)
  {
    swift_once();
  }

  (*(v8 + 104))(v11, *MEMORY[0x277CE0FE0], v7);
  v30 = sub_20D974A08();
  (*(v8 + 8))(v11, v7);
  sub_20D974C58();
  sub_20D973E08();
  *&v63[54] = v68;
  *&v63[70] = v69;
  *&v63[86] = v70;
  *&v63[102] = v71;
  *&v63[6] = v65;
  *&v63[22] = v66;
  v64 = 1;
  v31 = &v15[*(v12 + 36)];
  *&v63[38] = v67;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C28, &qword_20D9774A0) + 28);
  sub_20D974198();
  v33 = sub_20D9741A8();
  (*(*(v33 - 8) + 56))(v31 + v32, 0, 1, v33);
  *v31 = swift_getKeyPath();
  v34 = *&v63[80];
  *(v15 + 82) = *&v63[64];
  *(v15 + 98) = v34;
  *(v15 + 114) = *&v63[96];
  v35 = *&v63[16];
  *(v15 + 18) = *v63;
  *(v15 + 34) = v35;
  v36 = *&v63[48];
  *(v15 + 50) = *&v63[32];
  *v15 = v30;
  *(v15 + 1) = 0;
  *(v15 + 8) = 1;
  *(v15 + 16) = *&v63[110];
  *(v15 + 66) = v36;
  v37 = sub_20D974918();
  sub_20D974918();
  v38 = sub_20D974948();

  sub_20D7EAF18(v15, v18, &qword_27C838CB0, &qword_20D977568);
  v39 = &v18[*(v59 + 36)];
  *v39 = v37;
  v39[1] = v38;
  sub_20D7EFF9C();
  v40 = v58;
  sub_20D9747B8();
  sub_20D7E3944(v18, &qword_27C838CB8, &qword_20D977570);
  LOBYTE(v37) = sub_20D974338();
  sub_20D973AD8();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_20D7EAF18(v40, v27, &qword_27C838CC0, &qword_20D977578);
  v49 = &v27[*(v57 + 36)];
  *v49 = v37;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  sub_20D7EAF18(v27, v29, &qword_27C838CC8, &qword_20D977580);
  *v6 = sub_20D974168();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D00, &qword_20D977598);
  sub_20D7EEB28(&v6[*(v50 + 44)]);
  v51 = v60;
  sub_20D7EB7E8(v29, v60, &qword_27C838CC8, &qword_20D977580);
  v52 = v61;
  sub_20D7EB7E8(v6, v61, &qword_27C838CA8, &qword_20D977560);
  v53 = v62;
  sub_20D7EB7E8(v51, v62, &qword_27C838CC8, &qword_20D977580);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D08, &qword_20D9775A0);
  sub_20D7EB7E8(v52, v53 + *(v54 + 48), &qword_27C838CA8, &qword_20D977560);
  sub_20D7E3944(v6, &qword_27C838CA8, &qword_20D977560);
  sub_20D7E3944(v29, &qword_27C838CC8, &qword_20D977580);
  sub_20D7E3944(v52, &qword_27C838CA8, &qword_20D977560);
  return sub_20D7E3944(v51, &qword_27C838CC8, &qword_20D977580);
}

uint64_t sub_20D7EEB28@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D10, &qword_20D9775A8);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v50 = &v47 - v5;
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v47 = qword_28112ABE8;
  *&v57[0] = sub_20D971FF8();
  *(&v57[0] + 1) = v6;
  sub_20D7E1EF8();
  v7 = sub_20D9745C8();
  v9 = v8;
  v11 = v10;
  sub_20D9743B8();
  sub_20D9743A8();

  v12 = sub_20D974558();
  v14 = v13;
  v16 = v15;

  sub_20D7EADC0(v7, v9, v11 & 1);

  *&v57[0] = sub_20D974918();
  v17 = sub_20D974518();
  v19 = v18;
  LOBYTE(v9) = v20;
  v22 = v21;
  sub_20D7EADC0(v12, v14, v16 & 1);

  LOBYTE(v14) = sub_20D974338();
  sub_20D973AD8();
  v56 = v9 & 1;
  v55 = 0;
  *&v51 = v17;
  *(&v51 + 1) = v19;
  LOBYTE(v52) = v9 & 1;
  *(&v52 + 1) = v22;
  LOBYTE(v53) = v14;
  *(&v53 + 1) = v23;
  *v54 = v24;
  *&v54[8] = v25;
  *&v54[16] = v26;
  v54[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D18, &qword_20D9775B0);
  sub_20D7F021C();
  sub_20D9747D8();
  v57[2] = v53;
  v58[0] = *v54;
  *(v58 + 9) = *&v54[9];
  v57[0] = v51;
  v57[1] = v52;
  sub_20D7E3944(v57, &qword_27C838D18, &qword_20D9775B0);
  *&v51 = sub_20D971FF8();
  *(&v51 + 1) = v27;
  v28 = sub_20D9745C8();
  v30 = v29;
  LOBYTE(v17) = v31;
  sub_20D974398();
  v32 = sub_20D974558();
  v34 = v33;
  LOBYTE(v22) = v35;

  sub_20D7EADC0(v28, v30, v17 & 1);

  *&v51 = sub_20D974918();
  v36 = sub_20D974518();
  v38 = v37;
  LOBYTE(v17) = v39;
  v41 = v40;
  sub_20D7EADC0(v32, v34, v22 & 1);

  v42 = v50;
  v43 = v49;
  sub_20D7EB7E8(v50, v49, &qword_27C838D10, &qword_20D9775A8);
  v44 = v48;
  sub_20D7EB7E8(v43, v48, &qword_27C838D10, &qword_20D9775A8);
  v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D28, &qword_20D9775B8) + 48);
  *v45 = v36;
  *(v45 + 8) = v38;
  LOBYTE(v17) = v17 & 1;
  *(v45 + 16) = v17;
  *(v45 + 24) = v41;
  sub_20D7DDC4C(v36, v38, v17);

  sub_20D7E3944(v42, &qword_27C838D10, &qword_20D9775A8);
  sub_20D7EADC0(v36, v38, v17);

  return sub_20D7E3944(v43, &qword_27C838D10, &qword_20D9775A8);
}

uint64_t sub_20D7EF054@<X0>(uint64_t a1@<X8>)
{
  if (qword_281126F30 != -1)
  {
    swift_once();
  }

  v2 = qword_28112ABF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20D977210;
  sub_20D9748E8();
  v4 = sub_20D974948();

  *(v3 + 32) = v4;
  sub_20D9748E8();
  v5 = sub_20D974948();

  *(v3 + 40) = v5;
  sub_20D974CA8();
  sub_20D974CB8();
  MEMORY[0x20F322D80](v3);
  sub_20D973D08();
  *a1 = v2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
}

uint64_t sub_20D7EF1C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C10, &qword_20D977458);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v44 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C18, &qword_20D977460);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v47 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - v16;
  v18 = *a1;
  v19 = sub_20D9743C8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);

  v20 = sub_20D974418();
  sub_20D7E3944(v6, &qword_27C838C08, &qword_20D977450);
  KeyPath = swift_getKeyPath();
  v22 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C20, &qword_20D977498) + 36));
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C28, &qword_20D9774A0) + 28);
  sub_20D974198();
  v24 = sub_20D9741A8();
  (*(*(v24 - 8) + 56))(v22 + v23, 0, 1, v24);
  *v22 = swift_getKeyPath();
  *v10 = v18;
  v10[1] = KeyPath;
  v10[2] = v20;
  v25 = v45;
  v26 = v45[1];
  v27 = (v10 + *(v7 + 36));
  *v27 = v45[2];
  v27[1] = v26;
  sub_20D7EFE2C();

  sub_20D9747B8();
  sub_20D7E3944(v10, &qword_27C838C10, &qword_20D977458);
  LOBYTE(v10) = sub_20D974348();
  sub_20D973AD8();
  v28 = &v17[*(v12 + 44)];
  *v28 = v10;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = sub_20D974168();
  LOBYTE(v52[0]) = 0;
  sub_20D7EF638(v25, v49);
  *&v48[7] = v49[0];
  *&v48[23] = v49[1];
  *&v48[39] = v49[2];
  *&v48[55] = v49[3];
  LOBYTE(v18) = v52[0];
  v34 = v47;
  sub_20D7EB7E8(v17, v47, &qword_27C838C18, &qword_20D977460);
  v35 = v34;
  v36 = v46;
  sub_20D7EB7E8(v35, v46, &qword_27C838C18, &qword_20D977460);
  v37 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C38, &qword_20D9774F0) + 48);
  *&v50 = v33;
  *(&v50 + 1) = 0x4000000000000000;
  v51[0] = v18;
  *&v51[1] = *v48;
  *&v51[17] = *&v48[16];
  *&v51[33] = *&v48[32];
  *&v51[49] = *&v48[48];
  v38 = *&v48[63];
  *&v51[64] = *&v48[63];
  v39 = *v51;
  *v37 = v50;
  *(v37 + 16) = v39;
  v40 = *&v51[16];
  v41 = *&v51[32];
  v42 = *&v51[48];
  *(v37 + 80) = v38;
  *(v37 + 48) = v41;
  *(v37 + 64) = v42;
  *(v37 + 32) = v40;
  sub_20D7EB7E8(&v50, v52, &qword_27C838C40, &qword_20D9774F8);
  sub_20D7E3944(v17, &qword_27C838C18, &qword_20D977460);
  v52[0] = v33;
  v52[1] = 0x4000000000000000;
  v53 = v18;
  v55 = *&v48[16];
  v56 = *&v48[32];
  *v57 = *&v48[48];
  *&v57[15] = *&v48[63];
  v54 = *v48;
  sub_20D7E3944(v52, &qword_27C838C40, &qword_20D9774F8);
  return sub_20D7E3944(v47, &qword_27C838C18, &qword_20D977460);
}

uint64_t sub_20D7EF638@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a2;
  v3 = sub_20D974458();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  v53 = a1[3];
  v54 = v8;
  v46 = sub_20D7E1EF8();

  v9 = sub_20D9745C8();
  v11 = v10;
  v13 = v12;
  v42[1] = v14;
  sub_20D974398();
  sub_20D9743A8();

  v45 = *MEMORY[0x277CE0A08];
  v44 = v4[13];
  v44(v7);
  sub_20D974478();

  v43 = v4[1];
  v43(v7, v3);
  v15 = sub_20D974558();
  v49 = v16;
  v50 = v15;
  v48 = v17;
  v47 = v18;

  sub_20D7EADC0(v9, v11, v13 & 1);

  v19 = a1[6];
  v53 = a1[5];
  v54 = v19;

  v20 = sub_20D9745C8();
  v22 = v21;
  LOBYTE(a1) = v23;
  sub_20D974398();
  (v44)(v7, v45, v3);
  sub_20D974478();

  v43(v7, v3);
  v24 = sub_20D974558();
  v26 = v25;
  LOBYTE(v9) = v27;

  sub_20D7EADC0(v20, v22, a1 & 1);

  v28 = [objc_opt_self() secondaryLabelColor];
  v53 = sub_20D974888();
  v29 = sub_20D974518();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_20D7EADC0(v24, v26, v9 & 1);

  v36 = v47 & 1;
  v52 = v47 & 1;
  LOBYTE(v53) = v47 & 1;
  v55 = v33 & 1;
  v38 = v50;
  v37 = v51;
  v40 = v48;
  v39 = v49;
  *v51 = v50;
  v37[1] = v40;
  *(v37 + 16) = v36;
  v37[3] = v39;
  v37[4] = v29;
  v37[5] = v31;
  *(v37 + 48) = v33 & 1;
  v37[7] = v35;
  sub_20D7DDC4C(v38, v40, v36);

  sub_20D7DDC4C(v29, v31, v33 & 1);

  sub_20D7EADC0(v29, v31, v33 & 1);

  sub_20D7EADC0(v38, v40, v52);
}

uint64_t sub_20D7EF9E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = sub_20D974078();
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C00, &qword_20D977448);
  return sub_20D7EF1C4(v6, a1 + *(v4 + 44));
}

uint64_t sub_20D7EFA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20D974458();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20D974168();
  v30 = a1;
  v31 = a2;
  sub_20D7E1EF8();

  v11 = sub_20D9745C8();
  v13 = v12;
  v15 = v14;
  sub_20D974398();
  (*(v7 + 104))(v10, *MEMORY[0x277CE0A08], v6);
  sub_20D974478();

  (*(v7 + 8))(v10, v6);
  v16 = sub_20D974558();
  v18 = v17;
  LOBYTE(v10) = v19;

  sub_20D7EADC0(v11, v13, v15 & 1);

  v20 = [objc_opt_self() secondaryLabelColor];
  v30 = sub_20D974888();
  v21 = sub_20D974518();
  v23 = v22;
  LOBYTE(v13) = v24;
  v26 = v25;
  sub_20D7EADC0(v16, v18, v10 & 1);

  *a3 = v29;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = v21;
  *(a3 + 32) = v23;
  *(a3 + 40) = v13 & 1;
  *(a3 + 48) = v26;
  return result;
}

__n128 sub_20D7EFCB4@<Q0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_20D974078();
  v17 = 1;
  sub_20D7EFA5C(v4, v3, &v12);
  v6 = v13;
  v7 = v15;
  v8 = v16;
  result = v14;
  v10 = v12;
  v11 = v17;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 24) = v10;
  *(a1 + 40) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  return result;
}

uint64_t sub_20D7EFD84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C48, &qword_20D977500);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D7EB7E8(a1, &v6 - v4, &qword_27C838C48, &qword_20D977500);
  return sub_20D973F18();
}

unint64_t sub_20D7EFE2C()
{
  result = qword_281124E98;
  if (!qword_281124E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838C10, &qword_20D977458);
    sub_20D7EFEE4();
    sub_20D7EBC4C(&qword_281124DD8, &qword_27C838C30, &qword_20D9774E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E98);
  }

  return result;
}

unint64_t sub_20D7EFEE4()
{
  result = qword_281124EE8;
  if (!qword_281124EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838C20, &qword_20D977498);
    sub_20D7EB274();
    sub_20D7EBC4C(&qword_281124DB8, &qword_27C838C28, &qword_20D9774A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124EE8);
  }

  return result;
}

unint64_t sub_20D7EFF9C()
{
  result = qword_27C838CD0;
  if (!qword_27C838CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838CB8, &qword_20D977570);
    sub_20D7F0054();
    sub_20D7EBC4C(&qword_281124DD8, &qword_27C838C30, &qword_20D9774E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838CD0);
  }

  return result;
}

unint64_t sub_20D7F0054()
{
  result = qword_27C838CD8;
  if (!qword_27C838CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838CB0, &qword_20D977568);
    sub_20D7F010C();
    sub_20D7EBC4C(&qword_281124DB8, &qword_27C838C28, &qword_20D9774A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838CD8);
  }

  return result;
}

unint64_t sub_20D7F010C()
{
  result = qword_27C838CE0;
  if (!qword_27C838CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838CE8, &qword_20D977588);
    sub_20D7F0198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838CE0);
  }

  return result;
}

unint64_t sub_20D7F0198()
{
  result = qword_27C838CF0;
  if (!qword_27C838CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838CF8, &qword_20D977590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838CF0);
  }

  return result;
}

unint64_t sub_20D7F021C()
{
  result = qword_27C838D20;
  if (!qword_27C838D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838D18, &qword_20D9775B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838D20);
  }

  return result;
}

unint64_t sub_20D7F02A0()
{
  result = qword_27C838D90;
  if (!qword_27C838D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838D78, &qword_20D977608);
    sub_20D7F032C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838D90);
  }

  return result;
}

unint64_t sub_20D7F032C()
{
  result = qword_27C838D98;
  if (!qword_27C838D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838D88, &qword_20D977618);
    sub_20D7F0544(&qword_27C838DA0, type metadata accessor for IntroView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838D98);
  }

  return result;
}

unint64_t sub_20D7F03E8()
{
  result = qword_27C838DA8;
  if (!qword_27C838DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838DA8);
  }

  return result;
}

uint64_t sub_20D7F043C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_20D7F0544(&qword_281126F38, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D7F04F0()
{
  result = qword_27C838DB8;
  if (!qword_27C838DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838DB8);
  }

  return result;
}

uint64_t sub_20D7F0544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_20D7F05F0()
{
  result = qword_27C838DC8;
  if (!qword_27C838DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838DC0, &qword_20D977620);
    sub_20D7F04F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838DC8);
  }

  return result;
}

unint64_t sub_20D7F067C()
{
  result = qword_27C838E10;
  if (!qword_27C838E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838C90, &qword_20D977548);
    sub_20D7F0734();
    sub_20D7EBC4C(&qword_281124FF8, &qword_27C838C98, &unk_20D977550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838E10);
  }

  return result;
}

unint64_t sub_20D7F0734()
{
  result = qword_27C838E18;
  if (!qword_27C838E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838C70, &qword_20D977528);
    sub_20D7F07EC();
    sub_20D7EBC4C(&qword_27C838E40, &qword_27C838C88, &qword_20D977540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838E18);
  }

  return result;
}

unint64_t sub_20D7F07EC()
{
  result = qword_27C838E20;
  if (!qword_27C838E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838C68, &qword_20D977520);
    sub_20D7F0878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838E20);
  }

  return result;
}

unint64_t sub_20D7F0878()
{
  result = qword_27C838E28;
  if (!qword_27C838E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838C60, &qword_20D977518);
    sub_20D7F0904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838E28);
  }

  return result;
}

unint64_t sub_20D7F0904()
{
  result = qword_27C838E30;
  if (!qword_27C838E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838C58, &qword_20D977510);
    sub_20D7EBC4C(&qword_27C838E38, &qword_27C838C50, &qword_20D977508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838E30);
  }

  return result;
}

uint64_t RectangularLockEnergyForecastView.init(referenceDate:widgetStartDate:energyWindow:gridForecastError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v78 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - v13;
  v15 = sub_20D972628();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v70 - v21;
  v85 = *a4;
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  v23 = type metadata accessor for RectangularLockEnergyForecastView();
  v24 = *(v23 + 28);
  v25 = sub_20D972998();
  v76 = *(v25 - 8);
  v77 = v25;
  v26 = *(v76 + 56);
  v82 = v24;
  v26(a5 + v24, 1, 1);
  v83 = v23;
  v27 = *(v23 + 32);
  v80 = a5;
  v81 = v27;
  *(a5 + v27) = 12;
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v28 = sub_20D9734F8();
  __swift_project_value_buffer(v28, qword_2811250C8);
  v29 = v16;
  v30 = *(v16 + 16);
  v84 = a1;
  v30(v22, a1, v15);
  v31 = v20;
  v79 = v20;
  v32 = v86;
  v30(v31, v86, v15);
  sub_20D7EB7E8(a3, v14, &qword_27C838E48, &qword_20D977670);
  v33 = sub_20D9734D8();
  v34 = sub_20D975478();
  if (os_log_type_enabled(v33, v34))
  {
    v72 = v34;
    v73 = v33;
    v75 = a3;
    v35 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v90[0] = v71;
    *v35 = 136315906;
    v36 = sub_20D9725F8();
    v38 = v37;
    v74 = v29;
    v39 = *(v29 + 8);
    v39(v22, v15);
    v40 = sub_20D7F4DC8(v36, v38, v90);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    v41 = v79;
    v42 = sub_20D9725F8();
    v44 = v43;
    v79 = v15;
    v39(v41, v15);
    v45 = sub_20D7F4DC8(v42, v44, v90);

    *(v35 + 14) = v45;
    *(v35 + 22) = 2080;
    v46 = v85;
    if (v85 == 12)
    {
      v47 = 0xE500000000000000;
      v48 = 0x7272456F6ELL;
    }

    else
    {
      v89 = v85;
      v87 = GridForecastError.description.getter();
      v88 = v51;
      sub_20D7E1EF8();
      v52 = sub_20D975538();
      v47 = v53;

      v48 = v52;
      v46 = v85;
    }

    v54 = v14;
    v56 = v77;
    v55 = v78;
    v57 = sub_20D7F4DC8(v48, v47, v90);

    *(v35 + 24) = v57;
    *(v35 + 32) = 2080;
    sub_20D7EB7E8(v14, v55, &qword_27C838E48, &qword_20D977670);
    v58 = v76;
    v59 = (*(v76 + 48))(v55, 1, v56);
    v49 = v86;
    if (v59 == 1)
    {
      sub_20D7E3944(v55, &qword_27C838E48, &qword_20D977670);
      v60 = 0xE500000000000000;
      v61 = 0x3E6C696E3CLL;
    }

    else
    {
      v61 = EnergyWindow.description.getter();
      v60 = v62;
      (*(v58 + 8))(v55, v56);
    }

    v29 = v74;
    sub_20D7E3944(v54, &qword_27C838E48, &qword_20D977670);
    v63 = sub_20D7F4DC8(v61, v60, v90);

    *(v35 + 34) = v63;
    v64 = v73;
    _os_log_impl(&dword_20D7C9000, v73, v72, "RectangularLockEnergyForecastView: creating view for date: %s, with widgetStartDate: %s - (%s) & %s", v35, 0x2Au);
    v65 = v71;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v65, -1, -1);
    MEMORY[0x20F324260](v35, -1, -1);

    a3 = v75;
    v15 = v79;
  }

  else
  {
    v49 = v32;

    sub_20D7E3944(v14, &qword_27C838E48, &qword_20D977670);
    v50 = *(v29 + 8);
    v50(v79, v15);
    v50(v22, v15);
    v46 = v85;
  }

  v66 = v80;
  sub_20D7F4D58(a3, v80 + v82);
  v67 = v83;
  v68 = *(v29 + 32);
  v68(v66 + *(v83 + 20), v84, v15);
  result = (v68)(v66 + *(v67 + 24), v49, v15);
  *(v66 + v81) = v46;
  return result;
}

uint64_t RectangularLockEnergyForecastView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E50, &qword_20D9776A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  *v6 = sub_20D974168();
  *(v6 + 1) = 0x3FE0000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E58, &qword_20D9776B0);
  sub_20D7F1118(v1, &v6[*(v7 + 44)]);
  *&v6[*(v3 + 36)] = 0;
  sub_20D7F4E94();
  sub_20D974718();
  sub_20D7E3944(v6, &qword_27C838E50, &qword_20D9776A8);
  v8 = sub_20D973DC8();
  v9 = sub_20D974318();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E70, &qword_20D9776C8);
  v11 = a1 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
  return result;
}

uint64_t sub_20D7F1118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a1;
  v119 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E78, &unk_20D977758);
  v2 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v103 = &v94 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v100 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v99 = &v94 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E80, &qword_20D977768);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v102 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E88, &qword_20D977770);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v101 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v112 = (&v94 - v18);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E90, &qword_20D977778);
  v19 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v107 = (&v94 - v20);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E98, &qword_20D977780);
  v21 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v94 - v22;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EA0, &qword_20D977788);
  v23 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v105 = &v94 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EA8, &qword_20D977790);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v94 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v94 - v34;
  v36 = sub_20D972998();
  v111 = *(v36 - 8);
  v37 = *(v111 + 64);
  MEMORY[0x28223BE20](v36);
  v106 = &v94 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EB0, &qword_20D977798);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v109 = &v94 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EB8, &unk_20D9777A0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v116 = &v94 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = &v94 - v46;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EC0, &unk_20D977FE0);
  v97 = *(v98 - 8);
  v48 = *(v97 + 64);
  v49 = MEMORY[0x28223BE20](v98);
  v120 = (&v94 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v49);
  v52 = &v94 - v51;
  *v52 = sub_20D974088();
  *(v52 + 1) = 0;
  v52[16] = 1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EC8, &qword_20D9777B0);
  v54 = *(v53 + 44);
  v115 = v52;
  sub_20D7F1FE0(&v52[v54]);
  v55 = type metadata accessor for RectangularLockEnergyForecastView();
  v56 = *(v113 + *(v55 + 32));
  if (v56 == 12)
  {
    v57 = v55;
    v96 = v39;
    v105 = v47;
    v58 = v113;
    sub_20D7EB7E8(v113 + *(v55 + 28), v35, &qword_27C838E48, &qword_20D977670);
    v59 = v111;
    if ((*(v111 + 48))(v35, 1, v36) == 1)
    {
      sub_20D7E3944(v35, &qword_27C838E48, &qword_20D977670);
      v60 = sub_20D974088();
      sub_20D7DDC4C(11565, 0xE200000000000000, 0);
      v61 = MEMORY[0x277D84F90];

      sub_20D7EADC0(11565, 0xE200000000000000, 0);

      v123 = 1;
      v122 = 0;
      v121 = 1;
      v62 = sub_20D974088();
      sub_20D7DDC4C(11565, 0xE200000000000000, 0);

      sub_20D7EADC0(11565, 0xE200000000000000, 0);

      v126 = 1;
      v125 = 0;
      v124 = 1;
      sub_20D7DDC4C(11565, 0xE200000000000000, 0);

      sub_20D7DDC4C(11565, 0xE200000000000000, 0);

      sub_20D7DDC4C(11565, 0xE200000000000000, 0);

      sub_20D7DDC4C(11565, 0xE200000000000000, 0);

      sub_20D7EADC0(11565, 0xE200000000000000, 0);

      sub_20D7EADC0(11565, 0xE200000000000000, 0);

      v63 = v107;
      *v107 = v60;
      v63[1] = 0;
      *(v63 + 16) = 1;
      *(v63 + 3) = xmmword_20D977660;
      *(v63 + 40) = 0;
      v63[6] = v61;
      v63[7] = 0;
      *(v63 + 64) = 1;
      v63[9] = v62;
      v63[10] = 0;
      *(v63 + 88) = 1;
      *(v63 + 6) = xmmword_20D977660;
      *(v63 + 112) = 0;
      v63[15] = v61;
      v63[16] = 0;
      *(v63 + 136) = 1;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838ED0, &qword_20D9777B8);
      sub_20D7EBC4C(&qword_281124CC0, &qword_27C838E78, &unk_20D977758);
      sub_20D7EBC4C(&qword_281124CB8, &qword_27C838ED0, &qword_20D9777B8);
      v64 = v109;
      sub_20D9741B8();
      sub_20D7EADC0(11565, 0xE200000000000000, 0);

      sub_20D7EADC0(11565, 0xE200000000000000, 0);
    }

    else
    {
      v71 = v36;
      v72 = *(v59 + 32);
      v73 = v106;
      v95 = v71;
      v72(v106, v35);
      v74 = sub_20D974088();
      v75 = v112;
      *v112 = v74;
      v75[1] = 0x4008000000000000;
      *(v75 + 16) = 0;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EE0, &qword_20D9777C8);
      sub_20D7F260C(v75 + *(v76 + 44));
      v77 = v99;
      sub_20D972988();
      v78 = v100;
      sub_20D972978();
      v79 = sub_20D7F3D2C(v77, v78, v58 + *(v57 + 24));
      sub_20D7E3944(v78, &qword_27C8389E8, &qword_20D9768D0);
      sub_20D7E3944(v77, &qword_27C8389E8, &qword_20D9768D0);
      v80 = 1;
      if (v79)
      {
        v81 = sub_20D974088();
        v82 = v120;
        *v120 = v81;
        v82[1] = 0;
        *(v82 + 16) = 1;
        sub_20D7F4934(v73, v82 + *(v53 + 44));
        sub_20D7F5308(v82, v104);
        v80 = 0;
      }

      v83 = v104;
      (*(v97 + 56))(v104, v80, 1, v98);
      v84 = v101;
      sub_20D7EB7E8(v112, v101, &qword_27C838E88, &qword_20D977770);
      v85 = v102;
      sub_20D7EB7E8(v83, v102, &qword_27C838E80, &qword_20D977768);
      v86 = v103;
      sub_20D7EB7E8(v84, v103, &qword_27C838E88, &qword_20D977770);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EE8, &qword_20D9777D0);
      sub_20D7EB7E8(v85, v86 + *(v87 + 48), &qword_27C838E80, &qword_20D977768);
      sub_20D7E3944(v85, &qword_27C838E80, &qword_20D977768);
      sub_20D7E3944(v84, &qword_27C838E88, &qword_20D977770);
      sub_20D7EB7E8(v86, v107, &qword_27C838E78, &unk_20D977758);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838ED0, &qword_20D9777B8);
      sub_20D7EBC4C(&qword_281124CC0, &qword_27C838E78, &unk_20D977758);
      sub_20D7EBC4C(&qword_281124CB8, &qword_27C838ED0, &qword_20D9777B8);
      v64 = v109;
      sub_20D9741B8();
      sub_20D7E3944(v86, &qword_27C838E78, &unk_20D977758);
      sub_20D7E3944(v83, &qword_27C838E80, &qword_20D977768);
      sub_20D7E3944(v112, &qword_27C838E88, &qword_20D977770);
      (*(v111 + 8))(v106, v95);
    }

    sub_20D7EB7E8(v64, v114, &qword_27C838EB0, &qword_20D977798);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124CD0, &qword_27C838EA0, &qword_20D977788);
    sub_20D7F5228();
    v47 = v105;
    sub_20D9741B8();
    v68 = v64;
    v69 = &qword_27C838EB0;
    v70 = &qword_20D977798;
  }

  else
  {
    *v31 = sub_20D974088();
    *(v31 + 1) = 0;
    v31[16] = 1;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EF0, &qword_20D9777D8);
    sub_20D7F228C(v56, &v31[*(v65 + 44)]);
    sub_20D7EB7E8(v31, v29, &qword_27C838EA8, &qword_20D977790);
    v66 = v105;
    sub_20D7EB7E8(v29, v105, &qword_27C838EA8, &qword_20D977790);
    v67 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EF8, &qword_20D9777E0) + 48);
    *v67 = 0;
    *(v67 + 8) = 1;
    sub_20D7E3944(v29, &qword_27C838EA8, &qword_20D977790);
    sub_20D7EB7E8(v66, v114, &qword_27C838EA0, &qword_20D977788);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124CD0, &qword_27C838EA0, &qword_20D977788);
    sub_20D7F5228();
    sub_20D9741B8();
    sub_20D7E3944(v66, &qword_27C838EA0, &qword_20D977788);
    v68 = v31;
    v69 = &qword_27C838EA8;
    v70 = &qword_20D977790;
  }

  sub_20D7E3944(v68, v69, v70);
  v88 = v115;
  v89 = v120;
  sub_20D7EB7E8(v115, v120, &qword_27C838EC0, &unk_20D977FE0);
  v90 = v116;
  sub_20D7EB7E8(v47, v116, &qword_27C838EB8, &unk_20D9777A0);
  v91 = v119;
  sub_20D7EB7E8(v89, v119, &qword_27C838EC0, &unk_20D977FE0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838ED8, &qword_20D9777C0);
  sub_20D7EB7E8(v90, v91 + *(v92 + 48), &qword_27C838EB8, &unk_20D9777A0);
  sub_20D7E3944(v47, &qword_27C838EB8, &unk_20D9777A0);
  sub_20D7E3944(v88, &qword_27C838EC0, &unk_20D977FE0);
  sub_20D7E3944(v90, &qword_27C838EB8, &unk_20D9777A0);
  return sub_20D7E3944(v89, &qword_27C838EC0, &unk_20D977FE0);
}

uint64_t sub_20D7F1FE0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v25 = sub_20D971FF8();
  v26 = v8;
  sub_20D7E1EF8();
  v9 = sub_20D9745C8();
  v11 = v10;
  v13 = v12;
  LODWORD(v25) = sub_20D974248();
  v14 = sub_20D974518();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_20D7EADC0(v9, v11, v13 & 1);

  v25 = v14;
  v26 = v16;
  v27 = v18 & 1;
  v28 = v20;
  sub_20D9747D8();
  sub_20D7EADC0(v14, v16, v18 & 1);

  sub_20D7EB7E8(v7, v5, &qword_27C838F18, &unk_20D977860);
  v21 = v24;
  sub_20D7EB7E8(v5, v24, &qword_27C838F18, &unk_20D977860);
  v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F20, &unk_20D97C950) + 48);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_20D7E3944(v7, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v5, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D7F228C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_20D974458();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F00, &qword_20D9777E8);
  v8 = *(v7 - 8);
  v46 = v7 - 8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v52 = a1;
  v48 = GridForecastError.mediumUIString.getter();
  v49 = v14;
  sub_20D7E1EF8();
  v15 = sub_20D9745C8();
  v17 = v16;
  v19 = v18;
  v20 = sub_20D974548();
  v22 = v21;
  v24 = v23;
  sub_20D7EADC0(v15, v17, v19 & 1);

  LODWORD(v48) = sub_20D974248();
  v25 = sub_20D974518();
  v27 = v26;
  LOBYTE(v15) = v28;
  v30 = v29;
  sub_20D7EADC0(v20, v22, v24 & 1);

  v48 = v25;
  v49 = v27;
  v50 = v15 & 1;
  v51 = v30;
  sub_20D974868();
  sub_20D7EADC0(v25, v27, v15 & 1);

  sub_20D974398();
  v32 = v43;
  v31 = v44;
  (*(v43 + 104))(v6, *MEMORY[0x277CE0A10], v44);
  v33 = sub_20D974478();

  (*(v32 + 8))(v6, v31);
  KeyPath = swift_getKeyPath();
  v35 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F08, &qword_20D977820) + 36)];
  *v35 = KeyPath;
  v35[1] = v33;
  v36 = swift_getKeyPath();
  v37 = v45;
  v38 = &v13[*(v46 + 44)];
  *v38 = v36;
  v38[8] = 0;
  sub_20D7EB7E8(v13, v37, &qword_27C838F00, &qword_20D9777E8);
  v39 = v47;
  sub_20D7EB7E8(v37, v47, &qword_27C838F00, &qword_20D9777E8);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F10, &qword_20D977858) + 48);
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_20D7E3944(v13, &qword_27C838F00, &qword_20D9777E8);
  return sub_20D7E3944(v37, &qword_27C838F00, &qword_20D9777E8);
}

uint64_t sub_20D7F260C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F28, &qword_20D977870);
  v1 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v34 = v33 - v2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F30, &qword_20D977878);
  v3 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v5 = v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F38, &qword_20D977880);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F40, &qword_20D977888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F48, &qword_20D977890);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F50, &qword_20D977898);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v33 - v23;
  if (EnergyWindow.isCleanEnergy.getter())
  {
    sub_20D7F2C08(v17);
    v34 = v24;
    sub_20D7EB7E8(v17, v9, &qword_27C838F48, &qword_20D977890);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124CE8, &qword_27C838F48, &qword_20D977890);
    sub_20D7EBC4C(&qword_281124CE0, &qword_27C838F28, &qword_20D977870);
    v24 = v34;
    sub_20D9741B8();
    sub_20D7EB7E8(v13, v5, &qword_27C838F40, &qword_20D977888);
    swift_storeEnumTagMultiPayload();
    sub_20D7F58AC();
    sub_20D9741B8();
    sub_20D7E3944(v13, &qword_27C838F40, &qword_20D977888);
    v25 = v17;
    v26 = &qword_27C838F48;
    v27 = &qword_20D977890;
  }

  else
  {
    v33[1] = v10;
    if (EnergyWindow.isStrainedEnergy.getter())
    {
      v28 = v34;
      sub_20D7F30F8(v34);
      sub_20D7EB7E8(v28, v9, &qword_27C838F28, &qword_20D977870);
      swift_storeEnumTagMultiPayload();
      sub_20D7EBC4C(&qword_281124CE8, &qword_27C838F48, &qword_20D977890);
      sub_20D7EBC4C(&qword_281124CE0, &qword_27C838F28, &qword_20D977870);
      sub_20D9741B8();
      sub_20D7EB7E8(v13, v5, &qword_27C838F40, &qword_20D977888);
      swift_storeEnumTagMultiPayload();
      sub_20D7F58AC();
      sub_20D9741B8();
      sub_20D7E3944(v13, &qword_27C838F40, &qword_20D977888);
      v25 = v28;
    }

    else
    {
      v29 = v34;
      sub_20D7F3764(v34);
      sub_20D7EB7E8(v29, v5, &qword_27C838F28, &qword_20D977870);
      swift_storeEnumTagMultiPayload();
      sub_20D7F58AC();
      sub_20D7EBC4C(&qword_281124CE0, &qword_27C838F28, &qword_20D977870);
      sub_20D9741B8();
      v25 = v29;
    }

    v26 = &qword_27C838F28;
    v27 = &qword_20D977870;
  }

  sub_20D7E3944(v25, v26, v27);
  sub_20D7EB7E8(v24, v22, &qword_27C838F50, &qword_20D977898);
  v30 = v37;
  sub_20D7EB7E8(v22, v37, &qword_27C838F50, &qword_20D977898);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F58, &unk_20D9778A0) + 48);
  *v31 = 0;
  *(v31 + 8) = 1;
  sub_20D7E3944(v24, &qword_27C838F50, &qword_20D977898);
  return sub_20D7E3944(v22, &qword_27C838F50, &qword_20D977898);
}

uint64_t sub_20D7F2C08@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v44 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F60, &unk_20D9778B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  if (qword_281124D88 != -1)
  {
    swift_once();
  }

  v17 = qword_28112AB60;
  v18 = (v9 + *(v6 + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
  v20 = *MEMORY[0x277CE1050];
  v21 = sub_20D9749F8();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  *v9 = v17;
  sub_20D7F598C();

  sub_20D9747F8();
  sub_20D7E3944(v9, &qword_27C838BB0, &qword_20D977D40);
  *&v16[*(v10 + 36)] = sub_20D974248();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v48 = sub_20D971FF8();
  v49 = v22;
  sub_20D7E1EF8();
  v23 = sub_20D9745C8();
  v25 = v24;
  v27 = v26;
  v28 = sub_20D974548();
  v30 = v29;
  v32 = v31;
  sub_20D7EADC0(v23, v25, v27 & 1);

  LODWORD(v48) = sub_20D974248();
  v33 = sub_20D974518();
  v35 = v34;
  LOBYTE(v23) = v36;
  v38 = v37;
  sub_20D7EADC0(v28, v30, v32 & 1);

  v48 = v33;
  v49 = v35;
  v50 = v23 & 1;
  v51 = v38;
  v39 = v45;
  sub_20D9747D8();
  sub_20D7EADC0(v33, v35, v23 & 1);

  sub_20D7EB7E8(v16, v14, &qword_27C838F60, &unk_20D9778B0);
  v40 = v47;
  sub_20D7EB7E8(v39, v47, &qword_27C838F18, &unk_20D977860);
  v41 = v46;
  sub_20D7EB7E8(v14, v46, &qword_27C838F60, &unk_20D9778B0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F68, &qword_20D9778F0);
  sub_20D7EB7E8(v40, v41 + *(v42 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v39, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v16, &qword_27C838F60, &unk_20D9778B0);
  sub_20D7E3944(v40, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v14, &qword_27C838F60, &unk_20D9778B0);
}

uint64_t sub_20D7F30F8@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_20D9726E8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v49[1] = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D975058();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F70, &qword_20D9778F8);
  v6 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v8 = v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F78, &unk_20D977900);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v53 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v49 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F60, &unk_20D9778B0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v50 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v49 - v22;
  if (qword_27C838768 != -1)
  {
    swift_once();
  }

  v24 = qword_27C840E80;
  v25 = (v17 + *(v14 + 36));
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
  v27 = *MEMORY[0x277CE1050];
  v28 = sub_20D9749F8();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  *v17 = v24;
  sub_20D7F598C();

  sub_20D9747F8();
  sub_20D7E3944(v17, &qword_27C838BB0, &qword_20D977D40);
  *&v23[*(v18 + 36)] = sub_20D974248();
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v29 = qword_28112ABE8;
  sub_20D9726B8();
  *&v63[0] = sub_20D975108();
  *(&v63[0] + 1) = v30;
  sub_20D7E1EF8();
  v31 = sub_20D9745C8();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = sub_20D974348();
  sub_20D973AD8();
  v60 = v35 & 1;
  v59 = 0;
  *&v55 = v31;
  *(&v55 + 1) = v33;
  LOBYTE(v56) = v35 & 1;
  *(&v56 + 1) = *v62;
  DWORD1(v56) = *&v62[3];
  *(&v56 + 1) = v37;
  LOBYTE(v57) = v38;
  *(&v57 + 1) = *v61;
  DWORD1(v57) = *&v61[3];
  *(&v57 + 1) = v39;
  *v58 = v40;
  *&v58[8] = v41;
  *&v58[16] = v42;
  v58[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D18, &qword_20D9775B0);
  sub_20D7F021C();
  sub_20D9747F8();
  v63[2] = v57;
  v64[0] = *v58;
  *(v64 + 9) = *&v58[9];
  v63[0] = v55;
  v63[1] = v56;
  sub_20D7E3944(v63, &qword_27C838D18, &qword_20D9775B0);
  *&v8[*(v51 + 36)] = sub_20D974248();
  sub_20D7F5A44();
  v43 = v52;
  sub_20D9747D8();
  sub_20D7E3944(v8, &qword_27C838F70, &qword_20D9778F8);
  v44 = v50;
  sub_20D7EB7E8(v23, v50, &qword_27C838F60, &unk_20D9778B0);
  v45 = v53;
  sub_20D7EB7E8(v43, v53, &qword_27C838F78, &unk_20D977900);
  v46 = v54;
  sub_20D7EB7E8(v44, v54, &qword_27C838F60, &unk_20D9778B0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F90, &qword_20D977918);
  sub_20D7EB7E8(v45, v46 + *(v47 + 48), &qword_27C838F78, &unk_20D977900);
  sub_20D7E3944(v43, &qword_27C838F78, &unk_20D977900);
  sub_20D7E3944(v23, &qword_27C838F60, &unk_20D9778B0);
  sub_20D7E3944(v45, &qword_27C838F78, &unk_20D977900);
  return sub_20D7E3944(v44, &qword_27C838F60, &unk_20D9778B0);
}

uint64_t sub_20D7F3764@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F70, &qword_20D9778F8);
  v1 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v3 = &v43 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F78, &unk_20D977900);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v43 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F60, &unk_20D9778B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  if (qword_27C838760 != -1)
  {
    swift_once();
  }

  v20 = qword_27C840E78;
  v21 = (v12 + *(v9 + 36));
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
  v23 = *MEMORY[0x277CE1050];
  v24 = sub_20D9749F8();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  *v12 = v20;
  sub_20D7F598C();

  sub_20D9747F8();
  sub_20D7E3944(v12, &qword_27C838BB0, &qword_20D977D40);
  *&v19[*(v13 + 36)] = sub_20D974248();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  *&v56[0] = sub_20D971FF8();
  *(&v56[0] + 1) = v25;
  sub_20D7E1EF8();
  v26 = sub_20D9745C8();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = sub_20D974348();
  sub_20D973AD8();
  v53 = v30 & 1;
  v52 = 0;
  *&v48 = v26;
  *(&v48 + 1) = v28;
  LOBYTE(v49) = v30 & 1;
  *(&v49 + 1) = *v55;
  DWORD1(v49) = *&v55[3];
  *(&v49 + 1) = v32;
  LOBYTE(v50) = v33;
  *(&v50 + 1) = *v54;
  DWORD1(v50) = *&v54[3];
  *(&v50 + 1) = v34;
  *v51 = v35;
  *&v51[8] = v36;
  *&v51[16] = v37;
  v51[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838D18, &qword_20D9775B0);
  sub_20D7F021C();
  sub_20D9747F8();
  v56[2] = v50;
  v57[0] = *v51;
  *(v57 + 9) = *&v51[9];
  v56[0] = v48;
  v56[1] = v49;
  sub_20D7E3944(v56, &qword_27C838D18, &qword_20D9775B0);
  *&v3[*(v44 + 36)] = sub_20D974248();
  sub_20D7F5A44();
  v38 = v45;
  sub_20D9747D8();
  sub_20D7E3944(v3, &qword_27C838F70, &qword_20D9778F8);
  sub_20D7EB7E8(v19, v17, &qword_27C838F60, &unk_20D9778B0);
  v39 = v46;
  sub_20D7EB7E8(v38, v46, &qword_27C838F78, &unk_20D977900);
  v40 = v47;
  sub_20D7EB7E8(v17, v47, &qword_27C838F60, &unk_20D9778B0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F90, &qword_20D977918);
  sub_20D7EB7E8(v39, v40 + *(v41 + 48), &qword_27C838F78, &unk_20D977900);
  sub_20D7E3944(v38, &qword_27C838F78, &unk_20D977900);
  sub_20D7E3944(v19, &qword_27C838F60, &unk_20D9778B0);
  sub_20D7E3944(v39, &qword_27C838F78, &unk_20D977900);
  return sub_20D7E3944(v17, &qword_27C838F60, &unk_20D9778B0);
}

uint64_t sub_20D7F3D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v122 = a3;
  v5 = sub_20D972628();
  v116 = *(v5 - 8);
  v123 = v116;
  v6 = *(v116 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v111 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v115 = &v104 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v112 = &v104 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v121 = &v104 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v104 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v114 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v117 = &v104 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v113 = (&v104 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v104 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v104 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v104 - v31;
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v33 = sub_20D9734F8();
  v34 = __swift_project_value_buffer(v33, qword_2811250C8);
  v119 = a1;
  sub_20D7EB7E8(a1, v32, &qword_27C8389E8, &qword_20D9768D0);
  v120 = a2;
  sub_20D7EB7E8(a2, v30, &qword_27C8389E8, &qword_20D9768D0);
  v35 = v123 + 16;
  v110 = *(v123 + 16);
  v110(v16, v122, v5);
  v118 = v34;
  v36 = sub_20D9734D8();
  v37 = sub_20D975478();
  v38 = v5;
  if (os_log_type_enabled(v36, v37))
  {
    v106 = v37;
    v107 = v30;
    v108 = v36;
    v104 = v16;
    v109 = v35;
    v39 = v5;
    v40 = 0x3E6C696E3CLL;
    v41 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v124[0] = v105;
    *v41 = 136315906;
    *(v41 + 4) = sub_20D7F4DC8(0xD000000000000035, 0x800000020D9831C0, v124);
    *(v41 + 12) = 2080;
    sub_20D7EB7E8(v32, v27, &qword_27C8389E8, &qword_20D9768D0);
    v42 = v123;
    v43 = *(v123 + 48);
    if (v43(v27, 1, v5) == 1)
    {
      sub_20D7E3944(v27, &qword_27C8389E8, &qword_20D9768D0);
      v44 = 0xE500000000000000;
      v45 = 0x3E6C696E3CLL;
    }

    else
    {
      v50 = v42;
      v45 = sub_20D972418();
      v44 = v51;
      (*(v50 + 8))(v27, v39);
    }

    sub_20D7E3944(v32, &qword_27C8389E8, &qword_20D9768D0);
    v52 = sub_20D7F4DC8(v45, v44, v124);

    *(v41 + 14) = v52;
    *(v41 + 22) = 2080;
    v53 = v107;
    v54 = v113;
    sub_20D7EB7E8(v107, v113, &qword_27C8389E8, &qword_20D9768D0);
    if (v43(v54, 1, v39) == 1)
    {
      sub_20D7E3944(v54, &qword_27C8389E8, &qword_20D9768D0);
      v55 = 0xE500000000000000;
      v47 = v121;
      v46 = v123;
    }

    else
    {
      v40 = sub_20D972418();
      v55 = v56;
      v46 = v123;
      (*(v123 + 8))(v54, v39);
      v47 = v121;
    }

    v48 = v119;
    v49 = v117;
    sub_20D7E3944(v53, &qword_27C8389E8, &qword_20D9768D0);
    v57 = sub_20D7F4DC8(v40, v55, v124);

    *(v41 + 24) = v57;
    *(v41 + 32) = 2080;
    v58 = v104;
    v59 = sub_20D972418();
    v61 = v60;
    v113 = v46[1];
    (v113)(v58, v39);
    v62 = sub_20D7F4DC8(v59, v61, v124);

    *(v41 + 34) = v62;
    v63 = v108;
    _os_log_impl(&dword_20D7C9000, v108, v106, "%s: start/end: %s, %s widgetStartDate: %s", v41, 0x2Au);
    v64 = v105;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v64, -1, -1);
    MEMORY[0x20F324260](v41, -1, -1);

    v38 = v39;
  }

  else
  {

    v46 = v123;
    v113 = *(v123 + 8);
    (v113)(v16, v5);
    sub_20D7E3944(v30, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(v32, &qword_27C8389E8, &qword_20D9768D0);
    v47 = v121;
    v48 = v119;
    v49 = v117;
  }

  sub_20D7EB7E8(v48, v49, &qword_27C8389E8, &qword_20D9768D0);
  v65 = v46[6];
  v66 = v65(v49, 1, v38);
  v67 = v120;
  if (v66 == 1)
  {
    v68 = v49;
LABEL_16:
    sub_20D7E3944(v68, &qword_27C8389E8, &qword_20D9768D0);
    v72 = sub_20D9734D8();
    v73 = sub_20D975478();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v124[0] = v75;
      *v74 = 136315138;
      *(v74 + 4) = sub_20D7F4DC8(0xD000000000000035, 0x800000020D9831C0, v124);
      _os_log_impl(&dword_20D7C9000, v72, v73, "%s: TRUE: missing a date...", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x20F324260](v75, -1, -1);
      MEMORY[0x20F324260](v74, -1, -1);
    }

    return 1;
  }

  v69 = v115;
  v70 = v46[4];
  v70(v47, v49, v38);
  v71 = v67;
  v68 = v114;
  sub_20D7EB7E8(v71, v114, &qword_27C8389E8, &qword_20D9768D0);
  if (v65(v68, 1, v38) == 1)
  {
    (v113)(v47, v38);
    goto LABEL_16;
  }

  v77 = v47;
  v78 = v112;
  v70(v112, v68, v38);
  sub_20D972458();
  if (v79 < 32400.0)
  {
    v80 = v69;
    v81 = v110;
    v110(v69, v77, v38);
    v82 = v111;
    v81(v111, v78, v38);
    v83 = sub_20D9734D8();
    v84 = sub_20D975478();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v124[0] = v123;
      *v85 = 136315650;
      *(v85 + 4) = sub_20D7F4DC8(0xD000000000000035, 0x800000020D9831C0, v124);
      *(v85 + 12) = 2080;
      sub_20D7F5854();
      v86 = v83;
      v87 = sub_20D9757A8();
      v89 = v88;
      v90 = v80;
      v91 = v113;
      (v113)(v90, v38);
      v92 = sub_20D7F4DC8(v87, v89, v124);

      *(v85 + 14) = v92;
      *(v85 + 22) = 2080;
      v93 = sub_20D9757A8();
      v95 = v94;
      v91(v82, v38);
      v96 = sub_20D7F4DC8(v93, v95, v124);

      *(v85 + 24) = v96;
      _os_log_impl(&dword_20D7C9000, v86, v84, "%s: TRUE for: %s, %s", v85, 0x20u);
      v97 = v123;
      swift_arrayDestroy();
      MEMORY[0x20F324260](v97, -1, -1);
      MEMORY[0x20F324260](v85, -1, -1);

      v91(v112, v38);
      v91(v121, v38);
    }

    else
    {

      v103 = v113;
      (v113)(v82, v38);
      v103(v69, v38);
      v103(v78, v38);
      v103(v77, v38);
    }

    return 1;
  }

  v98 = sub_20D9734D8();
  v99 = sub_20D975478();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v124[0] = v101;
    *v100 = 136315394;
    *(v100 + 4) = sub_20D7F4DC8(0xD000000000000035, 0x800000020D9831C0, v124);
    *(v100 + 12) = 2048;
    *(v100 + 14) = 9;
    _os_log_impl(&dword_20D7C9000, v98, v99, "%s: FALSE: end date is beyond %ld hrs...", v100, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v101);
    MEMORY[0x20F324260](v101, -1, -1);
    MEMORY[0x20F324260](v100, -1, -1);
  }

  v102 = v113;
  (v113)(v78, v38);
  v102(v77, v38);
  return 0;
}

uint64_t sub_20D7F4934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  LOBYTE(v28) = 1;
  v28 = _s12HomeEnergyUI19GridForecastStringsV09localizedB12RatingString3for5styleSS0A8Services0B6WindowV_AC0I5StyleOtFZ_0(a1, &v28);
  v29 = v10;
  v28 = sub_20D9751B8();
  v29 = v11;
  sub_20D7E1EF8();
  v12 = sub_20D9745C8();
  v14 = v13;
  v16 = v15;
  LODWORD(v28) = sub_20D974258();
  v17 = sub_20D974518();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_20D7EADC0(v12, v14, v16 & 1);

  v28 = v17;
  v29 = v19;
  v21 &= 1u;
  v30 = v21;
  v31 = v23;
  sub_20D9747D8();
  sub_20D7EADC0(v17, v19, v21);

  sub_20D7EB7E8(v9, v7, &qword_27C838F18, &unk_20D977860);
  v24 = v27;
  sub_20D7EB7E8(v7, v27, &qword_27C838F18, &unk_20D977860);
  v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F20, &unk_20D97C950) + 48);
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_20D7E3944(v9, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v7, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D7F4B8C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E50, &qword_20D9776A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  *v6 = sub_20D974168();
  *(v6 + 1) = 0x3FE0000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E58, &qword_20D9776B0);
  sub_20D7F1118(v1, &v6[*(v7 + 44)]);
  *&v6[*(v3 + 36)] = 0;
  sub_20D7F4E94();
  sub_20D974718();
  sub_20D7E3944(v6, &qword_27C838E50, &qword_20D9776A8);
  v8 = sub_20D973DC8();
  v9 = sub_20D974318();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E70, &qword_20D9776C8);
  v11 = a1 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
  return result;
}

uint64_t sub_20D7F4CB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20D973FB8();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for RectangularLockEnergyForecastView()
{
  result = qword_281126DF0;
  if (!qword_281126DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D7F4D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7F4DC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20D7F5378(v11, 0, 0, 1, a1, a2);
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
    sub_20D7EB630(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_20D7F4E94()
{
  result = qword_281124F48;
  if (!qword_281124F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838E50, &qword_20D9776A8);
    sub_20D7EBC4C(&qword_281124D20, &qword_27C838E60, &qword_20D9776B8);
    sub_20D7EBC4C(&qword_281124FF0, &qword_27C838E68, &qword_20D9776C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F48);
  }

  return result;
}

void sub_20D7F4FBC()
{
  sub_20D7F5110(319, &qword_281125000, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_20D972628();
    if (v1 <= 0x3F)
    {
      sub_20D7F50B8();
      if (v2 <= 0x3F)
      {
        sub_20D7F5110(319, qword_2811274E0, &type metadata for GridForecastError, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20D7F50B8()
{
  if (!qword_281125120)
  {
    sub_20D972998();
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, &qword_281125120);
    }
  }
}

void sub_20D7F5110(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_20D7F5160()
{
  result = qword_281124F88;
  if (!qword_281124F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838E70, &qword_20D9776C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838E50, &qword_20D9776A8);
    sub_20D7F4E94();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F88);
  }

  return result;
}

unint64_t sub_20D7F5228()
{
  result = qword_281124DF8;
  if (!qword_281124DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838EB0, &qword_20D977798);
    sub_20D7EBC4C(&qword_281124CC0, &qword_27C838E78, &unk_20D977758);
    sub_20D7EBC4C(&qword_281124CB8, &qword_27C838ED0, &qword_20D9777B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124DF8);
  }

  return result;
}

uint64_t sub_20D7F5308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EC0, &unk_20D977FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20D7F5378(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20D7F5484(a5, a6);
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
    result = sub_20D9756B8();
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

uint64_t sub_20D7F5484(uint64_t a1, unint64_t a2)
{
  v4 = sub_20D7F54D0(a1, a2);
  sub_20D7F5600(&unk_282496C20);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_20D7F54D0(uint64_t a1, unint64_t a2)
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

  v6 = sub_20D7F56EC(v5, 0);
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

  result = sub_20D9756B8();
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
        v10 = sub_20D975198();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20D7F56EC(v10, 0);
        result = sub_20D975668();
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

uint64_t sub_20D7F5600(uint64_t result)
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

  result = sub_20D7F5760(result, v12, 1, v3);
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

void *sub_20D7F56EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F98, &qword_20D977920);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20D7F5760(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F98, &qword_20D977920);
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

unint64_t sub_20D7F5854()
{
  result = qword_281127730;
  if (!qword_281127730)
  {
    sub_20D972628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127730);
  }

  return result;
}

unint64_t sub_20D7F58AC()
{
  result = qword_281124E00;
  if (!qword_281124E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838F40, &qword_20D977888);
    sub_20D7EBC4C(&qword_281124CE8, &qword_27C838F48, &qword_20D977890);
    sub_20D7EBC4C(&qword_281124CE0, &qword_27C838F28, &qword_20D977870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E00);
  }

  return result;
}

unint64_t sub_20D7F598C()
{
  result = qword_281126FE8;
  if (!qword_281126FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838BB0, &qword_20D977D40);
    sub_20D7EBC4C(&qword_281126F40, &qword_27C838AE0, &qword_20D976F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FE8);
  }

  return result;
}

unint64_t sub_20D7F5A44()
{
  result = qword_27C838F80;
  if (!qword_27C838F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838F70, &qword_20D9778F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838D18, &qword_20D9775B0);
    sub_20D7F021C();
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281124DE8, &qword_27C838F88, &qword_20D977910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C838F80);
  }

  return result;
}

uint64_t sub_20D7F5B3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D974048();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_20D7EB7E8(v2, &v17 - v11, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973D58();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_20D975468();
    v16 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t InlineEducationTip.init(hideTipFunction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_20D9744B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for InlineEducationTip();
  v12 = a3 + v11[5];
  v18[15] = 1;
  sub_20D974A38();
  v13 = v20;
  *v12 = v19;
  *(v12 + 1) = v13;
  v14 = v11[6];
  v15 = v11[7];
  v16 = (a3 + v14);
  v19 = 0x3FF0000000000000;
  (*(v7 + 104))(v10, *MEMORY[0x277CE0A68], v6);
  sub_20D7E6420();
  result = sub_20D973B68();
  *v16 = a1;
  v16[1] = a2;
  return result;
}

uint64_t InlineEducationTip.body.getter@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA8, &qword_20D977968);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FB0, &qword_20D977970);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FB8, &qword_20D977978);
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v38);
  v13 = &v38 - v12;
  v14 = type metadata accessor for InlineEducationTip();
  v15 = (v1 + *(v14 + 20));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v41) = v16;
  *(&v41 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A48();
  v18 = 1;
  if (LOBYTE(v40) == 1)
  {
    sub_20D7F62C0(v5);
    *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC8, &qword_20D977988) + 36)] = 256;
    v19 = sub_20D974318();
    v20 = &v5[*(v2 + 36)];
    *v20 = v19;
    *(v20 + 8) = 0u;
    *(v20 + 24) = 0u;
    v20[40] = 1;
    sub_20D974C48();
    sub_20D973E08();
    sub_20D7EAF18(v5, v9, &qword_27C838FA8, &qword_20D977968);
    v21 = &v9[*(v6 + 36)];
    v22 = v46;
    *(v21 + 4) = v45;
    *(v21 + 5) = v22;
    *(v21 + 6) = v47;
    v23 = v42;
    *v21 = v41;
    *(v21 + 1) = v23;
    v24 = v44;
    *(v21 + 2) = v43;
    *(v21 + 3) = v24;
    v25 = sub_20D974C48();
    v27 = v26;
    v28 = &v13[*(v38 + 36)];
    v29 = *(v14 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    sub_20D973B78();
    v30 = v40 * 24.0;
    v31 = *(sub_20D973DE8() + 20);
    v32 = *MEMORY[0x277CE0118];
    v33 = sub_20D974118();
    (*(*(v33 - 8) + 104))(v28 + v31, v32, v33);
    *v28 = v30;
    v28[1] = v30;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD0, &unk_20D97BFC0);
    v35 = v28 + *(v34 + 52);
    sub_20D974C08();
    *(v28 + *(v34 + 56)) = 256;
    v36 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD8, &qword_20D977990) + 36));
    *v36 = v25;
    v36[1] = v27;
    sub_20D7EAF18(v9, v13, &qword_27C838FB0, &qword_20D977970);
    sub_20D7EAF18(v13, v39, &qword_27C838FB8, &qword_20D977978);
    v18 = 0;
  }

  return (*(v10 + 56))(v39, v18, 1, v38);
}

uint64_t sub_20D7F62C0@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839010, &qword_20D977A48);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v68 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = (&v63 - v6);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839018, &qword_20D977A50);
  v7 = *(*(v64 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v64);
  v66 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = &v63 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839000, &qword_20D977A38);
  v11 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v13 = &v63 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839020, &qword_20D977A58);
  v14 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v16 = &v63 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FF8, &qword_20D977A30);
  v17 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v19 = &v63 - v18;
  v20 = sub_20D973D58();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;
  sub_20D7F5B3C(v24);
  v26 = sub_20D973D38();
  v27 = *(v21 + 8);
  v27(v24, v20);
  if (v26)
  {
    *v19 = sub_20D974168();
    *(v19 + 1) = 0;
    v19[16] = 1;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839048, &unk_20D977A80);
    sub_20D7F771C(v25, &v19[*(v28 + 44)]);
    v29 = &qword_27C838FF8;
    v30 = &qword_20D977A30;
    sub_20D7EB7E8(v19, v16, &qword_27C838FF8, &qword_20D977A30);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124D10, &qword_27C838FF8, &qword_20D977A30);
    sub_20D7F88D0();
    sub_20D9741B8();
    v31 = v19;
  }

  else
  {
    v63 = v16;
    *v13 = sub_20D974078();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v32 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839028, &qword_20D977A60) + 44)];
    if (qword_281126F20 != -1)
    {
      swift_once();
    }

    v33 = qword_28112ABF0;
    (*(v21 + 104))(v24, *MEMORY[0x277CDF9D8], v20);
    v34 = v65;
    sub_20D965890(v24, v33, v65);
    v27(v24, v20);
    v35 = sub_20D974348();
    sub_20D973AD8();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839030, &qword_20D977A68) + 36);
    *v44 = v35;
    *(v44 + 8) = v37;
    *(v44 + 16) = v39;
    *(v44 + 24) = v41;
    *(v44 + 32) = v43;
    *(v44 + 40) = 0;
    v45 = sub_20D974368();
    sub_20D973AD8();
    v46 = v34 + *(v64 + 36);
    *v46 = v45;
    *(v46 + 8) = v47;
    *(v46 + 16) = v48;
    *(v46 + 24) = v49;
    *(v46 + 32) = v50;
    *(v46 + 40) = 0;
    v51 = sub_20D974168();
    v52 = v67;
    *v67 = v51;
    *(v52 + 8) = 0;
    *(v52 + 16) = 0;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839038, &qword_20D977A70);
    sub_20D7F7D88(v52 + *(v53 + 44));
    v54 = v66;
    sub_20D7EB7E8(v34, v66, &qword_27C839018, &qword_20D977A50);
    v55 = v68;
    sub_20D7EB7E8(v52, v68, &qword_27C839010, &qword_20D977A48);
    sub_20D7EB7E8(v54, v32, &qword_27C839018, &qword_20D977A50);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839040, &qword_20D977A78);
    sub_20D7EB7E8(v55, v32 + *(v56 + 48), &qword_27C839010, &qword_20D977A48);
    sub_20D7E3944(v52, &qword_27C839010, &qword_20D977A48);
    sub_20D7E3944(v34, &qword_27C839018, &qword_20D977A50);
    sub_20D7E3944(v55, &qword_27C839010, &qword_20D977A48);
    sub_20D7E3944(v54, &qword_27C839018, &qword_20D977A50);
    LOBYTE(v55) = sub_20D974328();
    sub_20D973AD8();
    v57 = &v13[*(v69 + 36)];
    *v57 = v55;
    *(v57 + 1) = v58;
    *(v57 + 2) = v59;
    *(v57 + 3) = v60;
    *(v57 + 4) = v61;
    v57[40] = 0;
    v29 = &qword_27C839000;
    v30 = &qword_20D977A38;
    sub_20D7EB7E8(v13, v63, &qword_27C839000, &qword_20D977A38);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124D10, &qword_27C838FF8, &qword_20D977A30);
    sub_20D7F88D0();
    sub_20D9741B8();
    v31 = v13;
  }

  return sub_20D7E3944(v31, v29, v30);
}

uint64_t sub_20D7F6974@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - v4;
  v6 = type metadata accessor for InlineEducationTip();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839088, &qword_20D977AC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839090, &qword_20D977AD0);
  v35 = *(v13 - 8);
  v14 = *(v35 + 64);
  MEMORY[0x28223BE20](v13);
  v34 = &v33 - v15;
  sub_20D7F8988(v1, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_20D7F89EC(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_20D974A88();
  v18 = sub_20D974258();
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839098, &qword_20D977AD8) + 36)] = v18;
  v19 = sub_20D974398();
  KeyPath = swift_getKeyPath();
  v21 = v9;
  v22 = &v12[*(v9 + 36)];
  *v22 = KeyPath;
  v22[1] = v19;
  v23 = *MEMORY[0x277CDFA10];
  v24 = sub_20D973D58();
  (*(*(v24 - 8) + 104))(v5, v23, v24);
  sub_20D7F8AB0();
  v25 = v5;
  result = sub_20D974FD8();
  if (result)
  {
    v27 = sub_20D7F8B08();
    v28 = sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
    v29 = v2;
    v31 = v34;
    v30 = v35;
    v32 = v28;
    sub_20D974778();
    sub_20D7E3944(v25, &qword_27C839080, &qword_20D977AC0);
    sub_20D7E3944(v12, &qword_27C839088, &qword_20D977AC8);
    v37 = v21;
    v38 = v29;
    v39 = v27;
    v40 = v32;
    swift_getOpaqueTypeConformance2();
    sub_20D9747D8();
    return (*(v30 + 8))(v31, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D7F6D94(uint64_t a1)
{
  v2 = type metadata accessor for InlineEducationTip();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2811270D8 != -1)
  {
    swift_once();
  }

  v6 = sub_20D9734F8();
  __swift_project_value_buffer(v6, qword_2811270E0);
  v7 = sub_20D9734D8();
  v8 = sub_20D975448();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20D7C9000, v7, v8, "Tapped X button in education tip", v9, 2u);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  v10 = a1 + *(v2 + 20);
  v12 = *(v10 + 8);
  v27 = *v10;
  v11 = v27;
  v28 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A48();
  v25 = v11;
  v26 = v12;
  v24[7] = (v29 & 1) == 0;
  sub_20D974A58();

  v14 = a1 + *(v2 + 24);
  v15 = *v14;
  if (*v14)
  {
    v16 = *(v14 + 8);
    sub_20D7F8988(a1, v5);

    v17 = sub_20D9734D8();
    v18 = sub_20D975478();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      v20 = &v5[*(v2 + 20)];
      v21 = *v20;
      v22 = *(v20 + 1);
      v27 = v21;
      v28 = v22;
      sub_20D974A48();
      v23 = v25;
      sub_20D7F8CA4(v5);
      *(v19 + 4) = v23;
      _os_log_impl(&dword_20D7C9000, v17, v18, "Education tip has function to hide. Should be shown -> %{BOOL}d", v19, 8u);
      MEMORY[0x20F324260](v19, -1, -1);
    }

    else
    {
      sub_20D7F8CA4(v5);
    }

    v15();
    return sub_20D7DD774(v15);
  }

  return result;
}

uint64_t sub_20D7F7050@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D9749B8();
  *a1 = result;
  return result;
}

uint64_t sub_20D7F7088@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_20D974458();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v42 = sub_20D971FF8();
  v43 = v6;
  sub_20D7E1EF8();
  v7 = sub_20D9745C8();
  v9 = v8;
  v11 = v10;
  sub_20D974388();
  (*(v2 + 104))(v5, *MEMORY[0x277CE0A10], v1);
  sub_20D974478();

  (*(v2 + 8))(v5, v1);
  v12 = sub_20D974558();
  v14 = v13;
  v16 = v15;

  sub_20D7EADC0(v7, v9, v11 & 1);

  v17 = sub_20D974548();
  v19 = v18;
  LOBYTE(v7) = v20;
  sub_20D7EADC0(v12, v14, v16 & 1);

  v21 = [objc_opt_self() labelColor];
  v42 = sub_20D974888();
  v22 = sub_20D974518();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_20D7EADC0(v17, v19, v7 & 1);

  v42 = v22;
  v43 = v24;
  v44 = v26 & 1;
  v45 = v28;
  v29 = v41;
  sub_20D9747D8();
  sub_20D7EADC0(v22, v24, v26 & 1);

  v30 = sub_20D974338();
  sub_20D973AD8();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839050, &qword_20D977A90);
  v40 = v29 + *(result + 36);
  *v40 = v30;
  *(v40 + 8) = v32;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  return result;
}

uint64_t sub_20D7F7420()
{
  v0 = sub_20D974458();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v25 = sub_20D971FF8();
  v26 = v5;
  sub_20D7E1EF8();
  v6 = sub_20D9745C8();
  v8 = v7;
  v10 = v9;
  sub_20D974388();
  (*(v1 + 104))(v4, *MEMORY[0x277CE0A10], v0);
  sub_20D974478();

  (*(v1 + 8))(v4, v0);
  v11 = sub_20D974558();
  v13 = v12;
  v15 = v14;

  sub_20D7EADC0(v6, v8, v10 & 1);

  v16 = [objc_opt_self() secondaryLabelColor];
  v25 = sub_20D974888();
  v17 = sub_20D974518();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_20D7EADC0(v11, v13, v15 & 1);

  v25 = v17;
  v26 = v19;
  v27 = v21 & 1;
  v28 = v23;
  sub_20D9747D8();
  sub_20D7EADC0(v17, v19, v21 & 1);
}

uint64_t sub_20D7F771C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839050, &qword_20D977A90);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839058, &qword_20D977A98);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v27 - v22;
  *v23 = sub_20D974078();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839060, &qword_20D977AA0);
  sub_20D7F7A44(v28, &v23[*(v24 + 44)]);
  sub_20D7F7088(v16);
  sub_20D7F7420();
  sub_20D7EB7E8(v23, v21, &qword_27C839058, &qword_20D977A98);
  sub_20D7EB7E8(v16, v14, &qword_27C839050, &qword_20D977A90);
  sub_20D7EB7E8(v9, v7, &qword_27C838F18, &unk_20D977860);
  sub_20D7EB7E8(v21, a2, &qword_27C839058, &qword_20D977A98);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839068, &qword_20D977AA8);
  sub_20D7EB7E8(v14, a2 + *(v25 + 48), &qword_27C839050, &qword_20D977A90);
  sub_20D7EB7E8(v7, a2 + *(v25 + 64), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v9, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v16, &qword_27C839050, &qword_20D977A90);
  sub_20D7E3944(v23, &qword_27C839058, &qword_20D977A98);
  sub_20D7E3944(v7, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v14, &qword_27C839050, &qword_20D977A90);
  return sub_20D7E3944(v21, &qword_27C839058, &qword_20D977A98);
}

uint64_t sub_20D7F7A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839070, &qword_20D977AB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - v8;
  v10 = sub_20D973D58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839030, &qword_20D977A68);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v32 - v20;
  if (qword_281126F20 != -1)
  {
    swift_once();
  }

  v22 = qword_28112ABF0;
  (*(v11 + 104))(v14, *MEMORY[0x277CDFA10], v10);
  sub_20D965890(v14, v22, v21);
  (*(v11 + 8))(v14, v10);
  v23 = sub_20D974338();
  sub_20D973AD8();
  v24 = &v21[*(v15 + 36)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_20D7F6974(v9);
  sub_20D7EB7E8(v21, v19, &qword_27C839030, &qword_20D977A68);
  sub_20D7EB7E8(v9, v7, &qword_27C839070, &qword_20D977AB0);
  sub_20D7EB7E8(v19, a2, &qword_27C839030, &qword_20D977A68);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839078, &qword_20D977AB8);
  v30 = a2 + *(v29 + 48);
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_20D7EB7E8(v7, a2 + *(v29 + 64), &qword_27C839070, &qword_20D977AB0);
  sub_20D7E3944(v9, &qword_27C839070, &qword_20D977AB0);
  sub_20D7E3944(v21, &qword_27C839030, &qword_20D977A68);
  sub_20D7E3944(v7, &qword_27C839070, &qword_20D977AB0);
  return sub_20D7E3944(v19, &qword_27C839030, &qword_20D977A68);
}

uint64_t sub_20D7F7D88@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390A8, &qword_20D977B18);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  *v15 = sub_20D974078();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390B0, &qword_20D977B20);
  sub_20D7F7FBC(&v15[*(v16 + 44)]);
  sub_20D7F7420();
  sub_20D7EB7E8(v15, v13, &qword_27C8390A8, &qword_20D977B18);
  sub_20D7EB7E8(v8, v6, &qword_27C838F18, &unk_20D977860);
  sub_20D7EB7E8(v13, a1, &qword_27C8390A8, &qword_20D977B18);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390B8, &qword_20D977B28);
  sub_20D7EB7E8(v6, a1 + *(v17 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v8, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v15, &qword_27C8390A8, &qword_20D977B18);
  sub_20D7E3944(v6, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v13, &qword_27C8390A8, &qword_20D977B18);
}

uint64_t sub_20D7F7FBC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390C0, &qword_20D977B30);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839050, &qword_20D977A90);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  sub_20D7F7088(&v36 - v15);
  sub_20D7F6974(v9);
  v17 = sub_20D974328();
  sub_20D973AD8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390C8, &qword_20D977B38) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_20D974368();
  sub_20D973AD8();
  v28 = &v9[*(v3 + 44)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_20D7EB7E8(v16, v14, &qword_27C839050, &qword_20D977A90);
  sub_20D7EB7E8(v9, v7, &qword_27C8390C0, &qword_20D977B30);
  sub_20D7EB7E8(v14, a1, &qword_27C839050, &qword_20D977A90);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390D0, &unk_20D977B40);
  v34 = a1 + *(v33 + 48);
  *v34 = 0;
  *(v34 + 8) = 1;
  sub_20D7EB7E8(v7, a1 + *(v33 + 64), &qword_27C8390C0, &qword_20D977B30);
  sub_20D7E3944(v9, &qword_27C8390C0, &qword_20D977B30);
  sub_20D7E3944(v16, &qword_27C839050, &qword_20D977A90);
  sub_20D7E3944(v7, &qword_27C8390C0, &qword_20D977B30);
  return sub_20D7E3944(v14, &qword_27C839050, &qword_20D977A90);
}

uint64_t sub_20D7F8284(uint64_t a1)
{
  v2 = sub_20D973D58();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20D973E78();
}

uint64_t type metadata accessor for InlineEducationTip()
{
  result = qword_2811269D8;
  if (!qword_2811269D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D7F83DC()
{
  sub_20D7F8490();
  if (v0 <= 0x3F)
  {
    sub_20D7F84E8();
    if (v1 <= 0x3F)
    {
      sub_20D7E6360();
      if (v2 <= 0x3F)
      {
        sub_20D7E63C4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20D7F8490()
{
  if (!qword_281127050)
  {
    sub_20D973D58();
    v0 = sub_20D973B28();
    if (!v1)
    {
      atomic_store(v0, &qword_281127050);
    }
  }
}

void sub_20D7F84E8()
{
  if (!qword_281124D80)
  {
    v0 = sub_20D974A78();
    if (!v1)
    {
      atomic_store(v0, &qword_281124D80);
    }
  }
}

unint64_t sub_20D7F8538()
{
  result = qword_281124E68;
  if (!qword_281124E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838FE8, &qword_20D977A20);
    sub_20D7F85BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E68);
  }

  return result;
}

unint64_t sub_20D7F85BC()
{
  result = qword_281124E70;
  if (!qword_281124E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838FB8, &qword_20D977978);
    sub_20D7F8674();
    sub_20D7EBC4C(&qword_281124E40, &qword_27C838FD8, &qword_20D977990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E70);
  }

  return result;
}

unint64_t sub_20D7F8674()
{
  result = qword_281124EB8;
  if (!qword_281124EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838FB0, &qword_20D977970);
    sub_20D7F8700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124EB8);
  }

  return result;
}

unint64_t sub_20D7F8700()
{
  result = qword_281124F18;
  if (!qword_281124F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838FA8, &qword_20D977968);
    sub_20D7F878C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F18);
  }

  return result;
}

unint64_t sub_20D7F878C()
{
  result = qword_281124FC0;
  if (!qword_281124FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838FC8, &qword_20D977988);
    sub_20D7F8818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124FC0);
  }

  return result;
}

unint64_t sub_20D7F8818()
{
  result = qword_281124E08;
  if (!qword_281124E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838FF0, &qword_20D977A28);
    sub_20D7EBC4C(&qword_281124D10, &qword_27C838FF8, &qword_20D977A30);
    sub_20D7F88D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E08);
  }

  return result;
}

unint64_t sub_20D7F88D0()
{
  result = qword_281124F50;
  if (!qword_281124F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839000, &qword_20D977A38);
    sub_20D7EBC4C(&qword_281124D60, &qword_27C839008, &qword_20D977A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F50);
  }

  return result;
}

uint64_t sub_20D7F8988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineEducationTip();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7F89EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineEducationTip();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7F8A50()
{
  v1 = *(type metadata accessor for InlineEducationTip() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_20D7F6D94(v2);
}

unint64_t sub_20D7F8AB0()
{
  result = qword_281127030;
  if (!qword_281127030)
  {
    sub_20D973D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281127030);
  }

  return result;
}

unint64_t sub_20D7F8B08()
{
  result = qword_281124ED0;
  if (!qword_281124ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839088, &qword_20D977AC8);
    sub_20D7F8BC0();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124ED0);
  }

  return result;
}

unint64_t sub_20D7F8BC0()
{
  result = qword_281124F58;
  if (!qword_281124F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839098, &qword_20D977AD8);
    sub_20D7EBC4C(&qword_281124D78, &qword_27C8390A0, &qword_20D977B10);
    sub_20D7EBC4C(&qword_281124DE8, &qword_27C838F88, &qword_20D977910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F58);
  }

  return result;
}

uint64_t sub_20D7F8CA4(uint64_t a1)
{
  v2 = type metadata accessor for InlineEducationTip();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7F8D00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D974048();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_20D7EB7E8(v2, &v17 - v11, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973D58();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_20D975468();
    v16 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t GridForecastIndicator.init(location:homeID:analyticsFunction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for GridForecastIndicator(0);
  v13 = v12[5];
  if (qword_281125EB8 != -1)
  {
    swift_once();
  }

  v14 = (a6 + v13);
  type metadata accessor for GridForecastSnapshotManager();

  result = sub_20D974A38();
  *v14 = v18;
  v14[1] = v19;
  v16 = (a6 + v12[6]);
  *(a6 + v12[7]) = a1;
  v17 = (a6 + v12[8]);
  *v17 = a2;
  v17[1] = a3;
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t GridForecastIndicator.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for GridForecastIndicator(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_20D974288();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_20D974278();
  sub_20D7FC65C(v1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridForecastIndicator);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_20D7FC888(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for GridForecastIndicator);
  (*(v6 + 16))(v10, v12, v5);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20D7FB830;
  *(v15 + 24) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390D8, &qword_20D977B88);
  sub_20D7FC840(&qword_281124DD0, MEMORY[0x277CE0818]);
  sub_20D7FB860();
  sub_20D973BA8();
  return (*(v6 + 8))(v12, v5);
}

uint64_t sub_20D7F92D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v62 = a2;
  v63 = a1;
  v3 = type metadata accessor for GridForecastIndicator(0);
  v4 = v3 - 8;
  v59 = *(v3 - 8);
  v5 = *(v59 + 8);
  MEMORY[0x28223BE20](v3);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839100, &unk_20D977BB0);
  v6 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v8 = &v53 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390F8, &qword_20D977BA8);
  v9 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v11 = &v53 - v10;
  v12 = sub_20D972628();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GridForecastSnapshot(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (a1 + *(v4 + 28));
  v23 = *v21;
  v22 = v21[1];
  v66 = v23;
  v67 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839180, &qword_20D977E10);
  sub_20D974A48();
  v24 = v64;
  swift_getKeyPath();
  v66 = v24;
  sub_20D7FC840(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v25 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  sub_20D7FC65C(v24 + v25, v20, type metadata accessor for GridForecastSnapshot);

  sub_20D9725C8();
  v26 = GridForecastSnapshot.updateEnergyIndicatorStatus(referenceTime:)();
  v56 = v26;
  v28 = v27;
  v30 = v29;
  v58 = v29;
  (*(v13 + 8))(v16, v12);
  sub_20D7FC960(v20, type metadata accessor for GridForecastSnapshot);
  *v8 = sub_20D974088();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v31 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839188, &qword_20D977E40) + 44)];
  v32 = v63;
  v55 = v28;
  sub_20D7F9998(v63, v26, v28, v30, v31);
  v64 = v26;
  v65 = v28;
  v54 = type metadata accessor for GridForecastIndicator;
  v33 = v57;
  sub_20D7FC65C(v32, v57, type metadata accessor for GridForecastIndicator);
  v34 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v35 = swift_allocObject();
  v59 = type metadata accessor for GridForecastIndicator;
  sub_20D7FC888(v33, v35 + v34, type metadata accessor for GridForecastIndicator);
  sub_20D7EBC4C(&qword_281124D70, &qword_27C839100, &unk_20D977BB0);
  sub_20D974858();

  sub_20D7E3944(v8, &qword_27C839100, &unk_20D977BB0);
  *&v11[*(v60 + 36)] = sub_20D974248();
  sub_20D7FBAB8();
  v36 = v62;
  sub_20D9747D8();
  sub_20D7CCCE0(v11);
  KeyPath = swift_getKeyPath();
  v38 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390E8, &qword_20D977B98) + 36));
  v39 = v36;
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839108, &qword_20D977BC0) + 28);
  v41 = *MEMORY[0x277CDF3C0];
  v42 = sub_20D973B18();
  (*(*(v42 - 8) + 104))(v38 + v40, v41, v42);
  *v38 = KeyPath;
  v43 = swift_getKeyPath();
  v44 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390E0, &qword_20D977B90) + 36));
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839110, &qword_20D977BC8) + 28);
  sub_20D974C08();
  v46 = sub_20D974C18();
  (*(*(v46 - 8) + 56))(v44 + v45, 0, 1, v46);
  *v44 = v43;
  sub_20D7FC65C(v63, v33, v54);
  v47 = swift_allocObject();
  sub_20D7FC888(v33, v47 + v34, v59);
  v48 = (v47 + ((v34 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v49 = v55;
  *v48 = v56;
  v48[1] = v49;
  v48[2] = v58;
  v50 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390D8, &qword_20D977B88) + 36));
  v51 = v50 + *(sub_20D973CB8() + 20);
  result = sub_20D9752F8();
  *v50 = &unk_20D977EB0;
  v50[1] = v47;
  return result;
}

uint64_t sub_20D7F9998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v104 = a4;
  v111 = a3;
  v105 = a2;
  v110 = a5;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391A0, &qword_20D977EC8);
  v6 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v102 = &v91[-v7];
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391A8, &qword_20D977ED0);
  v8 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v108 = &v91[-v9];
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391B0, &qword_20D977ED8);
  v10 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v99 = &v91[-v11];
  v12 = sub_20D9749F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v98 = &v91[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for IconView(0);
  v17 = *(*(v16 - 1) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v94 = &v91[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v91[-v21];
  MEMORY[0x28223BE20](v20);
  v97 = &v91[-v23];
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391B8, &qword_20D977EE0);
  v24 = *(*(v96 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v96);
  v100 = &v91[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v95 = &v91[-v28];
  MEMORY[0x28223BE20](v27);
  v103 = &v91[-v29];
  v30 = sub_20D973D58();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v91[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v33);
  v37 = &v91[-v36];
  v101 = a1;
  sub_20D7F8D00(&v91[-v36]);
  (*(v31 + 104))(v35, *MEMORY[0x277CDF988], v30);
  sub_20D7FC840(&qword_281127038, MEMORY[0x277CDFA28]);
  LOBYTE(a1) = sub_20D974FA8();
  v38 = *(v31 + 8);
  v38(v35, v30);
  v38(v37, v30);
  if (a1)
  {
    (*(v13 + 104))(&v22[*(v16 + 5)], *MEMORY[0x277CE1050], v12);
    *v22 = v104;

    v39 = sub_20D974168();
    v40 = qword_281126E98;

    if (v40 != -1)
    {
      swift_once();
    }

    v42 = sub_20D971FF8();
    v44 = v43;
    v45 = v94;
    sub_20D7FC65C(v22, v94, type metadata accessor for IconView);
    v46 = v102;
    sub_20D7FC65C(v45, v102, type metadata accessor for IconView);
    v47 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391D0, &qword_20D977EF8) + 48)];
    v48 = v105;
    *v47 = v39;
    v47[1] = v48;
    v47[2] = v41;
    v47[3] = v42;
    v47[4] = v44;
    sub_20D7FC960(v45, type metadata accessor for IconView);
    sub_20D7EB7E8(v46, v108, &qword_27C8391A0, &qword_20D977EC8);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124CF0, &qword_27C8391B0, &qword_20D977ED8);
    sub_20D7EBC4C(&qword_281124CF8, &qword_27C8391A0, &qword_20D977EC8);
    sub_20D9741B8();
    sub_20D7E3944(v46, &qword_27C8391A0, &qword_20D977EC8);
    return sub_20D7FC960(v22, type metadata accessor for IconView);
  }

  else
  {
    v102 = v16;
    v50 = v12;
    v94 = sub_20D974178();
    v51 = qword_281126E98;

    if (v51 != -1)
    {
      swift_once();
    }

    v52 = sub_20D971FF8();
    v93 = v53;
    v92 = sub_20D974328();
    sub_20D973AD8();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    LOBYTE(v118[0]) = 0;
    sub_20D7F8D00(v37);
    v62 = sub_20D973D38();
    v38(v37, v30);
    v63 = MEMORY[0x277CE1050];
    if ((v62 & 1) == 0)
    {
      v63 = MEMORY[0x277CE1058];
    }

    v64 = v98;
    (*(v13 + 104))(v98, *v63, v50);
    v65 = v97;
    *v97 = v104;
    (*(v13 + 32))(v65 + *(v102 + 5), v64, v50);

    v66 = sub_20D974328();
    sub_20D973AD8();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = v95;
    sub_20D7FC888(v65, v95, type metadata accessor for IconView);
    v76 = &v75[*(v96 + 36)];
    *v76 = v66;
    *(v76 + 1) = v68;
    *(v76 + 2) = v70;
    *(v76 + 3) = v72;
    *(v76 + 4) = v74;
    v76[40] = 0;
    v77 = v75;
    v78 = v103;
    sub_20D7FC8F0(v77, v103);
    v79 = v100;
    sub_20D7EB7E8(v78, v100, &qword_27C8391B8, &qword_20D977EE0);
    v80 = v94;
    *&v112 = v94;
    v81 = v105;
    *(&v112 + 1) = v105;
    v82 = v111;
    *&v113 = v111;
    *(&v113 + 1) = v52;
    v83 = v93;
    *&v114 = v93;
    v84 = v92;
    BYTE8(v114) = v92;
    HIDWORD(v114) = *&v126[3];
    *(&v114 + 9) = *v126;
    *&v115 = v55;
    *(&v115 + 1) = v57;
    *&v116 = v59;
    *(&v116 + 1) = v61;
    v117 = 0;
    v85 = v113;
    v86 = v99;
    *v99 = v112;
    *(v86 + 16) = v85;
    v87 = v114;
    v88 = v115;
    v89 = v116;
    *(v86 + 80) = 0;
    *(v86 + 48) = v88;
    *(v86 + 64) = v89;
    *(v86 + 32) = v87;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391C0, &qword_20D977EE8);
    sub_20D7EB7E8(v79, v86 + *(v90 + 48), &qword_27C8391B8, &qword_20D977EE0);
    sub_20D7EB7E8(&v112, v118, &qword_27C8391C8, &qword_20D977EF0);
    sub_20D7E3944(v79, &qword_27C8391B8, &qword_20D977EE0);
    v118[0] = v80;
    v118[1] = v81;
    v118[2] = v82;
    v118[3] = v52;
    v118[4] = v83;
    v119 = v84;
    *v120 = *v126;
    *&v120[3] = *&v126[3];
    v121 = v55;
    v122 = v57;
    v123 = v59;
    v124 = v61;
    v125 = 0;
    sub_20D7E3944(v118, &qword_27C8391C8, &qword_20D977EF0);
    sub_20D7EB7E8(v86, v108, &qword_27C8391B0, &qword_20D977ED8);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124CF0, &qword_27C8391B0, &qword_20D977ED8);
    sub_20D7EBC4C(&qword_281124CF8, &qword_27C8391A0, &qword_20D977EC8);
    sub_20D9741B8();
    sub_20D7E3944(v86, &qword_27C8391B0, &qword_20D977ED8);
    return sub_20D7E3944(v103, &qword_27C8391B8, &qword_20D977EE0);
  }
}

uint64_t sub_20D7FA544(uint64_t a1)
{
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC18);
  v3 = sub_20D9734D8();
  v4 = sub_20D975478();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20D7C9000, v3, v4, "Updating pill via notification from GridForecastIndicator", v5, 2u);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v6 = (a1 + *(type metadata accessor for GridForecastIndicator(0) + 20));
  v8 = *v6;
  v9 = v6[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839180, &qword_20D977E10);
  sub_20D974A48();
  sub_20D84B418();
}

uint64_t sub_20D7FA670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839198, &qword_20D977EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D7EB7E8(a1, &v6 - v4, &qword_27C839198, &qword_20D977EC0);
  return sub_20D973EC8();
}

uint64_t sub_20D7FA718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[34] = a2;
  v3[35] = a3;
  v3[33] = a1;
  v4 = type metadata accessor for GridForecastSnapshot(0);
  v3[36] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  sub_20D9752E8();
  v3[38] = sub_20D9752D8();
  v7 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D7FA7E4, v7, v6);
}

uint64_t sub_20D7FA7E4()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);

  v3 = type metadata accessor for GridForecastIndicator(0);
  v4 = v2 + *(v3 + 24);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);
    v8 = *(v0 + 288);
    v7 = *(v0 + 296);
    v10 = *(v0 + 272);
    v9 = *(v0 + 280);
    v11 = (*(v0 + 264) + *(v3 + 20));
    v13 = *v11;
    v12 = v11[1];
    *(v0 + 232) = v13;
    *(v0 + 240) = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839180, &qword_20D977E10);
    sub_20D974A48();
    v14 = *(v0 + 248);
    swift_getKeyPath();
    *(v0 + 256) = v14;
    sub_20D7FC840(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972858();

    v15 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
    swift_beginAccess();
    sub_20D7FC65C(v14 + v15, v7, type metadata accessor for GridForecastSnapshot);

    v16 = (v7 + *(v8 + 24));
    v17 = MEMORY[0x277D837D0];
    v18 = *v16;
    v19 = v16[1];
    *(v0 + 40) = MEMORY[0x277D837D0];
    *(v0 + 16) = v18;
    *(v0 + 24) = v19;
    sub_20D7E39A4((v0 + 16), (v0 + 48));

    v20 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20D8D5160((v0 + 48), 0x444964697267, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    *(v0 + 80) = v10;
    *(v0 + 104) = v17;
    *(v0 + 88) = v9;
    sub_20D7E39A4((v0 + 80), (v0 + 112));

    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D8D5160((v0 + 112), 0x6554656369766461, 0xEA00000000007478, v22);
    v23 = v20;
    v24 = v7 + *(v8 + 20);
    v25 = sub_20D9729C8();
    if (v25)
    {
      v26 = _s12HomeEnergyUI20GridForecastSnapshotV21serializeCleanWindowsySaySDySSypGGSay0A8Services0B6WindowVGFZ_0(v25);

      *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839190, &qword_20D977EB8);
      *(v0 + 144) = v26;
      sub_20D7E39A4((v0 + 144), (v0 + 176));
      v27 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D8D5160((v0 + 176), 0x6957796772656E65, 0xED000073776F646ELL, v27);
    }

    v28 = *(v0 + 296);
    v5(v23);
    sub_20D7DD774(v5);

    sub_20D7FC960(v28, type metadata accessor for GridForecastSnapshot);
  }

  v29 = *(v0 + 296);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_20D7FAB20(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D974288();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_20D974278();
  sub_20D7FC65C(v2, v5, type metadata accessor for GridForecastIndicator);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_20D7FC888(v5, v15 + v14, type metadata accessor for GridForecastIndicator);
  (*(v7 + 16))(v11, v13, v6);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20D7FCB34;
  *(v16 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390D8, &qword_20D977B88);
  sub_20D7FC840(&qword_281124DD0, MEMORY[0x277CE0818]);
  sub_20D7FB860();
  sub_20D973BA8();
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_20D7FADC0@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v43 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839128, &qword_20D977D48);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839130, &qword_20D977D50);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839138, &qword_20D977D58);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v43 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839140, &qword_20D977D60);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  v22 = *v1;
  v48 = v19;
  if (v22)
  {
    v43 = v1;

    v44 = sub_20D974428();
    KeyPath = swift_getKeyPath();
    v24 = *(type metadata accessor for IconView(0) + 20);
    v25 = swift_getKeyPath();
    v26 = v12;
    v27 = (v16 + *(v13 + 36));
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40);
    v45 = v6;
    v29 = *(v28 + 28);
    v30 = sub_20D9749F8();
    (*(*(v30 - 8) + 16))(v27 + v29, &v43[v24], v30);
    *v27 = v25;
    *v16 = v22;
    v16[1] = KeyPath;
    v16[2] = v44;
    sub_20D7FC304();

    sub_20D9747B8();
    sub_20D7E3944(v16, &qword_27C839138, &qword_20D977D58);
    sub_20D7EB7E8(v21, v26, &qword_27C839140, &qword_20D977D60);
    swift_storeEnumTagMultiPayload();
    sub_20D7FC250(&qword_281124E88, &qword_27C839140, &qword_20D977D60, sub_20D7FC304);
    sub_20D7FC3BC();
    sub_20D9741B8();

    v31 = v21;
    v32 = &qword_27C839140;
    v33 = &qword_20D977D60;
  }

  else
  {
    v34 = v1;
    v45 = v12;
    v35 = v6;
    if (qword_281124D98 != -1)
    {
      swift_once();
    }

    v36 = qword_28112AB68;
    v37 = *(type metadata accessor for IconView(0) + 20);
    v38 = swift_getKeyPath();
    v39 = (v5 + *(v2 + 36));
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
    v41 = sub_20D9749F8();
    (*(*(v41 - 8) + 16))(v39 + v40, &v34[v37], v41);
    *v39 = v38;
    *v5 = v36;
    sub_20D7F598C();

    sub_20D9747B8();
    sub_20D7E3944(v5, &qword_27C838BB0, &qword_20D977D40);
    *&v9[*(v35 + 36)] = 0;
    sub_20D7EB7E8(v9, v45, &qword_27C839128, &qword_20D977D48);
    swift_storeEnumTagMultiPayload();
    sub_20D7FC250(&qword_281124E88, &qword_27C839140, &qword_20D977D60, sub_20D7FC304);
    sub_20D7FC3BC();
    sub_20D9741B8();
    v31 = v9;
    v32 = &qword_27C839128;
    v33 = &qword_20D977D48;
  }

  return sub_20D7E3944(v31, v32, v33);
}

uint64_t sub_20D7FB2EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v62 = &v58 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v61 = &v58 - v10;
  MEMORY[0x28223BE20](v9);
  v59 = &v58 - v11;
  v12 = a1[4];
  v65 = a1[3];
  v66 = v12;
  v60 = sub_20D7E1EF8();

  v13 = sub_20D9745C8();
  v15 = v14;
  v17 = v16;
  sub_20D974488();
  v18 = sub_20D974558();
  v20 = v19;
  v22 = v21;

  sub_20D7EADC0(v13, v15, v17 & 1);

  sub_20D9743D8();
  v23 = sub_20D9744F8();
  v25 = v24;
  v27 = v26;
  sub_20D7EADC0(v18, v20, v22 & 1);

  LODWORD(v65) = sub_20D974248();
  v28 = sub_20D974518();
  v30 = v29;
  LOBYTE(v20) = v31;
  v33 = v32;
  sub_20D7EADC0(v23, v25, v27 & 1);

  v65 = v28;
  v66 = v30;
  v67 = v20 & 1;
  v68 = v33;
  v34 = v59;
  sub_20D9747D8();
  sub_20D7EADC0(v28, v30, v20 & 1);

  v35 = a1[2];
  v65 = a1[1];
  v66 = v35;

  v36 = sub_20D9745C8();
  v38 = v37;
  v40 = v39;
  sub_20D974488();
  v41 = sub_20D974558();
  v43 = v42;
  LOBYTE(a1) = v44;

  sub_20D7EADC0(v36, v38, v40 & 1);

  LODWORD(v65) = sub_20D974248();
  v45 = sub_20D974518();
  v47 = v46;
  LOBYTE(v38) = v48;
  v50 = v49;
  sub_20D7EADC0(v41, v43, a1 & 1);

  v65 = v45;
  v66 = v47;
  v67 = v38 & 1;
  v68 = v50;
  v51 = v61;
  sub_20D9747D8();
  sub_20D7EADC0(v45, v47, v38 & 1);

  v52 = v34;
  v53 = v62;
  sub_20D7EB7E8(v34, v62, &qword_27C838F18, &unk_20D977860);
  v54 = v63;
  sub_20D7EB7E8(v51, v63, &qword_27C838F18, &unk_20D977860);
  v55 = v64;
  sub_20D7EB7E8(v53, v64, &qword_27C838F18, &unk_20D977860);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839160, &unk_20D977DF0);
  sub_20D7EB7E8(v54, v55 + *(v56 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v51, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v52, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v54, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v53, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D7FB784@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = sub_20D974178();
  *(a1 + 8) = 0x3FE0000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839150, &qword_20D97EAC0);
  sub_20D7FB2EC(v6, a1 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839158, &unk_20D977DE0);
  *(a1 + *(result + 36)) = 1;
  return result;
}

unint64_t sub_20D7FB860()
{
  result = qword_281124E50;
  if (!qword_281124E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8390D8, &qword_20D977B88);
    sub_20D7FB91C();
    sub_20D7FC840(&qword_281124FD0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E50);
  }

  return result;
}

unint64_t sub_20D7FB91C()
{
  result = qword_281124E60;
  if (!qword_281124E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8390E0, &qword_20D977B90);
    sub_20D7FB9D4();
    sub_20D7EBC4C(&qword_281124DB0, &qword_27C839110, &qword_20D977BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E60);
  }

  return result;
}

unint64_t sub_20D7FB9D4()
{
  result = qword_281124EA0;
  if (!qword_281124EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8390E8, &qword_20D977B98);
    sub_20D7FC250(&qword_281124EF0, &qword_27C8390F0, &qword_20D977BA0, sub_20D7FBAB8);
    sub_20D7EBC4C(&qword_281124DC0, &qword_27C839108, &qword_20D977BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124EA0);
  }

  return result;
}

unint64_t sub_20D7FBAB8()
{
  result = qword_281124F78;
  if (!qword_281124F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8390F8, &qword_20D977BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839100, &unk_20D977BB0);
    sub_20D7EBC4C(&qword_281124D70, &qword_27C839100, &unk_20D977BB0);
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281124DE8, &qword_27C838F88, &qword_20D977910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F78);
  }

  return result;
}

void sub_20D7FBC38()
{
  sub_20D7FBDA4(319, &qword_281127050, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_20D7FBDA4(319, &qword_27C839118, type metadata accessor for GridForecastSnapshotManager, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_20D7E6360();
      if (v2 <= 0x3F)
      {
        sub_20D7FBDA4(319, &qword_281126EA0, sub_20D7FBE08, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20D7FBFB4(319, &qword_281124C28);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20D7FBDA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_20D7FBE08()
{
  result = qword_281126EB0;
  if (!qword_281126EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281126EB0);
  }

  return result;
}

unint64_t sub_20D7FBE54()
{
  result = qword_281124FE0;
  if (!qword_281124FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839120, &qword_20D977C50);
    sub_20D7FB860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124FE0);
  }

  return result;
}

void sub_20D7FBF20()
{
  sub_20D7FBFB4(319, &qword_281126F10);
  if (v0 <= 0x3F)
  {
    sub_20D9749F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20D7FBFB4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_20D975508();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20D7FC014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20D7FC05C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20D7FC100(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839168, &qword_20D978440);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v16 = *(v14 - 8);
  result = v14 - 8;
  if (*(v16 + 64) == v11)
  {
    (*(v10 + 16))(v13, a1, v9);
    a2(v13);
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D7FC250(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_20D7FC840(&qword_281126F38, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D7FC304()
{
  result = qword_281124EE0;
  if (!qword_281124EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839138, &qword_20D977D58);
    sub_20D7EB274();
    sub_20D7EBC4C(&qword_281126F40, &qword_27C838AE0, &qword_20D976F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124EE0);
  }

  return result;
}

unint64_t sub_20D7FC3BC()
{
  result = qword_281124E80;
  if (!qword_281124E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839128, &qword_20D977D48);
    sub_20D7FC250(&qword_281124ED8, &qword_27C839148, &qword_20D977DA0, sub_20D7F598C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E80);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for GridForecastIndicator(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20D973D58();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v5 + v1[5]);
  v9 = *v8;

  v10 = v8[1];

  v11 = (v5 + v1[6]);
  if (*v11)
  {
    v12 = v11[1];
  }

  v13 = *(v5 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7FC5DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GridForecastIndicator(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20D7F92D0(v4, a1);
}

uint64_t sub_20D7FC65C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D7FC6C4()
{
  v1 = *(type metadata accessor for GridForecastIndicator(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_20D7FA544(v2);
}

uint64_t sub_20D7FC724()
{
  v2 = *(type metadata accessor for GridForecastIndicator(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20D7EB52C;

  return sub_20D7FA718(v0 + v3, v5, v6);
}

uint64_t sub_20D7FC840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D7FC888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D7FC8F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391B8, &qword_20D977EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7FC960(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20D7FC9C0()
{
  result = qword_281124E28;
  if (!qword_281124E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8391D8, &unk_20D977F00);
    sub_20D7FC250(&qword_281124E88, &qword_27C839140, &qword_20D977D60, sub_20D7FC304);
    sub_20D7FC3BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E28);
  }

  return result;
}

unint64_t sub_20D7FCA78()
{
  result = qword_281124F20;
  if (!qword_281124F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839158, &unk_20D977DE0);
    sub_20D7EBC4C(&qword_281124D28, &qword_27C8391E0, &unk_20D97EBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F20);
  }

  return result;
}

uint64_t RectangularLockHistoricalUsageView.init(widgetStartDate:usageSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_20D9726E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v36[1] = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D975058();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for HistoricalUsageSnapshot();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D972628();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = v16;
  v20 = *(v16 + 16);
  v37 = a1;
  v20(v19, a1, v15);
  sub_20D7FCF94(a2, v14);
  v21 = type metadata accessor for RectangularLockHistoricalUsageView();
  v22 = &a3[*(v21 + 28)];
  v23 = v14;
  v24 = a2;
  v25 = v21;
  HistoricalUsageSnapshotDerivedInfo.init(requestedDisplayDate:snapshot:)(v19, v23, v22);
  v26 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v20(a3, v22 + *(v26 + 52), v15);
  v27 = a3;
  sub_20D7FCF94(v24, &a3[*(v25 + 20)]);
  if (*(v24 + *(v11 + 64)) != 6)
  {
    sub_20D974FE8();
    if (qword_281126E98 == -1)
    {
LABEL_6:
      v28 = qword_28112ABE8;
      sub_20D9726B8();
      v29 = sub_20D975108();
      goto LABEL_10;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  if (*(v24 + *(v11 + 44)) == 1)
  {
    sub_20D974FE8();
    if (qword_281126E98 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v31 = qword_28112ABE8;
  sub_20D9726B8();
  v29 = sub_20D9750F8();
LABEL_10:
  v32 = v29;
  v33 = v30;
  sub_20D7FEF04(v24);
  result = (*(v36[0] + 8))(v37, v15);
  v35 = &v27[*(v25 + 24)];
  *v35 = v32;
  v35[1] = v33;
  return result;
}

uint64_t sub_20D7FCF94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageSnapshot();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RectangularLockHistoricalUsageView()
{
  result = qword_281125248;
  if (!qword_281125248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RectangularLockHistoricalUsageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391E8, &qword_20D977F10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  *v6 = sub_20D974168();
  *(v6 + 1) = 0x3FE0000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391F0, &qword_20D977F18);
  sub_20D7FD16C(v1, &v6[*(v7 + 44)]);
  *&v6[*(v3 + 36)] = 0;
  sub_20D7FEF60();
  sub_20D974718();
  sub_20D7E3944(v6, &qword_27C8391E8, &qword_20D977F10);
  v8 = sub_20D973DC8();
  v9 = sub_20D974318();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839200, &qword_20D977F30);
  v11 = a1 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
  return result;
}

uint64_t sub_20D7FD16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839208, &qword_20D977FB8);
  v3 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v67 = v63 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839210, &qword_20D977FC0);
  v5 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v69 = v63 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839218, &qword_20D977FC8);
  v7 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v66 = v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839220, &qword_20D977FD0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v64 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = (v63 - v13);
  v14 = sub_20D9726E8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v63[1] = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20D975058();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839228, &qword_20D977FD8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v71 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v70 = v63 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EC0, &unk_20D977FE0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v63 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v63 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = v63 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = v63 - v38;
  *v39 = sub_20D974088();
  *(v39 + 1) = 0;
  v39[16] = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EC8, &qword_20D9777B0);
  sub_20D7FDA0C(a1, &v39[*(v40 + 44)]);
  v41 = a1;
  v42 = a1 + *(type metadata accessor for RectangularLockHistoricalUsageView() + 20);
  if (*(v42 + *(type metadata accessor for HistoricalUsageSnapshot() + 64)) == 6)
  {
    *v37 = sub_20D974088();
    *(v37 + 1) = 0x4008000000000000;
    v37[16] = 0;
    sub_20D7FE064(v41, &v37[*(v40 + 44)]);
    *v34 = sub_20D974088();
    *(v34 + 1) = 0;
    v34[16] = 1;
    sub_20D7FEAA0(v41, &v34[*(v40 + 44)]);
    sub_20D7EB7E8(v37, v31, &qword_27C838EC0, &unk_20D977FE0);
    sub_20D7EB7E8(v34, v28, &qword_27C838EC0, &unk_20D977FE0);
    v43 = v67;
    sub_20D7EB7E8(v31, v67, &qword_27C838EC0, &unk_20D977FE0);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839230, &qword_20D977FF0);
    sub_20D7EB7E8(v28, v43 + *(v44 + 48), &qword_27C838EC0, &unk_20D977FE0);
    sub_20D7E3944(v28, &qword_27C838EC0, &unk_20D977FE0);
    sub_20D7E3944(v31, &qword_27C838EC0, &unk_20D977FE0);
    sub_20D7EB7E8(v43, v69, &qword_27C839208, &qword_20D977FB8);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124CC8, &qword_27C839218, &qword_20D977FC8);
    sub_20D7EBC4C(&qword_281124CD8, &qword_27C839208, &qword_20D977FB8);
    v45 = v70;
    sub_20D9741B8();
    sub_20D7E3944(v43, &qword_27C839208, &qword_20D977FB8);
    sub_20D7E3944(v34, &qword_27C838EC0, &unk_20D977FE0);
    sub_20D7E3944(v37, &qword_27C838EC0, &unk_20D977FE0);
  }

  else
  {
    v46 = v69;
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v47 = qword_28112ABE8;
    sub_20D9726B8();
    v48 = sub_20D975108();
    v50 = v49;
    v51 = sub_20D974088();
    v52 = v65;
    *v65 = v51;
    *(v52 + 8) = 0;
    *(v52 + 16) = 1;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839240, &qword_20D978000);
    sub_20D7FDC4C(v48, v50, v52 + *(v53 + 44));

    v54 = v64;
    sub_20D7EB7E8(v52, v64, &qword_27C839220, &qword_20D977FD0);
    v55 = v66;
    sub_20D7EB7E8(v54, v66, &qword_27C839220, &qword_20D977FD0);
    v56 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839248, &unk_20D978008) + 48);
    *v56 = 0;
    *(v56 + 8) = 1;
    sub_20D7E3944(v54, &qword_27C839220, &qword_20D977FD0);
    sub_20D7EB7E8(v55, v46, &qword_27C839218, &qword_20D977FC8);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124CC8, &qword_27C839218, &qword_20D977FC8);
    sub_20D7EBC4C(&qword_281124CD8, &qword_27C839208, &qword_20D977FB8);
    v45 = v70;
    sub_20D9741B8();
    sub_20D7E3944(v55, &qword_27C839218, &qword_20D977FC8);
    sub_20D7E3944(v52, &qword_27C839220, &qword_20D977FD0);
  }

  sub_20D7EB7E8(v39, v37, &qword_27C838EC0, &unk_20D977FE0);
  v57 = v45;
  v58 = v45;
  v59 = v71;
  sub_20D7EB7E8(v57, v71, &qword_27C839228, &qword_20D977FD8);
  v60 = v74;
  sub_20D7EB7E8(v37, v74, &qword_27C838EC0, &unk_20D977FE0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839238, &qword_20D977FF8);
  sub_20D7EB7E8(v59, v60 + *(v61 + 48), &qword_27C839228, &qword_20D977FD8);
  sub_20D7E3944(v58, &qword_27C839228, &qword_20D977FD8);
  sub_20D7E3944(v39, &qword_27C838EC0, &unk_20D977FE0);
  sub_20D7E3944(v59, &qword_27C839228, &qword_20D977FD8);
  return sub_20D7E3944(v37, &qword_27C838EC0, &unk_20D977FE0);
}

uint64_t sub_20D7FDA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = (a1 + *(type metadata accessor for RectangularLockHistoricalUsageView() + 24));
  v11 = v10[1];
  v28 = *v10;
  v29 = v11;
  sub_20D7E1EF8();

  v12 = sub_20D9745C8();
  v14 = v13;
  v16 = v15;
  LODWORD(v28) = sub_20D974248();
  v17 = sub_20D974518();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_20D7EADC0(v12, v14, v16 & 1);

  v28 = v17;
  v29 = v19;
  v21 &= 1u;
  v30 = v21;
  v31 = v23;
  sub_20D9747D8();
  sub_20D7EADC0(v17, v19, v21);

  sub_20D7EB7E8(v9, v7, &qword_27C838F18, &unk_20D977860);
  v24 = v27;
  sub_20D7EB7E8(v7, v27, &qword_27C838F18, &unk_20D977860);
  v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F20, &unk_20D97C950) + 48);
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_20D7E3944(v9, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v7, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D7FDC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v49 = sub_20D974458();
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F08, &qword_20D977820);
  v7 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839250, &qword_20D978018);
  v11 = *(v10 - 8);
  v51 = v10 - 8;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v50 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - v15;
  v53 = a1;
  v54 = a2;
  sub_20D7E1EF8();

  v17 = sub_20D9745C8();
  v19 = v18;
  v21 = v20;
  v22 = sub_20D974548();
  v24 = v23;
  v26 = v25;
  sub_20D7EADC0(v17, v19, v21 & 1);

  LODWORD(v53) = sub_20D974248();
  v27 = sub_20D974518();
  v29 = v28;
  LOBYTE(v17) = v30;
  v32 = v31;
  sub_20D7EADC0(v22, v24, v26 & 1);

  v53 = v27;
  v54 = v29;
  v55 = v17 & 1;
  v56 = v32;
  sub_20D974868();
  sub_20D7EADC0(v27, v29, v17 & 1);

  sub_20D974488();
  v34 = v46;
  v33 = v47;
  v35 = v49;
  (*(v47 + 104))(v46, *MEMORY[0x277CE0A10], v49);
  v36 = sub_20D974478();

  (*(v33 + 8))(v34, v35);
  KeyPath = swift_getKeyPath();
  v38 = &v9[*(v48 + 36)];
  *v38 = KeyPath;
  v38[1] = v36;
  sub_20D7FF1F4();
  sub_20D9747D8();
  sub_20D7E3944(v9, &qword_27C838F08, &qword_20D977820);
  v39 = swift_getKeyPath();
  v40 = v50;
  v41 = &v16[*(v51 + 44)];
  *v41 = v39;
  v41[8] = 0;
  sub_20D7EB7E8(v16, v40, &qword_27C839250, &qword_20D978018);
  v42 = v52;
  sub_20D7EB7E8(v40, v52, &qword_27C839250, &qword_20D978018);
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839260, &qword_20D978088) + 48);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_20D7E3944(v16, &qword_27C839250, &qword_20D978018);
  return sub_20D7E3944(v40, &qword_27C839250, &qword_20D978018);
}

uint64_t sub_20D7FE064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v76 = sub_20D971F38();
  v3 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v77 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v68 - v7;
  v8 = sub_20D975058();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_20D971F48();
  v70 = *(v71 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D975038();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v68 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_20D974458();
  v80 = *(v82 - 8);
  v16 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20D972AF8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v68 - v25;
  v27 = sub_20D971FC8();
  v72 = *(v27 - 8);
  v73 = v27;
  v28 = *(v72 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v78 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v79 = &v68 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v81 = &v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v68 - v36;
  v38 = a1 + *(type metadata accessor for RectangularLockHistoricalUsageView() + 20);
  v39 = *(type metadata accessor for HistoricalUsageSnapshot() + 48);
  sub_20D972DB8();
  v41 = v40;
  sub_20D972E58();
  (*(v20 + 104))(v24, *MEMORY[0x277D075B0], v19);
  sub_20D7FF2DC(&qword_2811250F0, MEMORY[0x277D075D8]);
  sub_20D975208();
  sub_20D975208();
  if (v84 == v88 && v85 == v89)
  {
    v42 = *(v20 + 8);
    v42(v24, v19);
    v42(v26, v19);

LABEL_5:
    sub_20D88D380(0, v79, v41, COERCE__INT64(1.0));
    goto LABEL_9;
  }

  v43 = sub_20D9757C8();
  v44 = *(v20 + 8);
  v44(v24, v19);
  v44(v26, v19);

  if (v43)
  {
    goto LABEL_5;
  }

  sub_20D88D380(0, v78, v41, COERCE__INT64(1.0));
  sub_20D975028();
  sub_20D975018();
  v45 = MEMORY[0x277D84F90];
  v84 = MEMORY[0x277D84F90];
  sub_20D7FF2DC(&qword_281126E58, MEMORY[0x277CC8B88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
  sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098);
  v46 = v69;
  v47 = v71;
  sub_20D9755D8();
  sub_20D974FF8();
  (*(v70 + 8))(v46, v47);
  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v48 = qword_28112ABE8;
  v49 = sub_20D9726E8();
  (*(*(v49 - 8) + 56))(v75, 1, 1, v49);
  v84 = v45;
  sub_20D7FF2DC(&qword_281126E60, MEMORY[0x277CC8B58]);
  v50 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
  sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0);
  sub_20D9755D8();
  sub_20D971FB8();
  (*(v72 + 8))(v78, v73);
LABEL_9:
  v51 = sub_20D9745B8();
  v53 = v52;
  v55 = v54;
  sub_20D974398();
  v56 = v80;
  v57 = v82;
  (*(v80 + 104))(v18, *MEMORY[0x277CE0A10], v82);
  sub_20D974478();

  (*(v56 + 8))(v18, v57);
  v58 = sub_20D974558();
  v60 = v59;
  LOBYTE(v56) = v61;
  v63 = v62;

  sub_20D7EADC0(v51, v53, v55 & 1);

  v84 = v58;
  v85 = v60;
  v86 = v56 & 1;
  v87 = v63;
  sub_20D9747D8();
  sub_20D7EADC0(v58, v60, v56 & 1);

  v64 = v81;
  sub_20D7EB7E8(v37, v81, &qword_27C838F18, &unk_20D977860);
  v65 = v83;
  sub_20D7EB7E8(v64, v83, &qword_27C838F18, &unk_20D977860);
  v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F20, &unk_20D97C950) + 48);
  *v66 = 0;
  *(v66 + 8) = 1;
  sub_20D7E3944(v37, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v64, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D7FEAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_20D974458();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D971FC8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v35 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  v18 = a1 + *(type metadata accessor for RectangularLockHistoricalUsageView() + 20);
  HistoricalUsageSnapshot.summaryDailyUsageOrSurplusTrendShort(_:)(a1, v11);
  v19 = sub_20D9745B8();
  v21 = v20;
  v23 = v22;
  sub_20D974398();
  (*(v4 + 104))(v7, *MEMORY[0x277CE0A10], v3);
  sub_20D974478();

  (*(v4 + 8))(v7, v3);
  v24 = sub_20D974558();
  v26 = v25;
  LOBYTE(v7) = v27;
  v29 = v28;

  sub_20D7EADC0(v19, v21, v23 & 1);

  v37 = v24;
  v38 = v26;
  v39 = v7 & 1;
  v40 = v29;
  sub_20D9747D8();
  sub_20D7EADC0(v24, v26, v7 & 1);

  v30 = v35;
  sub_20D7EB7E8(v17, v35, &qword_27C838F18, &unk_20D977860);
  v31 = v36;
  sub_20D7EB7E8(v30, v36, &qword_27C838F18, &unk_20D977860);
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F20, &unk_20D97C950) + 48);
  *v32 = 0;
  *(v32 + 8) = 1;
  sub_20D7E3944(v17, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v30, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D7FEDDC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391E8, &qword_20D977F10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  *v6 = sub_20D974168();
  *(v6 + 1) = 0x3FE0000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8391F0, &qword_20D977F18);
  sub_20D7FD16C(v1, &v6[*(v7 + 44)]);
  *&v6[*(v3 + 36)] = 0;
  sub_20D7FEF60();
  sub_20D974718();
  sub_20D7E3944(v6, &qword_27C8391E8, &qword_20D977F10);
  v8 = sub_20D973DC8();
  v9 = sub_20D974318();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839200, &qword_20D977F30);
  v11 = a1 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
  return result;
}

uint64_t sub_20D7FEF04(uint64_t a1)
{
  v2 = type metadata accessor for HistoricalUsageSnapshot();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20D7FEF60()
{
  result = qword_281124F40;
  if (!qword_281124F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8391E8, &qword_20D977F10);
    sub_20D7EBC4C(&qword_281124D18, &qword_27C8391F8, &unk_20D977F20);
    sub_20D7EBC4C(&qword_281124FF0, &qword_27C838E68, &qword_20D9776C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F40);
  }

  return result;
}

uint64_t sub_20D7FF088()
{
  result = sub_20D972628();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HistoricalUsageSnapshot();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_20D7FF12C()
{
  result = qword_281124F90;
  if (!qword_281124F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839200, &qword_20D977F30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8391E8, &qword_20D977F10);
    sub_20D7FEF60();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F90);
  }

  return result;
}

unint64_t sub_20D7FF1F4()
{
  result = qword_27C839258;
  if (!qword_27C839258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838F08, &qword_20D977820);
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839258);
  }

  return result;
}

uint64_t sub_20D7FF2DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D7FF324@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D974048();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839290, &unk_20D978118);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_20D7EB7E8(v2, &v17 - v11, &qword_27C839290, &unk_20D978118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973AF8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_20D975468();
    v16 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t GridForecastAppView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v104 = sub_20D973AF8();
  v106 = *(v104 - 8);
  v2 = *(v106 + 64);
  MEMORY[0x28223BE20](v104);
  v103 = &v89[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for GridForecastAppView();
  v5 = v4 - 8;
  v96 = *(v4 - 8);
  v120 = *(v96 + 64);
  MEMORY[0x28223BE20](v4);
  v122 = &v89[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = sub_20D9729D8();
  v108 = *(v114 - 1);
  v95 = *(v108 + 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v89[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = sub_20D974288();
  v117 = *(v98 - 8);
  v8 = *(v117 + 64);
  v9 = MEMORY[0x28223BE20](v98);
  v97 = &v89[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v115 = &v89[-v11];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839280, &qword_20D9780B0);
  v12 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v116 = &v89[-v13];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839288, &qword_20D9780B8);
  v102 = *(v101 - 8);
  v14 = *(v102 + 64);
  MEMORY[0x28223BE20](v101);
  v119 = &v89[-v15];
  v16 = type metadata accessor for GridForecastSnapshot(0);
  v91 = *(v16 - 8);
  v109 = *(v91 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v110 = &v89[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v107 = &v89[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v89[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v89[-v24];
  v121 = v1;
  v92 = sub_20D80048C();
  v26 = *(v5 + 32);
  v93 = v5;
  v27 = *(v1 + v26);
  swift_getKeyPath();
  v130[0] = v27;
  sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v28 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  sub_20D80536C(v27 + v28, v25, type metadata accessor for GridForecastSnapshot);
  swift_getKeyPath();
  v130[0] = v27;
  sub_20D972858();

  v29 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  swift_beginAccess();
  v112 = v27;
  sub_20D80536C(v27 + v29, v23, type metadata accessor for GridForecastSnapshot);
  v30 = *(v16 + 20);
  v130[3] = v16;
  v31 = sub_20D8050A4(&qword_281127378, type metadata accessor for GridForecastSnapshot);
  v130[4] = v31;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v130);
  sub_20D80536C(v25, boxed_opaque_existential_1, type metadata accessor for GridForecastSnapshot);
  v129[3] = v16;
  v129[4] = v31;
  v33 = __swift_allocate_boxed_opaque_existential_1(v129);
  v99 = v23;
  sub_20D80536C(v23, v33, type metadata accessor for GridForecastSnapshot);
  v34 = v121;
  v90 = *(v121 + *(v5 + 60)) == 4;
  swift_retain_n();
  sub_20D974278();
  v35 = v108;
  v36 = *(v108 + 2);
  v118 = v25;
  v36(v113, &v25[v30], v114);
  v37 = v107;
  v94 = type metadata accessor for GridForecastSnapshot;
  sub_20D80536C(v25, v107, type metadata accessor for GridForecastSnapshot);
  sub_20D7E7080(v130, &v128);
  v111 = type metadata accessor for GridForecastAppView;
  sub_20D80536C(v34, v122, type metadata accessor for GridForecastAppView);
  sub_20D80536C(v23, v110, type metadata accessor for GridForecastSnapshot);
  sub_20D7E7080(v129, &v127);
  v38 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v39 = v38 + v95;
  v95 = *(v91 + 80);
  v40 = (v95 + v39 + 1) & ~v95;
  v41 = (v109 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = *(v96 + 80);
  v42 = (v96 + v41 + 40) & ~v96;
  v43 = (v120 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v95 + v43 + 16) & ~v95;
  v91 = (v44 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + v109 + 55) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v108 + 4))(v46 + v38, v113, v114);
  LODWORD(v113) = v92 & 1;
  *(v46 + v39) = v92 & 1;
  v108 = type metadata accessor for GridForecastSnapshot;
  sub_20D80503C(v37, v46 + v40, type metadata accessor for GridForecastSnapshot);
  sub_20D7EB734(&v128, v46 + v41);
  v114 = type metadata accessor for GridForecastAppView;
  sub_20D80503C(v122, v46 + v42, type metadata accessor for GridForecastAppView);
  v47 = (v46 + v43);
  v48 = v112;
  *v47 = sub_20D804294;
  v47[1] = v48;
  sub_20D80503C(v110, v46 + v44, type metadata accessor for GridForecastSnapshot);
  v49 = v46 + v91;
  sub_20D7EB734(&v127, v46 + v91);
  *(v49 + 40) = v90;
  v50 = (v46 + v45);
  *v50 = sub_20D80425C;
  v50[1] = v48;
  v51 = v115;
  v52 = v98;
  (*(v117 + 16))(v97, v115, v98);
  v53 = swift_allocObject();
  *(v53 + 16) = sub_20D8042CC;
  *(v53 + 24) = v46;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839298, &qword_20D978128);
  sub_20D8050A4(&qword_281124DD0, MEMORY[0x277CE0818]);
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8392A0, &unk_20D978130);
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838E48, &qword_20D977670);
  v56 = sub_20D7EBC4C(&qword_281124D58, &qword_27C8392A0, &unk_20D978130);
  v57 = sub_20D80472C();
  v123 = v54;
  v124 = v55;
  v125 = v56;
  v126 = v57;
  swift_getOpaqueTypeConformance2();
  v58 = v116;
  sub_20D973BA8();
  (*(v117 + 8))(v51, v52);
  v59 = *(v93 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v60 = v121;
  sub_20D973B78();
  v61 = *&v128 * 24.0;
  v62 = &v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392A8, &unk_20D978140) + 36)];
  v63 = *(sub_20D973DE8() + 20);
  v64 = *MEMORY[0x277CE0118];
  v65 = sub_20D974118();
  (*(*(v65 - 8) + 104))(v62 + v63, v64, v65);
  *v62 = v61;
  v62[1] = v61;
  *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550) + 36)) = 256;
  *&v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392B0, &qword_20D978150) + 36)] = 256;
  v66 = v60;
  v67 = v122;
  v68 = v111;
  sub_20D80536C(v66, v122, v111);
  v69 = v107;
  sub_20D80536C(v118, v107, v94);
  v70 = (v96 + 16) & ~v96;
  v120 += v70;
  v71 = (v120 + v95) & ~v95;
  v72 = v71 + v109;
  v73 = swift_allocObject();
  v74 = v114;
  sub_20D80503C(v67, v73 + v70, v114);
  sub_20D80503C(v69, v73 + v71, v108);
  *(v73 + v72) = v113;
  v75 = v100;
  v76 = &v58[*(v100 + 36)];
  v77 = v76 + *(sub_20D973CB8() + 20);
  sub_20D9752F8();
  *v76 = &unk_20D978160;
  v76[1] = v73;
  v78 = v121;
  sub_20D80536C(v121, v67, v68);
  v79 = swift_allocObject();
  sub_20D80503C(v67, v79 + v70, v74);
  v80 = sub_20D804950();
  v81 = v75;
  v82 = v116;
  sub_20D974748();

  sub_20D7CDBFC(v82);
  v83 = v103;
  sub_20D7FF324(v103);
  sub_20D80536C(v78, v67, v111);
  v84 = swift_allocObject();
  sub_20D80503C(v67, v84 + v70, v114);
  *&v128 = v81;
  *(&v128 + 1) = v80;
  swift_getOpaqueTypeConformance2();
  sub_20D8050A4(&qword_281125028, MEMORY[0x277CDD6C8]);
  v85 = v101;
  v86 = v104;
  v87 = v119;
  sub_20D974848();

  (*(v106 + 8))(v83, v86);
  (*(v102 + 8))(v87, v85);
  sub_20D8053D4(v99, type metadata accessor for GridForecastSnapshot);
  sub_20D8053D4(v118, type metadata accessor for GridForecastSnapshot);
  __swift_destroy_boxed_opaque_existential_0(v129);
  return __swift_destroy_boxed_opaque_existential_0(v130);
}

uint64_t type metadata accessor for GridForecastAppView()
{
  result = qword_281126940;
  if (!qword_281126940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D80048C()
{
  v1 = type metadata accessor for GridForecastSnapshot(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v72[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v72[-v7];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v72[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v72[-v12];
  v14 = type metadata accessor for GridForecastAppView();
  v15 = *(v0 + *(v14 + 52));
  if (v15 < 2)
  {
    if (qword_281127108 != -1)
    {
      swift_once();
    }

    v41 = sub_20D9734F8();
    __swift_project_value_buffer(v41, qword_28112AC18);
    v42 = sub_20D9734D8();
    v43 = sub_20D975448();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v78[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_20D7F4DC8(0xD000000000000010, 0x800000020D983790, v78);
      _os_log_impl(&dword_20D7C9000, v42, v43, "%s Forcing Single Pane Mode", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x20F324260](v45, -1, -1);
      MEMORY[0x20F324260](v44, -1, -1);
    }

    goto LABEL_34;
  }

  v74 = v1;
  v76 = v11;
  v73 = v15;
  if (v15 - 3 >= 2)
  {
    v16 = v14;
    v17 = v0;
    if (qword_281127108 != -1)
    {
      swift_once();
    }

    v18 = sub_20D9734F8();
    __swift_project_value_buffer(v18, qword_28112AC18);
    v19 = sub_20D9734D8();
    v20 = sub_20D975448();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v78[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_20D7F4DC8(0xD000000000000010, 0x800000020D983790, v78);
      _os_log_impl(&dword_20D7C9000, v19, v20, "%s Forcing Double Pane Mode", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x20F324260](v22, -1, -1);
      MEMORY[0x20F324260](v21, -1, -1);
    }

    v0 = v17;
    v14 = v16;
  }

  v23 = *(v0 + *(v14 + 24));
  swift_getKeyPath();
  v78[0] = v23;
  sub_20D8050A4(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v24 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  sub_20D80536C(v23 + v24, v13, type metadata accessor for GridForecastSnapshot);
  swift_getKeyPath();
  v77[1] = v23;
  sub_20D972858();

  v25 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  swift_beginAccess();
  v26 = v76;
  sub_20D80536C(v23 + v25, v76, type metadata accessor for GridForecastSnapshot);
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v27 = sub_20D9734F8();
  __swift_project_value_buffer(v27, qword_28112AC18);
  sub_20D80536C(v26, v8, type metadata accessor for GridForecastSnapshot);
  v75 = v13;
  sub_20D80536C(v13, v5, type metadata accessor for GridForecastSnapshot);
  v28 = sub_20D9734D8();
  v29 = sub_20D975478();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v77[0] = v31;
    *v30 = 136315650;
    *(v30 + 4) = sub_20D7F4DC8(0xD000000000000010, 0x800000020D983790, v77);
    *(v30 + 12) = 2080;
    v32 = GridForecastSnapshot.description.getter();
    v34 = v33;
    sub_20D8053D4(v8, type metadata accessor for GridForecastSnapshot);
    v35 = sub_20D7F4DC8(v32, v34, v77);

    *(v30 + 14) = v35;
    *(v30 + 22) = 2080;
    v36 = GridForecastSnapshot.description.getter();
    v38 = v37;
    sub_20D8053D4(v5, type metadata accessor for GridForecastSnapshot);
    v39 = sub_20D7F4DC8(v36, v38, v77);

    *(v30 + 24) = v39;
    _os_log_impl(&dword_20D7C9000, v28, v29, "%s checking gridIDs for locationSnapshot:%s & homeSnapshot:%s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v31, -1, -1);
    v40 = v30;
    v26 = v76;
    MEMORY[0x20F324260](v40, -1, -1);
  }

  else
  {

    sub_20D8053D4(v5, type metadata accessor for GridForecastSnapshot);
    sub_20D8053D4(v8, type metadata accessor for GridForecastSnapshot);
  }

  v46 = v74;
  v47 = v75;
  if (v73 == 3)
  {
    v48 = *(v74 + 36);
    if (*(v26 + v48) != 12 || v75[v48] != 12)
    {
      v63 = sub_20D9734D8();
      v64 = sub_20D975478();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v77[0] = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_20D7F4DC8(0xD000000000000010, 0x800000020D983790, v77);
        v67 = "%s Either locationSnapshot or homeSnapshot location has an error. Show single pane";
        goto LABEL_32;
      }

LABEL_33:

      sub_20D8053D4(v26, type metadata accessor for GridForecastSnapshot);
      sub_20D8053D4(v47, type metadata accessor for GridForecastSnapshot);
LABEL_34:
      v68 = 0;
      return v68 & 1;
    }
  }

  v49 = sub_20D7E0238();
  if (!v49 || (v49, (v50 = sub_20D7E0238()) == 0))
  {
    v63 = sub_20D9734D8();
    v64 = sub_20D975478();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v77[0] = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_20D7F4DC8(0xD000000000000010, 0x800000020D983790, v77);
      v67 = "%s Either locationSnapshot or homeSnapshot location is nil. Show single pane";
LABEL_32:
      _os_log_impl(&dword_20D7C9000, v63, v64, v67, v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x20F324260](v66, -1, -1);
      MEMORY[0x20F324260](v65, -1, -1);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v51 = *(v46 + 24);
  v52 = *(v26 + v51);
  v53 = *(v26 + v51 + 8);
  v54 = (v47 + v51);
  v55 = *v54;
  v56 = v54[1];

  v57 = sub_20D9734D8();
  v58 = sub_20D975478();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v77[0] = v60;
    *v59 = 136315906;
    *(v59 + 4) = sub_20D7F4DC8(0xD000000000000010, 0x800000020D983790, v77);
    *(v59 + 12) = 2080;
    *(v59 + 14) = sub_20D7F4DC8(v52, v53, v77);
    *(v59 + 22) = 2080;
    if (v52 == v55 && v53 == v56 || (sub_20D9757C8() & 1) != 0)
    {
      v61 = 0xE200000000000000;
      v62 = 29545;
    }

    else
    {
      v61 = 0xE600000000000000;
      v62 = 0x544F4E207369;
    }

    v70 = sub_20D7F4DC8(v62, v61, v77);

    *(v59 + 24) = v70;
    *(v59 + 32) = 2080;
    *(v59 + 34) = sub_20D7F4DC8(v55, v56, v77);
    _os_log_impl(&dword_20D7C9000, v57, v58, "%s locGridID:%s %s = homeGridID:%s", v59, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v60, -1, -1);
    MEMORY[0x20F324260](v59, -1, -1);

    v47 = v75;
  }

  else
  {
  }

  v71 = v76;
  if (v52 == v55 && v53 == v56)
  {
    v68 = 0;
  }

  else
  {
    v68 = sub_20D9757C8() ^ 1;
  }

  sub_20D8053D4(v71, type metadata accessor for GridForecastSnapshot);
  sub_20D8053D4(v47, type metadata accessor for GridForecastSnapshot);
  return v68 & 1;
}

uint64_t sub_20D800F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = sub_20D975318();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_20D9752E8();

  v10 = sub_20D9752D8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  sub_20D82D02C(0, 0, v8, a3, v11);
}

uint64_t sub_20D801050@<X0>(uint64_t a1@<X0>, int a2@<W2>, char *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, void *a9, uint64_t a10, unsigned __int8 a11, void *a12, uint64_t a13)
{
  v217 = a7;
  v216 = a6;
  v199 = a4;
  v198 = a3;
  LODWORD(v203) = a2;
  v215 = a8;
  v201 = a10;
  v200 = a9;
  v15 = type metadata accessor for GridForecastAppView();
  v212 = *(v15 - 1);
  v16 = *(v212 + 64);
  MEMORY[0x28223BE20](v15);
  v213 = v17;
  v214 = v174 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839308, &qword_20D978420);
  v18 = *(*(v207 - 8) + 64);
  MEMORY[0x28223BE20](v207);
  v211 = v174 - v19;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839310, &qword_20D978428);
  v20 = *(*(v210 - 8) + 64);
  MEMORY[0x28223BE20](v210);
  v196 = v174 - v21;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839318, &qword_20D978430);
  v22 = *(*(v191 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v191);
  v195 = v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v225 = v174 - v25;
  v223 = sub_20D9744B8();
  v226 = *(v223 - 8);
  v26 = *(v226 + 64);
  MEMORY[0x28223BE20](v223);
  v224 = v174 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for BasicEnergyForecastView(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v189 = v174 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v190 = v174 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v192 = v174 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v193 = v174 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v194 = v174 - v39;
  MEMORY[0x28223BE20](v38);
  v222 = v174 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839320, &qword_20D978438);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v204 = v174 - v43;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392A0, &unk_20D978130);
  v44 = *(*(v208 - 8) + 64);
  MEMORY[0x28223BE20](v208);
  v46 = v174 - v45;
  v47 = sub_20D972628();
  v218 = *(v47 - 8);
  v219 = v47;
  v48 = *(v218 + 64);
  v49 = MEMORY[0x28223BE20](v47);
  v202 = v174 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v52 = v174 - v51;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  v53 = *(*(v205 - 8) + 64);
  MEMORY[0x28223BE20](v205);
  v55 = v174 - v54;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839168, &qword_20D978440);
  v56 = a1;
  sub_20D973B98();
  v57 = sub_20D9729C8();
  if (v57)
  {
    v58 = v57;
    MEMORY[0x28223BE20](v57);
    v174[-2] = v52;
    sub_20D871194(sub_20D80534C, v58, v55);
  }

  else
  {
    v59 = sub_20D972998();
    (*(*(v59 - 8) + 56))(v55, 1, 1, v59);
  }

  v206 = v55;
  v197 = a12;
  (*(v218 + 8))(v52, v219);
  *v46 = sub_20D974158();
  *(v46 + 1) = 0;
  v46[16] = 0;
  v209 = v46;
  v220 = a5;
  if (v203)
  {
    LODWORD(v219) = a11;
    v203 = type metadata accessor for GridForecastSnapshot(0);
    v182 = *&v198[*(v203 + 32)];
    v60 = v222;
    sub_20D7E7080(v199, (v222 + 8));
    v183 = *(a5 + v15[7]);
    v61 = v28;
    v62 = *(v28 + 28);

    v188 = v56;
    sub_20D973B98();
    v202 = v15[5];
    Strong = swift_unknownObjectWeakLoadStrong();
    v63 = v15[10];
    v64 = a5;
    v65 = (a5 + v15[9]);
    v66 = *v65;
    v67 = v65[1];
    v69 = *(v64 + v63);
    v68 = *(v64 + v63 + 8);
    v70 = v61[8];
    swift_unknownObjectWeakInit();
    v180 = v61[9];
    v71 = v61[11];
    v72 = v61[12];
    v218 = a13;
    v178 = &v60[v71];
    v179 = &v60[v72];
    v73 = v61[13];
    v74 = v61[14];
    v184 = v15;
    v176 = &v60[v73];
    v177 = &v60[v74];
    v75 = v61[15];
    v174[1] = v61[16];
    v175 = &v60[v75];
    v76 = v60;
    *&v228 = 0x3FF0000000000000;
    LODWORD(v199) = *MEMORY[0x277CE0A68];
    v77 = *(v226 + 104);
    v226 += 104;
    v198 = v77;
    (v77)(v224);
    sub_20D7DD75C(v66);
    sub_20D7DD75C(v69);
    v78 = v217;
    swift_retain_n();
    v79 = v66;
    v186 = v66;
    v190 = v67;
    sub_20D7DD75C(v66);
    v189 = v69;
    v187 = v68;
    sub_20D7DD75C(v69);
    v185 = sub_20D7E6420();
    sub_20D973B68();
    *v76 = v182;
    v76[48] = v183;
    v80 = Strong;
    swift_unknownObjectWeakAssign();

    v76[v180] = 0;
    v76[v61[10]] = 0;
    v81 = v178;
    *v178 = v79;
    v81[1] = v67;
    v82 = v179;
    *v179 = v69;
    v82[1] = v68;
    v83 = v176;
    *v176 = 0;
    *(v83 + 1) = 0;
    v84 = v216;
    v85 = v177;
    *v177 = v216;
    *(v85 + 1) = v78;
    v86 = v175;
    *v175 = v84;
    *(v86 + 1) = v78;
    v87 = v225;
    sub_20D974B68();
    LOBYTE(v79) = sub_20D974328();
    sub_20D973AD8();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392F8, &qword_20D9783F0) + 36);
    *v96 = v79;
    *(v96 + 8) = v89;
    *(v96 + 16) = v91;
    *(v96 + 24) = v93;
    *(v96 + 32) = v95;
    *(v96 + 40) = 0;
    LOBYTE(v79) = sub_20D974338();
    sub_20D973AD8();
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v105 = v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392F0, &unk_20D9783E0) + 36);
    *v105 = v79;
    *(v105 + 8) = v98;
    *(v105 + 16) = v100;
    *(v105 + 24) = v102;
    *(v105 + 32) = v104;
    *(v105 + 40) = 0;
    LOBYTE(v79) = sub_20D974348();
    sub_20D973AD8();
    v107 = v106;
    v109 = v108;
    v111 = v110;
    v113 = v112;
    v114 = v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839330, &qword_20D978450) + 36);
    *v114 = v79;
    *(v114 + 8) = v107;
    *(v114 + 16) = v109;
    *(v114 + 24) = v111;
    *(v114 + 32) = v113;
    *(v114 + 40) = 0;
    v115 = sub_20D974C48();
    v117 = v116;
    v118 = v87 + *(v191 + 36);
    sub_20D974C08();
    *(v118 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A78, &unk_20D976E10) + 56)) = 256;
    v119 = (v118 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A80, &qword_20D97B670) + 36));
    *v119 = v115;
    v119[1] = v117;
    v216 = *(v200 + *(v203 + 32));
    v120 = v194;
    sub_20D7E7080(v201, (v194 + 8));
    LODWORD(v217) = *(v220 + v184[8]);
    v121 = v61[7];

    sub_20D973B98();
    v202 = swift_unknownObjectWeakLoadStrong();
    v122 = v61[8];
    swift_unknownObjectWeakInit();
    v203 = v61[9];
    v123 = (v120 + v61[11]);
    v221 = (v120 + v61[12]);
    v124 = (v120 + v61[13]);
    v125 = (v120 + v61[14]);
    v126 = v61[16];
    v127 = (v120 + v61[15]);
    *&v228 = 0x3FF0000000000000;
    (v198)(v224, v199, v223);
    v128 = v218;
    swift_retain_n();
    sub_20D973B68();
    *v120 = v216;
    *(v120 + 48) = v217;
    v129 = v202;
    swift_unknownObjectWeakAssign();

    *(v120 + v203) = 0;
    *(v120 + v61[10]) = v219 & 1;
    v130 = v190;
    *v123 = v186;
    v123[1] = v130;
    v132 = v221;
    v131 = v222;
    v133 = v187;
    *v221 = v189;
    v132[1] = v133;
    *v124 = 0;
    v124[1] = 0;
    v134 = v197;
    *v125 = v197;
    v125[1] = v128;
    *v127 = v134;
    v127[1] = v128;
    v135 = v193;
    sub_20D80536C(v131, v193, type metadata accessor for BasicEnergyForecastView);
    v136 = v195;
    sub_20D7EB7E8(v225, v195, &qword_27C839318, &qword_20D978430);
    v137 = v192;
    sub_20D80536C(v120, v192, type metadata accessor for BasicEnergyForecastView);
    v138 = v196;
    sub_20D80536C(v135, v196, type metadata accessor for BasicEnergyForecastView);
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839338, &qword_20D978458);
    sub_20D7EB7E8(v136, v138 + *(v139 + 64), &qword_27C839318, &qword_20D978430);
    sub_20D80536C(v137, v138 + *(v139 + 80), type metadata accessor for BasicEnergyForecastView);
    sub_20D8053D4(v137, type metadata accessor for BasicEnergyForecastView);
    v140 = v204;
    sub_20D7E3944(v136, &qword_27C839318, &qword_20D978430);
    sub_20D8053D4(v135, type metadata accessor for BasicEnergyForecastView);
    sub_20D7EB7E8(v138, v211, &qword_27C839310, &qword_20D978428);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124D00, &qword_27C839310, &qword_20D978428);
    sub_20D8050A4(qword_281126D58, type metadata accessor for BasicEnergyForecastView);
    sub_20D9741B8();
    sub_20D7E3944(v138, &qword_27C839310, &qword_20D978428);
    sub_20D7E3944(v225, &qword_27C839318, &qword_20D978430);
    sub_20D8053D4(v120, type metadata accessor for BasicEnergyForecastView);
    v141 = v222;
  }

  else
  {
    v142 = sub_20D8023B0();
    v143 = *(type metadata accessor for GridForecastSnapshot(0) + 32);
    if (v142)
    {
      v225 = *&v198[v143];

      v144 = 7;
      v145 = v199;
    }

    else
    {
      v225 = *(v200 + v143);

      v144 = 8;
      v145 = v201;
      v217 = a13;
      v216 = v197;
    }

    sub_20D7E7080(v145, &v228);
    LODWORD(v222) = *(a5 + v15[v144]);
    sub_20D973B98();
    v146 = v15[5];
    v221 = swift_unknownObjectWeakLoadStrong();
    v147 = v15[10];
    v148 = (a5 + v15[9]);
    v149 = *v148;
    v150 = v148[1];
    v151 = *(a5 + v147);
    v152 = *(a5 + v147 + 8);
    v153 = v28;
    v154 = *(v28 + 32);
    v155 = v189;
    swift_unknownObjectWeakInit();
    v201 = v153[9];
    v156 = v153[12];
    v199 = (v155 + v153[11]);
    v203 = v155 + v156;
    v157 = v153[14];
    v198 = (v155 + v153[13]);
    v200 = (v155 + v157);
    v158 = v153[16];
    v197 = (v155 + v153[15]);
    v227 = 0x3FF0000000000000;
    (*(v226 + 104))(v224, *MEMORY[0x277CE0A68], v223);
    v159 = v217;
    swift_retain_n();
    sub_20D7DD75C(v149);
    sub_20D7DD75C(v151);
    sub_20D7E6420();
    sub_20D973B68();
    *v155 = v225;
    sub_20D7EB734(&v228, v155 + 8);
    *(v155 + 48) = v222;
    (*(v218 + 32))(v155 + v153[7], v202, v219);
    v160 = v221;
    swift_unknownObjectWeakAssign();

    *(v155 + v201) = 1;
    *(v155 + v153[10]) = 0;
    v161 = v199;
    *v199 = v149;
    v161[1] = v150;
    v162 = v203;
    *v203 = v151;
    *(v162 + 8) = v152;
    v163 = v198;
    *v198 = 0;
    *(v163 + 1) = 0;
    v164 = v216;
    v165 = v200;
    *v200 = v216;
    v165[1] = v159;
    v166 = v197;
    *v197 = v164;
    v166[1] = v159;
    v141 = v190;
    sub_20D80503C(v155, v190, type metadata accessor for BasicEnergyForecastView);
    sub_20D80536C(v141, v211, type metadata accessor for BasicEnergyForecastView);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_281124D00, &qword_27C839310, &qword_20D978428);
    sub_20D8050A4(qword_281126D58, type metadata accessor for BasicEnergyForecastView);
    v140 = v204;
    sub_20D9741B8();
  }

  sub_20D8053D4(v141, type metadata accessor for BasicEnergyForecastView);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839328, &qword_20D978448);
  v168 = v209;
  sub_20D7EAF18(v140, &v209[*(v167 + 44)], &qword_27C839320, &qword_20D978438);
  v169 = v214;
  sub_20D80536C(v220, v214, type metadata accessor for GridForecastAppView);
  v170 = (*(v212 + 80) + 16) & ~*(v212 + 80);
  v171 = swift_allocObject();
  sub_20D80503C(v169, v171 + v170, type metadata accessor for GridForecastAppView);
  sub_20D7EBC4C(&qword_281124D58, &qword_27C8392A0, &unk_20D978130);
  sub_20D80472C();
  v172 = v206;
  sub_20D974858();

  sub_20D7E3944(v168, &qword_27C8392A0, &unk_20D978130);
  return sub_20D7E3944(v172, &qword_27C838E48, &qword_20D977670);
}