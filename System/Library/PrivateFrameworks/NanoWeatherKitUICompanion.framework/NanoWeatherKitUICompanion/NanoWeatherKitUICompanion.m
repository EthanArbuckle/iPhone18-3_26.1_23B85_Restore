id NWKUIBundle()
{
  if (NWKUIBundle_onceToken[0] != -1)
  {
    NWKUIBundle_cold_1();
  }

  v1 = NWKUIBundle_Bundle;

  return v1;
}

uint64_t __NWKUIBundle_block_invoke()
{
  NWKUIBundle_Bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id NWKUILocalizedString(void *a1)
{
  v1 = a1;
  v2 = NWKUIBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_286D045D8 table:0];

  return v3;
}

void sub_25B761824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NWMInterpolateBetweenColors(void *a1, void *a2, double a3)
{
  v16 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v9 = 0.0;
  v5 = a2;
  [a1 getRed:&v16 green:&v15 blue:&v14 alpha:&v13];
  [v5 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];

  v6 = fmin(fmax(a3, 0.0), 1.0);
  v7 = [MEMORY[0x277D75348] colorWithRed:v16 + (v12 - v16) * v6 green:v15 + (v11 - v15) * v6 blue:v14 + (v10 - v14) * v6 alpha:v13 + (v9 - v13) * v6];

  return v7;
}

id NWMColorIndexForValueInIndices(void *a1, double a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 firstObject];
  [v4 value];
  v6 = v5;

  if (v6 > a2)
  {
    v7 = [v3 firstObject];
LABEL_5:
    v11 = v7;
    goto LABEL_17;
  }

  v8 = [v3 lastObject];
  [v8 value];
  v10 = v9;

  if (v10 < a2)
  {
    v7 = [v3 lastObject];
    goto LABEL_5;
  }

  v11 = [v3 firstObject];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v3;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        [v17 value];
        if (v18 >= a2)
        {
          v19 = v17;

          v11 = v19;
          goto LABEL_16;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

LABEL_17:
  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

id NWMColorForValueInIndices(void *a1, double a2)
{
  v3 = a1;
  v4 = NWMColorIndexForValueInIndices(v3, a2);
  if (v4)
  {
    v5 = [v3 firstObject];

    if (v4 != v5)
    {
      v6 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "indexOfObject:", v4) - 1}];
      [v6 value];
      v8 = a2 - v7;
      [v4 value];
      v10 = v9;
      [v6 value];
      v12 = v8 / (v10 - v11);
      v13 = [v6 color];
      v14 = [v4 color];
      v15 = NWMInterpolateBetweenColors(v13, v14, v12);

      goto LABEL_7;
    }

    v16 = [v4 color];
  }

  else
  {
    v16 = [MEMORY[0x277D75348] whiteColor];
  }

  v15 = v16;
LABEL_7:

  return v15;
}

uint64_t sub_25B7634A4(uint64_t *a1, SEL *a2, unint64_t *a3)
{
  v5 = *a1;
  v6 = [objc_opt_self() *a2];
  sub_25B7637A0(0, a3, a1);

  return sub_25B78FA68();
}

uint64_t DayWeather.pressureTrend.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CE33E8];
  v3 = sub_25B7903D8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t DayWeather.temperature.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_25B78FF48();
  sub_25B78FF38();
  sub_25B7637A0(0, &qword_27FBA1A58, 0x277CCAE48);
  sub_25B78FAA8();
  v11 = *(v1 + 8);
  v11(v5, v0);
  v11(v8, v0);
  sub_25B78FA48();
  return (v11)(v10, v0);
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

uint64_t sub_25B7637A0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_25B76384C(uint64_t a1, uint64_t a2, uint64_t *a3, SEL *a4, unint64_t *a5)
{
  v7 = *a3;
  v8 = [objc_opt_self() *a4];
  sub_25B7637A0(0, a5, a3);

  return sub_25B78FA68();
}

uint64_t sub_25B7638D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CE33E8];
  v3 = sub_25B7903D8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25B76394C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_25B78FF48();
  sub_25B78FF38();
  sub_25B7637A0(0, &qword_27FBA1A58, 0x277CCAE48);
  sub_25B78FAA8();
  v11 = *(v1 + 8);
  v11(v5, v0);
  v11(v8, v0);
  sub_25B78FA48();
  return (v11)(v10, v0);
}

double variable initialization expression of AppPrecipitationOutlookFormatter.outlookConditions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A78, &qword_25B792430);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_25B791A40;
  *(v0 + 56) = &type metadata for MinutelyOutlookCondition;
  *(v0 + 64) = &off_286D037D8;
  return result;
}

double variable initialization expression of WidgetPrecipitationOutlookFormatter.outlookConditions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A78, &qword_25B792430);
  v0 = swift_allocObject();
  *&result = 4;
  *(v0 + 56) = &type metadata for MinutelyOutlookCondition;
  *(v0 + 64) = &off_286D037D8;
  *(v0 + 96) = &type metadata for CurrentOutlookCondition;
  *(v0 + 104) = &off_286D03AF0;
  *(v0 + 136) = &type metadata for HourlyOutlookCondition;
  *(v0 + 144) = &off_286D03B28;
  *(v0 + 16) = xmmword_25B791A50;
  *(v0 + 176) = &type metadata for DailyOutlookCondition;
  *(v0 + 184) = &off_286D03968;
  *(v0 + 152) = 10;
  return result;
}

id variable initialization expression of NHPWidgetDateFormatter.dateFormatter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA968]);

  return [v0 init];
}

id variable initialization expression of NHPWidgetDateFormatter.dateComponentsFormatter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA958]);

  return [v0 init];
}

uint64_t _s25NanoWeatherKitUICompanion19VisibilityFormatterC14overrideLocale10Foundation0H0VSgvpfi_0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25B78FDF8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of PrecipitationChanceFormatter.percentFormatter()
{
  if (qword_27FBA1A00 != -1)
  {
    swift_once();
  }
}

id variable initialization expression of PercentFormatter.percentageFormatter()
{
  v0 = sub_25B78FDF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_25B78FDC8();
  v6 = sub_25B78FDB8();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  [v5 setNumberStyle_];
  return v5;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25B763E8C(uint64_t a1, int a2)
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

uint64_t sub_25B763EAC(uint64_t result, int a2, int a3)
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

void type metadata accessor for CLLocationCoordinate2D()
{
  if (!qword_27FBA1A80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FBA1A80);
    }
  }
}

uint64_t WeatherCondition.conditionIconName(coordinates:date:)()
{
  v5 = *MEMORY[0x277D85DE8];
  if (qword_27FBA19A0 != -1)
  {
    swift_once();
  }

  GEOLocationCoordinate2DMake();
  sub_25B78FCB8();
  v1 = *MEMORY[0x277D0E7C0];
  isDayLightForLocation = geo_isDayLightForLocation();
  result = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v0, isDayLightForLocation);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::String_optional __swiftcall WeatherCondition.conditionIconName(isDaytime:)(Swift::Bool isDaytime)
{
  v2 = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v1, isDaytime);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t WeatherCondition.simplePrecipitationCondtion()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B790348();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CE32F0])
  {
    goto LABEL_2;
  }

  v11 = v9;
  if (v9 == *MEMORY[0x277CE3300])
  {
    goto LABEL_4;
  }

  if (v9 == *MEMORY[0x277CE3270] || v9 == *MEMORY[0x277CE3240])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277CE3290])
  {
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x277CE3308])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277CE3310])
  {
    goto LABEL_4;
  }

  if (v9 == *MEMORY[0x277CE3318] || v9 == *MEMORY[0x277CE3278] || v9 == *MEMORY[0x277CE32A0] || v9 == *MEMORY[0x277CE3280])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277CE32C0])
  {
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x277CE32A8])
  {
LABEL_4:
    v10 = MEMORY[0x277CE32A8];
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277CE3260] || v9 == *MEMORY[0x277CE3268])
  {
LABEL_2:
    v10 = MEMORY[0x277CE32A0];
LABEL_5:
    v11 = *v10;
LABEL_6:
    (*(v5 + 104))(a1, v11, v4);
    return (*(v5 + 56))(a1, 0, 1, v4);
  }

  if (v9 == *MEMORY[0x277CE3320])
  {
    (*(v5 + 104))(a1, v9, v4);
    return (*(v5 + 56))(a1, 0, 1, v4);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    return (*(v5 + 56))(a1, 1, 1, v4);
  }
}

uint64_t WeatherCondition.iconHasRain.getter()
{
  v1 = v0;
  v2 = sub_25B790348();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  v14 = v7 == *MEMORY[0x277CE32F0] || v7 == *MEMORY[0x277CE3270] || v7 == *MEMORY[0x277CE3240] || v7 == *MEMORY[0x277CE3308] || v7 == *MEMORY[0x277CE32A0] || v7 == *MEMORY[0x277CE32C0] || v7 == *MEMORY[0x277CE3258] || v7 == *MEMORY[0x277CE3260];
  v15 = v14;
  if (!v14)
  {
    (*(v3 + 8))(v6, v2);
  }

  return v15;
}

uint64_t WeatherCondition.fallbackCondition.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B790348();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, v2, v4);
  v10 = (*(v5 + 88))(v8, v4);
  if (v10 == *MEMORY[0x277CE3270])
  {
    v11 = MEMORY[0x277CE3240];
  }

  else
  {
    if (v10 != *MEMORY[0x277CE3278] && v10 != *MEMORY[0x277CE3280] && v10 != *MEMORY[0x277CE3258])
    {
      v9(a1, v2, v4);
      return (*(v5 + 8))(v8, v4);
    }

    v11 = MEMORY[0x277CE3260];
  }

  return (*(v5 + 104))(a1, *v11, v4);
}

id sub_25B76460C()
{
  v1 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter____lazy_storage___accessibilityFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter____lazy_storage___accessibilityFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter____lazy_storage___accessibilityFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v5 = sub_25B790618();
    [v4 setDateFormat_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_25B7646B0()
{
  v0 = type metadata accessor for LocationDateFormatter();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  _s25NanoWeatherKitUICompanion21LocationDateFormatterC8calendar33_F11D3163793300FBD0749B496D3764F410Foundation8CalendarVvpfi_0();
  *(v3 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter____lazy_storage___accessibilityFormatter) = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v3 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter_formatter) = v4;
  v5 = v4;
  v6 = sub_25B790618();
  [v5 setDateFormat_];

  static LocationDateFormatter.shared = v3;
}

uint64_t *LocationDateFormatter.shared.unsafeMutableAddressor()
{
  if (qword_27FBA1988 != -1)
  {
    swift_once();
  }

  return &static LocationDateFormatter.shared;
}

uint64_t static LocationDateFormatter.shared.getter()
{
  if (qword_27FBA1988 != -1)
  {
    swift_once();
  }
}

uint64_t LocationDateFormatter.dayOfWeekForDate(_:timeZone:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36[1] = a1;
  v37 = sub_25B78FEB8();
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B78FF28();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 16);
  v14(v13, a2, v9);
  v15 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter_calendar;
  swift_beginAccess();
  sub_25B78FE98();
  v36[0] = a2;
  v14(v13, a2, v9);
  sub_25B78FE98();
  swift_endAccess();
  v16 = v2 + v15;
  v17 = v37;
  (*(v5 + 16))(v8, v16, v37);
  v18 = sub_25B78FE38();
  (*(v5 + 8))(v8, v17);
  if (v18)
  {
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v19 = qword_27FBA1C18;
    v20 = sub_25B790618();
    v21 = sub_25B790618();
    v22 = sub_25B790618();
    v23 = [v19 localizedStringForKey:v20 value:v21 table:v22];

    v24 = sub_25B790638();
  }

  else
  {
    v25 = *(v3 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter_formatter);
    v26 = sub_25B78FEE8();
    [v25 setTimeZone_];

    v27 = sub_25B78FD08();
    v28 = [v25 stringFromDate_];

    v29 = sub_25B790638();
    v31 = v30;

    v40 = v29;
    v41 = v31;
    sub_25B765148();
    v32 = sub_25B7909E8();
    v34 = v33;

    v38 = v32;
    v39 = v34;
    v24 = sub_25B790A08();
  }

  return v24;
}

uint64_t LocationDateFormatter.accessibilityDayOfWeekForDate(_:timeZone:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_25B78FEB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B78FF28();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    return 0;
  }

  v33 = a1;
  v15 = *(v11 + 16);
  v15(v14, a2, v10);
  v32 = v5;
  v16 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter_calendar;
  swift_beginAccess();
  sub_25B78FE98();
  v31 = a2;
  v17 = a2;
  v18 = v2;
  v15(v14, v17, v10);
  sub_25B78FE98();
  swift_endAccess();
  v19 = v2 + v16;
  v20 = v32;
  (*(v6 + 16))(v9, v19, v32);
  v21 = sub_25B78FE38();
  (*(v6 + 8))(v9, v20);
  if (v21)
  {
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v22 = qword_27FBA1C18;
    v23 = sub_25B790618();
    v24 = sub_25B790618();
    v25 = sub_25B790618();
    v26 = [v22 localizedStringForKey:v23 value:v24 table:v25];
  }

  else
  {
    v28 = sub_25B76460C();
    v29 = sub_25B78FEE8();
    [v28 setTimeZone_];

    v24 = *(v18 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter____lazy_storage___accessibilityFormatter);
    v25 = sub_25B78FD08();
    v26 = [v24 stringFromDate_];
  }

  v30 = sub_25B790638();
  return v30;
}

