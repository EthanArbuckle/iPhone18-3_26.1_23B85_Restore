uint64_t sub_252C9AFBC()
{
  result = sub_252C9A2AC();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

    if (!v1)
    {
      return 0;
    }

    v2 = *(v1 + 24);
    v3 = *(v1 + 32);

    if (v3)
    {
      return 0;
    }

    result = sub_252C99DD8();
    if (result)
    {
      v4 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

      if (v4)
      {
        v5 = *(v4 + 24);
        v6 = *(v4 + 32);

        if ((v6 & 1) == 0)
        {
          return round(v5) == round(v2);
        }
      }

      return 0;
    }
  }

  return result;
}

BOOL sub_252C9B080()
{
  v0 = sub_252C9A2AC();
  if (v0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
    if (v1)
    {
      v2 = sub_252A47810(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
      if (qword_2864A0BE8 == v2 || unk_2864A0BF0 == v2)
      {
        goto LABEL_18;
      }

      v4 = sub_252E37DB4();

      if (v4)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v5 = sub_252C99DD8();
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
  if (!v6)
  {

    return 0;
  }

  v7 = sub_252A47810(v6 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  if (qword_2864A0BE8 == v7 || unk_2864A0BF0 == v7)
  {
LABEL_18:

    return 1;
  }

  v10 = sub_252E37DB4();

  return (v10 & 1) != 0;
}

uint64_t sub_252C9B2B8()
{
  v0 = sub_252C9A2AC();
  if (v0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
    if (v1)
    {
      v2 = sub_252A47810(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
      v3 = qword_2864A0BE8 == v2 || unk_2864A0BF0 == v2;
      if (!v3 && v2 == 1)
      {
        goto LABEL_22;
      }

      v4 = sub_252E37DB4();

      if (v4)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v5 = sub_252C99DD8();
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
    if (v6)
    {
      v7 = sub_252A47810(v6 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
      v8 = qword_2864A0BE8 == v7 || unk_2864A0BF0 == v7;
      if (!v8 && v7 == 1)
      {
LABEL_22:

        return 1;
      }

      v10 = sub_252E37DB4();

      if (v10)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

id sub_252C9B4DC()
{
  v1 = *(v0 + 208);
  v2 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntent()) init];
  memcpy(v6, (v0 + 209), sizeof(v6));
  sub_252BAC7E4();
  type metadata accessor for HomeFilter();
  v3 = sub_252E37254();

  [v2 setFilters_];

  if (v1 != 9)
  {
    if (sub_252A0D524(v1, 5u))
    {
      v4 = 1;
      goto LABEL_11;
    }

    if (sub_252A0D524(v1, 7u))
    {
      v4 = 2;
      goto LABEL_11;
    }

    if (sub_252A0D524(v1, 6u))
    {
      v4 = 3;
      goto LABEL_11;
    }

    if (sub_252A0D524(v1, 4u))
    {
      v4 = 4;
      goto LABEL_11;
    }
  }

  v4 = 0;
LABEL_11:
  [v2 setDiscoveryType_];
  return v2;
}

uint64_t DeltaSemantic.rawValue.getter()
{
  if (*v0)
  {
    return 0x6573616572636564;
  }

  else
  {
    return 0x6573616572636E69;
  }
}

uint64_t static DeltaSemantic.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_252E37DB4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

HomeAutomationInternal::DeltaSemantic_optional __swiftcall DeltaSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

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

uint64_t sub_252C9B758(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_252E37DB4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_252C9B7D4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C9B840()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252C9B890()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C9B8F8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

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

void sub_252C9B958(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_252C9B984(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_252E37DB4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_252C9BA00(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2)
  {
    v4 = 0x6573616572636564;
  }

  else
  {
    v4 = 0x6573616572636E69;
  }

  if (v3 == v4)
  {
    swift_bridgeObjectRelease_n();
    v5 = 1;
  }

  else
  {
    v6 = sub_252E37DB4();
    swift_bridgeObjectRelease_n();
    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_252C9BA8C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2 == v3)
  {
    swift_bridgeObjectRelease_n();
    v4 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();
    swift_bridgeObjectRelease_n();
    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_252C9BB18(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2)
  {
    v4 = 0x6573616572636564;
  }

  else
  {
    v4 = 0x6573616572636E69;
  }

  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  swift_bridgeObjectRelease_n();
  return v5 & 1;
}

uint64_t sub_252C9BC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C9BE44();
  v5 = sub_252C9BE98();
  v6 = sub_252C9BEEC();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252C9BCC8()
{
  result = qword_27F544970;
  if (!qword_27F544970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544970);
  }

  return result;
}

unint64_t sub_252C9BD20()
{
  result = qword_27F544978;
  if (!qword_27F544978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544978);
  }

  return result;
}

unint64_t sub_252C9BD78()
{
  result = qword_27F544980;
  if (!qword_27F544980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F544988, &qword_252E591E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544980);
  }

  return result;
}

unint64_t sub_252C9BDE0()
{
  result = qword_27F544990;
  if (!qword_27F544990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544990);
  }

  return result;
}

unint64_t sub_252C9BE44()
{
  result = qword_27F544998;
  if (!qword_27F544998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544998);
  }

  return result;
}

unint64_t sub_252C9BE98()
{
  result = qword_27F5449A0;
  if (!qword_27F5449A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5449A0);
  }

  return result;
}

unint64_t sub_252C9BEEC()
{
  result = qword_27F5449A8;
  if (!qword_27F5449A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5449A8);
  }

  return result;
}

uint64_t sub_252C9BF78()
{
  type metadata accessor for SetRangeTemperatureValueHandleDelegate();

  return swift_allocObject();
}

id sub_252C9BFA8(uint64_t a1)
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C70);
  sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E90B00, 0xD00000000000008FLL, 0x8000000252E909D0);
  type metadata accessor for HomeAttributeValue();
  v3 = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  v4 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v5 = sub_252E36F04();
  v6 = [v4 initWithIdentifier:0 displayString:v5];

  v7 = v6;
  [v7 setTaskType_];
  [v7 setAttribute_];
  [v7 setValue_];

  return v7;
}

uint64_t sub_252C9C100(void *a1)
{
  v2 = sub_252CD95D8();
  v3 = *(v2 + 16);
  v4 = 32;
  do
  {
    v5 = v3;
    if (!v3)
    {
      break;
    }

    v6 = *(v2 + v4);
    v4 += 8;
    --v3;
  }

  while (v6 != 19);

  v7 = sub_252CD95D8();
  v8 = *(v7 + 16);
  v9 = 32;
  do
  {
    if (!v8)
    {

      goto LABEL_16;
    }

    v10 = *(v7 + v9);
    v9 += 8;
    --v8;
  }

  while (v10 != 17);

  if (!v5)
  {
LABEL_16:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v46 = sub_252E36AD4();
    __swift_project_value_buffer(v46, qword_27F544C70);
    v47 = 0xD00000000000005ELL;
    v48 = 0x8000000252E90970;
    v49 = 47;
    goto LABEL_22;
  }

  v11 = [a1 userTask];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 value];

    if (v13)
    {
      v14 = [v13 rangeValue];

      if (v14)
      {
        [v14 lowerValue];
        v16 = v15;

        v17 = [a1 userTask];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 value];

          if (v19)
          {
            v20 = [v19 rangeValue];

            if (v20)
            {
              [v20 upperValue];
              v22 = v21;

              v23 = sub_252C6E240(a1);
              v24 = type metadata accessor for HomeAttributeValue();
              v25 = objc_allocWithZone(v24);
              v26 = sub_252E36F04();
              v27 = [v25 initWithIdentifier:0 displayString:v26];

              v28 = v27;
              [v28 setDoubleValue_];
              [v28 setUnit_];
              [v28 setType_];

              v29 = objc_allocWithZone(v24);
              v30 = sub_252E36F04();
              v31 = [v29 initWithIdentifier:0 displayString:v30];

              v32 = v31;
              [v32 setDoubleValue_];
              [v32 setUnit_];
              [v32 setType_];

              v33 = type metadata accessor for HomeUserTask();
              v34 = objc_allocWithZone(v33);
              v35 = v28;
              v36 = sub_252E36F04();
              v37 = [v34 initWithIdentifier:0 displayString:v36];

              v38 = v37;
              [v38 setTaskType_];
              [v38 setAttribute_];
              [v38 setValue_];

              v39 = objc_allocWithZone(v33);
              v40 = v32;
              v41 = sub_252E36F04();
              v42 = [v39 initWithIdentifier:0 displayString:v41];

              v43 = v42;
              [v43 setTaskType_];
              [v43 setAttribute_];
              [v43 setValue_];

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_252E3C3D0;
              *(v44 + 32) = v38;
              *(v44 + 40) = v43;

              return v44;
            }
          }
        }
      }
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v50 = sub_252E36AD4();
  __swift_project_value_buffer(v50, qword_27F544C70);
  v47 = 0xD000000000000028;
  v48 = 0x8000000252E90AD0;
  v49 = 53;
LABEL_22:
  sub_252CC4050(v47, v48, 0xD00000000000008FLL, 0x8000000252E909D0, 0xD00000000000006ELL, 0x8000000252E90A60, v49);
  return 0;
}

id sub_252C9C61C(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_9;
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
LABEL_9:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  v7 = [v5 attribute];

  if (v7 == 6 && (sub_252CCFCB8() & 1) != 0)
  {
    result = [a1 userTask];
    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = [result value];

    if (v10)
    {
      v11 = [v10 type];

      return (v11 == 6);
    }
  }

  return 0;
}

uint64_t sub_252C9C724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449B0, &unk_252E59320);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  HomeDeviceType.umbrellaCategory.getter(a1, &v15 - v4);
  v6 = sub_252E35A84();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  if (v8 == 1)
  {
    sub_252C9E244(v5);
    return 5;
  }

  else
  {
    v10 = *(v7 + 64);
    MEMORY[0x28223BE20](v8);
    v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v12, v5, v6);
    v13 = (*(v7 + 88))(v12, v6);
    if (MEMORY[0x277D16018] && v13 == *MEMORY[0x277D16018])
    {
      v9 = 0;
    }

    else if (MEMORY[0x277D15FC8] && v13 == *MEMORY[0x277D15FC8])
    {
      v9 = 1;
    }

    else if (MEMORY[0x277D15FE8] && v13 == *MEMORY[0x277D15FE8])
    {
      v9 = 2;
    }

    else if (MEMORY[0x277D15FD0] && v13 == *MEMORY[0x277D15FD0])
    {
      v9 = 3;
    }

    else if (MEMORY[0x277D15FF8] && v13 == *MEMORY[0x277D15FF8])
    {
      v9 = 4;
    }

    else
    {
      (*(v7 + 8))(v12, v6);
      v9 = 5;
    }

    (*(v7 + 8))(v5, v6);
  }

  return v9;
}

uint64_t HomeDeviceType.umbrellaCategory.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v56 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D158D8];
      goto LABEL_41;
    case 2:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v52 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15880];
      goto LABEL_41;
    case 3:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v48 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15638];
      goto LABEL_41;
    case 4:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v68 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15758];
      goto LABEL_41;
    case 5:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v44 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15818];
      goto LABEL_41;
    case 6:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v66 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15878];
      goto LABEL_41;
    case 7:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v40 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D156D0];
      goto LABEL_41;
    case 8:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v42 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15748];
      goto LABEL_41;
    case 9:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v64 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D158A8];
      goto LABEL_41;
    case 10:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v54 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D157A0];
      goto LABEL_41;
    case 11:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v72 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D157C0];
      goto LABEL_41;
    case 12:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v30 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D156C8];
      goto LABEL_41;
    case 13:
    case 27:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v5 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15820];
      goto LABEL_41;
    case 14:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v60 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D156F8];
      goto LABEL_41;
    case 15:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v62 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15608];
      goto LABEL_41;
    case 16:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v74 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15670];
      goto LABEL_41;
    case 17:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v70 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D156A8];
      goto LABEL_41;
    case 18:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v24 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15738];
      goto LABEL_41;
    case 19:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v38 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15710];
      goto LABEL_41;
    case 20:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v76 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15680];
      goto LABEL_41;
    case 21:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v26 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15790];
      goto LABEL_41;
    case 22:
    case 28:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v9 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15890];
      goto LABEL_41;
    case 23:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v46 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15728];
      goto LABEL_41;
    case 24:
    case 42:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v11 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D156B8];
      goto LABEL_41;
    case 25:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v78 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15620];
      goto LABEL_41;
    case 26:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v28 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D158B8];
      goto LABEL_41;
    case 29:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v34 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15690];
      goto LABEL_41;
    case 30:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v58 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D157D0];
      goto LABEL_41;
    case 31:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v36 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15840];
      goto LABEL_41;
    case 32:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v80 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15768];
      goto LABEL_41;
    case 33:
    case 35:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v15 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15858];
      goto LABEL_41;
    case 34:
    case 45:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v13 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15860];
      goto LABEL_41;
    case 36:
    case 41:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v17 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15628];
      goto LABEL_41;
    case 38:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v22 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D158C8];
      goto LABEL_41;
    case 39:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v32 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15658];
      goto LABEL_41;
    case 40:
      v3 = sub_252E35A74();
      v4 = *(v3 - 8);
      v50 = *(v4 + 64);
      MEMORY[0x28223BE20](v3);
      v7 = &v83 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = MEMORY[0x277D15778];
LABEL_41:
      (*(v4 + 104))(v7, *v8, v3);
      sub_252E35A44();
      (*(v4 + 8))(v7, v3);
      v82 = sub_252E35A84();
      result = (*(*(v82 - 8) + 56))(a2, 0, 1, v82);
      break;
    default:
      v19 = sub_252E35A84();
      v20 = *(*(v19 - 8) + 56);

      result = v20(a2, 1, 1, v19);
      break;
  }

  return result;
}

uint64_t HomeDeviceType.serviceKind.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v3 = MEMORY[0x277D158D8];
      goto LABEL_39;
    case 2:
      v3 = MEMORY[0x277D15880];
      goto LABEL_39;
    case 3:
      v3 = MEMORY[0x277D15638];
      goto LABEL_39;
    case 4:
      v3 = MEMORY[0x277D15758];
      goto LABEL_39;
    case 5:
      v3 = MEMORY[0x277D15818];
      goto LABEL_39;
    case 6:
      v3 = MEMORY[0x277D15878];
      goto LABEL_39;
    case 7:
      v3 = MEMORY[0x277D156D0];
      goto LABEL_39;
    case 8:
      v3 = MEMORY[0x277D15748];
      goto LABEL_39;
    case 9:
      v3 = MEMORY[0x277D158A8];
      goto LABEL_39;
    case 10:
      v3 = MEMORY[0x277D157A0];
      goto LABEL_39;
    case 11:
      v3 = MEMORY[0x277D157C0];
      goto LABEL_39;
    case 12:
      v3 = MEMORY[0x277D156C8];
      goto LABEL_39;
    case 13:
    case 27:
      v3 = MEMORY[0x277D15820];
      goto LABEL_39;
    case 14:
      v3 = MEMORY[0x277D156F8];
      goto LABEL_39;
    case 15:
      v3 = MEMORY[0x277D15608];
      goto LABEL_39;
    case 16:
      v3 = MEMORY[0x277D15670];
      goto LABEL_39;
    case 17:
      v3 = MEMORY[0x277D156A8];
      goto LABEL_39;
    case 18:
      v3 = MEMORY[0x277D15738];
      goto LABEL_39;
    case 19:
      v3 = MEMORY[0x277D15710];
      goto LABEL_39;
    case 20:
      v3 = MEMORY[0x277D15680];
      goto LABEL_39;
    case 21:
      v3 = MEMORY[0x277D15790];
      goto LABEL_39;
    case 22:
    case 28:
      v3 = MEMORY[0x277D15890];
      goto LABEL_39;
    case 23:
      v3 = MEMORY[0x277D15728];
      goto LABEL_39;
    case 24:
    case 42:
      v3 = MEMORY[0x277D156B8];
      goto LABEL_39;
    case 25:
      v3 = MEMORY[0x277D15620];
      goto LABEL_39;
    case 26:
      v3 = MEMORY[0x277D158B8];
      goto LABEL_39;
    case 29:
      v3 = MEMORY[0x277D15690];
      goto LABEL_39;
    case 30:
      v3 = MEMORY[0x277D157D0];
      goto LABEL_39;
    case 31:
      v3 = MEMORY[0x277D15840];
      goto LABEL_39;
    case 32:
      v3 = MEMORY[0x277D15768];
      goto LABEL_39;
    case 33:
    case 35:
      v3 = MEMORY[0x277D15858];
      goto LABEL_39;
    case 34:
    case 45:
      v3 = MEMORY[0x277D15860];
      goto LABEL_39;
    case 36:
    case 41:
      v3 = MEMORY[0x277D15628];
      goto LABEL_39;
    case 38:
      v3 = MEMORY[0x277D158C8];
      goto LABEL_39;
    case 39:
      v3 = MEMORY[0x277D15658];
      goto LABEL_39;
    case 40:
      v3 = MEMORY[0x277D15778];
LABEL_39:
      v9 = *v3;
      v10 = sub_252E35A74();
      v12 = *(v10 - 8);
      (*(v12 + 104))(a2, v9, v10);
      v5 = *(v12 + 56);
      v7 = a2;
      v8 = 0;
      v6 = v10;
      break;
    default:
      v4 = sub_252E35A74();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a2;
      v8 = 1;
      break;
  }

  return v5(v7, v8, 1, v6);
}

uint64_t StaticRenderingMode.toSnippetRenderingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_252E35A94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  result = (*(v5 + 88))(v8, v4);
  if (MEMORY[0x277D16590] && result == *MEMORY[0x277D16590])
  {
    *a1 = 0;
  }

  else if (MEMORY[0x277D16580] && result == *MEMORY[0x277D16580])
  {
    *a1 = 1;
  }

  else if (MEMORY[0x277D16570] && result == *MEMORY[0x277D16570])
  {
    *a1 = 2;
  }

  else if (MEMORY[0x277D16598] && result == *MEMORY[0x277D16598])
  {
    *a1 = 3;
  }

  else
  {
    *a1 = 2;
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_252C9E244(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449B0, &unk_252E59320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252C9E2CC()
{
  v0[3] = *(v0[2] + 64);
  v1 = *(MEMORY[0x277D55C70] + 4);
  v5 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_252ACFBBC;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD00000000000001FLL, 0x8000000252E8AD70, v3);
}

uint64_t sub_252C9E3AC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_252E34014();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C9E478, 0, 0);
}

uint64_t sub_252C9E478()
{
  v1 = v0[8];
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 288), (v0 + 2));

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = (*(v4 + 120))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v6);
  if (v5)
  {
    v7 = v0[12];
    sub_252B03B94();
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_252B2B87C;
    v9 = v0[12];
    v10 = v0[7];
    v11 = v0[8];

    return sub_252A199A8(v10, &unk_252E593D8, v11, &unk_252E593E0, 0, v9, 0, 0);
  }

  else
  {
    v13 = v0[11];
    sub_252AD7CC4();
    v14 = swift_task_alloc();
    v0[15] = v14;
    *v14 = v0;
    v14[1] = sub_252B2BA30;
    v15 = v0[11];
    v16 = v0[7];
    v17 = v0[8];

    return sub_252BDB88C(v16, &unk_252E593C8, v17, v15, 0, 0, 0, v6);
  }
}

uint64_t sub_252C9E6C0()
{
  v0[3] = *(v0[2] + 64);
  v1 = *(MEMORY[0x277D55C70] + 4);
  v5 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_252C9E7A0;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD00000000000001FLL, 0x8000000252E8AD70, v3);
}

uint64_t sub_252C9E7A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C9F0C4, 0, 0);
  }

  else
  {
    v7 = *(v4 + 24);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252C9E924(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_252E34014();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[5] = v6;
  v2[6] = v7;

  return MEMORY[0x2822009F8](sub_252C9E9E8, 0, 0);
}

uint64_t sub_252C9E9E8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  sub_252B03B94();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_252AD82DC;
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[2];

  return sub_252A199A8(v7, &unk_252E593B0, v5, &unk_252E593B8, 0, v6, 0, 0);
}

id sub_252C9EAFC(int a1, id a2)
{
  result = [a2 matchedEntities];
  if (result)
  {
    v3 = result;
    type metadata accessor for HomeEntity();
    v4 = sub_252E37264();

    if (v4 >> 62)
    {
      v5 = sub_252E378C4();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return (v5 != 0);
  }

  return result;
}

uint64_t sub_252C9EB8C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252C9E3AC(a1);
}

void *sub_252C9EC28@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SuccessFallbackResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C9EC8C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252C9E2AC(v0);
}

