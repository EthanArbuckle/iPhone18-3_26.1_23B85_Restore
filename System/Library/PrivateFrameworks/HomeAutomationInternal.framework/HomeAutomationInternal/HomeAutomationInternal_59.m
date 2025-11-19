uint64_t sub_252D8ACB0(void *__src)
{
  memcpy(__dst, __src, 0x1F8uLL);
  if (sub_252C51CE8())
  {
    return 0;
  }

  if (sub_252C51814(3u))
  {
    return 2;
  }

  if (sub_252C51814(2u))
  {
    return 3;
  }

  if (sub_252C51814(1u))
  {
    return 4;
  }

  memcpy(v8, __src, sizeof(v8));
  if (sub_252956B94(v8) != 1 && *(v8[6] + 16))
  {
    v3 = v8[47];
    v4 = *(v8[47] + 16);
    sub_2529D291C(__dst, v7);
    v5 = (v3 + 32);

    while (2)
    {
      if (!v4)
      {
        sub_25299F5D4(__dst);

        return 5;
      }

      switch(*v5)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          v6 = sub_252E37DB4();

          ++v5;
          --v4;
          if ((v6 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }

      break;
    }

    sub_25299F5D4(__dst);
  }

  return 6;
}

id HomeAttributeValue.__allocating_init(doubleValue:unit:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setDoubleValue_];
  [v8 setUnit_];
  [v8 setType_];

  return v8;
}

id HomeAttributeRange.__allocating_init(lowerValue:upperValue:)(double a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setLowerValue_];
  [v8 setUpperValue_];

  return v8;
}

id HomeAttributeValue.__allocating_init(range:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_252E36F04();
  v5 = [v3 initWithIdentifier:0 displayString:v4];

  v6 = v5;
  [v6 setType_];
  v7 = a1;
  [v6 setRangeValue_];

  return v6;
}

id HomeAttributeValue.__allocating_init(integerValue:unit:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setIntegerValue_];
  [v8 setUnit_];
  [v8 setType_];

  return v8;
}

id HomeAttributeValue.__allocating_init(cleaningJob:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_252E36F04();
  v5 = [v3 initWithIdentifier:0 displayString:v4];

  v6 = v5;
  [v6 setType_];
  [v6 setCleaningJob_];

  return v6;
}

id HomeAttributeValue.__allocating_init(BOOLValue:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_252E36F04();
  v5 = [v3 initWithIdentifier:0 displayString:v4];

  v6 = v5;
  [v6 setBoolValue_];
  [v6 setType_];

  return v6;
}

id HomeAttributeValue.__allocating_init(stringValue:unit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  v9 = sub_252E36F04();

  [v8 setStringValue_];

  [v8 setUnit_];
  [v8 setType_];

  return v8;
}

id HomeAttributeValue.__allocating_init(limitValue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_252E36F04();
  v5 = [v3 initWithIdentifier:0 displayString:v4];

  v6 = v5;
  [v6 setType_];
  [v6 setLimitValue_];

  return v6;
}

id HomeAttributeValue.__allocating_init(type:BOOLValue:doubleValue:integerValue:stringValue:limit:unit:range:cleaningJob:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, int a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, void *a13, void *a14)
{
  v15 = v14;
  v22 = objc_allocWithZone(v15);
  v23 = sub_252E36F04();
  v24 = [v22 initWithIdentifier:0 displayString:v23];

  [v24 setType_];
  if ((a12 & 1) == 0)
  {
    [v24 setUnit_];
  }

  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {

        if ((a4 & 1) == 0)
        {
          [v24 setDoubleValue_];
        }
      }

      else if (a8)
      {
        v25 = sub_252E36F04();

        [v24 setStringValue_];
      }

      goto LABEL_24;
    }

    if (a1 == 1)
    {

      if (a2 != 2)
      {
        [v24 setBoolValue_];
      }

LABEL_24:

LABEL_25:
      return v24;
    }

    goto LABEL_19;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {

      if ((a6 & 1) == 0)
      {
        [v24 setIntegerValue_];
      }
    }

    else
    {

      if ((a10 & 1) == 0)
      {
        [v24 setLimitValue_];
      }
    }

    goto LABEL_24;
  }

  if (a1 != 6)
  {
    if (a1 == 8)
    {

      if (a14)
      {
        v26 = a14;
        [v24 setCleaningJob_];
      }

      goto LABEL_25;
    }

LABEL_19:

    return v24;
  }

  if (a13)
  {
    v28 = a13;
    [v24 setRangeValue_];
  }

  return v24;
}

id HomeAttributeCleaningJob.__allocating_init(runState:cleanModes:targetAreas:targetMap:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = objc_allocWithZone(v4);
  v9 = sub_252E36F04();
  v10 = [v8 initWithIdentifier:0 displayString:v9];

  v11 = v10;
  [v11 setRunState_];
  v12 = *(a2 + 16);
  if (v12)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2529AA3C0(0, v12, 0);
    v13 = *(v20 + 16);
    v14 = 32;
    do
    {
      v15 = *(a2 + v14);
      v16 = *(v20 + 24);
      if (v13 >= v16 >> 1)
      {
        sub_2529AA3C0((v16 > 1), v13 + 1, 1);
      }

      *(v20 + 16) = v13 + 1;
      *(v20 + 8 * v13 + 32) = v15;
      v14 += 8;
      ++v13;
      --v12;
    }

    while (v12);
  }

  v17 = sub_252E37254();

  [v11 setCleanModes_];

  type metadata accessor for HomeAttributeTargetArea();
  v18 = sub_252E37254();

  [v11 setTargetAreas_];

  [v11 setTargetMap_];
  return v11;
}

id HomeAttributeTargetArea.__allocating_init(name:areaID:mapID:)(double a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  v9 = sub_252E36F04();

  [v8 setName_];

  [v8 setAreaID_];
  [v8 setMapID_];

  return v8;
}

id HomeAttributeTargetMap.__allocating_init(name:mapID:)(double a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_252E36F04();
  v5 = [v3 initWithIdentifier:0 displayString:v4];

  v6 = v5;
  v7 = sub_252E36F04();

  [v6 setName_];

  [v6 setMapID_];
  return v6;
}

uint64_t sub_252D8BB5C()
{
  v1 = v0;
  v2 = *(v0 + qword_27F545C30);

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EA8, &unk_252E491B0);
  v6 = sub_252E36F94();
  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v3 = *(v1 + qword_27F545C38);

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DF0, &unk_252E5F5E0);
  v4 = sub_252E36F94();
  MEMORY[0x2530AD570](v4);

  return v6;
}

uint64_t sub_252D8BC48(uint64_t a1)
{
  v3 = sub_252E36454();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = qword_27F545C30;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544590, &qword_252E54C30);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v11) = sub_252E36734();
  v15 = qword_27F545C38;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545D08, &unk_252E5F5D0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v10 + v15) = sub_252E36734();
  (*(v4 + 16))(v7, a1, v3);
  v19 = sub_252E364B4();
  (*(v4 + 8))(a1, v3);
  return v19;
}

uint64_t sub_252D8BE70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252D8BED0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252D8BF24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_252D8BF84()
{
  v1 = v0;
  v2 = *(v0 + qword_27F545C50);

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544588, &unk_252E54C20);
  v6 = sub_252E36F94();
  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v3 = *(v1 + qword_27F545C58);

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545D00, &unk_252E5F5C0);
  v4 = sub_252E36F94();
  MEMORY[0x2530AD570](v4);

  return v6;
}

uint64_t sub_252D8C070(uint64_t a1)
{
  v3 = sub_252E36454();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = qword_27F545C50;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544578, &qword_252E54C10);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v11) = sub_252E36734();
  v15 = qword_27F545C58;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545CF8, &unk_252E5F5B0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v10 + v15) = sub_252E36734();
  (*(v4 + 16))(v7, a1, v3);
  v19 = sub_252E364B4();
  (*(v4 + 8))(a1, v3);
  return v19;
}

uint64_t sub_252D8C26C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252D8C2CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252D8C320(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_252D8C410(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_252D8C850()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - v5;
  v7 = sub_252E36324();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = sub_252D8D5D8(&unk_27F545D11, 19, sub_252D8D6F0);
  swift_endAccess();
  if (!v12 || (v13 = sub_25299909C(), , !v13) || (v14 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , !v14))
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_12;
  }

  sub_252956C1C(v14 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_12:
    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    return 0;
  }

  (*(v8 + 32))(v11, v6, v7);
  swift_beginAccess();
  v15 = sub_252D8D5D8(&unk_27F545D11, 19, sub_252D8D6F0);
  swift_endAccess();
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = sub_25299909C();

  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

  if (!v17 || (v18 = sub_25296E640(), , !v18) || (v19 = sub_252E36164(), v21 = v20, , (v21 & 1) != 0))
  {
LABEL_10:
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  v23 = *&v19;
  v24 = *(v8 + 16);
  v24(v4, v11, v7);
  v25 = *(v8 + 56);
  v25(v4, 0, 1, v7);
  v26 = sub_252A47810(v4);
  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  if (v26 == 3)
  {
    (*(v8 + 8))(v11, v7);
    return v23 < 15.0;
  }

  else
  {
    v24(v4, v11, v7);
    v25(v4, 0, 1, v7);
    v27 = sub_252A47810(v4);
    sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    (*(v8 + 8))(v11, v7);
    return v23 < 60.0 && v27 == 2;
  }
}

BOOL sub_252D8CCA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - v5;
  v7 = sub_252E36324();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = sub_252D8D5D8(&unk_27F545D12, 17, sub_252D8D6F0);
  swift_endAccess();
  if (!v12 || (v13 = sub_25299909C(), , !v13) || (v14 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , !v14))
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_12;
  }

  sub_252956C1C(v14 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_12:
    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    return 0;
  }

  (*(v8 + 32))(v11, v6, v7);
  swift_beginAccess();
  v15 = sub_252D8D5D8(&unk_27F545D12, 17, sub_252D8D6F0);
  swift_endAccess();
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = sub_25299909C();

  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

  if (!v17 || (v18 = sub_25296E640(), , !v18) || (v19 = sub_252E36164(), v21 = v20, , (v21 & 1) != 0))
  {
LABEL_10:
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  v23 = *&v19;
  v24 = *(v8 + 16);
  v24(v4, v11, v7);
  v25 = *(v8 + 56);
  v25(v4, 0, 1, v7);
  v26 = sub_252A47810(v4);
  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  if (v26 == 3)
  {
    (*(v8 + 8))(v11, v7);
    return v23 > 28.0;
  }

  else
  {
    v24(v4, v11, v7);
    v25(v4, 0, 1, v7);
    v27 = sub_252A47810(v4);
    sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    (*(v8 + 8))(v11, v7);
    return v23 > 82.0 && v27 == 2;
  }
}

BOOL sub_252D8D0FC()
{
  swift_beginAccess();
  v0 = sub_252D8D5D8(&unk_27F545D12, 17, sub_252D8D6F0);
  swift_endAccess();
  if (v0)
  {
    v1 = sub_25299909C();

    if (v1)
    {
      v2 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

      if (v2)
      {
        v3 = sub_25296E640();

        if (v3)
        {
          swift_beginAccess();
          v4 = sub_252D8D5D8(&unk_27F545D11, 19, sub_252D8D6F0);
          swift_endAccess();
          if (v4 && (v5 = sub_25299909C(), , v5) && (v6 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , v6) && (v7 = sub_25296E640(), , v7))
          {

            v8 = COERCE_DOUBLE(sub_252E36164());
            v10 = v9;

            v11 = COERCE_DOUBLE(sub_252E36164());
            v13 = v12;

            if ((v10 & 1) == 0 && (v13 & 1) == 0)
            {
              return v8 - v11 > 2.0;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_252D8D2DC()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_51;
  }

  for (result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = sub_252E378C4())
  {
    v3 = 0;
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v26 = v1 & 0xC000000000000001;
    v22 = v1;
    v24 = v1 + 32;
    v23 = result;
    while (2)
    {
      if (v26)
      {
        v5 = MEMORY[0x2530ADF00](v3, v22);
        v6 = __OFADD__(v3++, 1);
        if (!v6)
        {
LABEL_7:
          v7 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
          v27 = OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states;
          v28 = v5;
          if (v7 >> 62)
          {
            v8 = sub_252E378C4();
          }

          else
          {
            v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v1 = v7 & 0xC000000000000001;

          v9 = 0;
          do
          {
            if (v8 == v9)
            {

              goto LABEL_35;
            }

            if (v1)
            {
              v10 = MEMORY[0x2530ADF00](v9, v7);
              if (__OFADD__(v9, 1))
              {
                goto LABEL_45;
              }
            }

            else
            {
              if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_46;
              }

              v10 = *(v7 + 8 * v9 + 32);

              if (__OFADD__(v9, 1))
              {
LABEL_45:
                __break(1u);
LABEL_46:
                __break(1u);
LABEL_47:
                __break(1u);
LABEL_48:
                __break(1u);
                goto LABEL_49;
              }
            }

            v11 = sub_252A481A4(v10 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
            v13 = v12;

            ++v9;
          }

          while ((v13 & 1) != 0 || v11 != 19);

          v14 = *(v28 + v27);
          v1 = v14 & 0xFFFFFFFFFFFFFF8;
          if (v14 >> 62)
          {
            if (v14 < 0)
            {
              v21 = *(v28 + v27);
            }

            v15 = sub_252E378C4();
          }

          else
          {
            v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          for (i = 0; v15 != i; ++i)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x2530ADF00](i, v14);
              if (__OFADD__(i, 1))
              {
                goto LABEL_47;
              }
            }

            else
            {
              if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_48;
              }

              v17 = *(v14 + 8 * i + 32);

              if (__OFADD__(i, 1))
              {
                goto LABEL_47;
              }
            }

            v18 = sub_252A481A4(v17 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
            v20 = v19;

            if ((v20 & 1) == 0 && v18 == 17)
            {

              return 1;
            }
          }

LABEL_35:
          if (v3 != v23)
          {
            continue;
          }

          return 0;
        }
      }

      else
      {
        if (v3 >= *(v25 + 16))
        {
          goto LABEL_50;
        }

        v4 = *(v24 + 8 * v3);

        v6 = __OFADD__(v3++, 1);
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      break;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  return result;
}

void *sub_252D8D5D8(void *key, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (objc_getAssociatedObject(v3, key))
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_25293847C(v13, &qword_27F541E80, &qword_252E3DFA0);
    goto LABEL_8;
  }

  type metadata accessor for HomeAutomationClimateResponses();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v8 = a3(a2);
    type metadata accessor for HomeAutomationClimateResponses();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = v8;
    objc_setAssociatedObject(v3, key, v7, 1);
    return v7;
  }

  return v10;
}

uint64_t sub_252D8D6F0(uint64_t a1)
{
  v1 = a1;
  v2 = sub_25299C704(a1);
  v3 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  v4 = *(v2 + 24);
  if (v4 >> 62)
  {
    goto LABEL_38;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_3:
    v31 = v4 & 0xC000000000000001;
    v28 = v4 & 0xFFFFFFFFFFFFFF8;
    v27 = v4 + 32;

    v6 = 0;
    v29 = v5;
    v30 = v4;
    do
    {
      if (v31)
      {
        v7 = MEMORY[0x2530ADF00](v6, v4);
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v6 >= *(v28 + 16))
        {
          goto LABEL_37;
        }

        v7 = *(v27 + 8 * v6);

        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_36;
        }
      }

      v32 = sub_252AD6874();
      v33 = v3;
      v9 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (v9 >> 62)
      {
        if (v9 < 0)
        {
          v23 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
        }

        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v10)
      {
        v4 = 0;
        v3 = v9 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x2530ADF00](v4, v9);
            v12 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v4 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v11 = *(v9 + 8 * v4 + 32);

            v12 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              v5 = sub_252E378C4();
              if (!v5)
              {
                goto LABEL_39;
              }

              goto LABEL_3;
            }
          }

          v13 = sub_252A481A4(v11 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
          if ((v14 & 1) != 0 || v13 != v1)
          {
          }

          else
          {
            sub_252E37A94();
            v15 = v1;
            v16 = *(v33 + 16);
            sub_252E37AC4();
            v1 = v15;
            sub_252E37AD4();
            sub_252E37AA4();
          }

          ++v4;
          if (v12 == v10)
          {
            v17 = v33;
            v5 = v29;
            v4 = v30;
            v3 = MEMORY[0x277D84F90];
            goto LABEL_27;
          }
        }
      }

      v17 = v3;
LABEL_27:

      v18 = *(v32 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states);
      *(v32 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v17;

      v19 = type metadata accessor for HomeAutomationEntityResponse(0);
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      sub_2529605C0(v32);

      MEMORY[0x2530AD700](v22);
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    while (v6 != v5);
    v25 = v34;
  }

  else
  {
LABEL_39:

    return MEMORY[0x277D84F90];
  }

  return v25;
}

unint64_t sub_252D8DA34(uint64_t a1)
{
  v86 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v83 - v7;
  v9 = *(v1 + 24);
  v100 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
LABEL_118:
    v81 = v9;
    v82 = sub_252E378C4();
    v9 = v81;
    v10 = v82;
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  v93 = v6;
  if (v10)
  {
    v12 = 0;
    v88 = v9 & 0xFFFFFFFFFFFFFF8;
    v89 = v9 & 0xC000000000000001;
    v87 = v9 + 32;
    v84 = v10;
    v85 = v9;
    v94 = v8;
    do
    {
      if (v89)
      {
        v14 = MEMORY[0x2530ADF00](v12, v9);
        v15 = __OFADD__(v12, 1);
        v16 = v12 + 1;
        if (v15)
        {
          goto LABEL_115;
        }
      }

      else
      {
        if (v12 >= *(v88 + 16))
        {
          goto LABEL_116;
        }

        v13 = *(v87 + 8 * v12);

        v15 = __OFADD__(v12, 1);
        v16 = v12 + 1;
        if (v15)
        {
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }
      }

      v17 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      v90 = v14;
      v91 = v16;
      if (v17 >> 62)
      {
        v18 = sub_252E378C4();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v92 = v17;

      if (v18)
      {
        v19 = 0;
        v20 = v92 & 0xC000000000000001;
        v6 = (v92 & 0xFFFFFFFFFFFFFF8);
        v21 = v92 + 32;
        v97 = v92 & 0xC000000000000001;
        v98 = v18;
        v95 = v92 + 32;
        v96 = v92 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v20)
          {
            v22 = MEMORY[0x2530ADF00](v19, v92);
            v15 = __OFADD__(v19++, 1);
            if (v15)
            {
              goto LABEL_111;
            }
          }

          else
          {
            if (v19 >= *(v6 + 2))
            {
              goto LABEL_112;
            }

            v22 = *(v21 + 8 * v19);

            v15 = __OFADD__(v19++, 1);
            if (v15)
            {
LABEL_111:
              __break(1u);
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
LABEL_114:
              __break(1u);
              goto LABEL_115;
            }
          }

          sub_252956C1C(v22 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v8);
          v23 = sub_252E36324();
          v24 = *(v23 - 8);
          if ((*(v24 + 48))(v8, 1, v23) != 1)
          {
            break;
          }

          sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
LABEL_13:
          if (v19 == v18)
          {
            goto LABEL_43;
          }
        }

        v25 = sub_252E36304();
        v27 = v26;
        (*(v24 + 8))(v8, v23);
        if (qword_27F53F298 != -1)
        {
          swift_once();
        }

        v28 = 0;
        v29 = off_27F541CC8;
        v30 = off_27F541CC8 + 64;
        v31 = 1 << *(off_27F541CC8 + 32);
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        else
        {
          v32 = -1;
        }

        v33 = v32 & *(off_27F541CC8 + 8);
        v11 = v31 + 63;
        v6 = ((v31 + 63) >> 6);
        while (1)
        {
          if (!v33)
          {
            while (1)
            {
              v34 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                break;
              }

              if (v34 >= v6)
              {

                v8 = v94;
                v21 = v95;
                v20 = v97;
                v18 = v98;
                v6 = v96;
                goto LABEL_13;
              }

              v11 = *&v30[8 * v34];
              ++v28;
              if (v11)
              {
                v28 = v34;
                goto LABEL_30;
              }
            }

            __break(1u);
            goto LABEL_51;
          }

          v11 = v33;
LABEL_30:
          v33 = (v11 - 1) & v11;
          if (v29[2])
          {
            v35 = *(v29[6] + ((v28 << 9) | (8 * __clz(__rbit64(v11)))));
            v36 = sub_252A488EC(v35);
            if (v37)
            {
              v38 = (v29[7] + 16 * v36);
              v39 = *v38 == v25 && v38[1] == v27;
              if (v39 || (sub_252E37DB4() & 1) != 0)
              {
                break;
              }
            }
          }
        }

        v8 = v94;
        v21 = v95;
        v20 = v97;
        v18 = v98;
        v6 = v96;
        if (v35 != v86)
        {
          goto LABEL_13;
        }

        sub_252E37A94();
        v40 = *(v100 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
LABEL_43:
      }

      v9 = v85;
      v12 = v91;
      v6 = v93;
    }

    while (v91 != v84);
    v41 = v100;
    v100 = MEMORY[0x277D84F90];
    if (v41 < 0)
    {
      goto LABEL_120;
    }
  }

  else
  {
LABEL_51:
    v41 = v11;
    v100 = v11;
    if ((v11 & 0x8000000000000000) != 0)
    {
LABEL_120:
      v42 = sub_252E378C4();
      goto LABEL_56;
    }
  }

  if ((v41 & 0x4000000000000000) != 0)
  {
    goto LABEL_120;
  }

  v42 = *(v41 + 16);
LABEL_56:
  v84 = MEMORY[0x277D84F90];
  if (v42)
  {
    v43 = 0;
    v90 = v41 & 0xC000000000000001;
    v85 = v41 + 32;
    v87 = v42;
    v88 = v41;
    while (1)
    {
      if (v90)
      {
        v8 = MEMORY[0x2530ADF00](v43, v41);
        v15 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v15)
        {
          goto LABEL_117;
        }
      }

      else
      {
        if (v43 >= *(v41 + 16))
        {
          __break(1u);
          goto LABEL_120;
        }

        v8 = *(v85 + 8 * v43);

        v15 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v15)
        {
          goto LABEL_117;
        }
      }

      v91 = sub_252AD6874();
      v45 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      v99 = MEMORY[0x277D84F90];
      if (v45 >> 62)
      {
        v46 = sub_252E378C4();
      }

      else
      {
        v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v92 = v8;
      v94 = v44;

      if (v46)
      {
        v8 = 0;
        v48 = v47 & 0xC000000000000001;
        v49 = v47 & 0xFFFFFFFFFFFFFF8;
        v89 = v47;
        v50 = v47 + 32;
        v97 = v47 & 0xC000000000000001;
        v98 = v46;
        v95 = v47 + 32;
        v96 = v47 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
LABEL_69:
          if (v48)
          {
            v51 = MEMORY[0x2530ADF00](v8, v89);
            v15 = __OFADD__(v8++, 1);
            if (v15)
            {
              goto LABEL_113;
            }
          }

          else
          {
            if (v8 >= *(v49 + 16))
            {
              goto LABEL_114;
            }

            v51 = *(v50 + 8 * v8);

            v15 = __OFADD__(v8++, 1);
            if (v15)
            {
              goto LABEL_113;
            }
          }

          sub_252956C1C(v51 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v6);
          v52 = sub_252E36324();
          v53 = *(v52 - 8);
          if ((*(v53 + 48))(v6, 1, v52) != 1)
          {
            break;
          }

          sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
          if (v8 == v46)
          {
            goto LABEL_101;
          }
        }

        v54 = sub_252E36304();
        v56 = v55;
        (*(v53 + 8))(v6, v52);
        if (qword_27F53F298 != -1)
        {
          swift_once();
        }

        v57 = 0;
        v58 = off_27F541CC8;
        v59 = off_27F541CC8 + 64;
        v60 = 1 << *(off_27F541CC8 + 32);
        if (v60 < 64)
        {
          v61 = ~(-1 << v60);
        }

        else
        {
          v61 = -1;
        }

        v62 = v61 & *(off_27F541CC8 + 8);
        v63 = (v60 + 63) >> 6;
        while (1)
        {
          if (!v62)
          {
            while (1)
            {
              v65 = v57 + 1;
              if (__OFADD__(v57, 1))
              {
                break;
              }

              if (v65 >= v63)
              {

                goto LABEL_95;
              }

              v64 = *&v59[8 * v65];
              ++v57;
              if (v64)
              {
                v57 = v65;
                goto LABEL_85;
              }
            }

            __break(1u);
            goto LABEL_109;
          }

          v64 = v62;
LABEL_85:
          v62 = (v64 - 1) & v64;
          if (v58[2])
          {
            v66 = *(v58[6] + ((v57 << 9) | (8 * __clz(__rbit64(v64)))));
            v67 = sub_252A488EC(v66);
            if (v68)
            {
              v69 = (v58[7] + 16 * v67);
              v70 = *v69 == v54 && v69[1] == v56;
              if (v70 || (sub_252E37DB4() & 1) != 0)
              {
                break;
              }
            }
          }
        }

        if (v66 == v86)
        {
          sub_252E37A94();
          v71 = *(v99 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
LABEL_95:
        }

        v6 = v93;
        v48 = v97;
        v46 = v98;
        v50 = v95;
        v49 = v96;
        if (v8 != v98)
        {
          goto LABEL_69;
        }

LABEL_101:
        v72 = v99;
      }

      else
      {
        v72 = MEMORY[0x277D84F90];
      }

      v73 = v91;
      v74 = *(v91 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states);
      *(v91 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v72;

      v75 = type metadata accessor for HomeAutomationEntityResponse(0);
      v76 = *(v75 + 48);
      v77 = *(v75 + 52);
      swift_allocObject();
      sub_2529605C0(v73);

      MEMORY[0x2530AD700](v78);
      if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v79 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();

      v41 = v88;
      v43 = v94;
      if (v94 == v87)
      {
LABEL_109:
        v84 = v100;
        break;
      }
    }
  }

  return v84;
}

uint64_t sub_252D8E37C(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_68;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
LABEL_3:
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v1 + 32;
    v32 = v2;
    v33 = v1;
    v30 = v1 & 0xFFFFFFFFFFFFFF8;
    v31 = v1 & 0xC000000000000001;
    v29 = v1 + 32;
    while (1)
    {
      if (v4)
      {
        v8 = MEMORY[0x2530ADF00](v3, v1);
        v9 = __OFADD__(v3, 1);
        v10 = v3 + 1;
        if (v9)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_67;
        }

        v7 = *(v6 + 8 * v3);

        v9 = __OFADD__(v3, 1);
        v10 = v3 + 1;
        if (v9)
        {
          goto LABEL_66;
        }
      }

      v34 = v10;
      v35 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      v36 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v11 = (*(*v8 + 152))();
      type metadata accessor for HomeStore();
      v12 = static HomeStore.shared.getter();
      v13 = sub_2529D9884();

      v37 = MEMORY[0x277D84F90];
      if (v13 >> 62)
      {
        break;
      }

      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_9;
      }

LABEL_41:
      v1 = MEMORY[0x277D84F90];
LABEL_42:

      if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
      {
        v23 = sub_252E378C4();
        if (!v23)
        {
LABEL_61:

          return 0;
        }
      }

      else
      {
        v23 = *(v1 + 16);
        if (!v23)
        {
          goto LABEL_61;
        }
      }

      v24 = 0;
      while (v23 != v24)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v24, v1);
          if (__OFADD__(v24, 1))
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v24 >= *(v1 + 16))
          {
            goto LABEL_65;
          }

          v25 = *(v1 + 8 * v24 + 32);

          if (__OFADD__(v24, 1))
          {
            goto LABEL_64;
          }
        }

        v26 = sub_2529A2A0C();
        if (v26 >> 62)
        {
          v27 = sub_252E378C4();
        }

        else
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v24;
        if (!v27)
        {
          goto LABEL_61;
        }
      }

      v1 = v33;
      v3 = v34;
      v5 = v30;
      v4 = v31;
      v6 = v29;
      if (v34 == v32)
      {
        return 1;
      }
    }

    v14 = sub_252E378C4();
    if (!v14)
    {
      goto LABEL_41;
    }