uint64_t LocationDateFormatter.isDateToday(_:timeZone:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_25B78FEB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B78FF28();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  (*(v13 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v14 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter_calendar;
  swift_beginAccess();
  sub_25B78FE98();
  swift_endAccess();
  (*(v6 + 16))(v9, v3 + v14, v5);
  LOBYTE(a2) = sub_25B78FE38();
  (*(v6 + 8))(v9, v5);
  return a2 & 1;
}

unint64_t sub_25B765148()
{
  result = qword_27FBA1A98;
  if (!qword_27FBA1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1A98);
  }

  return result;
}

uint64_t LocationDateFormatter.deinit()
{
  v1 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter_calendar;
  v2 = sub_25B78FEB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t LocationDateFormatter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion21LocationDateFormatter_calendar;
  v2 = sub_25B78FEB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocationDateFormatter()
{
  result = qword_27FBA1AA8;
  if (!qword_27FBA1AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B76532C()
{
  result = sub_25B78FEB8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25B7653D4()
{
  v0 = sub_25B790498();
  __swift_allocate_value_buffer(v0, qword_27FBA4948);
  __swift_project_value_buffer(v0, qword_27FBA4948);
  return sub_25B790488();
}

uint64_t static Logger.stringForDate(_:)()
{
  if (qword_27FBA1998 != -1)
  {
    swift_once();
  }

  v0 = static Logger.dateFormatter;
  v1 = sub_25B78FD08();
  v2 = [v0 stringFromDate_];

  v3 = sub_25B790638();
  return v3;
}

uint64_t *Logger.dateFormatter.unsafeMutableAddressor()
{
  if (qword_27FBA1998 != -1)
  {
    swift_once();
  }

  return &static Logger.dateFormatter;
}

id sub_25B76554C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setTimeStyle_];
  result = [v0 setDateStyle_];
  static Logger.dateFormatter = v0;
  return result;
}

id static Logger.dateFormatter.getter()
{
  if (qword_27FBA1998 != -1)
  {
    swift_once();
  }

  v1 = static Logger.dateFormatter;

  return v1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t PromptLaunchQuery.createURL()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AB8, &qword_25B791BA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v19 - v6;
  v8 = sub_25B78FB98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B78FB88();
  sub_25B78FB78();
  MEMORY[0x25F86C2D0](0x74706D6F7270, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AC0, &qword_25B791BA8);
  v13 = *(sub_25B78FAE8() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_25B791A40;
  v19[1] = a1;
  sub_25B790BD8();
  sub_25B78FAC8();

  sub_25B78FB08();
  sub_25B78FB28();
  v16 = sub_25B78FCA8();
  v17 = *(v16 - 8);
  result = (*(v17 + 48))(v7, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 8))(v12, v8);

    return (*(v17 + 32))(a2, v7, v16);
  }

  return result;
}

uint64_t static PromptLaunchQuery.query(for:)()
{
  v0 = sub_25B78FAE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v54[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B78FB98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v54[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AC8, &qword_25B791BB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v54[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v54[-1] - v15;
  sub_25B78FB18();
  sub_25B766244(v16, v14);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_25B7662B4(v16);
    v17 = v14;
LABEL_13:
    sub_25B7662B4(v17);
    return 0;
  }

  (*(v6 + 32))(v9, v14, v5);
  v18 = sub_25B78FAF8();
  if (!v18)
  {
LABEL_12:
    (*(v6 + 8))(v9, v5);
    v17 = v16;
    goto LABEL_13;
  }

  if (*(v18 + 16) != 1 || (v19 = v18, v20 = sub_25B78FB38(), !v21))
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v20 == 0x74706D6F7270 && v21 == 0xE600000000000000)
  {
  }

  else
  {
    v23 = sub_25B790BE8();

    if ((v23 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (!*(v19 + 16))
  {
    __break(1u);
LABEL_88:
    (*(v6 + 8))(v9, v5);
    sub_25B7662B4(v16);

    return 0;
  }

  (*(v1 + 16))(v4, v19 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

  v25 = sub_25B78FAD8();
  v27 = v26;
  (*(v1 + 8))(v4, v0);
  if (v27)
  {
    result = v25;
  }

  else
  {
    result = 48;
  }

  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0xE100000000000000;
  }

  v29 = HIBYTE(v28) & 0xF;
  v30 = result & 0xFFFFFFFFFFFFLL;
  if ((v28 & 0x2000000000000000) != 0)
  {
    v31 = HIBYTE(v28) & 0xF;
  }

  else
  {
    v31 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    goto LABEL_88;
  }

  if ((v28 & 0x1000000000000000) != 0)
  {
    v55 = 0;
    v33 = sub_25B76631C(result, v28, 10);
    v51 = v52;
    goto LABEL_85;
  }

  if ((v28 & 0x2000000000000000) != 0)
  {
    v54[0] = result;
    v54[1] = v28 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v29)
      {
        if (--v29)
        {
          v33 = 0;
          v43 = v54 + 1;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            v45 = 10 * v33;
            if ((v33 * 10) >> 64 != (10 * v33) >> 63)
            {
              break;
            }

            v33 = v45 + v44;
            if (__OFADD__(v45, v44))
            {
              break;
            }

            ++v43;
            if (!--v29)
            {
              goto LABEL_84;
            }
          }
        }

        goto LABEL_83;
      }

LABEL_94:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v29)
      {
        v33 = 0;
        v48 = v54;
        while (1)
        {
          v49 = *v48 - 48;
          if (v49 > 9)
          {
            break;
          }

          v50 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            break;
          }

          v33 = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            break;
          }

          ++v48;
          if (!--v29)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    if (v29)
    {
      if (--v29)
      {
        v33 = 0;
        v37 = v54 + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            break;
          }

          v33 = v39 - v38;
          if (__OFSUB__(v39, v38))
          {
            break;
          }

          ++v37;
          if (!--v29)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    goto LABEL_92;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v28 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_25B790A98();
  }

  v32 = *result;
  if (v32 == 43)
  {
    if (v30 < 1)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v29 = v30 - 1;
    if (v30 != 1)
    {
      v33 = 0;
      if (result)
      {
        v40 = (result + 1);
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            goto LABEL_83;
          }

          v42 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            goto LABEL_83;
          }

          v33 = v42 + v41;
          if (__OFADD__(v42, v41))
          {
            goto LABEL_83;
          }

          ++v40;
          if (!--v29)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_75;
    }

LABEL_83:
    v33 = 0;
    LOBYTE(v29) = 1;
    goto LABEL_84;
  }

  if (v32 != 45)
  {
    if (v30)
    {
      v33 = 0;
      if (result)
      {
        while (1)
        {
          v46 = *result - 48;
          if (v46 > 9)
          {
            goto LABEL_83;
          }

          v47 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            goto LABEL_83;
          }

          v33 = v47 + v46;
          if (__OFADD__(v47, v46))
          {
            goto LABEL_83;
          }

          ++result;
          if (!--v30)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_75;
    }

    goto LABEL_83;
  }

  if (v30 < 1)
  {
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v29 = v30 - 1;
  if (v30 == 1)
  {
    goto LABEL_83;
  }

  v33 = 0;
  if (result)
  {
    v34 = (result + 1);
    while (1)
    {
      v35 = *v34 - 48;
      if (v35 > 9)
      {
        goto LABEL_83;
      }

      v36 = 10 * v33;
      if ((v33 * 10) >> 64 != (10 * v33) >> 63)
      {
        goto LABEL_83;
      }

      v33 = v36 - v35;
      if (__OFSUB__(v36, v35))
      {
        goto LABEL_83;
      }

      ++v34;
      if (!--v29)
      {
        goto LABEL_84;
      }
    }
  }

LABEL_75:
  LOBYTE(v29) = 0;
LABEL_84:
  v55 = v29;
  v51 = v29;
LABEL_85:
  (*(v6 + 8))(v9, v5);
  sub_25B7662B4(v16);

  if (v51)
  {
    return 0;
  }

  return v33;
}

BOOL sub_25B76608C(void *a1, uint64_t *a2)
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

void *sub_25B7660BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_25B7660E8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_25B7661D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25B766204@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25B766F10(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_25B766244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AC8, &qword_25B791BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B7662B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AC8, &qword_25B791BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unsigned __int8 *sub_25B76631C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_25B7906D8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25B766A28();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25B790A98();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_25B7668AC()
{
  result = qword_27FBA1AD0;
  if (!qword_27FBA1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1AD0);
  }

  return result;
}

unint64_t sub_25B766904()
{
  result = qword_27FBA1AD8;
  if (!qword_27FBA1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1AD8);
  }

  return result;
}

unint64_t sub_25B76695C()
{
  result = qword_27FBA1AE0;
  if (!qword_27FBA1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1AE0);
  }

  return result;
}

unint64_t sub_25B7669B4()
{
  result = qword_27FBA1AE8;
  if (!qword_27FBA1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1AE8);
  }

  return result;
}

uint64_t sub_25B766A28()
{
  v0 = sub_25B7906E8();
  v4 = sub_25B766AA8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_25B766AA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25B790668();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_25B7909C8();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_25B766C00(v9, 0);
  v12 = sub_25B766C74(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_25B790668();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_25B790A98();
LABEL_4:

  return sub_25B790668();
}

void *sub_25B766C00(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF0, ",)");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_25B766C74(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_25B766E94(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25B7906B8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_25B790A98();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_25B766E94(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_25B790698();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_25B766E94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25B7906C8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F86CE30](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_25B766F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_25B766F54()
{
  type metadata accessor for GeoServicesUtility();
  result = swift_initStaticObject();
  static GeoServicesUtility.shared = result;
  return result;
}

uint64_t *GeoServicesUtility.shared.unsafeMutableAddressor()
{
  if (qword_27FBA19A0 != -1)
  {
    swift_once();
  }

  return &static GeoServicesUtility.shared;
}

uint64_t static GeoServicesUtility.shared.getter()
{
  type metadata accessor for GeoServicesUtility();

  return swift_initStaticObject();
}

uint64_t GeoServicesUtility.isDaylight(coordinate:date:)()
{
  v3 = *MEMORY[0x277D85DE8];
  GEOLocationCoordinate2DMake();
  sub_25B78FCB8();
  v0 = *MEMORY[0x277D0E7C0];
  result = geo_isDayLightForLocation();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25B7670C0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v197 = a3;
  v213 = a4;
  v193 = sub_25B78FD88();
  v192 = *(v193 - 8);
  v6 = *(v192 + 64);
  MEMORY[0x28223BE20](v193);
  v191 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v190 = (&v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v187 = &v180 - v13;
  MEMORY[0x28223BE20](v12);
  v195 = &v180 - v14;
  v204 = sub_25B790348();
  v201 = *(v204 - 8);
  v15 = *(v201 + 64);
  v16 = MEMORY[0x28223BE20](v204);
  v184 = &v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v188 = &v180 - v19;
  MEMORY[0x28223BE20](v18);
  v196 = &v180 - v20;
  v208 = sub_25B7903C8();
  v212 = *(v208 - 8);
  v21 = *(v212 + 64);
  v22 = MEMORY[0x28223BE20](v208);
  v189 = &v180 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v186 = &v180 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v200 = &v180 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v203 = &v180 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v194 = &v180 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v198 = &v180 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v202 = &v180 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v206 = &v180 - v37;
  MEMORY[0x28223BE20](v36);
  v205 = &v180 - v38;
  v39 = sub_25B7903B8();
  v40 = *(v39 - 8);
  v209 = v39;
  v210 = v40;
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v180 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42);
  v199 = &v180 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v211 = &v180 - v48;
  MEMORY[0x28223BE20](v47);
  v207 = &v180 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B00, &unk_25B791EF0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v180 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B08, &unk_25B791E50);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v55 - 8);
  v59 = &v180 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v61 = &v180 - v60;
  v185 = a1;
  sub_25B7689C8(&v180 - v60);
  sub_25B769604(v61, v59, &qword_27FBA1B08, &unk_25B791E50);
  if ((*(v51 + 48))(v59, 1, v50) == 1)
  {
    sub_25B76966C(v61, &qword_27FBA1B08, &unk_25B791E50);
    sub_25B76966C(v59, &qword_27FBA1B08, &unk_25B791E50);
    v62 = type metadata accessor for PrecipitationOutlook(0);
    v63 = *(*(v62 - 8) + 56);
    v64 = v213;
LABEL_35:
    v127 = 1;
    return v63(v64, v127, 1, v62);
  }

  v183 = v61;
  (*(v51 + 32))(v54, v59, v50);
  v65 = sub_25B7903F8();
  MEMORY[0x28223BE20](v65);
  *(&v180 - 2) = a2;
  v67 = sub_25B7690F8(sub_25B7693CC, (&v180 - 4), v66);
  v68 = *(v67 + 16);
  v69 = v54;
  if (v68 < 2)
  {
    v86 = v210;
    v87 = v208;
    if (v68)
    {
      v88 = v209;
      (*(v210 + 16))(v44, v67 + ((*(v210 + 80) + 32) & ~*(v210 + 80)), v209);

      v89 = v199;
      (*(v86 + 32))(v199, v44, v88);
      if (sub_25B77FD6C())
      {
        v90 = v51;
        v182 = v50;
        v91 = v189;
        sub_25B790378();
        v92 = v89;
        v93 = v190;
        sub_25B77FFA0(v190);
        (*(v212 + 8))(v91, v87);
        v94 = v201;
        v95 = v204;
        if ((*(v201 + 48))(v93, 1, v204) != 1)
        {
          v150 = v184;
          (*(v94 + 32))(v184, v93, v95);
          if (qword_27FBA1990 != -1)
          {
            swift_once();
          }

          v151 = v69;
          v152 = sub_25B790498();
          __swift_project_value_buffer(v152, qword_27FBA4948);
          v153 = sub_25B790478();
          v154 = sub_25B790918();
          if (os_log_type_enabled(v153, v154))
          {
            v155 = swift_slowAlloc();
            *v155 = 0;
            _os_log_impl(&dword_25B75E000, v153, v154, "NHP indicates precipitation.", v155, 2u);
            MEMORY[0x25F86DA50](v155, -1, -1);
          }

          v156 = type metadata accessor for PrecipitationOutlook(0);
          v157 = v156[8];
          v158 = v213;
          (*(v94 + 16))(v213 + v157, v150, v95);
          (*(v94 + 56))(v158 + v157, 0, 1, v95);
          type metadata accessor for PrecipitationOutlook.State(0);
          swift_storeEnumTagMultiPayload();
          v159 = v156[9];
          v160 = sub_25B78FF28();
          (*(*(v160 - 8) + 16))(v158 + v159, v197, v160);
          sub_25B78FD58();
          (*(v94 + 8))(v150, v95);
          (*(v210 + 8))(v199, v209);
          (*(v90 + 8))(v151, v182);
          sub_25B76966C(v183, &qword_27FBA1B08, &unk_25B791E50);
          *(v158 + v156[5]) = 0;
          *(v158 + v156[6]) = 1;
          *(v158 + v156[7]) = 0;
          v63 = *(*(v156 - 1) + 56);
          v64 = v158;
          goto LABEL_52;
        }

        (*(v86 + 8))(v92, v88);
        sub_25B76966C(v93, &qword_27FBA1AF8, &unk_25B791E40);
        v50 = v182;
        v51 = v90;
      }

      else
      {
        (*(v86 + 8))(v89, v88);
      }
    }

    else
    {
    }

    v96 = v213;
    if (qword_27FBA1990 != -1)
    {
      swift_once();
    }

    v97 = sub_25B790498();
    __swift_project_value_buffer(v97, qword_27FBA4948);
    v98 = sub_25B790478();
    v99 = sub_25B790948();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_25B75E000, v98, v99, "No valid summaries in the minute forecast.", v100, 2u);
      MEMORY[0x25F86DA50](v100, -1, -1);
    }

    (*(v51 + 8))(v69, v50);
    v101 = v183;
    goto LABEL_34;
  }

  v181 = v51;
  v184 = a2;
  v182 = v50;
  v70 = v209;
  v71 = v210 + 16;
  v72 = *(v210 + 16);
  v73 = v67 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
  v74 = v207;
  v72(v207, v73, v209);
  v72(v211, v73 + *(v71 + 56), v70);

  v75 = v205;
  sub_25B790378();
  v76 = v212;
  v77 = *(v212 + 104);
  v78 = v69;
  v79 = v206;
  LODWORD(v199) = *MEMORY[0x277CE3390];
  v80 = v208;
  v77(v206);
  v189 = sub_25B7696CC(&qword_27FBA1B10, MEMORY[0x277CE33B8]);
  LOBYTE(v73) = sub_25B790608();
  v81 = v79;
  v82 = v78;
  v83 = *(v76 + 8);
  v83(v81, v80);
  v212 = v76 + 8;
  v83(v75, v80);
  v84 = v203;
  v190 = v77;
  v180 = v82;
  if (v73)
  {
    goto LABEL_22;
  }

  sub_25B790378();
  v85 = v198;
  (v77)(v198, v199, v80);
  sub_25B7696CC(&qword_27FBA1B18, MEMORY[0x277CE33B8]);
  sub_25B790708();
  sub_25B790708();
  if (v216 == v214 && v217 == v215)
  {
    v83(v85, v80);
    v83(v202, v80);

    v74 = v207;
    goto LABEL_20;
  }

  v102 = sub_25B790BE8();
  v83(v85, v80);
  v83(v202, v80);

  v74 = v207;
  v77 = v190;
  if ((v102 & 1) == 0)
  {
LABEL_22:
    sub_25B790378();
    v108 = v200;
    (v77)(v200, v199, v80);
    sub_25B7696CC(&qword_27FBA1B18, MEMORY[0x277CE33B8]);
    sub_25B790708();
    sub_25B790708();
    if (v216 == v214 && v217 == v215)
    {
      v83(v108, v80);
      v83(v84, v80);

      v109 = v181;
    }

    else
    {
      v110 = sub_25B790BE8();
      v83(v108, v80);
      v83(v84, v80);

      v109 = v181;
      if ((v110 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v111 = v205;
    sub_25B790378();
    v112 = v206;
    (v190)(v206, v199, v80);
    v113 = sub_25B790608();
    v83(v112, v80);
    v83(v111, v80);
    if ((v113 & 1) == 0)
    {
      v114 = v186;
      sub_25B790378();
      v115 = v187;
      sub_25B77FFA0(v187);
      v83(v114, v80);
      v116 = v201;
      v117 = v204;
      if ((*(v201 + 48))(v115, 1, v204) == 1)
      {
        sub_25B76966C(v115, &qword_27FBA1AF8, &unk_25B791E40);
        v109 = v181;
        v74 = v207;
        goto LABEL_29;
      }

      v212 = *(v116 + 32);
      (v212)(v188, v115, v117);
      if (qword_27FBA1990 != -1)
      {
        swift_once();
      }

      v161 = sub_25B790498();
      __swift_project_value_buffer(v161, qword_27FBA4948);
      v162 = sub_25B790478();
      v163 = sub_25B790918();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        *v164 = 0;
        _os_log_impl(&dword_25B75E000, v162, v163, "NHP indicates no precipitation currently, but will soon.", v164, 2u);
        MEMORY[0x25F86DA50](v164, -1, -1);
      }

      v165 = v192;
      v166 = v213;
      v167 = v193;
      (*(v192 + 16))(v213, v184, v193);
      v168 = v191;
      v169 = v211;
      sub_25B7903A8();
      sub_25B78FCE8();
      v171 = v170;
      (*(v165 + 8))(v168, v167);
      sub_25B790398();
      v173 = v172;
      v174 = v209;
      v175 = *(v210 + 8);
      v175(v169, v209);
      v175(v207, v174);
      (*(v181 + 8))(v180, v182);
      sub_25B76966C(v183, &qword_27FBA1B08, &unk_25B791E50);
      v156 = type metadata accessor for PrecipitationOutlook(0);
      v176 = v166 + v156[8];
      v177 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
      (*(v116 + 104))(v176, *MEMORY[0x277CE3250], v117);
      (v212)(v176 + v177, v188, v117);
      (*(v116 + 56))(v176 + v177, 0, 1, v117);
      type metadata accessor for PrecipitationOutlook.State(0);
      swift_storeEnumTagMultiPayload();
      v178 = v156[9];
      v179 = sub_25B78FF28();
      (*(*(v179 - 8) + 16))(v166 + v178, v197, v179);
      *(v166 + v156[5]) = v171;
      *(v166 + v156[6]) = 1;
      *(v166 + v156[7]) = v173;
      v63 = *(*(v156 - 1) + 56);
      v64 = v166;
LABEL_52:
      v127 = 0;
      v62 = v156;
      return v63(v64, v127, 1, v62);
    }

LABEL_29:
    if (qword_27FBA1990 != -1)
    {
      swift_once();
    }

    v118 = sub_25B790498();
    __swift_project_value_buffer(v118, qword_27FBA4948);
    v119 = sub_25B790478();
    v120 = sub_25B790938();
    v121 = os_log_type_enabled(v119, v120);
    v96 = v213;
    v122 = v182;
    v123 = v183;
    if (v121)
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_25B75E000, v119, v120, "NHP found summaries, but we can't use any of them.", v124, 2u);
      MEMORY[0x25F86DA50](v124, -1, -1);
    }

    v125 = *(v210 + 8);
    v126 = v209;
    v125(v211, v209);
    v125(v74, v126);
    (*(v109 + 8))(v180, v122);
    v101 = v123;
LABEL_34:
    sub_25B76966C(v101, &qword_27FBA1B08, &unk_25B791E50);
    v62 = type metadata accessor for PrecipitationOutlook(0);
    v63 = *(*(v62 - 8) + 56);
    v64 = v96;
    goto LABEL_35;
  }

LABEL_20:
  v103 = v181;
  v104 = v194;
  sub_25B790378();
  v105 = v195;
  sub_25B77FFA0(v195);
  v83(v104, v80);
  v106 = v201;
  v107 = v204;
  if ((*(v201 + 48))(v105, 1, v204) == 1)
  {
    sub_25B76966C(v105, &qword_27FBA1AF8, &unk_25B791E40);
    v77 = v190;
    goto LABEL_22;
  }

  v212 = *(v106 + 32);
  (v212)(v196, v105, v107);
  v129 = v106;
  if (qword_27FBA1990 != -1)
  {
    swift_once();
  }

  v130 = sub_25B790498();
  __swift_project_value_buffer(v130, qword_27FBA4948);
  v131 = sub_25B790478();
  v132 = sub_25B790918();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    *v133 = 0;
    _os_log_impl(&dword_25B75E000, v131, v132, "NHP indicates precipitation and a stop later.", v133, 2u);
    MEMORY[0x25F86DA50](v133, -1, -1);
  }

  v134 = v192;
  v135 = v213;
  v136 = v184;
  v137 = v193;
  (*(v192 + 16))(v213, v184, v193);
  v138 = v191;
  v139 = v211;
  sub_25B7903A8();
  sub_25B78FCE8();
  v141 = v140;
  (*(v134 + 8))(v138, v137);
  LOBYTE(v136) = sub_25B7801F4(v136);
  v142 = v209;
  v143 = *(v210 + 8);
  v143(v139, v209);
  v143(v207, v142);
  (*(v103 + 8))(v180, v182);
  sub_25B76966C(v183, &qword_27FBA1B08, &unk_25B791E50);
  v144 = type metadata accessor for PrecipitationOutlook(0);
  v145 = v135 + v144[8];
  v146 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
  v147 = v204;
  (v212)(v145, v196, v204);
  (*(v129 + 56))(v145, 0, 1, v147);
  (*(v129 + 104))(v145 + v146, *MEMORY[0x277CE3250], v147);
  type metadata accessor for PrecipitationOutlook.State(0);
  swift_storeEnumTagMultiPayload();
  v148 = v144[9];
  v149 = sub_25B78FF28();
  (*(*(v149 - 8) + 16))(v135 + v148, v197, v149);
  *(v135 + v144[5]) = v141;
  *(v135 + v144[6]) = v136 & 1;
  *(v135 + v144[7]) = 0;
  return (*(*(v144 - 1) + 56))(v135, 0, 1, v144);
}

uint64_t sub_25B7689C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25B7903C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v47 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = v33 - v7;
  v45 = sub_25B7903B8();
  v8 = *(v45 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B08, &unk_25B791E50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B00, &unk_25B791EF0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v33 - v18;
  sub_25B790118();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_25B76966C(v14, &qword_27FBA1B08, &unk_25B791E50);
    return (*(v16 + 56))(a1, 1, 1, v15);
  }

  else
  {
    v36 = v15;
    v37 = a1;
    v35 = v16;
    v33[0] = *(v16 + 32);
    v33[1] = v16 + 32;
    (v33[0])(v19, v14, v15);
    v34 = v19;
    result = sub_25B7903F8();
    v21 = 0;
    v42 = *(result + 16);
    v43 = result;
    v41 = v8 + 16;
    v40 = *MEMORY[0x277CE3390];
    v22 = (v3 + 8);
    v38 = v8 + 8;
    v39 = (v3 + 104);
    v23 = v44;
    v24 = v46;
    while (1)
    {
      if (v42 == v21)
      {

        v31 = v35;
        v32 = v36;
        (*(v35 + 8))(v34, v36);
        return (*(v31 + 56))(v37, 1, 1, v32);
      }

      if (v21 >= *(v43 + 16))
      {
        break;
      }

      v25 = v45;
      (*(v8 + 16))(v23, v43 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21++, v45);
      sub_25B790378();
      v26 = v47;
      (*v39)(v47, v40, v2);
      sub_25B7696CC(&qword_27FBA1B10, MEMORY[0x277CE33B8]);
      v27 = sub_25B790608();
      v28 = *v22;
      (*v22)(v26, v2);
      v28(v24, v2);
      result = (*(v8 + 8))(v23, v25);
      if ((v27 & 1) == 0)
      {

        v30 = v36;
        v29 = v37;
        (v33[0])(v37, v34, v36);
        return (*(v35 + 56))(v29, 0, 1, v30);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25B768E94()
{
  v0 = sub_25B78FD88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  sub_25B790388();
  sub_25B769604(v11, v9, &qword_27FBA1B38, &qword_25B791E70);
  if ((*(v1 + 48))(v9, 1, v0) == 1)
  {
    sub_25B76966C(v11, &qword_27FBA1B38, &qword_25B791E70);
    sub_25B76966C(v9, &qword_27FBA1B38, &qword_25B791E70);
    v12 = 1;
  }

  else
  {
    (*(v1 + 32))(v4, v9, v0);
    sub_25B7696CC(&qword_27FBA1B40, MEMORY[0x277CC9578]);
    v13 = sub_25B7905F8();
    (*(v1 + 8))(v4, v0);
    sub_25B76966C(v11, &qword_27FBA1B38, &qword_25B791E70);
    v12 = v13 ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_25B7690F8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_25B7903B8();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25B7693EC(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_25B7693EC(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

size_t sub_25B7693EC(size_t a1, int64_t a2, char a3)
{
  result = sub_25B76942C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25B76940C(char *a1, int64_t a2, char a3)
{
  result = sub_25B769714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25B76942C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B30, &qword_25B791E68);
  v10 = *(sub_25B7903B8() - 8);
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
  v15 = *(sub_25B7903B8() - 8);
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

uint64_t sub_25B769604(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25B76966C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25B7696CC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_25B769714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B48, &qword_25B791E78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t UVIndex.ExposureCategory.activeColor.getter(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      return sub_25B790528();
    }

    else
    {
      return MEMORY[0x282133478]();
    }
  }

  else if (a1 == 2)
  {
    return MEMORY[0x282133498]();
  }

  else if (a1 == 3)
  {
    return MEMORY[0x2821333E8]();
  }

  else
  {
    return MEMORY[0x2821334A8]();
  }
}

uint64_t sub_25B76984C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B50, &qword_25B791E90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = *(a4 + 16);

  if (v13)
  {
    v14 = (a4 + 32);
    while (1)
    {
      v15 = v14[3];
      v16 = v14[4];
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v16 + 16))(a1, a2, a3, v15, v16);
      v17 = type metadata accessor for PrecipitationOutlook(0);
      if ((*(*(v17 - 8) + 48))(v12, 1, v17) != 1)
      {
        break;
      }

      sub_25B769FD8(v12);
      v14 += 5;
      if (!--v13)
      {
        goto LABEL_5;
      }
    }

    return sub_25B76A040(v12, v30);
  }

  else
  {
LABEL_5:

    if (qword_27FBA1990 != -1)
    {
      swift_once();
    }

    v18 = sub_25B790498();
    __swift_project_value_buffer(v18, qword_27FBA4948);
    v19 = sub_25B790478();
    v20 = sub_25B790928();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_25B75E000, v19, v20, "No preciptiation in daily forecast, therefore it will not rain.", v21, 2u);
      MEMORY[0x25F86DA50](v21, -1, -1);
    }

    v22 = sub_25B78FD88();
    v23 = v30;
    (*(*(v22 - 8) + 16))(v30, a2, v22);
    v24 = type metadata accessor for PrecipitationOutlook(0);
    v25 = v24[8];
    type metadata accessor for PrecipitationOutlook.State(0);
    swift_storeEnumTagMultiPayload();
    v26 = v24[9];
    v27 = sub_25B78FF28();
    result = (*(*(v27 - 8) + 16))(v23 + v26, a3, v27);
    *(v23 + v24[5]) = 0x412A5E0000000000;
    *(v23 + v24[6]) = 1;
    *(v23 + v24[7]) = 0;
  }

  return result;
}

uint64_t PrecipitationOutlookFormatter.outlook(for:at:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a6;
  v45 = a3;
  v11 = sub_25B790498();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11);
  v41 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B50, &qword_25B791E90);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - v16;
  v18 = *(a5 + 24);
  v38 = a4;
  v39 = v6;
  v40 = a5;
  result = v18(a4, a5);
  v20 = result;
  v21 = *(result + 16);
  if (v21)
  {
    v22 = 0;
    v23 = result + 32;
    while (v22 < *(v20 + 16))
    {
      sub_25B769EE4(v23, v46);
      v24 = v47;
      v25 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      (*(v25 + 16))(a1, a2, v45, v24, v25);
      __swift_destroy_boxed_opaque_existential_1(v46);
      v26 = type metadata accessor for PrecipitationOutlook(0);
      if ((*(*(v26 - 8) + 48))(v17, 1, v26) != 1)
      {

        return sub_25B76A040(v17, v44);
      }

      ++v22;
      result = sub_25B769FD8(v17);
      v23 += 40;
      if (v21 == v22)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v27 = v41;
    (*(v40 + 16))(v38);
    v28 = sub_25B790478();
    v29 = sub_25B790928();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_25B75E000, v28, v29, "No preciptiation in daily forecast, therefore it will not rain.", v30, 2u);
      MEMORY[0x25F86DA50](v30, -1, -1);
    }

    (*(v42 + 8))(v27, v43);
    v31 = sub_25B78FD88();
    v32 = v44;
    (*(*(v31 - 8) + 16))(v44, a2, v31);
    v33 = type metadata accessor for PrecipitationOutlook(0);
    v34 = v33[8];
    type metadata accessor for PrecipitationOutlook.State(0);
    swift_storeEnumTagMultiPayload();
    v35 = v33[9];
    v36 = sub_25B78FF28();
    result = (*(*(v36 - 8) + 16))(v32 + v35, v45, v36);
    *(v32 + v33[5]) = 0x412A5E0000000000;
    *(v32 + v33[6]) = 1;
    *(v32 + v33[7]) = 0;
  }

  return result;
}