BOOL sub_252C9ED1C(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 entityResponses];
    if (!v2)
    {
LABEL_5:

      return 0;
    }

    v3 = sub_252C2A5D8();
    if (v3 >> 62)
    {
      v5 = sub_252E378C4();

      if (v5)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v4)
      {
        goto LABEL_5;
      }
    }

    v6 = sub_252C285CC();
    if (v6 >> 62)
    {
      v7 = sub_252E378C4();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 == 1)
    {
      v8 = [v1 entityResponses];
      if (v8)
      {
        v9 = v8;
        type metadata accessor for HomeEntityResponse();
        v10 = sub_252E37264();
      }

      else
      {
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v11 = sub_252E36AD4();
        __swift_project_value_buffer(v11, qword_27F544D60);
        sub_252E379F4();

        v12 = v1;
        v13 = [v12 description];
        v14 = sub_252E36F34();
        v16 = v15;

        MEMORY[0x2530AD570](v14, v16);

        sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

        v10 = MEMORY[0x277D84F90];
      }

      if (v10 >> 62)
      {
        v17 = sub_252E378C4();
      }

      else
      {
        v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v17 != 1;
    }

    else
    {

      return 1;
    }
  }

  return result;
}

uint64_t sub_252C9EFA4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252C22110(v0);
}

uint64_t sub_252C9F034()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252C9E6A0(v0);
}

uint64_t sub_252C9F0C8(uint64_t a1, char a2)
{
  *(v3 + 216) = v2;
  *(v3 + 320) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F90, &qword_252E59480);
  *(v3 + 224) = v5;
  v6 = *(v5 - 8);
  *(v3 + 232) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 240) = swift_task_alloc();
  v8 = sub_252E365E4();
  *(v3 + 248) = v8;
  v9 = *(v8 - 8);
  *(v3 + 256) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  v11 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v11;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);

  return MEMORY[0x2822009F8](sub_252C9F21C, 0, 0);
}

uint64_t sub_252C9F21C()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v25 = *(v0 + 248);
  v26 = *(v0 + 320);
  v4 = sub_252E36AD4();
  *(v0 + 280) = __swift_project_value_buffer(v4, qword_27F544C70);
  sub_252E379F4();
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E90D60);
  *(v0 + 72) = *(v0 + 16);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  *(v0 + 88) = *(v0 + 32);
  *(v0 + 104) = v6;
  *(v0 + 120) = v5;
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 176), *(v0 + 184), 0xD000000000000088, 0x8000000252E6F320);

  sub_252CA2AC0();
  sub_252E36644();
  sub_252E36644();
  sub_252E365D4();
  (*(v3 + 8))(v2, v25);
  v7 = sub_252E34074();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v0 + 288) = sub_252E34064();
  v10 = qword_252E594C8[v26];
  v11 = *(v0 + 216);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);
  v18 = *(v0 + 64);
  v19 = swift_allocObject();
  *(v0 + 296) = v19;
  v19[2] = v11;
  v19[3] = v12;
  v19[4] = v13;
  v19[5] = v14;
  v19[6] = v15;
  v19[7] = v16;
  v19[8] = v17;
  v19[9] = v18;
  v27 = *(MEMORY[0x277D61CC0] + 4);

  v20 = swift_task_alloc();
  *(v0 + 304) = v20;
  *v20 = v0;
  v20[1] = sub_252C9F534;
  v21 = *(v0 + 240);
  v22 = *(v0 + 224);
  v23.n128_u64[0] = v10;

  return MEMORY[0x2821C8618](v21, &unk_252E59490, v19, v22, v23);
}

uint64_t sub_252C9F534()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_252C9F814;
  }

  else
  {
    v5 = *(v2 + 296);

    v4 = sub_252C9F650;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C9F650()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[30];
  v4 = v0[28];
  sub_252E379F4();

  sub_252CA2BCC();
  v5 = sub_252E37D94();
  MEMORY[0x2530AD570](v5);

  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E90DA0, 0xD000000000000088, 0x8000000252E6F320);

  if (v1)
  {

    sub_252E34054();
  }

  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  v9 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
  v10 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v9[v10] = 4;
  [v9 setUserActivity_];

  (*(v7 + 8))(v6, v8);
  v12 = v0[33];
  v11 = v0[34];
  v13 = v0[30];

  v14 = v0[1];

  return v14(v9);
}

uint64_t sub_252C9F814()
{
  v1 = v0[39];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];

  sub_252E379F4();
  v0[24] = 0;
  v0[25] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E90D80);
  v0[26] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC3D90(v0[24], v0[25], 0xD000000000000088, 0x8000000252E6F320);

  v5 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
  v6 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = 5;
  [v5 setUserActivity_];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[30];

  v10 = v0[1];

  return v10(v5);
}

uint64_t sub_252C9F9D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449F0, &qword_252E594B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v49 - v6;
  v8 = type metadata accessor for TriggerEventType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 automatableTask];
  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v13;
  type metadata accessor for ControlAutomateHomeIntent();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {

LABEL_6:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v26 = sub_252E36AD4();
    __swift_project_value_buffer(v26, qword_27F544C70);
    sub_252CC4050(0xD000000000000048, 0x8000000252E90C80, 0xD000000000000087, 0x8000000252E90DC0, 0xD000000000000016, 0x8000000252E90E50, 87);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449C0, &qword_252E59450);
    v28 = *(*(v27 - 8) + 56);
    v29 = v27;
    v30 = a2;
    goto LABEL_18;
  }

  v49 = v9;
  v50 = a2;
  v16 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v17 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
  v18 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v19 = v16;

  v20 = [v18 init];
  [v20 setUserTask_];
  type metadata accessor for HomeFilter();
  v21 = sub_252E37254();

  [v20 setFilters_];

  [v20 setTime_];
  v22 = [v20 filters];
  if (v22)
  {
    v23 = v22;
    v24 = sub_252E37264();

    v25 = sub_252DD5A58(v24);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v31 = sub_252C758E0(v25);

  v32 = sub_252DD6238(v31);

  if (v32)
  {
    v33 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

    v34 = [a1 trigger];
    if (v34)
    {
      v35 = v34;
      sub_252DED39C(v7);
      if ((*(v49 + 48))(v7, 1, v8) == 1)
      {
        sub_25293847C(v7, &qword_27F5449F0, &qword_252E594B0);
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v36 = sub_252E36AD4();
        __swift_project_value_buffer(v36, qword_27F544C70);
        v52 = 0;
        v53 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E90E70);
        v51 = [a1 trigger];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449F8, &unk_252E594B8);
        v37 = sub_252E36F94();
        MEMORY[0x2530AD570](v37);

        MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E90E90);
        sub_252CC4050(v52, v53, 0xD000000000000087, 0x8000000252E90DC0, 0xD000000000000016, 0x8000000252E90E50, 94);

        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449C0, &qword_252E59450);
        return (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
      }

      else
      {
        sub_252CA2A5C(v7, v12);
        v41 = sub_252E35BA4();
        v42 = *(v41 - 8);
        v43 = *(v42 + 64);
        MEMORY[0x28223BE20](v41);
        v45 = &v49 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_252DEDCB4(v45);

        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449C0, &qword_252E59450);
        v47 = *(v46 + 48);
        v48 = v50;
        sub_252CA2A5C(v12, v50);
        (*(v42 + 32))(v48 + v47, v45, v41);
        return (*(*(v46 - 8) + 56))(v48, 0, 1, v46);
      }
    }
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449C0, &qword_252E59450);
  v28 = *(*(v40 - 8) + 56);
  v29 = v40;
  v30 = v50;
LABEL_18:

  return v28(v30, 1, 1, v29);
}

uint64_t sub_252CA00F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = a1;
  v5 = sub_252E36634();
  *(v3 + 80) = v5;
  v6 = *(v5 - 8);
  *(v3 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v8 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(a3 + 32);
  *(v3 + 64) = *(a3 + 48);

  return MEMORY[0x2822009F8](sub_252CA01D0, 0, 0);
}

uint64_t sub_252CA01D0()
{
  v1 = v0[12];
  sub_252B680FC();
  v2 = sub_252B6796C();
  v4 = v3;

  v0[13] = v2;
  ObjectType = swift_getObjectType();
  sub_252CA2AC0();
  sub_2529C1500();
  sub_2529C0054();
  v6 = sub_252E36404();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_252E363F4();
  v0[14] = v9;
  v10 = *(MEMORY[0x277CEB000] + 4);
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_252CA0334;
  v12 = v0[12];
  v13 = v0[9];
  v14 = MEMORY[0x277CEAFA0];

  return MEMORY[0x28213DAA0](v13, v0 + 2, v12, v9, v14, ObjectType, &type metadata for HomeIntentProducer.AutomateAttributeValueIntent, v4);
}

uint64_t sub_252CA0334()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 128) = v0;

  (*(v6 + 8))(v5, v7);

  swift_unknownObjectRelease();
  if (v0)
  {
    v8 = sub_252CA0548;
  }

  else
  {
    v8 = sub_252CA04E4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252CA04E4()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252CA0548()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_252CA05AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[39] = a6;
  v7[40] = a7;
  v7[37] = a4;
  v7[38] = a5;
  v8 = *(*(type metadata accessor for TriggerEventType() - 8) + 64) + 15;
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v9 = sub_252E32E04();
  v7[44] = v9;
  v10 = *(v9 - 8);
  v7[45] = v10;
  v11 = *(v10 + 64) + 15;
  v7[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CA06B4, 0, 0);
}

uint64_t sub_252CA06B4()
{
  v155 = v0;
  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[37];
  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_2814B09D8);
  sub_252E379F4();

  v153 = 0xD00000000000002BLL;
  v154 = 0x8000000252E90BC0;
  v6 = [v4 description];
  v7 = sub_252E36F34();
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  v10 = "or AutomateHome AppIntent:\n";
  sub_252CC4A5C(0xD00000000000002BLL, 0x8000000252E90BC0, 1, 0xD00000000000008ALL, 0x8000000252E90BF0);

  v11 = sub_252DB7C84()[5];

  sub_252E32DF4();
  sub_252E32D44();
  v13 = v12;
  v15 = *(v2 + 8);
  v14 = (v2 + 8);
  v15(v1, v3);
  v16 = v13 * 1000.0;
  if (COERCE__INT64(fabs(v13 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_68;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v17 = v0[37];
  *(v11 + 16) = v16;

  v18 = [v17 automatableTask];
  v0[47] = v18;
  v14 = &off_279711000;
  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = v18;
  type metadata accessor for ControlAutomateHomeIntent();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {

LABEL_13:
    if (qword_27F53F498 == -1)
    {
LABEL_14:
      __swift_project_value_buffer(v5, qword_27F544C70);
      sub_252CC4050(0xD000000000000048, 0x8000000252E90C80, 0xD00000000000008ALL, 0x8000000252E90BF0, 0xD00000000000001ALL, 0x8000000252E80020, 29);
      v43 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) v14[193]];
      v0[48] = v43;
      v44 = OBJC_IVAR___AutomateHomeIntentResponse_code;
      swift_beginAccess();
      *&v43[v44] = 5;
      [v43 setUserActivity_];
      v45 = swift_task_alloc();
      v0[49] = v45;
      *v45 = v0;
      v46 = sub_252CA1A78;
LABEL_15:
      v45[1] = v46;
      v47 = v0[37];

      return (sub_252CA291C)(v47, v43);
    }

LABEL_70:
    swift_once();
    goto LABEL_14;
  }

  v151 = v5;
  v21 = v0[40];
  v22 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v23 = v0[37];
  v24 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
  v25 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v26 = v22;

  v27 = [v25 init];
  v0[51] = v27;
  v28 = v27;
  [v28 setUserTask_];
  type metadata accessor for HomeFilter();
  v29 = sub_252E37254();

  [v28 setFilters_];

  [v28 setTime_];
  v30 = sub_252E35BA4();
  v0[52] = v30;
  v31 = *(v30 - 8);
  v32 = v31;
  v0[53] = v31;
  v148 = *(v31 + 64) + 15;
  v33 = swift_task_alloc();
  v0[54] = v33;
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449B8, &qword_252E59448) - 8) + 64) + 15;
  v35 = swift_task_alloc();
  sub_252C9F9D0(v23, v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449C0, &qword_252E59450);
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
  {

    sub_25293847C(v35, &qword_27F5449B8, &qword_252E59448);

    v37 = v0[46];
    v38 = v0[42];
    v39 = v0[43];
    v40 = v0[41];

    v41 = v0[1];

    return v41();
  }

  v48 = *(v36 + 48);
  sub_252CA2A5C(v35, v0[43]);
  (*(v32 + 32))(v33, v35 + v48, v30);

  v49 = sub_252C42B30(v28);
  if (!v49)
  {
    goto LABEL_73;
  }

  v50 = v49;
  v51 = v49 >> 62;
  if (!(v49 >> 62))
  {
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    goto LABEL_72;
  }

  if (!sub_252E378C4())
  {
LABEL_72:

LABEL_73:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v151, qword_27F544C70);
    sub_252CC4050(0xD000000000000024, 0x8000000252E6F1F0, 0xD00000000000008ALL, 0x8000000252E90BF0, 0xD00000000000001ALL, 0x8000000252E80020, 37);
    v43 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
    v0[70] = v43;
    v137 = OBJC_IVAR___AutomateHomeIntentResponse_code;
    swift_beginAccess();
    *&v43[v137] = 100;
    [v43 setUserActivity_];
    v45 = swift_task_alloc();
    v0[71] = v45;
    *v45 = v0;
    v46 = sub_252CA2220;
    goto LABEL_15;
  }

LABEL_21:
  v52 = sub_252A1EEEC();
  if (!v52)
  {

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v151, qword_27F544C70);
    sub_252CC4050(0xD000000000000038, 0x8000000252E6F260, 0xD00000000000008ALL, 0x8000000252E90BF0, 0xD00000000000001ALL, 0x8000000252E80020, 45);
    v43 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
    v0[55] = v43;
    v60 = OBJC_IVAR___AutomateHomeIntentResponse_code;
    swift_beginAccess();
    *&v43[v60] = 5;
    [v43 setUserActivity_];
    v45 = swift_task_alloc();
    v0[56] = v45;
    *v45 = v0;
    v46 = sub_252CA1C34;
    goto LABEL_15;
  }

  v53 = v52;
  v150 = v50 & 0xC000000000000001;
  v147 = v33;
  if ((v50 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](0, v50);
  }

  else
  {
    if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_78;
    }

    v54 = *(v50 + 32);
  }

  sub_252E36424();

  v55 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v0[12]);
  sub_252E364D4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  type metadata accessor for HomeStore();
  v56 = static HomeStore.shared.getter();
  v57 = sub_2529F219C();
  v59 = v58;

  v146 = v30;
  v143 = v51;
  if (v59)
  {
LABEL_26:
    sub_252956C8C(v57, v59 & 1);
    goto LABEL_34;
  }

  if (v57)
  {
    v61 = *&v57[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate];

    v62 = [v61 home];
    if (v62)
    {
      v63 = v62;
      v64 = type metadata accessor for Home();
      v65 = *(v64 + 48);
      v66 = *(v64 + 52);
      swift_allocObject();
      v67 = sub_2529E65BC(v63);
      sub_252956C8C(v57, 0);
      v51 = *(v67 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v30 = *(v67 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if (qword_27F53F498 != -1)
      {
        goto LABEL_81;
      }

      goto LABEL_33;
    }

    sub_252956C8C(v57, 0);
    goto LABEL_26;
  }

LABEL_34:
  if (v150)
  {
    MEMORY[0x2530ADF00](0, v50);
  }

  else
  {
    if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_80;
    }

    v68 = *(v50 + 32);
  }

  sub_252E36424();

  v69 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
  v70 = sub_252E364D4();
  v72 = v71;
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v73 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v74 = sub_252AC50D8(v70, v72);

  if (v74)
  {
    v75 = *(v74 + qword_27F5427B8);

    sub_252E36744();

    v76 = v0[31];
    if (v76)
    {
      v77 = v0[30];
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v151, qword_27F544C70);
      sub_252E379F4();

      v153 = 0xD000000000000022;
      v154 = 0x8000000252E90D00;
      v144 = v77;
      v145 = v76;
      MEMORY[0x2530AD570](v77, v76);
      sub_252CC3D90(0xD000000000000022, 0x8000000252E90D00, 0xD00000000000008ALL, 0x8000000252E90BF0);

      goto LABEL_47;
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v78 = v0[37];
  __swift_project_value_buffer(v151, qword_27F544C70);
  v145 = 0xE000000000000000;
  sub_252E379F4();

  v153 = 0xD000000000000026;
  v154 = 0x8000000252E90CD0;
  v79 = [v78 description];
  v80 = sub_252E36F34();
  v82 = v81;

  MEMORY[0x2530AD570](v80, v82);

  sub_252CC4050(0xD000000000000026, 0x8000000252E90CD0, 0xD00000000000008ALL, 0x8000000252E90BF0, 0xD00000000000001ALL, 0x8000000252E80020, 67);

  v144 = 0;
  while (1)
  {
LABEL_47:
    v30 = v146;
    v33 = v147;
    if (qword_27F53F498 != -1)
    {
LABEL_78:
      swift_once();
    }

    __swift_project_value_buffer(v151, qword_27F544C70);
    v10 = swift_task_alloc();
    (*(v32 + 16))(v10, v33, v30);

    v83 = v145;

    v84 = sub_252E36AC4();
    v57 = sub_252E374C4();

    LODWORD(v151) = v57;
    if (!os_log_type_enabled(v84, v57))
    {
      v89 = *(v32 + 8);
      v88 = v32 + 8;
      v89(v10, v30);

      v90 = v144;
      goto LABEL_63;
    }

    log = v84;
    v149 = v32;
    v30 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v152 = v138;
    *v30 = 136315906;
    v85 = MEMORY[0x2530AD730](v53, &type metadata for Attribute);
    v87 = sub_252BE2CE0(v85, v86, &v152);

    *(v30 + 4) = v87;
    v139 = v30;
    *(v30 + 12) = 2080;
    v142 = v53;
    v51 = v143 ? sub_252E378C4() : *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v53 = MEMORY[0x277D84F90];
    v141 = v10;
    if (!v51)
    {
      break;
    }

    v153 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v51 & ~(v51 >> 63), 0);
    if ((v51 & 0x8000000000000000) == 0)
    {
      v91 = 0;
      v53 = v153;
      do
      {
        if (v150)
        {
          MEMORY[0x2530ADF00](v91, v50);
        }

        else
        {
          v92 = *(v50 + 8 * v91 + 32);
        }

        v93 = sub_252A96AFC();
        v95 = v94;

        v153 = v53;
        v97 = *(v53 + 16);
        v96 = *(v53 + 24);
        if (v97 >= v96 >> 1)
        {
          sub_2529AA3A0((v96 > 1), v97 + 1, 1);
          v53 = v153;
        }

        ++v91;
        *(v53 + 16) = v97 + 1;
        v98 = v53 + 16 * v97;
        *(v98 + 32) = v93;
        *(v98 + 40) = v95;
      }

      while (v51 != v91);
      break;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    swift_once();
LABEL_33:
    __swift_project_value_buffer(v151, qword_27F544C70);
    v153 = 0;
    v154 = 0xE000000000000000;
    sub_252E379F4();

    v153 = 0xD000000000000024;
    v154 = 0x8000000252E90D30;
    v144 = v51;
    v145 = v30;
    MEMORY[0x2530AD570](v51, v30);
    sub_252CC3D90(v153, v154, 0xD00000000000008ALL, v10 | 0x8000000000000000);

    sub_252956C8C(v57, 0);
  }

  v99 = MEMORY[0x2530AD730](v53, MEMORY[0x277D837D0]);
  v101 = v100;

  v102 = sub_252BE2CE0(v99, v101, &v152);

  *(v139 + 14) = v102;
  *(v139 + 22) = 2080;
  v90 = v144;
  v83 = v145;
  *(v139 + 24) = sub_252BE2CE0(v144, v145, &v152);
  *(v139 + 32) = 2048;
  v103 = sub_252E35B64();
  v88 = v149 + 8;
  (*(v149 + 8))(v141, v146);
  *(v139 + 34) = v103;
  _os_log_impl(&dword_252917000, log, v151, "Performing AutomateAttributeValueIntent with:\n   - attributeValues: %s\n   - deviceEntities: %s\n   - homeEntity: %s\n   - recurrenceWeekdays: %ld", v139, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x2530AED00](v138, -1, -1);
  MEMORY[0x2530AED00](v139, -1, -1);

  v53 = v142;
LABEL_63:
  v0[58] = v88;
  v105 = v0[42];
  v104 = v0[43];
  v106 = v0[41];

  sub_2529BBF5C(v104, v105);
  v107 = sub_252E35B64();
  v0[32] = v53;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD8, &unk_252E3F900);
  v109 = *(v108 + 48);
  v110 = *(v108 + 52);
  swift_allocObject();
  v111 = sub_252E36754();
  v0[59] = v111;
  v0[33] = v50;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE0, &unk_252E3E550);
  v113 = *(v112 + 48);
  v114 = *(v112 + 52);
  swift_allocObject();
  v115 = sub_252E36754();
  v0[60] = v115;
  v0[28] = v90;
  v0[29] = v83;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449C8, &unk_252E59458);
  v117 = *(v116 + 48);
  v118 = *(v116 + 52);
  swift_allocObject();
  v119 = sub_252E36754();
  v0[61] = v119;
  v0[34] = 0;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF0, &unk_252E3E560);
  v121 = *(v120 + 48);
  v122 = *(v120 + 52);
  swift_allocObject();
  v123 = sub_252E36754();
  v0[62] = v123;
  v0[35] = 0;
  v124 = *(v120 + 48);
  v125 = *(v120 + 52);
  swift_allocObject();
  v126 = sub_252E36754();
  v0[63] = v126;
  sub_2529BBF5C(v105, v106);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449D0, &qword_252E59468);
  v128 = *(v127 + 48);
  v129 = *(v127 + 52);
  swift_allocObject();
  v130 = sub_252E36754();
  v0[64] = v130;
  sub_2529BC0A0(v105);
  v0[36] = v107;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5449D8, &qword_252E59470);
  v132 = *(v131 + 48);
  v133 = *(v131 + 52);
  swift_allocObject();
  v134 = sub_252E36754();
  v0[65] = v134;
  v0[2] = v111;
  v0[3] = v115;
  v0[4] = v119;
  v0[5] = v123;
  v0[6] = v126;
  v0[7] = v130;
  v0[8] = v134;
  v135 = swift_task_alloc();
  v0[66] = v135;
  *v135 = v0;
  v135[1] = sub_252CA1E40;
  v136 = v0[40];

  return sub_252C9F0C8((v0 + 2), 0);
}