LABEL_9:
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x2530ADF00](v15, v13);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v1 = *(v13 + 8 * v15 + 32);

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          v2 = sub_252E378C4();
          if (!v2)
          {
            return 1;
          }

          goto LABEL_3;
        }
      }

      if (v11)
      {
        v18 = sub_2529A2E84();
        if (!v18)
        {
          goto LABEL_32;
        }

        v19 = v18;

        if ((sub_252E32E54() & 1) == 0 || *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
        {

LABEL_32:

          goto LABEL_11;
        }

        if (*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
        {
        }

        else
        {
          v21 = sub_252E37DB4();

          if ((v21 & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      v22 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v36 && *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v35;
      if (!v22 && (sub_252E37DB4() & 1) == 0)
      {
        goto LABEL_32;
      }

      sub_252E37A94();
      v16 = *(v37 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_11:
      ++v15;
      if (v17 == v14)
      {
        v1 = v37;
        goto LABEL_42;
      }
    }
  }

  return 1;
}

uint64_t sub_252D8E7E8(__int128 *a1)
{
  v55[5] = 0;
  v1 = a1[7];
  v127 = a1[6];
  v128 = v1;
  v129 = a1[8];
  v2 = *(a1 + 19);
  v130 = *(a1 + 18);
  v3 = a1[3];
  v123 = a1[2];
  v124 = v3;
  v4 = a1[5];
  v125 = a1[4];
  v126 = v4;
  v5 = a1[1];
  v121 = *a1;
  v122 = v5;
  v6 = *(a1 + 21);
  v63 = *(a1 + 20);
  v57 = v6;
  v58 = v2;
  v7 = a1[22];
  v118 = a1[21];
  v119 = v7;
  v8 = *(a1 + 47);
  v120 = *(a1 + 46);
  v9 = a1[18];
  v114 = a1[17];
  v115 = v9;
  v10 = a1[20];
  v116 = a1[19];
  v117 = v10;
  v11 = a1[14];
  v110 = a1[13];
  v111 = v11;
  v12 = a1[16];
  v112 = a1[15];
  v113 = v12;
  v13 = a1[12];
  v108 = a1[11];
  v109 = v13;
  v14 = (v8 + 32);
  v15 = a1[28];
  v16 = a1[29];
  v59 = 0x8000000252E679D0;
  v104 = v15;
  v105 = v16;
  v17 = a1[30];
  v62 = 0x8000000252E679B0;
  v106 = v17;
  v18 = *(a1 + 62);
  v61 = 0x8000000252E67980;
  v107 = v18;
  v60 = 0x8000000252E67960;
  v19 = a1[25];
  v100 = a1[24];
  v101 = v19;
  v20 = a1[27];
  v102 = a1[26];
  v103 = v20;
  v56 = v8;
  v21 = *(v8 + 16);
  while (2)
  {
    if (v21)
    {
      switch(*v14)
      {
        case 2:
          goto LABEL_32;
        default:
          v22 = sub_252E37DB4();

          ++v14;
          --v21;
          if ((v22 & 1) == 0)
          {
            continue;
          }

          goto LABEL_46;
      }
    }

    break;
  }

  if (*(v57 + 16))
  {
    type metadata accessor for HomeStore();
    v23 = static HomeStore.shared.getter();
    v71 = v127;
    v72 = v128;
    v73 = v129;
    v67 = v123;
    v68 = v124;
    v69 = v125;
    v70 = v126;
    v65 = v121;
    v66 = v122;
    v74 = v130;
    v75 = v58;
    v76 = v63;
    v77 = v57;
    v88 = v118;
    v89 = v119;
    v84 = v114;
    v85 = v115;
    v86 = v116;
    v87 = v117;
    v80 = v110;
    v81 = v111;
    v82 = v112;
    v83 = v113;
    v78 = v108;
    v79 = v109;
    v90 = v120;
    v91 = v56;
    v96 = v104;
    v97 = v105;
    v98 = v106;
    v99 = v107;
    v92 = v100;
    v93 = v101;
    v94 = v102;
    v95 = v103;
    v24 = sub_252BAC7E4();
    v25 = HomeStore.accessories(matching:supporting:)(v24, 0);
    v27 = v26;

    if (v27)
    {
LABEL_9:
      sub_252929F10(v25, v27 & 1);
      if (qword_27F53F520 != -1)
      {
LABEL_35:
        swift_once();
      }

      v28 = sub_252E36AD4();
      __swift_project_value_buffer(v28, qword_27F544E08);
      v29 = sub_252E36AC4();
      v30 = sub_252E374C4();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_45;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Couldn't get targetedAccessories";
      goto LABEL_44;
    }

    if (!(v25 >> 62))
    {
      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    if (!sub_252E378C4())
    {
      goto LABEL_9;
    }

LABEL_39:
    type metadata accessor for Entity();

    v37 = sub_252E37B14();
    sub_252929F10(v25, 0);
    goto LABEL_17;
  }

  if (*(v58 + 16))
  {
    type metadata accessor for HomeStore();
    v33 = static HomeStore.shared.getter();
    v71 = v127;
    v72 = v128;
    v73 = v129;
    v67 = v123;
    v68 = v124;
    v69 = v125;
    v70 = v126;
    v65 = v121;
    v66 = v122;
    v74 = v130;
    v75 = v58;
    v76 = v63;
    v77 = v57;
    v88 = v118;
    v89 = v119;
    v84 = v114;
    v85 = v115;
    v86 = v116;
    v87 = v117;
    v80 = v110;
    v81 = v111;
    v82 = v112;
    v83 = v113;
    v78 = v108;
    v79 = v109;
    v90 = v120;
    v91 = v56;
    v96 = v104;
    v97 = v105;
    v98 = v106;
    v99 = v107;
    v92 = v100;
    v93 = v101;
    v94 = v102;
    v95 = v103;
    v34 = sub_252BAC7E4();
    v25 = HomeStore.services(matching:supporting:)(v34, 0);
    v36 = v35;

    if ((v36 & 1) == 0)
    {
      if (v25 >> 62)
      {
        if (sub_252E378C4())
        {
          goto LABEL_39;
        }
      }

      else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_16:

        sub_252E37DD4();
        type metadata accessor for Entity();
        v37 = v25;
LABEL_17:
        sub_252929F10(v25, 0);
        v38 = sub_252D8E37C(v37);

        v39 = v38 ^ 1;
        return v39 & 1;
      }
    }

    sub_252929F10(v25, v36 & 1);
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v51 = sub_252E36AD4();
    __swift_project_value_buffer(v51, qword_27F544E08);
    v29 = sub_252E36AC4();
    v30 = sub_252E374C4();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_45;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Couldn't get targetedServices";
LABEL_44:
    _os_log_impl(&dword_252917000, v29, v30, v32, v31, 2u);
    MEMORY[0x2530AED00](v31, -1, -1);
LABEL_45:

    goto LABEL_46;
  }

  if (!*(v63 + 16))
  {
    goto LABEL_46;
  }

  type metadata accessor for HomeStore();
  v40 = static HomeStore.shared.getter();
  v41 = sub_2529D9D18();

  v64 = MEMORY[0x277D84F90];
  if (v41 >> 62)
  {
    v42 = sub_252E378C4();
    if (v42)
    {
      goto LABEL_21;
    }

LABEL_49:
    v50 = MEMORY[0x277D84F90];
LABEL_50:

    if ((v50 & 0x8000000000000000) != 0 || (v50 & 0x4000000000000000) != 0)
    {
      type metadata accessor for Entity();

      v53 = sub_252E37B14();
    }

    else
    {

      sub_252E37DD4();
      type metadata accessor for Entity();
      v53 = v50;
    }

    v54 = sub_252D8E37C(v53);

    v39 = v54 ^ 1;
    return v39 & 1;
  }

  v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
    goto LABEL_49;
  }

LABEL_21:
  v43 = 0;
  v61 = v41 & 0xFFFFFFFFFFFFFF8;
  v62 = v41 & 0xC000000000000001;
  while (v62)
  {
    v45 = MEMORY[0x2530ADF00](v43, v41);
    v44 = v45;
    v46 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_31;
    }

LABEL_27:
    v47 = *(v44 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    *&v65 = *(v44 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    *(&v65 + 1) = v47;
    MEMORY[0x28223BE20](v45);
    v55[2] = &v65;

    v48 = sub_2529ED970(sub_25296A69C, v55, v63);

    if (v48)
    {
      sub_252E37A94();
      v49 = *(v64 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

    ++v43;
    if (v46 == v42)
    {
      v50 = v64;
      goto LABEL_50;
    }
  }

  if (v43 >= *(v61 + 16))
  {
    __break(1u);
    goto LABEL_35;
  }

  v44 = *(v41 + 8 * v43 + 32);

  v46 = v43 + 1;
  if (!__OFADD__(v43, 1))
  {
    goto LABEL_27;
  }

LABEL_31:
  __break(1u);
LABEL_32:

LABEL_46:
  v39 = 1;
  return v39 & 1;
}

id sub_252D8F118(void *a1, unsigned __int8 a2, double a3)
{
  v6 = [a1 userTask];
  if (!v6 || (v7 = v6, v8 = [v6 value], v7, !v8))
  {
    if (qword_27F53F498 != -1)
    {
      goto LABEL_164;
    }

    goto LABEL_14;
  }

  [v8 doubleValue];
  v10 = v9;

  if (sub_252C6E240(a1) != 3)
  {
    v10 = round((v10 + -32.0) * 5.0 / 9.0 * 100.0) / 100.0;
  }

  v11 = [a1 userTask];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 attribute];

    v15 = v10 < a3 && v13 == 6;
    v109 = v15;
  }

  else
  {
    sub_252C515AC();
    v109 = 0;
  }

  v18 = [a1 userTask];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 attribute];

    v22 = v10 > a3 && v20 == 6;
    v108 = v22;
  }

  else
  {
    sub_252C515AC();
    v108 = 0;
  }

  v23 = sub_252B680FC();
  swift_beginAccess();
  v24 = *(v23 + 16);

  v25 = *(v24 + 16);
  if (!v25)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_44:

    v41 = sub_2529A6C88(16, v28);

    if (v41)
    {
      v42 = sub_252B680FC();
      swift_beginAccess();
      v43 = *(v42 + 16);

      v44 = *(v43 + 16);
      if (v44)
      {
        v45 = 0;
        v46 = (v43 + 32);
        v47 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v45 >= *(v43 + 16))
          {
            goto LABEL_151;
          }

          memcpy(__dst, v46, sizeof(__dst));
          sub_252A15750();
          v49 = *(v48 + 16);
          v50 = *(v47 + 2);
          v51 = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            goto LABEL_152;
          }

          v52 = v48;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && (v54 = *(v47 + 3) >> 1, v54 >= v51))
          {
            if (!*(v52 + 16))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v50 <= v51)
            {
              v55 = v50 + v49;
            }

            else
            {
              v55 = v50;
            }

            v47 = sub_2529F7F60(isUniquelyReferenced_nonNull_native, v55, 1, v47);
            v54 = *(v47 + 3) >> 1;
            if (!*(v52 + 16))
            {
LABEL_47:

              if (v49)
              {
                goto LABEL_153;
              }

              goto LABEL_48;
            }
          }

          v56 = *(v47 + 2);
          if (v54 - v56 < v49)
          {
            goto LABEL_159;
          }

          memcpy(&v47[v56 + 32], (v52 + 32), v49);

          if (v49)
          {
            v57 = *(v47 + 2);
            v39 = __OFADD__(v57, v49);
            v58 = v57 + v49;
            if (v39)
            {
              goto LABEL_162;
            }

            *(v47 + 2) = v58;
          }

LABEL_48:
          ++v45;
          v46 += 504;
          if (v44 == v45)
          {
            goto LABEL_64;
          }
        }
      }

      v47 = MEMORY[0x277D84F90];