uint64_t sub_25B769EE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25B769FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B50, &qword_25B791E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B76A040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationOutlook(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PrecipitationOutlookFormatter.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FBA1990 != -1)
  {
    swift_once();
  }

  v2 = sub_25B790498();
  v3 = __swift_project_value_buffer(v2, qword_27FBA4948);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25B76A16C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FBA1990 != -1)
  {
    swift_once();
  }

  v2 = sub_25B790498();
  v3 = __swift_project_value_buffer(v2, qword_27FBA4948);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t LocationSummary.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LocationSummary.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

double LocationSummary.coordinates.getter()
{
  v1 = v0 + *(type metadata accessor for LocationSummary(0) + 32);
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t LocationSummary.init(name:isLocal:timeZone:id:coordinates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a5;
  *(a7 + 3) = a6;
  v14 = type metadata accessor for LocationSummary(0);
  v15 = v14[6];
  v16 = sub_25B78FF28();
  result = (*(*(v16 - 8) + 32))(&a7[v15], a4, v16);
  a7[v14[7]] = a3;
  v18 = &a7[v14[8]];
  *v18 = a8;
  v18[1] = a9;
  return result;
}

uint64_t sub_25B76A3C4()
{
  v0 = sub_25B78FF28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocationSummary(0);
  __swift_allocate_value_buffer(v5, static LocationSummary.invalid);
  v6 = __swift_project_value_buffer(v5, static LocationSummary.invalid);
  sub_25B78FF18();
  v7 = *MEMORY[0x277CE4278];
  v8 = *(MEMORY[0x277CE4278] + 8);
  *v6 = 0;
  *(v6 + 8) = 0xE000000000000000;
  strcpy((v6 + 16), "nil-location");
  *(v6 + 29) = 0;
  *(v6 + 30) = -5120;
  result = (*(v1 + 32))(v6 + v5[6], v4, v0);
  *(v6 + v5[7]) = 0;
  v10 = (v6 + v5[8]);
  *v10 = v7;
  v10[1] = v8;
  return result;
}

uint64_t LocationSummary.invalid.unsafeMutableAddressor()
{
  if (qword_27FBA19A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocationSummary(0);

  return __swift_project_value_buffer(v0, static LocationSummary.invalid);
}

uint64_t static LocationSummary.invalid.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FBA19A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocationSummary(0);
  v3 = __swift_project_value_buffer(v2, static LocationSummary.invalid);

  return sub_25B76A5EC(v3, a1);
}

uint64_t sub_25B76A5EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t LocationSummary.description.getter()
{
  MEMORY[0x25F86CE10](*(v0 + 16), *(v0 + 24));
  MEMORY[0x25F86CE10](62, 0xE100000000000000);
  return 0xD000000000000012;
}

unint64_t sub_25B76A6B8()
{
  MEMORY[0x25F86CE10](*(v0 + 16), *(v0 + 24));
  MEMORY[0x25F86CE10](62, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t sub_25B76A718@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t LocationForecastSummary.forecast.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationForecastSummary(0) + 20);
  v4 = sub_25B790128();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_25B76A7D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t LocationForecastSummary.init(location:forecast:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B58, &unk_25B791EC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B60, &unk_25B7922B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B68, &unk_25B791ED0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B08, &unk_25B791E50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B70, &qword_25B791EE0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B78, &qword_25B791EE8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v44 - v25;
  v27 = sub_25B790128();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LocationForecastSummary(0);
  v33 = a3 + *(v32 + 24);
  _s25NanoWeatherKitUICompanion23LocationForecastSummaryV2id10Foundation4UUIDVvpfi_0();
  v47 = a1;
  v34 = a1;
  v35 = v46;
  sub_25B76A5EC(v34, a3);
  sub_25B76B01C(v35, v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_25B76966C(v26, &qword_27FBA1B78, &qword_25B791EE8);
    v36 = sub_25B790228();
    (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B00, &unk_25B791EF0);
    (*(*(v37 - 8) + 56))(v18, 1, 1, v37);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
    (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
    (*(*(v39 - 8) + 56))(v44, 1, 1, v39);
    v40 = sub_25B790368();
    (*(*(v40 - 8) + 56))(v45, 1, 1, v40);
    v41 = a3 + *(v32 + 20);
    sub_25B7900D8();
    sub_25B76966C(v35, &qword_27FBA1B78, &qword_25B791EE8);
    return sub_25B76B08C(v47);
  }

  else
  {
    sub_25B76966C(v35, &qword_27FBA1B78, &qword_25B791EE8);
    sub_25B76B08C(v47);
    v43 = *(v28 + 32);
    v43(v31, v26, v27);
    return (v43)(a3 + *(v32 + 20), v31, v27);
  }
}

BOOL LocationForecastSummary.hasNHP.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B08, &unk_25B791E50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = v0 + *(type metadata accessor for LocationForecastSummary(0) + 20);
  sub_25B790118();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B00, &unk_25B791EF0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_25B76966C(v4, &qword_27FBA1B08, &unk_25B791E50);
  return v7;
}

uint64_t sub_25B76AE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_25B78FDA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL _s25NanoWeatherKitUICompanion15LocationSummaryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_25B790BE8()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), (v5 || (sub_25B790BE8()) && (v6 = type metadata accessor for LocationSummary(0), (MEMORY[0x25F86C690](a1 + v6[6], a2 + v6[6])) && *(a1 + v6[7]) == *(a2 + v6[7]) && (v7 = v6[8], v8 = (a1 + v7), v9 = *(a1 + v7), v10 = (a2 + v7), v9 == *v10)))
  {
    return v8[1] == v10[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25B76AFE4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B76B01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B78, &qword_25B791EE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B76B08C(uint64_t a1)
{
  v2 = type metadata accessor for LocationSummary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B76B0F8()
{
  result = qword_27FBA1B90;
  if (!qword_27FBA1B90)
  {
    sub_25B78FDA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1B90);
  }

  return result;
}

uint64_t sub_25B76B164(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25B78FF28();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25B76B224(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25B78FF28();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25B76B2C8()
{
  sub_25B78FF28();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLLocationCoordinate2D();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25B76B378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationSummary(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_25B790128();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_25B78FDA8();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_25B76B4CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LocationSummary(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_25B790128();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_25B78FDA8();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_25B76B618()
{
  result = type metadata accessor for LocationSummary(319);
  if (v1 <= 0x3F)
  {
    result = sub_25B790128();
    if (v2 <= 0x3F)
    {
      result = sub_25B78FDA8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

id sub_25B76B6B4()
{
  v0 = sub_25B78FDF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntegerFormatter();
  v5 = swift_allocObject();
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  *(v5 + 16) = v6;
  v7 = v6;
  sub_25B78FDC8();
  v8 = sub_25B78FDB8();
  (*(v1 + 8))(v4, v0);
  [v7 setLocale_];

  result = [*(v5 + 16) setMaximumFractionDigits_];
  static IntegerFormatter.shared = v5;
  return result;
}

uint64_t *IntegerFormatter.shared.unsafeMutableAddressor()
{
  if (qword_27FBA19B0 != -1)
  {
    swift_once();
  }

  return &static IntegerFormatter.shared;
}

uint64_t static IntegerFormatter.shared.getter()
{
  if (qword_27FBA19B0 != -1)
  {
    swift_once();
  }
}

Swift::String __swiftcall IntegerFormatter.formatValue(_:noValueStyle:)(Swift::Int_optional _, NanoWeatherKitUICompanion::FormatterNoValueStyle noValueStyle)
{
  if (_.is_nil || (v4 = *(v2 + 16), v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_], v6 = objc_msgSend(v4, sel_stringFromNumber_, v5), v5, !v6))
  {

    v10 = FormatterNoValueStyle.rawValue.getter(noValueStyle);
  }

  else
  {
    v7 = sub_25B790638();
    v9 = v8;

    v10 = v7;
    v11 = v9;
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t IntegerFormatter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::String_optional __swiftcall HourWeather.conditionIconName(isDaytime:)(Swift::Bool isDaytime)
{
  v2 = sub_25B790348();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B7900B8();
  v7 = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v6, isDaytime);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v10 = v7;
  v11 = v9;
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t HourWeather.conditionIconName(coordinate:date:)(double a1, double a2)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = sub_25B790348();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B7900B8();
  if (qword_27FBA19A0 != -1)
  {
    swift_once();
  }

  v15[1] = GEOLocationCoordinate2DMake(a1, a2);
  v15[2] = v9;
  sub_25B78FCB8();
  v10 = *MEMORY[0x277D0E7C0];
  isDayLightForLocation = geo_isDayLightForLocation();
  v12 = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v8, isDayLightForLocation);
  (*(v5 + 8))(v8, v4);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t HourWeather.displayPrecipitationChance.getter()
{
  v0 = sub_25B790348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B7900B8();
  isPrecipitationSbvg_0 = _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
  result = (*(v1 + 8))(v4, v0);
  if (isPrecipitationSbvg_0)
  {
    sub_25B790048();
    return sub_25B790758();
  }

  return result;
}

uint64_t sub_25B76BD50(void *a1)
{
  a1[1] = sub_25B76BDDC(&qword_27FBA1BB8);
  a1[2] = sub_25B76BDDC(&qword_27FBA1BC0);
  result = sub_25B76BDDC(&qword_27FBA1BC8);
  a1[3] = result;
  return result;
}

uint64_t sub_25B76BDDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25B7900C8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FormatterNoValueStyle.rawValue.getter(unsigned __int8 a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_27FBA19B8 == -1)
      {
        goto LABEL_7;
      }
    }

    else if (qword_27FBA19B8 == -1)
    {
LABEL_7:
      v2 = qword_27FBA1C18;
      v3 = sub_25B790618();
      v4 = sub_25B790618();
      v5 = sub_25B790618();
      v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

      v1 = sub_25B790638();
      return v1;
    }

    swift_once();
    goto LABEL_7;
  }

  return a1;
}

uint64_t sub_25B76BFD4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = FormatterNoValueStyle.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == FormatterNoValueStyle.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25B790BE8();
  }

  return v8 & 1;
}

uint64_t sub_25B76C05C()
{
  v1 = *v0;
  sub_25B790C18();
  FormatterNoValueStyle.rawValue.getter(v1);
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B76C0C0()
{
  FormatterNoValueStyle.rawValue.getter(*v0);
  sub_25B790678();
}

uint64_t sub_25B76C114()
{
  v1 = *v0;
  sub_25B790C18();
  FormatterNoValueStyle.rawValue.getter(v1);
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B76C174@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s25NanoWeatherKitUICompanion21FormatterNoValueStyleO03rawG0ACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_25B76C1A4@<X0>(uint64_t *a1@<X8>)
{
  result = FormatterNoValueStyle.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

NanoWeatherKitUICompanion::PercentStyle_optional __swiftcall PercentStyle.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_25B790B08();

  if (v1 == 1)
  {
    v2.value = NanoWeatherKitUICompanion_PercentStyle_noPercent;
  }

  else
  {
    v2.value = NanoWeatherKitUICompanion_PercentStyle_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t PercentStyle.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 37;
  }
}

uint64_t sub_25B76C25C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 37;
  }

  if (v3)
  {
    v5 = 0xE100000000000000;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  if (*a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = 37;
  }

  if (*a2)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0xE100000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25B790BE8();
  }

  return v9 & 1;
}

uint64_t sub_25B76C2E8()
{
  v1 = *v0;
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B76C350()
{
  *v0;
  sub_25B790678();
}

uint64_t sub_25B76C3A4()
{
  v1 = *v0;
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B76C408@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25B790B08();

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

void sub_25B76C468(uint64_t *a1@<X8>)
{
  v2 = 37;
  if (*v1)
  {
    v2 = 0;
  }

  v3 = 0xE100000000000000;
  if (*v1)
  {
    v3 = 0xE000000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t _s25NanoWeatherKitUICompanion21FormatterNoValueStyleO03rawG0ACSgSS_tcfC_0()
{
  v0 = sub_25B790B08();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25B76C4EC()
{
  result = qword_27FBA1BD0;
  if (!qword_27FBA1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1BD0);
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

unint64_t sub_25B76C5BC()
{
  result = qword_27FBA1BE8;
  if (!qword_27FBA1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1BE8);
  }

  return result;
}

uint64_t sub_25B76C640(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for FormatterNoValueStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FormatterNoValueStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PercentStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PercentStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25B76C9CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_25B76D874(a3, a1, a2);
  sub_25B790808();
  sub_25B790858();
  if (v17[4] == v17[0])
  {
    v10 = a4(0);
    return (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  }

  else
  {
    v12 = sub_25B7908A8();
    v14 = v13;
    v15 = a4(0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(a5, v14, v15);
    v12(v17, 0);
    return (*(v16 + 56))(a5, 0, 1, v15);
  }
}

uint64_t sub_25B76CB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B70, &qword_25B791EE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v68 = &v64 - v15;
  v16 = sub_25B78FD88();
  v72 = *(v16 - 8);
  v73 = v16;
  v17 = *(v72 + 64);
  MEMORY[0x28223BE20](v16);
  v66 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_25B790348();
  v75 = *(v79 - 8);
  v19 = *(v75 + 64);
  v20 = MEMORY[0x28223BE20](v79);
  v65 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v69 = &v64 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v64 - v24;
  v26 = sub_25B78FFC8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v74 = a2;
  v71 = a3;
  v31 = sub_25B76D2B8(a1, a2, a3, a4);
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = 0;
    v77 = (v27 + 8);
    v78 = (v75 + 8);
    while (1)
    {
      if (v33 >= *(v31 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      (*(v27 + 16))(v30, v31 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v33, v26);
      sub_25B78FFB8();
      isPrecipitationSbvg_0 = _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
      v5 = *v78;
      (*v78)(v25, v79);
      if (isPrecipitationSbvg_0)
      {
        break;
      }

      ++v33;
      (*v77)(v30, v26);
      if (v32 == v33)
      {
        goto LABEL_6;
      }
    }

    v64 = v26;

    if (qword_27FBA1990 == -1)
    {
      goto LABEL_8;
    }

LABEL_15:
    swift_once();
LABEL_8:
    v37 = sub_25B790498();
    __swift_project_value_buffer(v37, qword_27FBA4948);
    v38 = sub_25B790478();
    v39 = sub_25B790918();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v79;
    v42 = v75;
    v43 = v69;
    if (v40)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_25B75E000, v38, v39, "Daily forecast indicates precipitation.", v44, 2u);
      MEMORY[0x25F86DA50](v44, -1, -1);
    }

    v45 = v66;
    sub_25B78FF78();
    sub_25B78FCE8();
    v47 = v46;
    (*(v72 + 8))(v45, v73);
    v48 = fmax(v47, 86400.0);
    v49 = v68;
    sub_25B7900E8();
    v50 = sub_25B790228();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v49, 1, v50) == 1)
    {
      sub_25B76966C(v49, &qword_27FBA1B70, &qword_25B791EE0);
      (*(v42 + 104))(v43, *MEMORY[0x277CE3250], v41);
    }

    else
    {
      v52 = v65;
      sub_25B790218();
      (*(v51 + 8))(v49, v50);
      v53 = v52;
      v41 = v79;
      (*(v42 + 32))(v43, v53, v79);
    }

    v54 = v43;
    sub_25B78FFB8();
    v55 = v70;
    sub_25B780844(v70);
    v5(v25, v41);
    v56 = v76;
    (*(v72 + 16))(v76, v74, v73);
    sub_25B78FF58();
    v58 = v57;
    (*v77)(v30, v64);
    v59 = type metadata accessor for PrecipitationOutlook(0);
    v60 = v56 + v59[8];
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
    (*(v42 + 32))(v60, v54, v41);
    sub_25B76D804(v55, v60 + v61);
    type metadata accessor for PrecipitationOutlook.State(0);
    swift_storeEnumTagMultiPayload();
    v62 = v59[9];
    v63 = sub_25B78FF28();
    (*(*(v63 - 8) + 16))(v56 + v62, v71, v63);
    *(v56 + v59[5]) = v48;
    *(v56 + v59[6]) = 1;
    *(v56 + v59[7]) = v58;
    return (*(*(v59 - 1) + 56))(v56, 0, 1, v59);
  }

  else
  {
LABEL_6:

    v35 = type metadata accessor for PrecipitationOutlook(0);
    return (*(*(v35 - 8) + 56))(v76, 1, 1, v35);
  }
}

uint64_t sub_25B76D2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B60, &unk_25B7922B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C00, &qword_25B793230);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v38 - v18;
  v20 = sub_25B78FD88();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v41 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v38 - v25;
  v44 = a1;
  sub_25B7900F8();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  v28 = *(v27 - 8);
  v39 = *(v28 + 48);
  v40 = v28;
  if (v39(v11, 1, v27) == 1)
  {
    sub_25B76966C(v11, &qword_27FBA1B60, &unk_25B7922B0);
  }

  else
  {
    v38 = a4;
    sub_25B76C9CC(&qword_27FBA1B88, &qword_25B791F00, &qword_27FBA1C08, MEMORY[0x277CE3158], v15);
    (*(v40 + 8))(v11, v27);
    v29 = sub_25B78FFC8();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v15, 1, v29) != 1)
    {
      sub_25B78FF78();
      (*(v30 + 8))(v15, v29);
      (*(v21 + 56))(v19, 0, 1, v20);
      (*(v21 + 32))(v26, v19, v20);
      a4 = v38;
      v32 = v45;
      v33 = v41;
      goto LABEL_8;
    }

    sub_25B76966C(v15, &qword_27FBA1C00, &qword_25B793230);
    a4 = v38;
  }

  (*(v21 + 56))(v19, 1, 1, v20);
  sub_25B78FCC8();
  v31 = (*(v21 + 48))(v19, 1, v20);
  v32 = v45;
  v33 = v41;
  if (v31 != 1)
  {
    sub_25B76966C(v19, &qword_27FBA1B38, &qword_25B791E70);
  }

LABEL_8:
  v34 = v43;
  if (sub_25B78FD78())
  {
    sub_25B78FCF8();
  }

  else
  {
    (*(v21 + 16))(v33, v34, v20);
  }

  sub_25B7900F8();
  if (v39(v32, 1, v27) == 1)
  {
    sub_25B76966C(v32, &qword_27FBA1B60, &unk_25B7922B0);
    v35 = MEMORY[0x277D84F90];
  }

  else
  {
    v35 = sub_25B7703B4(v33, a4, 0);
    (*(v40 + 8))(v32, v27);
  }

  v36 = *(v21 + 8);
  v36(v33, v20);
  v36(v26, v20);
  return v35;
}

uint64_t sub_25B76D804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B76D874(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_25B76D8C8()
{
  type metadata accessor for NWKUIBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27FBA1C18 = result;
  return result;
}

uint64_t sub_25B76D9E0()
{
  v0 = type metadata accessor for VisibilityFormatter();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale;
  v5 = sub_25B78FDF8();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  static VisibilityFormatter.shared = v3;
  return result;
}

uint64_t *VisibilityFormatter.shared.unsafeMutableAddressor()
{
  if (qword_27FBA19C0 != -1)
  {
    swift_once();
  }

  return &static VisibilityFormatter.shared;
}

uint64_t static VisibilityFormatter.shared.getter()
{
  if (qword_27FBA19C0 != -1)
  {
    swift_once();
  }
}

uint64_t VisibilityFormatter.overrideLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale;
  swift_beginAccess();
  return sub_25B769604(v1 + v3, a1, &qword_27FBA1C20, &qword_25B792300);
}

uint64_t VisibilityFormatter.overrideLocale.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale;
  swift_beginAccess();
  sub_25B76DBD8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_25B76DBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t VisibilityFormatter.UnitStyle.hashValue.getter(unsigned __int8 a1)
{
  sub_25B790C18();
  MEMORY[0x25F86D3B0](a1);
  return sub_25B790C38();
}

uint64_t sub_25B76DD40()
{
  v1 = *v0;
  sub_25B790C18();
  MEMORY[0x25F86D3B0](v1);
  return sub_25B790C38();
}

uint64_t sub_25B76DDB4()
{
  v1 = *v0;
  sub_25B790C18();
  MEMORY[0x25F86D3B0](v1);
  return sub_25B790C38();
}

uint64_t VisibilityFormatter.string(for:unitStyle:noValueStyle:)(uint64_t a1, int a2, uint64_t a3)
{
  v106 = a3;
  LODWORD(v105) = a2;
  v112 = a1;
  v3 = sub_25B7905B8();
  v103 = *(v3 - 8);
  v104 = v3;
  v4 = *(v103 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v100 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v99 = &v93 - v8;
  MEMORY[0x28223BE20](v7);
  v101 = &v93 - v9;
  v10 = sub_25B7905A8();
  v109 = *(v10 - 8);
  v110 = v10;
  v11 = *(v109 + 64);
  MEMORY[0x28223BE20](v10);
  v108 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v97 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v95 = &v93 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v93 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v94 = &v93 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v96 = &v93 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v93 - v26;
  v28 = sub_25B790908();
  v113 = *(v28 - 8);
  v114 = v28;
  v29 = *(v113 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v98 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v93 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v93 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C28, &qword_25B792308);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v93 - v40;
  v102 = sub_25B7908F8();
  v111 = *(v102 - 8);
  v42 = *(v111 + 64);
  v43 = MEMORY[0x28223BE20](v102);
  v45 = &v93 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v93 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v93 - v49;
  if (v105)
  {
    if (v105 == 1)
    {
      (*(v113 + 104))(v34, *MEMORY[0x277D7B4B0], v114);
      v51 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale;
      v52 = v107;
      swift_beginAccess();
      sub_25B769604(v52 + v51, v21, &qword_27FBA1C20, &qword_25B792300);
      v53 = sub_25B78FDF8();
      v54 = *(v53 - 8);
      if ((*(v54 + 48))(v21, 1, v53) == 1)
      {
        sub_25B76966C(v21, &qword_27FBA1C20, &qword_25B792300);
        v55 = v94;
        sub_25B78FDC8();
      }

      else
      {
        v55 = v94;
        (*(v54 + 32))(v94, v21, v53);
      }

      v73 = v103;
      v72 = v104;
      (*(v54 + 56))(v55, 0, 1, v53);
      sub_25B7907A8();
      v75 = v108;
      v74 = v109;
      v76 = v110;
      (*(v109 + 104))(v108, *MEMORY[0x277D7B3F8], v110);
      sub_25B790588();

      (*(v74 + 8))(v75, v76);
      sub_25B76966C(v55, &qword_27FBA1C20, &qword_25B792300);
      (*(v113 + 8))(v34, v114);
      v77 = v99;
      (*(v73 + 104))(v99, **(&unk_2799634F0 + v106), v72);
      sub_25B76E9D8();
      v78 = v102;
      v79 = sub_25B790998();
      v80 = v77;
      v50 = v48;
      v81 = v111;
    }

    else
    {
      v64 = v106;
      sub_25B7907C8();
      v65 = v98;
      (*(v113 + 104))(v98, *MEMORY[0x277D7B4B0], v114);
      v66 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale;
      v67 = v107;
      swift_beginAccess();
      v68 = v97;
      sub_25B769604(v67 + v66, v97, &qword_27FBA1C20, &qword_25B792300);
      v69 = sub_25B78FDF8();
      v70 = *(v69 - 8);
      if ((*(v70 + 48))(v68, 1, v69) == 1)
      {
        sub_25B76966C(v68, &qword_27FBA1C20, &qword_25B792300);
        v71 = v95;
        sub_25B78FDC8();
      }

      else
      {
        v71 = v95;
        (*(v70 + 32))(v95, v68, v69);
      }

      v78 = v102;
      v81 = v111;
      (*(v70 + 56))(v71, 0, 1, v69);
      v88 = v108;
      v87 = v109;
      v89 = v110;
      (*(v109 + 104))(v108, *MEMORY[0x277D7B3F8], v110);
      sub_25B790588();

      (*(v87 + 8))(v88, v89);
      sub_25B76966C(v71, &qword_27FBA1C20, &qword_25B792300);
      (*(v113 + 8))(v65, v114);
      v73 = v103;
      v90 = **(&unk_2799634F0 + v64);
      v91 = v100;
      v72 = v104;
      (*(v103 + 104))(v100, v90, v104);
      sub_25B76E9D8();
      v79 = sub_25B790998();
      v80 = v91;
      v50 = v45;
    }
  }

  else
  {
    v56 = v27;
    sub_25B76EA30();
    sub_25B78FA98();
    v105 = sub_25B790798();
    (*(v38 + 8))(v41, v37);
    (*(v113 + 104))(v36, *MEMORY[0x277D7B4B0], v114);
    v57 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale;
    v58 = v107;
    swift_beginAccess();
    v59 = v58 + v57;
    v60 = v96;
    sub_25B769604(v59, v96, &qword_27FBA1C20, &qword_25B792300);
    v61 = sub_25B78FDF8();
    v62 = *(v61 - 8);
    v63 = v36;
    if ((*(v62 + 48))(v60, 1, v61) == 1)
    {
      sub_25B76966C(v60, &qword_27FBA1C20, &qword_25B792300);
      sub_25B78FDC8();
    }

    else
    {
      (*(v62 + 32))(v56, v60, v61);
    }

    v73 = v103;
    v82 = v104;
    v78 = v102;
    (*(v62 + 56))(v56, 0, 1, v61);
    v84 = v108;
    v83 = v109;
    v85 = v110;
    (*(v109 + 104))(v108, *MEMORY[0x277D7B3F8], v110);
    sub_25B790588();

    (*(v83 + 8))(v84, v85);
    sub_25B76966C(v56, &qword_27FBA1C20, &qword_25B792300);
    (*(v113 + 8))(v63, v114);
    v86 = v101;
    v72 = v82;
    (*(v73 + 104))(v101, **(&unk_2799634F0 + v106), v82);
    sub_25B76E9D8();
    v79 = sub_25B790998();
    v80 = v86;
    v81 = v111;
  }

  (*(v73 + 8))(v80, v72);
  (*(v81 + 8))(v50, v78);
  return v79;
}

unint64_t sub_25B76E9D8()
{
  result = qword_27FBA1C30;
  if (!qword_27FBA1C30)
  {
    sub_25B7908F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1C30);
  }

  return result;
}

unint64_t sub_25B76EA30()
{
  result = qword_27FBA1A70;
  if (!qword_27FBA1A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBA1A70);
  }

  return result;
}

uint64_t VisibilityFormatter.localizedUnitString(for:unitStyle:)(uint64_t a1)
{
  v48 = a1;
  v49 = sub_25B7905B8();
  v47 = *(v49 - 8);
  v1 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25B7905A8();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v40 - v11;
  v13 = sub_25B790908();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C28, &qword_25B792308);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v40 - v21;
  v23 = sub_25B7908F8();
  v41 = *(v23 - 8);
  v42 = v23;
  v24 = *(v41 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B76EA30();
  sub_25B78FA98();
  sub_25B7907B8();
  (*(v19 + 8))(v22, v18);
  (*(v14 + 104))(v17, *MEMORY[0x277D7B4B0], v13);
  v27 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale;
  v28 = v40[1];
  swift_beginAccess();
  sub_25B769604(v28 + v27, v10, &qword_27FBA1C20, &qword_25B792300);
  v29 = sub_25B78FDF8();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v10, 1, v29) == 1)
  {
    sub_25B76966C(v10, &qword_27FBA1C20, &qword_25B792300);
    sub_25B78FDC8();
  }

  else
  {
    (*(v30 + 32))(v12, v10, v29);
  }

  (*(v30 + 56))(v12, 0, 1, v29);
  v32 = v43;
  v31 = v44;
  v33 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x277D7B3F8], v45);
  sub_25B790588();

  (*(v31 + 8))(v32, v33);
  sub_25B76966C(v12, &qword_27FBA1C20, &qword_25B792300);
  (*(v14 + 8))(v17, v13);
  v35 = v46;
  v34 = v47;
  v36 = v49;
  (*(v47 + 104))(v46, *MEMORY[0x277D7B408], v49);
  sub_25B76E9D8();
  v37 = v42;
  v38 = sub_25B790998();
  (*(v34 + 8))(v35, v36);
  (*(v41 + 8))(v26, v37);
  return v38;
}