uint64_t sub_252CA1A78(uint64_t a1)
{
  v2 = *(*v1 + 392);
  v3 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 400) = a1;

  return MEMORY[0x2822009F8](sub_252CA1B94, 0, 0);
}

uint64_t sub_252CA1B94()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 312);
  (*(v0 + 304))(v1);

  v3 = *(v0 + 368);
  v4 = *(v0 + 336);
  v5 = *(v0 + 344);
  v6 = *(v0 + 328);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_252CA1C34(uint64_t a1)
{
  v2 = *(*v1 + 448);
  v3 = *(*v1 + 440);
  v5 = *v1;
  *(*v1 + 456) = a1;

  return MEMORY[0x2822009F8](sub_252CA1D50, 0, 0);
}

uint64_t sub_252CA1D50()
{
  v1 = *(v0 + 456);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 376);
  v7 = *(v0 + 344);
  v8 = *(v0 + 312);
  (*(v0 + 304))(v1);

  (*(v3 + 8))(v2, v4);
  sub_2529BC0A0(v7);

  v9 = *(v0 + 368);
  v10 = *(v0 + 336);
  v11 = *(v0 + 344);
  v12 = *(v0 + 328);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252CA1E40(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 528);
  v5 = *v1;
  v3[67] = a1;

  v6 = swift_task_alloc();
  v3[68] = v6;
  *v6 = v5;
  v6[1] = sub_252CA1FA8;
  v7 = v3[37];

  return (sub_252CA291C)(v7, a1);
}

uint64_t sub_252CA1FA8(uint64_t a1)
{
  v2 = *(*v1 + 544);
  v3 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 552) = a1;

  return MEMORY[0x2822009F8](sub_252CA20C4, 0, 0);
}

uint64_t sub_252CA20C4()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 512);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);
  v5 = *(v0 + 472);
  v6 = *(v0 + 480);
  v7 = *(v0 + 432);
  v17 = *(v0 + 424);
  v8 = *(v0 + 408);
  v18 = *(v0 + 416);
  v19 = *(v0 + 520);
  v16 = *(v0 + 376);
  v20 = *(v0 + 344);
  v21 = *(v0 + 464);
  v9 = *(v0 + 312);
  (*(v0 + 304))(v1);

  (*(v17 + 8))(v7, v18);
  sub_2529BC0A0(v20);

  v10 = *(v0 + 368);
  v11 = *(v0 + 336);
  v12 = *(v0 + 344);
  v13 = *(v0 + 328);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252CA2220(uint64_t a1)
{
  v2 = *(*v1 + 568);
  v3 = *(*v1 + 560);
  v5 = *v1;
  *(*v1 + 576) = a1;

  return MEMORY[0x2822009F8](sub_252CA233C, 0, 0);
}

uint64_t sub_252CA233C()
{
  v1 = *(v0 + 576);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 376);
  v7 = *(v0 + 344);
  v8 = *(v0 + 312);
  (*(v0 + 304))(v1);

  (*(v3 + 8))(v2, v4);
  sub_2529BC0A0(v7);

  v9 = *(v0 + 368);
  v10 = *(v0 + 336);
  v11 = *(v0 + 344);
  v12 = *(v0 + 328);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252CA2454(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_252E37344();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = v3;
  v13 = a1;

  sub_2529D89C4(0, 0, v10, &unk_252E59438, v12);
}

uint64_t sub_252CA2580()
{
  type metadata accessor for AutomateHomeAppIntentHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252CA25B0(uint64_t a1)
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
  v10[1] = sub_25293B808;

  return sub_252CA05AC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_252CA2684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a3 + 32);
  *(v3 + 64) = *(a3 + 48);
  v7 = swift_task_alloc();
  *(v3 + 72) = v7;
  *v7 = v3;
  v7[1] = sub_252C7D24C;

  return sub_252CA00F4(a1, a2, v3 + 16);
}

uint64_t sub_252CA2740(void *a1)
{
  v1 = [a1 automatableTask];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
      v5 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
      v6 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
      v7 = v4;

      v8 = [v6 init];
      [v8 setUserTask_];
      type metadata accessor for HomeFilter();
      v9 = sub_252E37254();

      [v8 setFilters_];

      [v8 setTime_];
      LOBYTE(v7) = sub_252C4CD44();

      return v7 & 1;
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544C70);
  sub_252CC4050(0xD000000000000048, 0x8000000252E90C80, 0xD00000000000008ALL, 0x8000000252E90BF0, 0xD000000000000011, 0x8000000252E90EB0, 17);
  return 0;
}

uint64_t sub_252CA291C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252CA293C, 0, 0);
}

void *sub_252CA293C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_252DB7C84()[5];

  v4 = sub_252DB5924();

  result = sub_252A00BB4(v2);
  v6 = result;
  if (result)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v4))
    {
      [result setCommandDuration_];
      goto LABEL_5;
    }

    __break(1u);
    return result;
  }

LABEL_5:
  v7 = v0[3];
  sub_252DB7C84();
  sub_252DB7138(v6);

  sub_252DB7C84();
  sub_252DB649C(0, 0, 1);

  v8 = v7;

  v9 = v0[1];
  v10 = v0[3];

  return v9(v10);
}

uint64_t sub_252CA2A5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TriggerEventType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_252CA2AC0()
{
  result = qword_27F5449E0;
  if (!qword_27F5449E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5449E0);
  }

  return result;
}

uint64_t sub_252CA2B14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252CA2684(a1, v4, v1 + 24);
}

unint64_t sub_252CA2BCC()
{
  result = qword_27F5449E8;
  if (!qword_27F5449E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540F90, &qword_252E59480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5449E8);
  }

  return result;
}

uint64_t type metadata accessor for SceneEntity()
{
  result = qword_27F544A20;
  if (!qword_27F544A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252CA2CCC(uint64_t a1)
{
  v3 = sub_252E36454();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = qword_27F544A10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410C0, &qword_252E402E8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v11) = sub_252E36734();
  v15 = qword_27F544A18;
  v16 = *(v12 + 48);
  v17 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v15) = sub_252E36734();
  (*(v4 + 16))(v7, a1, v3);
  v18 = sub_252E364B4();
  (*(v4 + 8))(a1, v3);
  return v18;
}

uint64_t sub_252CA2E4C()
{
  v1 = *(v0 + qword_27F544A10);

  v2 = *(v0 + qword_27F544A18);
}

uint64_t sub_252CA2E8C()
{
  v0 = sub_252E364A4();
  v1 = *(v0 + qword_27F544A10);

  v2 = *(v0 + qword_27F544A18);

  return swift_deallocClassInstance();
}

uint64_t sub_252CA2F08()
{
  v0 = *aComAppleHome_3;

  return v0;
}

uint64_t sub_252CA2F60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252CA2FC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252CA3014(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_252CA3214(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SceneEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252CA325C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544A88, &qword_252E59748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C3C0;
  *(inited + 32) = 2;
  *(inited + 40) = sub_2529FC004(&unk_2864AE798);
  *(inited + 48) = 27;
  *(inited + 56) = sub_2529FC004(&unk_2864AE7C0);
  v1 = sub_252CC743C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544A90, qword_252E59750);
  result = swift_arrayDestroy();
  off_27F544A78 = v1;
  return result;
}

uint64_t sub_252CA3368@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PickDefaultTypeHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

id sub_252CA339C(id a1, uint64_t a2)
{
  v3 = *(a2 + 386);
  if (qword_27F53F480 != -1)
  {
    swift_once();
  }

  v4 = off_27F544A78;
  v5 = [a1 userTask];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 attribute];

    if (!v4[2])
    {
      return 0;
    }
  }

  else
  {
    v7 = 0;
    if (!v4[2])
    {
      return 0;
    }
  }

  sub_252A488EC(v7);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v10 = result;
  type metadata accessor for HomeFilter();
  v11 = sub_252E37264();

  KeyPath = swift_getKeyPath();
  v13 = sub_2529304DC(KeyPath, v11);

  if (v13)
  {
    return 0;
  }

  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v14 = result;
  v15 = sub_252E37264();

  v16 = swift_getKeyPath();
  v17 = sub_252BAF91C(v16, v15);

  if (v17)
  {
    return 0;
  }

  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v18 = result;
  v19 = sub_252E37264();

  v20 = swift_getKeyPath();
  v21 = sub_2529304DC(v20, v19);

  if (v21)
  {
    return 0;
  }

  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v22 = result;
  v23 = sub_252E37264();

  v24 = swift_getKeyPath();
  v25 = sub_252BAF91C(v24, v23);

  if (v25)
  {
    return 0;
  }

  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v26 = result;
  v27 = sub_252E37264();

  v28 = swift_getKeyPath();
  v29 = sub_2529304DC(v28, v27);

  if (v29)
  {
    return 0;
  }

  result = [a1 filters];
  if (result)
  {
    v30 = result;
    v31 = sub_252E37264();

    if (v31 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v33 = 0;
      while (1)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x2530ADF00](v33, v31);
        }

        else
        {
          if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v34 = *(v31 + 8 * v33 + 32);
        }

        v35 = v34;
        v36 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        v37 = [v34 hasAllQuantifier];
        sub_252956D08();
        v38 = sub_252E37664();
        v39 = v38;
        if (v37)
        {
          v40 = sub_252E37694();

          if (v40)
          {

            return 0;
          }
        }

        else
        {
        }

        ++v33;
        if (v36 == i)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

LABEL_37:

    return (v3 ^ 1u);
  }

  return result;
}