LABEL_64:

      v59 = sub_2529A6C88(27, v47);

      if (!v59 && v109 && !v108)
      {
        a2 = 4;
LABEL_108:
        v96 = 1701736302;
LABEL_115:
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v98 = sub_252E36AD4();
        __swift_project_value_buffer(v98, qword_27F544C70);
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_252E379F4();

        __dst[0] = 0xD000000000000017;
        __dst[1] = 0x8000000252E9A9A0;
        v99 = a2;
        v100 = 0xE400000000000000;
        v101 = 1952540008;
        v102 = 1819242339;
        if (a2 != 4)
        {
          v102 = 1869903201;
        }

        if (a2 != 3)
        {
          v101 = v102;
        }

        v103 = 0xE300000000000000;
        v104 = 6710895;
        if (a2 != 1)
        {
          v104 = 28271;
          v103 = 0xE200000000000000;
        }

        if (a2)
        {
          v100 = v103;
        }

        else
        {
          v104 = 1701736302;
        }

        if (a2 <= 2u)
        {
          v105 = v104;
        }

        else
        {
          v105 = v101;
        }

        if (a2 <= 2u)
        {
          v106 = v100;
        }

        else
        {
          v106 = 0xE400000000000000;
        }

        MEMORY[0x2530AD570](v105, v106);

        sub_252CC3D90(__dst[0], __dst[1], 0xD0000000000000A7, 0x8000000252E9A770);

        if (v99 > 2)
        {
          v107 = 0xE400000000000000;
          if (v99 == 3)
          {
            v96 = 1952540008;
          }

          else if (v99 == 4)
          {
            v96 = 1819242339;
          }

          else
          {
            v96 = 1869903201;
          }
        }

        else if (v99)
        {
          if (v99 == 1)
          {
            v107 = 0xE300000000000000;
            v96 = 6710895;
          }

          else
          {
            v107 = 0xE200000000000000;
            v96 = 28271;
          }
        }

        else
        {
          v107 = 0xE400000000000000;
        }

        type metadata accessor for HomeAttributeValue();
        return HomeAttributeValue.__allocating_init(stringValue:unit:)(v96, v107, 0);
      }
    }

    v60 = sub_252B680FC();
    swift_beginAccess();
    v61 = *(v60 + 16);

    v62 = *(v61 + 16);
    if (v62)
    {
      v63 = 0;
      v64 = (v61 + 32);
      v65 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v63 >= *(v61 + 16))
        {
          goto LABEL_147;
        }

        memcpy(__dst, v64, sizeof(__dst));
        sub_252A15750();
        v67 = *(v66 + 16);
        v68 = *(v65 + 2);
        v69 = v68 + v67;
        if (__OFADD__(v68, v67))
        {
          goto LABEL_148;
        }

        v70 = v66;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        if (v71 && (v72 = *(v65 + 3) >> 1, v72 >= v69))
        {
          if (!*(v70 + 16))
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v68 <= v69)
          {
            v73 = v68 + v67;
          }

          else
          {
            v73 = v68;
          }

          v65 = sub_2529F7F60(v71, v73, 1, v65);
          v72 = *(v65 + 3) >> 1;
          if (!*(v70 + 16))
          {
LABEL_67:

            if (v67)
            {
              goto LABEL_149;
            }

            goto LABEL_68;
          }
        }

        v74 = *(v65 + 2);
        if (v72 - v74 < v67)
        {
          goto LABEL_154;
        }

        memcpy(&v65[v74 + 32], (v70 + 32), v67);

        if (v67)
        {
          v75 = *(v65 + 2);
          v39 = __OFADD__(v75, v67);
          v76 = v75 + v67;
          if (v39)
          {
            goto LABEL_160;
          }

          *(v65 + 2) = v76;
        }

LABEL_68:
        ++v63;
        v64 += 504;
        if (v62 == v63)
        {
          goto LABEL_84;
        }
      }
    }

    v65 = MEMORY[0x277D84F90];
LABEL_84:

    v77 = sub_2529A6C88(27, v65);

    if (v77)
    {
      v78 = sub_252B680FC();
      swift_beginAccess();
      v79 = *(v78 + 16);

      v80 = *(v79 + 16);
      if (v80)
      {
        v81 = 0;
        v82 = (v79 + 32);
        v83 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v81 >= *(v79 + 16))
          {
            goto LABEL_156;
          }

          memcpy(__dst, v82, sizeof(__dst));
          sub_252A15750();
          v85 = *(v84 + 16);
          v86 = *(v83 + 2);
          v87 = v86 + v85;
          if (__OFADD__(v86, v85))
          {
            goto LABEL_157;
          }

          v88 = v84;
          v89 = swift_isUniquelyReferenced_nonNull_native();
          if (v89 && (v90 = *(v83 + 3) >> 1, v90 >= v87))
          {
            if (!*(v88 + 16))
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v86 <= v87)
            {
              v91 = v86 + v85;
            }

            else
            {
              v91 = v86;
            }

            v83 = sub_2529F7F60(v89, v91, 1, v83);
            v90 = *(v83 + 3) >> 1;
            if (!*(v88 + 16))
            {
LABEL_87:

              if (v85)
              {
                goto LABEL_158;
              }

              goto LABEL_88;
            }
          }

          v92 = *(v83 + 2);
          if (v90 - v92 < v85)
          {
            goto LABEL_161;
          }

          memcpy(&v83[v92 + 32], (v88 + 32), v85);

          if (v85)
          {
            v93 = *(v83 + 2);
            v39 = __OFADD__(v93, v85);
            v94 = v93 + v85;
            if (v39)
            {
              goto LABEL_163;
            }

            *(v83 + 2) = v94;
          }

LABEL_88:
          ++v81;
          v82 += 504;
          if (v80 == v81)
          {
            goto LABEL_105;
          }
        }
      }

      v83 = MEMORY[0x277D84F90];
LABEL_105:

      v95 = sub_2529A6C88(16, v83);

      if (!v95 && !v109 && v108)
      {
        a2 = 3;
        goto LABEL_108;
      }
    }

    if (a2 > 2u)
    {
      v96 = 1701736302;
    }

    else
    {
      v96 = 1701736302;
      if (a2 == 1)
      {

        goto LABEL_114;
      }
    }

    v97 = sub_252E37DB4();

    if ((v97 & 1) == 0)
    {
      goto LABEL_115;
    }

LABEL_114:
    a2 = 5;
    goto LABEL_115;
  }

  v26 = 0;
  v27 = (v24 + 32);
  v28 = MEMORY[0x277D84F90];
  while (v26 < *(v24 + 16))
  {
    memcpy(__dst, v27, sizeof(__dst));
    sub_252A15750();
    v30 = *(v29 + 16);
    v31 = *(v28 + 2);
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      goto LABEL_145;
    }

    v33 = v29;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    if (v34 && (v35 = *(v28 + 3) >> 1, v35 >= v32))
    {
      if (!*(v33 + 16))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v31 <= v32)
      {
        v36 = v31 + v30;
      }

      else
      {
        v36 = v31;
      }

      v28 = sub_2529F7F60(v34, v36, 1, v28);
      v35 = *(v28 + 3) >> 1;
      if (!*(v33 + 16))
      {
LABEL_27:

        if (v30)
        {
          goto LABEL_146;
        }

        goto LABEL_28;
      }
    }

    v37 = *(v28 + 2);
    if (v35 - v37 < v30)
    {
      goto LABEL_150;
    }

    memcpy(&v28[v37 + 32], (v33 + 32), v30);

    if (v30)
    {
      v38 = *(v28 + 2);
      v39 = __OFADD__(v38, v30);
      v40 = v38 + v30;
      if (v39)
      {
        goto LABEL_155;
      }

      *(v28 + 2) = v40;
    }

LABEL_28:
    ++v26;
    v27 += 504;
    if (v25 == v26)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  swift_once();
LABEL_14:
  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544C70);
  sub_252CC4050(0xD00000000000003CLL, 0x8000000252E9A8F0, 0xD0000000000000A7, 0x8000000252E9A770, 0xD00000000000003FLL, 0x8000000252E9A9C0, 41);
  return 0;
}

id sub_252D8FBC4(void *a1, void *a2, uint64_t a3, int a4, uint64_t a5, int a6, double a7)
{
  v115 = a2;
  v13 = sub_252E36AD4();
  v116 = *(v13 - 8);
  v14 = *(v116 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 userTask];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 value];

    if (v19)
    {
      v108 = v16;
      [v19 doubleValue];
      v21 = v20;

      if (sub_252C6E240(a1) != 3)
      {
        v21 = round((v21 + -32.0) * 5.0 / 9.0 * 100.0) / 100.0;
      }

      v113 = a6;
      v114 = a4;
      v109 = a3;
      v110 = a5;
      v105 = type metadata accessor for HomeAttributeValue();
      v22 = objc_allocWithZone(v105);
      v23 = sub_252E36F04();
      v24 = [v22 initWithIdentifier:0 displayString:v23];

      v25 = v24;
      [v25 setDoubleValue_];
      [v25 setUnit_];
      [v25 setType_];

      v111 = v25;
      v26 = v25;
      [v26 doubleValue];
      v28 = v27;
      [v26 doubleValue];
      v30 = v29;
      v106 = v26;

      v31 = a7 > 28.0 || a7 < 15.0;
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v32 = __swift_project_value_buffer(v13, qword_27F544C70);
      v119 = 0;
      v120 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000046, 0x8000000252E9A690);
      sub_252E37374();
      MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E9A6E0);
      v33 = 1702195828;
      if (v28 > 28.0)
      {
        v34 = 1702195828;
      }

      else
      {
        v34 = 0x65736C6166;
      }

      if (v28 > 28.0)
      {
        v35 = 0xE400000000000000;
      }

      else
      {
        v35 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v34, v35);

      MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E9A710);
      if (v30 < 15.0)
      {
        v36 = 1702195828;
      }

      else
      {
        v36 = 0x65736C6166;
      }

      if (v30 < 15.0)
      {
        v37 = 0xE400000000000000;
      }

      else
      {
        v37 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v36, v37);

      MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E9A740);
      v107 = v31;
      if (v31)
      {
        v33 = 0x65736C6166;
        v38 = 0xE500000000000000;
      }

      else
      {
        v38 = 0xE400000000000000;
      }

      MEMORY[0x2530AD570](v33, v38);

      MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
      v112 = "TemperatureInNormalRange ";
      sub_252CC3D90(v119, v120, 0xD0000000000000A7, 0x8000000252E9A770);

      v39 = *(v116 + 16);
      v40 = v108;
      v104[1] = v32;
      v41 = v32;
      v42 = v13;
      v39(v108, v41, v13);
      v119 = 0;
      v120 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E9A820);
      v43 = sub_252E37364();
      MEMORY[0x2530AD570](v43);

      MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E9A860);
      v44 = 0;
      v45 = 0;
      v46 = v110;
      if ((v113 & 1) == 0)
      {
        v44 = sub_252E37364();
      }

      v117 = v44;
      v118 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      v47 = sub_252E36F94();
      MEMORY[0x2530AD570](v47);

      MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E9A880);
      if (v114)
      {
        v48 = 0;
        v49 = 0;
        v50 = v109;
      }

      else
      {
        v50 = v109;
        v48 = sub_252E37364();
      }

      v117 = v48;
      v118 = v49;
      v52 = sub_252E36F94();
      MEMORY[0x2530AD570](v52);

      MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E9A8A0);
      MEMORY[0x2530AD570](v33, v38);

      MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E9A8D0);
      v53 = v115;
      v117 = v115;
      v54 = v115;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
      v55 = sub_252E36F94();
      MEMORY[0x2530AD570](v55);

      MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
      sub_252CC3D90(v119, v120, 0xD0000000000000A7, v112 | 0x8000000000000000);

      (*(v116 + 8))(v40, v42);
      if (v53)
      {
        v56 = [v54 stringValue];
        if (v56)
        {
          v57 = v56;
          v58 = sub_252E36F34();
          v60 = v59;

          if (v58 == 1869903201 && v60 == 0xE400000000000000)
          {

            result = v111;
            v61 = v107;
            if (v114)
            {
              return result;
            }

            goto LABEL_41;
          }

          v62 = sub_252E37DB4();

          v61 = v107;
          if (v62)
          {
            result = v111;
            if (v114)
            {
              return result;
            }

LABEL_41:
            if (v113)
            {
              return result;
            }

            v63 = *&v50;
            v64 = v28 <= 28.0;
            v65 = v30 < 15.0;
            v66 = *&v46;
            if (v65)
            {
              v64 = 0;
            }

            if (!v64 && !v61 && *&v46 != *&v50)
            {
              if (v28 > 28.0)
              {
                v67 = v21;
              }

              else
              {
                v67 = *&v50;
              }

              if (v28 > 28.0)
              {
                v21 = *&v46;
              }

              v68 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
              v69 = sub_252E36F04();
              v70 = [v68 initWithIdentifier:0 displayString:v69];

              v71 = v70;
              [v71 setLowerValue_];
              [v71 setUpperValue_];

              v72 = objc_allocWithZone(v105);
              v73 = sub_252E36F04();
              v74 = [v72 initWithIdentifier:0 displayString:v73];

              v75 = v74;
              [v75 setType_];
              v76 = v71;
              [v75 setRangeValue_];

              v77 = v75;
              v78 = sub_252E36AC4();
              v79 = sub_252E374C4();

              if (os_log_type_enabled(v78, v79))
              {
                v80 = swift_slowAlloc();
                v81 = swift_slowAlloc();
                v119 = v81;
                *v80 = 136315138;
                v117 = v75;
                v82 = sub_252E37714();
                v84 = sub_252BE2CE0(v82, v83, &v119);

                *(v80 + 4) = v84;
                _os_log_impl(&dword_252917000, v78, v79, "Setting targetTemperature to away temperature %s", v80, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v81);
                MEMORY[0x2530AED00](v81, -1, -1);
                MEMORY[0x2530AED00](v80, -1, -1);
              }

              return v75;
            }

            sub_252D908D8(16, 0x1Bu);
            if ((v85 & 1) == 0)
            {
              sub_252D908D8(27, 0x10u);
              if ((v87 & 1) == 0)
              {
                v94 = sub_25298AB8C(v50, 0, v46, 0, a7, v21);

                return v94;
              }

              if (*&v50 - *&v46 <= 3.0)
              {
                v88 = *&v50 - *&v46 + v21;
              }

              else
              {
                v88 = v21 + 3.0;
              }

              if (v88 > *&v50)
              {
                v63 = v88;
              }

              v119 = 0;
              v120 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E6D330);
              v95 = sub_252E37364();
              MEMORY[0x2530AD570](v95);

              sub_252CC3D90(v119, v120, 0xD0000000000000A7, v112 | 0x8000000000000000);

              v96 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
              v97 = sub_252E36F04();
              v98 = [v96 initWithIdentifier:0 displayString:v97];

              v93 = v98;
              [v93 setLowerValue_];
              [v93 setUpperValue_];
              goto LABEL_71;
            }

            v86 = *&v50 - *&v46;
            if (*&v50 - *&v46 <= 3.0)
            {
              if (v21 - v86 >= *&v46)
              {
LABEL_65:
                v119 = 0;
                v120 = 0xE000000000000000;
                sub_252E379F4();
                MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E6D330);
                v89 = sub_252E37364();
                MEMORY[0x2530AD570](v89);

                sub_252CC3D90(v119, v120, 0xD0000000000000A7, v112 | 0x8000000000000000);

                v90 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
                v91 = sub_252E36F04();
                v92 = [v90 initWithIdentifier:0 displayString:v91];

                v93 = v92;
                [v93 setLowerValue_];
                [v93 setUpperValue_];
LABEL_71:

                v99 = objc_allocWithZone(v105);
                v100 = sub_252E36F04();
                v101 = [v99 initWithIdentifier:0 displayString:v100];

                v102 = v101;
                [v102 setType_];
                v103 = v93;
                [v102 setRangeValue_];

                return v102;
              }
            }

            else
            {
              v86 = 3.0;
              if (v21 + -3.0 >= *&v46)
              {
                goto LABEL_65;
              }
            }

            v66 = v21 - v86;
            goto LABEL_65;
          }
        }
      }

      return v111;
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v13, qword_27F544C70);
  sub_252CC4050(0xD00000000000003CLL, 0x8000000252E9A8F0, 0xD0000000000000A7, 0x8000000252E9A770, 0xD000000000000069, 0x8000000252E9A930, 81);
  return 0;
}

uint64_t sub_252D908A8()
{
  type metadata accessor for SetSingleClimateControlAppIntentHandleDelegate();

  return swift_allocObject();
}