uint64_t VisibilityFormatter.description(for:noValueStyle:)(uint64_t a1, unsigned __int8 a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C38, &qword_25B792310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C40, &qword_25B792318);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  sub_25B769604(a1, v7, &qword_27FBA1C38, &qword_25B792310);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_25B76966C(v7, &qword_27FBA1C38, &qword_25B792310);
    return FormatterNoValueStyle.rawValue.getter(a2);
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    v17 = objc_opt_self();
    v18 = [v17 meters];
    sub_25B78FAB8();

    sub_25B78FA78();
    v19 = *(v9 + 8);
    v19(v13, v8);
    v20 = [v17 miles];
    sub_25B78FAB8();

    sub_25B78FA78();
    v19(v13, v8);
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v21 = qword_27FBA1C18;
    v22 = sub_25B790618();

    v23 = sub_25B790618();
    v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

    v25 = sub_25B790638();
    v19(v15, v8);
    return v25;
  }
}

uint64_t VisibilityFormatter.__deallocating_deinit()
{
  sub_25B76966C(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion19VisibilityFormatter_overrideLocale, &qword_27FBA1C20, &qword_25B792300);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_25B76F50C()
{
  result = qword_27FBA1C48;
  if (!qword_27FBA1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1C48);
  }

  return result;
}

uint64_t type metadata accessor for VisibilityFormatter()
{
  result = qword_27FBA1C50;
  if (!qword_27FBA1C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25B76F5B4()
{
  sub_25B76F644();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_25B76F644()
{
  if (!qword_27FBA1C60)
  {
    sub_25B78FDF8();
    v0 = sub_25B7909B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBA1C60);
    }
  }
}

uint64_t *WeatherConditionSymbolMapper.shared.unsafeMutableAddressor()
{
  if (qword_27FBA19C8 != -1)
  {
    swift_once();
  }

  return &static WeatherConditionSymbolMapper.shared;
}

uint64_t sub_25B76F6FC()
{
  type metadata accessor for WeatherConditionSymbolMapper();
  result = swift_initStaticObject();
  static WeatherConditionSymbolMapper.shared = result;
  return result;
}

uint64_t static WeatherConditionSymbolMapper.shared.getter()
{
  type metadata accessor for WeatherConditionSymbolMapper();

  return swift_initStaticObject();
}

uint64_t WeatherConditionSymbolMapper.conditionIconName(condition:coordinates:date:)(uint64_t a1, double a2, double a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (qword_27FBA19A0 != -1)
  {
    v8 = a3;
    v9 = a2;
    swift_once();
    a2 = v9;
    a3 = v8;
  }

  GEOLocationCoordinate2DMake(a2, a3);
  sub_25B78FCB8();
  v4 = *MEMORY[0x277D0E7C0];
  isDayLightForLocation = geo_isDayLightForLocation();
  result = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(a1, isDayLightForLocation);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(uint64_t a1, char a2)
{
  v4 = sub_25B790348();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CE32F8])
  {
    return 0x6E732E64756F6C63;
  }

  if (v9 == *MEMORY[0x277CE3220])
  {
    return 0x747375642E6E7573;
  }

  if (v9 == *MEMORY[0x277CE3228])
  {
    return 0x6F6E732E646E6977;
  }

  if (v9 == *MEMORY[0x277CE32D8])
  {
    return 1684957559;
  }

  if (v9 == *MEMORY[0x277CE32B0])
  {
    goto LABEL_10;
  }

  v11 = v9;
  result = 0x69662E64756F6C63;
  if (v11 == *MEMORY[0x277CE32E0])
  {
    return result;
  }

  if (v11 != *MEMORY[0x277CE32F0])
  {
    if (v11 == *MEMORY[0x277CE3300])
    {
      return 2003791475;
    }

    if (v11 == *MEMORY[0x277CE32B8])
    {
      return 0x6F662E64756F6C63;
    }

    if (v11 == *MEMORY[0x277CE3270])
    {
      return 0xD000000000000012;
    }

    if (v11 != *MEMORY[0x277CE3240])
    {
      if (v11 == *MEMORY[0x277CE32E8])
      {
        return 0xD000000000000015;
      }

      if (v11 == *MEMORY[0x277CE3290])
      {
        return 0x61682E64756F6C63;
      }

      if (v11 == *MEMORY[0x277CE3298])
      {
        goto LABEL_31;
      }

      if (v11 == *MEMORY[0x277CE3308])
      {
        return 0xD000000000000014;
      }

      if (v11 == *MEMORY[0x277CE3310])
      {
        return 0x6E732E64756F6C63;
      }

      if (v11 == *MEMORY[0x277CE3288])
      {
        goto LABEL_10;
      }

      if (v11 == *MEMORY[0x277CE3318])
      {
        return 0x6E61636972727568;
      }

      if (v11 == *MEMORY[0x277CE3278])
      {
        goto LABEL_42;
      }

      if (v11 == *MEMORY[0x277CE3230])
      {
LABEL_10:
        if (a2)
        {
          return 0x2E78616D2E6E7573;
        }

        else
        {
          return 0x6174732E6E6F6F6DLL;
        }
      }

      if (v11 == *MEMORY[0x277CE3248])
      {
        return result;
      }

      if (v11 == *MEMORY[0x277CE3250])
      {
        if (a2)
        {
          return 0x75732E64756F6C63;
        }

        else
        {
          return 0x6F6D2E64756F6C63;
        }
      }

      if (v11 == *MEMORY[0x277CE32A0])
      {
        return 0x61722E64756F6C63;
      }

      if (v11 == *MEMORY[0x277CE3280])
      {
LABEL_42:
        if (a2)
        {
          return 0x6F622E64756F6C63;
        }

        else
        {
          return 0xD000000000000014;
        }
      }

      if (v11 == *MEMORY[0x277CE32C0])
      {
        return 0xD000000000000010;
      }

      if (v11 == *MEMORY[0x277CE32C8])
      {
LABEL_31:
        if (a2)
        {
          return 0x657A61682E6E7573;
        }

        else
        {
          return 0x7A61682E6E6F6F6DLL;
        }
      }

      if (v11 == *MEMORY[0x277CE32A8])
      {
        return 2003791475;
      }

      if (v11 == *MEMORY[0x277CE3258])
      {
        return 0xD000000000000014;
      }

      if (v11 == *MEMORY[0x277CE3238])
      {
        return 2003791475;
      }

      if (v11 == *MEMORY[0x277CE3218])
      {
        return 0xD000000000000013;
      }

      if (v11 == *MEMORY[0x277CE3260])
      {
        return 0xD000000000000014;
      }

      if (v11 == *MEMORY[0x277CE3268])
      {
        return 0x6C616369706F7274;
      }

      if (v11 == *MEMORY[0x277CE32D0])
      {
        return 1684957559;
      }

      if (v11 != *MEMORY[0x277CE3320])
      {
        (*(v5 + 8))(v8, v4);
        return 0;
      }
    }

    return 0xD000000000000010;
  }

  result = 0xD000000000000014;
  if (a2)
  {
    return 0xD000000000000012;
  }

  return result;
}