char *sub_252CA3798(const void *a1)
{
  v90 = sub_252E32E84();
  v2 = *(v90 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v90);
  v95 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v100, a1, sizeof(v100));
  memcpy(v101, a1, 0x1F8uLL);
  if (sub_252956B94(v101) == 1 || !*(v101[6] + 16))
  {
    return 0;
  }

  v5 = *(v101[6] + 40);
  v96 = *(v101[6] + 32);
  v97 = v5;
  v98 = v101[51];
  if (!*(v101[51] + 16))
  {
    goto LABEL_38;
  }

  type metadata accessor for HomeStore();
  sub_2529D291C(v100, v99);

  v6 = static HomeStore.shared.getter();
  v7 = sub_2529D9D50();
  v8 = sub_2529D70E4(v7);

  v99[0] = MEMORY[0x277D84F90];
  v89 = v8;
  if (v8 >> 62)
  {
    goto LABEL_107;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v10 = MEMORY[0x277D84F90];
    if (!i)
    {
      goto LABEL_71;
    }

    v11 = 0;
    v93 = v89 & 0xFFFFFFFFFFFFFF8;
    v94 = v89 & 0xC000000000000001;
    v91 = i;
    v92 = v89 + 32;
    v90 = v98 + 40;
LABEL_10:
    if (v94)
    {
      v12 = MEMORY[0x2530ADF00](v11, v89);
      v13 = __OFADD__(v11, 1);
      v14 = v11 + 1;
      if (v13)
      {
        goto LABEL_37;
      }

LABEL_13:
      v95 = v14;
      v15 = *(v98 + 16);
      if (!v15)
      {
LABEL_8:

        goto LABEL_9;
      }

      v2 = 0;
      v16 = v90;
      while (1)
      {
        if (v2 >= *(v98 + 16))
        {
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v18 = *(v16 - 1);
        v17 = *v16;

        sub_252CDB4B0();
        if (!v19)
        {
          break;
        }

        v21 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v20 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        if (v21 == v96 && v20 == v97)
        {

          if (!v17)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v23 = sub_252E37DB4();

          if ((v23 & 1) == 0)
          {
            break;
          }

          if (!v17)
          {
            goto LABEL_16;
          }
        }

        if (*(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v18 && v17 == *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
        {

LABEL_34:
          sub_252E37A94();
          v26 = *(v99[0] + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
LABEL_9:
          v11 = v95;
          if (v95 == v91)
          {
            goto LABEL_70;
          }

          goto LABEL_10;
        }

        v25 = sub_252E37DB4();

        if (v25)
        {
          goto LABEL_34;
        }

LABEL_16:
        v2 = (v2 + 1);
        v16 += 4;
        if (v15 == v2)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_16;
    }

    if (v11 < *(v93 + 16))
    {
      break;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    ;
  }

  v12 = *(v92 + 8 * v11);

  v13 = __OFADD__(v11, 1);
  v14 = v11 + 1;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  v93 = v101[52];
  if (!*(v101[52] + 16))
  {
    result = MEMORY[0x277D84FA0];
    goto LABEL_115;
  }

  type metadata accessor for HomeStore();
  sub_2529D291C(v100, v99);

  v27 = static HomeStore.shared.getter();
  v28 = sub_2529D9D50();

  v99[0] = MEMORY[0x277D84F90];
  v80 = v28;
  if (v28 >> 62)
  {
    goto LABEL_111;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v30 = MEMORY[0x277D84F90];
    if (!v29)
    {
      goto LABEL_91;
    }

    v31 = 0;
    v84 = v80 & 0xFFFFFFFFFFFFFF8;
    v85 = v80 & 0xC000000000000001;
    v82 = v29;
    v83 = v80 + 32;
    v87 = (v2 + 1);
    v88 = (v2 + 4);
    v81 = (v93 + 40);
    while (2)
    {
      if (v85)
      {
        v32 = MEMORY[0x2530ADF00](v31, v80);
        v13 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v13)
        {
          goto LABEL_69;
        }

LABEL_48:
        v86 = v33;
        v92 = *(v93 + 16);
        if (!v92)
        {
LABEL_43:

LABEL_44:
          v31 = v86;
          if (v86 == v82)
          {
            v30 = v99[0];
LABEL_91:

            if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
            {
              v72 = sub_252E378C4();
              v73 = MEMORY[0x277D84F90];
              if (!v72)
              {
                goto LABEL_113;
              }
            }

            else
            {
              v72 = *(v30 + 16);
              v73 = MEMORY[0x277D84F90];
              if (!v72)
              {
                goto LABEL_113;
              }
            }

            v99[0] = v73;
            result = sub_2529AA420(0, v72 & ~(v72 >> 63), 0);
            if (v72 < 0)
            {
              __break(1u);
              return result;
            }

            v74 = 0;
            v59 = v99[0];
            do
            {
              if ((v30 & 0xC000000000000001) != 0)
              {
                v75 = MEMORY[0x2530ADF00](v74, v30);
              }

              else
              {
                v75 = *(v30 + 8 * v74 + 32);
              }

              v76 = (*(*v75 + 256))();

              v99[0] = v59;
              v78 = *(v59 + 16);
              v77 = *(v59 + 24);
              if (v78 >= v77 >> 1)
              {
                sub_2529AA420((v77 > 1), v78 + 1, 1);
                v59 = v99[0];
              }

              ++v74;
              *(v59 + 16) = v78 + 1;
              *(v59 + 8 * v78 + 32) = v76;
            }

            while (v72 != v74);
LABEL_102:

            goto LABEL_114;
          }

          continue;
        }

        v34 = 0;
        v91 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
        v2 = v81;
        v89 = v32;
        while (1)
        {
          if (v34 >= *(v93 + 16))
          {
            goto LABEL_104;
          }

          v36 = *(v2 - 1);
          v35 = *v2;
          v37 = *(v32 + v91);

          v38 = [v37 home];
          if (!v38)
          {
            break;
          }

          v39 = v38;
          v40 = type metadata accessor for Home();
          v41 = *(v40 + 48);
          v42 = *(v40 + 52);
          v43 = swift_allocObject();
          v44 = v39;
          v45 = [v44 uniqueIdentifier];
          sub_252E32E64();

          v46 = [v44 name];
          v94 = sub_252E36F34();
          v48 = v47;

          v49 = [v44 assistantIdentifier];
          v98 = v36;
          if (v49)
          {
            sub_252E36F34();
          }

          v50 = v90;
          (*v88)(v43 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v95, v90);
          swift_setDeallocating();
          (*v87)(v43 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v50);

          v51 = *(*v43 + 48);
          v52 = *(*v43 + 52);
          swift_deallocClassInstance();
          if (v94 == v96 && v48 == v97)
          {

            v32 = v89;
            v53 = v98;
          }

          else
          {
            v54 = sub_252E37DB4();

            v32 = v89;
            v53 = v98;
            if ((v54 & 1) == 0)
            {
              break;
            }
          }

          if (v35)
          {
            if (*(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v53 && v35 == *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
            {

LABEL_66:
              sub_252E37A94();
              v56 = *(v99[0] + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              goto LABEL_44;
            }

            v55 = sub_252E37DB4();

            if (v55)
            {
              goto LABEL_66;
            }
          }

LABEL_51:
          ++v34;
          v2 += 4;
          if (v92 == v34)
          {
            goto LABEL_43;
          }
        }

        goto LABEL_51;
      }

      break;
    }

    if (v31 >= *(v84 + 16))
    {
      goto LABEL_106;
    }

    v32 = *(v83 + 8 * v31);

    v13 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (!v13)
    {
      goto LABEL_48;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    v10 = v99[0];
LABEL_71:

    if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
    {
      v57 = sub_252E378C4();
      if (!v57)
      {
        goto LABEL_113;
      }

LABEL_74:
      v99[0] = MEMORY[0x277D84F90];
      sub_2529AA420(0, v57 & ~(v57 >> 63), 0);
      if ((v57 & 0x8000000000000000) == 0)
      {
        v58 = 0;
        v59 = v99[0];
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v60 = MEMORY[0x2530ADF00](v58, v10);
          }

          else
          {
            v60 = *(v10 + 8 * v58 + 32);
          }

          v61 = [*(v60 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          v62 = sub_252E36F34();
          v64 = v63;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v65 = off_27F546230;
          if (*(off_27F546230 + 2) && (v66 = sub_252A44A10(v62, v64), (v67 & 1) != 0))
          {
            v68 = *(v65[7] + 8 * v66);
          }

          else
          {
            v68 = 0;
          }

          v99[0] = v59;
          v70 = *(v59 + 16);
          v69 = *(v59 + 24);
          if (v70 >= v69 >> 1)
          {
            sub_2529AA420((v69 > 1), v70 + 1, 1);
            v59 = v99[0];
          }

          ++v58;
          *(v59 + 16) = v70 + 1;
          *(v59 + 8 * v70 + 32) = v68;
        }

        while (v57 != v58);
        goto LABEL_102;
      }

      __break(1u);
LABEL_111:
      v29 = sub_252E378C4();
      continue;
    }

    break;
  }

  v57 = *(v10 + 16);
  if (v57)
  {
    goto LABEL_74;
  }

LABEL_113:

  v59 = MEMORY[0x277D84F90];
LABEL_114:
  v79 = sub_252C759A0(v59);

  sub_25299F5D4(v100);
  result = v79;
LABEL_115:
  if (*(result + 2) != 1)
  {

    return 0;
  }

  return result;
}

id sub_252CA4208(void *a1, unint64_t a2, void *a3)
{
  if (a1[2])
  {
    v3 = a2;
    v4 = a1;
    v84 = MEMORY[0x277D84F90];
    if (a2 >> 62)
    {
      goto LABEL_106;
    }

    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v6 = MEMORY[0x277D84F90];
    v75 = v5;
    v76 = v3;
    if (v5)
    {
      v7 = 0;
      sub_252956D08();
      v74 = v3 & 0xC000000000000001;
      v72 = v3 + 32;
      v73 = v3 & 0xFFFFFFFFFFFFFF8;
      v82 = (v4 + 7);
      do
      {
        while (1)
        {
          if (v74)
          {
            v8 = MEMORY[0x2530ADF00](v7, v3);
          }

          else
          {
            if (v7 >= *(v73 + 16))
            {
              goto LABEL_103;
            }

            v8 = *(v72 + 8 * v7);
          }

          v81 = v8;
          v9 = __OFADD__(v7, 1);
          v10 = v7 + 1;
          if (v9)
          {
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            v5 = sub_252E378C4();
            goto LABEL_4;
          }

          v77 = v10;
          v11 = [v8 isExcludeFilter];
          v12 = sub_252E37674();
          v13 = v12;
          if (v11)
          {
            break;
          }

LABEL_18:
          v15 = v4[2];
          if (v15)
          {
            v78 = v6;
            v83[0] = MEMORY[0x277D84F90];
            sub_252E37AB4();
            v16 = -1 << *(v4 + 32);
            v17 = sub_252E37834();
            v18 = 0;
            v3 = 1;
            while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v4 + 32))
            {
              v20 = v17 >> 6;
              if ((*&v82[8 * (v17 >> 6)] & (1 << v17)) == 0)
              {
                goto LABEL_93;
              }

              v21 = *(v4 + 9);
              v22 = *(v4[6] + 8 * v17);
              type metadata accessor for HomeFilter.Builder();
              v23 = swift_allocObject();
              *(v23 + 16) = 0;
              *(v23 + 24) = 0;
              *(v23 + 32) = 0;
              *(v23 + 40) = 7;
              *(v23 + 48) = 0u;
              *(v23 + 64) = 0u;
              *(v23 + 80) = 0u;
              *(v23 + 96) = 0u;
              *(v23 + 112) = 0u;
              *(v23 + 128) = 0u;
              *(v23 + 144) = 0u;
              *(v23 + 160) = 0u;
              *(v23 + 175) = 0;
              v24 = sub_252B72040(v81);

              v25 = (*(*v24 + 624))(v22);

              (*(*v25 + 760))(v26);

              sub_252E37A94();
              v27 = *(v83[0] + 16);
              sub_252E37AC4();
              v3 = 1;
              sub_252E37AD4();
              sub_252E37AA4();
              v19 = 1 << *(v4 + 32);
              if (v17 >= v19)
              {
                goto LABEL_94;
              }

              v28 = *&v82[8 * v20];
              if ((v28 & (1 << v17)) == 0)
              {
                goto LABEL_95;
              }

              if (v21 != *(v4 + 9))
              {
                goto LABEL_96;
              }

              v29 = v28 & (-2 << (v17 & 0x3F));
              if (v29)
              {
                v19 = __clz(__rbit64(v29)) | v17 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v30 = v20 << 6;
                v31 = v20 + 1;
                v32 = &v4[v20 + 8];
                while (v31 < (v19 + 63) >> 6)
                {
                  v34 = *v32++;
                  v33 = v34;
                  v30 += 64;
                  ++v31;
                  if (v34)
                  {
                    sub_252ACBF38(v17, v21, 0);
                    v19 = __clz(__rbit64(v33)) + v30;
                    goto LABEL_21;
                  }
                }

                sub_252ACBF38(v17, v21, 0);
              }

LABEL_21:
              ++v18;
              v17 = v19;
              if (v18 == v15)
              {
                v35 = v83[0];
                v5 = v75;
                v3 = v76;
                v6 = v78;
                goto LABEL_36;
              }
            }

            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          v35 = MEMORY[0x277D84F90];
LABEL_36:
          v36 = v35 >> 62;
          if (v35 >> 62)
          {
            v80 = sub_252E378C4();
          }

          else
          {
            v80 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v37 = v6 >> 62;
          if (v6 >> 62)
          {
            v38 = sub_252E378C4();
          }

          else
          {
            v38 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v39 = v38 + v80;
          if (__OFADD__(v38, v80))
          {
            goto LABEL_100;
          }

          if (swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (v37)
            {
              goto LABEL_48;
            }

            v40 = v6 & 0xFFFFFFFFFFFFFF8;
            if (v39 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_50;
            }
          }

          else
          {
            if (v37)
            {
LABEL_48:
              sub_252E378C4();
              goto LABEL_49;
            }

            v40 = v6 & 0xFFFFFFFFFFFFFF8;
          }

          v41 = *(v40 + 16);
LABEL_49:
          v6 = sub_252E37A54();
          v40 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_50:
          v79 = v6;
          v42 = *(v40 + 16);
          v43 = *(v40 + 24);
          if (v36)
          {
            v44 = sub_252E378C4();
            if (v44)
            {
LABEL_54:
              if (((v43 >> 1) - v42) < v80)
              {
                goto LABEL_102;
              }

              v45 = v40 + 8 * v42 + 32;
              if (v36)
              {
                v46 = &qword_27F5429C8;
                if (v44 < 1)
                {
                  goto LABEL_105;
                }

                v71 = v40;
                sub_252CA5268();
                for (i = 0; i != v44; ++i)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(v46, &unk_252E47580);
                  v48 = v46;
                  v49 = sub_2529FBD80(v83, i, v35);
                  v51 = *v50;
                  (v49)(v83, 0);
                  v46 = v48;
                  *(v45 + 8 * i) = v51;
                }

                v5 = v75;
                v3 = v76;
                v40 = v71;
              }

              else
              {
                type metadata accessor for HomeFilter();
                swift_arrayInitWithCopy();
              }

              v6 = v79;
              v7 = v77;
              if (v80 > 0)
              {
                v52 = *(v40 + 16);
                if (__OFADD__(v52, v80))
                {
                  goto LABEL_104;
                }

                *(v40 + 16) = v52 + v80;
              }

              goto LABEL_7;
            }
          }

          else
          {
            v44 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v44)
            {
              goto LABEL_54;
            }
          }

          v6 = v79;
          v7 = v77;
          if (v80 > 0)
          {
            goto LABEL_101;
          }

LABEL_7:
          v84 = v6;
          if (v7 == v5)
          {
            goto LABEL_66;
          }
        }

        v14 = sub_252E37694();

        if ((v14 & 1) == 0)
        {
          goto LABEL_18;
        }

        v7 = v77;
      }

      while (v77 != v5);
    }

LABEL_66:
    if (v6 >> 62)
    {
      v53 = sub_252E378C4();
    }

    else
    {
      v53 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v54 = MEMORY[0x277D84F90];
    if (v53)
    {
      v83[0] = MEMORY[0x277D84F90];
      if (v5)
      {
        v55 = 0;
        v56 = v3 & 0xC000000000000001;
        v3 &= 0xFFFFFFFFFFFFFF8uLL;
        while (1)
        {
          if (v56)
          {
            v57 = MEMORY[0x2530ADF00](v55, v76);
          }

          else
          {
            if (v55 >= *(v3 + 16))
            {
              goto LABEL_99;
            }

            v57 = *(v76 + 8 * v55 + 32);
          }

          v58 = v57;
          v59 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            goto LABEL_98;
          }

          v60 = [v57 isExcludeFilter];
          sub_252956D08();
          v61 = sub_252E37674();
          v4 = v61;
          if (v60)
          {
            v62 = sub_252E37694();

            if (v62)
            {
              sub_252E37A94();
              v63 = *(v83[0] + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              goto LABEL_73;
            }
          }

          else
          {
          }

LABEL_73:
          ++v55;
          if (v59 == v75)
          {
            v54 = v83[0];
            break;
          }
        }
      }

      sub_25297A8D8(v54);
      v65 = [a3 userTask];
      v66 = [a3 time];
      v67 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
      [v67 setUserTask_];
      type metadata accessor for HomeFilter();
      v68 = sub_252E37254();

      [v67 setFilters_];

      [v67 setTime_];
      return v67;
    }

    else
    {

      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v69 = sub_252E36AD4();
      __swift_project_value_buffer(v69, qword_27F544DA8);
      sub_252CC4050(0xD00000000000004ALL, 0x8000000252E910A0, 0xD00000000000008FLL, 0x8000000252E90F70, 0xD00000000000002ELL, 0x8000000252E910F0, 78);

      return a3;
    }
  }

  else
  {

    return a3;
  }
}

id sub_252CA4B88(void *a1, const void *a2)
{
  memcpy(__dst, a2, 0x1F8uLL);
  v3 = &off_279711000;
  v4 = [a1 filters];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();

    memcpy(__src, __dst, 0x1F8uLL);
    if (sub_252956B94(__src) != 1)
    {
      *&__src[67] = *&__src[54];
      *&__src[69] = *&__src[56];
      *&__src[71] = *&__src[58];
      __src[73] = __src[60];
      *&__src[63] = *&__src[50];
      *&__src[65] = *&__src[52];
      if (!sub_252C5CF44())
      {
        memcpy(v41, __src, sizeof(v41));
        GEOLocationCoordinate2DMake(v41);
        memcpy(v40, v41, sizeof(v40));
        memcpy(v42, __dst, sizeof(v42));
        sub_2529353AC(v42, v39);
        sub_2529353AC(__src, v39);
        v26 = sub_252CA3798(v40);
        memcpy(v43, v40, sizeof(v43));
        sub_25299F5D4(v43);
        if (v26)
        {
          v11 = sub_252CA4208(v26, v6, a1);

          sub_25299F5D4(__dst);

          return v11;
        }

        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v27 = sub_252E36AD4();
        __swift_project_value_buffer(v27, qword_27F544DA8);
        sub_252CC3D90(0xD000000000000048, 0x8000000252E91050, 0xD00000000000008FLL, 0x8000000252E90F70);
        sub_25299F5D4(__dst);
        return a1;
      }
    }

    v7 = &off_279711000;
    v8 = [a1 userTask];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 attribute];
    }

    else
    {
      v10 = 0;
    }

    if (qword_27F53F480 != -1)
    {
LABEL_42:
      swift_once();
    }

    v13 = off_27F544A78;
    if (*(off_27F544A78 + 2))
    {
      v14 = sub_252A488EC(v10);
      if (v15)
      {
        v10 = *(v13[7] + 8 * v14);
        type metadata accessor for HomeStore();

        v16 = static HomeStore.shared.getter();
        v17 = v16[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
        if (v17 == 2 || (v17 & 1) != 0)
        {
          v18 = [a1 v3[192]];
          if (v18)
          {
            v19 = v18;
            v20 = sub_252E37264();

            v21 = [a1 *(v7 + 1712)];
            v11 = HomeStore.accessories(matching:supporting:)(v20, v21);
            v7 = v22;

            if (v7)
            {

              return v11;
            }

            v43[0] = MEMORY[0x277D84F90];
            if (v11 >> 62)
            {
              v3 = sub_252E378C4();
              if (v3)
              {
                goto LABEL_31;
              }
            }

            else
            {
              v3 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v3)
              {
LABEL_31:
                v37 = v10;
                v38 = v6;
                v30 = 0;
                while (1)
                {
                  if ((v11 & 0xC000000000000001) != 0)
                  {
                    v31 = MEMORY[0x2530ADF00](v30, v11);
                    v10 = (v30 + 1);
                    if (__OFADD__(v30, 1))
                    {
LABEL_39:
                      __break(1u);
LABEL_40:
                      v34 = v43[0];
                      v10 = v37;
                      v6 = v38;
                      goto LABEL_45;
                    }
                  }

                  else
                  {
                    if (v30 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_42;
                    }

                    v31 = *(v11 + 8 * v30 + 32);

                    v10 = (v30 + 1);
                    if (__OFADD__(v30, 1))
                    {
                      goto LABEL_39;
                    }
                  }

                  v32 = *(*v31 + 272);
                  v6 = *v31 + 272;

                  v7 = v32(v33);

                  sub_25297AEDC(v7);
                  ++v30;
                  if (v10 == v3)
                  {
                    goto LABEL_40;
                  }
                }
              }
            }

            v34 = MEMORY[0x277D84F90];
LABEL_45:
            sub_252929F10(v11, 0);
            v35 = sub_252BBC530(v34, v10);

            if (v35[2])
            {
              v11 = sub_252CA4208(v35, v6, a1);

              return v11;
            }

            if (qword_27F53F500 != -1)
            {
              swift_once();
            }

            v36 = sub_252E36AD4();
            __swift_project_value_buffer(v36, qword_27F544DA8);
            sub_252CC3D90(0xD000000000000040, 0x8000000252E91000, 0xD00000000000008FLL, 0x8000000252E90F70);
            return a1;
          }

          sub_2529318DC();
          v11 = swift_allocError();
          v29 = 1;
        }

        else
        {
          sub_2529318DC();
          v11 = swift_allocError();
          v29 = 12;
        }

        *v28 = v29;

        return v11;
      }
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544DA8);
    sub_252E379F4();

    v43[0] = 0xD000000000000028;
    v43[1] = 0x8000000252E90F40;
    v24 = HomeAttributeType.description.getter(v10);
    MEMORY[0x2530AD570](v24);

    sub_252CC3D90(0xD000000000000028, 0x8000000252E90F40, 0xD00000000000008FLL, 0x8000000252E90F70);

    return a1;
  }

  sub_2529318DC();
  v11 = swift_allocError();
  *v12 = 8;
  return v11;
}

unint64_t sub_252CA5268()
{
  result = qword_27F544A80;
  if (!qword_27F544A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5429C8, &unk_252E47580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544A80);
  }

  return result;
}

uint64_t sub_252CA52CC(uint64_t a1)
{
  v2 = sub_252E34134();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E34164();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277D5C150])
  {
    (*(v8 + 96))(v11, v7);
    (*(v3 + 32))(v6, v11, v2);
    v12 = sub_252C35970();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D60);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E6F7D0);
    MEMORY[0x2530AD570](0x6F6C46636E797341, 0xE900000000000077);
    MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E6F810);
    v14 = sub_252D2CDB4();
    MEMORY[0x2530AD570](v14);

    sub_252CC3D90(v16, v17, 0xD000000000000075, 0x8000000252E6F840);

    (*(v8 + 8))(v11, v7);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t FlowProvider.parse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse;
  v4 = sub_252E34164();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_252CA5698@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
  swift_beginAccess();
  memcpy(__dst, (v3 + v4), sizeof(__dst));
  memcpy(a2, (v3 + v4), 0x1F8uLL);
  return sub_252938414(__dst, v6, &qword_27F5404C8, &unk_252E3FD60);
}

uint64_t sub_252CA5724(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
  swift_beginAccess();
  memcpy(v8, (v3 + v4), sizeof(v8));
  memcpy((v3 + v4), __dst, 0x1F8uLL);
  sub_252938414(__dst, &v6, &qword_27F5404C8, &unk_252E3FD60);
  return sub_25293847C(v8, &qword_27F5404C8, &unk_252E3FD60);
}

uint64_t sub_252CA57D8@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x1F8uLL);
  return sub_252938414(__dst, v5, &qword_27F5404C8, &unk_252E3FD60);
}

uint64_t sub_252CA5860(const void *a1)
{
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy((v1 + v3), a1, 0x1F8uLL);
  return sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
}

uint64_t FlowProvider.__allocating_init(locationService:parse:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
  sub_25293DEE0(__src);
  memcpy((v7 + v8), __src, 0x1F8uLL);
  sub_252929E74(a1, v7 + 16);
  v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_252929E74((v9 + 16), v7 + 56);

  v10 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse;
  v11 = sub_252E34164();
  (*(*(v11 - 8) + 32))(v7 + v10, a2, v11);
  return v7;
}

uint64_t FlowProvider.init(locationService:parse:)(uint64_t *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
  sub_25293DEE0(__src);
  memcpy((v2 + v5), __src, 0x1F8uLL);
  sub_252929E74(a1, v2 + 16);
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_252929E74((v6 + 16), v10);

  sub_252927BEC(v10, v2 + 56);
  v7 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse;
  v8 = sub_252E34164();
  (*(*(v8 - 8) + 32))(v2 + v7, a2, v8);
  return v2;
}

uint64_t sub_252CA5B04(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v60 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544AA0, &qword_252E59880);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = v46 - v6;
  v7 = sub_252E33E94();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x28223BE20](v7);
  v51 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544AA8, &unk_252E59888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v46 - v12;
  v64 = sub_252E34164();
  v14 = *(v64 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v64);
  v55 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v46 - v18;
  v20 = sub_252E358D4();
  v56 = *(v20 - 8);
  v21 = *(v56 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_252E36AB4();
  v62 = *(v24 - 8);
  v63 = v24;
  v25 = *(v62 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v28 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  v61 = v28;
  sub_252E36A84();
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v54 = v13;
  v57 = sub_252E36AD4();
  __swift_project_value_buffer(v57, qword_27F544D60);
  sub_252CC3D90(0xD000000000000017, 0x8000000252E6C450, 0xD00000000000006BLL, 0x8000000252E6C470);
  if (qword_27F53F388 != -1)
  {
    swift_once();
  }

  v58 = v27;
  sub_252E37604();
  qword_27F543738 = 0;

  sub_252E37614();
  type metadata accessor for HomeStore();
  v59 = static HomeStore.shared.getter();
  sub_2529DE350();
  if (_s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0())
  {
    sub_252D73864(v2 + OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse);
  }

  v29 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse;
  sub_252AB3FEC(v2 + OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse, 0, v71);
  memcpy(v72, v71, 0x1F8uLL);
  if (sub_252956B94(v72) == 1)
  {
    goto LABEL_10;
  }

  type metadata accessor for ReformationProvider();
  v38 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544AB8, &unk_252E59898);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_252E3C3C0;
  *(v39 + 32) = type metadata accessor for ControlHomeFlashlightReformationFlow();
  *(v39 + 40) = &off_2864BE7A0;
  *(v39 + 48) = type metadata accessor for ControlHomeLockReformationFlow();
  *(v39 + 56) = &off_2864B9918;
  *(v38 + 16) = v39;
  memcpy(v69, v72, sizeof(v69));
  memcpy(v70, v71, sizeof(v70));
  sub_2529353AC(v70, v68);
  sub_2529B1920(v2 + v29, v69, v66);

  swift_setDeallocating();
  swift_deallocClassInstance();
  if (!*&v66[24])
  {
    sub_25293847C(v66, &qword_27F540E78, &unk_252E3F330);
    type metadata accessor for HomeAutomationGuardFlow();
    memcpy(v69, v72, sizeof(v69));
    sub_252D42994(v69, v68);
    if (v68[0] != 9)
    {
      LOBYTE(v69[0]) = v68[0];
      swift_allocObject();
      v69[0] = HomeAutomationGuardFlow.init(guardError:)(v69);
      sub_252CA8844(&qword_27F544AC0, type metadata accessor for HomeAutomationGuardFlow);
      sub_252E33604();

      sub_252E33664();

      sub_25293847C(v71, &qword_27F5404C8, &unk_252E3FD60);
      goto LABEL_29;
    }

    sub_25293847C(v71, &qword_27F5404C8, &unk_252E3FD60);
LABEL_10:
    v30 = v64;
    v49 = *(v14 + 16);
    v49(v19, v2 + v29, v64);
    if ((*(v14 + 88))(v19, v30) == *MEMORY[0x277D5C158])
    {
      (*(v14 + 96))(v19, v30);
      v48 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60) + 48)];
      v31 = v20;
      (*(v56 + 32))(v23, v19, v20);
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v32 = __swift_project_value_buffer(v57, qword_27F544DA8);
      v70[0] = 0;
      v70[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E911C0);
      sub_252CA8844(&qword_27F544AB0, MEMORY[0x277D5F458]);
      v33 = sub_252E37D94();
      MEMORY[0x2530AD570](v33);

      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E911F0);
      v47 = v23;
      v69[0] = v48;
      sub_252E34154();
      sub_252E37AE4();
      v46[1] = v32;
      sub_252CC3D90(v70[0], v70[1], 0xD00000000000006ELL, 0x8000000252E91150);

      v34 = v31;
      v35 = v54;
      sub_252CA7878(v54);
      v36 = sub_252E33684();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v35, 1, v36) != 1)
      {
        (*(v56 + 8))(v47, v34);
        sub_25293847C(v71, &qword_27F5404C8, &unk_252E3FD60);

        (*(v37 + 32))(v60, v35, v36);
        goto LABEL_30;
      }

      sub_25293847C(v35, &qword_27F544AA8, &unk_252E59888);
      sub_252CC4050(0xD000000000000055, 0x8000000252E91210, 0xD00000000000006ELL, 0x8000000252E91150, 0x776F6C46646E6966, 0xEA00000000002928, 62);

      (*(v56 + 8))(v47, v34);
    }

    else
    {
      (*(v14 + 8))(v19, v30);
    }

    v40 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
    swift_beginAccess();
    memcpy(v68, (v2 + v40), sizeof(v68));
    memcpy((v2 + v40), v71, 0x1F8uLL);
    sub_252938414(v71, v67, &qword_27F5404C8, &unk_252E3FD60);
    sub_25293847C(v68, &qword_27F5404C8, &unk_252E3FD60);
    if (qword_2814B09D0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v57, qword_2814B09D8);
    v67[0] = 0;
    v67[1] = 0xE000000000000000;
    sub_252E379F4();

    v67[0] = 0xD000000000000011;
    v67[1] = 0x8000000252E91130;
    v41 = v55;
    v49(v55, v2 + v29, v64);
    v42 = sub_252AD2138(v41);
    MEMORY[0x2530AD570](v42);

    sub_252CC4A5C(v67[0], v67[1], 1, 0xD00000000000006ELL, 0x8000000252E91150);

    memcpy(v69, (v2 + v40), sizeof(v69));
    memcpy(v70, (v2 + v40), sizeof(v70));
    if (sub_252956B94(v70) != 1)
    {
      memcpy(v66, v70, sizeof(v66));
      memcpy(v67, v69, 0x1F8uLL);
      sub_2529353AC(v67, &v65);
      if (sub_252ADA6B8(v66))
      {
        sub_252E35FE4();
        v43 = v51;
        sub_252E33E84();
        sub_252E33674();

        sub_25293847C(v69, &qword_27F5404C8, &unk_252E3FD60);
        sub_25293847C(v71, &qword_27F5404C8, &unk_252E3FD60);
        (*(v52 + 8))(v43, v53);
        goto LABEL_30;
      }

      sub_25293847C(v69, &qword_27F5404C8, &unk_252E3FD60);
    }

    sub_252CA6920(v2 + v29, v60);