void sub_252D908D8(uint64_t a1, unsigned int a2)
{
  v3 = sub_252B680FC();
  swift_beginAccess();
  v4 = *(v3 + 16);

  v5 = *(v4 + 16);
  if (!v5)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_20:

    v21 = sub_2529A6C88(a1, v8);

    if (!v21)
    {
      return;
    }

    v22 = sub_252B680FC();
    swift_beginAccess();
    v23 = *(v22 + 16);

    v24 = *(v23 + 16);
    if (!v24)
    {
      v27 = MEMORY[0x277D84F90];
LABEL_41:

      sub_2529A6C88(a2, v27);

      return;
    }

    v25 = 0;
    v26 = (v23 + 32);
    v27 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v25 >= *(v23 + 16))
      {
        goto LABEL_46;
      }

      memcpy(__dst, v26, sizeof(__dst));
      sub_252A15750();
      v29 = *(v28 + 16);
      v30 = *(v27 + 2);
      v31 = v30 + v29;
      if (__OFADD__(v30, v29))
      {
        goto LABEL_47;
      }

      v32 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v34 = *(v27 + 3) >> 1, v34 >= v31))
      {
        if (!*(v32 + 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v30 <= v31)
        {
          v35 = v30 + v29;
        }

        else
        {
          v35 = v30;
        }

        v27 = sub_2529F7F60(isUniquelyReferenced_nonNull_native, v35, 1, v27);
        v34 = *(v27 + 3) >> 1;
        if (!*(v32 + 16))
        {
LABEL_23:

          if (v29)
          {
            goto LABEL_48;
          }

          goto LABEL_24;
        }
      }

      v36 = *(v27 + 2);
      if (v34 - v36 < v29)
      {
        goto LABEL_50;
      }

      memcpy(&v27[v36 + 32], (v32 + 32), v29);

      if (v29)
      {
        v37 = *(v27 + 2);
        v19 = __OFADD__(v37, v29);
        v38 = v37 + v29;
        if (v19)
        {
          goto LABEL_51;
        }

        *(v27 + 2) = v38;
      }

LABEL_24:
      ++v25;
      v26 += 504;
      if (v24 == v25)
      {
        goto LABEL_41;
      }
    }
  }

  v6 = 0;
  v7 = (v4 + 32);
  v8 = MEMORY[0x277D84F90];
  while (v6 < *(v4 + 16))
  {
    memcpy(__dst, v7, sizeof(__dst));
    sub_252A15750();
    v10 = *(v9 + 16);
    v11 = *(v8 + 2);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      goto LABEL_43;
    }

    v13 = v9;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    if (v14 && (v15 = *(v8 + 3) >> 1, v15 >= v12))
    {
      if (!*(v13 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v16 = v11 + v10;
      }

      else
      {
        v16 = v11;
      }

      v8 = sub_2529F7F60(v14, v16, 1, v8);
      v15 = *(v8 + 3) >> 1;
      if (!*(v13 + 16))
      {
LABEL_3:

        if (v10)
        {
          goto LABEL_44;
        }

        goto LABEL_4;
      }
    }

    v17 = *(v8 + 2);
    if (v15 - v17 < v10)
    {
      goto LABEL_45;
    }

    memcpy(&v8[v17 + 32], (v13 + 32), v10);

    if (v10)
    {
      v18 = *(v8 + 2);
      v19 = __OFADD__(v18, v10);
      v20 = v18 + v10;
      if (v19)
      {
        goto LABEL_49;
      }

      *(v8 + 2) = v20;
    }

LABEL_4:
    ++v6;
    v7 += 504;
    if (v5 == v6)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_252D90C4C()
{
  type metadata accessor for SetSingleTemperatureValueHandleDelegate();

  return swift_allocObject();
}

void sub_252D90C7C(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  sub_252B680FC();
  v119 = a5;
  sub_252B66C78(a5, a6, 0, __dst);

  if (!*&__dst[24])
  {
    sub_25293847C(__dst, &qword_27F541E80, &qword_252E3DFA0);
    return;
  }

  if (swift_dynamicCast())
  {
    v117 = a1;
    v118 = v121;
    v12 = [a2 userTask];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 attribute];

      if (v14 == 6)
      {
        if (a4)
        {
          v15 = 0.0;
        }

        else
        {
          v15 = *&a3;
        }

        v16 = COERCE_DOUBLE(sub_252C4D57C());
        if (v17)
        {
          v16 = 0.0;
        }

        HIDWORD(v116) = v16 < v15;
LABEL_14:
        v18 = [a2 userTask];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 attribute];

          if (v20 == 6)
          {
            if (a4)
            {
              v21 = 0.0;
            }

            else
            {
              v21 = *&a3;
            }

            v22 = COERCE_DOUBLE(sub_252C4D57C());
            if (v23)
            {
              v22 = 0.0;
            }

            LODWORD(v116) = v21 < v22;
LABEL_24:
            v24 = sub_252B680FC();
            swift_beginAccess();
            v25 = *(v24 + 16);

            v26 = *(v25 + 16);
            if (v26)
            {
              v27 = 0;
              v28 = (v25 + 32);
              v29 = MEMORY[0x277D84F90];
              while (1)
              {
                if (v27 >= *(v25 + 16))
                {
                  __break(1u);
LABEL_137:
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
LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
LABEL_146:
                  __break(1u);
LABEL_147:
                  __break(1u);
LABEL_148:
                  __break(1u);
LABEL_149:
                  __break(1u);
LABEL_150:
                  __break(1u);
LABEL_151:
                  __break(1u);
LABEL_152:
                  __break(1u);
LABEL_153:
                  __break(1u);
LABEL_154:
                  __break(1u);
LABEL_155:
                  __break(1u);
                  return;
                }

                memcpy(__dst, v28, sizeof(__dst));
                sub_252A15750();
                v31 = *(v30 + 16);
                v32 = *(v29 + 2);
                v33 = v32 + v31;
                if (__OFADD__(v32, v31))
                {
                  goto LABEL_137;
                }

                v34 = v30;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if (isUniquelyReferenced_nonNull_native && (v36 = *(v29 + 3) >> 1, v36 >= v33))
                {
                  if (!*(v34 + 16))
                  {
                    goto LABEL_26;
                  }
                }

                else
                {
                  if (v32 <= v33)
                  {
                    v37 = v32 + v31;
                  }

                  else
                  {
                    v37 = v32;
                  }

                  v29 = sub_2529F7F60(isUniquelyReferenced_nonNull_native, v37, 1, v29);
                  v36 = *(v29 + 3) >> 1;
                  if (!*(v34 + 16))
                  {
LABEL_26:

                    if (v31)
                    {
                      goto LABEL_138;
                    }

                    goto LABEL_27;
                  }
                }

                v38 = *(v29 + 2);
                if (v36 - v38 < v31)
                {
                  goto LABEL_142;
                }

                memcpy(&v29[v38 + 32], (v34 + 32), v31);

                if (v31)
                {
                  v39 = *(v29 + 2);
                  v40 = __OFADD__(v39, v31);
                  v41 = v39 + v31;
                  if (v40)
                  {
                    goto LABEL_150;
                  }

                  *(v29 + 2) = v41;
                }

LABEL_27:
                ++v27;
                v28 += 504;
                if (v26 == v27)
                {
                  goto LABEL_43;
                }
              }
            }

            v29 = MEMORY[0x277D84F90];
LABEL_43:

            v42 = sub_2529A6C88(16, v29);

            if (v42)
            {
              v43 = sub_252B680FC();
              swift_beginAccess();
              v44 = *(v43 + 16);

              v45 = *(v44 + 16);
              if (v45)
              {
                v46 = 0;
                v47 = (v44 + 32);
                v48 = MEMORY[0x277D84F90];
                while (1)
                {
                  if (v46 >= *(v44 + 16))
                  {
                    goto LABEL_144;
                  }

                  memcpy(__dst, v47, sizeof(__dst));
                  sub_252A15750();
                  v50 = *(v49 + 16);
                  v51 = *(v48 + 2);
                  v52 = v51 + v50;
                  if (__OFADD__(v51, v50))
                  {
                    goto LABEL_145;
                  }

                  v53 = v49;
                  v54 = swift_isUniquelyReferenced_nonNull_native();
                  if (v54 && (v55 = *(v48 + 3) >> 1, v55 >= v52))
                  {
                    if (!*(v53 + 16))
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    if (v51 <= v52)
                    {
                      v56 = v51 + v50;
                    }

                    else
                    {
                      v56 = v51;
                    }

                    v48 = sub_2529F7F60(v54, v56, 1, v48);
                    v55 = *(v48 + 3) >> 1;
                    if (!*(v53 + 16))
                    {
LABEL_46:

                      if (v50)
                      {
                        goto LABEL_146;
                      }

                      goto LABEL_47;
                    }
                  }

                  v57 = *(v48 + 2);
                  if (v55 - v57 < v50)
                  {
                    goto LABEL_152;
                  }

                  memcpy(&v48[v57 + 32], (v53 + 32), v50);

                  if (v50)
                  {
                    v58 = *(v48 + 2);
                    v40 = __OFADD__(v58, v50);
                    v59 = v58 + v50;
                    if (v40)
                    {
                      goto LABEL_154;
                    }

                    *(v48 + 2) = v59;
                  }

LABEL_47:
                  ++v46;
                  v47 += 504;
                  if (v45 == v46)
                  {
                    goto LABEL_63;
                  }
                }
              }

              v48 = MEMORY[0x277D84F90];
LABEL_63:

              v60 = sub_2529A6C88(27, v48);

              if (!v60)
              {
                if (v118 > 5)
                {
                }

                else
                {
                  v61 = sub_252E37DB4();

                  if (!(v61 & 1 | ((v116 & 0x100000000) == 0) | v116 & 1))
                  {
                    v62 = v117;
                    if (v117 == 15)
                    {
                      v63 = 0x5455415F4C4F4F43;
                    }

                    else
                    {
                      v63 = 1280266051;
                    }

                    if (v117 == 15)
                    {
                      v64 = 0xE90000000000004FLL;
                    }

                    else
                    {
                      v64 = 0xE400000000000000;
                    }

                    sub_252B680FC();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
                    v65 = swift_allocObject();
                    *(v65 + 16) = xmmword_252E3C290;
                    *(v65 + 32) = v119;
                    v66 = v65 + 32;
                    *(v65 + 40) = a6;
                    *&__dst[24] = &type metadata for ClimateModes;
                    v67 = 6;
LABEL_134:
                    __dst[0] = v67;

                    sub_252B689F8(v65, __dst);
                    swift_setDeallocating();
                    sub_25293847C(v66, &unk_27F541300, &qword_252E3C100);
                    swift_deallocClassInstance();

                    sub_25293847C(__dst, &qword_27F541E80, &qword_252E3DFA0);
                    type metadata accessor for HomeAttributeValue();
                    v107 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v63, v64, 0);
                    v113 = objc_allocWithZone(type metadata accessor for HomeUserTask());
                    v114 = sub_252E36F04();
                    v115 = [v113 initWithIdentifier:0 displayString:v114];

                    v111 = v115;
                    [v111 setTaskType_];
                    [v111 setAttribute_];
                    goto LABEL_135;
                  }
                }
              }
            }

            v68 = sub_252B680FC();
            swift_beginAccess();
            v69 = *(v68 + 16);

            v70 = *(v69 + 16);
            if (v70)
            {
              v71 = 0;
              v72 = (v69 + 32);
              v73 = MEMORY[0x277D84F90];
              while (1)
              {
                if (v71 >= *(v69 + 16))
                {
                  goto LABEL_139;
                }

                memcpy(__dst, v72, sizeof(__dst));
                sub_252A15750();
                v75 = *(v74 + 16);
                v76 = *(v73 + 2);
                v77 = v76 + v75;
                if (__OFADD__(v76, v75))
                {
                  goto LABEL_140;
                }

                v78 = v74;
                v79 = swift_isUniquelyReferenced_nonNull_native();
                if (v79 && (v80 = *(v73 + 3) >> 1, v80 >= v77))
                {
                  if (!*(v78 + 16))
                  {
                    goto LABEL_76;
                  }
                }

                else
                {
                  if (v76 <= v77)
                  {
                    v81 = v76 + v75;
                  }

                  else
                  {
                    v81 = v76;
                  }

                  v73 = sub_2529F7F60(v79, v81, 1, v73);
                  v80 = *(v73 + 3) >> 1;
                  if (!*(v78 + 16))
                  {
LABEL_76:

                    if (v75)
                    {
                      goto LABEL_141;
                    }

                    goto LABEL_77;
                  }
                }

                v82 = *(v73 + 2);
                if (v80 - v82 < v75)
                {
                  goto LABEL_143;
                }

                memcpy(&v73[v82 + 32], (v78 + 32), v75);

                if (v75)
                {
                  v83 = *(v73 + 2);
                  v40 = __OFADD__(v83, v75);
                  v84 = v83 + v75;
                  if (v40)
                  {
                    goto LABEL_151;
                  }

                  *(v73 + 2) = v84;
                }

LABEL_77:
                ++v71;
                v72 += 504;
                if (v70 == v71)
                {
                  goto LABEL_93;
                }
              }
            }

            v73 = MEMORY[0x277D84F90];
LABEL_93:

            v85 = sub_2529A6C88(27, v73);

            if (v85)
            {
              v86 = sub_252B680FC();
              swift_beginAccess();
              v87 = *(v86 + 16);

              v88 = *(v87 + 16);
              if (v88)
              {
                v89 = 0;
                v90 = (v87 + 32);
                v91 = MEMORY[0x277D84F90];
                while (1)
                {
                  if (v89 >= *(v87 + 16))
                  {
                    goto LABEL_147;
                  }

                  memcpy(__dst, v90, sizeof(__dst));
                  sub_252A15750();
                  v93 = *(v92 + 16);
                  v94 = *(v91 + 2);
                  v95 = v94 + v93;
                  if (__OFADD__(v94, v93))
                  {
                    goto LABEL_148;
                  }

                  v96 = v92;
                  v97 = swift_isUniquelyReferenced_nonNull_native();
                  if (v97 && (v98 = *(v91 + 3) >> 1, v98 >= v95))
                  {
                    if (!*(v96 + 16))
                    {
                      goto LABEL_96;
                    }
                  }

                  else
                  {
                    if (v94 <= v95)
                    {
                      v99 = v94 + v93;
                    }

                    else
                    {
                      v99 = v94;
                    }

                    v91 = sub_2529F7F60(v97, v99, 1, v91);
                    v98 = *(v91 + 3) >> 1;
                    if (!*(v96 + 16))
                    {
LABEL_96:

                      if (v93)
                      {
                        goto LABEL_149;
                      }

                      goto LABEL_97;
                    }
                  }

                  v100 = *(v91 + 2);
                  if (v98 - v100 < v93)
                  {
                    goto LABEL_153;
                  }

                  memcpy(&v91[v100 + 32], (v96 + 32), v93);

                  if (v93)
                  {
                    v101 = *(v91 + 2);
                    v40 = __OFADD__(v101, v93);
                    v102 = v101 + v93;
                    if (v40)
                    {
                      goto LABEL_155;
                    }

                    *(v91 + 2) = v102;
                  }

LABEL_97:
                  ++v89;
                  v90 += 504;
                  if (v88 == v89)
                  {
                    goto LABEL_113;
                  }
                }
              }

              v91 = MEMORY[0x277D84F90];
LABEL_113:

              v103 = sub_2529A6C88(16, v91);

              if (!v103)
              {
                if (v118 == 5)
                {

                  v104 = v117;
                  goto LABEL_122;
                }

                v112 = sub_252E37DB4();

                if (((v112 | HIDWORD(v116)) & 1) == 0 && ((v116 ^ 1) & 1) == 0)
                {
                  v62 = v117;
                  if (v117 == 15)
                  {
                    v63 = 0x5455415F54414548;
                  }

                  else
                  {
                    v63 = 1413563720;
                  }

                  if (v117 == 15)
                  {
                    v64 = 0xE90000000000004FLL;
                  }

                  else
                  {
                    v64 = 0xE400000000000000;
                  }

                  sub_252B680FC();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
                  v65 = swift_allocObject();
                  *(v65 + 16) = xmmword_252E3C290;
                  *(v65 + 32) = v119;
                  v66 = v65 + 32;
                  *(v65 + 40) = a6;
                  *&__dst[24] = &type metadata for ClimateModes;
                  v67 = 5;
                  goto LABEL_134;
                }
              }
            }

            if (v118 <= 2)
            {
              v104 = v117;
              if (v118 > 1)
              {

LABEL_123:
                sub_252B680FC();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
                v106 = swift_allocObject();
                *(v106 + 16) = xmmword_252E3C290;
                *(v106 + 32) = v119;
                *(v106 + 40) = a6;
                *&__dst[24] = &type metadata for ClimateModes;
                __dst[0] = 4;

                sub_252B689F8(v106, __dst);
                swift_setDeallocating();
                sub_25293847C(v106 + 32, &unk_27F541300, &qword_252E3C100);
                swift_deallocClassInstance();

                sub_25293847C(__dst, &qword_27F541E80, &qword_252E3DFA0);
                type metadata accessor for HomeAttributeValue();
                v107 = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
                v108 = objc_allocWithZone(type metadata accessor for HomeUserTask());
                v109 = sub_252E36F04();
                v110 = [v108 initWithIdentifier:0 displayString:v109];

                v111 = v110;
                [v111 setTaskType_];
                [v111 setAttribute_];
LABEL_135:
                [v111 setValue_];

                return;
              }
            }

            else
            {
              v104 = v117;
            }

LABEL_122:
            v105 = sub_252E37DB4();

            if ((v105 & 1) == 0)
            {
              return;
            }

            goto LABEL_123;
          }
        }

        else
        {
          sub_252C515AC();
        }

        LODWORD(v116) = 0;
        goto LABEL_24;
      }
    }

    else
    {
      sub_252C515AC();
    }

    HIDWORD(v116) = 0;
    goto LABEL_14;
  }
}

id sub_252D91A54(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 17;
  }

  else
  {
    v3 = 19;
  }

  v4 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v5 = sub_252E36F04();
  v6 = [v4 initWithIdentifier:0 displayString:v5];

  v7 = v6;
  [v7 setTaskType_];
  [v7 setAttribute_];
  [v7 setValue_];

  return v7;
}

uint64_t sub_252D91B14(void *a1, void *a2, void *a3, void *a4, int a5, uint64_t a6)
{
  v96 = a5;
  v11 = sub_252E36AD4();
  v98 = *(v11 - 8);
  v12 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_27F544C70);
  sub_252CC3D90(0xD000000000000028, 0x8000000252E9AA50, 0xD000000000000095, 0x8000000252E9AA80);
  v16 = [a1 userTask];
  if (!v16 || (v97 = a1, v17 = v16, v18 = [v16 value], v17, !v18))
  {
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E9A8F0, 0xD000000000000095, 0x8000000252E9AA80, 0xD00000000000006ELL, 0x8000000252E90A60, 88);
    return 0;
  }

  v87 = v14;
  v92 = "alue temperature command";
  v19 = v15;
  v89 = a4;
  v90 = a6;
  v20 = sub_252C6E240(v97);
  v21 = v18;
  [v21 doubleValue];
  v23 = v22 > 82.0;
  v24 = v22 > 28.0;
  [v21 doubleValue];
  v26 = v25;
  v93 = v21;

  v27 = v26 < 60.0;
  if (v20 == 3)
  {
    v28 = v24;
  }

  else
  {
    v28 = v23;
  }

  v95 = v28;
  if (v20 == 3)
  {
    v27 = v26 < 15.0;
  }

  v91 = v27;
  v94 = a3;
  if (a2)
  {
    [a2 doubleValue];
    v30 = v29 <= 82.0;
    if (v29 < 60.0)
    {
      v30 = 0;
    }

    v31 = v29 <= 28.0;
    if (v29 < 15.0)
    {
      v31 = 0;
    }

    if (v20 == 3)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    [a2 doubleValue];
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0.0;
  }

  v36 = v93;
  [v93 doubleValue];
  v38 = v37;
  v101 = 0;
  v102 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E9AB20);
  v39 = [v36 description];
  v40 = sub_252E36F34();
  v42 = v41;

  MEMORY[0x2530AD570](v40, v42);

  MEMORY[0x2530AD570](0x202020202020200ALL, 0xEF203A74696E7520);
  v43 = sub_252C65640(v20);
  MEMORY[0x2530AD570](v43);

  MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E9A6E0);
  if (v95)
  {
    v44 = 1702195828;
  }

  else
  {
    v44 = 0x65736C6166;
  }

  v45 = 0xE400000000000000;
  if (v95)
  {
    v46 = 0xE400000000000000;
  }

  else
  {
    v46 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v44, v46);

  MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E9A710);
  if (v91)
  {
    v47 = 1702195828;
  }

  else
  {
    v47 = 0x65736C6166;
  }

  if (v91)
  {
    v48 = 0xE400000000000000;
  }

  else
  {
    v48 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v47, v48);

  MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E9A740);
  HIDWORD(v85) = v32;
  if (v32)
  {
    v49 = 1702195828;
  }

  else
  {
    v49 = 0x65736C6166;
  }

  if (!v32)
  {
    v45 = 0xE500000000000000;
  }

  v86 = v49;
  MEMORY[0x2530AD570]();

  MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
  sub_252CC3D90(v101, v102, 0xD000000000000095, v92 | 0x8000000000000000);

  v50 = v87;
  (*(v98 + 16))(v87, v19, v11);
  v101 = 0;
  v102 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E9AB60);
  v51 = sub_252CDBB90();
  MEMORY[0x2530AD570](v51);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E9AB90);
  if (a2)
  {
    v52 = [a2 description];
    a2 = sub_252E36F34();
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  v88 = v19;
  v99 = a2;
  v100 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v55 = sub_252E36F94();
  MEMORY[0x2530AD570](v55);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E9ABB0);
  if (v94)
  {
    v56 = [v94 description];
    v57 = sub_252E36F34();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0;
  }

  v99 = v57;
  v100 = v59;
  v60 = sub_252E36F94();
  MEMORY[0x2530AD570](v60);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E9ABD0);
  v61 = v89;
  v62 = v92;
  if (v89)
  {
    v63 = [v89 &_OBJC_LABEL_PROTOCOL___HMExecuteOperation];
    v64 = sub_252E36F34();
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  v99 = v64;
  v100 = v66;
  v67 = sub_252E36F94();
  MEMORY[0x2530AD570](v67);

  MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E9ABF0);
  MEMORY[0x2530AD570](v86, v45);

  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E9AC20);
  if (v34 >= v38)
  {
    v68 = 0x65736C6166;
  }

  else
  {
    v68 = 1702195828;
  }

  if (v34 >= v38)
  {
    v69 = 0xE500000000000000;
  }

  else
  {
    v69 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v68, v69);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E9AC40);
  LOBYTE(v99) = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545D18, &unk_252E5F6B0);
  v70 = sub_252E36F94();
  MEMORY[0x2530AD570](v70);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  sub_252CC3D90(v101, v102, 0xD000000000000095, v62 | 0x8000000000000000);

  (*(v98 + 8))(v50, v11);
  v71 = v94;
  if (!v95 && !v91)
  {
    goto LABEL_65;
  }

  if (!v94)
  {
    goto LABEL_65;
  }

  if (!v61)
  {
    goto LABEL_65;
  }

  if ((HIDWORD(v85) ^ 1))
  {
    goto LABEL_65;
  }

  type metadata accessor for HomeAttributeValue();
  v72 = v71;
  v73 = v61;
  v74 = sub_252E37694();

  if (v74)
  {
    goto LABEL_65;
  }

  if (v96 > 3u)
  {
    if (v96 > 5u)
    {
      if (v96 != 6)
      {
        goto LABEL_65;
      }
    }

    else if (v96 == 4)
    {

LABEL_64:
      sub_252CC3D90(0xD000000000000020, 0x8000000252E9ACA0, 0xD000000000000095, v62 | 0x8000000000000000);
      v76 = v93;
      v77 = sub_252D91A54(v93, v95);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_252E3C130;
      *(v78 + 32) = v77;

      return v78;
    }
  }

  v75 = sub_252E37DB4();

  if (v75)
  {
    goto LABEL_64;
  }

LABEL_65:
  v101 = 0;
  v102 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E9AC60);
  v79 = v93;
  v80 = [v93 &_OBJC_LABEL_PROTOCOL___HMExecuteOperation];
  v81 = sub_252E36F34();
  v83 = v82;

  MEMORY[0x2530AD570](v81, v83);

  sub_252CC3D90(v101, v102, 0xD000000000000095, v62 | 0x8000000000000000);

  v84 = sub_252D3D550(v97, v71, v61, v90, v34 < v38, v79);

  return v84;
}

uint64_t sub_252D925A8(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_6:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  v7 = [v5 attribute];

  if (v7 == 6)
  {
    return sub_252CCFCB8() & 1;
  }

  return 0;
}

BOOL sub_252D92654(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_27F53F520 != -1)
  {
LABEL_8:
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544E08);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E9ACD0);
  MEMORY[0x2530AD570](v3, v4);
  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E9ACF0);
  v6 = *a2;

  v8 = MEMORY[0x2530AD730](v7, MEMORY[0x277D837D0]);
  v10 = v9;

  MEMORY[0x2530AD570](v8, v10);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000099, 0x8000000252E9AD10);

  v11 = *a2;
  v12 = *(*a2 + 16);

  v13 = (v11 + 40);
  v14 = -v12;
  v15 = -1;
  do
  {
    v16 = v14 + v15;
    if (v14 + v15 == -1)
    {
      break;
    }

    if (++v15 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    v17 = v13 + 2;
    v18 = *(v13 - 1);
    a2 = *v13;

    v19 = sub_252AD28DC();

    v13 = v17;
  }

  while (!v19);

  return v16 != -1;
}

uint64_t WhichOnesFailedFlow.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v2 = *(v1 + 22);

  *(v0 + 16) = v2;
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v3 + 136), v0 + 24);

  v4 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  *(v0 + 88) = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  *(v0 + 96) = &off_2864BA730;
  *(v0 + 64) = v4;
  *(v0 + 104) = 0;
  *(v0 + 112) = sub_252D92E00;
  *(v0 + 120) = 0;
  return v0;
}

HomeAutomationInternal::WhichOnesFailedFlow::State_optional __swiftcall WhichOnesFailedFlow.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t WhichOnesFailedFlow.State.rawValue.getter()
{
  v1 = 0x65747563657865;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_252D929E8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x65747563657865;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x6574656C706D6F63;
  if (v3 == 1)
  {
    v5 = 0x65747563657865;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x8000000252E67F20;
  }

  v8 = 0xE700000000000000;
  if (*a2 != 1)
  {
    v2 = 0x6574656C706D6F63;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x8000000252E67F20;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252D92AE4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D92B8C()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252D92C20()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D92CD0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x65747563657865;
  if (v2 != 1)
  {
    v4 = 0x6574656C706D6F63;
    v3 = 0xE800000000000000;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x8000000252E67F20;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t WhichOnesFailedFlow.init()()
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v2 = *(v1 + 22);

  *(v0 + 16) = v2;
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v3 + 136), v0 + 24);

  v4 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  *(v0 + 88) = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  *(v0 + 96) = &off_2864BA730;
  *(v0 + 64) = v4;
  *(v0 + 104) = 0;
  *(v0 + 112) = sub_252D92E00;
  *(v0 + 120) = 0;
  return v0;
}