uint64_t WatchWeather.days(startingAt:size:sizeMustMatch:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B60, &unk_25B7922B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  sub_25B7900F8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_25B76966C(v9, &qword_27FBA1B60, &unk_25B7922B0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v13 = sub_25B7703B4(a1, a2, a3 & 1);
    (*(v11 + 8))(v9, v10);
    return v13;
  }
}

uint64_t WatchWeather.hour(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B68, &unk_25B791ED0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  sub_25B790108();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25B76966C(v5, &qword_27FBA1B68, &unk_25B791ED0);
    v8 = sub_25B7900C8();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  else
  {
    sub_25B771AB0();
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      sub_25B790418();
      v11 = 0;
    }

    v12 = sub_25B7900C8();
    (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
    return (*(v7 + 8))(v5, v6);
  }
}

uint64_t WatchWeather.hours(startingAt:size:sizeMustMatch:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B68, &unk_25B791ED0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  sub_25B790108();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_25B76966C(v9, &qword_27FBA1B68, &unk_25B791ED0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v13 = sub_25B770690(a1, a2, a3 & 1);
    (*(v11 + 8))(v9, v10);
    return v13;
  }
}

uint64_t sub_25B7703B4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C98, &qword_25B792408);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v17 - v8);
  v10 = sub_25B771764();
  if (v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  sub_25B773228(&qword_27FBA1C08, &qword_27FBA1B88, &qword_25B791F00);
  sub_25B790808();
  sub_25B790858();
  result = sub_25B790848();
  if (result < 0)
  {
    return MEMORY[0x277D84F90];
  }

  if (a2 <= 0)
  {
    sub_25B790808();
    sub_25B790858();
    result = sub_25B790848();
    a2 = result - v12;
    if (__OFSUB__(result, v12))
    {
LABEL_18:
      __break(1u);
      return result;
    }
  }

  v15 = v12 + a2;
  if (__OFADD__(v12, a2))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_25B790808();
  sub_25B790858();
  if (sub_25B790848() < v15)
  {
    sub_25B790808();
    sub_25B790858();
    v15 = sub_25B790848();
  }

  if (v12 >= v15)
  {
    return MEMORY[0x277D84F90];
  }

  v21 = v12;
  v22 = v15;
  sub_25B790808();
  result = sub_25B790858();
  if (v17 < v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  v20 = v17;
  sub_25B790828();
  (*(*(v13 - 8) + 16))(v9 + *(v6 + 40), v3, v13);
  *v9 = v12;
  v9[1] = v15;
  v16 = sub_25B771FB4(v9);
  sub_25B76966C(v9, &qword_27FBA1C98, &qword_25B792408);
  if ((a3 & 1) == 0)
  {
    return v16;
  }

  result = v16;
  if (*(v16 + 16) != a2)
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_25B770690(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C70, "x%");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v17 - v8);
  v10 = sub_25B771AB0();
  if (v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  sub_25B773228(&qword_27FBA1C10, &qword_27FBA1B80, &qword_25B7922C0);
  sub_25B790808();
  sub_25B790858();
  result = sub_25B790848();
  if (result < 0)
  {
    return MEMORY[0x277D84F90];
  }

  if (a2 <= 0)
  {
    sub_25B790808();
    sub_25B790858();
    result = sub_25B790848();
    a2 = result - v12;
    if (__OFSUB__(result, v12))
    {
LABEL_18:
      __break(1u);
      return result;
    }
  }

  v15 = v12 + a2;
  if (__OFADD__(v12, a2))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_25B790808();
  sub_25B790858();
  if (sub_25B790848() < v15)
  {
    sub_25B790808();
    sub_25B790858();
    v15 = sub_25B790848();
  }

  if (v12 >= v15)
  {
    return MEMORY[0x277D84F90];
  }

  v21 = v12;
  v22 = v15;
  sub_25B790808();
  result = sub_25B790858();
  if (v17 < v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  v20 = v17;
  sub_25B790828();
  (*(*(v13 - 8) + 16))(v9 + *(v6 + 40), v3, v13);
  *v9 = v12;
  v9[1] = v15;
  v16 = sub_25B7721D0(v9);
  sub_25B76966C(v9, &qword_27FBA1C70, "x%");
  if ((a3 & 1) == 0)
  {
    return v16;
  }

  result = v16;
  if (*(v16 + 16) != a2)
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t WatchWeather.day(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B60, &unk_25B7922B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  sub_25B7900F8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25B76966C(v5, &qword_27FBA1B60, &unk_25B7922B0);
    v8 = sub_25B78FFC8();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  else
  {
    sub_25B771764();
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      sub_25B790418();
      v11 = 0;
    }

    v12 = sub_25B78FFC8();
    (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
    return (*(v7 + 8))(v5, v6);
  }
}

uint64_t WatchWeather.weather(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B68, &unk_25B791ED0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C68, "x%");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v49 - v9;
  v55 = sub_25B790328();
  v53 = *(v55 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_25B78FD88();
  v54 = *(v56 - 8);
  v13 = *(v54 + 64);
  v14 = MEMORY[0x28223BE20](v56);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B70, &qword_25B791EE0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v49 - v24;
  v26 = sub_25B790228();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v2;
  sub_25B7900E8();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v23 = v25;
  }

  else
  {
    v31 = *(v27 + 32);
    v51 = v27 + 32;
    v52 = a2;
    v50 = v31;
    v31(v30, v25, v26);
    sub_25B7901F8();
    sub_25B790318();
    (*(v53 + 8))(v12, v55);
    sub_25B78FCF8();
    v32 = *(v54 + 8);
    v33 = v56;
    v32(v16, v56);
    v34 = sub_25B78FD28();
    v32(v18, v33);
    if (v34)
    {
      (*(v27 + 16))(v23, v30, v26);
      (*(v27 + 56))(v23, 0, 1, v26);
      sub_25B76966C(v23, &qword_27FBA1B70, &qword_25B791EE0);
      v35 = v52;
      v52[3] = v26;
      v35[4] = &protocol witness table for CurrentWeather;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
      return v50(boxed_opaque_existential_1, v30, v26);
    }

    (*(v27 + 56))(v23, 1, 1, v26);
    (*(v27 + 8))(v30, v26);
    a2 = v52;
  }

  sub_25B76966C(v23, &qword_27FBA1B70, &qword_25B791EE0);
  v38 = v58;
  sub_25B790108();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  v40 = *(v39 - 8);
  v41 = (*(v40 + 48))(v38, 1, v39);
  v42 = v59;
  if (v41 == 1)
  {
    sub_25B76966C(v38, &qword_27FBA1B68, &unk_25B791ED0);
    v43 = sub_25B7900C8();
    (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
LABEL_12:
    result = sub_25B76966C(v42, &qword_27FBA1C68, "x%");
    *a2 = 0u;
    *(a2 + 1) = 0u;
    a2[4] = 0;
    return result;
  }

  sub_25B771AB0();
  if (v44)
  {
    v45 = 1;
  }

  else
  {
    sub_25B790418();
    v45 = 0;
  }

  v46 = sub_25B7900C8();
  v47 = *(v46 - 8);
  (*(v47 + 56))(v42, v45, 1, v46);
  (*(v40 + 8))(v38, v39);
  if ((*(v47 + 48))(v42, 1, v46) == 1)
  {
    goto LABEL_12;
  }

  a2[3] = v46;
  a2[4] = &protocol witness table for HourWeather;
  v48 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(v47 + 32))(v48, v42, v46);
}

uint64_t sub_25B77125C@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = a3;
  v5 = sub_25B790328();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B78FD88();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v27 - v17;
  v28 = v3;
  a1(v16);
  sub_25B790318();
  (*(v6 + 8))(v9, v5);
  sub_25B78FCF8();
  v19 = *(v11 + 8);
  v19(v15, v10);
  v20 = sub_25B78FD28();
  v19(v18, v10);
  v21 = v29(0);
  v22 = *(v21 - 8);
  if (v20)
  {
    v23 = v30;
    (*(*(v21 - 8) + 16))(v30, v28, v21);
    v24 = 0;
    v25 = v23;
  }

  else
  {
    v24 = 1;
    v25 = v30;
  }

  return (*(v22 + 56))(v25, v24, 1, v21);
}

uint64_t sub_25B7714D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v27 = a2;
  v25 = sub_25B790328();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B78FD88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = off_286D04100[0];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B00, &unk_25B791EF0);
  v24 = v2;
  v15();
  sub_25B790318();
  (*(v3 + 8))(v6, v25);
  sub_25B78FCF8();
  v17 = *(v8 + 8);
  v17(v12, v7);
  v18 = sub_25B78FD28();
  v17(v14, v7);
  v19 = *(v16 - 8);
  if (v18)
  {
    v20 = v27;
    (*(*(v16 - 8) + 16))(v27, v24, v16);
    v21 = 0;
    v22 = v20;
  }

  else
  {
    v21 = 1;
    v22 = v27;
  }

  return (*(v19 + 56))(v22, v21, 1, v16);
}

uint64_t sub_25B771764()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C00, &qword_25B793230);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19[-v2];
  v4 = sub_25B78FD88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v19[-v10];
  sub_25B76C96C(v3);
  v12 = sub_25B78FFC8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v3, 1, v12) == 1)
  {
    sub_25B76966C(v3, &qword_27FBA1C00, &qword_25B793230);
    return 0;
  }

  sub_25B78FF78();
  (*(v13 + 8))(v3, v12);
  (*(v5 + 32))(v11, v9, v4);
  sub_25B771E60();
  if (sub_25B7905F8())
  {
LABEL_11:
    (*(v5 + 8))(v11, v4);
    return 0;
  }

  result = sub_25B78FCE8();
  v16 = v15 / 86400.0;
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v17 = v16;
  if (v16 < 0)
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  sub_25B773228(&qword_27FBA1C08, &qword_27FBA1B88, &qword_25B791F00);
  sub_25B790808();
  sub_25B790858();
  v18 = sub_25B790848();
  (*(v5 + 8))(v11, v4);
  if (v18 > v17)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25B771AB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C68, "x%");
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19[-v2];
  v4 = sub_25B78FD88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v19[-v10];
  sub_25B76C99C(v3);
  v12 = sub_25B7900C8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v3, 1, v12) == 1)
  {
    sub_25B76966C(v3, &qword_27FBA1C68, "x%");
    return 0;
  }

  sub_25B790058();
  (*(v13 + 8))(v3, v12);
  (*(v5 + 32))(v11, v9, v4);
  sub_25B771E60();
  if (sub_25B7905F8())
  {
LABEL_11:
    (*(v5 + 8))(v11, v4);
    return 0;
  }

  result = sub_25B78FCE8();
  v16 = v15 / 3600.0;
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v17 = v16;
  if (v16 < 0)
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  sub_25B773228(&qword_27FBA1C10, &qword_27FBA1B80, &qword_25B7922C0);
  sub_25B790808();
  sub_25B790858();
  v18 = sub_25B790848();
  (*(v5 + 8))(v11, v4);
  if (v18 > v17)
  {
    return v17;
  }

  else
  {
    return 0;
  }
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

unint64_t sub_25B771E60()
{
  result = qword_27FBA1B40;
  if (!qword_27FBA1B40)
  {
    sub_25B78FD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1B40);
  }

  return result;
}

size_t sub_25B771EB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
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

size_t sub_25B771FB4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C98, &qword_25B792408);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CA0, &qword_25B792410);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  v11 = *a1;
  v20[0] = a1[1];
  v20[1] = v11;
  v12 = *(v3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  sub_25B773228(&qword_27FBA1C08, &qword_27FBA1B88, &qword_25B791F00);
  v13 = sub_25B790848();
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = v13;
  v15 = sub_25B771EB8(v13, 0, &qword_27FBA1CB8, &unk_25B792420, MEMORY[0x277CE3158]);
  v16 = *(sub_25B78FFC8() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  sub_25B769604(a1, v6, &qword_27FBA1C98, &qword_25B792408);
  v18 = sub_25B7723EC(v10, (v15 + v17), v14);
  sub_25B76966C(v10, &qword_27FBA1CA0, &qword_25B792410);
  if (v18 != v14)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v15;
}

size_t sub_25B7721D0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C70, "x%");
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C78, &qword_25B7923F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  v11 = *a1;
  v20[0] = a1[1];
  v20[1] = v11;
  v12 = *(v3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  sub_25B773228(&qword_27FBA1C10, &qword_27FBA1B80, &qword_25B7922C0);
  v13 = sub_25B790848();
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = v13;
  v15 = sub_25B771EB8(v13, 0, &qword_27FBA1C90, &qword_25B792400, MEMORY[0x277CE31A0]);
  v16 = *(sub_25B7900C8() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  sub_25B769604(a1, v6, &qword_27FBA1C70, "x%");
  v18 = sub_25B7728A4(v10, (v15 + v17), v14);
  sub_25B76966C(v10, &qword_27FBA1C78, &qword_25B7923F0);
  if (v18 != v14)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v15;
}

uint64_t sub_25B7723EC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v33 = a1;
  v7 = sub_25B78FFC8();
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CA0, &qword_25B792410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v33 - v13);
  v47 = a2;
  v48 = a3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C98, &qword_25B792408);
  v15 = *(v39 + 40);
  v43 = v3;
  v44 = sub_25B773158;
  v45 = &v46;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  sub_25B773228(&qword_27FBA1CA8, &qword_27FBA1B88, &qword_25B791F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CB0, &qword_25B792418);
  sub_25B7906F8();
  if ((v50 & 1) == 0)
  {
LABEL_11:
    a3 = v49[2];
    v49[0] = *v4;
    v27 = *(v11 + 36);
    sub_25B773228(&qword_27FBA1C08, &qword_27FBA1B88, &qword_25B791F00);
    v28 = v33;
    sub_25B790838();
    v29 = &qword_27FBA1C98;
    v30 = &qword_25B792408;
    v31 = v4;
    v32 = v28;
LABEL_13:
    sub_25B773270(v31, v32, v29, v30);
    return a3;
  }

  v17 = v33;
  v38 = v16;
  sub_25B769604(v3, v14, &qword_27FBA1C98, &qword_25B792408);
  v18 = *(v11 + 36);
  v19 = *v3;
  result = sub_25B76966C(v3, &qword_27FBA1C98, &qword_25B792408);
  *(v14 + v18) = v19;
  if (!a2)
  {
    sub_25B773270(v14, v17, &qword_27FBA1CA0, &qword_25B792410);
    return 0;
  }

  if (!a3)
  {
LABEL_12:
    v29 = &qword_27FBA1CA0;
    v30 = &qword_25B792410;
    v31 = v14;
    v32 = v33;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = (v42 + 16);
    v35 = (v42 + 32);
    v21 = v14[1];
    v11 = 1;
    v37 = a3;
    v34 = v21;
    v22 = v40;
    while (*(v14 + v18) != v21)
    {
      v49[0] = *v14;
      v49[1] = v21;
      v23 = *(v39 + 40);
      sub_25B773228(&qword_27FBA1C08, &qword_27FBA1B88, &qword_25B791F00);
      sub_25B790818();
      v24 = sub_25B7908A8();
      v4 = a2;
      v25 = v41;
      (*v36)(v22);
      v24(v49, 0);
      a3 = v37;
      sub_25B790868();
      (*v35)(a2, v22, v25);
      if (a3 == v11)
      {
        goto LABEL_12;
      }

      a2 = (a2 + *(v42 + 72));
      v26 = __OFADD__(v11++, 1);
      v21 = v34;
      if (v26)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    sub_25B773270(v14, v33, &qword_27FBA1CA0, &qword_25B792410);
    return v11 - 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25B7728A4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v33 = a1;
  v7 = sub_25B7900C8();
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C78, &qword_25B7923F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v33 - v13);
  v47 = a2;
  v48 = a3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C70, "x%");
  v15 = *(v39 + 40);
  v43 = v3;
  v44 = sub_25B772E30;
  v45 = &v46;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  sub_25B773228(&qword_27FBA1C80, &qword_27FBA1B80, &qword_25B7922C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C88, &qword_25B7923F8);
  sub_25B7906F8();
  if ((v50 & 1) == 0)
  {
LABEL_11:
    a3 = v49[2];
    v49[0] = *v4;
    v27 = *(v11 + 36);
    sub_25B773228(&qword_27FBA1C10, &qword_27FBA1B80, &qword_25B7922C0);
    v28 = v33;
    sub_25B790838();
    v29 = &qword_27FBA1C70;
    v30 = "x%";
    v31 = v4;
    v32 = v28;
LABEL_13:
    sub_25B773270(v31, v32, v29, v30);
    return a3;
  }

  v17 = v33;
  v38 = v16;
  sub_25B769604(v3, v14, &qword_27FBA1C70, "x%");
  v18 = *(v11 + 36);
  v19 = *v3;
  result = sub_25B76966C(v3, &qword_27FBA1C70, "x%");
  *(v14 + v18) = v19;
  if (!a2)
  {
    sub_25B773270(v14, v17, &qword_27FBA1C78, &qword_25B7923F0);
    return 0;
  }

  if (!a3)
  {
LABEL_12:
    v29 = &qword_27FBA1C78;
    v30 = &qword_25B7923F0;
    v31 = v14;
    v32 = v33;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = (v42 + 16);
    v35 = (v42 + 32);
    v21 = v14[1];
    v11 = 1;
    v37 = a3;
    v34 = v21;
    v22 = v40;
    while (*(v14 + v18) != v21)
    {
      v49[0] = *v14;
      v49[1] = v21;
      v23 = *(v39 + 40);
      sub_25B773228(&qword_27FBA1C10, &qword_27FBA1B80, &qword_25B7922C0);
      sub_25B790818();
      v24 = sub_25B7908A8();
      v4 = a2;
      v25 = v41;
      (*v36)(v22);
      v24(v49, 0);
      a3 = v37;
      sub_25B790868();
      (*v35)(a2, v22, v25);
      if (a3 == v11)
      {
        goto LABEL_12;
      }

      a2 = (a2 + *(v42 + 72));
      v26 = __OFADD__(v11++, 1);
      v21 = v34;
      if (v26)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    sub_25B773270(v14, v33, &qword_27FBA1C78, &qword_25B7923F0);
    return v11 - 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25B772D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a1;
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a2;
    }

    v7 = a5(0);
    swift_arrayInitWithCopy();
    v5 += *(*(v7 - 8) + 72) * v6;
  }

  else if (a1)
  {
    v8 = a1 + *(*(a5(0) - 8) + 72) * a2;
  }

  return v5;
}

void *sub_25B772E88(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void *))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C98, &qword_25B792408) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  sub_25B773228(&qword_27FBA1C08, &qword_27FBA1B88, &qword_25B791F00);
  sub_25B790808();
  v6 = sub_25B790848();
  result = sub_25B790848();
  if (__OFADD__(v6, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  if (result + v6 < v6)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = 0;
  if (a1)
  {
    v9 = a1 + *(*(sub_25B78FFC8() - 8) + 72) * v6;
  }

  result = a3(&v11, v9, v8);
  if (!v10)
  {
    return v11;
  }

  return result;
}

void *sub_25B772FF0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void *))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C70, "x%") + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  sub_25B773228(&qword_27FBA1C10, &qword_27FBA1B80, &qword_25B7922C0);
  sub_25B790808();
  v6 = sub_25B790848();
  result = sub_25B790848();
  if (__OFADD__(v6, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  if (result + v6 < v6)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = 0;
  if (a1)
  {
    v9 = a1 + *(*(sub_25B7900C8() - 8) + 72) * v6;
  }

  result = a3(&v11, v9, v8);
  if (!v10)
  {
    return v11;
  }

  return result;
}

uint64_t sub_25B773184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  result = sub_25B772D5C(a1, a2, *(v4 + 16), *(v4 + 24), a3);
  if (!v5)
  {
    *a4 = result;
    a4[1] = v8;
    a4[2] = v9;
  }

  return result;
}