LABEL_29:
    sub_25293847C(v71, &qword_27F5404C8, &unk_252E3FD60);

    goto LABEL_30;
  }

  sub_25293847C(v71, &qword_27F5404C8, &unk_252E3FD60);
  sub_252927BEC(v66, v67);
  __swift_project_boxed_opaque_existential_1(v67, v67[3]);
  sub_252E33604();
  sub_252E33664();
  sub_25293847C(v71, &qword_27F5404C8, &unk_252E3FD60);

  __swift_destroy_boxed_opaque_existential_1(v67);
LABEL_30:
  sub_252E375C4();
  v44 = v58;
  sub_252E36A74();
  return (*(v62 + 8))(v44, v63);
}

uint64_t sub_252CA6920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = sub_252E34164();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E36AB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (sub_252CA52CC(a1))
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544DA8);
    sub_252CC4A5C(0xD000000000000013, 0x8000000252E91400, 1, 0xD00000000000006ELL, 0x8000000252E91150);
    type metadata accessor for AsyncFlow();
    swift_allocObject();
    v65[0] = AsyncFlow.init()();
    sub_252CA8844(&qword_27F544338, type metadata accessor for AsyncFlow);
    sub_252E33604();

    sub_252E33664();

    goto LABEL_34;
  }

  (*(v5 + 16))(v8, a1, v4);
  v16 = (*(v5 + 88))(v8, v4);
  if (v16 == *MEMORY[0x277D5C128])
  {
    goto LABEL_8;
  }

  if (v16 == *MEMORY[0x277D5C158])
  {
    (*(v5 + 96))(v8, v4);
    v17 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60) + 48)];

    v18 = sub_252E358D4();
    (*(*(v18 - 8) + 8))(v8, v18);
LABEL_11:
    v19 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
    swift_beginAccess();
    memcpy(v64, (v2 + v19), sizeof(v64));
    memcpy(v65, (v2 + v19), 0x1F8uLL);
    if (sub_252956B94(v65) == 1)
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v20 = sub_252E36AD4();
      __swift_project_value_buffer(v20, qword_27F544D60);
      v63[0] = 0;
      v63[1] = 0xE000000000000000;
      sub_252E379F4();
      v62[0] = v2;
      type metadata accessor for FlowProvider();
      sub_252E37AE4();
      MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E6F8C0);
      sub_252CC4050(v63[0], v63[1], 0xD00000000000006ELL, 0x8000000252E91150, 0x776F6C46656B616DLL, 0xEF293A5F28726F46, 95);
LABEL_15:

      sub_252E33654();
      goto LABEL_34;
    }

    memcpy(v61, v65, sizeof(v61));
    memcpy(v62, v64, sizeof(v62));
    sub_2529353AC(v62, v60);
    sub_252CA7B24(v61, v63);
    memcpy(v61, v63, sizeof(v61));
    if (sub_252D8A048(v61))
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v21 = sub_252E36AD4();
      __swift_project_value_buffer(v21, qword_27F544DA8);
      sub_252CC4A5C(0xD00000000000001ALL, 0x8000000252E913E0, 1, 0xD00000000000006ELL, 0x8000000252E91150);
      v22 = type metadata accessor for DiscoverHomeFlow();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      sub_25293DEE0(v61);
      memcpy((v25 + 24), v61, 0x1F8uLL);
      v26 = OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_input;
      v27 = sub_252E34104();
      (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
      *(v25 + 528) = 0;
      v28 = (v25 + OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_guardFlowSupplier);
      *v28 = sub_252D87E84;
      v28[1] = 0;
      v60[0] = v25;
      v29 = &unk_27F544AE8;
      v30 = type metadata accessor for DiscoverHomeFlow;
    }

    else
    {
      memcpy(v61, v63, sizeof(v61));
      if (sub_252CC0C40(v61))
      {
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v33 = sub_252E36AD4();
        __swift_project_value_buffer(v33, qword_27F544DA8);
        sub_252CC4A5C(0xD000000000000016, 0x8000000252E913C0, 1, 0xD00000000000006ELL, 0x8000000252E91150);
        v34 = type metadata accessor for ShowHomeFlow();
        v35 = *(v34 + 48);
        v36 = *(v34 + 52);
        v37 = swift_allocObject();
        sub_25293DEE0(v61);
        memcpy((v37 + 16), v61, 0x1F8uLL);
        v38 = OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_input;
        v39 = sub_252E34104();
        (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
        *(v37 + 520) = 0;
        v40 = (v37 + OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_guardFlowSupplier);
        *v40 = sub_252CBEAB4;
        v40[1] = 0;
        v60[0] = v37;
        v29 = &unk_27F544AE0;
        v30 = type metadata accessor for ShowHomeFlow;
      }

      else
      {
        memcpy(v61, v63, sizeof(v61));
        if (sub_252D94AB4(v61))
        {
          if (qword_27F53F500 != -1)
          {
            swift_once();
          }

          v41 = sub_252E36AD4();
          __swift_project_value_buffer(v41, qword_27F544DA8);
          sub_252CC4A5C(0xD00000000000001DLL, 0x8000000252E913A0, 1, 0xD00000000000006ELL, 0x8000000252E91150);
          type metadata accessor for WhichOnesFailedFlow();
          v42 = swift_allocObject();
          v43 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
          swift_beginAccess();
          v44 = *(v43 + 22);

          *(v42 + 16) = v44;
          v45 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
          sub_252929E74((v45 + 136), v42 + 24);

          v46 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

          *(v42 + 88) = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
          *(v42 + 96) = &off_2864BA730;
          *(v42 + 64) = v46;
          *(v42 + 104) = 0;
          *(v42 + 112) = sub_252D92E00;
          *(v42 + 120) = 0;
          v60[0] = v42;
          v29 = &unk_27F544AD8;
          v30 = type metadata accessor for WhichOnesFailedFlow;
        }

        else
        {
          memcpy(v61, v63, sizeof(v61));
          if (sub_252BDA558(v61))
          {
            if (qword_27F53F500 != -1)
            {
              swift_once();
            }

            v48 = sub_252E36AD4();
            __swift_project_value_buffer(v48, qword_27F544DA8);
            sub_252CC4A5C(0xD00000000000001ALL, 0x8000000252E91380, 1, 0xD00000000000006ELL, 0x8000000252E91150);
            v49 = type metadata accessor for AutomateHomeFlow();
            v50 = *(v49 + 48);
            v51 = *(v49 + 52);
            swift_allocObject();
            *v61 = sub_252BD771C();
            v29 = &qword_27F543CD8;
            v30 = type metadata accessor for AutomateHomeFlow;
          }

          else
          {
            memcpy(v61, v63, sizeof(v61));
            if ((sub_252B7B588(v61) & 1) == 0)
            {
              sub_252935408(v63);
              sub_25293847C(v64, &qword_27F5404C8, &unk_252E3FD60);
              if (qword_27F53F500 != -1)
              {
                swift_once();
              }

              v56 = sub_252E36AD4();
              __swift_project_value_buffer(v56, qword_27F544DA8);
              *v61 = 0;
              *&v61[8] = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E91350);
              sub_252E37AE4();
              sub_252CC4050(*v61, *&v61[8], 0xD00000000000006ELL, 0x8000000252E91150, 0x776F6C46656B616DLL, 0xEF293A5F28726F46, 130);
              goto LABEL_15;
            }

            if (qword_27F53F500 != -1)
            {
              swift_once();
            }

            v52 = sub_252E36AD4();
            __swift_project_value_buffer(v52, qword_27F544DA8);
            sub_252CC4A5C(0xD000000000000019, 0x8000000252E91320, 1, 0xD00000000000006ELL, 0x8000000252E91150);
            v53 = type metadata accessor for ControlHomeFlow();
            v54 = *(v53 + 48);
            v55 = *(v53 + 52);
            swift_allocObject();
            *v61 = ControlHomeFlow.init()();
            v29 = &qword_27F543828;
            v30 = type metadata accessor for ControlHomeFlow;
          }
        }
      }
    }

    sub_252CA8844(v29, v30);
    sub_252E33604();

    sub_252E33664();

    sub_252935408(v63);
    sub_25293847C(v64, &qword_27F5404C8, &unk_252E3FD60);
    goto LABEL_34;
  }

  if (v16 == *MEMORY[0x277D5C150] || v16 == *MEMORY[0x277D5C160])
  {
LABEL_8:
    (*(v5 + 8))(v8, v4);
    goto LABEL_11;
  }

  v58 = v2;
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v31 = sub_252E36AD4();
  v57[1] = __swift_project_value_buffer(v31, qword_27F544D60);
  v65[0] = 0;
  v65[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E6F7D0);
  v64[0] = v58;
  type metadata accessor for FlowProvider();
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E6F810);
  v32 = sub_252D2CDB4();
  MEMORY[0x2530AD570](v32);

  sub_252CC3D90(v65[0], v65[1], 0xD00000000000006ELL, 0x8000000252E91150);

  sub_252E33654();
  (*(v5 + 8))(v8, v4);
LABEL_34:
  sub_252E375C4();
  sub_252E36A74();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_252CA7878@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_252E34144();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();

  if (v3)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000019, 0x8000000252E91320, 0xD00000000000006ELL, 0x8000000252E91150);
    v5 = type metadata accessor for ControlHomeFlow();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    ControlHomeFlow.init()();
    sub_252CA8844(&qword_27F543828, type metadata accessor for ControlHomeFlow);
    sub_252E33604();

    sub_252E33664();

    v8 = 0;
  }

  else
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544DA8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E912B0);
    sub_252E34154();
    sub_252E37AE4();
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000006ELL, 0x8000000252E91150, 0xD000000000000025, 0x8000000252E912F0, 139);

    v8 = 1;
  }

  v10 = sub_252E33684();
  return (*(*(v10 - 8) + 56))(a1, v8, 1, v10);
}

uint64_t sub_252CA7B24@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, 0x1F8uLL);
  v3 = *(&__dst[23] + 1);
  v4 = *(*(&__dst[23] + 1) + 16);
  sub_2529353AC(__dst, v132);
  v124 = v3;
  v5 = (v3 + 32);
  while (2)
  {
    if (!v4)
    {
      v125 = *&__dst[31];
      v7 = *(&__dst[24] + 1);
      v8 = BYTE5(__dst[24]);
      v9 = BYTE4(__dst[24]);
      v10 = BYTE3(__dst[24]);
      v11 = BYTE2(__dst[24]);
      v12 = BYTE1(__dst[24]);
      v13 = __dst[24];
      result = *&__dst[23];
      v16 = __dst[21];
      v15 = __dst[22];
      v17 = *(&__dst[20] + 1);
      v18 = *&__dst[20];
      v19 = BYTE8(__dst[19]);
      v21 = *(&__dst[18] + 1);
      v20 = *&__dst[19];
      v22 = __dst[18];
      v126 = BYTE1(__dst[18]);
      v23 = __dst[17];
      v24 = *(&__dst[16] + 1);
      v25 = *&__dst[16];
      v26 = __dst[15];
      v122 = BYTE8(__dst[14]);
      v27 = *(&__dst[13] + 8);
      v28 = BYTE1(__dst[13]);
      v129 = __dst[13];
      v127 = *(&__dst[12] + 1);
      v29 = *(&__dst[11] + 8);
      v30 = *(&__dst[10] + 8);
      v31 = *(&__dst[9] + 8);
      v32 = *(&__dst[8] + 8);
      v33 = *(&__dst[7] + 8);
      v34 = *(&__dst[6] + 8);
      v35 = *(&__dst[5] + 8);
      v36 = *(&__dst[4] + 8);
      v123 = __dst[4];
      v37 = __dst[3];
      v38 = BYTE8(__dst[2]);
      v39 = *&__dst[2];
      v40 = BYTE10(__dst[1]);
      v41 = BYTE9(__dst[1]);
      v42 = BYTE8(__dst[1]);
      v43 = *&__dst[1];
      v44 = BYTE10(__dst[0]);
      v46 = __dst[29];
      v45 = __dst[30];
      v48 = __dst[27];
      v47 = __dst[28];
      v50 = __dst[25];
      v49 = __dst[26];
      v51 = *&__dst[0];
LABEL_13:
      v62 = BYTE9(__dst[0]);
      v63 = BYTE8(__dst[0]);
      goto LABEL_14;
    }

    switch(*v5)
    {
      case 4:

        break;
      default:
        v6 = sub_252E37DB4();

        ++v5;
        --v4;
        if ((v6 & 1) == 0)
        {
          continue;
        }

        break;
    }

    break;
  }

  v51 = *&__dst[0];
  if (!*(*&__dst[0] + 16))
  {
    v125 = *&__dst[31];
    v7 = *(&__dst[24] + 1);
    v8 = BYTE5(__dst[24]);
    v9 = BYTE4(__dst[24]);
    v10 = BYTE3(__dst[24]);
    v11 = BYTE2(__dst[24]);
    v12 = BYTE1(__dst[24]);
    v13 = __dst[24];
    result = *&__dst[23];
    v16 = __dst[21];
    v15 = __dst[22];
    v17 = *(&__dst[20] + 1);
    v18 = *&__dst[20];
    v19 = BYTE8(__dst[19]);
    v21 = *(&__dst[18] + 1);
    v20 = *&__dst[19];
    v22 = __dst[18];
    v126 = BYTE1(__dst[18]);
    v23 = __dst[17];
    v24 = *(&__dst[16] + 1);
    v25 = *&__dst[16];
    v26 = __dst[15];
    v122 = BYTE8(__dst[14]);
    v27 = *(&__dst[13] + 8);
    v28 = BYTE1(__dst[13]);
    v129 = __dst[13];
    v127 = *(&__dst[12] + 1);
    v29 = *(&__dst[11] + 8);
    v30 = *(&__dst[10] + 8);
    v31 = *(&__dst[9] + 8);
    v32 = *(&__dst[8] + 8);
    v33 = *(&__dst[7] + 8);
    v34 = *(&__dst[6] + 8);
    v35 = *(&__dst[5] + 8);
    v36 = *(&__dst[4] + 8);
    v123 = __dst[4];
    v37 = __dst[3];
    v38 = BYTE8(__dst[2]);
    v39 = *&__dst[2];
    v40 = BYTE10(__dst[1]);
    v41 = BYTE9(__dst[1]);
    v42 = BYTE8(__dst[1]);
    v43 = *&__dst[1];
    v44 = BYTE10(__dst[0]);
    v46 = __dst[29];
    v45 = __dst[30];
    v48 = __dst[27];
    v47 = __dst[28];
    v50 = __dst[25];
    v49 = __dst[26];
    goto LABEL_13;
  }

  v121 = *&__dst[0];
  memcpy(v132, __dst, sizeof(v132));
  v52 = sub_252A15974();
  v53 = v52;
  v54 = v52 + 64;
  v55 = 1 << *(v52 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v52 + 64);
  if (v57)
  {
    v58 = 0;
    v59 = __clz(__rbit64(v57));
    v60 = (v57 - 1) & v57;
    v61 = (v55 + 63) >> 6;
LABEL_19:
    v66 = (*(v52 + 48) + 16 * v59);
    v68 = *v66;
    v67 = v66[1];
    v69 = *(*(v52 + 56) + 8 * v59);

    v70 = v68;
    v71 = v67;
    v72 = v69;
LABEL_20:
    v130 = v72;
    while (v60)
    {
LABEL_27:
      v74 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      v75 = v74 | (v58 << 6);
      v76 = (*(v53 + 48) + 16 * v75);
      v77 = *v76;
      v78 = v76[1];
      v79 = *(*(v53 + 56) + 8 * v75);
      v80 = *(v72 + 16);
      v81 = *(v79 + 16);
      if (v80 == v81)
      {
        if (v77 != v70 || v78 != v71)
        {
          v128 = v77;
          v83 = v70;
          v84 = v71;
          result = sub_252E37DB4();
          v70 = v83;
          v77 = v128;
          v72 = v130;
          v71 = v84;
          if (result)
          {
LABEL_33:

            v72 = v79;
            v71 = v78;
            v70 = v77;
            goto LABEL_20;
          }
        }
      }

      else if (v80 < v81)
      {
        goto LABEL_33;
      }
    }

    while (1)
    {
      v73 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        __break(1u);
        return result;
      }

      if (v73 >= v61)
      {
        break;
      }

      v60 = *(v54 + 8 * v73);
      ++v58;
      if (v60)
      {
        v58 = v73;
        goto LABEL_27;
      }
    }

    v85 = v72;

    if (*(v85 + 16))
    {
      memcpy(v132, (v85 + 32), sizeof(v132));
      sub_2529353AC(v132, v131);
      sub_252935408(__dst);

      v7 = *&v132[392];
      v8 = v132[389];
      v9 = v132[388];
      v10 = v132[387];
      v11 = v132[386];
      v12 = v132[385];
      v13 = v132[384];
      result = *&v132[368];
      v124 = *&v132[376];
      v125 = *&v132[496];
      v16 = *&v132[336];
      v15 = *&v132[352];
      v18 = *&v132[320];
      v17 = *&v132[328];
      v19 = v132[312];
      v21 = *&v132[296];
      v20 = *&v132[304];
      v22 = v132[288];
      v126 = v132[289];
      v23 = *&v132[272];
      v25 = *&v132[256];
      v24 = *&v132[264];
      v26 = *&v132[240];
      v122 = v132[232];
      v27 = *&v132[216];
      v28 = v132[209];
      v129 = v132[208];
      v127 = *&v132[200];
      v29 = *&v132[184];
      v30 = *&v132[168];
      v31 = *&v132[152];
      v32 = *&v132[136];
      v33 = *&v132[120];
      v34 = *&v132[104];
      v35 = *&v132[88];
      v36 = *&v132[72];
      v123 = v132[64];
      v37 = *&v132[48];
      v38 = v132[40];
      v39 = *&v132[32];
      v40 = v132[26];
      v41 = v132[25];
      v42 = v132[24];
      v43 = *&v132[16];
      v46 = *&v132[464];
      v45 = *&v132[480];
      v48 = *&v132[432];
      v47 = *&v132[448];
      v50 = *&v132[400];
      v49 = *&v132[416];
      v51 = *v132;
      v44 = v132[10];
      v62 = v132[9];
      v63 = v132[8];
      goto LABEL_14;
    }

    sub_252935408(__dst);
  }

  else
  {
    v64 = 0;
    v61 = (v55 + 63) >> 6;
    while (v61 - 1 != v57)
    {
      v58 = v57 + 1;
      v65 = *(v52 + 8 * v57 + 72);
      v64 -= 64;
      ++v57;
      if (v65)
      {
        v60 = (v65 - 1) & v65;
        v59 = __clz(__rbit64(v65)) - v64;
        goto LABEL_19;
      }
    }

    sub_252935408(__dst);
  }

  v125 = *&__dst[31];
  v120 = *(&__dst[24] + 1);
  v119 = BYTE5(__dst[24]);
  v118 = BYTE4(__dst[24]);
  v117 = BYTE3(__dst[24]);
  v116 = BYTE2(__dst[24]);
  v115 = BYTE1(__dst[24]);
  v114 = __dst[24];
  v113 = *&__dst[23];
  v111 = __dst[21];
  v112 = __dst[22];
  v110 = __dst[20];
  v109 = BYTE8(__dst[19]);
  v107 = *(&__dst[18] + 1);
  v108 = *&__dst[19];
  v106 = __dst[18];
  v126 = BYTE1(__dst[18]);
  v105 = __dst[17];
  v104 = __dst[16];
  v122 = BYTE8(__dst[14]);
  v102 = *(&__dst[13] + 8);
  v103 = __dst[15];
  v101 = BYTE1(__dst[13]);
  v129 = __dst[13];
  v127 = *(&__dst[12] + 1);
  v99 = *(&__dst[10] + 8);
  v100 = *(&__dst[11] + 8);
  v97 = *(&__dst[8] + 8);
  v98 = *(&__dst[9] + 8);
  v95 = *(&__dst[6] + 8);
  v96 = *(&__dst[7] + 8);
  v93 = *(&__dst[4] + 8);
  v94 = *(&__dst[5] + 8);
  v123 = __dst[4];
  v38 = BYTE8(__dst[2]);
  v39 = *&__dst[2];
  v40 = BYTE10(__dst[1]);
  v41 = BYTE9(__dst[1]);
  v42 = BYTE8(__dst[1]);
  v43 = *&__dst[1];
  v44 = BYTE10(__dst[0]);
  v91 = __dst[30];
  v92 = __dst[3];
  v89 = __dst[28];
  v90 = __dst[29];
  v87 = __dst[26];
  v88 = __dst[27];
  v86 = __dst[25];
  v62 = BYTE9(__dst[0]);
  v63 = BYTE8(__dst[0]);
  sub_2529353AC(__dst, v132);
  v50 = v86;
  v49 = v87;
  v48 = v88;
  v47 = v89;
  v46 = v90;
  v45 = v91;
  v37 = v92;
  v36 = v93;
  v35 = v94;
  v34 = v95;
  v33 = v96;
  v32 = v97;
  v31 = v98;
  v30 = v99;
  v29 = v100;
  v28 = v101;
  v27 = v102;
  v26 = v103;
  v24 = *(&v104 + 1);
  v25 = v104;
  v23 = v105;
  v22 = v106;
  v21 = v107;
  v20 = v108;
  v19 = v109;
  v17 = *(&v110 + 1);
  v18 = v110;
  v16 = v111;
  v15 = v112;
  result = v113;
  v13 = v114;
  v12 = v115;
  v11 = v116;
  v10 = v117;
  v9 = v118;
  v8 = v119;
  v7 = v120;
  v51 = v121;