uint64_t sub_252D92E04()
{
  v1 = sub_252E34164();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 104))
  {
    v6 = sub_252E37DB4();

    if ((v6 & 1) == 0)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v7 = sub_252E36AD4();
      __swift_project_value_buffer(v7, qword_27F544DA8);
      sub_252CC7784(0xD000000000000060, 0x8000000252E82850, 0, 0xD00000000000007ELL, 0x8000000252E9ADB0);
LABEL_11:
      v10 = 0;
      return v10 & 1;
    }
  }

  else
  {
  }

  sub_252E340E4();
  sub_252AB3FEC(v5, 0, v13);
  (*(v2 + 8))(v5, v1);
  memcpy(v14, v13, sizeof(v14));
  memcpy(v15, v13, sizeof(v15));
  if (sub_252956B94(v15) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544DA8);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E9AE30);
    v9 = sub_252E340C4();
    MEMORY[0x2530AD570](v9);

    sub_252CC4050(v13[0], v13[1], 0xD00000000000007ELL, 0x8000000252E9ADB0, 0x7475706E69286E6FLL, 0xEA0000000000293ALL, 67);

    goto LABEL_11;
  }

  if (LOBYTE(v15[26]) == 9)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_252A0D524(v15[26], 8u);
  }

  sub_25299F5D4(v14);
  return v10 & 1;
}

uint64_t sub_252D93158(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = *(*(sub_252E33944() - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v4 = sub_252E34014();
  v2[30] = v4;
  v5 = *(v4 - 8);
  v2[31] = v5;
  v6 = *(v5 + 64) + 15;
  v2[32] = swift_task_alloc();
  v7 = sub_252E36324();
  v2[33] = v7;
  v8 = *(v7 - 8);
  v2[34] = v8;
  v9 = *(v8 + 64) + 15;
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D932A0, 0, 0);
}

uint64_t sub_252D932A0()
{
  v77 = v0;
  v3 = v0[28];
  v4 = qword_27F53F500;
  if (!*(v3 + 104))
  {
LABEL_21:
    if (v4 != -1)
    {
      swift_once();
      v3 = v0[28];
    }

    v20 = v0[27];
    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000025, 0x8000000252E9AF20, 0xD00000000000007ELL, 0x8000000252E9ADB0);
    v22 = *(v3 + 120);
    v0[26] = (*(v3 + 112))(v3);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_252D94D18;
    *(v23 + 24) = v3;
    sub_252E33454();

    sub_252E33AC4();

LABEL_24:

    goto LABEL_28;
  }

  v5 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/WhichOnesFailed/WhichOnesFailedFlow.swift";
  if (*(v3 + 104) != 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v24 = v0[27];
    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_27F544DA8);
    sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E9AE70, 0xD00000000000007ELL, 0x8000000252E9ADB0);
    sub_252E33B24();
LABEL_28:
    v26 = v0[35];
    v27 = v0[32];
    v28 = v0[29];

    v29 = v0[1];

    return v29();
  }

  if (qword_27F53F500 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v6 = v0;
    v7 = sub_252E36AD4();
    v70 = v5 - 32;
    __swift_project_value_buffer(v7, qword_27F544DA8);
    sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E9AE90, 0xD00000000000007ELL, (v5 - 32) | 0x8000000000000000);
    sub_252B79938();
    v71 = sub_252CB008C();
    type metadata accessor for HomeStore();
    v8 = static HomeStore.shared.getter();
    v9 = sub_2529D9D50();
    v3 = 0;
    v10 = sub_2529D70E4(v9);

    v75 = MEMORY[0x277D84F90];
    v0 = v10 >> 62 ? sub_252E378C4() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v6;
    v12 = MEMORY[0x277D84F90];
    v73 = v11;
    if (!v0)
    {
      break;
    }

    v13 = 0;
    v72 = v11 + 22;
    v5 = (v10 & 0xC000000000000001);
    v14 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v2 = MEMORY[0x2530ADF00](v13, v10);
        v1 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        goto LABEL_13;
      }

      if (v13 >= *(v14 + 16))
      {
        break;
      }

      v2 = *(v10 + 8 * v13 + 32);

      v1 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_20;
      }

LABEL_13:
      v15 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (v15)
      {
        v16 = v10;
        v11[22] = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v11[23] = v15;
        v17 = swift_task_alloc();
        *(v17 + 16) = v72;
        v18 = sub_2529ED970(sub_25296A69C, v17, v71);

        if (v18)
        {
          sub_252E37A94();
          v19 = *(v75 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v11 = v73;
        v10 = v16;
      }

      else
      {
      }

      ++v13;
      if (v1 == v0)
      {
        v31 = v75;
        v12 = MEMORY[0x277D84F90];
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
    v45 = v0[28];
  }

  v31 = MEMORY[0x277D84F90];
LABEL_33:

  if ((v31 & 0x8000000000000000) != 0 || (v31 & 0x4000000000000000) != 0)
  {
    v32 = sub_252E378C4();
    if (!v32)
    {
      goto LABEL_49;
    }

LABEL_36:
    v0 = v11;
    v75 = v12;
    v33 = &v75;
    sub_2529AA4E0(0, v32 & ~(v32 >> 63), 0);
    if ((v32 & 0x8000000000000000) == 0)
    {
      v34 = 0;
      v35 = v0[34];
      v3 = v75;
      v36 = v31;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x2530ADF00](v34, v36);
        }

        else
        {
          v37 = *(v36 + 8 * v34 + 32);
        }

        v38 = v73[35];
        v39 = *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v40 = *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
        sub_252E37024();

        v75 = v3;
        v42 = *(v3 + 16);
        v41 = *(v3 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_2529AA4E0(v41 > 1, v42 + 1, 1);
          v3 = v75;
        }

        v43 = v73[35];
        v44 = v73[33];
        ++v34;
        *(v3 + 16) = v42 + 1;
        (*(v35 + 32))(v3 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v42, v43, v44);
        v36 = v31;
      }

      while (v32 != v34);

      v11 = v73;
      goto LABEL_50;
    }

    __break(1u);
LABEL_64:
    sub_2529A3A74(v3, v3 + v31, v33, (2 * v1) | 1);
    v69 = v68;

    v3 = v69;
    goto LABEL_58;
  }

  v32 = *(v31 + 16);
  if (v32)
  {
    goto LABEL_36;
  }

LABEL_49:

  v3 = MEMORY[0x277D84F90];
LABEL_50:
  v47 = v11[33];
  v46 = v11[34];
  v0 = v11;
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E9AEC0);
  v48 = MEMORY[0x2530AD730](v71, MEMORY[0x277D837D0]);
  v50 = v49;

  MEMORY[0x2530AD570](v48, v50);

  sub_252CC3D90(v75, v76, 0xD00000000000007ELL, v70 | 0x8000000000000000);

  v75 = 0;
  v76 = 0xE000000000000000;
  sub_252E379F4();

  v2 = 0xD00000000000007ELL;
  v75 = 0xD00000000000001BLL;
  v76 = 0x8000000252E9AF00;
  v51 = MEMORY[0x2530AD730](v3, v47);
  MEMORY[0x2530AD570](v51);

  sub_252CC3D90(v75, v76, 0xD00000000000007ELL, v70 | 0x8000000000000000);

  v1 = *(v3 + 16);
  if (v1 >= 5)
  {
    v33 = 5;
  }

  else
  {
    v33 = *(v3 + 16);
  }

  v31 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  if (v1 < 6)
  {
LABEL_56:

    v12 = v3;
    v53 = v1;
  }

  else
  {
    sub_2529A3A74(v3, v3 + v31, 0, (2 * v33) | 1);
    v53 = *(v3 + 16);
    if (v53 < v1)
    {
      __break(1u);
      goto LABEL_56;
    }

    v12 = v52;
  }

  v0[36] = v12;
  if (v53 != v1 - v33)
  {
    goto LABEL_64;
  }

LABEL_58:
  v0[37] = v3;
  v54 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v54 + 288), (v0 + 2));

  v55 = v0[5];
  v56 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v55);
  v57 = (*(v56 + 120))(v55, v56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v58 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  if (v57)
  {
    v60 = v0[27];
    v59 = v0[28];
    sub_252929E74((v58 + 96), (v0 + 17));

    v61 = swift_allocObject();
    v61[2] = v59;
    v61[3] = v12;
    v61[4] = v3;
    v62 = sub_252E331C4();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();

    v0[25] = sub_252E331B4();
    sub_252E33AF4();
    goto LABEL_24;
  }

  v0[38] = *(v58 + 29);

  v65 = sub_252C0B308(0, v12, v3);
  v0[39] = v65;
  v66 = *(MEMORY[0x277D55BE8] + 4);
  v74 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v67 = swift_task_alloc();
  v0[40] = v67;
  *v67 = v0;
  v67[1] = sub_252D93C40;

  return v74(v2 - 96, 0x8000000252E951C0, v65);
}

uint64_t sub_252D93C40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v7 = sub_252D93EFC;
  }

  else
  {
    v8 = *(v4 + 312);

    *(v4 + 336) = a1;
    v7 = sub_252D93D70;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252D93D70()
{
  v1 = v0[42];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[36];
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  v18 = v0[27];

  v10 = v9[6];
  v11 = v9[7];
  __swift_project_boxed_opaque_existential_1(v9 + 3, v10);
  (*(v11 + 32))(v10, v11);
  v12 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  sub_252E33924();
  sub_252E33F54();
  sub_252E334D4();
  (*(v6 + 8))(v5, v7);
  sub_252E33B04();

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v13 = v0[35];
  v14 = v0[32];
  v15 = v0[29];

  v16 = v0[1];

  return v16();
}

uint64_t sub_252D93EFC()
{
  v1 = v0[41];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[27];

  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v7 + 96), (v0 + 7));

  v8 = sub_252E331C4();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v0[24] = sub_252E331B4();
  sub_252E33AF4();

  v11 = v0[35];
  v12 = v0[32];
  v13 = v0[29];

  v14 = v0[1];

  return v14();
}

uint64_t sub_252D94038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_252E34014();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D940FC, 0, 0);
}

uint64_t sub_252D940FC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = v2[7];
  v9 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v9;
  sub_252B03B94();
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_252D9423C;
  v6 = *(v0 + 64);
  v7 = *(v0 + 16);

  return sub_252A199A8(v7, &unk_252E5F940, v4, &unk_252E5F948, 0, v6, 0, 0);
}

uint64_t sub_252D9423C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *v1;
  v6[11] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252D943F0, 0, 0);
  }

  else
  {
    v8 = v6[8];
    v7 = v6[9];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_252D943F0()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_252D9445C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_252D9447C, 0, 0);
}

uint64_t sub_252D9447C()
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v0[7] = *(v1 + 23);

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_252D94548;
  v4 = v0[5];
  v3 = v0[6];

  return sub_252D2BF00(v4, v3);
}

uint64_t sub_252D94548(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D946A0, 0, 0);
  }

  else
  {
    v7 = *(v4 + 56);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252D946A0()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_252D94704(char a1)
{
  if (a1)
  {
    *(v1 + 104) = 2;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544DA8);
    sub_252E379F4();
    v3 = "pdating the flowState to ";
    v4 = 0xD000000000000035;
  }

  else
  {
    *(v1 + 104) = 1;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544DA8);
    sub_252E379F4();
    v3 = "l. Flow state set to: ";
    v4 = 0xD000000000000039;
  }

  MEMORY[0x2530AD570](v4, v3 | 0x8000000000000000);
  v7 = *(v1 + 104);
  sub_252E37AE4();
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ELL, 0x8000000252E9ADB0);
}

void *WhichOnesFailedFlow.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v2 = v0[15];

  return v0;
}

uint64_t WhichOnesFailedFlow.__deallocating_deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v2 = v0[15];

  return swift_deallocClassInstance();
}

void (*sub_252D9492C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_252E35F94();
  return sub_252A6999C;
}

uint64_t sub_252D949E0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252D93158(a1);
}

uint64_t sub_252D94A7C()
{
  type metadata accessor for WhichOnesFailedFlow();

  return sub_252E33644();
}

uint64_t sub_252D94AB4(uint64_t a1)
{
  v2 = sub_252E36AB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 208);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v8 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (v7 == 9)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_252A0D524(v7, 8u);
  }

  sub_252E375C4();
  sub_252E36A74();
  (*(v3 + 8))(v6, v2);
  return v9 & 1;
}

uint64_t sub_252D94C64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25293B808;

  return sub_252D94038(a1, v4, v5, v6);
}

unint64_t sub_252D94D24()
{
  result = qword_27F545D20;
  if (!qword_27F545D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545D20);
  }

  return result;
}

uint64_t sub_252D94D78(uint64_t a1)
{
  result = sub_252D94E8C(&qword_27F545D28);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252D94DE0(uint64_t a1)
{
  result = sub_252D94E8C(&qword_27F545D30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252D94E8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WhichOnesFailedFlow();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of WhichOnesFailedFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25293B808;

  return v8(a1);
}

uint64_t sub_252D95050()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252D9445C(v2, v3);
}

uint64_t sub_252D950E8()
{
  v0 = sub_252E334A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18[-1] - v6;
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v8 + 288), v18);

  v9 = v19;
  v10 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v11 = (*(v10 + 176))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v18);
  if (v11)
  {
    sub_252E33464();
    (*(v1 + 16))(v5, v7, v0);
    v12 = sub_2529F90D4(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = v12[2];
    v13 = v12[3];
    if (v14 >= v13 >> 1)
    {
      v12 = sub_2529F90D4(v13 > 1, v14 + 1, 1, v12);
    }

    (*(v1 + 8))(v7, v0);
    v12[2] = v14 + 1;
    (*(v1 + 32))(v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v14, v5, v0);
  }

  v15 = sub_252E33144();

  return v15;
}

uint64_t CapabilityAttributeSemantic.rawValue.getter()
{
  v1 = 0x5F746E6572727563;
  if (*v0 != 1)
  {
    v1 = 0x656C67676F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x765F746567726174;
  }
}