uint64_t sub_25B7731E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(a1, v3[2], v3[3], v3[4]);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_25B773228(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25B773270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

double AppPrecipitationOutlookFormatter.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A78, &qword_25B792430);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_25B791A40;
  *(v0 + 56) = &type metadata for MinutelyOutlookCondition;
  *(v0 + 64) = &off_286D037D8;
  return result;
}

double sub_25B773330@<D0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A78, &qword_25B792430);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_25B791A40;
  *(v2 + 56) = &type metadata for MinutelyOutlookCondition;
  *(v2 + 64) = &off_286D037D8;
  *a1 = v2;
  return result;
}

double WidgetPrecipitationOutlookFormatter.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A78, &qword_25B792430);
  v0 = swift_allocObject();
  *&result = 4;
  *(v0 + 56) = &type metadata for MinutelyOutlookCondition;
  *(v0 + 64) = &off_286D037D8;
  *(v0 + 96) = &type metadata for CurrentOutlookCondition;
  *(v0 + 104) = &off_286D03AF0;
  *(v0 + 136) = &type metadata for HourlyOutlookCondition;
  *(v0 + 144) = &off_286D03B28;
  *(v0 + 16) = xmmword_25B791A50;
  *(v0 + 176) = &type metadata for DailyOutlookCondition;
  *(v0 + 184) = &off_286D03968;
  *(v0 + 152) = 10;
  return result;
}

double sub_25B773448@<D0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A78, &qword_25B792430);
  v2 = swift_allocObject();
  *&result = 4;
  *(v2 + 56) = &type metadata for MinutelyOutlookCondition;
  *(v2 + 64) = &off_286D037D8;
  *(v2 + 96) = &type metadata for CurrentOutlookCondition;
  *(v2 + 104) = &off_286D03AF0;
  *(v2 + 136) = &type metadata for HourlyOutlookCondition;
  *(v2 + 144) = &off_286D03B28;
  *(v2 + 16) = xmmword_25B791A50;
  *(v2 + 176) = &type metadata for DailyOutlookCondition;
  *(v2 + 184) = &off_286D03968;
  *(v2 + 152) = 10;
  *a1 = v2;
  return result;
}

uint64_t sub_25B773500()
{
  result = sub_25B773520();
  static UVIndex.spectrum = result;
  return result;
}

uint64_t sub_25B773520()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CC0, &qword_25B7931B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25B792500;
  v1 = objc_opt_self();
  v2 = [v1 greenColor];
  *(v0 + 32) = 0x3FF0000000000000;
  *(v0 + 40) = v2;
  sub_25B7737CC();
  sub_25B7904B8();
  v3 = sub_25B790978();
  *(v0 + 48) = 0x4000000000000000;
  *(v0 + 56) = v3;
  v4 = [v1 yellowColor];
  *(v0 + 64) = 0x4008000000000000;
  *(v0 + 72) = v4;
  sub_25B7904B8();
  v5 = sub_25B790978();
  *(v0 + 80) = 0x4010000000000000;
  *(v0 + 88) = v5;
  sub_25B7904B8();
  v6 = sub_25B790978();
  *(v0 + 96) = 0x4014000000000000;
  *(v0 + 104) = v6;
  v7 = [v1 orangeColor];
  *(v0 + 112) = 0x4018000000000000;
  *(v0 + 120) = v7;
  sub_25B7904B8();
  v8 = sub_25B790978();
  *(v0 + 128) = 0x401C000000000000;
  *(v0 + 136) = v8;
  v9 = [v1 systemPinkColor];
  *(v0 + 144) = 0x4020000000000000;
  *(v0 + 152) = v9;
  sub_25B7904B8();
  v10 = sub_25B790978();
  *(v0 + 160) = 0x4022000000000000;
  *(v0 + 168) = v10;
  sub_25B7904B8();
  v11 = sub_25B790978();
  *(v0 + 176) = 0x4024000000000000;
  *(v0 + 184) = v11;
  sub_25B7904B8();
  v12 = sub_25B790978();
  *(v0 + 192) = 0x4026000000000000;
  *(v0 + 200) = v12;
  return v0;
}

uint64_t *UVIndex.spectrum.unsafeMutableAddressor()
{
  if (qword_27FBA19D0 != -1)
  {
    swift_once();
  }

  return &static UVIndex.spectrum;
}

uint64_t static UVIndex.spectrum.getter()
{
  if (qword_27FBA19D0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_25B7737CC()
{
  result = qword_27FBA1CC8;
  if (!qword_27FBA1CC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBA1CC8);
  }

  return result;
}

uint64_t sub_25B773828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v60 = a2;
  v61 = a4;
  v5 = sub_25B790328();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B78FD88();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = sub_25B790348();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B70, &qword_25B791EE0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v50 - v22;
  v24 = sub_25B790228();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  sub_25B7900E8();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_25B773E30(v23);
LABEL_11:
    v49 = type metadata accessor for PrecipitationOutlook(0);
    return (*(*(v49 - 8) + 56))(v61, 1, 1, v49);
  }

  (*(v25 + 32))(v28, v23, v24);
  sub_25B790218();
  isPrecipitationSbvg_0 = _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
  v30 = *(v16 + 8);
  v51 = v19;
  v52 = v16 + 8;
  v30(v19, v15);
  if ((isPrecipitationSbvg_0 & 1) == 0)
  {
    goto LABEL_10;
  }

  v31 = v55;
  sub_25B7901F8();
  sub_25B790318();
  (*(v56 + 8))(v31, v57);
  sub_25B78FCF8();
  v32 = v59;
  v57 = v15;
  v33 = *(v58 + 8);
  v33(v12, v59);
  v34 = sub_25B78FD18();
  v33(v14, v32);
  if ((v34 & 1) == 0)
  {
LABEL_10:
    (*(v25 + 8))(v28, v24);
    goto LABEL_11;
  }

  if (qword_27FBA1990 != -1)
  {
    swift_once();
  }

  v35 = sub_25B790498();
  __swift_project_value_buffer(v35, qword_27FBA4948);
  v36 = sub_25B790478();
  v37 = sub_25B790918();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v61;
  v40 = v51;
  if (v38)
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_25B75E000, v36, v37, "CurrentWeather indicates precipitation.", v41, 2u);
    MEMORY[0x25F86DA50](v41, -1, -1);
  }

  v42 = v60;
  (*(v58 + 16))(v39, v60, v59);
  v43 = sub_25B7801F4(v42);
  v44 = type metadata accessor for PrecipitationOutlook(0);
  v45 = v44[8];
  sub_25B790218();
  sub_25B780844(v39 + v45);
  v30(v40, v57);
  (*(v25 + 8))(v28, v24);
  type metadata accessor for PrecipitationOutlook.State(0);
  swift_storeEnumTagMultiPayload();
  v46 = v44[9];
  v47 = sub_25B78FF28();
  (*(*(v47 - 8) + 16))(v39 + v46, v54, v47);
  *(v39 + v44[5]) = 0;
  *(v39 + v44[6]) = v43 & 1;
  *(v39 + v44[7]) = 0;
  return (*(*(v44 - 1) + 56))(v39, 0, 1, v44);
}

uint64_t sub_25B773E30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B70, &qword_25B791EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Calendar.Component.all.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CD0, &qword_25B792560);
  v0 = sub_25B78FEA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B792550;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277CC9978], v0);
  v6(v5 + v2, *MEMORY[0x277CC9988], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277CC9998], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277CC9968], v0);
  v6(v5 + 4 * v2, *MEMORY[0x277CC9980], v0);
  v6(v5 + 5 * v2, *MEMORY[0x277CC99A0], v0);
  v6(v5 + 6 * v2, *MEMORY[0x277CC99A8], v0);
  v6(v5 + 7 * v2, *MEMORY[0x277CC99B8], v0);
  v6(v5 + 8 * v2, *MEMORY[0x277CC9958], v0);
  v6(v5 + 9 * v2, *MEMORY[0x277CC99B0], v0);
  v6(v5 + 10 * v2, *MEMORY[0x277CC9950], v0);
  v6(v5 + 11 * v2, *MEMORY[0x277CC9940], v0);
  v6(v5 + 12 * v2, *MEMORY[0x277CC9960], v0);
  v6(v5 + 13 * v2, *MEMORY[0x277CC9930], v0);
  v6(v5 + 14 * v2, *MEMORY[0x277CC99C0], v0);
  v6(v5 + 15 * v2, *MEMORY[0x277CC99C8], v0);
  v7 = sub_25B7741DC(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_25B7741DC(uint64_t a1)
{
  v2 = sub_25B78FEA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CD8, &unk_25B792570);
    v10 = sub_25B790A48();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_25B7744D4(&qword_27FBA1CE0);
      v18 = sub_25B7905E8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_25B7744D4(&qword_27FBA1CE8);
          v25 = sub_25B790608();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25B7744D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25B78FEA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B774528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a3;
  v89 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B70, &qword_25B791EE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v82 = &v80 - v11;
  v100 = sub_25B78FD88();
  v87 = *(v100 - 8);
  v12 = *(v87 + 64);
  v13 = MEMORY[0x28223BE20](v100);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v99 = &v80 - v16;
  v17 = sub_25B790348();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v81 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v85 = &v80 - v23;
  MEMORY[0x28223BE20](v22);
  v97 = &v80 - v24;
  v102 = sub_25B7900C8();
  v98 = *(v102 - 8);
  v25 = *(v98 + 64);
  MEMORY[0x28223BE20](v102);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B68, &unk_25B791ED0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v80 - v30;
  v86 = a1;
  sub_25B790108();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B80, &qword_25B7922C0);
  v33 = *(v32 - 8);
  v34 = (*(v33 + 48))(v31, 1, v32);
  v101 = a2;
  v88 = v18;
  if (v34 == 1)
  {
    sub_25B76966C(v31, &qword_27FBA1B68, &unk_25B791ED0);
    v35 = MEMORY[0x277D84F90];
  }

  else
  {
    v35 = sub_25B770690(a2, 24, 0);
    (*(v33 + 8))(v31, v32);
  }

  v95 = *(v35 + 16);
  if (v95)
  {
    v36 = 0;
    v92 = v35 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v91 = v98 + 16;
    v96 = (v88 + 8);
    v37 = (v87 + 8);
    v93 = (v98 + 8);
    v94 = v17;
    while (1)
    {
      if (v36 >= *(v35 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      (*(v98 + 16))(v27, v92 + *(v98 + 72) * v36, v102);
      v38 = v97;
      sub_25B7900B8();
      isPrecipitationSbvg_0 = _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
      v90 = *v96;
      v90(v38, v17);
      sub_25B790058();
      v40 = v99;
      sub_25B78FCF8();
      v41 = *v37;
      v42 = v100;
      (*v37)(v15, v100);
      v43 = sub_25B78FD18();
      v41(v40, v42);
      if (isPrecipitationSbvg_0 & 1) != 0 && (v43)
      {
        break;
      }

      ++v36;
      (*v93)(v27, v102);
      v17 = v94;
      if (v95 == v36)
      {
        goto LABEL_16;
      }
    }

    if (qword_27FBA1990 != -1)
    {
      swift_once();
    }

    v44 = sub_25B790498();
    __swift_project_value_buffer(v44, qword_27FBA4948);
    v45 = sub_25B790478();
    v46 = sub_25B790918();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v82;
    if (v47)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_25B75E000, v45, v46, "Hourly forecast indicates precipitation.", v49, 2u);
      MEMORY[0x25F86DA50](v49, -1, -1);
    }

    v50 = v99;
    sub_25B790058();
    sub_25B78FCE8();
    v52 = v51;
    v41(v50, v100);
    v53 = fmax(v52, 3600.0);
    sub_25B7900E8();
    v54 = sub_25B790228();
    v55 = *(v54 - 8);
    v56 = (*(v55 + 48))(v48, 1, v54);
    v57 = v88;
    v58 = v85;
    if (v56 == 1)
    {
      sub_25B76966C(v48, &qword_27FBA1B70, &qword_25B791EE0);
      v59 = v94;
      (*(v57 + 104))(v58, *MEMORY[0x277CE3250], v94);
    }

    else
    {
      v66 = v81;
      sub_25B790218();
      (*(v55 + 8))(v48, v54);
      v67 = v66;
      v59 = v94;
      (*(v57 + 32))(v58, v67, v94);
    }

    v68 = v97;
    sub_25B7900B8();
    v69 = v83;
    sub_25B780844(v83);
    v90(v68, v59);
    v70 = v89;
    v71 = v100;
    (*(v87 + 16))(v89, v101, v100);
    v72 = v99;
    sub_25B790058();
    LODWORD(v101) = sub_25B7801F4(v72);
    v41(v72, v71);
    sub_25B790048();
    v74 = v73;
    (*v93)(v27, v102);
    v75 = type metadata accessor for PrecipitationOutlook(0);
    v76 = v70 + v75[8];
    v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
    (*(v57 + 32))(v76, v85, v59);
    sub_25B76D804(v69, v76 + v77);
    type metadata accessor for PrecipitationOutlook.State(0);
    swift_storeEnumTagMultiPayload();
    v78 = v75[9];
    v79 = sub_25B78FF28();
    (*(*(v79 - 8) + 16))(v70 + v78, v84, v79);
    *(v70 + v75[5]) = v53;
    *(v70 + v75[6]) = v101 & 1;
    *(v70 + v75[7]) = v74;
    return (*(*(v75 - 1) + 56))(v70, 0, 1, v75);
  }

  else
  {
LABEL_16:

    if (qword_27FBA1990 != -1)
    {
LABEL_23:
      swift_once();
    }

    v60 = sub_25B790498();
    __swift_project_value_buffer(v60, qword_27FBA4948);
    v61 = sub_25B790478();
    v62 = sub_25B790928();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_25B75E000, v61, v62, "No preciptiation in hourly forecast.", v63, 2u);
      MEMORY[0x25F86DA50](v63, -1, -1);
    }

    v64 = type metadata accessor for PrecipitationOutlook(0);
    return (*(*(v64 - 8) + 56))(v89, 1, 1, v64);
  }
}

uint64_t sub_25B774F58()
{
  v0 = type metadata accessor for TemperatureFormatter();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
  v5 = sub_25B78FDF8();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  static TemperatureFormatter.shared = v3;
  return result;
}

uint64_t *TemperatureFormatter.shared.unsafeMutableAddressor()
{
  if (qword_27FBA19D8 != -1)
  {
    swift_once();
  }

  return &static TemperatureFormatter.shared;
}

uint64_t static TemperatureFormatter.shared.getter()
{
  if (qword_27FBA19D8 != -1)
  {
    swift_once();
  }
}

uint64_t TemperatureFormatter.overrideLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
  swift_beginAccess();
  return sub_25B769604(v1 + v3, a1, &qword_27FBA1C20, &qword_25B792300);
}

uint64_t TemperatureFormatter.overrideLocale.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
  swift_beginAccess();
  sub_25B76DBD8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t TemperatureFormatter.unitString.getter()
{
  v1 = sub_25B7905B8();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v1);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v33 = sub_25B790958();
  v35 = *(v33 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CF0, &unk_25B7925C8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v22 = *(v21 - 8);
  (*(v22 + 56))(v20, 1, 1, v21);
  v38 = v20;
  sub_25B769604(v20, v18, &qword_27FBA1CF0, &unk_25B7925C8);
  v32 = v22;
  if ((*(v22 + 48))(v18, 1, v21) == 1)
  {
    sub_25B76966C(v18, &qword_27FBA1CF0, &unk_25B7925C8);
    v23 = 0;
  }

  else
  {
    sub_25B7907E8();
    v24 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
    swift_beginAccess();
    sub_25B769604(v0 + v24, v8, &qword_27FBA1C20, &qword_25B792300);
    v25 = sub_25B78FDF8();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v8, 1, v25) == 1)
    {
      sub_25B76966C(v8, &qword_27FBA1C20, &qword_25B792300);
      sub_25B78FDC8();
    }

    else
    {
      (*(v26 + 32))(v10, v8, v25);
    }

    (*(v26 + 56))(v10, 0, 1, v25);
    sub_25B790598();

    sub_25B76966C(v10, &qword_27FBA1C20, &qword_25B792300);
    v28 = v36;
    v27 = v37;
    v29 = v34;
    (*(v36 + 104))(v34, *MEMORY[0x277D7B408], v37);
    sub_25B790468();
    sub_25B790458();
    sub_25B7756BC();
    v30 = v33;
    v23 = sub_25B78FA88();

    (*(v28 + 8))(v29, v27);
    (*(v35 + 8))(v13, v30);
    (*(v32 + 8))(v18, v21);
  }

  sub_25B76966C(v38, &qword_27FBA1CF0, &unk_25B7925C8);
  return v23;
}

unint64_t sub_25B7756BC()
{
  result = qword_27FBA1CF8;
  if (!qword_27FBA1CF8)
  {
    sub_25B790958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1CF8);
  }

  return result;
}

uint64_t TemperatureFormatter.degreesStringForTemperature(_:)(uint64_t a1)
{
  v2 = sub_25B7905B8();
  v77 = *(v2 - 8);
  v3 = *(v77 + 64);
  MEMORY[0x28223BE20](v2);
  v76 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v69 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v69 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v69 - v15;
  v17 = sub_25B790958();
  v74 = *(v17 - 8);
  v75 = v17;
  v18 = *(v74 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v72 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - v21;
  v23 = sub_25B790558();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = (&v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25B7637A0(0, &qword_27FBA1D00, 0x277D85C78);
  *v27 = sub_25B790968();
  (*(v24 + 104))(v27, *MEMORY[0x277D85200], v23);
  v28 = sub_25B790568();
  (*(v24 + 8))(v27, v23);
  if ((v28 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_4;
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  if ((*(*(v29 - 8) + 48))(a1, 1, v29) != 1)
  {
    goto LABEL_10;
  }

  v70 = v2;
  if (qword_27FBA19B8 != -1)
  {
    goto LABEL_18;
  }

LABEL_4:
  v30 = qword_27FBA1C18;
  v31 = sub_25B790618();
  v32 = sub_25B790618();
  v33 = sub_25B790618();
  v34 = [v30 localizedStringForKey:v31 value:v32 table:v33];

  v35 = sub_25B790638();
  v37 = v36;

  if (!v35 && v37 == 0xE000000000000000)
  {

    v2 = v70;
LABEL_8:
    sub_25B7907D8();
    v39 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
    v40 = v73;
    swift_beginAccess();
    v41 = v40 + v39;
    v42 = v71;
    sub_25B769604(v41, v71, &qword_27FBA1C20, &qword_25B792300);
    v43 = sub_25B78FDF8();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v42, 1, v43) == 1)
    {
      sub_25B76966C(v42, &qword_27FBA1C20, &qword_25B792300);
      sub_25B78FDC8();
    }

    else
    {
      (*(v44 + 32))(v11, v42, v43);
    }

    v53 = v77;
    (*(v44 + 56))(v11, 0, 1, v43);
    v54 = v72;
    sub_25B790598();

    sub_25B76966C(v11, &qword_27FBA1C20, &qword_25B792300);
    v55 = v76;
    (*(v53 + 104))(v76, *MEMORY[0x277D7B400], v2);
    sub_25B7756BC();
    v56 = v75;
    v57 = sub_25B7909A8();
    v59 = v58;
    (*(v53 + 8))(v55, v2);
    (*(v74 + 8))(v54, v56);
    v82 = v57;
    v83 = v59;
    v60 = qword_27FBA1C18;
    v61 = sub_25B790618();
    v62 = sub_25B790618();
    v63 = sub_25B790618();
    v64 = [v60 localizedStringForKey:v61 value:v62 table:v63];

    v65 = sub_25B790638();
    v67 = v66;

    v80 = v65;
    v81 = v67;
    v78 = 0;
    v79 = 0xE000000000000000;
    sub_25B765148();
    v52 = sub_25B790A18();

    return v52;
  }

  v38 = sub_25B790BE8();

  v2 = v70;
  if (v38)
  {
    goto LABEL_8;
  }

LABEL_10:
  sub_25B7907D8();
  v45 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
  v46 = v73;
  swift_beginAccess();
  sub_25B769604(v46 + v45, v14, &qword_27FBA1C20, &qword_25B792300);
  v47 = sub_25B78FDF8();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v14, 1, v47) == 1)
  {
    sub_25B76966C(v14, &qword_27FBA1C20, &qword_25B792300);
    sub_25B78FDC8();
  }

  else
  {
    (*(v48 + 32))(v16, v14, v47);
  }

  v50 = v76;
  v49 = v77;
  (*(v48 + 56))(v16, 0, 1, v47);
  sub_25B790598();

  sub_25B76966C(v16, &qword_27FBA1C20, &qword_25B792300);
  (*(v49 + 104))(v50, *MEMORY[0x277D7B400], v2);
  sub_25B7756BC();
  v51 = v75;
  v52 = sub_25B7909A8();
  (*(v49 + 8))(v50, v2);
  (*(v74 + 8))(v22, v51);
  return v52;
}