LABEL_14:
  v131[0] = v122;
  *a2 = v51;
  *(a2 + 8) = v63;
  v132[0] = v44;
  *(a2 + 9) = v62;
  *(a2 + 10) = v44;
  *(a2 + 16) = v43;
  *(a2 + 24) = v42;
  *(a2 + 25) = v41;
  *(a2 + 26) = v40;
  *(a2 + 32) = v39;
  *(a2 + 40) = v38;
  *(a2 + 48) = v37;
  *(a2 + 64) = v123;
  *(a2 + 72) = v36;
  *(a2 + 88) = v35;
  *(a2 + 104) = v34;
  *(a2 + 120) = v33;
  *(a2 + 136) = v32;
  *(a2 + 152) = v31;
  *(a2 + 168) = v30;
  *(a2 + 184) = v29;
  *(a2 + 200) = v127;
  *(a2 + 208) = v129;
  *(a2 + 209) = v28;
  *(a2 + 216) = v27;
  *(a2 + 232) = v131[0];
  *(a2 + 240) = v26;
  *(a2 + 256) = v25;
  *(a2 + 264) = v24;
  *(a2 + 272) = v23;
  *(a2 + 288) = v22;
  *(a2 + 289) = v126;
  *(a2 + 296) = v21;
  *(a2 + 304) = v20;
  *(a2 + 312) = v19;
  *(a2 + 320) = v18;
  *(a2 + 328) = v17;
  *(a2 + 336) = v16;
  *(a2 + 352) = v15;
  *(a2 + 368) = result;
  *(a2 + 376) = v124;
  *(a2 + 384) = v13;
  *(a2 + 385) = v12;
  *(a2 + 386) = v11;
  *(a2 + 387) = v10;
  *(a2 + 388) = v9;
  *(a2 + 389) = v8;
  *(a2 + 392) = v7;
  *(a2 + 400) = v50;
  *(a2 + 416) = v49;
  *(a2 + 432) = v48;
  *(a2 + 448) = v47;
  *(a2 + 464) = v46;
  *(a2 + 480) = v45;
  *(a2 + 496) = v125;
  return result;
}

uint64_t FlowProvider.deinit()
{
  sub_25293847C(v0 + 16, &qword_27F544A98, &unk_252E59870);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse;
  v2 = sub_252E34164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  memcpy(v4, (v0 + OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent), 0x1F8uLL);
  sub_25293847C(v4, &qword_27F5404C8, &unk_252E3FD60);
  return v0;
}

uint64_t FlowProvider.__deallocating_deinit()
{
  sub_25293847C((v0 + 2), &qword_27F544A98, &unk_252E59870);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_parse;
  v2 = sub_252E34164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  memcpy(v6, v0 + OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent, 0x1F8uLL);
  sub_25293847C(v6, &qword_27F5404C8, &unk_252E3FD60);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FlowProvider()
{
  result = qword_27F544AC8;
  if (!qword_27F544AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252CA86DC()
{
  result = sub_252E34164();
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

uint64_t sub_252CA8844(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252CA888C(uint64_t a1)
{
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v36 = MEMORY[0x277D84F90];
  sub_2529AA3A0(0, v2 & ~(v2 >> 63), 0);
  v3 = v36;
  if (v30)
  {
    result = sub_252E37864();
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    result = sub_252E37834();
    v5 = *(a1 + 36);
  }

  v33 = result;
  v34 = v5;
  v35 = v30 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v29 = v2;
    while (v7 < v2)
    {
      if (__OFADD__(v7++, 1))
      {
        goto LABEL_36;
      }

      v10 = v33;
      v11 = v35;
      v31 = v34;
      v12 = sub_252DB3D9C(v33, v34, v35, a1);
      v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v36 = v3;
      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_2529AA3A0((v15 > 1), v16 + 1, 1);
        v3 = v36;
      }

      *(v3 + 16) = v16 + 1;
      v17 = v3 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      if (v30)
      {
        if (!v11)
        {
          goto LABEL_41;
        }

        v18 = v3;
        if (sub_252E37884())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544AF8, &qword_252E59938);
        v8 = sub_252E373D4();
        sub_252E37934();
        result = v8(v32, 0);
      }

      else
      {
        if (v11)
        {
          goto LABEL_42;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        v18 = v3;
        v19 = 1 << *(a1 + 32);
        if (v10 >= v19)
        {
          goto LABEL_37;
        }

        v20 = v10 >> 6;
        v21 = *(a1 + 56 + 8 * (v10 >> 6));
        if (((v21 >> v10) & 1) == 0)
        {
          goto LABEL_38;
        }

        if (*(a1 + 36) != v31)
        {
          goto LABEL_39;
        }

        v22 = v21 & (-2 << (v10 & 0x3F));
        if (v22)
        {
          v19 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v2 = v29;
        }

        else
        {
          v23 = v20 << 6;
          v24 = v20 + 1;
          v25 = (a1 + 64 + 8 * v20);
          v2 = v29;
          while (v24 < (v19 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              result = sub_252ACBF38(v10, v31, 0);
              v19 = __clz(__rbit64(v26)) + v23;
              goto LABEL_32;
            }
          }

          result = sub_252ACBF38(v10, v31, 0);
        }

LABEL_32:
        v28 = *(a1 + 36);
        v33 = v19;
        v34 = v28;
        v35 = 0;
      }

      v3 = v18;
      if (v7 == v2)
      {
        sub_252ACBF38(v33, v34, v35);
        return v3;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void *sub_252CA8BE4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

unint64_t sub_252CA8C88(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v91 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_91:
    v3 = sub_252E378C4();
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v86 = 0;
  v4 = 0;
  v77 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
  v5 = v2 & 0xC000000000000001;
  v80 = v2 + 32;
  v81 = v2 & 0xFFFFFFFFFFFFFF8;
  v79 = *MEMORY[0x277CCF788];
  v89 = *MEMORY[0x277CCF9F0];
  v72 = "Providing AsyncFlow";
  v88 = MEMORY[0x277D84F90];
  v75 = v3;
  v76 = v2;
  v74 = v2 & 0xC000000000000001;
  while (1)
  {
LABEL_4:
    if (v5)
    {
      v6 = MEMORY[0x2530ADF00](v4, v2);
    }

    else
    {
      if (v4 >= *(v81 + 16))
      {
        goto LABEL_89;
      }

      v6 = *(v80 + 8 * v4);
    }

    v7 = v6;
    if (__OFADD__(v4++, 1))
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    [v6 value];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544AF0, &qword_252E59930);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_31;
    }

    v9 = v90;
    if (v90 != 0.0)
    {
      goto LABEL_31;
    }

    v83 = v7;
    v10 = v7;
    v11 = [v10 characteristic];
    v12 = [v11 characteristicType];

    v13 = sub_252E36F34();
    v15 = v14;

    if (v13 == sub_252E36F34() && v15 == v16)
    {
      break;
    }

    v17 = sub_252E37DB4();

    if (v17)
    {
      goto LABEL_15;
    }

    v7 = v83;
LABEL_31:
    if (v86)
    {
      v31 = v7;
      v32 = [v7 characteristic];
      v33 = [v32 characteristicType];

      v34 = sub_252E36F34();
      v36 = v35;

      if (v34 == sub_252E36F34() && v36 == v37)
      {

        v7 = v31;
LABEL_74:
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v62 = sub_252E36AD4();
        __swift_project_value_buffer(v62, qword_27F544CB8);
        sub_252CC3D90(0xD000000000000040, v72 | 0x8000000000000000, 0xD000000000000080, 0x8000000252E91470);

        v86 = 1;
        goto LABEL_39;
      }

      v38 = sub_252E37DB4();

      v7 = v31;
      if (v38)
      {
        goto LABEL_74;
      }
    }

    v39 = v7;
    MEMORY[0x2530AD700]();
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v63 = v7;
      v64 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
      v7 = v63;
    }

    sub_252E372D4();
LABEL_38:

    v88 = v91;
LABEL_39:
    if (v4 == v3)
    {
      return v88;
    }
  }

LABEL_15:
  v18 = [*(a2 + v77) characteristics];
  sub_252BAC798();
  v19 = sub_252E37264();

  v85 = v10;
  v82 = v4;
  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_17;
    }

    goto LABEL_78;
  }

  v20 = sub_252E378C4();
  if (!v20)
  {
LABEL_78:

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v65 = sub_252E36AD4();
    __swift_project_value_buffer(v65, qword_27F544CB8);
    sub_252CC3D90(0xD000000000000029, 0x8000000252E91540, 0xD000000000000080, 0x8000000252E91470);
    v66 = [v10 characteristic];

    v67 = sub_252E37E04();
    v68 = [objc_opt_self() writeRequestWithCharacteristic:v66 value:v67];
    swift_unknownObjectRelease();

    MEMORY[0x2530AD700]();
    v3 = v75;
    v2 = v76;
    v4 = v82;
    v5 = v74;
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v69 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v7 = v83;
    goto LABEL_38;
  }

LABEL_17:
  v21 = 0;
  while (1)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x2530ADF00](v21, v19);
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }

      v22 = *(v19 + 8 * v21 + 32);
    }

    v23 = v22;
    v2 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v24 = [v22 characteristicType];
    v25 = sub_252E36F34();
    v27 = v26;

    if (v25 == sub_252E36F34() && v27 == v28)
    {

      goto LABEL_43;
    }

    v30 = sub_252E37DB4();

    if (v30)
    {
      break;
    }

    ++v21;
    if (v2 == v20)
    {
      goto LABEL_78;
    }
  }

LABEL_43:
  v2 = v88;
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v40 = sub_252E36AD4();
  __swift_project_value_buffer(v40, qword_27F544CB8);
  sub_252CC3D90(0xD00000000000003CLL, 0x8000000252E91500, 0xD000000000000080, 0x8000000252E91470);
  v41 = v23;
  v42 = sub_252E37E04();
  v73 = objc_opt_self();
  v84 = [v73 writeRequestWithCharacteristic:v41 value:v42];
  swift_unknownObjectRelease();
  v87 = v41;

  v43 = v88 & 0xFFFFFFFFFFFFFF8;
  if (v88 >> 62)
  {
    v44 = sub_252E378C4();
  }

  else
  {
    v44 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = -v44;
  v46 = 4;
  while (1)
  {
    if (v45 + v46 == 4)
    {
      v58 = v87;
      v59 = [v73 writeRequestWithCharacteristic:v58 value:sub_252E37E04()];
      swift_unknownObjectRelease();

      MEMORY[0x2530AD700]();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v70 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();

      v88 = v91;
      goto LABEL_71;
    }

    v47 = v46 - 4;
    if ((v88 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x2530ADF00](v46 - 4, v88);
    }

    else
    {
      if (v47 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_86;
      }

      v48 = *(v88 + 8 * v46);
    }

    v49 = v48;
    v50 = [v48 characteristic];
    v51 = [v50 characteristicType];

    v52 = sub_252E36F34();
    v54 = v53;

    if (v52 == sub_252E36F34() && v54 == v55)
    {
      break;
    }

    v57 = sub_252E37DB4();

    if (v57)
    {
      goto LABEL_65;
    }

    ++v46;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_88;
    }
  }

LABEL_65:
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v88 >> 62 || !isUniquelyReferenced_nonNull_bridgeObject)
  {
    v2 = sub_252D57AFC(v88);

    v43 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
  }

  if (v47 >= *(v43 + 16))
  {
    goto LABEL_90;
  }

  v61 = *(v43 + 8 * v46);
  *(v43 + 8 * v46) = v84;

  v88 = v2;
  v91 = v2;
LABEL_71:
  v86 = 1;
  v3 = v75;
  v2 = v76;
  v4 = v82;
  v5 = v74;
  if (v82 != v75)
  {
    goto LABEL_4;
  }

  return v88;
}