HomeAutomationInternal::CapabilityAttributeSemantic_optional __swiftcall CapabilityAttributeSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252D953F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5F746E6572727563;
  v4 = 0xED000065756C6176;
  if (v2 != 1)
  {
    v3 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x765F746567726174;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065756C61;
  }

  v7 = 0x5F746E6572727563;
  v8 = 0xED000065756C6176;
  if (*a2 != 1)
  {
    v7 = 0x656C67676F74;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x765F746567726174;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065756C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252D95510()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D955C4()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252D95664()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D95720(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065756C61;
  v4 = 0xED000065756C6176;
  v5 = 0x5F746E6572727563;
  if (v2 != 1)
  {
    v5 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x765F746567726174;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252D95794(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5F746E6572727563;
  v4 = 0xED000065756C6176;
  if (*a2 != 1)
  {
    v3 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x765F746567726174;
  }

  if (*a2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065756C61;
  }

  v7 = 0x5F746E6572727563;
  v8 = 0xED000065756C6176;
  if (v2 != 1)
  {
    v7 = 0x656C67676F74;
    v8 = 0xE600000000000000;
  }

  if (v2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x765F746567726174;
  }

  if (v2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065756C61;
  }

  if (v5 == v9 && v6 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252D958C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5F746E6572727563;
  v4 = 0xED000065756C6176;
  if (v2 != 1)
  {
    v3 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x765F746567726174;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065756C61;
  }

  v7 = 0x5F746E6572727563;
  v8 = 0xED000065756C6176;
  if (*a2 != 1)
  {
    v7 = 0x656C67676F74;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x765F746567726174;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065756C61;
  }

  if (v5 == v9 && v6 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252D959EC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5F746E6572727563;
  v4 = 0xED000065756C6176;
  if (*a2 != 1)
  {
    v3 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x765F746567726174;
  }

  if (*a2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065756C61;
  }

  v7 = 0x5F746E6572727563;
  v8 = 0xED000065756C6176;
  if (v2 != 1)
  {
    v7 = 0x656C67676F74;
    v8 = 0xE600000000000000;
  }

  if (v2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x765F746567726174;
  }

  if (v2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065756C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252D95BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252D95ECC();
  v5 = sub_252D95F20();
  v6 = sub_252D95F74();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t _s22HomeAutomationInternal27CapabilityAttributeSemanticO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5F746E6572727563;
  v4 = 0xED000065756C6176;
  if (v2 != 1)
  {
    v3 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x765F746567726174;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065756C61;
  }

  v7 = 0x5F746E6572727563;
  v8 = 0xED000065756C6176;
  if (*a2 != 1)
  {
    v7 = 0x656C67676F74;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x765F746567726174;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065756C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

unint64_t sub_252D95D50()
{
  result = qword_27F545D38;
  if (!qword_27F545D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545D38);
  }

  return result;
}

unint64_t sub_252D95DA8()
{
  result = qword_27F545D40;
  if (!qword_27F545D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545D40);
  }

  return result;
}

unint64_t sub_252D95E00()
{
  result = qword_27F545D48;
  if (!qword_27F545D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545D50, &qword_252E5FA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545D48);
  }

  return result;
}

unint64_t sub_252D95E68()
{
  result = qword_27F545D58;
  if (!qword_27F545D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545D58);
  }

  return result;
}

unint64_t sub_252D95ECC()
{
  result = qword_27F545D60;
  if (!qword_27F545D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545D60);
  }

  return result;
}

unint64_t sub_252D95F20()
{
  result = qword_27F545D68;
  if (!qword_27F545D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545D68);
  }

  return result;
}

unint64_t sub_252D95F74()
{
  result = qword_27F545D70;
  if (!qword_27F545D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545D70);
  }

  return result;
}

uint64_t sub_252D95FCC()
{
  v0 = sub_252E363D4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E363C4();
  qword_27F575C30 = result;
  return result;
}

uint64_t sub_252D962AC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (PlaceHintSemantic.rawValue.getter() == 1819042152 && v2 == 0xE400000000000000)
  {
LABEL_8:

    goto LABEL_9;
  }

  v4 = sub_252E37DB4();

  if ((v4 & 1) == 0)
  {
    if (PlaceHintSemantic.rawValue.getter() != 0x6E65686374696BLL || v5 != 0xE700000000000000)
    {
      v8 = sub_252E37DB4();

      if (v8)
      {
        goto LABEL_9;
      }

      if (PlaceHintSemantic.rawValue.getter() != 0x6F72676E6976696CLL || v9 != 0xEA00000000006D6FLL)
      {
        v10 = sub_252E37DB4();

        if (v10)
        {
          goto LABEL_9;
        }

        if (PlaceHintSemantic.rawValue.getter() != 0x6F72676E696E6964 || v11 != 0xEA00000000006D6FLL)
        {
          v12 = sub_252E37DB4();

          if (v12)
          {
            goto LABEL_9;
          }

          if (PlaceHintSemantic.rawValue.getter() != 0x65636E6172746E65 || v13 != 0xE800000000000000)
          {
            v14 = sub_252E37DB4();

            if (v14)
            {
              goto LABEL_9;
            }

            if (PlaceHintSemantic.rawValue.getter() != 0x6D6F6F7268746162 || v15 != 0xE800000000000000)
            {
              v16 = sub_252E37DB4();

              if (v16)
              {
                goto LABEL_9;
              }

              if (PlaceHintSemantic.rawValue.getter() != 0x65636966666FLL || v17 != 0xE600000000000000)
              {
                v18 = sub_252E37DB4();

                if (v18)
                {
                  goto LABEL_9;
                }

                if (PlaceHintSemantic.rawValue.getter() != 0x6D6F6F72646562 || v19 != 0xE700000000000000)
                {
                  v20 = sub_252E37DB4();

                  if (v20)
                  {
                    goto LABEL_9;
                  }

                  if (PlaceHintSemantic.rawValue.getter() != 0x625F72657473616DLL || v21 != 0xEE006D6F6F726465)
                  {
                    v22 = sub_252E37DB4();

                    if (v22)
                    {
                      goto LABEL_9;
                    }

                    if (PlaceHintSemantic.rawValue.getter() != 0x746E656D65736162 || v23 != 0xE800000000000000)
                    {
                      v24 = sub_252E37DB4();

                      if (v24)
                      {
                        goto LABEL_9;
                      }

                      if (PlaceHintSemantic.rawValue.getter() != 1685217657 || v25 != 0xE400000000000000)
                      {
                        v26 = sub_252E37DB4();

                        if (v26)
                        {
                          goto LABEL_9;
                        }

                        if (PlaceHintSemantic.rawValue.getter() != 7174503 || v27 != 0xE300000000000000)
                        {
                          v28 = sub_252E37DB4();

                          if (v28)
                          {
                            goto LABEL_9;
                          }

                          if (PlaceHintSemantic.rawValue.getter() != 0x6F6F725F79616C70 || v29 != 0xE90000000000006DLL)
                          {
                            v30 = sub_252E37DB4();

                            if (v30)
                            {
                              goto LABEL_9;
                            }

                            if (PlaceHintSemantic.rawValue.getter() != 0x6D6F6F725F7674 || v31 != 0xE700000000000000)
                            {
                              v32 = sub_252E37DB4();

                              if (v32)
                              {
                                goto LABEL_9;
                              }

                              if (PlaceHintSemantic.rawValue.getter() != 0x706F68736B726F77 || v33 != 0xE800000000000000)
                              {
                                v6 = sub_252E37DB4();

                                return v6 & 1;
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

    goto LABEL_8;
  }

LABEL_9:
  v6 = 1;
  return v6 & 1;
}

unint64_t sub_252D96838(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = v2 + 1;
  v5 = 120;
  do
  {
    if (!--v4)
    {

      return v1;
    }

    v6 = *(a1 + v5);
    v5 += 504;
  }

  while (!*(v6 + 16));
  v7 = qword_27F53F520;

  if (v7 != -1)
  {
LABEL_173:
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544E08);
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_252E379F4();

  __src[0] = 0xD000000000000021;
  __src[1] = 0x8000000252E9AF90;
  v9 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v9);

  sub_252CC3D90(__src[0], __src[1], 0xD000000000000092, 0x8000000252E9AFC0);

  if (!v2)
  {
    goto LABEL_93;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(v3 + 504 * v11 + 88);
    v13 = *(v12 + 16);
    if (v13)
    {
      break;
    }

LABEL_7:
    if (++v11 == v2)
    {
      goto LABEL_93;
    }
  }

  v14 = 0;
  while (1)
  {
    v15 = *(v12 + 16);
    if (v14 >= v15)
    {
      __break(1u);
      goto LABEL_142;
    }

    LOBYTE(__src[0]) = *(v12 + 32 + v14);
    if (sub_252D962AC(__src))
    {
      break;
    }

    if (v13 == ++v14)
    {
      goto LABEL_7;
    }
  }

  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  while (1)
  {
    v17 = *(v1 + 2);
    if (v12 == v17)
    {
      break;
    }

    if (v12 >= v17)
    {
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
      goto LABEL_173;
    }

    v3 = (v1 + 32);
    v18 = &v1[504 * v12 + 32];
    v19 = *(v18 + 11);
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = 0;
      v2 = v19 + 32;
      while (1)
      {
        if (v21 >= *(v19 + 16))
        {
          goto LABEL_95;
        }

        LOBYTE(__src[0]) = *(v2 + v21);
        if (sub_252D962AC(__src))
        {
          break;
        }

        if (v20 == ++v21)
        {
          goto LABEL_25;
        }
      }

      v16 = __OFADD__(v12++, 1);
      if (v16)
      {
        goto LABEL_165;
      }
    }

    else
    {
LABEL_25:
      if (v11 != v12)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_168;
        }

        v2 = *(v1 + 2);
        if (v11 >= v2)
        {
          goto LABEL_169;
        }

        memcpy(__dst, (v3 + 504 * v11), sizeof(__dst));
        if (v12 >= v2)
        {
          goto LABEL_170;
        }

        memcpy(__src, v18, 0x1F8uLL);
        sub_2529353AC(__dst, v63);
        sub_2529353AC(__src, v63);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_252D57AC0(v1);
        }

        if (v11 >= *(v1 + 2))
        {
          goto LABEL_171;
        }

        v2 = (v1 + 32);
        memcpy(v62, &v1[504 * v11 + 32], sizeof(v62));
        memcpy(&v1[504 * v11 + 32], __src, 0x1F8uLL);
        sub_252935408(v62);
        if (v12 >= *(v1 + 2))
        {
          goto LABEL_172;
        }

        memcpy(v63, (v2 + 504 * v12), sizeof(v63));
        memcpy((v2 + 504 * v12), __dst, 0x1F8uLL);
        sub_252935408(v63);
      }

      v16 = __OFADD__(v11++, 1);
      if (v16)
      {
        goto LABEL_167;
      }

      v16 = __OFADD__(v12++, 1);
      if (v16)
      {
        goto LABEL_165;
      }
    }
  }

  v2 = v11;
  v15 = v11 - v12;
  if (v11 > v12)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    v12 = *(v1 + 2);
LABEL_99:
    v10 = *(v1 + 2);
    v15 = v12 - v10;
    if (v12 > v10)
    {
LABEL_192:
      __break(1u);
    }

    else if ((v12 & 0x8000000000000000) == 0)
    {
      v16 = __OFADD__(v10, v15);
      v15 = v12;
      if (!v16)
      {
        v66 = v1;
        if (v12 <= *(v1 + 3) >> 1)
        {
          goto LABEL_103;
        }

        goto LABEL_195;
      }

LABEL_194:
      __break(1u);
LABEL_195:
      if (v10 > v15)
      {
        v15 = v10;
      }

      v52 = v10;
      v53 = sub_2529F7FB0(1, v15, 1, v1);
      v10 = v52;
      v1 = v53;
      v66 = v53;
LABEL_103:
      result = sub_252B7B280(v12, v10, 0);
LABEL_104:
      v10 = *(v1 + 2);
      if (v10)
      {
        v35 = v1 + 32;
        v36 = (v1 + 344);
        v37 = *(v1 + 2);
        while (1)
        {
          v38 = *v36;
          v39 = !*(*(v36 - 23) + 16) || v38 == 2;
          if (!v39 && (v38 & 1) != 0)
          {
            break;
          }

          v36 += 504;
          if (!--v37)
          {
            return v1;
          }
        }

        v40 = v10 + 1;
        v41 = 120;
        while (--v40)
        {
          v42 = *&v1[v41];
          v41 += 504;
          if (*(v42 + 16))
          {
            v12 = 0;
            v15 = v1;
            while (*(*(v15 + 160) + 16) || !*(*(v15 + 120) + 16))
            {
              ++v12;
              v15 += 504;
              if (v10 == v12)
              {
                goto LABEL_124;
              }
            }

            v43 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
              goto LABEL_199;
            }

            if (v43 != v10)
            {
              v44 = (v15 + 536);
              while (v43 < v10)
              {
                v15 = *(v44[16] + 16);
                if (v15 || (v15 = *(v44[11] + 16)) == 0)
                {
                  if (v43 != v12)
                  {
                    if (v12 >= v10)
                    {
                      goto LABEL_180;
                    }

                    memcpy(v62, &v35[504 * v12], sizeof(v62));
                    memcpy(v63, v44, sizeof(v63));
                    sub_2529353AC(v62, __src);
                    sub_2529353AC(v63, __src);
                    memcpy(__dst, &v35[504 * v12], sizeof(__dst));
                    memcpy(&v35[504 * v12], v63, 0x1F8uLL);
                    sub_252935408(__dst);
                    v15 = *(v1 + 2);
                    if (v43 >= v15)
                    {
                      goto LABEL_181;
                    }

                    memcpy(__src, v44, 0x1F8uLL);
                    memcpy(v44, v62, 0x1F8uLL);
                    sub_252935408(__src);
                    v10 = *(v1 + 2);
                  }

                  ++v12;
                }

                ++v43;
                v44 += 63;
                if (v43 == v10)
                {
                  goto LABEL_121;
                }
              }

              goto LABEL_177;
            }

LABEL_121:
            if (v10 < v12)
            {
              goto LABEL_183;
            }

            if (v12 < 0)
            {
              __break(1u);
LABEL_124:
              v12 = v10;
            }

            v15 = v12;
            if (__OFADD__(v10, v12 - v10))
            {
              goto LABEL_184;
            }

            v66 = v1;
            if (v12 > *(v1 + 3) >> 1)
            {
              goto LABEL_185;
            }

            goto LABEL_127;
          }
        }
      }

      return v1;
    }

    __break(1u);
    goto LABEL_194;
  }

LABEL_39:
  if (v2 < 0)
  {
    __break(1u);
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v22 = v12 + v15;
  if (__OFADD__(v12, v15))
  {
    goto LABEL_175;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = v1;
  if (!isUniquelyReferenced_nonNull_native || v22 > *(v1 + 3) >> 1)
  {
    if (v12 <= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v12;
    }

    v1 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v24, 1, v1);
    v66 = v1;
  }

  result = sub_252B7B280(v2, v12, 0);
  v55 = *(v1 + 2);
  if (!v55)
  {
    goto LABEL_104;
  }

  v3 = 0;
  v58 = v1 + 32;
  while (1)
  {
    if (v3 >= *(v1 + 2))
    {
      goto LABEL_166;
    }

    memcpy(__src, &v58[504 * v3], 0x1F8uLL);
    v26 = __src[11];
    ++v3;
    v27 = *(__src[11] + 16);
    sub_2529353AC(__src, __dst);
    v28 = (v26 + 32);
LABEL_54:
    if (v27)
    {
      break;
    }

    result = sub_252935408(__src);
LABEL_50:
    if (v3 == v55)
    {
      goto LABEL_104;
    }
  }

  switch(*v28)
  {
    case 1:

      break;
    default:
      v2 = sub_252E37DB4();

      ++v28;
      --v27;
      if ((v2 & 1) == 0)
      {
        goto LABEL_54;
      }

      break;
  }

  v29 = *(__src[13] + 16);
  result = sub_252935408(__src);
  if (v29)
  {
    goto LABEL_50;
  }

  if (!*(v1 + 2))
  {
    goto LABEL_104;
  }

  v30 = v1;
  v31 = *(v1 + 2);
  while (!*(*(v30 + 17) + 16) || *(*(v30 + 59) + 16))
  {
    v30 += 504;
    if (!--v31)
    {
      goto LABEL_104;
    }
  }

  v12 = 0;
  v56 = *(v1 + 2);
  while (2)
  {
    memcpy(__dst, &v58[504 * v12], sizeof(__dst));
    v2 = __dst[11];
    v32 = *(__dst[11] + 16);
    sub_2529353AC(__dst, v63);
    v33 = (v2 + 32);
    do
    {
      if (!v32)
      {
        sub_252935408(__dst);
        goto LABEL_90;
      }

      v2 = 0xEA0000000000746ELL;
      switch(*v33)
      {
        case 1:

          goto LABEL_89;
        case 2:
          v2 = 0xE700000000000000;
          break;
        case 3:
          v2 = 0xE500000000000000;
          break;
        case 4:
          v2 = 0xE400000000000000;
          break;
        case 5:
          v2 = 0xEC000000736D6F6FLL;
          break;
        case 6:
          v2 = 0xE400000000000000;
          break;
        case 7:
          v2 = 0xE700000000000000;
          break;
        case 8:
        case 9:
          v2 = 0xEA00000000006D6FLL;
          break;
        case 0xA:
          v2 = 0xE800000000000000;
          break;
        case 0xB:
          v2 = 0xE800000000000000;
          break;
        case 0xC:
          v2 = 0xE600000000000000;
          break;
        case 0xD:
          v2 = 0xE700000000000000;
          break;
        case 0xE:
          v2 = 0xEE006D6F6F726465;
          break;
        case 0xF:
          v2 = 0xE800000000000000;
          break;
        case 0x10:
          v2 = 0xE400000000000000;
          break;
        case 0x11:
          v2 = 0xE300000000000000;
          break;
        case 0x12:
          v2 = 0xE90000000000006DLL;
          break;
        case 0x13:
          v2 = 0xE700000000000000;
          break;
        case 0x14:
          v2 = 0xE800000000000000;
          break;
        default:
          break;
      }

      v34 = sub_252E37DB4();

      ++v33;
      --v32;
    }

    while ((v34 & 1) == 0);
LABEL_89:
    v2 = *(__dst[13] + 16);
    result = sub_252935408(__dst);
    if (v2)
    {
LABEL_90:
      if (++v12 == v56)
      {
        goto LABEL_96;
      }

      if (v12 < *(v1 + 2))
      {
        continue;
      }

      __break(1u);
LABEL_93:
      v12 = *(v1 + 2);
      v15 = v2 - v12;
      if (v2 > v12)
      {
        goto LABEL_94;
      }

      goto LABEL_39;
    }

    break;
  }

  v3 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_199:
    __break(1u);
    return result;
  }

  v15 = *(v1 + 2);
  if (v3 == v15)
  {
    goto LABEL_99;
  }

LABEL_142:
  if ((v3 & 0x8000000000000000) == 0)
  {
LABEL_143:
    v15 = *(v1 + 2);
    if (v3 >= v15)
    {
      goto LABEL_178;
    }

    v54 = &v58[504 * v3];
    v57 = v3;
    memcpy(v63, v54, sizeof(v63));
    v45 = v63[11];
    v46 = *(v63[11] + 16);
    sub_2529353AC(v63, v62);
    v2 = v45 + 32;
    while (2)
    {
      if (v46)
      {
        switch(*v2)
        {
          case 1:

            break;
          default:
            v47 = sub_252E37DB4();

            ++v2;
            --v46;
            if ((v47 & 1) == 0)
            {
              continue;
            }

            break;
        }

        v2 = *(v63[13] + 16);
        sub_252935408(v63);
        if (v2)
        {
LABEL_151:
          if (v12 != v57)
          {
            if (v12 < 0)
            {
              __break(1u);
LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
              goto LABEL_192;
            }

            v48 = *(v1 + 2);
            if (v12 >= v48)
            {
              goto LABEL_189;
            }

            v49 = &v58[504 * v12];
            memcpy(v59, v49, sizeof(v59));
            if (v57 >= v48)
            {
              goto LABEL_190;
            }

            v2 = v54;
            memcpy(v60, v54, sizeof(v60));
            sub_2529353AC(v59, v62);
            sub_2529353AC(v60, v62);
            memcpy(v61, v49, sizeof(v61));
            memcpy(v49, v60, 0x1F8uLL);
            sub_252935408(v61);
            v15 = *(v1 + 2);
            if (v57 >= v15)
            {
              goto LABEL_191;
            }

            memcpy(v62, v54, sizeof(v62));
            memcpy(v54, v59, 0x1F8uLL);
            sub_252935408(v62);
          }

          v16 = __OFADD__(v12++, 1);
          if (v16)
          {
            goto LABEL_179;
          }

          v3 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }
        }

        else
        {
          v3 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            goto LABEL_163;
          }
        }

        if (v3 == *(v1 + 2))
        {
          goto LABEL_99;
        }

        goto LABEL_143;
      }

      break;
    }

    sub_252935408(v63);
    goto LABEL_151;
  }

LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  if (v10 > v15)
  {
    v15 = v10;
  }

  v50 = v10;
  v51 = sub_2529F7FB0(1, v15, 1, v1);
  v10 = v50;
  v1 = v51;
  v66 = v51;
LABEL_127:
  sub_252B7B280(v12, v10, 0);
  return v1;
}

void *sub_252D977F4(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_252D97840(a1);
}

void *sub_252D97840(uint64_t *a1)
{
  v3 = sub_252E32E84();
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v56 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v16 = v56;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v16);
    type metadata accessor for Zone();
    v17 = *(*v60 + 48);
    v18 = *(*v60 + 52);
    swift_deallocPartialClassInstance();
    return v14;
  }

  v15 = v8;
  LOBYTE(v57[0]) = 0;
  sub_252950ADC(&qword_27F540498);
  sub_252E37C64();
  v20 = v3;
  LOBYTE(v58) = 1;
  sub_252950A60();
  sub_252E37C64();
  v21 = v56;
  v22 = v6;
  v23 = v57[0];
  LOBYTE(v57[0]) = 2;
  v52 = sub_252E37C04();
  v53 = v23;
  v54 = v24;
  LOBYTE(v57[0]) = 3;
  v25 = sub_252E37BA4();
  v46 = v15;
  v48 = v11;
  v50 = v26;
  v51 = v20;
  v27 = v25;
  type metadata accessor for HomeStore();
  v28 = static HomeStore.shared.getter();
  v29 = sub_2529D984C();

  MEMORY[0x28223BE20](v30);
  v32 = v52;
  v31 = v53;
  *(&v44 - 6) = v22;
  *(&v44 - 5) = v32;
  *(&v44 - 4) = v54;
  *(&v44 - 3) = v27;
  v45 = v27;
  *(&v44 - 2) = v50;
  *(&v44 - 1) = v31;
  v33 = sub_2529A3DE8(sub_252D98C7C, (&v44 - 8), v29);
  v47 = 0;

  v49 = v33;
  if (!v33)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v38 = sub_252E36AD4();
    v39 = __swift_project_value_buffer(v38, qword_27F544CB8);
    sub_252CC4050(0xD000000000000021, 0x8000000252E9B090, 0xD00000000000006ALL, 0x8000000252E9B0C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 43);
    strcpy(v57, "identifier: ");
    BYTE5(v57[1]) = 0;
    HIWORD(v57[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8);
    v40 = sub_252E37D94();
    MEMORY[0x2530AD570](v40);

    sub_252CC4050(v57[0], v57[1], 0xD00000000000006ALL, 0x8000000252E9B0C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 44);

    v57[0] = 0x203A656D616ELL;
    v57[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v52, v54);

    sub_252CC4050(v57[0], v57[1], 0xD00000000000006ALL, 0x8000000252E9B0C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 45);

    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    sub_252E379F4();

    v57[0] = 0xD000000000000015;
    v57[1] = 0x8000000252E6AA20;
    v58 = v45;
    v59 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v41 = sub_252E36F94();
    MEMORY[0x2530AD570](v41);

    sub_252CC4050(v57[0], v57[1], 0xD00000000000006ALL, 0x8000000252E9B0C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 46);

    strcpy(v57, "entityType: ");
    BYTE5(v57[1]) = 0;
    HIWORD(v57[1]) = -5120;
    v58 = v53;
    v42 = sub_252E36F94();
    MEMORY[0x2530AD570](v42);

    v14 = v39;
    sub_252CC4050(v57[0], v57[1], 0xD00000000000006ALL, 0x8000000252E9B0C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 47);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v46 + 8))(v48, v7);
    (*(v55 + 8))(v22, v51);
    v16 = v21;
    goto LABEL_4;
  }

  v34 = v49;

  v35 = *(v34 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate);

  v14 = v60;
  *(v60 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate) = v35;
  sub_252929E74(v21, v57);
  v36 = v47;
  v37 = Entity.init(from:)(v57);
  if (v36)
  {
    (*(v15 + 8))(v48, v7);

    (*(v55 + 8))(v22, v51);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v14 = v37;
    (*(v15 + 8))(v48, v7);

    v43 = *(v55 + 8);

    v43(v22, v51);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return v14;
}

BOOL sub_252D98098(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  if (sub_252E32E54())
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a3 && *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a4;
    if (v13 || (sub_252E37DB4() & 1) != 0)
    {
      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (a6)
      {
        if (v14)
        {
          v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a5 && v14 == a6;
          if (v15 || (sub_252E37DB4() & 1) != 0)
          {
            return a7 == 2;
          }
        }
      }

      else if (!v14)
      {
        return a7 == 2;
      }
    }
  }

  return 0;
}

uint64_t sub_252D98194(void *a1)
{
  v2 = v1;
  type metadata accessor for HomeStore();
  v4 = static HomeStore.shared.getter();
  v5 = sub_2529F55F8(a1);

  v8 = v2;
  v7[2] = &v8;
  LOBYTE(v2) = sub_252A00B58(sub_2529509E4, v7, v5);

  return v2 & 1;
}

uint64_t sub_252D9822C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 accessories];
  sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
  v4 = sub_252E37264();

  v16 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = type metadata accessor for Accessory();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      sub_252D4CE7C(v8);
      MEMORY[0x2530AD700]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v6;
      if (v9 == i)
      {
        v13 = v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_17:

  *a2 = v13;
  return result;
}

uint64_t sub_252D983F4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate);
  v3 = &off_279711000;
  v4 = [v2 rooms];
  sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
  v5 = sub_252E37264();

  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    if (!i)
    {
      v21 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v22 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      return v21;
    }

    sub_252E379F4();
    v8 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v7 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    v27 = v8;
    MEMORY[0x2530AD570](0x736D6F6F72207B20, 0xEA0000000000203ALL);
    v9 = [v2 v3[337]];
    v2 = sub_252E37264();

    if (v2 >> 62)
    {
      break;
    }

    v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_6:
    v1 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2530ADF00](v1, v2);
      }

      else
      {
        if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(v2 + 8 * v1 + 32);
      }

      v13 = v12;
      v14 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v15 = [v12 name];
      v16 = sub_252E36F34();
      v3 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2529F7A80(0, *(v11 + 2) + 1, 1, v11);
      }

      v19 = *(v11 + 2);
      v18 = *(v11 + 3);
      if (v19 >= v18 >> 1)
      {
        v11 = sub_2529F7A80((v18 > 1), v19 + 1, 1, v11);
      }

      *(v11 + 2) = v19 + 1;
      v20 = &v11[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v3;
      ++v1;
      if (v14 == v10)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v10 = sub_252E378C4();
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_23:
  v11 = MEMORY[0x277D84F90];
LABEL_24:

  v23 = MEMORY[0x2530AD730](v11, MEMORY[0x277D837D0]);
  v25 = v24;

  MEMORY[0x2530AD570](v23, v25);

  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  return v27;
}