uint64_t TemperatureFormatter.valueStringForTemperature(_:)(uint64_t a1)
{
  v2 = sub_25B7905B8();
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v2);
  v65 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v61 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v61 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v61 - v16;
  v18 = sub_25B790958();
  v63 = *(v18 - 8);
  v64 = v18;
  v19 = *(v63 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v61 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v61 - v22;
  v24 = sub_25B790558();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = (&v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25B7637A0(0, &qword_27FBA1D00, 0x277D85C78);
  *v28 = sub_25B790968();
  (*(v25 + 104))(v28, *MEMORY[0x277D85200], v24);
  v29 = sub_25B790568();
  (*(v25 + 8))(v28, v24);
  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
LABEL_9:
    v47 = qword_27FBA1C18;
    v48 = sub_25B790618();
    v49 = sub_25B790618();
    v50 = sub_25B790618();
    v51 = [v47 localizedStringForKey:v48 value:v49 table:v50];

    v52 = sub_25B790638();
    v54 = v53;

    v70 = v52;
    v71 = v54;
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_25B765148();
    v55 = sub_25B790A18();

    return v55;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v31 = (*(*(v30 - 8) + 48))(a1, 1, v30);
  sub_25B7907F8();
  v32 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
  if (v31 == 1)
  {
    v33 = v62;
    swift_beginAccess();
    sub_25B769604(v33 + v32, v9, &qword_27FBA1C20, &qword_25B792300);
    v34 = sub_25B78FDF8();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v9, 1, v34) == 1)
    {
      sub_25B76966C(v9, &qword_27FBA1C20, &qword_25B792300);
      sub_25B78FDC8();
    }

    else
    {
      (*(v35 + 32))(v12, v9, v34);
    }

    (*(v35 + 56))(v12, 0, 1, v34);
    v39 = v61;
    sub_25B790598();

    sub_25B76966C(v12, &qword_27FBA1C20, &qword_25B792300);
    v41 = v65;
    v40 = v66;
    v42 = v67;
    (*(v66 + 104))(v65, *MEMORY[0x277D7B400], v67);
    sub_25B7756BC();
    v43 = v64;
    v44 = sub_25B7909A8();
    v46 = v45;
    (*(v40 + 8))(v41, v42);
    (*(v63 + 8))(v39, v43);
    v72 = v44;
    v73 = v46;
    if (qword_27FBA19B8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v36 = v62;
  swift_beginAccess();
  sub_25B769604(v36 + v32, v15, &qword_27FBA1C20, &qword_25B792300);
  v37 = sub_25B78FDF8();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v15, 1, v37) == 1)
  {
    sub_25B76966C(v15, &qword_27FBA1C20, &qword_25B792300);
    sub_25B78FDC8();
  }

  else
  {
    (*(v38 + 32))(v17, v15, v37);
  }

  (*(v38 + 56))(v17, 0, 1, v37);
  sub_25B790598();

  sub_25B76966C(v17, &qword_27FBA1C20, &qword_25B792300);
  v57 = v65;
  v56 = v66;
  v58 = v67;
  (*(v66 + 104))(v65, *MEMORY[0x277D7B408], v67);
  sub_25B7756BC();
  v59 = v64;
  v55 = sub_25B7909A8();
  (*(v56 + 8))(v57, v58);
  (*(v63 + 8))(v23, v59);
  return v55;
}

uint64_t TemperatureFormatter.string(for:formattingStyle:noValueStyle:)(uint64_t a1, int a2, uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v50 = sub_25B7905B8();
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v50);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v49 = sub_25B790958();
  v10 = *(v49 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v49);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  v17 = sub_25B790558();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25B7637A0(0, &qword_27FBA1D00, 0x277D85C78);
  *v21 = sub_25B790968();
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v22 = sub_25B790568();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v24 = (*(*(v23 - 8) + 48))(a1, 1, v23);
  v25 = v47;
  if (v24 != 1)
  {
    goto LABEL_9;
  }

  if (!FormatterNoValueStyle.rawValue.getter(v47) && v26 == 0xE000000000000000)
  {

    goto LABEL_7;
  }

  v27 = sub_25B790BE8();

  if ((v27 & 1) == 0)
  {
LABEL_9:
    sub_25B7775BC(v48);
    v43 = v50;
    (*(v4 + 104))(v9, **(&unk_279963508 + v25), v50);
    sub_25B7756BC();
    v44 = v49;
    v42 = sub_25B7909A8();
    (*(v4 + 8))(v9, v43);
    (*(v10 + 8))(v16, v44);
    return v42;
  }

LABEL_7:
  sub_25B7775BC(v48);
  v28 = v46;
  v29 = v50;
  (*(v4 + 104))(v46, *MEMORY[0x277D7B400], v50);
  sub_25B7756BC();
  v30 = v49;
  v31 = sub_25B7909A8();
  v33 = v32;
  (*(v4 + 8))(v28, v29);
  (*(v10 + 8))(v14, v30);
  v55 = v31;
  v56 = v33;
  if (qword_27FBA19B8 != -1)
  {
LABEL_12:
    swift_once();
  }

  v34 = qword_27FBA1C18;
  v35 = sub_25B790618();
  v36 = sub_25B790618();
  v37 = sub_25B790618();
  v38 = [v34 localizedStringForKey:v35 value:v36 table:v37];

  v39 = sub_25B790638();
  v41 = v40;

  v53 = v39;
  v54 = v41;
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_25B765148();
  v42 = sub_25B790A18();

  return v42;
}

uint64_t TemperatureFormatter.highLow(high:low:style:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = TemperatureFormatter.degreesStringForTemperature(_:)(a1);
  v7 = v6;
  v8 = TemperatureFormatter.degreesStringForTemperature(_:)(a2);
  v10 = v9;
  if (!a3)
  {
    if (qword_27FBA19B8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a3 == 1)
  {
    if (qword_27FBA19B8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_27FBA19B8 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v11 = qword_27FBA1C18;
  v12 = sub_25B790618();
  v13 = sub_25B790618();
  v14 = sub_25B790618();
  v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

  sub_25B790638();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25B7925B0;
  v17 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  v18 = sub_25B777A70();
  *(v16 + 32) = v5;
  *(v16 + 40) = v7;
  *(v16 + 96) = v17;
  *(v16 + 104) = v18;
  *(v16 + 64) = v18;
  *(v16 + 72) = v8;
  *(v16 + 80) = v10;
  v19 = sub_25B790628();

  return v19;
}

uint64_t TemperatureFormatter.rounded(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CF0, &unk_25B7925C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  sub_25B769604(a1, v7, &qword_27FBA1CF0, &unk_25B7925C8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_25B76966C(v7, &qword_27FBA1CF0, &unk_25B7925C8);
    v13 = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_25B78FA78();
    sub_25B78FA58();
    sub_25B7637A0(0, &qword_27FBA1A58, 0x277CCAE48);
    sub_25B78FA68();
    (*(v9 + 8))(v12, v8);
    v13 = 0;
  }

  return (*(v9 + 56))(a2, v13, 1, v8);
}

uint64_t TemperatureFormatter.rounded(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  sub_25B78FA78();
  sub_25B78FA58();
  sub_25B7637A0(0, &qword_27FBA1A58, 0x277CCAE48);

  return sub_25B78FA68();
}

uint64_t sub_25B7775BC(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v32 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - v20;
  if (a1)
  {
    if (a1 == 1)
    {
      sub_25B7907D8();
      v22 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
      swift_beginAccess();
      sub_25B769604(v1 + v22, v13, &qword_27FBA1C20, &qword_25B792300);
      v23 = sub_25B78FDF8();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v13, 1, v23) == 1)
      {
        sub_25B76966C(v13, &qword_27FBA1C20, &qword_25B792300);
        sub_25B78FDC8();
      }

      else
      {
        (*(v24 + 32))(v16, v13, v23);
      }

      (*(v24 + 56))(v16, 0, 1, v23);
      sub_25B790598();
      v21 = v16;
    }

    else
    {
      sub_25B7907D8();
      v28 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
      swift_beginAccess();
      sub_25B769604(v1 + v28, v7, &qword_27FBA1C20, &qword_25B792300);
      v29 = sub_25B78FDF8();
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v7, 1, v29) == 1)
      {
        sub_25B76966C(v7, &qword_27FBA1C20, &qword_25B792300);
        sub_25B78FDC8();
      }

      else
      {
        (*(v30 + 32))(v10, v7, v29);
      }

      (*(v30 + 56))(v10, 0, 1, v29);
      sub_25B790598();
      v21 = v10;
    }
  }

  else
  {
    sub_25B7907F8();
    v25 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale;
    swift_beginAccess();
    sub_25B769604(v1 + v25, v19, &qword_27FBA1C20, &qword_25B792300);
    v26 = sub_25B78FDF8();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v19, 1, v26) == 1)
    {
      sub_25B76966C(v19, &qword_27FBA1C20, &qword_25B792300);
      sub_25B78FDC8();
    }

    else
    {
      (*(v27 + 32))(v21, v19, v26);
    }

    (*(v27 + 56))(v21, 0, 1, v26);
    sub_25B790598();
  }

  return sub_25B76966C(v21, &qword_27FBA1C20, &qword_25B792300);
}

unint64_t sub_25B777A70()
{
  result = qword_27FBA1D10;
  if (!qword_27FBA1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1D10);
  }

  return result;
}

uint64_t TemperatureFormatter.__deallocating_deinit()
{
  sub_25B76966C(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion20TemperatureFormatter_overrideLocale, &qword_27FBA1C20, &qword_25B792300);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

NanoWeatherKitUICompanion::TemperatureFormatter::FormattingStyle_optional __swiftcall TemperatureFormatter.FormattingStyle.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t *sub_25B777B94@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t TemperatureFormatter.HighLowStyle.hashValue.getter(unsigned __int8 a1)
{
  sub_25B790C18();
  MEMORY[0x25F86D3B0](a1);
  return sub_25B790C38();
}

unint64_t sub_25B777C54()
{
  result = qword_27FBA1D18;
  if (!qword_27FBA1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1D18);
  }

  return result;
}

unint64_t sub_25B777CAC()
{
  result = qword_27FBA1D20;
  if (!qword_27FBA1D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBA1D28, &qword_25B792680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1D20);
  }

  return result;
}

unint64_t sub_25B777D14()
{
  result = qword_27FBA1D30;
  if (!qword_27FBA1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1D30);
  }

  return result;
}

uint64_t type metadata accessor for TemperatureFormatter()
{
  result = qword_27FBA1D38;
  if (!qword_27FBA1D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrecipitationOutlook.init(date:interval:isDaylight:probability:state:timeZone:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = sub_25B78FD88();
  (*(*(v14 - 8) + 32))(a5, a1, v14);
  v15 = type metadata accessor for PrecipitationOutlook(0);
  *(a5 + v15[5]) = a6;
  *(a5 + v15[6]) = a2;
  *(a5 + v15[7]) = a7;
  sub_25B777F30(a3, a5 + v15[8]);
  v16 = v15[9];
  v17 = sub_25B78FF28();
  v18 = *(*(v17 - 8) + 32);

  return v18(a5 + v16, a4, v17);
}

uint64_t sub_25B777F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationOutlook.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PrecipitationOutlook.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B78FD88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PrecipitationOutlook.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrecipitationOutlook(0) + 36);
  v4 = sub_25B78FF28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrecipitationOutlook.changeDate.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrecipitationOutlook(0) + 20));

  return sub_25B78FD38();
}

uint64_t PrecipitationOutlook.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D48, "B#");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B778494();
  sub_25B790C58();
  v18[15] = 0;
  sub_25B78FD88();
  sub_25B7784E8(&qword_27FBA1D58, MEMORY[0x277CC9578]);
  sub_25B790BC8();
  if (!v2)
  {
    v11 = type metadata accessor for PrecipitationOutlook(0);
    v12 = *(v3 + v11[5]);
    v18[14] = 1;
    sub_25B790BB8();
    v13 = *(v3 + v11[6]);
    v18[13] = 2;
    sub_25B790BA8();
    v14 = *(v3 + v11[7]);
    v18[12] = 3;
    sub_25B790BB8();
    v15 = v11[8];
    v18[11] = 4;
    type metadata accessor for PrecipitationOutlook.State(0);
    sub_25B7784E8(&qword_27FBA1D60, type metadata accessor for PrecipitationOutlook.State);
    sub_25B790BC8();
    v16 = v11[9];
    v18[10] = 5;
    sub_25B78FF28();
    sub_25B7784E8(&qword_27FBA1D68, MEMORY[0x277CC9A70]);
    sub_25B790BC8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_25B778494()
{
  result = qword_27FBA1D50;
  if (!qword_27FBA1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1D50);
  }

  return result;
}