unint64_t *sub_252CA96F8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v24 = a4;
  v21 = a2;
  v22 = result;
  v4 = 0;
  v25 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v25 + 48) + 8 * v13);

    v26[0] = sub_252E32E24();
    v26[1] = v15;
    MEMORY[0x28223BE20](v26[0]);
    v20[2] = v26;
    v16 = v27;
    v17 = sub_2529ED970(sub_25296A724, v20, v24);
    v27 = v16;

    if (v17)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:
        v19 = v25;

        return sub_252C53048(v22, v21, v23, v19);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252CA98C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v38[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v36 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v37 = v3;
    v31 = &v31;
    v32 = v7;
    MEMORY[0x28223BE20](v9);
    v33 = &v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v33, v8);
    v34 = 0;
    v35 = v4;
    v10 = 0;
    v12 = *(v4 + 56);
    v4 += 56;
    v11 = v12;
    v13 = 1 << *(v4 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v7 = v17 | (v10 << 6);
      v20 = *(*(v35 + 48) + 8 * v7);

      v21 = sub_252E32E24();
      v8 = v22;
      v3 = &v31;
      v38[0] = v21;
      v38[1] = v22;
      MEMORY[0x28223BE20](v21);
      *(&v31 - 2) = v38;
      v23 = v37;
      v24 = sub_2529ED970(sub_25296A724, (&v31 - 4), v36);
      v37 = v23;

      if (v24)
      {
        *&v33[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
LABEL_16:
          v26 = sub_252C53048(v33, v32, v34, v35);

          goto LABEL_17;
        }
      }
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {
        goto LABEL_16;
      }

      v19 = *(v4 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v36;

  v26 = sub_252CA8BE4(v29, v7, v4, v30, sub_252CA96F8);

  MEMORY[0x2530AED00](v29, -1, -1);

LABEL_17:
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t sub_252CA9BC0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_252CA98C4(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v26 = MEMORY[0x277D84FA0];

  sub_252E37874();
  v4 = sub_252E37904();
  if (v4)
  {
    v5 = v4;
    type metadata accessor for Service();
    v6 = v5;
    do
    {
      v25[0] = v6;
      swift_dynamicCast();
      v25[0] = sub_252E32E24();
      v25[1] = v7;
      MEMORY[0x28223BE20](v25[0]);
      v24[2] = v25;
      v8 = sub_2529ED970(sub_25296A69C, v24, a2);

      v9 = v25[9];
      if (v8)
      {
        v10 = *(v3 + 16);
        if (*(v3 + 24) <= v10)
        {
          sub_252DAAAAC(v10 + 1);
        }

        v3 = v26;
        v11 = *(v26 + 40);
        sub_252E37EC4();
        sub_252E32E84();
        sub_252A19940(&qword_27F540680, MEMORY[0x277CC95F0]);
        sub_252E36E94();
        MEMORY[0x2530AE390](*(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
        v13 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v12 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        sub_252E37044();

        result = sub_252E37F14();
        v15 = v3 + 56;
        v16 = -1 << *(v3 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v3 + 56 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v3 + 56 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v21 && (v20 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v22 = v18 == v21;
            if (v18 == v21)
            {
              v18 = 0;
            }

            v20 |= v22;
            v23 = *(v15 + 8 * v18);
          }

          while (v23 == -1);
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        }

        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v3 + 48) + 8 * v19) = v9;
        ++*(v3 + 16);
      }

      else
      {
      }

      v6 = sub_252E37904();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_252CA9EE8(void *a1)
{
  v2 = [a1 entityResponses];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544D60);
    sub_252E379F4();

    v6 = a1;
    v7 = [v6 description];
    v8 = sub_252E36F34();
    v10 = v9;

    MEMORY[0x2530AD570](v8, v10);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v4 = MEMORY[0x277D84F90];
  }

  v61 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v12 = 0;
    v13 = v4 & 0xC000000000000001;
    v14 = v4 & 0xFFFFFFFFFFFFFF8;
    v56 = v4;
    v4 += 32;
    v15 = &off_279711000;
    v59 = v13;
    v60 = i;
    v57 = v4;
    v58 = v14;
    while (1)
    {
      if (v13)
      {
        v16 = MEMORY[0x2530ADF00](v12, v56);
      }

      else
      {
        if (v12 >= *(v14 + 16))
        {
          goto LABEL_45;
        }

        v16 = *(v4 + 8 * v12);
      }

      v17 = v16;
      v18 = __OFADD__(v12++, 1);
      if (v18)
      {
        break;
      }

      v19 = [v16 v15[220]];
      if (v19)
      {
        v20 = v19;
        type metadata accessor for HomeUserTaskResponse();
        v21 = sub_252E37264();

        v22 = [v17 entity];
        if (v22)
        {

          if (v21 >> 62)
          {
            v23 = sub_252E378C4();
            if (v23)
            {
LABEL_19:
              v24 = 0;
              v4 = v21 + 32;
              while (1)
              {
                if ((v21 & 0xC000000000000001) != 0)
                {
                  v25 = MEMORY[0x2530ADF00](v24, v21);
                }

                else
                {
                  if (v24 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_43;
                  }

                  v25 = *(v4 + 8 * v24);
                }

                v26 = v25;
                v18 = __OFADD__(v24++, 1);
                if (v18)
                {
                  __break(1u);
LABEL_43:
                  __break(1u);
                  goto LABEL_44;
                }

                if (qword_27F53F728 != -1)
                {
                  swift_once();
                }

                v27 = qword_27F575C38;
                v28 = [v26 taskOutcome];
                if (*(v27 + 16))
                {
                  v29 = v28;
                  v30 = *(v27 + 40);
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](v29);
                  v31 = sub_252E37F14();
                  v32 = -1 << *(v27 + 32);
                  v33 = v31 & ~v32;
                  if ((*(v27 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
                  {
                    break;
                  }
                }

LABEL_20:

                if (v24 == v23)
                {

                  goto LABEL_35;
                }
              }

              v34 = ~v32;
              while (*(*(v27 + 48) + 8 * v33) != v29)
              {
                v33 = (v33 + 1) & v34;
                if (((*(v27 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
                {
                  goto LABEL_20;
                }
              }

              sub_252E37A94();
              v35 = *(v61 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
LABEL_35:
              v13 = v59;
              i = v60;
              v4 = v57;
              v14 = v58;
              v15 = &off_279711000;
              if (v12 != v60)
              {
                continue;
              }

LABEL_41:
              v36 = v61;
              goto LABEL_48;
            }
          }

          else
          {
            v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v23)
            {
              goto LABEL_19;
            }
          }
        }
      }

      if (v12 == i)
      {
        goto LABEL_41;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_48:

  if (v36 < 0 || (v36 & 0x4000000000000000) != 0)
  {
    goto LABEL_69;
  }

  for (j = *(v36 + 16); j; j = sub_252E378C4())
  {
    v38 = v36 & 0xC000000000000001;
    v39 = MEMORY[0x277D84F90];
    v40 = 0;
    if ((v36 & 0xC000000000000001) != 0)
    {
LABEL_66:
      v41 = MEMORY[0x2530ADF00](v40, v36);
      goto LABEL_57;
    }

    while (v40 < *(v36 + 16))
    {
      v41 = *(v36 + 8 * v40 + 32);
LABEL_57:
      v42 = v41;
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        break;
      }

      v44 = [v41 entity];
      if (v44 && (v45 = v44, v46 = [v44 entityIdentifier], v45, v46))
      {
        v47 = sub_252E36F34();
        v49 = v48;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_2529F7A80(0, *(v39 + 2) + 1, 1, v39);
        }

        v51 = *(v39 + 2);
        v50 = *(v39 + 3);
        if (v51 >= v50 >> 1)
        {
          v39 = sub_2529F7A80((v50 > 1), v51 + 1, 1, v39);
        }

        *(v39 + 2) = v51 + 1;
        v52 = &v39[16 * v51];
        *(v52 + 4) = v47;
        *(v52 + 5) = v49;
        if (v43 == j)
        {
          goto LABEL_71;
        }

        v40 = v43;
        if (v38)
        {
          goto LABEL_66;
        }
      }

      else
      {

        ++v40;
        if (v43 == j)
        {
          goto LABEL_71;
        }

        if (v38)
        {
          goto LABEL_66;
        }
      }
    }

    __break(1u);
LABEL_69:
    ;
  }

  v39 = MEMORY[0x277D84F90];
LABEL_71:

  v54 = sub_252CA9BC0(v53, v39);

  return v54;
}

uint64_t sub_252CAA4E0(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v65 = sub_252CC6468(MEMORY[0x277D84F90]);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for Service();
    sub_252A19940(&qword_27F541EB0, type metadata accessor for Service);
    sub_252E373E4();
    v3 = v74;
    v4 = v75;
    v5 = v76;
    v6 = v77;
    v7 = v78;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v12 = a2 & 0xFFFFFFFFFFFFFF8;
  v71 = a2 & 0xC000000000000001;
  v70 = a2;
  v67 = v3;
  v68 = v4;
  v66 = v11;
LABEL_8:
  v13 = v6;
  while (v3 < 0)
  {
    if (!sub_252E37904() || (type metadata accessor for Service(), swift_dynamicCast(), v16 = v72, v6 = v13, v69 = v7, !v72))
    {
LABEL_59:
      sub_25297DEB0();
      if (qword_27F53F498 == -1)
      {
        goto LABEL_60;
      }

      goto LABEL_64;
    }

LABEL_19:
    if (a2 >> 62)
    {
      v17 = sub_252E378C4();
      if (!v17)
      {
        goto LABEL_53;
      }

LABEL_21:
      v18 = 0;
      while (2)
      {
        if (v71)
        {
          v19 = MEMORY[0x2530ADF00](v18, a2);
        }

        else
        {
          if (v18 >= *(v12 + 16))
          {
            goto LABEL_62;
          }

          v19 = *(a2 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v22 = [v19 entity];
        if (v22 && (v23 = v22, v24 = [v22 entityIdentifier], v23, v24))
        {
          v25 = sub_252E36F34();
          v27 = v26;

          v28 = sub_252E32E24();
          if (v27)
          {
            if (v25 == v28 && v27 == v29)
            {

              a2 = v70;
LABEL_41:
              v32 = sub_252DA0F40(0x1B, 4);
              v33 = v32;
              if (!(v32 >> 62))
              {
                result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (result)
                {
                  goto LABEL_43;
                }

LABEL_52:

                goto LABEL_53;
              }

              result = sub_252E378C4();
              if (!result)
              {
                goto LABEL_52;
              }

LABEL_43:
              if ((v33 & 0xC000000000000001) != 0)
              {
                v35 = MEMORY[0x2530ADF00](0, v33);
              }

              else
              {
                if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return result;
                }

                v35 = *(v33 + 32);
              }

              v36 = v35;

              v37 = [v36 userTask];

              if (!v37 || (v38 = [v37 value], v37, !v38))
              {

                goto LABEL_53;
              }

              v48 = [v38 BOOLValue];

              v49 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
              v50 = sub_252E36F04();
              v51 = [v49 initWithIdentifier:0 displayString:v50];

              v52 = v51;
              [v52 setBoolValue_];
              [v52 setType_];

              v53 = objc_allocWithZone(type metadata accessor for HomeUserTask());
              v54 = sub_252E36F04();
              v55 = [v53 initWithIdentifier:0 displayString:v54];

              v56 = v55;
              [v56 setTaskType_];
              [v56 setAttribute_];
              [v56 setValue_];

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
              v57 = swift_allocObject();
              *(v57 + 16) = xmmword_252E3C130;
              *(v57 + 32) = v56;
              v58 = v56;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v72 = v65;
              sub_2529FB234(v57, v16, isUniquelyReferenced_nonNull_native);

              v65 = v72;
              v3 = v67;
              v4 = v68;
              v11 = v66;
              v7 = v69;
              goto LABEL_8;
            }

            v31 = sub_252E37DB4();

            a2 = v70;
            if (v31)
            {
              goto LABEL_41;
            }

            goto LABEL_24;
          }

          a2 = v70;
        }

        else
        {
          sub_252E32E24();
        }

LABEL_24:

        ++v18;
        if (v21 == v17)
        {
          goto LABEL_53;
        }

        continue;
      }
    }

    v17 = *(v12 + 16);
    if (v17)
    {
      goto LABEL_21;
    }

LABEL_53:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v39 = sub_252E36AD4();
    __swift_project_value_buffer(v39, qword_27F544C70);

    v40 = sub_252E36AC4();
    v41 = sub_252E374D4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v72 = v43;
      *v42 = 136315138;

      v44 = sub_252CDBB90();
      v46 = v45;

      v47 = sub_252BE2CE0(v44, v46, &v72);
      a2 = v70;

      *(v42 + 4) = v47;
      _os_log_impl(&dword_252917000, v40, v41, "Couldn't find expected BOOLean value. Ignoring setting command for %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x2530AED00](v43, -1, -1);
      MEMORY[0x2530AED00](v42, -1, -1);
    }

    sub_2529515FC(8, 12, 0xD000000000000012, 0x8000000252E91590);

    v13 = v6;
    v4 = v68;
    v7 = v69;
    v11 = v66;
    v3 = v67;
  }

  v14 = v13;
  v15 = v7;
  v6 = v13;
  if (v7)
  {
LABEL_15:
    v69 = (v15 - 1) & v15;
    v16 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v16)
    {
      goto LABEL_59;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_59;
    }

    v15 = *(v4 + 8 * v6);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  swift_once();
LABEL_60:
  v60 = sub_252E36AD4();
  __swift_project_value_buffer(v60, qword_27F544C70);
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_252E379F4();

  v72 = 0xD00000000000001CLL;
  v73 = 0x8000000252E91570;
  sub_252CA888C(a1);
  v61 = MEMORY[0x2530AD730]();
  v63 = v62;

  MEMORY[0x2530AD570](v61, v63);

  sub_252CC3D90(v72, v73, 0xD000000000000080, 0x8000000252E91470);

  return v65;
}

uint64_t sub_252CAAD54(uint64_t a1, void *a2)
{
  v3 = sub_252CC6468(MEMORY[0x277D84F90]);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for Service();
    sub_252A19940(&qword_27F541EB0, type metadata accessor for Service);
    sub_252E373E4();
    a1 = v65;
    v4 = v66;
    v5 = v67;
    v6 = v68;
    v7 = v69;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v57 = v11;
  v58 = v4;
  while (a1 < 0)
  {
    v20 = sub_252E37904();
    if (!v20 || (v63 = v20, type metadata accessor for Service(), swift_dynamicCast(), v17 = v6, v18 = v7, (v61 = v64) == 0))
    {
LABEL_42:
      sub_25297DEB0();
      return v3;
    }

LABEL_19:
    v60 = v18;
    v64 = MEMORY[0x277D84F90];
    if ([a2 taskType] == 2 || (v21 = objc_msgSend(a2, sel_taskType), v22 = MEMORY[0x277D84F90], v21 == 3))
    {
      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v59 = v3;
      v23 = sub_252E36AD4();
      __swift_project_value_buffer(v23, qword_2814B0A78);
      v24 = a2;
      v25 = sub_252E36AC4();
      v26 = sub_252E374C4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v63 = v28;
        *v27 = 136315138;
        v29 = HomeAttributeType.description.getter([v24 attribute]);
        v31 = a1;
        v32 = sub_252BE2CE0(v29, v30, &v63);

        *(v27 + 4) = v32;
        a1 = v31;
        _os_log_impl(&dword_252917000, v25, v26, "Appending get %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x2530AED00](v28, -1, -1);
        MEMORY[0x2530AED00](v27, -1, -1);
      }

      v33 = [v24 attribute];
      v34 = type metadata accessor for HomeUserTask();
      v35 = objc_allocWithZone(v34);
      v36 = sub_252E36F04();
      v37 = [v35 initWithIdentifier:0 displayString:v36];

      v38 = v37;
      [v38 setTaskType_];
      [v38 setAttribute_];
      [v38 setValue_];

      MEMORY[0x2530AD700]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v22 = v64;
      v3 = v59;
      if ([v24 taskType] == 3 && objc_msgSend(v24, sel_attribute) == 2)
      {
        v39 = objc_allocWithZone(v34);
        v40 = sub_252E36F04();
        v41 = [v39 initWithIdentifier:0 displayString:v40];

        v42 = v41;
        [v42 setTaskType_];
        [v42 setAttribute_];
        [v42 setValue_];

        MEMORY[0x2530AD700]();
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v55 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v22 = v64;
        v3 = v59;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v3;
    v44 = sub_252A454C0(v61);
    v46 = v3[2];
    v47 = (v45 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      goto LABEL_44;
    }

    v50 = v45;
    if (v3[3] < v49)
    {
      sub_252E00638(v49, isUniquelyReferenced_nonNull_native);
      v44 = sub_252A454C0(v61);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_46;
      }

LABEL_37:
      v3 = v63;
      if (v50)
      {
        goto LABEL_8;
      }

      goto LABEL_38;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_37;
    }

    v54 = v44;
    sub_252E03EC4();
    v44 = v54;
    v3 = v63;
    if (v50)
    {
LABEL_8:
      v12 = v3[7];
      v13 = v3;
      v14 = *(v12 + 8 * v44);
      *(v12 + 8 * v44) = v22;

      v3 = v13;

      goto LABEL_9;
    }

LABEL_38:
    v3[(v44 >> 6) + 8] |= 1 << v44;
    *(v3[6] + 8 * v44) = v61;
    *(v3[7] + 8 * v44) = v22;
    v52 = v3[2];
    v48 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v48)
    {
      goto LABEL_45;
    }

    v3[2] = v53;
LABEL_9:
    v6 = v17;
    v7 = v60;
    v11 = v57;
    v4 = v58;
  }

  v15 = v6;
  v16 = v7;
  v17 = v6;
  if (v7)
  {
LABEL_15:
    v18 = (v16 - 1) & v16;
    v19 = *(*(a1 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v61)
    {
      goto LABEL_42;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v11)
    {
      goto LABEL_42;
    }

    v16 = *(v4 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  type metadata accessor for Service();
  result = sub_252E37E24();
  __break(1u);
  return result;
}

unint64_t *sub_252CAB3E8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v24 = a4;
  v21 = a2;
  v22 = result;
  v4 = 0;
  v25 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v25 + 48) + 8 * v13);

    v26[0] = sub_252E32E24();
    v26[1] = v15;
    MEMORY[0x28223BE20](v26[0]);
    v20[2] = v26;
    v16 = v27;
    v17 = sub_2529ED970(sub_25296A724, v20, v24);
    v27 = v16;

    if ((v17 & 1) == 0)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:
        v19 = v25;

        return sub_252C53048(v22, v21, v23, v19);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252CAB5B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v38[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v36 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v37 = v3;
    v31 = &v31;
    v32 = v7;
    MEMORY[0x28223BE20](v9);
    v33 = &v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v33, v8);
    v34 = 0;
    v35 = v4;
    v10 = 0;
    v12 = *(v4 + 56);
    v4 += 56;
    v11 = v12;
    v13 = 1 << *(v4 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v7 = v17 | (v10 << 6);
      v20 = *(*(v35 + 48) + 8 * v7);

      v21 = sub_252E32E24();
      v8 = v22;
      v3 = &v31;
      v38[0] = v21;
      v38[1] = v22;
      MEMORY[0x28223BE20](v21);
      *(&v31 - 2) = v38;
      v23 = v37;
      v24 = sub_2529ED970(sub_25296A724, (&v31 - 4), v36);
      v37 = v23;

      if ((v24 & 1) == 0)
      {
        *&v33[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
LABEL_16:
          v26 = sub_252C53048(v33, v32, v34, v35);

          goto LABEL_17;
        }
      }
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {
        goto LABEL_16;
      }

      v19 = *(v4 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v36;

  v26 = sub_252CA8BE4(v29, v7, v4, v30, sub_252CAB3E8);

  MEMORY[0x2530AED00](v29, -1, -1);

LABEL_17:
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t sub_252CAB8B0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_252CAB5B4(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v26 = MEMORY[0x277D84FA0];

  sub_252E37874();
  v4 = sub_252E37904();
  if (v4)
  {
    v5 = v4;
    type metadata accessor for Service();
    v6 = v5;
    do
    {
      v25[0] = v6;
      swift_dynamicCast();
      v25[0] = sub_252E32E24();
      v25[1] = v7;
      MEMORY[0x28223BE20](v25[0]);
      v24[2] = v25;
      v8 = sub_2529ED970(sub_25296A724, v24, a2);

      v9 = v25[9];
      if (v8)
      {
      }

      else
      {
        v10 = *(v3 + 16);
        if (*(v3 + 24) <= v10)
        {
          sub_252DAAAAC(v10 + 1);
        }

        v3 = v26;
        v11 = *(v26 + 40);
        sub_252E37EC4();
        sub_252E32E84();
        sub_252A19940(&qword_27F540680, MEMORY[0x277CC95F0]);
        sub_252E36E94();
        MEMORY[0x2530AE390](*(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
        v13 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v12 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        sub_252E37044();

        result = sub_252E37F14();
        v15 = v3 + 56;
        v16 = -1 << *(v3 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v3 + 56 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v3 + 56 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v21 && (v20 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v22 = v18 == v21;
            if (v18 == v21)
            {
              v18 = 0;
            }

            v20 |= v22;
            v23 = *(v15 + 8 * v18);
          }

          while (v23 == -1);
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        }

        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v3 + 48) + 8 * v19) = v9;
        ++*(v3 + 16);
      }

      v6 = sub_252E37904();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_252CABBD8(void *a1, uint64_t a2, id a3)
{
  v4 = [a3 entityResponses];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeEntityResponse();
    v6 = sub_252E37264();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D60);
    sub_252E379F4();

    v57 = 0x8000000252E69700;
    v8 = a3;
    v9 = [v8 description];
    v10 = sub_252E36F34();
    v12 = v11;

    MEMORY[0x2530AD570](v10, v12);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v6 = MEMORY[0x277D84F90];
  }

  v56 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v14 = 0;
    v49 = v6 & 0xFFFFFFFFFFFFFF8;
    v50 = v6 & 0xC000000000000001;
    v46 = v6;
    v47 = i;
    v48 = v6 + 32;
    while (1)
    {
      if (v50)
      {
        v15 = MEMORY[0x2530ADF00](v14, v46);
      }

      else
      {
        if (v14 >= *(v49 + 16))
        {
          goto LABEL_35;
        }

        v15 = *(v48 + 8 * v14);
      }

      v6 = v15;
      if (__OFADD__(v14++, 1))
      {
        break;
      }

      v17 = [v15 taskResponses];
      if (v17)
      {
        v18 = v17;
        type metadata accessor for HomeUserTaskResponse();
        v19 = sub_252E37264();

        if (v19 >> 62)
        {
          v20 = sub_252E378C4();
          v51 = v6;
          if (v20)
          {
LABEL_17:
            v21 = 0;
            v6 = v19 & 0xC000000000000001;
            while (1)
            {
              if (v6)
              {
                v22 = MEMORY[0x2530ADF00](v21, v19);
              }

              else
              {
                if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_33;
                }

                v22 = *(v19 + 8 * v21 + 32);
              }

              v23 = v22;
              v24 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                break;
              }

              v55 = v22;
              v25 = sub_252DA5D40(&v55, a2, a1, 0, 1);

              if (v25)
              {

                sub_252E37A94();
                v26 = *(v56 + 16);
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
                goto LABEL_30;
              }

              ++v21;
              if (v24 == v20)
              {
                goto LABEL_29;
              }
            }

            __break(1u);
LABEL_33:
            __break(1u);
            break;
          }
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v51 = v6;
          if (v20)
          {
            goto LABEL_17;
          }
        }

LABEL_29:

LABEL_30:
        i = v47;
        if (v14 == v47)
        {
LABEL_31:
          v27 = v56;
          goto LABEL_38;
        }
      }

      else
      {

        if (v14 == i)
        {
          goto LABEL_31;
        }
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_38:

  if (v27 < 0 || (v27 & 0x4000000000000000) != 0)
  {
    goto LABEL_59;
  }

  for (j = *(v27 + 16); j; j = sub_252E378C4())
  {
    v29 = v27 & 0xC000000000000001;
    v54 = MEMORY[0x277D84F90];
    v30 = 0;
    if ((v27 & 0xC000000000000001) != 0)
    {
LABEL_56:
      v31 = MEMORY[0x2530ADF00](v30, v27);
      goto LABEL_47;
    }

    while (v30 < *(v27 + 16))
    {
      v31 = *(v27 + 8 * v30 + 32);
LABEL_47:
      v32 = v31;
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        break;
      }

      v34 = [v31 entity];
      if (v34 && (v35 = v34, v36 = [v34 entityIdentifier], v35, v36))
      {
        v37 = sub_252E36F34();
        v39 = v38;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_2529F7A80(0, *(v54 + 2) + 1, 1, v54);
        }

        v41 = *(v54 + 2);
        v40 = *(v54 + 3);
        if (v41 >= v40 >> 1)
        {
          v54 = sub_2529F7A80((v40 > 1), v41 + 1, 1, v54);
        }

        *(v54 + 2) = v41 + 1;
        v42 = &v54[16 * v41];
        *(v42 + 4) = v37;
        *(v42 + 5) = v39;
        if (v33 == j)
        {
          goto LABEL_61;
        }

        v30 = v33;
        if (v29)
        {
          goto LABEL_56;
        }
      }

      else
      {

        ++v30;
        if (v33 == j)
        {
          goto LABEL_61;
        }

        if (v29)
        {
          goto LABEL_56;
        }
      }
    }

    __break(1u);
LABEL_59:
    ;
  }

  v54 = MEMORY[0x277D84F90];
LABEL_61:

  v44 = sub_252CAB8B0(v43, v54);

  return v44;
}

uint64_t sub_252CAC120(void *a1, void *a2)
{
  v4 = sub_252CA9EE8(a1);
  if ([a2 taskType] != 3 || objc_msgSend(a2, sel_attribute) != 2)
  {
    return v4;
  }

  v5 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setBoolValue_];
  [v8 setType_];

  v9 = sub_252CABBD8(v8, 27, a1);

  return v9;
}

unint64_t sub_252CAC228(uint64_t a1, unint64_t a2, void *a3)
{
  v93 = sub_252CC6468(MEMORY[0x277D84F90]);
  v91 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for Service();
    sub_252A19940(&qword_27F541EB0, type metadata accessor for Service);
    sub_252E373E4();
    a1 = v102;
    v4 = v103;
    v5 = v104;
    v6 = v105;
    v7 = v106;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v95 = a1;
  v96 = v4;
  v94 = v11;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  while (2)
  {
    v16 = sub_252E37904();
    if (!v16 || (v99 = v16, type metadata accessor for Service(), swift_dynamicCast(), v15 = v100, v14 = v6, v97 = v7, !v100))
    {
LABEL_69:
      sub_25297DEB0();
      if (qword_27F53F498 != -1)
      {
        goto LABEL_74;
      }

      goto LABEL_70;
    }

    while (1)
    {
      v100 = MEMORY[0x277D84F90];
      if (a2 >> 62)
      {
        break;
      }

      v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_20;
      }

LABEL_9:

      v6 = v14;
      v4 = v96;
      v7 = v97;
      v11 = v94;
      a1 = v95;
      if (v95 < 0)
      {
        goto LABEL_16;
      }

LABEL_10:
      v12 = v6;
      v13 = v7;
      v14 = v6;
      if (!v7)
      {
        while (1)
        {
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v14 >= v11)
          {
            goto LABEL_69;
          }

          v13 = *(v4 + 8 * v14);
          ++v12;
          if (v13)
          {
            goto LABEL_14;
          }
        }

LABEL_73:
        __break(1u);
LABEL_74:
        swift_once();
LABEL_70:
        v84 = sub_252E36AD4();
        __swift_project_value_buffer(v84, qword_27F544C70);
        v100 = 0;
        v101 = 0xE000000000000000;
        sub_252E379F4();

        v100 = 0xD00000000000001BLL;
        v101 = 0x8000000252E915B0;
        sub_252CA888C(v91);
        v85 = MEMORY[0x2530AD730]();
        v87 = v86;

        MEMORY[0x2530AD570](v85, v87);

        sub_252CC3D90(v100, v101, 0xD000000000000080, 0x8000000252E91470);

        return v93;
      }

LABEL_14:
      v97 = (v13 - 1) & v13;
      v15 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

      if (!v15)
      {
        goto LABEL_69;
      }
    }

    v17 = sub_252E378C4();
    if (!v17)
    {
      goto LABEL_9;
    }

LABEL_20:
    v18 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2530ADF00](v18, a2);
      }

      else
      {
        if (v18 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v19 = *(a2 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v22 = [v19 entity];
      if (!v22 || (v23 = v22, v24 = [v22 entityIdentifier], v23, !v24))
      {
        sub_252E32E24();
LABEL_22:

        goto LABEL_23;
      }

      v25 = sub_252E36F34();
      v27 = v26;

      v28 = sub_252E32E24();
      if (!v27)
      {
        goto LABEL_22;
      }

      if (v25 == v28 && v27 == v29)
      {
        break;
      }

      v31 = sub_252E37DB4();

      if (v31)
      {
        goto LABEL_39;
      }

LABEL_23:

      ++v18;
      if (v21 == v17)
      {
        goto LABEL_9;
      }
    }

LABEL_39:
    result = sub_252DA0F40([a3 attribute], 4);
    if (!(result >> 62))
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

LABEL_60:

LABEL_61:
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v72 = sub_252E36AD4();
      __swift_project_value_buffer(v72, qword_27F544C70);

      v73 = sub_252E36AC4();
      v74 = sub_252E374D4();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v99 = v76;
        *v75 = 136315138;

        v77 = sub_252CDBB90();
        v79 = v78;

        v80 = sub_252BE2CE0(v77, v79, &v99);

        *(v75 + 4) = v80;
        _os_log_impl(&dword_252917000, v73, v74, "Couldn't find expected BOOLean value. Ignoring creating delta value command for %s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x2530AED00](v76, -1, -1);
        MEMORY[0x2530AED00](v75, -1, -1);
      }

      v60 = v93;
      sub_2529515FC(8, 12, 0xD000000000000010, 0x8000000252E915D0);
      v59 = MEMORY[0x277D84F90];
      goto LABEL_66;
    }

    v70 = result;
    v71 = sub_252E378C4();
    result = v70;
    if (!v71)
    {
      goto LABEL_60;
    }

LABEL_41:
    if ((result & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x2530ADF00](0);
LABEL_44:
      v34 = v33;

      v35 = [v34 userTask];

      if (!v35)
      {
        goto LABEL_61;
      }

      v36 = COERCE_DOUBLE(sub_2529C7370());
      v38 = v37;
      v40 = v39;

      if (v38)
      {
        goto LABEL_61;
      }

      v41 = [a3 value];
      if (!v41)
      {
        goto LABEL_61;
      }

      v42 = v36;
      v43 = v41;
      [v41 doubleValue];
      v45 = v44;

      v46 = [a3 taskType];
      v47 = -v45;
      if (v46 != 3)
      {
        v47 = v45;
      }

      v48 = v47 + v42;
      v89 = [a3 attribute];
      v88 = type metadata accessor for HomeAttributeValue();
      v49 = objc_allocWithZone(v88);
      v50 = sub_252E36F04();
      v51 = [v49 initWithIdentifier:0 displayString:v50];

      v52 = v51;
      [v52 setDoubleValue_];
      [v52 setUnit_];
      [v52 setType_];

      v53 = type metadata accessor for HomeUserTask();
      v54 = objc_allocWithZone(v53);
      v55 = sub_252E36F04();
      v56 = [v54 initWithIdentifier:0 displayString:v55];

      v57 = v56;
      [v57 setTaskType_];
      [v57 setAttribute_];
      [v57 setValue_];

      v58 = v57;
      MEMORY[0x2530AD700]();
      if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v82 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v59 = v100;
      v60 = v93;
      if ([a3 attribute] == 2 && v45 != 0.0)
      {
        v90 = v58;
        v61 = objc_allocWithZone(v88);
        v62 = sub_252E36F04();
        v63 = [v61 initWithIdentifier:0 displayString:v62];

        v64 = v63;
        [v64 setBoolValue_];
        [v64 setType_];

        v65 = objc_allocWithZone(v53);
        v66 = sub_252E36F04();
        v67 = [v65 initWithIdentifier:0 displayString:v66];

        v68 = v67;
        [v68 setTaskType_];
        [v68 setAttribute_];
        [v68 setValue_];

        v69 = v68;
        MEMORY[0x2530AD700]();
        if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v83 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();

        v59 = v100;
      }

      else
      {
      }

LABEL_66:
      a1 = v95;
      v4 = v96;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = v60;
      sub_2529FB234(v59, v15, isUniquelyReferenced_nonNull_native);

      v93 = v99;
      v6 = v14;
      v7 = v97;
      v11 = v94;
      if ((v95 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      continue;
    }

    break;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(result + 32);
    goto LABEL_44;
  }

  __break(1u);
  return result;
}

uint64_t sub_252CACCC8(uint64_t a1, void *a2)
{
  v4 = sub_252CC6468(MEMORY[0x277D84F90]);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for Service();
    sub_252A19940(&qword_27F541EB0, type metadata accessor for Service);
    sub_252E373E4();
    a1 = v135;
    v5 = v136;
    v6 = v137;
    v7 = v138;
    v8 = v139;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v124 = v5;
  v12 = (v6 + 64) >> 6;
  v131 = v12;
  v132 = a1;
  v130 = a2;
  while (a1 < 0)
  {
    if (!sub_252E37904() || (type metadata accessor for Service(), swift_dynamicCast(), v19 = v133, v17 = v7, v18 = v8, !v133))
    {
LABEL_77:
      sub_25297DEB0();
      return v4;
    }

LABEL_19:
    v134 = MEMORY[0x277D84F90];
    if ([a2 attribute] == 2 && objc_msgSend(a2, sel_taskType) == 1)
    {
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      v20 = sub_252E36AD4();
      __swift_project_value_buffer(v20, qword_27F544CB8);
      sub_252E379F4();

      [v130 value];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
      v21 = sub_252E36F94();
      MEMORY[0x2530AD570](v21);

      sub_252CC3D90(0xD000000000000012, 0x8000000252E915F0, 0xD000000000000080, 0x8000000252E91470);

      v22 = [v130 value];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 type];

        v25 = v24 == 5;
      }

      else
      {
        v25 = 0;
      }

      v78 = &off_279711000;
      v79 = [v130 value];
      v5 = v124;
      v129 = v18;
      v127 = v25;
      if (v79 && ((v80 = v79, [v79 doubleValue], v82 = v81, v80, v82 != 0.0) ? (v83 = 1) : (v83 = v25), (v83 & 1) == 0))
      {
        v85 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v86 = sub_252E36F04();
        v87 = [v85 initWithIdentifier:0 displayString:v86];

        v88 = v87;
        [v88 setBoolValue_];
        [v88 &:1 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

        v89 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v90 = sub_252E36F04();
        v91 = [v89 initWithIdentifier:0 displayString:v90];

        v92 = v91;
        [v92 setTaskType_];
        [v92 setAttribute_];
        [v92 setValue_];

        v93 = v92;
        MEMORY[0x2530AD700]();
        if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v115 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v65 = v134;
        v94 = sub_252E36AC4();
        v95 = sub_252E374C4();
        a2 = v130;
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          *v96 = 0;
          _os_log_impl(&dword_252917000, v94, v95, "Converting brightness percentage task into a set power to false task", v96, 2u);
          MEMORY[0x2530AED00](v96, -1, -1);
        }

        v78 = &off_279711000;
      }

      else
      {
        a2 = v130;
        v84 = v130;
        MEMORY[0x2530AD700]();
        if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v112 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
          v78 = &off_279711000;
        }

        sub_252E372D4();
        v65 = v134;
      }

      v97 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v98 = sub_252E36F04();
      v99 = [v97 initWithIdentifier:0 displayString:v98];

      v100 = v99;
      [v100 setBoolValue_];
      [v100 v78[272]];

      v101 = objc_allocWithZone(type metadata accessor for HomeUserTask());
      v102 = sub_252E36F04();
      v103 = [v101 initWithIdentifier:0 displayString:v102];

      v104 = v103;
      [v104 setTaskType_];
      [v104 setAttribute_];
      [v104 setValue_];

      v105 = [a2 value];
      if (v105)
      {
        v106 = v105;
        [v105 doubleValue];
        v108 = v107;

        if (v108 != 0.0)
        {
          v109 = v104;
          MEMORY[0x2530AD700]();
          v18 = v129;
          if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_74:
            sub_252E372A4();
          }

LABEL_71:
          sub_252E372D4();

LABEL_44:
          v65 = v134;
          goto LABEL_45;
        }
      }

      v18 = v129;
      if (v127)
      {
        v109 = v104;
        MEMORY[0x2530AD700]();
        if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_74;
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ([a2 attribute] != 5 || objc_msgSend(a2, sel_taskType) != 1 || (*&v26 = COERCE_DOUBLE(sub_2529C70CC()), (v29 & 0x100) != 0))
      {
        v66 = a2;
        MEMORY[0x2530AD700]();
        if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v110 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        goto LABEL_44;
      }

      v30 = *&v26;
      v121 = v27;
      v123 = v29;
      v119 = v28;
      v128 = v18;
      if ([a2 taskType] == 1)
      {
        v125 = [a2 taskType];
        v31 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v32 = sub_252E36F04();
        v33 = [v31 initWithIdentifier:0 displayString:v32];

        v34 = v33;
        [v34 setBoolValue_];
        [v34 setType_];

        v35 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v36 = sub_252E36F04();
        v37 = [v35 initWithIdentifier:0 displayString:v36];

        v38 = v37;
        [v38 setTaskType_];
        [v38 setAttribute_];
        [v38 setValue_];

        MEMORY[0x2530AD700]();
        if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v116 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
      }

      v120 = [a2 taskType];
      v126 = type metadata accessor for HomeAttributeValue();
      v39 = objc_allocWithZone(v126);
      v40 = sub_252E36F04();
      v41 = [v39 initWithIdentifier:0 displayString:v40];

      v42 = v41;
      [v42 setDoubleValue_];
      [v42 setUnit_];
      [v42 setType_];

      v43 = type metadata accessor for HomeUserTask();
      v44 = objc_allocWithZone(v43);
      v45 = sub_252E36F04();
      v46 = [v44 initWithIdentifier:0 displayString:v45];

      v47 = v46;
      [v47 setTaskType_];
      [v47 setAttribute_];
      [v47 setValue_];

      MEMORY[0x2530AD700]();
      if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v113 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      v48 = v121;
      sub_252E372D4();
      v122 = [a2 taskType];
      v49 = objc_allocWithZone(v126);
      v50 = sub_252E36F04();
      v51 = [v49 initWithIdentifier:0 displayString:v50];

      v52 = v51;
      [v52 setDoubleValue_];
      [v52 setUnit_];
      [v52 setType_];

      v53 = objc_allocWithZone(v43);
      v54 = sub_252E36F04();
      v55 = [v53 initWithIdentifier:0 displayString:v54];

      v56 = v55;
      [v56 setTaskType_];
      [v56 setAttribute_];
      [v56 setValue_];

      MEMORY[0x2530AD700]();
      if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v114 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      if ((v123 & 1) == 0)
      {
        v57 = objc_allocWithZone(v126);
        v58 = sub_252E36F04();
        v59 = [v57 initWithIdentifier:0 displayString:v58];

        v60 = v59;
        [v60 setDoubleValue_];
        [v60 setUnit_];
        [v60 setType_];

        v61 = objc_allocWithZone(v43);
        v62 = sub_252E36F04();
        v63 = [v61 initWithIdentifier:0 displayString:v62];

        v64 = v63;
        [v64 setTaskType_];
        [v64 setAttribute_];
        [v64 setValue_];

        MEMORY[0x2530AD700]();
        if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v117 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
      }

      v65 = v134;
      v18 = v128;
    }

LABEL_45:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v133 = v4;
    v68 = sub_252A454C0(v19);
    v70 = v4[2];
    v71 = (v69 & 1) == 0;
    v72 = __OFADD__(v70, v71);
    v73 = v70 + v71;
    if (v72)
    {
      goto LABEL_79;
    }

    v74 = v69;
    if (v4[3] < v73)
    {
      sub_252E00638(v73, isUniquelyReferenced_nonNull_native);
      v68 = sub_252A454C0(v19);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_81;
      }

LABEL_50:
      if (v74)
      {
        goto LABEL_8;
      }

      goto LABEL_51;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_50;
    }

    v111 = v68;
    sub_252E03EC4();
    v68 = v111;
    v4 = v133;
    if (v74)
    {
LABEL_8:
      v13 = v4[7];
      v14 = *(v13 + 8 * v68);
      *(v13 + 8 * v68) = v65;

      goto LABEL_9;
    }

LABEL_51:
    v4[(v68 >> 6) + 8] |= 1 << v68;
    *(v4[6] + 8 * v68) = v19;
    *(v4[7] + 8 * v68) = v65;
    v76 = v4[2];
    v72 = __OFADD__(v76, 1);
    v77 = v76 + 1;
    if (v72)
    {
      goto LABEL_80;
    }

    v4[2] = v77;
LABEL_9:
    v7 = v17;
    v8 = v18;
    v12 = v131;
    a1 = v132;
  }

  v15 = v7;
  v16 = v8;
  v17 = v7;
  if (v8)
  {
LABEL_15:
    v18 = (v16 - 1) & v16;
    v19 = *(*(a1 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
      goto LABEL_77;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v12)
    {
      goto LABEL_77;
    }

    v16 = *(v5 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  type metadata accessor for Service();
  result = sub_252E37E24();
  __break(1u);
  return result;
}

uint64_t ControlHomeIntentResponse.Builder.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(result + 16) = 4;
  *(result + 24) = v1;
  return result;
}

uint64_t ControlHomeIntentResponse.Builder.init()()
{
  result = v0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 16) = 4;
  *(v0 + 24) = v2;
  return result;
}

uint64_t sub_252CADC6C(uint64_t result)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v3 = *(result + 16);
  v4 = result + 32;
  while (1)
  {
    if (v3 == v1)
    {
      swift_beginAccess();
      sub_25297A894(v2);
      swift_endAccess();
    }

    if (v1 >= v3)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_11;
    }

    v6 = *(v4 + 8 * v1++);
    if (v6)
    {
      v7 = v6;
      MEMORY[0x2530AD700]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v2 = v9;
      v1 = v5;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

char *sub_252CADD84()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v3 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = v1;
  [v2 setUserActivity_];
  swift_beginAccess();
  v4 = *(v0 + 24);
  type metadata accessor for HomeEntityResponse();

  v5 = sub_252E37254();

  [v2 setEntityResponses_];

  return v2;
}

uint64_t sub_252CADE64()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v0 + 24);
  type metadata accessor for ControlHomeIntentResponse.Builder();
  v3 = swift_allocObject();
  *(v3 + 24) = MEMORY[0x277D84F90];
  *(v3 + 16) = v1;

  v5 = sub_25297CEB4(v4);

  swift_beginAccess();
  *(v3 + 24) = v5;

  return v3;
}

uint64_t ControlHomeIntentResponse.Builder.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ControlHomeIntentResponse.Builder.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_252CAE074(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_252E34014();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CAE138, 0, 0);
}

uint64_t sub_252CAE138()
{
  v1 = v0[3];
  v2 = sub_252B4F670();
  v0[8] = v2;
  v64 = v2;
  v3 = sub_252C2895C();
  v4 = v3;
  v66 = MEMORY[0x277D84F90];
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_76:
    v6 = sub_252E378C4();
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2530ADF00](v7, v4);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_69;
      }

      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v12 = sub_252DA124C(0);

    ++v7;
    if (v12)
    {
      MEMORY[0x2530AD700]();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v8 = v66;
      v7 = v11;
    }
  }

  type metadata accessor for HomeAutomationEntityResponses();
  v14 = swift_allocObject();
  v0[9] = v14;
  *(v14 + 16) = 0;
  *(v14 + 24) = v8;
  v63 = v14;
  v15 = [v64 entityResponses];
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v17 = v15;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v66 = v16;
    if (v4 >> 62)
    {
      v18 = sub_252E378C4();
    }

    else
    {
      v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v20 = 0;
      v21 = v4 & 0xC000000000000001;
      v5 = v4 & 0xFFFFFFFFFFFFFF8;
      v65 = v4 + 32;
      v61 = v4;
      v62 = v0;
      v59 = v4 & 0xFFFFFFFFFFFFFF8;
      v60 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v21)
        {
          v22 = MEMORY[0x2530ADF00](v20, v4);
        }

        else
        {
          if (v20 >= *(v5 + 16))
          {
            goto LABEL_73;
          }

          v22 = *(v65 + 8 * v20);
        }

        v23 = v22;
        if (__OFADD__(v20++, 1))
        {
          goto LABEL_72;
        }

        v25 = [v22 entity];
        if (v25 && (v26 = v25, v27 = [v25 type], v26, v27 == 7) && (sub_252DA3CC8() & 1) != 0 && (sub_252DA5218() & 1) == 0 && (v28 = objc_msgSend(v23, sel_taskResponses)) != 0)
        {
          v29 = v28;
          type metadata accessor for HomeUserTaskResponse();
          v30 = sub_252E37264();

          v4 = v30 & 0xFFFFFFFFFFFFFF8;
          if (v30 >> 62)
          {
            v31 = sub_252E378C4();
          }

          else
          {
            v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v5 = 0;
          v0 = (v30 & 0xC000000000000001);
          while (v31 != v5)
          {
            if (v0)
            {
              v32 = MEMORY[0x2530ADF00](v5, v30);
            }

            else
            {
              if (v5 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_75;
              }

              v32 = *(v30 + 8 * v5 + 32);
            }

            v33 = v32;
            if (__OFADD__(v5, 1))
            {
              goto LABEL_74;
            }

            v34 = [v32 taskOutcome];

            ++v5;
            if (v34 == 6)
            {

              sub_252E37A94();
              v35 = *(v66 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              goto LABEL_42;
            }
          }

LABEL_42:
          v4 = v61;
          v0 = v62;
          v19 = MEMORY[0x277D84F90];
          v5 = v59;
          v21 = v60;
          if (v20 == v18)
          {
LABEL_46:
            v36 = v66;
            goto LABEL_48;
          }
        }

        else
        {

          if (v20 == v18)
          {
            goto LABEL_46;
          }
        }
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_48:

    v66 = v19;
    if (v36 < 0 || (v36 & 0x4000000000000000) != 0)
    {
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *(v36 + 16);
    }

    v37 = 0;
    v5 = v36 & 0xC000000000000001;
    v16 = MEMORY[0x277D84F90];
    while (v4 != v37)
    {
      if (v5)
      {
        v38 = MEMORY[0x2530ADF00](v37, v36);
      }

      else
      {
        if (v37 >= *(v36 + 16))
        {
          goto LABEL_71;
        }

        v38 = *(v36 + 8 * v37 + 32);
      }

      v39 = v38;
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_70;
      }

      v41 = sub_252DA124C(0);

      ++v37;
      if (v41)
      {
        MEMORY[0x2530AD700]();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v42 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v16 = v66;
        v37 = v40;
      }
    }
  }

  if (v16 >> 62)
  {
    v52 = sub_252E378C4();
    v43 = v0[4];
    if (v52)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v43 = v0[4];
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_65:
      v44 = v0[2];
      v45 = sub_252C308A4();
      v46 = v43[6];
      v47 = v43[7];
      __swift_project_boxed_opaque_existential_1(v43 + 3, v46);
      v48 = swift_allocObject();
      *(v48 + 16) = v43;
      *(v48 + 24) = v16;
      *(v48 + 32) = v45;

      sub_252943BD0(sub_252CAF320, v48, 1, v46, v47);

      v49 = v0[7];

      v50 = v0[1];

      return v50();
    }
  }

  v53 = v0[7];

  v54 = v43[6];
  __swift_project_boxed_opaque_existential_1(v43 + 3, v54);
  v55 = swift_task_alloc();
  v0[10] = v55;
  *(v55 + 16) = v43;
  *(v55 + 24) = v63;
  sub_252AD7CC4();
  v56 = swift_task_alloc();
  v0[11] = v56;
  *v56 = v0;
  v56[1] = sub_252CAE854;
  v57 = v0[7];
  v58 = v0[2];

  return sub_252BDB88C(v58, &unk_252E599C8, v55, v57, 0, 0, 0, v54);
}