char *sub_252D98704()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate);
  v3 = [v2 rooms];
  sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
  v4 = sub_252E37264();

  if (v4 >> 62)
  {
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
    v20 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v21 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    return v20;
  }

  v6 = [v2 rooms];
  v7 = sub_252E37264();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_18:

LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_2529508A0();
    v22 = sub_252E36EA4();
    v24 = v23;

    sub_252E379F4();
    v26 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v25 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    MEMORY[0x2530AD570](0x6F6F7220200A7B20, 0xED00005B203A736DLL);
    MEMORY[0x2530AD570](v22, v24);

    MEMORY[0x2530AD570](8194653, 0xE300000000000000);
    v20 = sub_252AD24A4();

    return v20;
  }

  v8 = sub_252E378C4();
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_6:
  v28 = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v27 = v1;
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2530ADF00](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 name];
      v14 = sub_252E36F34();
      v16 = v15;

      v18 = *(v28 + 16);
      v17 = *(v28 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2529AA3A0((v17 > 1), v18 + 1, 1);
      }

      ++v10;
      *(v28 + 16) = v18 + 1;
      v19 = v28 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v8 != v10);

    v1 = v27;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t Zone.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  return v0;
}

uint64_t Zone.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Zone()
{
  result = qword_2814B0840;
  if (!qword_2814B0840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252D98CA4()
{
  v0 = sub_252E33944();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_252E33924();
  return sub_252E33F54();
}

unint64_t sub_252D98D38()
{
  sub_252E379F4();

  v0 = sub_252BDAF00();
  v1 = (*(v0 + 16))(&type metadata for UserIsAdmin, v0);
  MEMORY[0x2530AD570](v1);

  MEMORY[0x2530AD570](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_252D98DE0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_252E32E84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v31) = (*(a4 + 24))(a1, a2, a3, a4);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  v32 = __swift_project_value_buffer(v13, qword_27F544D60);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_252E379F4();
  v14 = *(a4 + 8);
  v15 = sub_252E37DC4();
  v17 = v16;

  v33 = v15;
  v34 = v17;
  MEMORY[0x2530AD570](0x65737520726F6620, 0xEA00000000002072);
  v18 = [a1 uniqueIdentifier];
  sub_252E32E64();

  sub_252D9C70C(&qword_27F5404A8, 255, MEMORY[0x277CC95F0]);
  v19 = sub_252E37D94();
  MEMORY[0x2530AD570](v19);

  v20 = *(v9 + 8);
  v20(v12, v8);
  MEMORY[0x2530AD570](0x656D6F68206E6920, 0xEA0000000000203ALL);
  v21 = [a2 name];
  v22 = sub_252E36F34();
  v24 = v23;

  MEMORY[0x2530AD570](v22, v24);

  MEMORY[0x2530AD570](45, 0xE100000000000000);
  v25 = [a2 uniqueIdentifier];
  sub_252E32E64();

  v26 = sub_252E37D94();
  MEMORY[0x2530AD570](v26);

  v20(v12, v8);
  MEMORY[0x2530AD570](0x7461756C61766520, 0xEB00000000206465);
  v27 = BYTE4(v31) & 1;
  if ((v31 & 0x100000000) != 0)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if ((v31 & 0x100000000) != 0)
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v28, v29);

  sub_252CC3D90(v33, v34, 0xD00000000000007ALL, 0x8000000252E9B210);

  return v27;
}

id sub_252D991B8(uint64_t a1, id a2)
{
  v2 = [a2 homeAccessControlForUser_];
  v3 = [v2 isAdministrator];

  return v3;
}

uint64_t sub_252D99214()
{
  v1 = [v0 users];
  sub_252D9C754();
  v2 = sub_252E37264();

  v7 = v2;
  v3 = [v0 currentUser];
  MEMORY[0x2530AD700]();
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  v4 = sub_252C76B30(v7);

  return v4;
}

uint64_t sub_252D99304(id *a1, uint64_t a2)
{
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445D0, &qword_252E54DB8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  v21 = [*a1 uniqueIdentifier];
  sub_252E32E64();

  (*(v5 + 56))(v20, 0, 1, v4);
  v22 = *(v10 + 56);
  sub_252C4AE84(v20, v13);
  sub_252C4AE84(a2, &v13[v22]);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) != 1)
  {
    sub_252C4AE84(v13, v18);
    if (v23(&v13[v22], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v13[v22], v4);
      sub_252D9C70C(&qword_27F540D48, 255, MEMORY[0x277CC95F0]);
      v24 = sub_252E36EF4();
      v25 = *(v5 + 8);
      v25(v8, v4);
      sub_25293847C(v20, &unk_27F541F20, &qword_252E3C180);
      v25(v18, v4);
      sub_25293847C(v13, &unk_27F541F20, &qword_252E3C180);
      return v24 & 1;
    }

    sub_25293847C(v20, &unk_27F541F20, &qword_252E3C180);
    (*(v5 + 8))(v18, v4);
    goto LABEL_6;
  }

  sub_25293847C(v20, &unk_27F541F20, &qword_252E3C180);
  if (v23(&v13[v22], 1, v4) != 1)
  {
LABEL_6:
    sub_25293847C(v13, &qword_27F5445D0, &qword_252E54DB8);
    v24 = 0;
    return v24 & 1;
  }

  sub_25293847C(v13, &unk_27F541F20, &qword_252E3C180);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_252D996C0(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v3 = sub_252E33B54();
  v2[51] = v3;
  v4 = *(v3 - 8);
  v2[52] = v4;
  v5 = *(v4 + 64) + 15;
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v6 = sub_252E34014();
  v2[55] = v6;
  v7 = *(v6 - 8);
  v2[56] = v7;
  v8 = *(v7 + 64) + 15;
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v9 = sub_252E36AB4();
  v2[60] = v9;
  v10 = *(v9 - 8);
  v2[61] = v10;
  v11 = *(v10 + 64) + 15;
  v2[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D9985C, 0, 0);
}

uint64_t sub_252D9985C()
{
  v1 = v0[50];
  v2 = *(v1 + 16);
  v0[63] = v2;
  if (v2)
  {
    v3 = qword_27F53F600;
    v4 = v2;
    if (v3 != -1)
    {
LABEL_27:
      swift_once();
      v1 = v0[50];
    }

    v5 = v0[62];
    v6 = qword_27F544F88;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    v7 = *(v1 + 32);
    v8 = v7 + 32;
    v9 = -*(v7 + 16);
    v10 = -1;
    do
    {
      if (v9 + v10 == -1)
      {
        v31 = v0[61];
        v30 = v0[62];
        v32 = v0[60];
        v33 = v0[49];
        v34 = v0[50];
        sub_252E375C4();
        sub_252E36A74();
        (*(v31 + 8))(v30, v32);
        v35 = *(v34 + 48);
        sub_252E33B04();

        goto LABEL_16;
      }

      if (++v10 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v11 = v8 + 40;
      sub_252929E74(v8, (v0 + 7));
      v12 = v0[10];
      v13 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v12);
      LOBYTE(v12) = sub_252D98DE0(v4, *(v1 + 24), v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      v8 = v11;
    }

    while ((v12 & 1) != 0);
    v15 = v0[61];
    v14 = v0[62];
    v16 = v0[60];
    sub_252E375C4();
    sub_252E36A74();
    (*(v15 + 8))(v14, v16);
    v17 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v17 + 288), (v0 + 12));

    v18 = v0[15];
    v19 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v18);
    LOBYTE(v14) = (*(v19 + 120))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    if (v14)
    {
      v20 = v0[59];
      sub_252929E74(v0[50] + 104, (v0 + 27));
      v21 = v0[31];
      __swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);
      sub_252B03B94();
      v22 = swift_task_alloc();
      v0[64] = v22;
      *v22 = v0;
      v22[1] = sub_252D99F44;
      v23 = v0[59];
      v24 = v0[50];

      return sub_252A199A8((v0 + 22), &unk_252E5FD60, v24, &unk_252E5FD68, 0, v23, 0, 0);
    }

    v43 = v0[58];
    sub_252929E74(v0[50] + 104, (v0 + 17));
    v44 = v0[20];
    v45 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v44);
    sub_252D98CA4();
    v46 = swift_task_alloc();
    v0[66] = v46;
    *v46 = v0;
    v46[1] = sub_252D9A23C;
    v47 = v0[58];
    v48 = v0[54];
    v49 = v0[50];
    v50 = &unk_252E5FD50;
    v51 = v44;
    goto LABEL_23;
  }

  if (!*(v1 + 40))
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
      v1 = v0[50];
    }

    v52 = v0[57];
    v53 = sub_252E36AD4();
    v0[68] = v53;
    __swift_project_value_buffer(v53, qword_27F544DA8);
    sub_252CC4050(0xD00000000000005BLL, 0x8000000252E9B1B0, 0xD00000000000007ALL, 0x8000000252E9B210, 0x2865747563657865, 0xE900000000000029, 285);
    sub_252929E74(v1 + 104, (v0 + 2));
    v54 = v0[5];
    v45 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v54);
    sub_252D98CA4();
    v55 = swift_task_alloc();
    v0[69] = v55;
    *v55 = v0;
    v55[1] = sub_252D9A488;
    v47 = v0[57];
    v48 = v0[53];
    v49 = v0[50];
    v50 = &unk_252E5FD38;
    v51 = v54;
LABEL_23:

    return sub_252BDCFAC(v48, v50, v49, v47, v51, v45);
  }

  v26 = qword_27F53F500;
  v27 = *(v1 + 40);

  if (v26 != -1)
  {
    swift_once();
  }

  v28 = v0[49];
  v29 = sub_252E36AD4();
  __swift_project_value_buffer(v29, qword_27F544DA8);
  sub_252CC4050(0xD00000000000005ELL, 0x8000000252E9B2C0, 0xD00000000000007ALL, 0x8000000252E9B210, 0x2865747563657865, 0xE900000000000029, 281);
  sub_252E33B04();

LABEL_16:
  v36 = v0[62];
  v37 = v0[58];
  v38 = v0[59];
  v39 = v0[57];
  v41 = v0[53];
  v40 = v0[54];

  v42 = v0[1];

  return v42();
}

uint64_t sub_252D99F44()
{
  v2 = *(*v1 + 512);
  v3 = *(*v1 + 472);
  v4 = *(*v1 + 448);
  v5 = *(*v1 + 440);
  v8 = *v1;
  *(*v1 + 520) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252D9A8A0;
  }

  else
  {
    v6 = sub_252D9A0B4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252D9A0B4()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 392);
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v3 + 96), v0 + 256);

  sub_252929E74(v0 + 176, v0 + 296);
  v4 = swift_allocObject();
  sub_252A52D18((v0 + 296), v4 + 16);
  v5 = sub_252E331C4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v0 + 384) = sub_252E331B4();
  sub_252E33604();

  sub_252E33B04();

  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  v8 = *(v0 + 496);
  v9 = *(v0 + 464);
  v10 = *(v0 + 472);
  v11 = *(v0 + 456);
  v13 = *(v0 + 424);
  v12 = *(v0 + 432);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252D9A23C()
{
  v2 = *(*v1 + 528);
  v3 = *(*v1 + 464);
  v4 = *(*v1 + 448);
  v5 = *(*v1 + 440);
  v8 = *v1;
  *(*v1 + 536) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252D9AA80;
  }

  else
  {
    v6 = sub_252D9A3AC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252D9A3AC()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v4 = *(v0 + 392);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  (*(v3 + 32))(v4, v1, v2);
  v5 = *(v0 + 496);
  v6 = *(v0 + 464);
  v7 = *(v0 + 472);
  v8 = *(v0 + 456);
  v10 = *(v0 + 424);
  v9 = *(v0 + 432);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252D9A488()
{
  v2 = *(*v1 + 552);
  v3 = *(*v1 + 456);
  v4 = *(*v1 + 448);
  v5 = *(*v1 + 440);
  v8 = *v1;
  *(*v1 + 560) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252D9A6CC;
  }

  else
  {
    v6 = sub_252D9A5F8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252D9A5F8()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v4 = v0[49];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[62];
  v6 = v0[58];
  v7 = v0[59];
  v8 = v0[57];
  v10 = v0[53];
  v9 = v0[54];

  v11 = v0[1];

  return v11();
}

uint64_t sub_252D9A6CC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = v0[70];
  v2 = v0[49];
  __swift_project_value_buffer(v0[68], qword_27F544D18);
  sub_252E379F4();
  v0[42] = 0;
  v0[43] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E9B290);
  v0[46] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[42], v0[43], 0xD00000000000007ALL, 0x8000000252E9B210, 0x2865747563657865, 0xE900000000000029, 298);

  sub_252E33B24();

  v3 = v0[62];
  v4 = v0[58];
  v5 = v0[59];
  v6 = v0[57];
  v8 = v0[53];
  v7 = v0[54];

  v9 = v0[1];

  return v9();
}

uint64_t sub_252D9A8A0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  v1 = v0[65];
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v2 = v0[63];
  v3 = v0[49];
  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544D18);
  sub_252E379F4();
  v0[44] = 0;
  v0[45] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E9B290);
  v0[47] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[44], v0[45], 0xD00000000000007ALL, 0x8000000252E9B210, 0x2865747563657865, 0xE900000000000029, 338);

  sub_252E33B24();

  v5 = v0[62];
  v6 = v0[58];
  v7 = v0[59];
  v8 = v0[57];
  v10 = v0[53];
  v9 = v0[54];

  v11 = v0[1];

  return v11();
}

uint64_t sub_252D9AA80()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v1 = v0[67];
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v2 = v0[63];
  v3 = v0[49];
  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544D18);
  sub_252E379F4();
  v0[44] = 0;
  v0[45] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E9B290);
  v0[47] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[44], v0[45], 0xD00000000000007ALL, 0x8000000252E9B210, 0x2865747563657865, 0xE900000000000029, 338);

  sub_252E33B24();

  v5 = v0[62];
  v6 = v0[58];
  v7 = v0[59];
  v8 = v0[57];
  v10 = v0[53];
  v9 = v0[54];

  v11 = v0[1];

  return v11();
}

uint64_t sub_252D9AC60(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for HomeAutomationUnrecognizedUserParameters(0);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D9AD2C, 0, 0);
}

uint64_t sub_252D9AD2C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *__swift_project_boxed_opaque_existential_1((v0[2] + 184), *(v0[2] + 208));
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  *(v1 + *(v2 + 20)) = 0;
  v7 = v1 + *(v2 + 24);
  *v7 = 0x4020000000000000;
  *(v7 + 8) = 0;
  sub_252E37024();
  v6(v3, 0, 1, v5);
  sub_252A909F4(v3, v1, &qword_27F540298, &unk_252E3C270);
  v8 = sub_252C0B2C0();
  v0[6] = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_252D9AEE8;

  return v12(0xD00000000000001FLL, 0x8000000252E953F0, v8);
}

uint64_t sub_252D9AEE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252D9B0C8;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252D9B034;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252D9B034()
{
  v1 = v0[3];
  sub_252D9BD5C(v0[5], type metadata accessor for HomeAutomationUnrecognizedUserParameters);

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_252D9B0C8()
{
  v1 = v0[3];
  sub_252D9BD5C(v0[5], type metadata accessor for HomeAutomationUnrecognizedUserParameters);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_252D9B178()
{
  v0[3] = *(v0[2] + 224);

  sub_252B680FC();
  v1 = sub_252B631FC();
  v0[4] = v1;

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_252D9B244;

  return sub_252D2B9EC(v1);
}

uint64_t sub_252D9B244(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  v5[6] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D9B3A0, 0, 0);
  }

  else
  {
    v6 = v5[3];
    v7 = v5[4];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_252D9B3A0()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

uint64_t sub_252D9B40C(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for HomeAutomationUnauthorizedUserParameters(0);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D9B4D8, 0, 0);
}

uint64_t sub_252D9B4D8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *__swift_project_boxed_opaque_existential_1((v0[2] + 184), *(v0[2] + 208));
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  *(v1 + v2[5]) = 0;
  v7 = v1 + v2[6];
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v1 + v2[7]) = 0;
  *v7 = 0x4020000000000000;
  *(v7 + 8) = 0;
  sub_252E37024();
  v6(v3, 0, 1, v5);
  sub_252A909F4(v3, v1, &qword_27F540298, &unk_252E3C270);
  v8 = sub_252C0AC58();
  v0[6] = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_252D9B6AC;

  return v12(0xD00000000000001FLL, 0x8000000252E88260, v8);
}

uint64_t sub_252D9B6AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252D9B88C;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252D9B7F8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252D9B7F8()
{
  v1 = v0[3];
  sub_252D9BD5C(v0[5], type metadata accessor for HomeAutomationUnauthorizedUserParameters);

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_252D9B88C()
{
  v1 = v0[3];
  sub_252D9BD5C(v0[5], type metadata accessor for HomeAutomationUnauthorizedUserParameters);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_252D9B91C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v4 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  v5 = *(v0 + 224);

  return v0;
}

uint64_t sub_252D9B98C()
{
  sub_252D9B91C();

  return swift_deallocClassInstance();
}

uint64_t sub_252D9B9E4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252D996C0(a1);
}

uint64_t sub_252D9BA80()
{
  type metadata accessor for HomeAccessControlValidatingFlow();

  return sub_252E33644();
}

uint64_t sub_252D9BAB8(uint64_t a1, uint64_t a2)
{
  result = sub_252D9C70C(&qword_27F543D10, a2, type metadata accessor for HomeAccessControlValidatingFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_252D9BB10()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D9AC60(v0);
}

uint64_t sub_252D9BBA0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D9B40C(v0);
}

uint64_t sub_252D9BC30()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252D9B158(v0);
}

uint64_t sub_252D9BCC0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return sub_252A738CC(a1, v1 + 16);
}