uint64_t sub_25B7784E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PrecipitationOutlook.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = sub_25B78FF28();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for PrecipitationOutlook.State(0);
  v5 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B78FD88();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v36 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D70, &qword_25B792778);
  v37 = *(v39 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v13 = &v29 - v12;
  v14 = type metadata accessor for PrecipitationOutlook(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B778494();
  v38 = v13;
  v19 = v40;
  sub_25B790C48();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v7;
  v21 = v35;
  v46 = 0;
  sub_25B7784E8(&qword_27FBA1D78, MEMORY[0x277CC9578]);
  v22 = v36;
  sub_25B790B68();
  (*(v21 + 32))(v17, v22, v8);
  v45 = 1;
  sub_25B790B58();
  v23 = v14;
  *&v17[v14[5]] = v24;
  v44 = 2;
  v17[v14[6]] = sub_25B790B48() & 1;
  v43 = 3;
  sub_25B790B58();
  *&v17[v14[7]] = v25;
  v42 = 4;
  sub_25B7784E8(&qword_27FBA1D80, type metadata accessor for PrecipitationOutlook.State);
  sub_25B790B68();
  sub_25B777F30(v20, &v17[v14[8]]);
  v41 = 5;
  sub_25B7784E8(&qword_27FBA1D88, MEMORY[0x277CC9A70]);
  v27 = v32;
  v28 = v33;
  sub_25B790B68();
  (*(v37 + 8))(v38, v39);
  (*(v30 + 32))(&v17[v23[9]], v28, v27);
  sub_25B778B1C(v17, v31, type metadata accessor for PrecipitationOutlook);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25B778B84(v17, type metadata accessor for PrecipitationOutlook);
}

uint64_t sub_25B778B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B778B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25B778BE4()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x6C696261626F7270;
  v4 = 0x6574617473;
  if (v1 != 4)
  {
    v4 = 0x656E6F5A656D6974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C61767265746E69;
  if (v1 != 1)
  {
    v5 = 0x67696C7961447369;
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

uint64_t sub_25B778CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B77D5F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B778CE0(uint64_t a1)
{
  v2 = sub_25B778494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B778D1C(uint64_t a1)
{
  v2 = sub_25B778494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrecipitationOutlook.State.description.getter()
{
  v1 = sub_25B790348();
  v52 = *(v1 - 8);
  v53 = v1;
  v2 = *(v52 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v50 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v50 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v51 = &v50 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v50 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v50 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v50 - v26;
  v28 = type metadata accessor for PrecipitationOutlook.State(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B778B1C(v0, v31, type metadata accessor for PrecipitationOutlook.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780);
      sub_25B76D804(&v31[*(v40 + 48)], v22);
      sub_25B7794F0(v22, v19);
      v42 = v52;
      v41 = v53;
      if ((*(v52 + 48))(v19, 1, v53) == 1)
      {
        sub_25B76966C(v19, &qword_27FBA1AF8, &unk_25B791E40);
        sub_25B76966C(v22, &qword_27FBA1AF8, &unk_25B791E40);
        (*(v42 + 8))(v31, v41);
        return 0xD000000000000018;
      }

      else
      {
        (*(v42 + 32))(v7, v19, v41);
        v54 = 0x676562206C6C6957;
        v55 = 0xEB00000000206E69;
        sub_25B7784E8(&qword_27FBA1D90, MEMORY[0x277CE3328]);
        v47 = sub_25B790BD8();
        MEMORY[0x25F86CE10](v47);

        v33 = v54;
        v48 = *(v42 + 8);
        v48(v7, v41);
        sub_25B76966C(v22, &qword_27FBA1AF8, &unk_25B791E40);
        v48(v31, v41);
      }
    }

    else
    {
      sub_25B76D804(v31, v27);
      sub_25B7794F0(v27, v25);
      v35 = v52;
      v34 = v53;
      if ((*(v52 + 48))(v25, 1, v53) == 1)
      {
        v33 = 0xD000000000000017;
        sub_25B76966C(v25, &qword_27FBA1AF8, &unk_25B791E40);
      }

      else
      {
        (*(v35 + 32))(v9, v25, v34);
        v54 = 0x6C746E6572727543;
        v55 = 0xEA00000000002079;
        sub_25B7784E8(&qword_27FBA1D90, MEMORY[0x277CE3328]);
        v46 = sub_25B790BD8();
        MEMORY[0x25F86CE10](v46);

        v33 = v54;
        (*(v35 + 8))(v9, v34);
      }

      sub_25B76966C(v27, &qword_27FBA1AF8, &unk_25B791E40);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    v37 = v51;
    sub_25B76D804(v31, v51);
    sub_25B7794F0(v37, v14);
    v39 = v52;
    v38 = v53;
    if ((*(v52 + 48))(v14, 1, v53) == 1)
    {
      v33 = 0xD000000000000017;
      sub_25B76966C(v14, &qword_27FBA1AF8, &unk_25B791E40);
      sub_25B76966C(v37, &qword_27FBA1AF8, &unk_25B791E40);
      (*(v39 + 8))(&v31[v36], v38);
    }

    else
    {
      v43 = v50;
      (*(v39 + 32))(v50, v14, v38);
      v54 = 0x6F7473206C6C6957;
      v55 = 0xEA00000000002070;
      sub_25B7784E8(&qword_27FBA1D90, MEMORY[0x277CE3328]);
      v44 = sub_25B790BD8();
      MEMORY[0x25F86CE10](v44);

      v33 = v54;
      v45 = *(v39 + 8);
      v45(v43, v38);
      sub_25B76966C(v37, &qword_27FBA1AF8, &unk_25B791E40);
      v45(&v31[v36], v38);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x6E776F6E6B6E55;
  }

  else
  {
    return 0x7261656C43;
  }

  return v33;
}

uint64_t sub_25B7794F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B77956C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_25B7795A8(uint64_t a1)
{
  v2 = sub_25B77C508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B7795E4(uint64_t a1)
{
  v2 = sub_25B77C508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B779620()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7469706963657270;
  v4 = 0x696765426C6C6977;
  if (v1 != 3)
  {
    v4 = 0x61656C436C6C6977;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7261656C63;
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

uint64_t sub_25B7796C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B77D7FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B7796FC(uint64_t a1)
{
  v2 = sub_25B77C3B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B779738(uint64_t a1)
{
  v2 = sub_25B77C3B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B77977C()
{
  sub_25B790C18();
  MEMORY[0x25F86D3B0](0);
  return sub_25B790C38();
}

uint64_t sub_25B7797E8()
{
  sub_25B790C18();
  MEMORY[0x25F86D3B0](0);
  return sub_25B790C38();
}

uint64_t sub_25B779834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25B790BE8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25B7798B4(uint64_t a1)
{
  v2 = sub_25B77C4B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B7798F0(uint64_t a1)
{
  v2 = sub_25B77C4B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B77992C(uint64_t a1)
{
  v2 = sub_25B77C55C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B779968(uint64_t a1)
{
  v2 = sub_25B77C55C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B7799BC()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_25B7799E8(uint64_t a1)
{
  v2 = sub_25B77C460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B779A24(uint64_t a1)
{
  v2 = sub_25B77C460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B779A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_25B790BE8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25B790BE8();

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

uint64_t sub_25B779B2C(uint64_t a1)
{
  v2 = sub_25B77C40C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B779B68(uint64_t a1)
{
  v2 = sub_25B77C40C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrecipitationOutlook.State.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D98, &qword_25B792788);
  v79 = *(v2 - 8);
  v80 = v2;
  v3 = *(v79 + 64);
  MEMORY[0x28223BE20](v2);
  v78 = &v72 - v4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1DA0, &qword_25B792790);
  v77 = *(v86 - 8);
  v5 = *(v77 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v72 - v6;
  v90 = sub_25B790348();
  v88 = *(v90 - 8);
  v7 = *(v88 + 64);
  v8 = MEMORY[0x28223BE20](v90);
  v87 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v89 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1DA8, &qword_25B792798);
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = *(v83 + 64);
  MEMORY[0x28223BE20](v11);
  v82 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v81 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v72 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v72 - v21;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1DB0, &qword_25B7927A0);
  v75 = *(v76 - 8);
  v23 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v72 - v24;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1DB8, &qword_25B7927A8);
  v72 = *(v73 - 8);
  v25 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v27 = &v72 - v26;
  v28 = type metadata accessor for PrecipitationOutlook.State(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1DC0, &qword_25B7927B0);
  v92 = *(v95 - 8);
  v32 = *(v92 + 64);
  MEMORY[0x28223BE20](v95);
  v34 = &v72 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B77C3B8();
  v94 = v34;
  sub_25B790C58();
  sub_25B778B1C(v91, v31, type metadata accessor for PrecipitationOutlook.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v40 = v22;
    v41 = v82;
    v42 = v83;
    v43 = v84;
    v44 = v85;
    v45 = v20;
    v46 = v89;
    v47 = v86;
    if (EnumCaseMultiPayload)
    {
      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
      v66 = v88;
      (*(v88 + 32))(v46, v31, v90);
      v91 = v45;
      sub_25B76D804(&v31[v65], v45);
      v101 = 3;
      sub_25B77C460();
      v67 = v94;
      sub_25B790B88();
      v100 = 0;
      sub_25B7784E8(&qword_27FBA1DD8, MEMORY[0x277CE3328]);
      v68 = v93;
      sub_25B790BC8();
      if (v68)
      {
        (*(v77 + 8))(v44, v47);
        sub_25B76966C(v91, &qword_27FBA1AF8, &unk_25B791E40);
        (*(v66 + 8))(v46, v90);
        return (*(v92 + 8))(v67, v95);
      }

      else
      {
        v99 = 1;
        v70 = v90;
        v71 = v91;
        sub_25B790B98();
        (*(v77 + 8))(v44, v47);
        sub_25B76966C(v71, &qword_27FBA1AF8, &unk_25B791E40);
        (*(v66 + 8))(v89, v70);
        return (*(v92 + 8))(v94, v95);
      }
    }

    else
    {
      v48 = v40;
      sub_25B76D804(v31, v40);
      v98 = 2;
      sub_25B77C4B4();
      v49 = v41;
      v51 = v94;
      v50 = v95;
      sub_25B790B88();
      sub_25B7784E8(&qword_27FBA1DD8, MEMORY[0x277CE3328]);
      sub_25B790B98();
      (*(v42 + 8))(v49, v43);
      sub_25B76966C(v48, &qword_27FBA1AF8, &unk_25B791E40);
      return (*(v92 + 8))(v51, v50);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    v53 = v81;
    sub_25B76D804(v31, v81);
    v54 = v88;
    v55 = v90;
    (*(v88 + 32))(v87, &v31[v52], v90);
    v104 = 4;
    sub_25B77C40C();
    v56 = v78;
    v57 = v94;
    v58 = v95;
    sub_25B790B88();
    v103 = 0;
    sub_25B7784E8(&qword_27FBA1DD8, MEMORY[0x277CE3328]);
    v59 = v80;
    v60 = v93;
    sub_25B790B98();
    if (v60)
    {
      (*(v79 + 8))(v56, v59);
      (*(v54 + 8))(v87, v55);
      v61 = v53;
    }

    else
    {
      v102 = 1;
      v69 = v87;
      sub_25B790BC8();
      (*(v79 + 8))(v56, v59);
      (*(v54 + 8))(v69, v55);
      v61 = v81;
    }

    sub_25B76966C(v61, &qword_27FBA1AF8, &unk_25B791E40);
    return (*(v92 + 8))(v57, v58);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v96 = 0;
    sub_25B77C55C();
    v38 = v94;
    v37 = v95;
    sub_25B790B88();
    (*(v72 + 8))(v27, v73);
    return (*(v92 + 8))(v38, v37);
  }

  else
  {
    v97 = 1;
    sub_25B77C508();
    v62 = v74;
    v63 = v94;
    v64 = v95;
    sub_25B790B88();
    (*(v75 + 8))(v62, v76);
    return (*(v92 + 8))(v63, v64);
  }
}

uint64_t PrecipitationOutlook.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1E00, &qword_25B7927B8);
  v4 = *(v3 - 8);
  v76 = v3;
  v77 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v83 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1E08, &qword_25B7927C0);
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v79 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1E10, &qword_25B7927C8);
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v11);
  v82 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1E18, &qword_25B7927D0);
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  MEMORY[0x28223BE20](v14);
  v81 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1E20, &qword_25B7927D8);
  v68 = *(v17 - 8);
  v69 = v17;
  v18 = *(v68 + 64);
  MEMORY[0x28223BE20](v17);
  v78 = &v64 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1E28, &qword_25B7927E0);
  v85 = *(v80 - 8);
  v20 = *(v85 + 64);
  MEMORY[0x28223BE20](v80);
  v22 = &v64 - v21;
  v23 = type metadata accessor for PrecipitationOutlook.State(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v64 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v64 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v64 - v34;
  v36 = a1[3];
  v37 = a1[4];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_25B77C3B8();
  v38 = v86;
  sub_25B790C48();
  if (!v38)
  {
    v65 = v33;
    v39 = v81;
    v64 = v30;
    v66 = v27;
    v40 = v82;
    v41 = v83;
    v67 = v35;
    v86 = v23;
    v42 = v84;
    v43 = v80;
    v44 = sub_25B790B78();
    if (*(v44 + 16) != 1 || (v45 = *(v44 + 32), v45 == 5))
    {
      v50 = sub_25B790A88();
      swift_allocError();
      v52 = v51;
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1E30, &qword_25B7927E8) + 48);
      *v52 = v86;
      sub_25B790B28();
      sub_25B790A78();
      (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
      swift_willThrow();
      (*(v85 + 8))(v22, v43);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v44 + 32) <= 1u)
      {
        if (*(v44 + 32))
        {
          v89 = 1;
          sub_25B77C508();
          sub_25B790B18();
          (*(v70 + 8))(v39, v71);
        }

        else
        {
          v88 = 0;
          sub_25B77C55C();
          v55 = v78;
          sub_25B790B18();
          (*(v68 + 8))(v55, v69);
        }

        (*(v85 + 8))(v22, v43);
        swift_unknownObjectRelease();
        v56 = v67;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        if (v45 == 2)
        {
          v90 = 2;
          sub_25B77C4B4();
          sub_25B790B18();
          sub_25B790348();
          sub_25B7784E8(&qword_27FBA1E38, MEMORY[0x277CE3328]);
          v58 = v73;
          sub_25B790B38();
          (*(v72 + 8))(v40, v58);
          (*(v85 + 8))(v22, v43);
          swift_unknownObjectRelease();
          v48 = v65;
        }

        else
        {
          v82 = v44;
          if (v45 == 3)
          {
            v93 = 3;
            sub_25B77C460();
            v46 = v79;
            sub_25B790B18();
            sub_25B790348();
            v92 = 0;
            v47 = sub_25B7784E8(&qword_27FBA1E38, MEMORY[0x277CE3328]);
            v48 = v64;
            v49 = v74;
            v83 = v47;
            sub_25B790B68();
            v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
            v91 = 1;
            sub_25B790B38();
            (*(v75 + 8))(v46, v49);
            (*(v85 + 8))(v22, v43);
            swift_unknownObjectRelease();
          }

          else
          {
            v96 = 4;
            sub_25B77C40C();
            v57 = v41;
            sub_25B790B18();
            sub_25B790348();
            v95 = 0;
            sub_25B7784E8(&qword_27FBA1E38, MEMORY[0x277CE3328]);
            v59 = v76;
            v60 = v57;
            sub_25B790B38();
            v61 = v85;
            v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
            v94 = 1;
            sub_25B790B68();
            (*(v77 + 8))(v60, v59);
            (*(v61 + 8))(v22, v43);
            swift_unknownObjectRelease();
            v48 = v66;
          }
        }

        swift_storeEnumTagMultiPayload();
        v56 = v67;
        sub_25B777F30(v48, v67);
      }

      sub_25B777F30(v56, v42);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v87);
}

uint64_t PrecipitationOutlook.description.getter()
{
  v1 = v0;
  sub_25B790A58();
  MEMORY[0x25F86CE10](0xD000000000000016, 0x800000025B793F10);
  v2 = type metadata accessor for PrecipitationOutlook(0);
  v3 = v0 + *(v2 + 32);
  v4 = PrecipitationOutlook.State.description.getter();
  MEMORY[0x25F86CE10](v4);

  MEMORY[0x25F86CE10](544497952, 0xE400000000000000);
  sub_25B78FD88();
  sub_25B7784E8(&qword_27FBA1E40, MEMORY[0x277CC9578]);
  v5 = sub_25B790BD8();
  MEMORY[0x25F86CE10](v5);

  MEMORY[0x25F86CE10](0xD000000000000012, 0x800000025B793F30);
  v6 = *(v1 + *(v2 + 20));
  sub_25B790748();
  return 0;
}

uint64_t _s25NanoWeatherKitUICompanion20PrecipitationOutlookV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_25B78FD48() & 1) != 0 && (v4 = type metadata accessor for PrecipitationOutlook(0), *(a1 + v4[5]) == *(a2 + v4[5])) && (v5 = v4, *(a1 + v4[7]) == *(a2 + v4[7])) && (_s25NanoWeatherKitUICompanion20PrecipitationOutlookV5StateO21__derived_enum_equalsySbAE_AEtFZ_0(a1 + v4[8], a2 + v4[8]))
  {
    v6 = a1 + v5[9];
    v7 = sub_25B78FEC8();
    v9 = v8;
    v10 = a2 + v5[9];
    if (v7 == sub_25B78FEC8() && v9 == v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_25B790BE8();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t _s25NanoWeatherKitUICompanion20PrecipitationOutlookV5StateO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v3 = sub_25B790348();
  v100 = *(v3 - 8);
  v101 = v3;
  v4 = *(v100 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v98 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v94 = (&v89 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v95 = &v89 - v10;
  MEMORY[0x28223BE20](v9);
  v92 = &v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v91 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v90 = &v89 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v97 = &v89 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v99 = &v89 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v89 - v22;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F18, &qword_25B793060);
  v24 = *(*(v96 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v96);
  v93 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v89 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v89 - v30;
  v32 = type metadata accessor for PrecipitationOutlook.State(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v89 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v89 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F20, &qword_25B793068);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v46 = &v89 + *(v44 + 56) - v45;
  v47 = a1;
  v48 = &v89 - v45;
  sub_25B778B1C(v47, &v89 - v45, type metadata accessor for PrecipitationOutlook.State);
  sub_25B778B1C(v102, v46, type metadata accessor for PrecipitationOutlook.State);
  v102 = v48;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v50 = v23;
    v51 = v99;
    if (!EnumCaseMultiPayload)
    {
      sub_25B778B1C(v102, v41, type metadata accessor for PrecipitationOutlook.State);
      if (swift_getEnumCaseMultiPayload())
      {
        v52 = v41;
        goto LABEL_20;
      }

      v66 = *(v96 + 48);
      sub_25B76D804(v41, v31);
      sub_25B76D804(v46, &v31[v66]);
      v67 = v101;
      v68 = *(v100 + 48);
      if (v68(v31, 1, v101) == 1)
      {
        if (v68(&v31[v66], 1, v67) == 1)
        {
          sub_25B76966C(v31, &qword_27FBA1AF8, &unk_25B791E40);
          goto LABEL_14;
        }

        goto LABEL_38;
      }

      sub_25B7794F0(v31, v50);
      if (v68(&v31[v66], 1, v67) == 1)
      {
        (*(v100 + 8))(v50, v67);
LABEL_38:
        sub_25B76966C(v31, &qword_27FBA1F18, &qword_25B793060);
        goto LABEL_52;
      }

      v82 = v100;
      v83 = v92;
      (*(v100 + 32))(v92, &v31[v66], v67);
      sub_25B7784E8(&qword_27FBA1F30, MEMORY[0x277CE3328]);
      v84 = sub_25B790608();
      v85 = *(v82 + 8);
      v85(v83, v67);
      v85(v50, v67);
      v86 = v31;
LABEL_51:
      sub_25B76966C(v86, &qword_27FBA1AF8, &unk_25B791E40);
      if (v84)
      {
        goto LABEL_14;
      }

      goto LABEL_52;
    }

    sub_25B778B1C(v102, v39, type metadata accessor for PrecipitationOutlook.State);
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_25B76966C(&v39[v62], &qword_27FBA1AF8, &unk_25B791E40);
      (*(v100 + 8))(v39, v101);
      goto LABEL_22;
    }

    v63 = v100;
    v64 = (v100 + 32);
    v94 = *(v100 + 32);
    v94(v95, v46, v101);
    sub_25B76D804(&v39[v62], v51);
    sub_25B76D804(&v46[v62], v97);
    sub_25B7784E8(&qword_27FBA1F28, MEMORY[0x277CE3328]);
    sub_25B790708();
    sub_25B790708();
    v98 = v64;
    if (v105 == v103 && v106 == v104)
    {
      v65 = 1;
    }

    else
    {
      v65 = sub_25B790BE8();
    }

    v71 = *(v63 + 8);
    v72 = v101;
    v71(v39, v101);
    if ((v65 & 1) == 0)
    {
      sub_25B76966C(v97, &qword_27FBA1AF8, &unk_25B791E40);
      sub_25B76966C(v51, &qword_27FBA1AF8, &unk_25B791E40);
      v71(v95, v72);
      goto LABEL_52;
    }

    v73 = *(v96 + 48);
    sub_25B7794F0(v51, v29);
    v74 = v97;
    sub_25B7794F0(v97, &v29[v73]);
    v75 = *(v63 + 48);
    if (v75(v29, 1, v72) == 1)
    {
      sub_25B76966C(v74, &qword_27FBA1AF8, &unk_25B791E40);
      sub_25B76966C(v51, &qword_27FBA1AF8, &unk_25B791E40);
      v71(v95, v72);
      if (v75(&v29[v73], 1, v72) == 1)
      {
        sub_25B76966C(v29, &qword_27FBA1AF8, &unk_25B791E40);
        goto LABEL_14;
      }
    }

    else
    {
      v79 = v90;
      sub_25B7794F0(v29, v90);
      if (v75(&v29[v73], 1, v72) != 1)
      {
        v87 = &v29[v73];
        v88 = v92;
        v94(v92, v87, v72);
        sub_25B7784E8(&qword_27FBA1F30, MEMORY[0x277CE3328]);
        v84 = sub_25B790608();
        v71(v88, v72);
        sub_25B76966C(v97, &qword_27FBA1AF8, &unk_25B791E40);
        sub_25B76966C(v51, &qword_27FBA1AF8, &unk_25B791E40);
        v71(v95, v72);
        v71(v79, v72);
        v86 = v29;
        goto LABEL_51;
      }

      sub_25B76966C(v97, &qword_27FBA1AF8, &unk_25B791E40);
      sub_25B76966C(v51, &qword_27FBA1AF8, &unk_25B791E40);
      v71(v95, v72);
      v71(v79, v72);
    }

    sub_25B76966C(v29, &qword_27FBA1F18, &qword_25B793060);
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_25B778B1C(v102, v36, type metadata accessor for PrecipitationOutlook.State);
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v55 = v100;
      v54 = v101;
      v56 = *(v100 + 32);
      v57 = v94;
      v56(v94, &v36[v53], v101);
      v56(v98, &v46[v53], v54);
      v58 = *(v96 + 48);
      v59 = v93;
      sub_25B76D804(v36, v93);
      sub_25B76D804(v46, v59 + v58);
      v60 = *(v55 + 48);
      if (v60(v59, 1, v54) == 1)
      {
        if (v60(v59 + v58, 1, v54) == 1)
        {
          sub_25B76966C(v59, &qword_27FBA1AF8, &unk_25B791E40);
          goto LABEL_40;
        }
      }

      else
      {
        v69 = v91;
        sub_25B7794F0(v59, v91);
        if (v60(v59 + v58, 1, v54) != 1)
        {
          v76 = v92;
          v56(v92, (v59 + v58), v54);
          sub_25B7784E8(&qword_27FBA1F30, MEMORY[0x277CE3328]);
          v77 = sub_25B790608();
          v70 = *(v55 + 8);
          v70(v76, v54);
          v70(v69, v54);
          sub_25B76966C(v59, &qword_27FBA1AF8, &unk_25B791E40);
          if (v77)
          {
LABEL_40:
            sub_25B7784E8(&qword_27FBA1F28, MEMORY[0x277CE3328]);
            sub_25B790708();
            sub_25B790708();
            if (v105 == v103 && v106 == v104)
            {
              v78 = *(v55 + 8);
              v78(v98, v54);
              v78(v57, v54);

              goto LABEL_14;
            }

            v80 = sub_25B790BE8();
            v81 = *(v55 + 8);
            v81(v98, v54);
            v81(v57, v54);

            if (v80)
            {
              goto LABEL_14;
            }

LABEL_52:
            sub_25B778B84(v102, type metadata accessor for PrecipitationOutlook.State);
            return 0;
          }

LABEL_29:
          v70(v98, v54);
          v70(v57, v54);
          goto LABEL_52;
        }

        (*(v55 + 8))(v69, v54);
      }

      sub_25B76966C(v59, &qword_27FBA1F18, &qword_25B793060);
      v70 = *(v55 + 8);
      goto LABEL_29;
    }

    (*(v100 + 8))(&v36[v53], v101);
    v52 = v36;
LABEL_20:
    sub_25B76966C(v52, &qword_27FBA1AF8, &unk_25B791E40);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_22;
    }

LABEL_14:
    sub_25B778B84(v102, type metadata accessor for PrecipitationOutlook.State);
    return 1;
  }

  if (swift_getEnumCaseMultiPayload() == 4)
  {
    goto LABEL_14;
  }

LABEL_22:
  sub_25B76966C(v102, &qword_27FBA1F20, &qword_25B793068);
  return 0;
}

unint64_t sub_25B77C3B8()
{
  result = qword_27FBA1DC8;
  if (!qword_27FBA1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1DC8);
  }

  return result;
}

unint64_t sub_25B77C40C()
{
  result = qword_27FBA1DD0;
  if (!qword_27FBA1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1DD0);
  }

  return result;
}

unint64_t sub_25B77C460()
{
  result = qword_27FBA1DE0;
  if (!qword_27FBA1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1DE0);
  }

  return result;
}

unint64_t sub_25B77C4B4()
{
  result = qword_27FBA1DE8;
  if (!qword_27FBA1DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1DE8);
  }

  return result;
}