uint64_t sub_252CAE854()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252CAEA44;
  }

  else
  {
    v8 = *(v2 + 80);

    v7 = sub_252CAE9D4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252CAE9D4()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_252CAEA44()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  v4 = v0[12];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252CAEAC0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for HomeAutomationEntityResponses();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3C280;
  *(v8 + 32) = 0xD000000000000015;
  *(v8 + 40) = 0x8000000252E696E0;
  *(v8 + 48) = v7;
  *(v8 + 72) = v6;
  strcpy((v8 + 80), "isSceneRequest");
  v9 = MEMORY[0x277D839B0];
  *(v8 + 95) = -18;
  *(v8 + 96) = 0;
  *(v8 + 120) = v9;
  *(v8 + 128) = 0xD000000000000018;
  *(v8 + 136) = 0x8000000252E8A310;
  *(v8 + 168) = v9;
  *(v8 + 144) = a3;

  sub_252E362B4();
}

uint64_t sub_252CAEC20(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252CAEC40, 0, 0);
}

uint64_t sub_252CAEC40()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252CAED14;
  v4 = v0[3];

  return sub_252C153EC(0, v2, v4);
}

uint64_t sub_252CAED14(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 24);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_252CAEE38(uint64_t a1, uint64_t a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v29[-v9];
  v11 = type metadata accessor for HomeAutomationAsyncUnreachablePollingResponseParameters(0);
  v12 = *(v11 + 32);
  v13 = *(a1 + v12);

  *(a1 + v12) = a2;
  v14 = sub_25294833C(1u, 0, 0);
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = v14;
  v16 = [v14 dictionary];
  if (!v16)
  {

LABEL_7:
    v24 = sub_252E36324();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    goto LABEL_8;
  }

  v17 = v16;
  v18 = objc_opt_self();
  v30[0] = 0;
  v19 = [v18 dataWithPropertyList:v17 format:200 options:0 error:v30];
  v20 = v30[0];
  if (!v19)
  {
    v25 = v20;
    v26 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v21 = sub_252E32D34();
  v23 = v22;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v21, v23);
  v24 = sub_252E36324();
  (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
LABEL_8:
  sub_252956C98(v10, a1 + *(v11 + 28));
  sub_252E37024();
  sub_252E36324();
  (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
  result = sub_252956C98(v8, a1);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}