uint64_t sub_252D9BD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_252D9BDBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a3;
  v71 = a4;
  v69 = a2;
  v5 = sub_252E36AB4();
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v9 = *(*(v68 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v68);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v60 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v18 + 16), &v73);

  __swift_project_boxed_opaque_existential_1(&v73, v75);
  v19 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(&v73);
  if (v19)
  {
    v62 = v12;
    v65 = a1;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_27F544D60);
    sub_252CC3D90(0xD000000000000037, 0x8000000252E9B360, 0xD00000000000007ALL, 0x8000000252E9B210);
    v21 = sub_252E32E84();
    v22 = *(v21 - 8);
    v61 = *(v22 + 56);
    v60 = v22 + 56;
    v61(v17, 1, 1, v21);
    sub_252E33814();
    __swift_project_boxed_opaque_existential_1(&v73, v75);
    sub_252E33EB4();
    __swift_project_boxed_opaque_existential_1(v72, v72[3]);
    v23 = sub_252E33E74();
    v64 = v17;
    if (v24)
    {
      v25 = v23;
      v26 = v24;
      __swift_destroy_boxed_opaque_existential_1(v72);
      __swift_destroy_boxed_opaque_existential_1(&v73);
      sub_252E32E14();
      sub_252A909F4(v15, v17, &unk_27F541F20, &qword_252E3C180);
      v73 = 0;
      v74 = 0xE000000000000000;
      sub_252E379F4();

      v73 = 0xD00000000000002BLL;
      v74 = 0x8000000252E9B3F0;
      MEMORY[0x2530AD570](v25, v26);

      sub_252CC3D90(v73, v74, 0xD00000000000007ALL, 0x8000000252E9B210);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v72);
      __swift_destroy_boxed_opaque_existential_1(&v73);
    }

    v63 = "g unrecognized user dialog.";
    if (qword_27F53F600 != -1)
    {
      swift_once();
    }

    v30 = qword_27F544F88;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    sub_252CC3D90(0xD000000000000011, 0x8000000252E9B3A0, 0xD00000000000006BLL, 0x8000000252E6C470);
    v61(v15, 1, 1, v21);
    sub_252E375C4();
    v59 = MEMORY[0x277D84F90];
    v58 = 2;
    v57 = 21;
    sub_252E36A74();
    (*(v66 + 8))(v8, v67);
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_252E379F4();

    v73 = 0xD000000000000021;
    v74 = 0x8000000252E9B3C0;
    sub_252C4AE84(v15, v62);
    v31 = sub_252E36F94();
    MEMORY[0x2530AD570](v31);

    sub_252CC3D90(v73, v74, 0xD00000000000007ALL, v63 | 0x8000000000000000);

    v29 = v65;
    v32 = sub_252D99214();
    MEMORY[0x28223BE20](v32);
    v59 = v15;
    sub_2529A1BC4(sub_252D9C6EC, &v57, v32);
    v27 = v33;

    sub_25293847C(v64, &unk_27F541F20, &qword_252E3C180);
    v34 = v27;
    sub_25293847C(v15, &unk_27F541F20, &qword_252E3C180);
  }

  else
  {
    v27 = [a1 currentUser];
    v28 = v27;
    v29 = a1;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v35 = sub_252E36AD4();
  __swift_project_value_buffer(v35, qword_27F544D60);
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_252E379F4();

  v73 = 0xD00000000000001BLL;
  v74 = 0x8000000252E9B320;
  v72[0] = v27;
  v36 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545D78, &unk_252E5FD80);
  v37 = sub_252E36F94();
  MEMORY[0x2530AD570](v37);

  sub_252CC3D90(v73, v74, 0xD00000000000007ALL, 0x8000000252E9B210);

  type metadata accessor for HomeAccessControlValidatingFlow();
  v38 = swift_allocObject();
  v38[2] = 0;
  if (v27)
  {
    v68 = v36;
    v39 = v36;
    v40 = sub_252D99214();
    v41 = sub_252DA0784(v39, v40);

    v73 = 0;
    v74 = 0xE000000000000000;
    sub_252E379F4();

    v73 = 0xD000000000000014;
    v74 = 0x8000000252E9B340;
    v42 = v41 & 1;
    if (v41)
    {
      v43 = 1702195828;
    }

    else
    {
      v43 = 0x65736C6166;
    }

    if (v41)
    {
      v44 = 0xE400000000000000;
    }

    else
    {
      v44 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v43, v44);

    sub_252CC3D90(v73, v74, 0xD00000000000007ALL, 0x8000000252E9B210);

    v45 = v27;
    if (!v42)
    {

      v45 = 0;
    }

    v36 = v68;
  }

  else
  {
    v45 = 0;
  }

  v38[2] = v27;

  v46 = v69;
  v47 = v70;
  v38[3] = v29;
  v38[4] = v46;
  v38[5] = v71;
  v38[6] = v47;
  v48 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v48 + 16), (v38 + 7));

  v49 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v50 = *(v49 + 22);

  v38[12] = v50;
  v51 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v51 + 136), (v38 + 13));

  v52 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v52 + 96), (v38 + 18));

  v53 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v38[26] = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v38[27] = &off_2864BA730;
  v38[23] = v53;
  v54 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();

  swift_beginAccess();
  v55 = *(v54 + 23);

  v38[28] = v55;
  return v38;
}

uint64_t sub_252D9C70C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_252D9C754()
{
  result = qword_27F540E58;
  if (!qword_27F540E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F540E58);
  }

  return result;
}

unint64_t sub_252D9C7B0(uint64_t a1)
{
  result = sub_252D9C7D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_252D9C7D8()
{
  result = qword_27F545D80;
  if (!qword_27F545D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545D80);
  }

  return result;
}

uint64_t sub_252D9C840(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252D9CC04(a1);
}

uint64_t sub_252D9C8E8(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 96);
  v3 = *(result + 144);
  v4 = *(result + 192);
  v5 = *(v3 + 16);
  while (1)
  {
    if (v5 == v1)
    {
      v8 = *(v4 + 16);

      v9 = 0;
      while (v8 != v9)
      {
        if (v9 >= *(v4 + 16))
        {
          goto LABEL_41;
        }

        v11 = *(v4 + v9 + 32);
        if (StateSemantic.rawValue.getter() == 0x6573756170 && v12 == 0xE500000000000000)
        {
          goto LABEL_17;
        }

        v13 = sub_252E37DB4();

        if (v13)
        {
          goto LABEL_18;
        }

        if (StateSemantic.rawValue.getter() == 0x656D75736572 && v14 == 0xE600000000000000)
        {
LABEL_17:

LABEL_18:

          v15 = MEMORY[0x277D84F90];
          v28 = MEMORY[0x277D84F90];
          v16 = *(v2 + 16);
          if (!v16)
          {
LABEL_23:
            v21 = (v15 + 40);
            v22 = *(v15 + 16) + 1;
            while (--v22)
            {
              v23 = *(v21 - 1);
              v24 = *v21;
              if (v23 != 0xD000000000000015 || 0x8000000252E64CC0 != v24)
              {
                v26 = *(v21 - 1);
                v27 = *v21;
                if ((sub_252E37DB4() & 1) == 0 && (v23 != 0xD000000000000017 || 0x8000000252E64CA0 != v24) && (sub_252E37DB4() & 1) == 0 && (v23 != 0xD000000000000016 || 0x8000000252E64CE0 != v24))
                {
                  v21 += 2;
                  if ((sub_252E37DB4() & 1) == 0)
                  {
                    continue;
                  }
                }
              }

              return 1;
            }

            break;
          }

          v17 = 0;
          while (v17 < *(v2 + 16))
          {
            v18 = v17 + 1;
            v19 = *(v2 + 32 + 8 * v17);

            result = sub_25297AB2C(v20);
            v17 = v18;
            if (v16 == v18)
            {
              v15 = v28;
              goto LABEL_23;
            }
          }

          goto LABEL_40;
        }

        v10 = sub_252E37DB4();

        ++v9;
        if (v10)
        {
          goto LABEL_18;
        }
      }

LABEL_37:

      return 0;
    }

    if (v1 >= *(v3 + 16))
    {
      break;
    }

    v29 = *(v3 + 32 + v1);
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v7)
    {
      goto LABEL_37;
    }

    ++v1;
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_252D9CC04(void *__src)
{
  *(v1 + 1024) = __src;
  memcpy((v1 + 16), __src, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252D9CC78, 0, 0);
}

uint64_t sub_252D9CC78()
{
  v18 = v0;
  v1 = v0[128];
  v2 = v0[20];
  v14 = v1[6];
  v15 = v1[7];
  v16 = v1[8];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v8 = *v1;
  v9 = v1[1];
  memcpy(__dst, v1 + 152, sizeof(__dst));
  sub_2529353AC((v0 + 2), (v0 + 65));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2529F80DC(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_2529F80DC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v2[v4 + 32] = 50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v5 = swift_allocObject();
  *(v5 + 112) = v13;
  *(v5 + 128) = v14;
  *(v5 + 144) = v15;
  *(v5 + 160) = v16;
  *(v5 + 48) = v9;
  *(v5 + 64) = v10;
  *(v5 + 80) = v11;
  *(v5 + 96) = v12;
  *(v5 + 16) = xmmword_252E3C290;
  *(v5 + 32) = v8;
  *(v5 + 176) = v2;
  memcpy((v5 + 184), __dst, 0x160uLL);
  v6 = v0[1];

  return v6(v5);
}

uint64_t DirectInvocationConfig.Builder.build()()
{
  v1 = *v0;
  sub_252A75B60();
  v2 = v1;

  return sub_252E33054();
}

uint64_t DirectInvocationConfig.action.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);

  return sub_252E33074();
}

uint64_t sub_252D9CE98(id *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

uint64_t DirectInvocationConfig.action.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);

  return sub_252E33084();
}

void (*DirectInvocationConfig.action.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  *(v3 + 32) = sub_252E33064();
  return sub_25292E00C;
}

uint64_t DirectInvocationConfig.id.getter()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E32E74();
  v5 = sub_252E32E24();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_252D9D098()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252D9D0FC()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252D9D148@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_252D9D1C8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_252E37B74();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_252D9D220(uint64_t a1)
{
  v2 = sub_252D9D598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252D9D25C(uint64_t a1)
{
  v2 = sub_252D9D598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DirectInvocationConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545D90, &qword_252E5FE38);
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DirectInvocationConfig();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D9D598();
  v16 = v23;
  sub_252E37F74();
  if (!v16)
  {
    v17 = v22;
    sub_252AA8EEC(&qword_27F542A30);
    sub_252E37C64();
    sub_252E33074();
    (*(v20 + 8))(v6, v3);
    sub_252A75B60();
    sub_252E33054();
    (*(v17 + 8))(v10, v7);
    sub_252D9D5EC(v14, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for DirectInvocationConfig()
{
  result = qword_27F545DA8;
  if (!qword_27F545DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_252D9D598()
{
  result = qword_27F545D98;
  if (!qword_27F545D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545D98);
  }

  return result;
}

uint64_t sub_252D9D5EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectInvocationConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DirectInvocationConfig.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v14 = *(v2 - 8);
  v3 = *(v14 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545DA0, &qword_252E5FE40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D9D598();
  sub_252E37F84();
  sub_252E33074();
  sub_252A75B60();
  sub_252E33054();
  sub_252AA8EEC(&qword_27F542A58);
  sub_252E37D54();
  (*(v14 + 8))(v5, v2);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_252D9D8B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E32E74();
  v7 = sub_252E32E24();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  return result;
}

void sub_252D9D9B4()
{
  sub_252BD3D94();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_252D9DA20(uint64_t *a1, int a2)
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

uint64_t sub_252D9DA68(uint64_t result, int a2, int a3)
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

unint64_t sub_252D9DAC8()
{
  result = qword_27F545DB8;
  if (!qword_27F545DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545DB8);
  }

  return result;
}

unint64_t sub_252D9DB20()
{
  result = qword_27F545DC0;
  if (!qword_27F545DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545DC0);
  }

  return result;
}

unint64_t sub_252D9DB78()
{
  result = qword_27F545DC8;
  if (!qword_27F545DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545DC8);
  }

  return result;
}

uint64_t sub_252D9DBCC()
{
  v113 = sub_252E36324();
  v96 = *(v113 - 8);
  v1 = *(v96 + 64);
  v2 = MEMORY[0x28223BE20](v113);
  v94 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v95 = &v93 - v4;
  v112 = sub_252E36CA4();
  v5 = *(v112 - 8);
  v6 = *(v5 + 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_252E36D04();
  v8 = *(v110 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v110);
  v109 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v108 = &v93 - v13;
  v114 = *(v0 + 24);
  if (v114 >> 62)
  {
    goto LABEL_86;
  }

  v14 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_87:
    v8 = MEMORY[0x277D84FA0];
LABEL_88:
    if (sub_252DB4F4C(27, v8))
    {
      v8 = sub_2529ABE40(&unk_2864ADE68, v8);
    }

    if (sub_252DB4F4C(3, v8) & 1) != 0 || (sub_252DB4F4C(4, v8))
    {
      v127[0] = sub_2529ABE40(&unk_2864ADE90, v8);
      sub_252DA8D64(v129, 5);
      v8 = v127[0];
    }

    v75 = 1 << *(v8 + 32);
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v77 = v76 & *(v8 + 56);
    v78 = (v75 + 63) >> 6;
    v126 = (v96 + 32);

    v79 = 0;
    v80 = MEMORY[0x277D84F90];
    while (v77)
    {
LABEL_101:
      v82 = *(*(v8 + 48) + ((v79 << 9) | (8 * __clz(__rbit64(v77)))));
      if (qword_27F53F2A8 != -1)
      {
        v90 = v82;
        swift_once();
        v82 = v90;
      }

      v77 &= v77 - 1;
      v83 = off_27F541CD8;
      if (*(off_27F541CD8 + 2))
      {
        v84 = sub_252A488EC(v82);
        if (v85)
        {
          LOBYTE(v127[0]) = *(v83[7] + v84);
          AttributeSemantic.rawValue.getter();
          v86 = v94;
          sub_252E362F4();
          v125 = *v126;
          v125(v95, v86, v113);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_2529F7F74(0, v80[2] + 1, 1, v80);
          }

          v88 = v80[2];
          v87 = v80[3];
          v89 = v88 + 1;
          if (v88 >= v87 >> 1)
          {
            v124 = v88 + 1;
            v91 = sub_2529F7F74(v87 > 1, v88 + 1, 1, v80);
            v89 = v124;
            v80 = v91;
          }

          v80[2] = v89;
          (v125)(v80 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v88, v95);
        }
      }
    }

    while (1)
    {
      v81 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        break;
      }

      if (v81 >= v78)
      {

        return v80;
      }

      v77 = *(v8 + 56 + 8 * v81);
      ++v79;
      if (v77)
      {
        v79 = v81;
        goto LABEL_101;
      }
    }

    __break(1u);
    goto LABEL_112;
  }

LABEL_3:
  v100 = v14;
  v115 = type metadata accessor for HomeStore();
  v15 = 0;
  v97 = v114 + 32;
  v98 = v114 & 0xFFFFFFFFFFFFFF8;
  v106 = (v96 + 48);
  v107 = v114 & 0xC000000000000001;
  v99 = (v96 + 8);
  v104 = (v5 + 8);
  v105 = v128;
  v103 = (v8 + 8);
  v8 = MEMORY[0x277D84FA0];
  v102 = xmmword_252E3E810;
  v101 = xmmword_252E3C130;
  while (1)
  {
    if (v107)
    {
      v117 = MEMORY[0x2530ADF00](v15);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v15 >= *(v98 + 16))
      {
        goto LABEL_85;
      }

      v117 = *(v97 + 8 * v15);

      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        v14 = sub_252E378C4();
        if (!v14)
        {
          goto LABEL_87;
        }

        goto LABEL_3;
      }
    }

    v116 = v17;
    type metadata accessor for HomeFilter.Builder();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 0;
    *(inited + 32) = 0;
    *(inited + 40) = 7;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
    *(inited + 80) = 0u;
    *(inited + 96) = 0u;
    *(inited + 112) = 0u;
    *(inited + 128) = 0u;
    *(inited + 144) = 0u;
    *(inited + 160) = 0u;
    *(inited + 175) = 0;
    v19 = v108;
    sub_252956C1C(v117 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName, v108);
    v20 = v113;
    if ((*v106)(v19, 1, v113) == 1)
    {
      sub_25293847C(v19, &qword_27F540298, &unk_252E3C270);
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = sub_252E36304();
      v22 = v23;
      (*v99)(v19, v20);
    }

    *(inited + 24) = v21;
    *(inited + 32) = v22;
    v126 = sub_252B719E4();
    swift_setDeallocating();
    HomeFilter.Builder.deinit();
    swift_deallocClassInstance();
    if (qword_2814B0DB8 != -1)
    {
      swift_once();
    }

    sub_252E37604();
    v24 = off_2814B0DC0;
    if (off_2814B0DC0)
    {
    }

    else
    {
      type metadata accessor for LifeCycleManager();
      swift_allocObject();
      v24 = sub_252D7EAE8();
      off_2814B0DC0 = v24;

      sub_252D7E92C();
    }

    sub_252E37614();
    v25 = swift_allocObject();
    *(v25 + 16) = v115;
    v125 = *(v24 + 2);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v102;
    *(v26 + 40) = 0xE900000000000065;
    *(v26 + 48) = sub_2529919D4;
    *(v26 + 56) = v25;
    v128[2] = sub_252D083EC;
    v128[3] = v26;
    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 1107296256;
    v128[0] = sub_252AD686C;
    v128[1] = &block_descriptor_14;
    v27 = _Block_copy(v127);

    v28 = v109;
    sub_252E36CD4();
    v129[0] = MEMORY[0x277D84F90];
    sub_252990E98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_2529905D0();
    v29 = v111;
    v30 = v112;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v28, v29, v27);
    _Block_release(v27);

    (*v104)(v29, v30);
    (*v103)(v28, v110);

    if (qword_2814B0E18 != -1)
    {
      swift_once();
    }

    sub_252E37604();
    v5 = &unk_2814B0000;
    if (qword_2814B0E30)
    {
      v31 = qword_2814B0E30;
    }

    else
    {
      v32 = [objc_allocWithZone(v115) init];
      v33 = qword_2814B0E30;
      qword_2814B0E30 = v32;
      v31 = v32;
    }

    sub_252E37614();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v34 = swift_allocObject();
    *(v34 + 16) = v101;
    v35 = v126;
    *(v34 + 32) = v126;
    v36 = v35;
    v37 = HomeStore.accessories(matching:supporting:)(v34, 0);
    v39 = v38;

    if ((v39 & 1) == 0)
    {
      break;
    }

    sub_252929F10(v37, 1);

LABEL_5:
    v15 = v116;
    if (v116 == v100)
    {
      goto LABEL_88;
    }
  }

  v40 = v37 & 0xFFFFFFFFFFFFFF8;
  if (!(v37 >> 62))
  {
    v41 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

  v41 = sub_252E378C4();
  if (!v41)
  {
LABEL_79:

    sub_252929F10(v37, 0);

    goto LABEL_5;
  }

LABEL_28:
  v42 = 0;
  v122 = v36;
  v123 = v37 & 0xC000000000000001;
  v118 = v37 + 32;
  v119 = v41;
  v120 = v37 & 0xFFFFFFFFFFFFFF8;
  v121 = v37;
  while (1)
  {
    if (v123)
    {
      v43 = MEMORY[0x2530ADF00](v42, v37);
      v16 = __OFADD__(v42++, 1);
      if (v16)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v42 >= *(v40 + 16))
      {
        goto LABEL_82;
      }

      v43 = *(v118 + 8 * v42);

      v16 = __OFADD__(v42++, 1);
      if (v16)
      {
        goto LABEL_81;
      }
    }

    v44 = (*(*v43 + 336))();
    v5 = *(v44 + 16);
    if (v5)
    {
      break;
    }

LABEL_30:

    if (v42 == v41)
    {
      goto LABEL_79;
    }
  }

  v125 = v43;
  v126 = v42;
  v45 = 0;
  v124 = v44;
  v46 = v44 + 32;
  while (2)
  {
    v47 = v8 + 56;
    while (1)
    {
      v48 = *(v46 + 8 * v45++);
      v49 = *(v8 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v48);
      v50 = sub_252E37F14();
      v51 = -1 << *(v8 + 32);
      v52 = v50 & ~v51;
      if (((*(v47 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
      {
        break;
      }

      v53 = ~v51;
      while (*(*(v8 + 48) + 8 * v52) != v48)
      {
        v52 = (v52 + 1) & v53;
        if (((*(v47 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      if (v45 == v5)
      {

LABEL_77:
        v37 = v121;
        v36 = v122;
        v41 = v119;
        v40 = v120;
        v42 = v126;
        goto LABEL_30;
      }
    }

LABEL_47:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v129[0] = v8;
    v55 = *(v8 + 16);
    if (*(v8 + 24) > v55)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v56 = v8;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541688, &qword_252E40950);
        v63 = sub_252E37974();
        v56 = v63;
        if (*(v8 + 16))
        {
          v64 = (v63 + 56);
          v65 = ((1 << *(v56 + 32)) + 63) >> 6;
          if (v56 != v8 || v64 >= v47 + 8 * v65)
          {
            memmove(v64, (v8 + 56), 8 * v65);
          }

          v66 = 0;
          *(v56 + 16) = *(v8 + 16);
          v67 = 1 << *(v8 + 32);
          if (v67 < 64)
          {
            v68 = ~(-1 << v67);
          }

          else
          {
            v68 = -1;
          }

          v69 = v68 & *(v8 + 56);
          for (i = (v67 + 63) >> 6; v69; *(*(v56 + 48) + 8 * v72) = *(*(v8 + 48) + 8 * v72))
          {
            v71 = __clz(__rbit64(v69));
            v69 &= v69 - 1;
            v72 = v71 | (v66 << 6);
LABEL_74:
            ;
          }

          v73 = v66;
          while (1)
          {
            v66 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              goto LABEL_84;
            }

            if (v66 >= i)
            {
              break;
            }

            v74 = *(v47 + 8 * v66);
            ++v73;
            if (v74)
            {
              v69 = (v74 - 1) & v74;
              v72 = __clz(__rbit64(v74)) | (v66 << 6);
              goto LABEL_74;
            }
          }
        }
      }

LABEL_57:
      *(v56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v52;
      *(*(v56 + 48) + 8 * v52) = v48;
      v61 = *(v56 + 16);
      v16 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (!v16)
      {
        *(v56 + 16) = v62;
        v8 = v56;
        if (v45 != v5)
        {
          continue;
        }

        v8 = v56;
        goto LABEL_77;
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    break;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    sub_252DAC434(v55 + 1);
  }

  else
  {
    sub_252DB2DD4(v55 + 1);
  }

  v56 = v129[0];
  v57 = *(v129[0] + 40);
  sub_252E37EC4();
  MEMORY[0x2530AE390](v48);
  v58 = sub_252E37F14();
  v59 = -1 << *(v56 + 32);
  v52 = v58 & ~v59;
  if (((*(v56 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
  {
    goto LABEL_57;
  }

  v60 = ~v59;
  while (*(*(v56 + 48) + 8 * v52) != v48)
  {
    v52 = (v52 + 1) & v60;
    if (((*(v56 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
    {
      goto LABEL_57;
    }
  }

LABEL_112:
  result = sub_252E37E14();
  __break(1u);
  return result;
}